# A SQL dialect owns placeholder syntax and identifier quoting, so new
# dialects can be added without touching query-construction code.
Dialect := [
    Postgres,
].{
    ## Placeholder for the n-th parameter (1-based).
    placeholder : Dialect, U64 -> Str
    placeholder = |d, n|
        match d {
            Postgres => "$${n.to_str()}"
        }

    ## Emit an identifier: bare when it is a safe name (lowercase ASCII
    ## letter or underscore first, then letters/digits/underscores),
    ## double-quoted with internal quotes doubled otherwise.
    ident : Dialect, Str -> Str
    ident = |d, raw|
        match d {
            Postgres =>
                if Dialect.is_bare_safe(raw) {
                    raw
                } else {
                    "\"${Dialect.double_quotes(raw)}\""
                }
        }

    is_bare_safe : Str -> Bool
    is_bare_safe = |raw| {
        src = raw.to_utf8()
        if src.len() == 0 {
            Bool.False
        } else {
            var ok = Bool.True
            var i = 0.U64
            while i < src.len() {
                b = src.get(i) ?? 0
                lower = b >= 97 and b <= 122
                digit = b >= 48 and b <= 57
                underscore = b == 95
                ok = ok and (lower or underscore or (digit and i > 0))
                i = i + 1
            }
            ok
        }
    }

    double_quotes : Str -> Str
    double_quotes = |raw| {
        src = raw.to_utf8()
        var out = List.with_capacity(src.len())
        var i = 0.U64
        while i < src.len() {
            b = src.get(i) ?? 0
            out = if b == 34 { out.concat([34, 34]) } else { out.append(b) }
            i = i + 1
        }
        Str.from_utf8_lossy(out)
    }
}

expect Dialect.placeholder(Postgres, 3) == "$3"
expect Dialect.ident(Postgres, "books") == "books"
expect Dialect.ident(Postgres, "total_sold") == "total_sold"
expect Dialect.ident(Postgres, "Weird Name") == "\"Weird Name\""
expect Dialect.ident(Postgres, "1st") == "\"1st\""
