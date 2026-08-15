import /Sql/Ast exposing [Ast]
import /Sql/Value
import /Sql/Frag exposing [Frag]

# Kind-typed SQL expressions: a phantom wrapper over the untyped Ast.
# `t` is a result kind — [Num], [Text], [Bool] — enforced by the
# constructor/combinator signatures: comparisons demand same-kind operands
# and produce [Bool]; WHERE/HAVING/ON demand Expr([Bool]).
#
# The phantom MUST live on this wrapper, never on the recursive Ast
# itself: Expr(t) := [Eq(Expr(t), Expr(t)), ...] type-checks today but is
# unsound (children would need existential kinds) and crashes at runtime.
Expr(t) := [T(Ast)].{
    ## Unwrap — for clause payloads and heterogeneous SELECT lists.
    raw : Expr(t) -> Ast
    raw = |e|
        match e {
            T(a) => a
        }

    ## Wrap a raw column (or any Ast) with a fresh kind. Kind-polymorphic
    ## per call: the same schema column can be [Num] in one condition and
    ## [Text] in another.
    of : Ast -> Expr(t)
    of = |a| T(a)

    # -- constructors ---------------------------------------------------------

    col : Str -> Expr(t)
    col = |c| T(Column(c))

    qualified : Str, Str -> Expr(t)
    qualified = |tbl, c| T(ColumnQ(tbl, c))

    i64 : I64 -> Expr([Num])
    i64 = |v| T(Lit(I64(v)))

    f64 : F64 -> Expr([Num])
    f64 = |v| T(Lit(F64(v)))

    text : Str -> Expr([Text])
    text = |v| T(Lit(Text(v)))

    bool : Bool -> Expr([Bool])
    bool = |v| T(Lit(Bool(v)))

    null : Expr(t)
    null = T(Lit(Null))

    count : Expr(t) -> Expr([Num])
    count = |e| T(Count(e.raw()))

    count_all : Expr([Num])
    count_all = T(CountAll)

    sum : Expr([Num]) -> Expr([Num])
    sum = |e| T(Sum(e.raw()))

    avg : Expr([Num]) -> Expr([Num])
    avg = |e| T(Avg(e.raw()))

    min_of : Expr([Num]) -> Expr([Num])
    min_of = |e| T(MinOf(e.raw()))

    max_of : Expr([Num]) -> Expr([Num])
    max_of = |e| T(MaxOf(e.raw()))

    and_all : List(Expr([Bool])) -> Expr([Bool])
    and_all = |es| T(AndAll(Expr.raw_list(es)))

    or_all : List(Expr([Bool])) -> Expr([Bool])
    or_all = |es| T(OrAll(Expr.raw_list(es)))

    not_ : Expr([Bool]) -> Expr([Bool])
    not_ = |e| T(Not(e.raw()))

    ## CASE WHEN c1 THEN v1 ... ELSE fallback END — branches share the
    ## fallback's kind.
    case_when : List((Expr([Bool]), Expr(t))), Expr(t) -> Expr(t)
    case_when = |branches, fallback| {
        var raw_branches = []
        var i = 0.U64
        while i < branches.len() {
            match branches.get(i) ?? (Expr.bool(Bool.True), fallback) {
                (c, v) => {
                    raw_branches = raw_branches.append((c.raw(), v.raw()))
                }
            }
            i = i + 1
        }
        T(CaseWhen(raw_branches, fallback.raw()))
    }

    # -- methods (fluent) -----------------------------------------------------

    ## `AS name` — `as` is a Roc keyword, hence `as_`.
    as_ : Expr(t), Str -> Expr(t)
    as_ = |e, alias_name| T(Aliased(e.raw(), alias_name))

    eq : Expr(t), Expr(t) -> Expr([Bool])
    eq = |l, r| T(Eq(l.raw(), r.raw()))

    ne : Expr(t), Expr(t) -> Expr([Bool])
    ne = |l, r| T(Ne(l.raw(), r.raw()))

    gt : Expr(t), Expr(t) -> Expr([Bool])
    gt = |l, r| T(Gt(l.raw(), r.raw()))

    lt : Expr(t), Expr(t) -> Expr([Bool])
    lt = |l, r| T(Lt(l.raw(), r.raw()))

    gte : Expr(t), Expr(t) -> Expr([Bool])
    gte = |l, r| T(Gte(l.raw(), r.raw()))

    lte : Expr(t), Expr(t) -> Expr([Bool])
    lte = |l, r| T(Lte(l.raw(), r.raw()))

    like : Expr([Text]), Expr([Text]) -> Expr([Bool])
    like = |l, r| T(Like(l.raw(), r.raw()))

    in_list : Expr(t), List(Expr(t)) -> Expr([Bool])
    in_list = |e, options| T(InList(e.raw(), Expr.raw_list(options)))

    plus : Expr([Num]), Expr([Num]) -> Expr([Num])
    plus = |l, r| T(Add(l.raw(), r.raw()))

    minus : Expr([Num]), Expr([Num]) -> Expr([Num])
    minus = |l, r| T(Subtract(l.raw(), r.raw()))

    times : Expr([Num]), Expr([Num]) -> Expr([Num])
    times = |l, r| T(Multiply(l.raw(), r.raw()))

    div_by : Expr([Num]), Expr([Num]) -> Expr([Num])
    div_by = |l, r| T(Divide(l.raw(), r.raw()))

    upper : Expr([Text]) -> Expr([Text])
    upper = |e| T(Upper(e.raw()))

    lower : Expr([Text]) -> Expr([Text])
    lower = |e| T(Lower(e.raw()))

    year : Expr(t) -> Expr([Num])
    year = |e| T(YearOf(e.raw()))

    month : Expr(t) -> Expr([Num])
    month = |e| T(MonthOf(e.raw()))

    day : Expr(t) -> Expr([Num])
    day = |e| T(DayOf(e.raw()))

    substring : Expr([Text]), Expr([Num]), Expr([Num]) -> Expr([Text])
    substring = |e, start_at, length| T(Substr(e.raw(), start_at.raw(), length.raw()))

    raw_list : List(Expr(t)) -> List(Ast)
    raw_list = |es| {
        var out = []
        var i = 0.U64
        while i < es.len() {
            out = out.append((es.get(i) ?? Expr.null).raw())
            i = i + 1
        }
        out
    }
}

# Same-kind comparison compiles; columns adopt context kind.
expect {
    e = Expr.col("genre").eq(Expr.text("scifi"))
    out = e.raw().emit(Postgres, Frag.empty({})).done()
    out.sql == "genre = $1"
}

# Boolean combinators require [Bool] operands.
expect {
    e = Expr.and_all([Expr.col("d").year().eq(Expr.i64(2024)), Expr.count(Expr.col("q")).gt(Expr.i64(50))])
    e.raw().emit(Postgres, Frag.empty({})).done().sql
    == "(EXTRACT(YEAR FROM d) = $1 AND COUNT(q) > $2)"
}

# Negative examples (must be TYPE MISMATCH when uncommented):
#   Expr.text("x").eq(Expr.i64(1))       # cross-kind comparison
#   Expr.not_(Expr.i64(1))               # NOT of a non-boolean
#   Expr.like(Expr.i64(1), Expr.text(""))# LIKE demands [Text]
