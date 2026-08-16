import /Sql/Value exposing [Value]
import /Sql/Dialect exposing [Dialect]
import /Sql/Frag exposing [Frag]
import /Sql/Scalar exposing [Scalar]

# The SQL expression grammar as data, column-agnostic: `slot` is the column
# representation, injected through the single `Slot` variant and rendered by
# a caller-supplied emitter (carried by the query's source). Conditions and
# scalars are distinct unions, so a bare scalar in a condition position is
# unrepresentable. Literals lower to Value placeholders via Frag.bind —
# never into the SQL text.
Cond(slot) := [
    Eq(Scalar(slot), Scalar(slot)),
    Ne(Scalar(slot), Scalar(slot)),
    Gt(Scalar(slot), Scalar(slot)),
    Lt(Scalar(slot), Scalar(slot)),
    Gte(Scalar(slot), Scalar(slot)),
    Lte(Scalar(slot), Scalar(slot)),
    Like(Scalar(slot), Scalar(slot)),
    In(Scalar(slot), List(Scalar(slot))),
    And(List(Cond(slot))),
    Or(List(Cond(slot))),
    Not(Cond(slot)),
].{
    emit : Cond(slot), Dialect, (Dialect, slot -> Str), Frag -> Frag
    emit = |cond, d, slot_sql, f|
        match cond {
            Eq(l, r) => Cond.cmp(l, "=", r, d, slot_sql, f)
            Ne(l, r) => Cond.cmp(l, "<>", r, d, slot_sql, f)
            Gt(l, r) => Cond.cmp(l, ">", r, d, slot_sql, f)
            Lt(l, r) => Cond.cmp(l, "<", r, d, slot_sql, f)
            Gte(l, r) => Cond.cmp(l, ">=", r, d, slot_sql, f)
            Lte(l, r) => Cond.cmp(l, "<=", r, d, slot_sql, f)
            Like(l, r) => Cond.cmp(l, "LIKE", r, d, slot_sql, f)
            In(e, options) => Scalar.emit_list(options, d, slot_sql, e.emit(d, slot_sql, f).push(" IN ("), ", ").push(")")
            And(cs) => Cond.joined(cs, " AND ", "TRUE", d, slot_sql, f)
            Or(cs) => Cond.joined(cs, " OR ", "FALSE", d, slot_sql, f)
            Not(c) => c.emit(d, slot_sql, f.push("NOT (")).push(")")
        }

    cmp : Scalar(slot), Str, Scalar(slot), Dialect, (Dialect, slot -> Str), Frag -> Frag
    cmp = |l, op, r, d, slot_sql, f| r.emit(d, slot_sql, l.emit(d, slot_sql, f).push(" ${op} "))

    joined : List(Cond(slot)), Str, Str, Dialect, (Dialect, slot -> Str), Frag -> Frag
    joined = |cs, sep, when_empty, d, slot_sql, f|
        if cs.len() == 0 {
            f.push(when_empty)
        } else {
            var acc = f.push("(")
            var i = 0.U64
            while i < cs.len() {
                c = cs.get(i) ?? And([])
                acc = if i == 0 { c.emit(d, slot_sql, acc) } else { c.emit(d, slot_sql, acc.push(sep)) }
                i = i + 1
            }
            acc.push(")")
        }
}

# tuple-slot emitter for tests: (table, column) -> table.column
test_slot : Dialect, (Str, Str) -> Str
test_slot = |d, (t, c)| "${d.ident(t)}.${d.ident(c)}"

# Composed condition with literals and columns.
expect {
    e : Cond((Str, Str))
    e = And([
        Eq(Year(Slot(("sales", "sale_date"))), I64(2024)),
        Gt(Count(Slot(("sales", "qty"))), I64(50)),
    ])
    out = e.emit(Postgres, test_slot, Frag.empty({})).done()
    out.sql == "(EXTRACT(YEAR FROM sales.sale_date) = $1 AND COUNT(sales.qty) > $2)"
    and (out.params.get(0) ?? Null) == Value.I64(2024)
    and (out.params.get(1) ?? Null) == Value.I64(50)
}

# Values never reach the SQL text.
expect {
    e : Cond((Str, Str))
    e = Eq(Slot(("authors", "name")), Text("O'Brien"))
    out = e.emit(Postgres, test_slot, Frag.empty({})).done()
    out.sql == "authors.name = $1" and (out.params.get(0) ?? Null) == Value.Text("O'Brien")
}

# In, Case, aliasing; placeholders in emission order.
expect {
    e : Cond((Str, Str))
    e = In(Slot(("t", "x")), [I64(1), I64(2)])
    e.emit(Postgres, test_slot, Frag.empty({})).done().sql == "t.x IN ($1, $2)"
}

expect {
    s : Scalar((Str, Str))
    s = As(Sum(Slot(("t", "g"))), "flag")
    out = Scalar.emit(s, Postgres, test_slot, Frag.empty({})).done()
    out.sql == "SUM(t.g) AS flag" and out.params.len() == 0
}

# Negative examples (must be TYPE MISMATCH when uncommented):
#   And([Slot(("t", "x"))])      # a scalar is not a condition
#   Sum(Eq(Slot(("t","x")), 1))  # a condition is not a scalar
