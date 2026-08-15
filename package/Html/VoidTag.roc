# Void HTML elements: no children, no closing tag.
# https://html.spec.whatwg.org/multipage/syntax.html#void-elements
VoidTag := [
    Area,
    Base,
    Br,
    Col,
    Embed,
    Hr,
    Img,
    Input,
    Link,
    Meta,
    Source,
    Track,
    Wbr,
].{
    to_str : VoidTag -> Str
    to_str = |tag|
        match tag {
            Area => "area"
            Base => "base"
            Br => "br"
            Col => "col"
            Embed => "embed"
            Hr => "hr"
            Img => "img"
            Input => "input"
            Link => "link"
            Meta => "meta"
            Source => "source"
            Track => "track"
            Wbr => "wbr"
        }
}

expect VoidTag.to_str(Br) == "br"
