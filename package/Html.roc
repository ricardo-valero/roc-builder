import /Html/Tag exposing [Tag]
import /Html/VoidTag exposing [VoidTag]
import /Html/Attribute exposing [Attribute]
import /Html/SafeStr exposing [SafeStr]

# An HTML document fragment: a value of type `Html` IS html.
#
# Voidness lives in the tree: `Void` carries no children, so `br` with
# children is unrepresentable rather than a render-time special case.
# Text is escaped on render; `Raw` requires the dangerously-named
# constructor. Rendering is two-pass: a size pass reserves the output
# buffer, then an emit pass fills it.
Html := [
    Element(Tag, List(Attribute), List(Html)),
    Void(VoidTag, List(Attribute)),
    Text(Str),
    Raw(Str),
].{
    ## Construct any non-void element; escape hatch alongside the named wrappers.
    el : Tag, List(Attribute), List(Html) -> Html
    el = |tag, attrs, children| Element(tag, attrs, children)

    ## Construct any void element.
    void_el : VoidTag, List(Attribute) -> Html
    void_el = |tag, attrs| Void(tag, attrs)

    ## A text node. Escaped on render — safe for untrusted input.
    text : Str -> Html
    text = |content| Text(content)

    ## Include a string as raw, unescaped HTML.
    ## DO NOT use on user input; use `text` instead.
    dangerously_include_unescaped_html : Str -> Html
    dangerously_include_unescaped_html = |content| Raw(content)

    ## Render to a complete document, prefixed with `<!DOCTYPE html>`.
    render : Html -> Str
    render = |node|
        node.render_help(SafeStr.with_capacity(15 + node.size_hint()).push_raw("<!DOCTYPE html>")).to_str()

    ## Render just the node, no doctype — for fragments.
    render_without_doc_type : Html -> Str
    render_without_doc_type = |node|
        node.render_help(SafeStr.with_capacity(node.size_hint())).to_str()

    # -- rendering internals --------------------------------------------------

    ## Size pass: estimated rendered length in bytes, used to reserve the
    ## output buffer. Text uses a 2x heuristic for escape expansion.
    size_hint : Html -> U64
    size_hint = |node|
        match node {
            Text(content) => content.to_utf8().len() * 2
            Raw(content) => content.to_utf8().len()
            Void(tag, attrs) => 2 + tag.to_str().to_utf8().len() + Html.attrs_size(attrs)
            Element(tag, attrs, children) => {
                var total = 5 + (2 * tag.to_str().to_utf8().len()) + Html.attrs_size(attrs)
                var i = 0.U64
                while i < children.len() {
                    total = total + (children.get(i) ?? Text("")).size_hint()
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
                    match attrs.get(i) ?? Flag(Custom("")) {
                        Valued(attr_name, value) => 4 + attr_name.to_str().to_utf8().len() + value.to_utf8().len()
                        Flag(attr_name) => 1 + attr_name.to_str().to_utf8().len()
                    }
                )
            i = i + 1
        }
        total
    }

    ## Emit pass.
    render_help : Html, SafeStr -> SafeStr
    render_help = |node, buf|
        match node {
            Text(content) => buf.push_escaped(content)
            Raw(content) => buf.push_raw(content)
            Void(tag, attrs) =>
                Html.push_attrs(buf.push_raw("<").push_raw(tag.to_str()), attrs).push_raw(">")
            Element(tag, attrs, children) => {
                tag_name = tag.to_str()
                var out = Html.push_attrs(buf.push_raw("<").push_raw(tag_name), attrs).push_raw(">")
                var i = 0.U64
                while i < children.len() {
                    out = (children.get(i) ?? Text("")).render_help(out)
                    i = i + 1
                }
                out.push_raw("</").push_raw(tag_name).push_raw(">")
            }
        }

    ## Attribute names are trusted (emitted raw); values are escaped.
    ## Flags render as the bare name — never `=""`.
    push_attrs : SafeStr, List(Attribute) -> SafeStr
    push_attrs = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Flag(Custom("")) {
                Valued(attr_name, value) =>
                    out.push_raw(" ").push_raw(attr_name.to_str()).push_raw("=\"").push_escaped(value).push_raw("\"")
                Flag(attr_name) => out.push_raw(" ").push_raw(attr_name.to_str())
            }
            i = i + 1
        }
        out
    }

    # -- per-element wrappers, grouped by MDN category ------------------------
    # `var_` has a trailing underscore because `var` is a Roc keyword.

    # Main root
    html : List(Attribute), List(Html) -> Html
    html = |attrs, children| Element(Tag.Html, attrs, children)

    # Sectioning root
    body : List(Attribute), List(Html) -> Html
    body = |attrs, children| Element(Tag.Body, attrs, children)

    # Content sectioning
    address : List(Attribute), List(Html) -> Html
    address = |attrs, children| Element(Tag.Address, attrs, children)

    article : List(Attribute), List(Html) -> Html
    article = |attrs, children| Element(Tag.Article, attrs, children)

    aside : List(Attribute), List(Html) -> Html
    aside = |attrs, children| Element(Tag.Aside, attrs, children)

    footer : List(Attribute), List(Html) -> Html
    footer = |attrs, children| Element(Tag.Footer, attrs, children)

    h1 : List(Attribute), List(Html) -> Html
    h1 = |attrs, children| Element(Tag.H1, attrs, children)

    h2 : List(Attribute), List(Html) -> Html
    h2 = |attrs, children| Element(Tag.H2, attrs, children)

    h3 : List(Attribute), List(Html) -> Html
    h3 = |attrs, children| Element(Tag.H3, attrs, children)

    h4 : List(Attribute), List(Html) -> Html
    h4 = |attrs, children| Element(Tag.H4, attrs, children)

    h5 : List(Attribute), List(Html) -> Html
    h5 = |attrs, children| Element(Tag.H5, attrs, children)

    h6 : List(Attribute), List(Html) -> Html
    h6 = |attrs, children| Element(Tag.H6, attrs, children)

    header : List(Attribute), List(Html) -> Html
    header = |attrs, children| Element(Tag.Header, attrs, children)

    main : List(Attribute), List(Html) -> Html
    main = |attrs, children| Element(Tag.Main, attrs, children)

    nav : List(Attribute), List(Html) -> Html
    nav = |attrs, children| Element(Tag.Nav, attrs, children)

    section : List(Attribute), List(Html) -> Html
    section = |attrs, children| Element(Tag.Section, attrs, children)

    # Demarcating edits
    del : List(Attribute), List(Html) -> Html
    del = |attrs, children| Element(Tag.Del, attrs, children)

    ins : List(Attribute), List(Html) -> Html
    ins = |attrs, children| Element(Tag.Ins, attrs, children)

    # Document metadata
    head : List(Attribute), List(Html) -> Html
    head = |attrs, children| Element(Tag.Head, attrs, children)

    style : List(Attribute), List(Html) -> Html
    style = |attrs, children| Element(Tag.Style, attrs, children)

    title : List(Attribute), List(Html) -> Html
    title = |attrs, children| Element(Tag.Title, attrs, children)

    base : List(Attribute) -> Html
    base = |attrs| Void(VoidTag.Base, attrs)

    link : List(Attribute) -> Html
    link = |attrs| Void(VoidTag.Link, attrs)

    meta : List(Attribute) -> Html
    meta = |attrs| Void(VoidTag.Meta, attrs)

    # Embedded content
    iframe : List(Attribute), List(Html) -> Html
    iframe = |attrs, children| Element(Tag.Iframe, attrs, children)

    object : List(Attribute), List(Html) -> Html
    object = |attrs, children| Element(Tag.Object, attrs, children)

    picture : List(Attribute), List(Html) -> Html
    picture = |attrs, children| Element(Tag.Picture, attrs, children)

    portal : List(Attribute), List(Html) -> Html
    portal = |attrs, children| Element(Tag.Portal, attrs, children)

    embed : List(Attribute) -> Html
    embed = |attrs| Void(VoidTag.Embed, attrs)

    source : List(Attribute) -> Html
    source = |attrs| Void(VoidTag.Source, attrs)

    # Forms
    button : List(Attribute), List(Html) -> Html
    button = |attrs, children| Element(Tag.Button, attrs, children)

    datalist : List(Attribute), List(Html) -> Html
    datalist = |attrs, children| Element(Tag.Datalist, attrs, children)

    fieldset : List(Attribute), List(Html) -> Html
    fieldset = |attrs, children| Element(Tag.Fieldset, attrs, children)

    form : List(Attribute), List(Html) -> Html
    form = |attrs, children| Element(Tag.Form, attrs, children)

    label : List(Attribute), List(Html) -> Html
    label = |attrs, children| Element(Tag.Label, attrs, children)

    legend : List(Attribute), List(Html) -> Html
    legend = |attrs, children| Element(Tag.Legend, attrs, children)

    meter : List(Attribute), List(Html) -> Html
    meter = |attrs, children| Element(Tag.Meter, attrs, children)

    optgroup : List(Attribute), List(Html) -> Html
    optgroup = |attrs, children| Element(Tag.Optgroup, attrs, children)

    option : List(Attribute), List(Html) -> Html
    option = |attrs, children| Element(Tag.Option, attrs, children)

    output : List(Attribute), List(Html) -> Html
    output = |attrs, children| Element(Tag.Output, attrs, children)

    progress : List(Attribute), List(Html) -> Html
    progress = |attrs, children| Element(Tag.Progress, attrs, children)

    select : List(Attribute), List(Html) -> Html
    select = |attrs, children| Element(Tag.Select, attrs, children)

    textarea : List(Attribute), List(Html) -> Html
    textarea = |attrs, children| Element(Tag.Textarea, attrs, children)

    input : List(Attribute) -> Html
    input = |attrs| Void(VoidTag.Input, attrs)

    # Image and multimedia
    audio : List(Attribute), List(Html) -> Html
    audio = |attrs, children| Element(Tag.Audio, attrs, children)

    map : List(Attribute), List(Html) -> Html
    map = |attrs, children| Element(Tag.Map, attrs, children)

    video : List(Attribute), List(Html) -> Html
    video = |attrs, children| Element(Tag.Video, attrs, children)

    area : List(Attribute) -> Html
    area = |attrs| Void(VoidTag.Area, attrs)

    img : List(Attribute) -> Html
    img = |attrs| Void(VoidTag.Img, attrs)

    track : List(Attribute) -> Html
    track = |attrs| Void(VoidTag.Track, attrs)

    # Inline text semantics
    a : List(Attribute), List(Html) -> Html
    a = |attrs, children| Element(Tag.A, attrs, children)

    abbr : List(Attribute), List(Html) -> Html
    abbr = |attrs, children| Element(Tag.Abbr, attrs, children)

    b : List(Attribute), List(Html) -> Html
    b = |attrs, children| Element(Tag.B, attrs, children)

    bdi : List(Attribute), List(Html) -> Html
    bdi = |attrs, children| Element(Tag.Bdi, attrs, children)

    bdo : List(Attribute), List(Html) -> Html
    bdo = |attrs, children| Element(Tag.Bdo, attrs, children)

    cite : List(Attribute), List(Html) -> Html
    cite = |attrs, children| Element(Tag.Cite, attrs, children)

    code : List(Attribute), List(Html) -> Html
    code = |attrs, children| Element(Tag.Code, attrs, children)

    data : List(Attribute), List(Html) -> Html
    data = |attrs, children| Element(Tag.Data, attrs, children)

    dfn : List(Attribute), List(Html) -> Html
    dfn = |attrs, children| Element(Tag.Dfn, attrs, children)

    em : List(Attribute), List(Html) -> Html
    em = |attrs, children| Element(Tag.Em, attrs, children)

    i : List(Attribute), List(Html) -> Html
    i = |attrs, children| Element(Tag.I, attrs, children)

    kbd : List(Attribute), List(Html) -> Html
    kbd = |attrs, children| Element(Tag.Kbd, attrs, children)

    mark : List(Attribute), List(Html) -> Html
    mark = |attrs, children| Element(Tag.Mark, attrs, children)

    q : List(Attribute), List(Html) -> Html
    q = |attrs, children| Element(Tag.Q, attrs, children)

    rp : List(Attribute), List(Html) -> Html
    rp = |attrs, children| Element(Tag.Rp, attrs, children)

    rt : List(Attribute), List(Html) -> Html
    rt = |attrs, children| Element(Tag.Rt, attrs, children)

    ruby : List(Attribute), List(Html) -> Html
    ruby = |attrs, children| Element(Tag.Ruby, attrs, children)

    s : List(Attribute), List(Html) -> Html
    s = |attrs, children| Element(Tag.S, attrs, children)

    samp : List(Attribute), List(Html) -> Html
    samp = |attrs, children| Element(Tag.Samp, attrs, children)

    small : List(Attribute), List(Html) -> Html
    small = |attrs, children| Element(Tag.Small, attrs, children)

    span : List(Attribute), List(Html) -> Html
    span = |attrs, children| Element(Tag.Span, attrs, children)

    strong : List(Attribute), List(Html) -> Html
    strong = |attrs, children| Element(Tag.Strong, attrs, children)

    sub : List(Attribute), List(Html) -> Html
    sub = |attrs, children| Element(Tag.Sub, attrs, children)

    sup : List(Attribute), List(Html) -> Html
    sup = |attrs, children| Element(Tag.Sup, attrs, children)

    time : List(Attribute), List(Html) -> Html
    time = |attrs, children| Element(Tag.Time, attrs, children)

    u : List(Attribute), List(Html) -> Html
    u = |attrs, children| Element(Tag.U, attrs, children)

    var_ : List(Attribute), List(Html) -> Html
    var_ = |attrs, children| Element(Tag.Var, attrs, children)

    br : List(Attribute) -> Html
    br = |attrs| Void(VoidTag.Br, attrs)

    wbr : List(Attribute) -> Html
    wbr = |attrs| Void(VoidTag.Wbr, attrs)

    # Interactive elements
    details : List(Attribute), List(Html) -> Html
    details = |attrs, children| Element(Tag.Details, attrs, children)

    dialog : List(Attribute), List(Html) -> Html
    dialog = |attrs, children| Element(Tag.Dialog, attrs, children)

    summary : List(Attribute), List(Html) -> Html
    summary = |attrs, children| Element(Tag.Summary, attrs, children)

    # SVG and MathML
    math : List(Attribute), List(Html) -> Html
    math = |attrs, children| Element(Tag.Math, attrs, children)

    svg : List(Attribute), List(Html) -> Html
    svg = |attrs, children| Element(Tag.Svg, attrs, children)

    # Scripting
    canvas : List(Attribute), List(Html) -> Html
    canvas = |attrs, children| Element(Tag.Canvas, attrs, children)

    noscript : List(Attribute), List(Html) -> Html
    noscript = |attrs, children| Element(Tag.Noscript, attrs, children)

    script : List(Attribute), List(Html) -> Html
    script = |attrs, children| Element(Tag.Script, attrs, children)

    # Table content
    caption : List(Attribute), List(Html) -> Html
    caption = |attrs, children| Element(Tag.Caption, attrs, children)

    colgroup : List(Attribute), List(Html) -> Html
    colgroup = |attrs, children| Element(Tag.Colgroup, attrs, children)

    table : List(Attribute), List(Html) -> Html
    table = |attrs, children| Element(Tag.Table, attrs, children)

    tbody : List(Attribute), List(Html) -> Html
    tbody = |attrs, children| Element(Tag.Tbody, attrs, children)

    td : List(Attribute), List(Html) -> Html
    td = |attrs, children| Element(Tag.Td, attrs, children)

    tfoot : List(Attribute), List(Html) -> Html
    tfoot = |attrs, children| Element(Tag.Tfoot, attrs, children)

    th : List(Attribute), List(Html) -> Html
    th = |attrs, children| Element(Tag.Th, attrs, children)

    thead : List(Attribute), List(Html) -> Html
    thead = |attrs, children| Element(Tag.Thead, attrs, children)

    tr : List(Attribute), List(Html) -> Html
    tr = |attrs, children| Element(Tag.Tr, attrs, children)

    col : List(Attribute) -> Html
    col = |attrs| Void(VoidTag.Col, attrs)

    # Text content
    blockquote : List(Attribute), List(Html) -> Html
    blockquote = |attrs, children| Element(Tag.Blockquote, attrs, children)

    dd : List(Attribute), List(Html) -> Html
    dd = |attrs, children| Element(Tag.Dd, attrs, children)

    div : List(Attribute), List(Html) -> Html
    div = |attrs, children| Element(Tag.Div, attrs, children)

    dl : List(Attribute), List(Html) -> Html
    dl = |attrs, children| Element(Tag.Dl, attrs, children)

    dt : List(Attribute), List(Html) -> Html
    dt = |attrs, children| Element(Tag.Dt, attrs, children)

    figcaption : List(Attribute), List(Html) -> Html
    figcaption = |attrs, children| Element(Tag.Figcaption, attrs, children)

    figure : List(Attribute), List(Html) -> Html
    figure = |attrs, children| Element(Tag.Figure, attrs, children)

    li : List(Attribute), List(Html) -> Html
    li = |attrs, children| Element(Tag.Li, attrs, children)

    menu : List(Attribute), List(Html) -> Html
    menu = |attrs, children| Element(Tag.Menu, attrs, children)

    ol : List(Attribute), List(Html) -> Html
    ol = |attrs, children| Element(Tag.Ol, attrs, children)

    p : List(Attribute), List(Html) -> Html
    p = |attrs, children| Element(Tag.P, attrs, children)

    pre : List(Attribute), List(Html) -> Html
    pre = |attrs, children| Element(Tag.Pre, attrs, children)

    ul : List(Attribute), List(Html) -> Html
    ul = |attrs, children| Element(Tag.Ul, attrs, children)

    hr : List(Attribute) -> Html
    hr = |attrs| Void(VoidTag.Hr, attrs)

    # Web components
    slot : List(Attribute), List(Html) -> Html
    slot = |attrs, children| Element(Tag.Slot, attrs, children)

    template : List(Attribute), List(Html) -> Html
    template = |attrs, children| Element(Tag.Template, attrs, children)
}

# Ported from Hasnep/roc-html: full document with a custom attribute.
expect {
    doc = Html.html([], [Html.body([], [Html.p([Attribute.custom("example", "test")], [Html.text("Hello, World!")])])])
    Html.render(doc) == "<!DOCTYPE html><html><body><p example=\"test\">Hello, World!</p></body></html>"
}

# Flag attributes render bare — never `=""`.
expect {
    doc = Html.html([], [Html.body([], [Html.p([Attribute.disabled], [Html.text("Hello, World!")])])])
    Html.render(doc) == "<!DOCTYPE html><html><body><p disabled>Hello, World!</p></body></html>"
}

# Ported from Hasnep/roc-html: text nodes are escaped.
expect {
    doc = Html.html([], [Html.body([], [Html.p([Attribute.custom("example", "test")], [Html.text("<script>alert('hi')</script>")])])])
    Html.render(doc) == "<!DOCTYPE html><html><body><p example=\"test\">&lt;script&gt;alert(&#39;hi&#39;)&lt;/script&gt;</p></body></html>"
}

# Ported from Hasnep/roc-html: a bare text node, no doctype.
expect Html.render_without_doc_type(Html.text("<script>alert('hi')</script>")) == "&lt;script&gt;alert(&#39;hi&#39;)&lt;/script&gt;"

# Deliberate raw HTML passes through unescaped.
expect Html.render_without_doc_type(Html.dangerously_include_unescaped_html("<script>alert('This JavaScript will run')</script>")) == "<script>alert('This JavaScript will run')</script>"

# Attribute values are escaped for the double-quoted context.
expect {
    doc = Html.a([Attribute.href("https://example.com/?q=\"x\"&y=1")], [Html.text("link")])
    Html.render_without_doc_type(doc) == "<a href=\"https://example.com/?q=&quot;x&quot;&amp;y=1\">link</a>"
}

# Void elements: attrs only, no closing tag.
expect Html.render_without_doc_type(Html.br([])) == "<br>"
expect Html.render_without_doc_type(Html.img([Attribute.src("cat.png"), Attribute.alt("A cat")])) == "<img src=\"cat.png\" alt=\"A cat\">"

# Custom elements render like any non-void element.
expect Html.render_without_doc_type(Html.el(Custom("my-widget"), [Attribute.id("w")], [Html.text("hi")])) == "<my-widget id=\"w\">hi</my-widget>"

# data-* / aria-* escape hatches.
expect Html.render_without_doc_type(Html.div([Attribute.data("count", "3"), Attribute.aria("label", "Close")], [])) == "<div data-count=\"3\" aria-label=\"Close\"></div>"

# Empty non-void elements keep an explicit closing tag.
expect Html.render_without_doc_type(Html.div([], [])) == "<div></div>"

# var_ wrapper (var is a Roc keyword).
expect Html.render_without_doc_type(Html.var_([], [Html.text("x")])) == "<var>x</var>"
