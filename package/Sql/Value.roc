# A SQL parameter value. Variants align with roc-pg's bind types so a
# rendered fragment maps 1:1 onto `Pg.Cmd.bind` calls.
Value := [
    Null,
    Bool(Bool),
    I64(I64),
    F64(F64),
    Text(Str),
].{
    is_eq : Value, Value -> Bool
    is_eq = |x, y|
        match (x, y) {
            (Null, Null) => Bool.True
            (Bool(a), Bool(b)) => a == b
            (I64(a), I64(b)) => a == b
            (F64(a), F64(b)) => a == b
            (Text(a), Text(b)) => a == b
            _ => Bool.False
        }
}

expect Value.I64(42) == Value.I64(42)
expect Value.Text("a") != Value.Null
