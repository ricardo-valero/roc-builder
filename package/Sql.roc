import /Sql/Expr exposing [Expr]
import /Sql/Value exposing [Value]
import /Sql/Dialect exposing [Dialect]

# A SQL SELECT statement under construction. EXPERIMENTAL — not in the
# package export list; the API may change without a release.
#
# `stage` is a phantom type parameter enforcing SQL's logical clause order
# at compile time: constructors return open stages (`[From, ..]`) and each
# clause function accepts a closed union of the stages it may follow, so
# e.g. `having` before `group_by` is a type error, not a runtime failure.
# The `stage` field's value is never read.
#
# One flat accumulator record underneath (no nested stage chain), so
# `render` reads a single record regardless of construction path.
Sql(stage) := {
    stage : stage,
    src : Str,
    joins : List({ kind : [Inner, Left, Right, Full], table : Str, on : Expr }),
    cond : [Some(Expr), None],
    grouping : List(Expr),
    hav : [Some(Expr), None],
    sel : List(Expr),
    ordering : List((Expr, [Asc, Desc])),
    lim : [Some(U64), None],
    off : [Some(U64), None],
}.{
    # -- schema records -------------------------------------------------------

    ## Declare a table once; the returned record's fields ARE column
    ## expressions, so a misspelled column is a compile error:
    ##     books = Sql.table("books", |c| { id: c("id"), genre: c("genre") })
    ##     books.cols.genre  # Expr, renders as books.genre
    table : Str, ((Str -> Expr) -> cols) -> { name : Str, cols : cols }
    table = |table_name, build| {
        name: table_name,
        cols: build(|column_name| Expr.qualified(table_name, column_name)),
    }

    # -- staged construction --------------------------------------------------

    from : Str -> Sql([From, ..])
    from = |table_name| {
        q : Sql([From, ..])
        q = {
            stage: From,
            src: table_name,
            joins: [],
            cond: None,
            grouping: [],
            hav: None,
            sel: [],
            ordering: [],
            lim: None,
            off: None,
        }
        q
    }

    join : Sql([From]), [Inner, Left, Right, Full], Str, Expr -> Sql([From, ..])
    join = |q, kind, table_name, on| {
        out : Sql([From, ..])
        out = {
            stage: From,
            src: q.src,
            joins: q.joins.append({ kind: kind, table: table_name, on: on }),
            cond: q.cond,
            grouping: q.grouping,
            hav: q.hav,
            sel: q.sel,
            ordering: q.ordering,
            lim: q.lim,
            off: q.off,
        }
        out
    }

    where_ : Sql([From]), Expr -> Sql([Where, ..])
    where_ = |q, condition| {
        out : Sql([Where, ..])
        out = {
            stage: Where,
            src: q.src,
            joins: q.joins,
            cond: Some(condition),
            grouping: q.grouping,
            hav: q.hav,
            sel: q.sel,
            ordering: q.ordering,
            lim: q.lim,
            off: q.off,
        }
        out
    }

    group_by : Sql([From, Where]), List(Expr) -> Sql([Grouped, ..])
    group_by = |q, columns| {
        out : Sql([Grouped, ..])
        out = {
            stage: Grouped,
            src: q.src,
            joins: q.joins,
            cond: q.cond,
            grouping: columns,
            hav: q.hav,
            sel: q.sel,
            ordering: q.ordering,
            lim: q.lim,
            off: q.off,
        }
        out
    }

    ## Repeated calls AND the conditions together.
    having : Sql([Grouped]), Expr -> Sql([Grouped, ..])
    having = |q, condition| {
        merged = match q.hav {
            Some(prev) => Expr.and_all([prev, condition])
            None => condition
        }
        out : Sql([Grouped, ..])
        out = {
            stage: Grouped,
            src: q.src,
            joins: q.joins,
            cond: q.cond,
            grouping: q.grouping,
            hav: Some(merged),
            sel: q.sel,
            ordering: q.ordering,
            lim: q.lim,
            off: q.off,
        }
        out
    }

    select : Sql([From, Where, Grouped]), List(Expr) -> Sql([Selected, ..])
    select = |q, items| {
        out : Sql([Selected, ..])
        out = {
            stage: Selected,
            src: q.src,
            joins: q.joins,
            cond: q.cond,
            grouping: q.grouping,
            hav: q.hav,
            sel: items,
            ordering: q.ordering,
            lim: q.lim,
            off: q.off,
        }
        out
    }

    order_by : Sql([Selected]), List((Expr, [Asc, Desc])) -> Sql([Ordered, ..])
    order_by = |q, orders| {
        out : Sql([Ordered, ..])
        out = {
            stage: Ordered,
            src: q.src,
            joins: q.joins,
            cond: q.cond,
            grouping: q.grouping,
            hav: q.hav,
            sel: q.sel,
            ordering: orders,
            lim: q.lim,
            off: q.off,
        }
        out
    }

    offset : Sql([Selected, Ordered]), U64 -> Sql([Offsetted, ..])
    offset = |q, count| {
        out : Sql([Offsetted, ..])
        out = {
            stage: Offsetted,
            src: q.src,
            joins: q.joins,
            cond: q.cond,
            grouping: q.grouping,
            hav: q.hav,
            sel: q.sel,
            ordering: q.ordering,
            lim: q.lim,
            off: Some(count),
        }
        out
    }

    limit : Sql([Selected, Ordered, Offsetted]), U64 -> Sql([Limited, ..])
    limit = |q, count| {
        out : Sql([Limited, ..])
        out = {
            stage: Limited,
            src: q.src,
            joins: q.joins,
            cond: q.cond,
            grouping: q.grouping,
            hav: q.hav,
            sel: q.sel,
            ordering: q.ordering,
            lim: Some(count),
            off: q.off,
        }
        out
    }

    # -- rendering ------------------------------------------------------------

    ## Render to `{ sql, params }`. Literal values become dialect
    ## placeholders numbered in emission order (SQL textual order); the raw
    ## values land in `params` at matching positions, never in the string.
    render : Sql([Selected, Ordered, Offsetted, Limited]), Dialect -> { sql : Str, params : List(Value) }
    render = |q, d| {
        var params = []
        var n = 1.U64

        var sel_text = ""
        var i = 0.U64
        while i < q.sel.len() {
            r = (q.sel.get(i) ?? Expr.null).emit(d, { params: params, n: n })
            sel_text = if sel_text == "" { r.text } else { "${sel_text}, ${r.text}" }
            params = r.params
            n = r.n
            i = i + 1
        }
        var sql = "SELECT ${sel_text} FROM ${d.ident(q.src)}"

        var j = 0.U64
        while j < q.joins.len() {
            jn = q.joins.get(j) ?? { kind: Inner, table: "", on: Expr.null }
            kind_text = match jn.kind {
                Inner => "INNER JOIN"
                Left => "LEFT JOIN"
                Right => "RIGHT JOIN"
                Full => "FULL OUTER JOIN"
            }
            r = jn.on.emit(d, { params: params, n: n })
            sql = "${sql} ${kind_text} ${d.ident(jn.table)} ON ${r.text}"
            params = r.params
            n = r.n
            j = j + 1
        }

        after_where = match q.cond {
            Some(e) => {
                r = e.emit(d, { params: params, n: n })
                { sql: "${sql} WHERE ${r.text}", params: r.params, n: r.n }
            }
            None => { sql: sql, params: params, n: n }
        }
        sql = after_where.sql
        params = after_where.params
        n = after_where.n

        var group_text = ""
        var g = 0.U64
        while g < q.grouping.len() {
            r = (q.grouping.get(g) ?? Expr.null).emit(d, { params: params, n: n })
            group_text = if group_text == "" { r.text } else { "${group_text}, ${r.text}" }
            params = r.params
            n = r.n
            g = g + 1
        }
        sql = if group_text == "" { sql } else { "${sql} GROUP BY ${group_text}" }

        after_having = match q.hav {
            Some(e) => {
                r = e.emit(d, { params: params, n: n })
                { sql: "${sql} HAVING ${r.text}", params: r.params, n: r.n }
            }
            None => { sql: sql, params: params, n: n }
        }
        sql = after_having.sql
        params = after_having.params
        n = after_having.n

        var order_text = ""
        var o = 0.U64
        while o < q.ordering.len() {
            match q.ordering.get(o) ?? (Expr.null, Asc) {
                (e, dir) => {
                    r = e.emit(d, { params: params, n: n })
                    dir_text = match dir {
                        Asc => "ASC"
                        Desc => "DESC"
                    }
                    piece = "${r.text} ${dir_text}"
                    order_text = if order_text == "" { piece } else { "${order_text}, ${piece}" }
                    params = r.params
                    n = r.n
                }
            }
            o = o + 1
        }
        sql = if order_text == "" { sql } else { "${sql} ORDER BY ${order_text}" }

        sql = match q.lim {
            Some(v) => "${sql} LIMIT ${v.to_str()}"
            None => sql
        }
        sql = match q.off {
            Some(v) => "${sql} OFFSET ${v.to_str()}"
            None => sql
        }

        { sql: sql, params: params }
    }
}

# The spec's staged-pipeline scenario, end to end.
expect {
    books = Sql.table("books", |c| { id: c("id"), genre: c("genre") })
    sales = Sql.table("sales", |c| { book_id: c("book_id"), quantity: c("quantity"), sale_date: c("sale_date") })
    out =
        Sql.from(books.name)
            .join(Inner, sales.name, books.cols.id.eq(sales.cols.book_id))
            .where_(sales.cols.sale_date.year().eq(Expr.i64(2024)))
            .group_by([books.cols.genre])
            .having(Expr.count(sales.cols.quantity).gt(Expr.i64(50)))
            .select([books.cols.genre, Expr.count(sales.cols.quantity).as_("total_sold")])
            .order_by([(books.cols.genre, Desc)])
            .limit(5)
            .render(Postgres)
    out.sql
    == "SELECT books.genre, COUNT(sales.quantity) AS total_sold FROM books INNER JOIN sales ON books.id = sales.book_id WHERE EXTRACT(YEAR FROM sales.sale_date) = $1 GROUP BY books.genre HAVING COUNT(sales.quantity) > $2 ORDER BY books.genre DESC LIMIT 5"
    and out.params.len() == 2
    and (out.params.get(0) ?? Null) == Value.I64(2024)
    and (out.params.get(1) ?? Null) == Value.I64(50)
}

# Values never reach the SQL string — `O'Brien` becomes $1.
expect {
    authors = Sql.table("authors", |c| { name: c("name") })
    out =
        Sql.from(authors.name)
            .where_(authors.cols.name.eq(Expr.text("O'Brien")))
            .select([authors.cols.name])
            .render(Postgres)
    out.sql == "SELECT authors.name FROM authors WHERE authors.name = $1"
    and (out.params.get(0) ?? Null) == Value.Text("O'Brien")
}

# Minimal query; free-form col() escape hatch.
expect {
    out = Sql.from("t").select([Expr.col("x")]).render(Postgres)
    out.sql == "SELECT x FROM t" and out.params.len() == 0
}

# Placeholders number in emission order across clauses.
expect {
    t = Sql.table("t", |c| { a: c("a"), b: c("b"), g: c("g") })
    out =
        Sql.from(t.name)
            .where_(t.cols.a.gt(Expr.i64(1)))
            .group_by([t.cols.g])
            .having(Expr.sum(t.cols.b).lt(Expr.i64(9)))
            .select([t.cols.g, Expr.case_when([(t.cols.g.eq(Expr.text("x")), Expr.i64(1))], Expr.i64(0)).as_("flag")])
            .render(Postgres)
    out.sql
    == "SELECT t.g, CASE WHEN t.g = $1 THEN $2 ELSE $3 END AS flag FROM t WHERE t.a > $4 GROUP BY t.g HAVING SUM(t.b) < $5"
    and out.params.len() == 5
    and (out.params.get(3) ?? Null) == Value.I64(1)
}

# Compile-time clause ordering (negative examples — Roc has no
# expect-not-compile, so these are documented; uncommenting any of them
# must produce a TYPE MISMATCH):
#
#   Sql.from("t").having(Expr.col("x").eq(Expr.i64(1)))   # HAVING without GROUP BY
#   Sql.from("t").order_by([(Expr.col("x"), Asc)])        # ORDER BY before SELECT
#   Sql.from("t").select([Expr.col("x")]).where_(...)     # WHERE after SELECT
#   Sql.from("t").select([Expr.col("x")]).join(...)       # JOIN after SELECT
