import /Sql/Value exposing [Value]
import /Sql/Dialect exposing [Dialect]
import /Sql/Frag exposing [Frag]
import /Sql/Cond exposing [Cond]
import /Sql/Scalar exposing [Scalar]

# SQL queries as scoped data. EXPERIMENTAL — not in the package export list.
#
# A query is built over a first-class SOURCE (FROM + JOINs + a user-named
# scope record + the slot emitter) and a branching clause pipeline in which
# each continuation offers only the clauses SQL's order allows next — a
# skipped clause is simply absent, `End` closes the pipeline, and SELECT is
# mandatory (`End` is only reachable through its tail, so every complete
# query has exactly one SELECT). γ is where the row parameter changes:
# after `Group`, downstream lambdas receive the grouped row `g`; without
# it they receive the source scope `t`.
#
#     q = Query(tables,
#             Where(|{ sale }| Eq(Year(sale.sale_date), 2024),
#             Group(|{ book, sale }| {
#                 keys: [book.genre],
#                 row: { genre: book.genre, total: Sum(sale.qty) },
#             },
#             Having(|{ total }| Gt(total, 100),
#             Select(|{ genre, total }| [genre, As(total, "total_sold")],
#             Order(|{ total }| [(total, Desc)],
#             Limit(5, End)))))))
#
# The stage-union names below never appear in query literals — only the
# clause variant names do. Declared in reverse dependency order (the
# grammar is a DAG).

## Library-default slot type: (table, column), rendered qualified.
Col : (Str, Str)

Dir : [Asc, Desc]

JoinSpec(slot) : [
    Inner(Str, Cond(slot)),
    Left(Str, Cond(slot)),
    Right(Str, Cond(slot)),
    Full(Str, Cond(slot)),
]

Source(slot, t) : {
    from : Str,
    joins : List(JoinSpec(slot)),
    scope : t,
    slot_sql : (Dialect, slot -> Str),
}

Grouping(slot, g) : { keys : List(Scalar(slot)), row : g }

Sql(slot, t, g) := [Query(Source(slot, t), AfterSource(slot, t, g))].{
    AfterLimit := [Offset(U64), End]

    AfterOrder := [Limit(U64, AfterLimit), Offset(U64), End]

    AfterSelect(slot, row) := [
        Order((row -> List((Scalar(slot), Dir))), AfterOrder),
        Limit(U64, AfterLimit),
        Offset(U64),
        End,
    ]

    AfterHaving(slot, g) := [
        Select((g -> List(Scalar(slot))), AfterSelect(slot, g)),
    ]

    AfterGroup(slot, g) := [
        Having((g -> Cond(slot)), AfterHaving(slot, g)),
        Select((g -> List(Scalar(slot))), AfterSelect(slot, g)),
    ]

    AfterWhere(slot, t, g) := [
        Group((t -> Grouping(slot, g)), AfterGroup(slot, g)),
        Select((t -> List(Scalar(slot))), AfterSelect(slot, t)),
    ]

    AfterSource(slot, t, g) := [
        Where((t -> Cond(slot)), AfterWhere(slot, t, g)),
        Group((t -> Grouping(slot, g)), AfterGroup(slot, g)),
        Select((t -> List(Scalar(slot))), AfterSelect(slot, t)),
    ]

    ## Default emitter for the default Col slot type.
    std_col : Dialect, Col -> Str
    std_col = |d, (t, c)| "${d.ident(t)}.${d.ident(c)}"

    ## Render to `{ sql, params }`: collect the clause data (applying scope
    ## lambdas), then emit in SQL textual order through a Frag — `.push`
    ## for syntax, `.bind` for every literal.
    render : Sql(slot, t, g), Dialect -> { sql : Str, params : List(Value) }
    render = |query, d|
        match query {
            Query(src, next) => {
                q = Sql.collect_after_source(
                    next,
                    src.scope,
                    { cond: None, keys: [], hav: None, sel: [], ordering: [], lim: None, off: None },
                )

                var f = Frag.empty({}).push("SELECT ")
                f = Scalar.emit_list(q.sel, d, src.slot_sql, f, ", ")
                f = f.push(" FROM ").push(d.ident(src.from))

                var j = 0.U64
                while j < src.joins.len() {
                    spec = src.joins.get(j) ?? Inner("", And([]))
                    (kind_word, tbl, on) = match spec {
                        Inner(table_name, c) => ("INNER JOIN", table_name, c)
                        Left(table_name, c) => ("LEFT JOIN", table_name, c)
                        Right(table_name, c) => ("RIGHT JOIN", table_name, c)
                        Full(table_name, c) => ("FULL OUTER JOIN", table_name, c)
                    }
                    f = on.emit(d, src.slot_sql, f.push(" ${kind_word} ").push(d.ident(tbl)).push(" ON "))
                    j = j + 1
                }

                f = match q.cond {
                    Some(c) => c.emit(d, src.slot_sql, f.push(" WHERE "))
                    None => f
                }
                f = if q.keys.len() == 0 {
                    f
                } else {
                    Scalar.emit_list(q.keys, d, src.slot_sql, f.push(" GROUP BY "), ", ")
                }
                f = match q.hav {
                    Some(c) => c.emit(d, src.slot_sql, f.push(" HAVING "))
                    None => f
                }

                var o = 0.U64
                while o < q.ordering.len() {
                    match q.ordering.get(o) ?? (CountAll, Asc) {
                        (e, dir) => {
                            lead = if o == 0 { " ORDER BY " } else { ", " }
                            dir_word = match dir {
                                Asc => "ASC"
                                Desc => "DESC"
                            }
                            f = e.emit(d, src.slot_sql, f.push(lead)).push(" ${dir_word}")
                        }
                    }
                    o = o + 1
                }

                f = match q.lim {
                    Some(v) => f.push(" LIMIT ${v.to_str()}")
                    None => f
                }
                f = match q.off {
                    Some(v) => f.push(" OFFSET ${v.to_str()}")
                    None => f
                }
                f.done()
            }
        }

    # -- collectors: apply scope lambdas, flatten the clause data -------------

    collect_after_source = |stage, scope, q|
        match stage {
            Where(fc, rest) => Sql.collect_after_where(rest, scope, { ..q, cond: Some(fc(scope)) })
            Group(fg, rest) => Sql.take_group(fg, rest, scope, q)
            Select(fs, rest) => Sql.take_select(fs, rest, scope, q)
        }

    collect_after_where = |stage, scope, q|
        match stage {
            Group(fg, rest) => Sql.take_group(fg, rest, scope, q)
            Select(fs, rest) => Sql.take_select(fs, rest, scope, q)
        }

    take_group = |fg, rest, scope, q| {
        grouping = fg(scope)
        Sql.collect_after_group(rest, grouping.row, { ..q, keys: grouping.keys })
    }

    collect_after_group = |stage, row, q|
        match stage {
            Having(fh, rest) => Sql.collect_after_having(rest, row, { ..q, hav: Some(fh(row)) })
            Select(fs, rest) => Sql.take_select(fs, rest, row, q)
        }

    collect_after_having = |stage, row, q|
        match stage {
            Select(fs, rest) => Sql.take_select(fs, rest, row, q)
        }

    take_select = |fs, rest, row, q| Sql.collect_after_select(rest, row, { ..q, sel: fs(row) })

    collect_after_select = |stage, row, q|
        match stage {
            Order(fo, rest) => Sql.collect_after_order(rest, { ..q, ordering: fo(row) })
            Limit(v, rest) => Sql.collect_after_limit(rest, { ..q, lim: Some(v) })
            Offset(v) => { ..q, off: Some(v) }
            End => q
        }

    collect_after_order = |stage, q|
        match stage {
            Limit(v, rest) => Sql.collect_after_limit(rest, { ..q, lim: Some(v) })
            Offset(v) => { ..q, off: Some(v) }
            End => q
        }

    collect_after_limit = |stage, q|
        match stage {
            Offset(v) => { ..q, off: Some(v) }
            End => q
        }
}
