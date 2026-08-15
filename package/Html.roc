import /Html/Attribute exposing [Attribute]
import /Html/SafeStr exposing [SafeStr]

# An HTML document as data: one variant per element, so documents are
# written as nested literals with no wrapper functions —
#
#     doc = Html([], [Body([], [P([Disabled], [Text("hi")])])])
#     doc.render()
#
# Void elements (Br, Img, ...) carry no children slot, so a void element
# with children is unrepresentable. Text escapes on render; raw HTML
# requires the explicitly dangerous DangerousRaw variant. CustomEl is the
# escape hatch for web components. Rendering is two-pass: a size pass
# reserves the output buffer, then an emit pass fills it.
Html := [
    # Main root
    Html(List(Attribute), List(Html)),
    # Sectioning root
    Body(List(Attribute), List(Html)),
    # Content sectioning
    Address(List(Attribute), List(Html)), Article(List(Attribute), List(Html)), Aside(List(Attribute), List(Html)), Footer(List(Attribute), List(Html)), H1(List(Attribute), List(Html)),
    H2(List(Attribute), List(Html)), H3(List(Attribute), List(Html)), H4(List(Attribute), List(Html)), H5(List(Attribute), List(Html)), H6(List(Attribute), List(Html)),
    Header(List(Attribute), List(Html)), Main(List(Attribute), List(Html)), Nav(List(Attribute), List(Html)), Section(List(Attribute), List(Html)),
    # Demarcating edits
    Del(List(Attribute), List(Html)), Ins(List(Attribute), List(Html)),
    # Document metadata
    Head(List(Attribute), List(Html)), Style(List(Attribute), List(Html)), Title(List(Attribute), List(Html)),
    # Embedded content
    Iframe(List(Attribute), List(Html)), Object(List(Attribute), List(Html)), Picture(List(Attribute), List(Html)), Portal(List(Attribute), List(Html)),
    # Forms
    Button(List(Attribute), List(Html)), Datalist(List(Attribute), List(Html)), Fieldset(List(Attribute), List(Html)), Form(List(Attribute), List(Html)), Label(List(Attribute), List(Html)),
    Legend(List(Attribute), List(Html)), Meter(List(Attribute), List(Html)), Optgroup(List(Attribute), List(Html)), Option(List(Attribute), List(Html)), Output(List(Attribute), List(Html)),
    Progress(List(Attribute), List(Html)), Select(List(Attribute), List(Html)), Textarea(List(Attribute), List(Html)),
    # Image and multimedia
    Audio(List(Attribute), List(Html)), Map(List(Attribute), List(Html)), Video(List(Attribute), List(Html)),
    # Inline text semantics
    A(List(Attribute), List(Html)), Abbr(List(Attribute), List(Html)), B(List(Attribute), List(Html)), Bdi(List(Attribute), List(Html)), Bdo(List(Attribute), List(Html)),
    Cite(List(Attribute), List(Html)), Code(List(Attribute), List(Html)), Data(List(Attribute), List(Html)), Dfn(List(Attribute), List(Html)), Em(List(Attribute), List(Html)),
    I(List(Attribute), List(Html)), Kbd(List(Attribute), List(Html)), Mark(List(Attribute), List(Html)), Q(List(Attribute), List(Html)), Rp(List(Attribute), List(Html)),
    Rt(List(Attribute), List(Html)), Ruby(List(Attribute), List(Html)), S(List(Attribute), List(Html)), Samp(List(Attribute), List(Html)), Small(List(Attribute), List(Html)),
    Span(List(Attribute), List(Html)), Strong(List(Attribute), List(Html)), Sub(List(Attribute), List(Html)), Sup(List(Attribute), List(Html)), Time(List(Attribute), List(Html)),
    U(List(Attribute), List(Html)), Var(List(Attribute), List(Html)),
    # Interactive elements
    Details(List(Attribute), List(Html)), Dialog(List(Attribute), List(Html)), Summary(List(Attribute), List(Html)),
    # SVG and MathML
    Math(List(Attribute), List(Html)), Svg(List(Attribute), List(Html)),
    # Scripting
    Canvas(List(Attribute), List(Html)), Noscript(List(Attribute), List(Html)), Script(List(Attribute), List(Html)),
    # Table content
    Caption(List(Attribute), List(Html)), Colgroup(List(Attribute), List(Html)), Table(List(Attribute), List(Html)), Tbody(List(Attribute), List(Html)), Td(List(Attribute), List(Html)),
    Tfoot(List(Attribute), List(Html)), Th(List(Attribute), List(Html)), Thead(List(Attribute), List(Html)), Tr(List(Attribute), List(Html)),
    # Text content
    Blockquote(List(Attribute), List(Html)), Dd(List(Attribute), List(Html)), Div(List(Attribute), List(Html)), Dl(List(Attribute), List(Html)), Dt(List(Attribute), List(Html)),
    Figcaption(List(Attribute), List(Html)), Figure(List(Attribute), List(Html)), Li(List(Attribute), List(Html)), Menu(List(Attribute), List(Html)), Ol(List(Attribute), List(Html)),
    P(List(Attribute), List(Html)), Pre(List(Attribute), List(Html)), Ul(List(Attribute), List(Html)),
    # Web components
    Slot(List(Attribute), List(Html)), Template(List(Attribute), List(Html)),
    # Void elements — no children slot, no closing tag
    Area(List(Attribute)), Base(List(Attribute)), Br(List(Attribute)), Col(List(Attribute)), Embed(List(Attribute)),
    Hr(List(Attribute)), Img(List(Attribute)), Input(List(Attribute)), Link(List(Attribute)), Meta(List(Attribute)),
    Source(List(Attribute)), Track(List(Attribute)), Wbr(List(Attribute)),
    # Leaves and escape hatches
    Text(Str),
    DangerousRaw(Str),
    CustomEl(Str, List(Attribute), List(Html)),
].{
    ## The single element table: variant -> tag name + shape. Everything
    ## else (sizing, emission) consumes this view.
    parts : Html -> [El(Str, List(Attribute), List(Html)), VoidEl(Str, List(Attribute)), Txt(Str), Danger(Str)]
    parts = |node|
        match node {
            Html(attrs, kids) => El("html", attrs, kids)
            Body(attrs, kids) => El("body", attrs, kids)
            Address(attrs, kids) => El("address", attrs, kids)
            Article(attrs, kids) => El("article", attrs, kids)
            Aside(attrs, kids) => El("aside", attrs, kids)
            Footer(attrs, kids) => El("footer", attrs, kids)
            H1(attrs, kids) => El("h1", attrs, kids)
            H2(attrs, kids) => El("h2", attrs, kids)
            H3(attrs, kids) => El("h3", attrs, kids)
            H4(attrs, kids) => El("h4", attrs, kids)
            H5(attrs, kids) => El("h5", attrs, kids)
            H6(attrs, kids) => El("h6", attrs, kids)
            Header(attrs, kids) => El("header", attrs, kids)
            Main(attrs, kids) => El("main", attrs, kids)
            Nav(attrs, kids) => El("nav", attrs, kids)
            Section(attrs, kids) => El("section", attrs, kids)
            Del(attrs, kids) => El("del", attrs, kids)
            Ins(attrs, kids) => El("ins", attrs, kids)
            Head(attrs, kids) => El("head", attrs, kids)
            Style(attrs, kids) => El("style", attrs, kids)
            Title(attrs, kids) => El("title", attrs, kids)
            Iframe(attrs, kids) => El("iframe", attrs, kids)
            Object(attrs, kids) => El("object", attrs, kids)
            Picture(attrs, kids) => El("picture", attrs, kids)
            Portal(attrs, kids) => El("portal", attrs, kids)
            Button(attrs, kids) => El("button", attrs, kids)
            Datalist(attrs, kids) => El("datalist", attrs, kids)
            Fieldset(attrs, kids) => El("fieldset", attrs, kids)
            Form(attrs, kids) => El("form", attrs, kids)
            Label(attrs, kids) => El("label", attrs, kids)
            Legend(attrs, kids) => El("legend", attrs, kids)
            Meter(attrs, kids) => El("meter", attrs, kids)
            Optgroup(attrs, kids) => El("optgroup", attrs, kids)
            Option(attrs, kids) => El("option", attrs, kids)
            Output(attrs, kids) => El("output", attrs, kids)
            Progress(attrs, kids) => El("progress", attrs, kids)
            Select(attrs, kids) => El("select", attrs, kids)
            Textarea(attrs, kids) => El("textarea", attrs, kids)
            Audio(attrs, kids) => El("audio", attrs, kids)
            Map(attrs, kids) => El("map", attrs, kids)
            Video(attrs, kids) => El("video", attrs, kids)
            A(attrs, kids) => El("a", attrs, kids)
            Abbr(attrs, kids) => El("abbr", attrs, kids)
            B(attrs, kids) => El("b", attrs, kids)
            Bdi(attrs, kids) => El("bdi", attrs, kids)
            Bdo(attrs, kids) => El("bdo", attrs, kids)
            Cite(attrs, kids) => El("cite", attrs, kids)
            Code(attrs, kids) => El("code", attrs, kids)
            Data(attrs, kids) => El("data", attrs, kids)
            Dfn(attrs, kids) => El("dfn", attrs, kids)
            Em(attrs, kids) => El("em", attrs, kids)
            I(attrs, kids) => El("i", attrs, kids)
            Kbd(attrs, kids) => El("kbd", attrs, kids)
            Mark(attrs, kids) => El("mark", attrs, kids)
            Q(attrs, kids) => El("q", attrs, kids)
            Rp(attrs, kids) => El("rp", attrs, kids)
            Rt(attrs, kids) => El("rt", attrs, kids)
            Ruby(attrs, kids) => El("ruby", attrs, kids)
            S(attrs, kids) => El("s", attrs, kids)
            Samp(attrs, kids) => El("samp", attrs, kids)
            Small(attrs, kids) => El("small", attrs, kids)
            Span(attrs, kids) => El("span", attrs, kids)
            Strong(attrs, kids) => El("strong", attrs, kids)
            Sub(attrs, kids) => El("sub", attrs, kids)
            Sup(attrs, kids) => El("sup", attrs, kids)
            Time(attrs, kids) => El("time", attrs, kids)
            U(attrs, kids) => El("u", attrs, kids)
            Var(attrs, kids) => El("var", attrs, kids)
            Details(attrs, kids) => El("details", attrs, kids)
            Dialog(attrs, kids) => El("dialog", attrs, kids)
            Summary(attrs, kids) => El("summary", attrs, kids)
            Math(attrs, kids) => El("math", attrs, kids)
            Svg(attrs, kids) => El("svg", attrs, kids)
            Canvas(attrs, kids) => El("canvas", attrs, kids)
            Noscript(attrs, kids) => El("noscript", attrs, kids)
            Script(attrs, kids) => El("script", attrs, kids)
            Caption(attrs, kids) => El("caption", attrs, kids)
            Colgroup(attrs, kids) => El("colgroup", attrs, kids)
            Table(attrs, kids) => El("table", attrs, kids)
            Tbody(attrs, kids) => El("tbody", attrs, kids)
            Td(attrs, kids) => El("td", attrs, kids)
            Tfoot(attrs, kids) => El("tfoot", attrs, kids)
            Th(attrs, kids) => El("th", attrs, kids)
            Thead(attrs, kids) => El("thead", attrs, kids)
            Tr(attrs, kids) => El("tr", attrs, kids)
            Blockquote(attrs, kids) => El("blockquote", attrs, kids)
            Dd(attrs, kids) => El("dd", attrs, kids)
            Div(attrs, kids) => El("div", attrs, kids)
            Dl(attrs, kids) => El("dl", attrs, kids)
            Dt(attrs, kids) => El("dt", attrs, kids)
            Figcaption(attrs, kids) => El("figcaption", attrs, kids)
            Figure(attrs, kids) => El("figure", attrs, kids)
            Li(attrs, kids) => El("li", attrs, kids)
            Menu(attrs, kids) => El("menu", attrs, kids)
            Ol(attrs, kids) => El("ol", attrs, kids)
            P(attrs, kids) => El("p", attrs, kids)
            Pre(attrs, kids) => El("pre", attrs, kids)
            Ul(attrs, kids) => El("ul", attrs, kids)
            Slot(attrs, kids) => El("slot", attrs, kids)
            Template(attrs, kids) => El("template", attrs, kids)
            Area(attrs) => VoidEl("area", attrs)
            Base(attrs) => VoidEl("base", attrs)
            Br(attrs) => VoidEl("br", attrs)
            Col(attrs) => VoidEl("col", attrs)
            Embed(attrs) => VoidEl("embed", attrs)
            Hr(attrs) => VoidEl("hr", attrs)
            Img(attrs) => VoidEl("img", attrs)
            Input(attrs) => VoidEl("input", attrs)
            Link(attrs) => VoidEl("link", attrs)
            Meta(attrs) => VoidEl("meta", attrs)
            Source(attrs) => VoidEl("source", attrs)
            Track(attrs) => VoidEl("track", attrs)
            Wbr(attrs) => VoidEl("wbr", attrs)
            Text(content) => Txt(content)
            DangerousRaw(content) => Danger(content)
            CustomEl(tag_name, attrs, kids) => El(tag_name, attrs, kids)
        }

    ## Render just the node — for fragments.
    render : Html -> Str
    render = |node|
        node.render_help(SafeStr.with_capacity(node.size_hint())).to_str()

    ## Render a complete document, prefixed with `<!DOCTYPE html>`.
    render_doc : Html -> Str
    render_doc = |node|
        node.render_help(SafeStr.with_capacity(15 + node.size_hint()).push_raw("<!DOCTYPE html>")).to_str()

    # -- rendering internals --------------------------------------------------

    ## Size pass: estimated rendered bytes, used to reserve the output
    ## buffer. Text uses a 2x heuristic for escape expansion.
    size_hint : Html -> U64
    size_hint = |node|
        match node.parts() {
            Txt(content) => content.to_utf8().len() * 2
            Danger(content) => content.to_utf8().len()
            VoidEl(tag_name, attrs) => 2 + tag_name.to_utf8().len() + Html.attrs_size(attrs)
            El(tag_name, attrs, kids) => {
                var total = 5 + (2 * tag_name.to_utf8().len()) + Html.attrs_size(attrs)
                var i = 0.U64
                while i < kids.len() {
                    total = total + (kids.get(i) ?? Text("")).size_hint()
                    i = i + 1
                }
                total
            }
        }

    attrs_size : List(Attribute) -> U64
    attrs_size = |attrs| {
        var total = 0.U64
        var i = 0.U64
        while i < attrs.len() {
            total = total
                + (
                    match (attrs.get(i) ?? Disabled).to_pair() {
                        Pair(attr_name, value) => 4 + attr_name.to_utf8().len() + value.to_utf8().len()
                        Bare(attr_name) => 1 + attr_name.to_utf8().len()
                    }
                )
            i = i + 1
        }
        total
    }

    ## Emit pass.
    render_help : Html, SafeStr -> SafeStr
    render_help = |node, buf|
        match node.parts() {
            Txt(content) => buf.push_escaped(content)
            Danger(content) => buf.push_raw(content)
            VoidEl(tag_name, attrs) =>
                Html.push_attrs(buf.push_raw("<").push_raw(tag_name), attrs).push_raw(">")
            El(tag_name, attrs, kids) => {
                var out = Html.push_attrs(buf.push_raw("<").push_raw(tag_name), attrs).push_raw(">")
                var i = 0.U64
                while i < kids.len() {
                    out = (kids.get(i) ?? Text("")).render_help(out)
                    i = i + 1
                }
                out.push_raw("</").push_raw(tag_name).push_raw(">")
            }
        }

    ## Attribute names are trusted (emitted raw); values are escaped.
    ## Bare (boolean) attributes render as the name alone — never `=""`.
    push_attrs : SafeStr, List(Attribute) -> SafeStr
    push_attrs = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match (attrs.get(i) ?? Disabled).to_pair() {
                Pair(attr_name, value) =>
                    out.push_raw(" ").push_raw(attr_name).push_raw("=\"").push_escaped(value).push_raw("\"")
                Bare(attr_name) => out.push_raw(" ").push_raw(attr_name)
            }
            i = i + 1
        }
        out
    }
}

# Ported from Hasnep/roc-html: full document with a custom attribute.
expect {
    doc : Html
    doc = Html([], [Body([], [P([Custom("example", "test")], [Text("Hello, World!")])])])
    doc.render_doc() == "<!DOCTYPE html><html><body><p example=\"test\">Hello, World!</p></body></html>"
}

# Boolean attributes render bare — never `=""`.
expect {
    doc : Html
    doc = Html([], [Body([], [P([Disabled], [Text("Hello, World!")])])])
    doc.render_doc() == "<!DOCTYPE html><html><body><p disabled>Hello, World!</p></body></html>"
}

# Text nodes are escaped.
expect {
    doc : Html
    doc = Html([], [Body([], [P([], [Text("<script>alert('hi')</script>")])])])
    doc.render_doc() == "<!DOCTYPE html><html><body><p>&lt;script&gt;alert(&#39;hi&#39;)&lt;/script&gt;</p></body></html>"
}

# A bare text node, no doctype.
expect Html.render(Text("<script>alert('hi')</script>")) == "&lt;script&gt;alert(&#39;hi&#39;)&lt;/script&gt;"

# Deliberate raw HTML passes through unescaped.
expect Html.render(DangerousRaw("<script>alert('This JavaScript will run')</script>")) == "<script>alert('This JavaScript will run')</script>"

# Attribute values are escaped for the double-quoted context.
expect {
    doc : Html
    doc = A([Href("https://example.com/?q=\"x\"&y=1")], [Text("link")])
    doc.render() == "<a href=\"https://example.com/?q=&quot;x&quot;&amp;y=1\">link</a>"
}

# Void elements: attrs only, no closing tag — children are unrepresentable.
expect Html.render(Br([])) == "<br>"
expect Html.render(Img([Src("cat.png"), Alt("A cat")])) == "<img src=\"cat.png\" alt=\"A cat\">"

# Custom elements render like any non-void element.
expect Html.render(CustomEl("my-widget", [Id("w")], [Text("hi")])) == "<my-widget id=\"w\">hi</my-widget>"

# data-* / aria-* escape hatches.
expect Html.render(Div([Data("count", "3"), Aria("label", "Close")], [])) == "<div data-count=\"3\" aria-label=\"Close\"></div>"

# Empty non-void elements keep an explicit closing tag.
expect Html.render(Div([], [])) == "<div></div>"

# Elements whose names are Roc keywords are fine as variants: Var, Form, For...
expect Html.render(Var([], [Text("x")])) == "<var>x</var>"
expect Html.render(Label([For("id1")], [Text("x")])) == "<label for=\"id1\">x</label>"

# Same name as element and attribute disambiguates by position: Cite/Cite.
expect Html.render(Blockquote([Cite("src")], [Cite([], [Text("q")])])) == "<blockquote cite=\"src\"><cite>q</cite></blockquote>"
