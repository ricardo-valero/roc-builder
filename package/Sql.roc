import /Sql/Ast exposing [Ast]
import /Sql/Expr exposing [Expr]
import /Sql/Value exposing [Value]
import /Sql/Dialect exposing [Dialect]
import /Sql/Frag exposing [Frag]

# A SQL SELECT statement as scoped data. EXPERIMENTAL — not in the package
# export list; the API may change without a release.
#
# Each clause variant's continuation union offers only the clauses SQL's
# logical order allows next, so out-of-order or repeated clauses are
# unrepresentable — the grammar IS the type:
#
#     q : Sql
#     q = From("books",
#             Where(Expr.of(genre).eq(Expr.text("scifi")),
#                 Select([genre], Done)))
#
# `Done` is only reachable through AfterSelect and later, so every complete
# query provably contains exactly one SELECT. Conditions (WHERE/HAVING/ON)
# demand Expr([Bool]); projection lists (SELECT/GROUP BY/ORDER BY) take raw
# Ast because they are heterogeneous — schema columns drop in directly,
# computed expressions via `.raw()`.
Sql := [From(Str, AfterFrom)].{
    AfterFrom := [
        Join([Inner, Left, Right, Full], Str, Expr([Bool]), AfterFrom),
        Where(Expr([Bool]), AfterWhere),
        GroupBy(List(Ast), AfterGroup),
        Select(List(Ast), AfterSelect),
    ]

    AfterWhere := [
        GroupBy(List(Ast), AfterGroup),
        Select(List(Ast), AfterSelect),
    ]

    AfterGroup := [
        Having(Expr([Bool]), AfterHaving),
        Select(List(Ast), AfterSelect),
    ]

    AfterHaving := [
        Select(List(Ast), AfterSelect),
    ]

    AfterSelect := [
        OrderBy(List((Ast, [Asc, Desc])), AfterOrder),
        Limit(U64, AfterLimit),
        Offset(U64, AfterOffset),
        Done,
    ]

    AfterOrder := [
        Limit(U64, AfterLimit),
        Offset(U64, AfterOffset),
        Done,
    ]

    AfterLimit := [
        Offset(U64, AfterOffset),
        Done,
    ]

    AfterOffset := [Done]

    # -- schema records -------------------------------------------------------

    ## Declare a table once; the returned record's fields are raw column
    ## references, so a misspelled column is a compile error:
    ##     books = Sql.table("books", |c| { id: c("id"), genre: c("genre") })
    ## Columns drop into SELECT/GROUP BY lists directly; in conditions wrap
    ## with `Expr.of(books.cols.genre)` to give them a fresh kind.
    table : Str, ((Str -> Ast) -> cols) -> { name : Str, cols : cols }
    table = |table_name, build| {
        name: table_name,
        cols: build(|column_name| ColumnQ(table_name, column_name)),
    }

    # -- rendering ------------------------------------------------------------
    # Recursive descent collects the nested stages into one flat record,
    # then emission runs in SQL textual order against a Frag: `.push` for
    # syntax, `.bind` for every literal (via Ast.emit).

    render : Sql, Dialect -> { sql : Str, params : List(Value) }
    render = |query, d| {
        q = Sql.collect_from(query)

        var f = Frag.empty({}).push("SELECT ")
        f = Ast.emit_list(q.sel, d, f, ", ")
        f = f.push(" FROM ").push(d.ident(q.src))

        var j = 0.U64
        while j < q.joins.len() {
            jn = q.joins.get(j) ?? { kind: Inner, tbl: "", on: CountAll }
            f = jn.on.emit(d, f.push(" ${Sql.join_word(jn.kind)} ").push(d.ident(jn.tbl)).push(" ON "))
            j = j + 1
        }

        f = match q.cond {
            Some(e) => e.emit(d, f.push(" WHERE "))
            None => f
        }
        f = if q.grouping.len() == 0 {
            f
        } else {
            Ast.emit_list(q.grouping, d, f.push(" GROUP BY "), ", ")
        }
        f = match q.hav {
            Some(e) => e.emit(d, f.push(" HAVING "))
            None => f
        }

        var o = 0.U64
        while o < q.ordering.len() {
            match q.ordering.get(o) ?? (CountAll, Asc) {
                (e, dir) => {
                    lead = if o == 0 { " ORDER BY " } else { ", " }
                    f = e.emit(d, f.push(lead)).push(" ${Sql.dir_word(dir)}")
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

    join_word : [Inner, Left, Right, Full] -> Str
    join_word = |kind|
        match kind {
            Inner => "INNER JOIN"
            Left => "LEFT JOIN"
            Right => "RIGHT JOIN"
            Full => "FULL OUTER JOIN"
        }

    dir_word : [Asc, Desc] -> Str
    dir_word = |dir|
        match dir {
            Asc => "ASC"
            Desc => "DESC"
        }

    # -- collectors: one per stage union; arms for variants shared across ------
    # unions (Select x4, GroupBy x2, Limit/Offset x3) are one-liners
    # delegating to the take_* helpers that hold the bodies.

    collect_from : Sql -> _
    collect_from = |query|
        match query {
            From(src, next) =>
                Sql.collect_after_from(
                    next,
                    {
                        src: src,
                        joins: [],
                        cond: None,
                        grouping: [],
                        hav: None,
                        sel: [],
                        ordering: [],
                        lim: None,
                        off: None,
                    },
                )
        }

    collect_after_from : AfterFrom, _ -> _
    collect_after_from = |stage, q|
        match stage {
            Join(kind, tbl, on, next) =>
                Sql.collect_after_from(next, { ..q, joins: q.joins.append({ kind: kind, tbl: tbl, on: on.raw() }) })
            Where(cond, next) => Sql.collect_after_where(next, { ..q, cond: Some(cond.raw()) })
            GroupBy(cols, next) => Sql.take_group(cols, next, q)
            Select(items, next) => Sql.take_select(items, next, q)
        }

    collect_after_where : AfterWhere, _ -> _
    collect_after_where = |stage, q|
        match stage {
            GroupBy(cols, next) => Sql.take_group(cols, next, q)
            Select(items, next) => Sql.take_select(items, next, q)
        }

    collect_after_group : AfterGroup, _ -> _
    collect_after_group = |stage, q|
        match stage {
            Having(cond, next) => Sql.collect_after_having(next, { ..q, hav: Some(cond.raw()) })
            Select(items, next) => Sql.take_select(items, next, q)
        }

    collect_after_having : AfterHaving, _ -> _
    collect_after_having = |stage, q|
        match stage {
            Select(items, next) => Sql.take_select(items, next, q)
        }

    collect_after_select : AfterSelect, _ -> _
    collect_after_select = |stage, q|
        match stage {
            OrderBy(orders, next) => Sql.collect_after_order(next, { ..q, ordering: orders })
            Limit(v, next) => Sql.take_limit(v, next, q)
            Offset(v, next) => Sql.take_offset(v, next, q)
            Done => q
        }

    collect_after_order : AfterOrder, _ -> _
    collect_after_order = |stage, q|
        match stage {
            Limit(v, next) => Sql.take_limit(v, next, q)
            Offset(v, next) => Sql.take_offset(v, next, q)
            Done => q
        }

    collect_after_limit : AfterLimit, _ -> _
    collect_after_limit = |stage, q|
        match stage {
            Offset(v, next) => Sql.take_offset(v, next, q)
            Done => q
        }

    collect_after_offset : AfterOffset, _ -> _
    collect_after_offset = |stage, q|
        match stage {
            Done => q
        }

    take_group : List(Ast), AfterGroup, _ -> _
    take_group = |cols, next, q| Sql.collect_after_group(next, { ..q, grouping: cols })

    take_select : List(Ast), AfterSelect, _ -> _
    take_select = |items, next, q| Sql.collect_after_select(next, { ..q, sel: items })

    take_limit : U64, AfterLimit, _ -> _
    take_limit = |v, next, q| Sql.collect_after_limit(next, { ..q, lim: Some(v) })

    take_offset : U64, AfterOffset, _ -> _
    take_offset = |v, next, q| Sql.collect_after_offset(next, { ..q, off: Some(v) })
}

# The spec's staged-pipeline scenario, end to end — rendered SQL identical
# to the previous method-chain builder's output.
expect {
    books = Sql.table("books", |c| { id: c("id"), genre: c("genre") })
    sales = Sql.table("sales", |c| { book_id: c("book_id"), quantity: c("quantity"), sale_date: c("sale_date") })
    q : Sql
    q = From(
        books.name,
        Join(
            Inner,
            sales.name,
            Expr.of(books.cols.id).eq(Expr.of(sales.cols.book_id)),
            Where(
                Expr.of(sales.cols.sale_date).year().eq(Expr.i64(2024)),
                GroupBy(
                    [books.cols.genre],
                    Having(
                        Expr.count(Expr.of(sales.cols.quantity)).gt(Expr.i64(50)),
                        Select(
                            [books.cols.genre, Expr.count(Expr.of(sales.cols.quantity)).as_("total_sold").raw()],
                            OrderBy([(books.cols.genre, Desc)], Limit(5, Done)),
                        ),
                    ),
                ),
            ),
        ),
    )
    out = q.render(Postgres)
    out.sql
    == "SELECT books.genre, COUNT(sales.quantity) AS total_sold FROM books INNER JOIN sales ON books.id = sales.book_id WHERE EXTRACT(YEAR FROM sales.sale_date) = $1 GROUP BY books.genre HAVING COUNT(sales.quantity) > $2 ORDER BY books.genre DESC LIMIT 5"
    and out.params.len() == 2
    and (out.params.get(0) ?? Null) == Value.I64(2024)
    and (out.params.get(1) ?? Null) == Value.I64(50)
}

# Values never reach the SQL string — O'Brien becomes $1.
expect {
    authors = Sql.table("authors", |c| { name: c("name") })
    q : Sql
    q = From(authors.name, Where(Expr.of(authors.cols.name).eq(Expr.text("O'Brien")), Select([authors.cols.name], Done)))
    out = q.render(Postgres)
    out.sql == "SELECT authors.name FROM authors WHERE authors.name = $1"
    and (out.params.get(0) ?? Null) == Value.Text("O'Brien")
}

# Optional clauses skip naturally; col() escape hatch.
expect {
    q : Sql
    q = From("t", Select([Expr.col("x").raw()], Done))
    q.render(Postgres) == { sql: "SELECT x FROM t", params: [] }
}

# Placeholders number in emission order across clauses (SELECT first).
expect {
    t = Sql.table("t", |c| { a: c("a"), b: c("b"), g: c("g") })
    q : Sql
    q = From(
        t.name,
        Where(
            Expr.of(t.cols.a).gt(Expr.i64(1)),
            GroupBy(
                [t.cols.g],
                Select(
                    [
                        t.cols.g,
                        Expr.case_when([(Expr.of(t.cols.g).eq(Expr.text("x")), Expr.i64(1))], Expr.i64(0)).as_("flag").raw(),
                    ],
                    Done,
                ),
            ),
        ),
    )
    out = q.render(Postgres)
    out.sql
    == "SELECT t.g, CASE WHEN t.g = $1 THEN $2 ELSE $3 END AS flag FROM t WHERE t.a > $4 GROUP BY t.g"
    and out.params.len() == 4
    and (out.params.get(3) ?? Null) == Value.I64(1)
}

# Multiple JOINs continue at the FROM stage.
expect {
    q : Sql
    q = From(
        "a",
        Join(
            Left,
            "b",
            Expr.qualified("a", "x").eq(Expr.qualified("b", "x")),
            Join(Inner, "c", Expr.qualified("b", "y").eq(Expr.qualified("c", "y")), Select([Expr.qualified("a", "x").raw()], Done)),
        ),
    )
    q.render(Postgres).sql == "SELECT a.x FROM a LEFT JOIN b ON a.x = b.x INNER JOIN c ON b.y = c.y"
}

# Compile-time clause ordering and condition typing (negative examples —
# must be TYPE MISMATCH when uncommented):
#   From("t", Having(Expr.bool(Bool.True), Select([Expr.col("x").raw()], Done)))  # HAVING without GROUP BY
#   From("t", Where(c1, Where(c2, ...)))                                          # double WHERE
#   From("t", Where(Expr.i64(5), Select([Expr.col("x").raw()], Done)))            # non-boolean condition
#   From("t", OrderBy([(Expr.col("x").raw(), Asc)], Done))                        # ORDER BY before SELECT
