import /Sql/Value exposing [Value]
import /Sql/Dialect exposing [Dialect]
import /Sql/Frag exposing [Frag]

## Scalars: columns (via Slot), literals, functions, aggregates.
## Bare-literal coercion (from_numeral/from_quote) is deferred: declaring
## them on a parameterized type segfaults nightly-2026-08-15. CASE is
## deferred too: it is the one Scalar -> Cond edge, and breaking it lets
## Scalar live as its own public module (cross-module nested-type
## references are not supported).
Scalar(slot) := [
    Slot(slot),
    I64(I64), F64(F64), Text(Str), True, False, Null,
    Year(Scalar(slot)), Month(Scalar(slot)), Day(Scalar(slot)),
    Upper(Scalar(slot)), Lower(Scalar(slot)),
    Substring(Scalar(slot), Scalar(slot), Scalar(slot)),
    CountAll, Count(Scalar(slot)), Sum(Scalar(slot)), Avg(Scalar(slot)),
    Min(Scalar(slot)), Max(Scalar(slot)),
    Add(Scalar(slot), Scalar(slot)), Sub(Scalar(slot), Scalar(slot)),
    Mul(Scalar(slot), Scalar(slot)), Div(Scalar(slot), Scalar(slot)),
    As(Scalar(slot), Str),
].{
    emit : Scalar(slot), Dialect, (Dialect, slot -> Str), Frag -> Frag
    emit = |s, d, slot_sql, f|
        match s {
            Slot(c) => f.push(slot_sql(d, c))
            I64(v) => f.bind(d, Value.I64(v))
            F64(v) => f.bind(d, Value.F64(v))
            Text(v) => f.bind(d, Value.Text(v))
            True => f.bind(d, Value.Bool(Bool.True))
            False => f.bind(d, Value.Bool(Bool.False))
            Null => f.bind(d, Value.Null)
            Year(e) => Scalar.extract("YEAR", e, d, slot_sql, f)
            Month(e) => Scalar.extract("MONTH", e, d, slot_sql, f)
            Day(e) => Scalar.extract("DAY", e, d, slot_sql, f)
            Upper(e) => Scalar.fn1("UPPER", e, d, slot_sql, f)
            Lower(e) => Scalar.fn1("LOWER", e, d, slot_sql, f)
            Substring(e, start_at, length) =>
                length.emit(d, slot_sql, start_at.emit(d, slot_sql, e.emit(d, slot_sql, f.push("SUBSTRING(")).push(", ")).push(", ")).push(")")
            CountAll => f.push("COUNT(*)")
            Count(e) => Scalar.fn1("COUNT", e, d, slot_sql, f)
            Sum(e) => Scalar.fn1("SUM", e, d, slot_sql, f)
            Avg(e) => Scalar.fn1("AVG", e, d, slot_sql, f)
            Min(e) => Scalar.fn1("MIN", e, d, slot_sql, f)
            Max(e) => Scalar.fn1("MAX", e, d, slot_sql, f)
            Add(l, r) => Scalar.bin(l, "+", r, d, slot_sql, f)
            Sub(l, r) => Scalar.bin(l, "-", r, d, slot_sql, f)
            Mul(l, r) => Scalar.bin(l, "*", r, d, slot_sql, f)
            Div(l, r) => Scalar.bin(l, "/", r, d, slot_sql, f)
            As(e, alias_name) => e.emit(d, slot_sql, f).push(" AS ${d.ident(alias_name)}")
        }

    fn1 : Str, Scalar(slot), Dialect, (Dialect, slot -> Str), Frag -> Frag
    fn1 = |fn_name, e, d, slot_sql, f| e.emit(d, slot_sql, f.push("${fn_name}(")).push(")")

    ## Date parts use standard SQL EXTRACT (works on Postgres, unlike YEAR()).
    extract : Str, Scalar(slot), Dialect, (Dialect, slot -> Str), Frag -> Frag
    extract = |part, e, d, slot_sql, f| e.emit(d, slot_sql, f.push("EXTRACT(${part} FROM ")).push(")")

    bin : Scalar(slot), Str, Scalar(slot), Dialect, (Dialect, slot -> Str), Frag -> Frag
    bin = |l, op, r, d, slot_sql, f| r.emit(d, slot_sql, l.emit(d, slot_sql, f).push(" ${op} "))

    ## Separator-joined emission of a scalar list.
    emit_list : List(Scalar(slot)), Dialect, (Dialect, slot -> Str), Frag, Str -> Frag
    emit_list = |items, d, slot_sql, f0, sep| {
        var f = f0
        var i = 0.U64
        while i < items.len() {
            item = items.get(i) ?? CountAll
            f = if i == 0 { item.emit(d, slot_sql, f) } else { item.emit(d, slot_sql, f.push(sep)) }
            i = i + 1
        }
        f
    }
}
