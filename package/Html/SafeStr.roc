# A byte buffer that only accepts content through two doors:
#   push_escaped — untrusted text, HTML-escaped on the way in
#   push_raw     — trusted markup (tag/attribute syntax, deliberate raw HTML)
# Internal to the Html module; not part of the package's public surface.
#
# NOTE: iteration is a while loop because List.walk crashes at runtime in
# nightly-2026-08-10 (typechecks, then "runtime error" — compiler bug).
SafeStr := [Safe(List(U8))].{
    with_capacity : U64 -> SafeStr
    with_capacity = |n| Safe(List.with_capacity(n))

    ## Append trusted markup verbatim. Only call with literals the renderer
    ## controls, or content the user explicitly marked as raw HTML.
    push_raw : SafeStr, Str -> SafeStr
    push_raw = |buf, s|
        match buf {
            Safe(bytes) => Safe(bytes.concat(s.to_utf8()))
        }

    ## Append untrusted text, escaping `& < > " '` for both text-node and
    ## double-quoted attribute contexts.
    push_escaped : SafeStr, Str -> SafeStr
    push_escaped = |buf, s|
        match buf {
            Safe(bytes) => {
                src = s.to_utf8()
                var out = bytes
                var i = 0.U64
                while i < src.len() {
                    b = src.get(i) ?? 0
                    out = match b {
                        38 => out.concat("&amp;".to_utf8())
                        60 => out.concat("&lt;".to_utf8())
                        62 => out.concat("&gt;".to_utf8())
                        34 => out.concat("&quot;".to_utf8())
                        39 => out.concat("&#39;".to_utf8())
                        _ => out.append(b)
                    }
                    i = i + 1
                }
                Safe(out)
            }
        }

    ## Escaping only substitutes ASCII bytes for ASCII sequences, so the
    ## buffer is valid UTF-8 whenever the inputs were.
    to_str : SafeStr -> Str
    to_str = |buf|
        match buf {
            Safe(bytes) => Str.from_utf8_lossy(bytes)
        }
}

expect SafeStr.with_capacity(8).push_escaped("<b>&\"'").to_str() == "&lt;b&gt;&amp;&quot;&#39;"
expect SafeStr.with_capacity(0).push_raw("<b>").to_str() == "<b>"
expect SafeStr.with_capacity(0).push_escaped("héllo").to_str() == "héllo"
