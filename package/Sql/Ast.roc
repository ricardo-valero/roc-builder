import /Sql/Value exposing [Value]
import /Sql/Dialect exposing [Dialect]
import /Sql/Frag exposing [Frag]

# The untyped SQL expression tree. Construction goes through Sql/Expr's
# kind-typed wrapper; this module owns emission only. Literals go through
# Frag.bind (placeholder + param) — never into the SQL text. Identifiers
# (columns, aliases) go through Dialect.ident and are developer-supplied.
Ast := [
    Column(Str),
    ColumnQ(Str, Str),
    Lit(Value),
    Aliased(Ast, Str),
    # scalar functions
    Upper(Ast),
    Lower(Ast),
    YearOf(Ast),
    MonthOf(Ast),
    DayOf(Ast),
    Substr(Ast, Ast, Ast),
    # aggregates
    CountAll,
    Count(Ast),
    Sum(Ast),
    Avg(Ast),
    MinOf(Ast),
    MaxOf(Ast),
    # arithmetic
    Add(Ast, Ast),
    Subtract(Ast, Ast),
    Multiply(Ast, Ast),
    Divide(Ast, Ast),
    # comparisons and boolean logic
    Eq(Ast, Ast),
    Ne(Ast, Ast),
    Gt(Ast, Ast),
    Lt(Ast, Ast),
    Gte(Ast, Ast),
    Lte(Ast, Ast),
    Like(Ast, Ast),
    InList(Ast, List(Ast)),
    AndAll(List(Ast)),
    OrAll(List(Ast)),
    Not(Ast),
    CaseWhen(List((Ast, Ast)), Ast),
].{
    emit : Ast, Dialect, Frag -> Frag
    emit = |ast, d, f|
        match ast {
            Column(c) => f.push(d.ident(c))
            ColumnQ(t, c) => f.push("${d.ident(t)}.${d.ident(c)}")
            Lit(v) => f.bind(d, v)
            Aliased(e, a) => e.emit(d, f).push(" AS ${d.ident(a)}")
            Upper(e) => Ast.emit_fn("UPPER", e, d, f)
            Lower(e) => Ast.emit_fn("LOWER", e, d, f)
            YearOf(e) => Ast.emit_extract("YEAR", e, d, f)
            MonthOf(e) => Ast.emit_extract("MONTH", e, d, f)
            DayOf(e) => Ast.emit_extract("DAY", e, d, f)
            Substr(e, start_at, length) =>
                length.emit(d, start_at.emit(d, e.emit(d, f.push("SUBSTRING(")).push(", ")).push(", ")).push(")")
            CountAll => f.push("COUNT(*)")
            Count(e) => Ast.emit_fn("COUNT", e, d, f)
            Sum(e) => Ast.emit_fn("SUM", e, d, f)
            Avg(e) => Ast.emit_fn("AVG", e, d, f)
            MinOf(e) => Ast.emit_fn("MIN", e, d, f)
            MaxOf(e) => Ast.emit_fn("MAX", e, d, f)
            Add(l, r) => Ast.emit_bin(l, "+", r, d, f)
            Subtract(l, r) => Ast.emit_bin(l, "-", r, d, f)
            Multiply(l, r) => Ast.emit_bin(l, "*", r, d, f)
            Divide(l, r) => Ast.emit_bin(l, "/", r, d, f)
            Eq(l, r) => Ast.emit_bin(l, "=", r, d, f)
            Ne(l, r) => Ast.emit_bin(l, "<>", r, d, f)
            Gt(l, r) => Ast.emit_bin(l, ">", r, d, f)
            Lt(l, r) => Ast.emit_bin(l, "<", r, d, f)
            Gte(l, r) => Ast.emit_bin(l, ">=", r, d, f)
            Lte(l, r) => Ast.emit_bin(l, "<=", r, d, f)
            Like(l, r) => Ast.emit_bin(l, "LIKE", r, d, f)
            InList(e, options) => Ast.emit_list(options, d, e.emit(d, f).push(" IN ("), ", ").push(")")
            AndAll(es) => Ast.emit_joined(es, " AND ", "TRUE", d, f)
            OrAll(es) => Ast.emit_joined(es, " OR ", "FALSE", d, f)
            Not(e) => e.emit(d, f.push("NOT (")).push(")")
            CaseWhen(branches, fallback) => {
                var acc = f.push("CASE")
                var i = 0.U64
                while i < branches.len() {
                    match branches.get(i) ?? (CountAll, CountAll) {
                        (cond, val) => {
                            acc = val.emit(d, cond.emit(d, acc.push(" WHEN ")).push(" THEN "))
                        }
                    }
                    i = i + 1
                }
                fallback.emit(d, acc.push(" ELSE ")).push(" END")
            }
        }

    emit_fn : Str, Ast, Dialect, Frag -> Frag
    emit_fn = |fn_name, e, d, f| e.emit(d, f.push("${fn_name}(")).push(")")

    ## Date parts use standard SQL EXTRACT (works on Postgres, unlike YEAR()).
    emit_extract : Str, Ast, Dialect, Frag -> Frag
    emit_extract = |part, e, d, f| e.emit(d, f.push("EXTRACT(${part} FROM ")).push(")")

    emit_bin : Ast, Str, Ast, Dialect, Frag -> Frag
    emit_bin = |l, op, r, d, f| r.emit(d, l.emit(d, f).push(" ${op} "))

    ## Comma-style separated emission of a list of expressions.
    emit_list : List(Ast), Dialect, Frag, Str -> Frag
    emit_list = |items, d, f0, sep| {
        var f = f0
        var i = 0.U64
        while i < items.len() {
            item = items.get(i) ?? CountAll
            f = if i == 0 { item.emit(d, f) } else { item.emit(d, f.push(sep)) }
            i = i + 1
        }
        f
    }

    emit_joined : List(Ast), Str, Str, Dialect, Frag -> Frag
    emit_joined = |es, sep, when_empty, d, f|
        if es.len() == 0 {
            f.push(when_empty)
        } else {
            Ast.emit_list(es, d, f.push("("), sep).push(")")
        }
}

expect {
    out = Ast.emit(Eq(Column("genre"), Lit(Text("scifi"))), Postgres, Frag.empty({})).done()
    out.sql == "genre = $1" and (out.params.get(0) ?? Null) == Value.Text("scifi")
}

expect Ast.emit(ColumnQ("books", "id"), Postgres, Frag.empty({})).done().sql == "books.id"

expect {
    e = AndAll([Eq(YearOf(Column("sale_date")), Lit(I64(2024))), Gt(Count(Column("quantity")), Lit(I64(50)))])
    out = Ast.emit(e, Postgres, Frag.empty({})).done()
    out.sql == "(EXTRACT(YEAR FROM sale_date) = $1 AND COUNT(quantity) > $2)"
    and out.params.len() == 2
}
