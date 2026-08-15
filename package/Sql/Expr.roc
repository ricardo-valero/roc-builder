import /Sql/Value exposing [Value]
import /Sql/Dialect exposing [Dialect]

# A SQL expression. Literals never reach the SQL text: `emit` renders them
# as dialect placeholders and collects their values, in emission order, so
# injection is impossible by construction. Identifiers (columns, aliases)
# go through Dialect.ident and are developer-supplied, not user data.
Expr := [
    Column(Str),
    ColumnQ(Str, Str),
    Lit(Value),
    Aliased(Expr, Str),
    # scalar functions
    Upper(Expr),
    Lower(Expr),
    YearOf(Expr),
    MonthOf(Expr),
    DayOf(Expr),
    Substr(Expr, Expr, Expr),
    # aggregates
    CountAll,
    Count(Expr),
    Sum(Expr),
    Avg(Expr),
    MinOf(Expr),
    MaxOf(Expr),
    # arithmetic
    Add(Expr, Expr),
    Subtract(Expr, Expr),
    Multiply(Expr, Expr),
    Divide(Expr, Expr),
    # comparisons and boolean logic
    Eq(Expr, Expr),
    Ne(Expr, Expr),
    Gt(Expr, Expr),
    Lt(Expr, Expr),
    Gte(Expr, Expr),
    Lte(Expr, Expr),
    Like(Expr, Expr),
    InList(Expr, List(Expr)),
    AndAll(List(Expr)),
    OrAll(List(Expr)),
    Not(Expr),
    CaseWhen(List((Expr, Expr)), Expr),
].{
    # -- constructors ---------------------------------------------------------

    ## Free-form column reference (escape hatch; prefer schema records).
    col : Str -> Expr
    col = |column_name| Column(column_name)

    ## Table-qualified column reference (what schema records produce).
    qualified : Str, Str -> Expr
    qualified = |table_name, column_name| ColumnQ(table_name, column_name)

    i64 : I64 -> Expr
    i64 = |v| Lit(I64(v))

    f64 : F64 -> Expr
    f64 = |v| Lit(F64(v))

    text : Str -> Expr
    text = |v| Lit(Text(v))

    bool : Bool -> Expr
    bool = |v| Lit(Bool(v))

    null : Expr
    null = Lit(Null)

    count : Expr -> Expr
    count = |e| Count(e)

    count_all : Expr
    count_all = CountAll

    sum : Expr -> Expr
    sum = |e| Sum(e)

    avg : Expr -> Expr
    avg = |e| Avg(e)

    min_of : Expr -> Expr
    min_of = |e| MinOf(e)

    max_of : Expr -> Expr
    max_of = |e| MaxOf(e)

    and_all : List(Expr) -> Expr
    and_all = |es| AndAll(es)

    or_all : List(Expr) -> Expr
    or_all = |es| OrAll(es)

    not_ : Expr -> Expr
    not_ = |e| Not(e)

    ## CASE WHEN c1 THEN v1 ... ELSE fallback END
    case_when : List((Expr, Expr)), Expr -> Expr
    case_when = |branches, fallback| CaseWhen(branches, fallback)

    # -- methods (fluent) -----------------------------------------------------

    ## `AS name` — `as` is a Roc keyword, hence `as_`.
    as_ : Expr, Str -> Expr
    as_ = |e, alias_name| Aliased(e, alias_name)

    eq : Expr, Expr -> Expr
    eq = |l, r| Eq(l, r)

    ne : Expr, Expr -> Expr
    ne = |l, r| Ne(l, r)

    gt : Expr, Expr -> Expr
    gt = |l, r| Gt(l, r)

    lt : Expr, Expr -> Expr
    lt = |l, r| Lt(l, r)

    gte : Expr, Expr -> Expr
    gte = |l, r| Gte(l, r)

    lte : Expr, Expr -> Expr
    lte = |l, r| Lte(l, r)

    like : Expr, Expr -> Expr
    like = |l, r| Like(l, r)

    in_list : Expr, List(Expr) -> Expr
    in_list = |e, options| InList(e, options)

    plus : Expr, Expr -> Expr
    plus = |l, r| Add(l, r)

    minus : Expr, Expr -> Expr
    minus = |l, r| Subtract(l, r)

    times : Expr, Expr -> Expr
    times = |l, r| Multiply(l, r)

    div_by : Expr, Expr -> Expr
    div_by = |l, r| Divide(l, r)

    upper : Expr -> Expr
    upper = |e| Upper(e)

    lower : Expr -> Expr
    lower = |e| Lower(e)

    year : Expr -> Expr
    year = |e| YearOf(e)

    month : Expr -> Expr
    month = |e| MonthOf(e)

    day : Expr -> Expr
    day = |e| DayOf(e)

    substring : Expr, Expr, Expr -> Expr
    substring = |e, start_at, length| Substr(e, start_at, length)

    # -- rendering ------------------------------------------------------------

    ## Render to SQL text, threading the parameter list and next placeholder
    ## number through. Every `Lit` becomes a placeholder + appended value.
    emit : Expr, Dialect, { params : List(Value), n : U64 } -> { text : Str, params : List(Value), n : U64 }
    emit = |expr, d, st|
        match expr {
            Column(c) => { text: d.ident(c), params: st.params, n: st.n }
            ColumnQ(t, c) => { text: "${d.ident(t)}.${d.ident(c)}", params: st.params, n: st.n }
            Lit(v) => { text: d.placeholder(st.n), params: st.params.append(v), n: st.n + 1 }
            Aliased(e, alias_name) => {
                r = e.emit(d, st)
                { text: "${r.text} AS ${d.ident(alias_name)}", params: r.params, n: r.n }
            }
            Upper(e) => Expr.emit_fn("UPPER", e, d, st)
            Lower(e) => Expr.emit_fn("LOWER", e, d, st)
            YearOf(e) => Expr.emit_extract("YEAR", e, d, st)
            MonthOf(e) => Expr.emit_extract("MONTH", e, d, st)
            DayOf(e) => Expr.emit_extract("DAY", e, d, st)
            Substr(e, start_at, length) => {
                r1 = e.emit(d, st)
                r2 = start_at.emit(d, { params: r1.params, n: r1.n })
                r3 = length.emit(d, { params: r2.params, n: r2.n })
                { text: "SUBSTRING(${r1.text}, ${r2.text}, ${r3.text})", params: r3.params, n: r3.n }
            }
            CountAll => { text: "COUNT(*)", params: st.params, n: st.n }
            Count(e) => Expr.emit_fn("COUNT", e, d, st)
            Sum(e) => Expr.emit_fn("SUM", e, d, st)
            Avg(e) => Expr.emit_fn("AVG", e, d, st)
            MinOf(e) => Expr.emit_fn("MIN", e, d, st)
            MaxOf(e) => Expr.emit_fn("MAX", e, d, st)
            Add(l, r) => Expr.emit_bin(l, "+", r, d, st)
            Subtract(l, r) => Expr.emit_bin(l, "-", r, d, st)
            Multiply(l, r) => Expr.emit_bin(l, "*", r, d, st)
            Divide(l, r) => Expr.emit_bin(l, "/", r, d, st)
            Eq(l, r) => Expr.emit_bin(l, "=", r, d, st)
            Ne(l, r) => Expr.emit_bin(l, "<>", r, d, st)
            Gt(l, r) => Expr.emit_bin(l, ">", r, d, st)
            Lt(l, r) => Expr.emit_bin(l, "<", r, d, st)
            Gte(l, r) => Expr.emit_bin(l, ">=", r, d, st)
            Lte(l, r) => Expr.emit_bin(l, "<=", r, d, st)
            Like(l, r) => Expr.emit_bin(l, "LIKE", r, d, st)
            InList(e, options) => {
                r = e.emit(d, st)
                var acc = ""
                var params = r.params
                var n = r.n
                var i = 0.U64
                while i < options.len() {
                    ri = (options.get(i) ?? Expr.null).emit(d, { params: params, n: n })
                    acc = if acc == "" { ri.text } else { "${acc}, ${ri.text}" }
                    params = ri.params
                    n = ri.n
                    i = i + 1
                }
                { text: "${r.text} IN (${acc})", params: params, n: n }
            }
            AndAll(es) => Expr.emit_joined(es, " AND ", "TRUE", d, st)
            OrAll(es) => Expr.emit_joined(es, " OR ", "FALSE", d, st)
            Not(e) => {
                r = e.emit(d, st)
                { text: "NOT (${r.text})", params: r.params, n: r.n }
            }
            CaseWhen(branches, fallback) => {
                var acc = "CASE"
                var params = st.params
                var n = st.n
                var i = 0.U64
                while i < branches.len() {
                    match branches.get(i) ?? (Expr.null, Expr.null) {
                        (cond, val) => {
                            rc = cond.emit(d, { params: params, n: n })
                            rv = val.emit(d, { params: rc.params, n: rc.n })
                            acc = "${acc} WHEN ${rc.text} THEN ${rv.text}"
                            params = rv.params
                            n = rv.n
                        }
                    }
                    i = i + 1
                }
                rf = fallback.emit(d, { params: params, n: n })
                { text: "${acc} ELSE ${rf.text} END", params: rf.params, n: rf.n }
            }
        }

    emit_fn : Str, Expr, Dialect, { params : List(Value), n : U64 } -> { text : Str, params : List(Value), n : U64 }
    emit_fn = |fn_name, e, d, st| {
        r = e.emit(d, st)
        { text: "${fn_name}(${r.text})", params: r.params, n: r.n }
    }

    ## Date parts use standard SQL EXTRACT (works on Postgres, unlike YEAR()).
    emit_extract : Str, Expr, Dialect, { params : List(Value), n : U64 } -> { text : Str, params : List(Value), n : U64 }
    emit_extract = |part, e, d, st| {
        r = e.emit(d, st)
        { text: "EXTRACT(${part} FROM ${r.text})", params: r.params, n: r.n }
    }

    emit_bin : Expr, Str, Expr, Dialect, { params : List(Value), n : U64 } -> { text : Str, params : List(Value), n : U64 }
    emit_bin = |l, op, r, d, st| {
        lr = l.emit(d, st)
        rr = r.emit(d, { params: lr.params, n: lr.n })
        { text: "${lr.text} ${op} ${rr.text}", params: rr.params, n: rr.n }
    }

    emit_joined : List(Expr), Str, Str, Dialect, { params : List(Value), n : U64 } -> { text : Str, params : List(Value), n : U64 }
    emit_joined = |es, sep, when_empty, d, st| {
        if es.len() == 0 {
            { text: when_empty, params: st.params, n: st.n }
        } else {
            var acc = ""
            var params = st.params
            var n = st.n
            var i = 0.U64
            while i < es.len() {
                ri = (es.get(i) ?? Expr.null).emit(d, { params: params, n: n })
                acc = if acc == "" { ri.text } else { "${acc}${sep}${ri.text}" }
                params = ri.params
                n = ri.n
                i = i + 1
            }
            { text: "(${acc})", params: params, n: n }
        }
    }
}

expect {
    r = Expr.col("genre").eq(Expr.text("scifi")).emit(Postgres, { params: [], n: 1 })
    r.text == "genre = $1" and r.n == 2 and (r.params.get(0) ?? Null) == Value.Text("scifi")
}

expect {
    r = Expr.qualified("books", "id").emit(Postgres, { params: [], n: 1 })
    r.text == "books.id" and r.n == 1
}

expect {
    e = Expr.and_all([Expr.col("sale_date").year().eq(Expr.i64(2024)), Expr.count(Expr.col("quantity")).gt(Expr.i64(50))])
    r = e.emit(Postgres, { params: [], n: 1 })
    r.text == "(EXTRACT(YEAR FROM sale_date) = $1 AND COUNT(quantity) > $2)"
    and (r.params.get(0) ?? Null) == Value.I64(2024)
    and (r.params.get(1) ?? Null) == Value.I64(50)
}

expect {
    r = Expr.count(Expr.col("quantity")).as_("total_sold").emit(Postgres, { params: [], n: 1 })
    r.text == "COUNT(quantity) AS total_sold"
}

expect {
    r = Expr.col("id").in_list([Expr.i64(1), Expr.i64(2)]).emit(Postgres, { params: [], n: 1 })
    r.text == "id IN ($1, $2)" and r.n == 3
}
