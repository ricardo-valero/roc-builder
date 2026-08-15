import /Sql/Value exposing [Value]
import /Sql/Dialect exposing [Dialect]

# The SQL string under construction plus its parameters — the SafeStr of
# the Sql module. The ONLY ways in:
#   push — trusted SQL syntax (keywords, identifiers, punctuation)
#   bind — a literal value: emits the dialect placeholder, appends the value
# so a value can never reach the SQL text; injection is unrepresentable.
Frag := { sql : Str, params : List(Value), n : U64 }.{
    empty : {} -> Frag
    empty = |_| {
        f : Frag
        f = { sql: "", params: [], n: 1 }
        f
    }

    push : Frag, Str -> Frag
    push = |f, syntax| { sql: "${f.sql}${syntax}", params: f.params, n: f.n }

    bind : Frag, Dialect, Value -> Frag
    bind = |f, d, v| { sql: "${f.sql}${d.placeholder(f.n)}", params: f.params.append(v), n: f.n + 1 }

    done : Frag -> { sql : Str, params : List(Value) }
    done = |f| { sql: f.sql, params: f.params }
}

expect Frag.empty({}).push("SELECT 1").done() == { sql: "SELECT 1", params: [] }

expect {
    out = Frag.empty({}).push("x = ").bind(Postgres, Text("O'Brien")).push(" AND y = ").bind(Postgres, I64(7)).done()
    out.sql == "x = $1 AND y = $2"
    and (out.params.get(0) ?? Null) == Value.Text("O'Brien")
    and (out.params.get(1) ?? Null) == Value.I64(7)
}
