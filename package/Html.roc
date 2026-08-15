# Hand-curated source. The WHATWG applicability tables ARE this file:
#   - GlobalAttrs below = the global attributes (+ Custom/Data/Aria hatches)
#   - each element variant's set = globals + that element's own attributes
#   - push_global_attr = how every global renders (written once)
#   - each attrs_g* emitter = how one element family's specifics render
# To add a global attribute: extend GlobalAttrs and add one push_global_attr
# arm. To add an element-specific attribute: extend that element's set and
# its emitter. (This file was originally bootstrapped by a generator —
# git log gen/ — now retired in favor of direct curation.)
import /Html/SafeStr exposing [SafeStr]

# The WHATWG global attributes (+ Custom/Data/Aria escape hatches), with an
# extension slot for each element's own attributes: GlobalAttrs([Checked, ...]).
GlobalAttrs(ext) : [
    Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]),
    Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str),
    Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str),
    Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64),
    Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str),
    ..ext,
]

# An HTML document as data: one variant per element, and each element's
# attribute list is scoped per the WHATWG HTML Living Standard — the
# global attributes (plus Custom/Data/Aria escape hatches) and only that
# element's own content attributes. A misplaced attribute (Colspan on
# Input) is a type error. Shared attribute helpers stay expressible with
# an open annotation: `card : List([Class(Str), Id(Str), ..])`.
# Void elements carry no children slot. Text escapes on render; raw HTML
# requires DangerousRaw. CustomEl accepts the full attribute superset
# (unknown elements cannot be validated).
Html := [
    # Main root
    Html(List(GlobalAttrs([])), List(Html)),
    # Sectioning root
    Body(List(GlobalAttrs([])), List(Html)),
    # Content sectioning
    Address(List(GlobalAttrs([])), List(Html)),
    Article(List(GlobalAttrs([])), List(Html)),
    Aside(List(GlobalAttrs([])), List(Html)),
    Footer(List(GlobalAttrs([])), List(Html)),
    H1(List(GlobalAttrs([])), List(Html)),
    H2(List(GlobalAttrs([])), List(Html)),
    H3(List(GlobalAttrs([])), List(Html)),
    H4(List(GlobalAttrs([])), List(Html)),
    H5(List(GlobalAttrs([])), List(Html)),
    H6(List(GlobalAttrs([])), List(Html)),
    Header(List(GlobalAttrs([])), List(Html)),
    Main(List(GlobalAttrs([])), List(Html)),
    Nav(List(GlobalAttrs([])), List(Html)),
    Section(List(GlobalAttrs([])), List(Html)),
    # Demarcating edits
    Del(List(GlobalAttrs([Cite(Str), Datetime(Str)])), List(Html)),
    Ins(List(GlobalAttrs([Cite(Str), Datetime(Str)])), List(Html)),
    # Document metadata
    Head(List(GlobalAttrs([])), List(Html)),
    Style(List(GlobalAttrs([Media(Str)])), List(Html)),
    Title(List(GlobalAttrs([])), List(Html)),
    # Embedded content
    Iframe(List(GlobalAttrs([Allow(Str), Height(U64), Loading([Lazy, Eager]), Name(Str), Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Sandbox(Str), Src(Str), Srcdoc(Str), Width(U64)])), List(Html)),
    Object(List(GlobalAttrs([Form(Str), Height(U64), Name(Str), ObjectData(Str), Type(Str), Width(U64)])), List(Html)),
    Picture(List(GlobalAttrs([])), List(Html)),
    Portal(List(GlobalAttrs([Src(Str)])), List(Html)),
    # Forms
    Button(List(GlobalAttrs([Disabled, Form(Str), Formaction(Str), Formenctype([FormUrlEncoded, MultipartFormData, TextPlain]), Formmethod([Get, Post, Dialog]), Formnovalidate, Formtarget(Str), Name(Str), Type(Str), Value(Str)])), List(Html)),
    Datalist(List(GlobalAttrs([])), List(Html)),
    Fieldset(List(GlobalAttrs([Disabled, Form(Str), Name(Str)])), List(Html)),
    Form(List(GlobalAttrs([AcceptCharset(Str), Action(Str), Autocomplete(Str), Enctype([FormUrlEncoded, MultipartFormData, TextPlain]), Method([Get, Post, Dialog]), Name(Str), Novalidate, Rel(Str), Target(Str)])), List(Html)),
    Label(List(GlobalAttrs([For(Str)])), List(Html)),
    Legend(List(GlobalAttrs([])), List(Html)),
    Meter(List(GlobalAttrs([High(F64), Low(F64), Max(Str), Min(Str), Optimum(F64), Value(Str)])), List(Html)),
    Optgroup(List(GlobalAttrs([Disabled, Label(Str)])), List(Html)),
    Option(List(GlobalAttrs([Disabled, Label(Str), Selected, Value(Str)])), List(Html)),
    Output(List(GlobalAttrs([For(Str), Form(Str), Name(Str)])), List(Html)),
    Progress(List(GlobalAttrs([Max(Str), Value(Str)])), List(Html)),
    Select(List(GlobalAttrs([Autocomplete(Str), Disabled, Form(Str), Multiple, Name(Str), Required, Size(U64)])), List(Html)),
    Textarea(List(GlobalAttrs([Autocomplete(Str), Cols(U64), Dirname(Str), Disabled, Form(Str), Maxlength(U64), Minlength(U64), Name(Str), Placeholder(Str), Readonly, Required, Rows(U64), Wrap([Soft, Hard])])), List(Html)),
    # Image and multimedia
    Audio(List(GlobalAttrs([Autoplay, Controls, Crossorigin([Anonymous, UseCredentials]), Loop, Muted, Preload([None, Metadata, Auto]), Src(Str)])), List(Html)),
    Map(List(GlobalAttrs([Name(Str)])), List(Html)),
    Video(List(GlobalAttrs([Autoplay, Controls, Crossorigin([Anonymous, UseCredentials]), Height(U64), Loop, Muted, Playsinline, Poster(Str), Preload([None, Metadata, Auto]), Src(Str), Width(U64)])), List(Html)),
    # Inline text semantics
    A(List(GlobalAttrs([Download(Str), Href(Str), Hreflang(Str), Ping(Str), Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Rel(Str), Target(Str), Type(Str)])), List(Html)),
    Abbr(List(GlobalAttrs([])), List(Html)),
    B(List(GlobalAttrs([])), List(Html)),
    Bdi(List(GlobalAttrs([])), List(Html)),
    Bdo(List(GlobalAttrs([])), List(Html)),
    Cite(List(GlobalAttrs([])), List(Html)),
    Code(List(GlobalAttrs([])), List(Html)),
    Data(List(GlobalAttrs([Value(Str)])), List(Html)),
    Dfn(List(GlobalAttrs([])), List(Html)),
    Em(List(GlobalAttrs([])), List(Html)),
    I(List(GlobalAttrs([])), List(Html)),
    Kbd(List(GlobalAttrs([])), List(Html)),
    Mark(List(GlobalAttrs([])), List(Html)),
    Q(List(GlobalAttrs([Cite(Str)])), List(Html)),
    Rp(List(GlobalAttrs([])), List(Html)),
    Rt(List(GlobalAttrs([])), List(Html)),
    Ruby(List(GlobalAttrs([])), List(Html)),
    S(List(GlobalAttrs([])), List(Html)),
    Samp(List(GlobalAttrs([])), List(Html)),
    Small(List(GlobalAttrs([])), List(Html)),
    Span(List(GlobalAttrs([])), List(Html)),
    Strong(List(GlobalAttrs([])), List(Html)),
    Sub(List(GlobalAttrs([])), List(Html)),
    Sup(List(GlobalAttrs([])), List(Html)),
    Time(List(GlobalAttrs([Datetime(Str)])), List(Html)),
    U(List(GlobalAttrs([])), List(Html)),
    Var(List(GlobalAttrs([])), List(Html)),
    # Interactive elements
    Details(List(GlobalAttrs([Open])), List(Html)),
    Dialog(List(GlobalAttrs([Open])), List(Html)),
    Summary(List(GlobalAttrs([])), List(Html)),
    # SVG and MathML
    Math(List(GlobalAttrs([])), List(Html)),
    Svg(List(GlobalAttrs([])), List(Html)),
    # Scripting
    Canvas(List(GlobalAttrs([Height(U64), Width(U64)])), List(Html)),
    Noscript(List(GlobalAttrs([])), List(Html)),
    Script(List(GlobalAttrs([Async, Crossorigin([Anonymous, UseCredentials]), Defer, Integrity(Str), Nomodule, Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Src(Str), Type(Str)])), List(Html)),
    # Table content
    Caption(List(GlobalAttrs([])), List(Html)),
    Colgroup(List(GlobalAttrs([Span(U64)])), List(Html)),
    Table(List(GlobalAttrs([])), List(Html)),
    Tbody(List(GlobalAttrs([])), List(Html)),
    Td(List(GlobalAttrs([Colspan(U64), Headers(Str), Rowspan(U64)])), List(Html)),
    Tfoot(List(GlobalAttrs([])), List(Html)),
    Th(List(GlobalAttrs([Abbr(Str), Colspan(U64), Headers(Str), Rowspan(U64), Scope([Row, Col, Rowgroup, Colgroup])])), List(Html)),
    Thead(List(GlobalAttrs([])), List(Html)),
    Tr(List(GlobalAttrs([])), List(Html)),
    # Text content
    Blockquote(List(GlobalAttrs([Cite(Str)])), List(Html)),
    Dd(List(GlobalAttrs([])), List(Html)),
    Div(List(GlobalAttrs([])), List(Html)),
    Dl(List(GlobalAttrs([])), List(Html)),
    Dt(List(GlobalAttrs([])), List(Html)),
    Figcaption(List(GlobalAttrs([])), List(Html)),
    Figure(List(GlobalAttrs([])), List(Html)),
    Li(List(GlobalAttrs([Value(Str)])), List(Html)),
    Menu(List(GlobalAttrs([])), List(Html)),
    Ol(List(GlobalAttrs([Reversed, Start(I64), Type(Str)])), List(Html)),
    P(List(GlobalAttrs([])), List(Html)),
    Pre(List(GlobalAttrs([])), List(Html)),
    Ul(List(GlobalAttrs([])), List(Html)),
    # Web components
    Slot(List(GlobalAttrs([Name(Str)])), List(Html)),
    Template(List(GlobalAttrs([])), List(Html)),
    # Void elements — no children slot, no closing tag
    Area(List(GlobalAttrs([Alt(Str), Coords(Str), Download(Str), Href(Str), Ping(Str), Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Rel(Str), Shape([Rect, Circle, Poly, Default]), Target(Str)]))),
    Base(List(GlobalAttrs([Href(Str), Target(Str)]))),
    Br(List(GlobalAttrs([]))),
    Col(List(GlobalAttrs([Span(U64)]))),
    Embed(List(GlobalAttrs([Height(U64), Src(Str), Type(Str), Width(U64)]))),
    Hr(List(GlobalAttrs([]))),
    Img(List(GlobalAttrs([Alt(Str), Crossorigin([Anonymous, UseCredentials]), Decoding([Sync, Async, Auto]), Height(U64), Ismap, Loading([Lazy, Eager]), Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Sizes(Str), Src(Str), Srcset(Str), Usemap(Str), Width(U64)]))),
    Input(List(GlobalAttrs([Accept(Str), Alt(Str), Autocomplete(Str), Capture([User, Environment]), Checked, Dirname(Str), Disabled, Form(Str), Formaction(Str), Formenctype([FormUrlEncoded, MultipartFormData, TextPlain]), Formmethod([Get, Post, Dialog]), Formnovalidate, Formtarget(Str), Height(U64), List(Str), Max(Str), Maxlength(U64), Min(Str), Minlength(U64), Multiple, Name(Str), Pattern(Str), Placeholder(Str), Readonly, Required, Size(U64), Src(Str), Step(Str), Type(Str), Value(Str), Width(U64)]))),
    Link(List(GlobalAttrs([Crossorigin([Anonymous, UseCredentials]), Disabled, Href(Str), Hreflang(Str), Integrity(Str), Media(Str), Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Rel(Str), Sizes(Str), Type(Str)]))),
    Meta(List(GlobalAttrs([Charset(Str), Content(Str), HttpEquiv(Str), Media(Str), Name(Str)]))),
    Source(List(GlobalAttrs([Height(U64), Media(Str), Sizes(Str), Src(Str), Srcset(Str), Type(Str), Width(U64)]))),
    Track(List(GlobalAttrs([Default, Kind([Subtitles, Captions, Descriptions, Chapters, Metadata]), Label(Str), Src(Str), Srclang(Str)]))),
    Wbr(List(GlobalAttrs([]))),
    # Leaves and escape hatches
    Text(Str),
    DangerousRaw(Str),
    CustomEl(Str, List(GlobalAttrs([Abbr(Str), Accept(Str), AcceptCharset(Str), Action(Str), Allow(Str), Alt(Str), Async, Autocomplete(Str), Autoplay, Capture([User, Environment]), Charset(Str), Checked, Cite(Str), Cols(U64), Colspan(U64), Content(Str), Controls, Coords(Str), Crossorigin([Anonymous, UseCredentials]), Datetime(Str), Decoding([Sync, Async, Auto]), Default, Defer, Dirname(Str), Disabled, Download(Str), Enctype([FormUrlEncoded, MultipartFormData, TextPlain]), For(Str), Form(Str), Formaction(Str), Formenctype([FormUrlEncoded, MultipartFormData, TextPlain]), Formmethod([Get, Post, Dialog]), Formnovalidate, Formtarget(Str), Headers(Str), Height(U64), High(F64), Href(Str), Hreflang(Str), HttpEquiv(Str), Integrity(Str), Ismap, Kind([Subtitles, Captions, Descriptions, Chapters, Metadata]), Label(Str), List(Str), Loading([Lazy, Eager]), Loop, Low(F64), Max(Str), Maxlength(U64), Media(Str), Method([Get, Post, Dialog]), Min(Str), Minlength(U64), Multiple, Muted, Name(Str), Nomodule, Novalidate, ObjectData(Str), Open, Optimum(F64), Pattern(Str), Ping(Str), Placeholder(Str), Playsinline, Poster(Str), Preload([None, Metadata, Auto]), Readonly, Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Rel(Str), Required, Reversed, Rows(U64), Rowspan(U64), Sandbox(Str), Scope([Row, Col, Rowgroup, Colgroup]), Selected, Shape([Rect, Circle, Poly, Default]), Size(U64), Sizes(Str), Span(U64), Src(Str), Srcdoc(Str), Srclang(Str), Srcset(Str), Start(I64), Step(Str), Target(Str), Type(Str), Usemap(Str), Value(Str), Width(U64), Wrap([Soft, Hard])])), List(Html)),
].{
    ## Render just the node — for fragments.
    render : Html -> Str
    render = |node|
        node.render_help(SafeStr.with_capacity(node.size_hint())).to_str()

    ## Render a complete document, prefixed with `<!DOCTYPE html>`.
    render_doc : Html -> Str
    render_doc = |node|
        node.render_help(SafeStr.with_capacity(15 + node.size_hint()).push_raw("<!DOCTYPE html>")).to_str()

    ## Join multiple class names into one Class attribute (usable on any element).
    classes : List(Str) -> [Class(Str), ..]
    classes = |names| Class(Str.join_with(names, " "))

    # -- rendering internals (generated) --------------------------------------

    ## Size pass: estimate the rendered byte length of this subtree so
    ## `render` can allocate the output buffer ONCE (`with_capacity`)
    ## instead of growing it repeatedly while emitting. Purely an
    ## optimization hint: too low just means the buffer reallocates
    ## (amortized), too high wastes a few bytes — correctness never
    ## depends on it. Tag framing is exact (punctuation + tag names);
    ## attributes are a flat 32-byte guess (exact accounting would need
    ## per-attribute matching just to improve a hint); text reserves 2x
    ## for escape expansion (worst case is 6x, typical is 1x).
    ## TODO: validate the estimate against reality some day — compare
    ## size_hint() with rendered.to_utf8().len() across the test docs to
    ## check whether 32/attr and 2x text are earning their keep.
    size_hint : Html -> U64
    size_hint = |node|
        match node {
            Html(attrs, kids) => Html.el_size(4, attrs.len(), kids)
            Body(attrs, kids) => Html.el_size(4, attrs.len(), kids)
            Address(attrs, kids) => Html.el_size(7, attrs.len(), kids)
            Article(attrs, kids) => Html.el_size(7, attrs.len(), kids)
            Aside(attrs, kids) => Html.el_size(5, attrs.len(), kids)
            Footer(attrs, kids) => Html.el_size(6, attrs.len(), kids)
            H1(attrs, kids) => Html.el_size(2, attrs.len(), kids)
            H2(attrs, kids) => Html.el_size(2, attrs.len(), kids)
            H3(attrs, kids) => Html.el_size(2, attrs.len(), kids)
            H4(attrs, kids) => Html.el_size(2, attrs.len(), kids)
            H5(attrs, kids) => Html.el_size(2, attrs.len(), kids)
            H6(attrs, kids) => Html.el_size(2, attrs.len(), kids)
            Header(attrs, kids) => Html.el_size(6, attrs.len(), kids)
            Main(attrs, kids) => Html.el_size(4, attrs.len(), kids)
            Nav(attrs, kids) => Html.el_size(3, attrs.len(), kids)
            Section(attrs, kids) => Html.el_size(7, attrs.len(), kids)
            Del(attrs, kids) => Html.el_size(3, attrs.len(), kids)
            Ins(attrs, kids) => Html.el_size(3, attrs.len(), kids)
            Head(attrs, kids) => Html.el_size(4, attrs.len(), kids)
            Style(attrs, kids) => Html.el_size(5, attrs.len(), kids)
            Title(attrs, kids) => Html.el_size(5, attrs.len(), kids)
            Iframe(attrs, kids) => Html.el_size(6, attrs.len(), kids)
            Object(attrs, kids) => Html.el_size(6, attrs.len(), kids)
            Picture(attrs, kids) => Html.el_size(7, attrs.len(), kids)
            Portal(attrs, kids) => Html.el_size(6, attrs.len(), kids)
            Button(attrs, kids) => Html.el_size(6, attrs.len(), kids)
            Datalist(attrs, kids) => Html.el_size(8, attrs.len(), kids)
            Fieldset(attrs, kids) => Html.el_size(8, attrs.len(), kids)
            Form(attrs, kids) => Html.el_size(4, attrs.len(), kids)
            Label(attrs, kids) => Html.el_size(5, attrs.len(), kids)
            Legend(attrs, kids) => Html.el_size(6, attrs.len(), kids)
            Meter(attrs, kids) => Html.el_size(5, attrs.len(), kids)
            Optgroup(attrs, kids) => Html.el_size(8, attrs.len(), kids)
            Option(attrs, kids) => Html.el_size(6, attrs.len(), kids)
            Output(attrs, kids) => Html.el_size(6, attrs.len(), kids)
            Progress(attrs, kids) => Html.el_size(8, attrs.len(), kids)
            Select(attrs, kids) => Html.el_size(6, attrs.len(), kids)
            Textarea(attrs, kids) => Html.el_size(8, attrs.len(), kids)
            Audio(attrs, kids) => Html.el_size(5, attrs.len(), kids)
            Map(attrs, kids) => Html.el_size(3, attrs.len(), kids)
            Video(attrs, kids) => Html.el_size(5, attrs.len(), kids)
            A(attrs, kids) => Html.el_size(1, attrs.len(), kids)
            Abbr(attrs, kids) => Html.el_size(4, attrs.len(), kids)
            B(attrs, kids) => Html.el_size(1, attrs.len(), kids)
            Bdi(attrs, kids) => Html.el_size(3, attrs.len(), kids)
            Bdo(attrs, kids) => Html.el_size(3, attrs.len(), kids)
            Cite(attrs, kids) => Html.el_size(4, attrs.len(), kids)
            Code(attrs, kids) => Html.el_size(4, attrs.len(), kids)
            Data(attrs, kids) => Html.el_size(4, attrs.len(), kids)
            Dfn(attrs, kids) => Html.el_size(3, attrs.len(), kids)
            Em(attrs, kids) => Html.el_size(2, attrs.len(), kids)
            I(attrs, kids) => Html.el_size(1, attrs.len(), kids)
            Kbd(attrs, kids) => Html.el_size(3, attrs.len(), kids)
            Mark(attrs, kids) => Html.el_size(4, attrs.len(), kids)
            Q(attrs, kids) => Html.el_size(1, attrs.len(), kids)
            Rp(attrs, kids) => Html.el_size(2, attrs.len(), kids)
            Rt(attrs, kids) => Html.el_size(2, attrs.len(), kids)
            Ruby(attrs, kids) => Html.el_size(4, attrs.len(), kids)
            S(attrs, kids) => Html.el_size(1, attrs.len(), kids)
            Samp(attrs, kids) => Html.el_size(4, attrs.len(), kids)
            Small(attrs, kids) => Html.el_size(5, attrs.len(), kids)
            Span(attrs, kids) => Html.el_size(4, attrs.len(), kids)
            Strong(attrs, kids) => Html.el_size(6, attrs.len(), kids)
            Sub(attrs, kids) => Html.el_size(3, attrs.len(), kids)
            Sup(attrs, kids) => Html.el_size(3, attrs.len(), kids)
            Time(attrs, kids) => Html.el_size(4, attrs.len(), kids)
            U(attrs, kids) => Html.el_size(1, attrs.len(), kids)
            Var(attrs, kids) => Html.el_size(3, attrs.len(), kids)
            Details(attrs, kids) => Html.el_size(7, attrs.len(), kids)
            Dialog(attrs, kids) => Html.el_size(6, attrs.len(), kids)
            Summary(attrs, kids) => Html.el_size(7, attrs.len(), kids)
            Math(attrs, kids) => Html.el_size(4, attrs.len(), kids)
            Svg(attrs, kids) => Html.el_size(3, attrs.len(), kids)
            Canvas(attrs, kids) => Html.el_size(6, attrs.len(), kids)
            Noscript(attrs, kids) => Html.el_size(8, attrs.len(), kids)
            Script(attrs, kids) => Html.el_size(6, attrs.len(), kids)
            Caption(attrs, kids) => Html.el_size(7, attrs.len(), kids)
            Colgroup(attrs, kids) => Html.el_size(8, attrs.len(), kids)
            Table(attrs, kids) => Html.el_size(5, attrs.len(), kids)
            Tbody(attrs, kids) => Html.el_size(5, attrs.len(), kids)
            Td(attrs, kids) => Html.el_size(2, attrs.len(), kids)
            Tfoot(attrs, kids) => Html.el_size(5, attrs.len(), kids)
            Th(attrs, kids) => Html.el_size(2, attrs.len(), kids)
            Thead(attrs, kids) => Html.el_size(5, attrs.len(), kids)
            Tr(attrs, kids) => Html.el_size(2, attrs.len(), kids)
            Blockquote(attrs, kids) => Html.el_size(10, attrs.len(), kids)
            Dd(attrs, kids) => Html.el_size(2, attrs.len(), kids)
            Div(attrs, kids) => Html.el_size(3, attrs.len(), kids)
            Dl(attrs, kids) => Html.el_size(2, attrs.len(), kids)
            Dt(attrs, kids) => Html.el_size(2, attrs.len(), kids)
            Figcaption(attrs, kids) => Html.el_size(10, attrs.len(), kids)
            Figure(attrs, kids) => Html.el_size(6, attrs.len(), kids)
            Li(attrs, kids) => Html.el_size(2, attrs.len(), kids)
            Menu(attrs, kids) => Html.el_size(4, attrs.len(), kids)
            Ol(attrs, kids) => Html.el_size(2, attrs.len(), kids)
            P(attrs, kids) => Html.el_size(1, attrs.len(), kids)
            Pre(attrs, kids) => Html.el_size(3, attrs.len(), kids)
            Ul(attrs, kids) => Html.el_size(2, attrs.len(), kids)
            Slot(attrs, kids) => Html.el_size(4, attrs.len(), kids)
            Template(attrs, kids) => Html.el_size(8, attrs.len(), kids)
            Area(attrs) => Html.void_size(4, attrs.len())
            Base(attrs) => Html.void_size(4, attrs.len())
            Br(attrs) => Html.void_size(2, attrs.len())
            Col(attrs) => Html.void_size(3, attrs.len())
            Embed(attrs) => Html.void_size(5, attrs.len())
            Hr(attrs) => Html.void_size(2, attrs.len())
            Img(attrs) => Html.void_size(3, attrs.len())
            Input(attrs) => Html.void_size(5, attrs.len())
            Link(attrs) => Html.void_size(4, attrs.len())
            Meta(attrs) => Html.void_size(4, attrs.len())
            Source(attrs) => Html.void_size(6, attrs.len())
            Track(attrs) => Html.void_size(5, attrs.len())
            Wbr(attrs) => Html.void_size(3, attrs.len())
            Text(content) => content.to_utf8().len() * 2
            DangerousRaw(content) => content.to_utf8().len()
            CustomEl(tag, attrs, kids) => Html.el_size(tag.to_utf8().len(), attrs.len(), kids)
        }

    ## `<tag>` + `</tag>` framing (5 punctuation chars, tag name twice)
    ## + 32 bytes per attribute + the children's own estimates.
    el_size : U64, U64, List(Html) -> U64
    el_size = |tag_len, n_attrs, kids| 5 + 2 * tag_len + n_attrs * 32 + Html.kids_size(kids)

    ## `<tag>` only (2 punctuation chars) — void elements have no closing tag.
    void_size : U64, U64 -> U64
    void_size = |tag_len, n_attrs| 2 + tag_len + n_attrs * 32

    kids_size : List(Html) -> U64
    kids_size = |kids| {
        var total = 0.U64
        var i = 0.U64
        while i < kids.len() {
            total = total + (kids.get(i) ?? Text("")).size_hint()
            i = i + 1
        }
        total
    }

    ## Emit pass.
    render_help : Html, SafeStr -> SafeStr
    render_help = |node, buf|
        match node {
            Html(attrs, kids) => Html.emit_el(buf, "html", attrs, kids, Html.push_global_attrs)
            Body(attrs, kids) => Html.emit_el(buf, "body", attrs, kids, Html.push_global_attrs)
            Address(attrs, kids) => Html.emit_el(buf, "address", attrs, kids, Html.push_global_attrs)
            Article(attrs, kids) => Html.emit_el(buf, "article", attrs, kids, Html.push_global_attrs)
            Aside(attrs, kids) => Html.emit_el(buf, "aside", attrs, kids, Html.push_global_attrs)
            Footer(attrs, kids) => Html.emit_el(buf, "footer", attrs, kids, Html.push_global_attrs)
            H1(attrs, kids) => Html.emit_el(buf, "h1", attrs, kids, Html.push_global_attrs)
            H2(attrs, kids) => Html.emit_el(buf, "h2", attrs, kids, Html.push_global_attrs)
            H3(attrs, kids) => Html.emit_el(buf, "h3", attrs, kids, Html.push_global_attrs)
            H4(attrs, kids) => Html.emit_el(buf, "h4", attrs, kids, Html.push_global_attrs)
            H5(attrs, kids) => Html.emit_el(buf, "h5", attrs, kids, Html.push_global_attrs)
            H6(attrs, kids) => Html.emit_el(buf, "h6", attrs, kids, Html.push_global_attrs)
            Header(attrs, kids) => Html.emit_el(buf, "header", attrs, kids, Html.push_global_attrs)
            Main(attrs, kids) => Html.emit_el(buf, "main", attrs, kids, Html.push_global_attrs)
            Nav(attrs, kids) => Html.emit_el(buf, "nav", attrs, kids, Html.push_global_attrs)
            Section(attrs, kids) => Html.emit_el(buf, "section", attrs, kids, Html.push_global_attrs)
            Del(attrs, kids) => Html.emit_el(buf, "del", attrs, kids, Html.attrs_g1)
            Ins(attrs, kids) => Html.emit_el(buf, "ins", attrs, kids, Html.attrs_g1)
            Head(attrs, kids) => Html.emit_el(buf, "head", attrs, kids, Html.push_global_attrs)
            Style(attrs, kids) => Html.emit_el(buf, "style", attrs, kids, Html.attrs_g2)
            Title(attrs, kids) => Html.emit_el(buf, "title", attrs, kids, Html.push_global_attrs)
            Iframe(attrs, kids) => Html.emit_el(buf, "iframe", attrs, kids, Html.attrs_g3)
            Object(attrs, kids) => Html.emit_el(buf, "object", attrs, kids, Html.attrs_g4)
            Picture(attrs, kids) => Html.emit_el(buf, "picture", attrs, kids, Html.push_global_attrs)
            Portal(attrs, kids) => Html.emit_el(buf, "portal", attrs, kids, Html.attrs_g5)
            Button(attrs, kids) => Html.emit_el(buf, "button", attrs, kids, Html.attrs_g6)
            Datalist(attrs, kids) => Html.emit_el(buf, "datalist", attrs, kids, Html.push_global_attrs)
            Fieldset(attrs, kids) => Html.emit_el(buf, "fieldset", attrs, kids, Html.attrs_g7)
            Form(attrs, kids) => Html.emit_el(buf, "form", attrs, kids, Html.attrs_g8)
            Label(attrs, kids) => Html.emit_el(buf, "label", attrs, kids, Html.attrs_g9)
            Legend(attrs, kids) => Html.emit_el(buf, "legend", attrs, kids, Html.push_global_attrs)
            Meter(attrs, kids) => Html.emit_el(buf, "meter", attrs, kids, Html.attrs_g10)
            Optgroup(attrs, kids) => Html.emit_el(buf, "optgroup", attrs, kids, Html.attrs_g11)
            Option(attrs, kids) => Html.emit_el(buf, "option", attrs, kids, Html.attrs_g12)
            Output(attrs, kids) => Html.emit_el(buf, "output", attrs, kids, Html.attrs_g13)
            Progress(attrs, kids) => Html.emit_el(buf, "progress", attrs, kids, Html.attrs_g14)
            Select(attrs, kids) => Html.emit_el(buf, "select", attrs, kids, Html.attrs_g15)
            Textarea(attrs, kids) => Html.emit_el(buf, "textarea", attrs, kids, Html.attrs_g16)
            Audio(attrs, kids) => Html.emit_el(buf, "audio", attrs, kids, Html.attrs_g17)
            Map(attrs, kids) => Html.emit_el(buf, "map", attrs, kids, Html.attrs_g18)
            Video(attrs, kids) => Html.emit_el(buf, "video", attrs, kids, Html.attrs_g19)
            A(attrs, kids) => Html.emit_el(buf, "a", attrs, kids, Html.attrs_g20)
            Abbr(attrs, kids) => Html.emit_el(buf, "abbr", attrs, kids, Html.push_global_attrs)
            B(attrs, kids) => Html.emit_el(buf, "b", attrs, kids, Html.push_global_attrs)
            Bdi(attrs, kids) => Html.emit_el(buf, "bdi", attrs, kids, Html.push_global_attrs)
            Bdo(attrs, kids) => Html.emit_el(buf, "bdo", attrs, kids, Html.push_global_attrs)
            Cite(attrs, kids) => Html.emit_el(buf, "cite", attrs, kids, Html.push_global_attrs)
            Code(attrs, kids) => Html.emit_el(buf, "code", attrs, kids, Html.push_global_attrs)
            Data(attrs, kids) => Html.emit_el(buf, "data", attrs, kids, Html.attrs_g21)
            Dfn(attrs, kids) => Html.emit_el(buf, "dfn", attrs, kids, Html.push_global_attrs)
            Em(attrs, kids) => Html.emit_el(buf, "em", attrs, kids, Html.push_global_attrs)
            I(attrs, kids) => Html.emit_el(buf, "i", attrs, kids, Html.push_global_attrs)
            Kbd(attrs, kids) => Html.emit_el(buf, "kbd", attrs, kids, Html.push_global_attrs)
            Mark(attrs, kids) => Html.emit_el(buf, "mark", attrs, kids, Html.push_global_attrs)
            Q(attrs, kids) => Html.emit_el(buf, "q", attrs, kids, Html.attrs_g22)
            Rp(attrs, kids) => Html.emit_el(buf, "rp", attrs, kids, Html.push_global_attrs)
            Rt(attrs, kids) => Html.emit_el(buf, "rt", attrs, kids, Html.push_global_attrs)
            Ruby(attrs, kids) => Html.emit_el(buf, "ruby", attrs, kids, Html.push_global_attrs)
            S(attrs, kids) => Html.emit_el(buf, "s", attrs, kids, Html.push_global_attrs)
            Samp(attrs, kids) => Html.emit_el(buf, "samp", attrs, kids, Html.push_global_attrs)
            Small(attrs, kids) => Html.emit_el(buf, "small", attrs, kids, Html.push_global_attrs)
            Span(attrs, kids) => Html.emit_el(buf, "span", attrs, kids, Html.push_global_attrs)
            Strong(attrs, kids) => Html.emit_el(buf, "strong", attrs, kids, Html.push_global_attrs)
            Sub(attrs, kids) => Html.emit_el(buf, "sub", attrs, kids, Html.push_global_attrs)
            Sup(attrs, kids) => Html.emit_el(buf, "sup", attrs, kids, Html.push_global_attrs)
            Time(attrs, kids) => Html.emit_el(buf, "time", attrs, kids, Html.attrs_g23)
            U(attrs, kids) => Html.emit_el(buf, "u", attrs, kids, Html.push_global_attrs)
            Var(attrs, kids) => Html.emit_el(buf, "var", attrs, kids, Html.push_global_attrs)
            Details(attrs, kids) => Html.emit_el(buf, "details", attrs, kids, Html.attrs_g24)
            Dialog(attrs, kids) => Html.emit_el(buf, "dialog", attrs, kids, Html.attrs_g24)
            Summary(attrs, kids) => Html.emit_el(buf, "summary", attrs, kids, Html.push_global_attrs)
            Math(attrs, kids) => Html.emit_el(buf, "math", attrs, kids, Html.push_global_attrs)
            Svg(attrs, kids) => Html.emit_el(buf, "svg", attrs, kids, Html.push_global_attrs)
            Canvas(attrs, kids) => Html.emit_el(buf, "canvas", attrs, kids, Html.attrs_g25)
            Noscript(attrs, kids) => Html.emit_el(buf, "noscript", attrs, kids, Html.push_global_attrs)
            Script(attrs, kids) => Html.emit_el(buf, "script", attrs, kids, Html.attrs_g26)
            Caption(attrs, kids) => Html.emit_el(buf, "caption", attrs, kids, Html.push_global_attrs)
            Colgroup(attrs, kids) => Html.emit_el(buf, "colgroup", attrs, kids, Html.attrs_g27)
            Table(attrs, kids) => Html.emit_el(buf, "table", attrs, kids, Html.push_global_attrs)
            Tbody(attrs, kids) => Html.emit_el(buf, "tbody", attrs, kids, Html.push_global_attrs)
            Td(attrs, kids) => Html.emit_el(buf, "td", attrs, kids, Html.attrs_g28)
            Tfoot(attrs, kids) => Html.emit_el(buf, "tfoot", attrs, kids, Html.push_global_attrs)
            Th(attrs, kids) => Html.emit_el(buf, "th", attrs, kids, Html.attrs_g29)
            Thead(attrs, kids) => Html.emit_el(buf, "thead", attrs, kids, Html.push_global_attrs)
            Tr(attrs, kids) => Html.emit_el(buf, "tr", attrs, kids, Html.push_global_attrs)
            Blockquote(attrs, kids) => Html.emit_el(buf, "blockquote", attrs, kids, Html.attrs_g22)
            Dd(attrs, kids) => Html.emit_el(buf, "dd", attrs, kids, Html.push_global_attrs)
            Div(attrs, kids) => Html.emit_el(buf, "div", attrs, kids, Html.push_global_attrs)
            Dl(attrs, kids) => Html.emit_el(buf, "dl", attrs, kids, Html.push_global_attrs)
            Dt(attrs, kids) => Html.emit_el(buf, "dt", attrs, kids, Html.push_global_attrs)
            Figcaption(attrs, kids) => Html.emit_el(buf, "figcaption", attrs, kids, Html.push_global_attrs)
            Figure(attrs, kids) => Html.emit_el(buf, "figure", attrs, kids, Html.push_global_attrs)
            Li(attrs, kids) => Html.emit_el(buf, "li", attrs, kids, Html.attrs_g21)
            Menu(attrs, kids) => Html.emit_el(buf, "menu", attrs, kids, Html.push_global_attrs)
            Ol(attrs, kids) => Html.emit_el(buf, "ol", attrs, kids, Html.attrs_g30)
            P(attrs, kids) => Html.emit_el(buf, "p", attrs, kids, Html.push_global_attrs)
            Pre(attrs, kids) => Html.emit_el(buf, "pre", attrs, kids, Html.push_global_attrs)
            Ul(attrs, kids) => Html.emit_el(buf, "ul", attrs, kids, Html.push_global_attrs)
            Slot(attrs, kids) => Html.emit_el(buf, "slot", attrs, kids, Html.attrs_g18)
            Template(attrs, kids) => Html.emit_el(buf, "template", attrs, kids, Html.push_global_attrs)
            Area(attrs) => Html.emit_void(buf, "area", attrs, Html.attrs_g31)
            Base(attrs) => Html.emit_void(buf, "base", attrs, Html.attrs_g32)
            Br(attrs) => Html.emit_void(buf, "br", attrs, Html.push_global_attrs)
            Col(attrs) => Html.emit_void(buf, "col", attrs, Html.attrs_g27)
            Embed(attrs) => Html.emit_void(buf, "embed", attrs, Html.attrs_g33)
            Hr(attrs) => Html.emit_void(buf, "hr", attrs, Html.push_global_attrs)
            Img(attrs) => Html.emit_void(buf, "img", attrs, Html.attrs_g34)
            Input(attrs) => Html.emit_void(buf, "input", attrs, Html.attrs_g35)
            Link(attrs) => Html.emit_void(buf, "link", attrs, Html.attrs_g36)
            Meta(attrs) => Html.emit_void(buf, "meta", attrs, Html.attrs_g37)
            Source(attrs) => Html.emit_void(buf, "source", attrs, Html.attrs_g38)
            Track(attrs) => Html.emit_void(buf, "track", attrs, Html.attrs_g39)
            Wbr(attrs) => Html.emit_void(buf, "wbr", attrs, Html.push_global_attrs)
            Text(content) => buf.push_escaped(content)
            DangerousRaw(content) => buf.push_raw(content)
            CustomEl(tag, attrs, kids) => Html.emit_el(buf, tag, attrs, kids, Html.attrs_g40)
        }

    ## Emit one normal element: open tag, attributes (via the element's
    ## emitter, passed as a function), children, closing tag. Polymorphic
    ## over the element's attribute-set type.
    emit_el : SafeStr, Str, List(a), List(Html), (SafeStr, List(a) -> SafeStr) -> SafeStr
    emit_el = |buf, tag, attrs, kids, push_attrs|
        Html.close_el(push_attrs(buf.push_raw("<").push_raw(tag), attrs), tag, kids)

    ## Emit one void element: open tag, attributes, `>` — no children slot,
    ## no closing tag.
    emit_void : SafeStr, Str, List(a), (SafeStr, List(a) -> SafeStr) -> SafeStr
    emit_void = |buf, tag, attrs, push_attrs|
        push_attrs(buf.push_raw("<").push_raw(tag), attrs).push_raw(">")

    close_el : SafeStr, Str, List(Html) -> SafeStr
    close_el = |buf, tag, kids| {
        var out = buf.push_raw(">")
        var i = 0.U64
        while i < kids.len() {
            out = (kids.get(i) ?? Text("")).render_help(out)
            i = i + 1
        }
        out.push_raw("</").push_raw(tag).push_raw(">")
    }

    ## The global attributes + Custom/Data/Aria, written ONCE. The open
    ## tail absorbs element-specific attrs, which each element's emitter
    ## handles BEFORE delegating here — the catch-all is unreachable via
    ## that path. Internal: do not call with a non-global attribute.
    ## Attribute NAMES are trusted (emitted raw); VALUES are escaped.
    push_global_attr : SafeStr, GlobalAttrs([..]) -> SafeStr
    push_global_attr = |out, attr|
        match attr {
            Accesskey(v) => out.push_raw(" accesskey=\"").push_escaped(v).push_raw("\"")
            Autocapitalize(v) => {
                word = match v {
                    Off => "off"
                    On => "on"
                    None => "none"
                    Sentences => "sentences"
                    Words => "words"
                    Characters => "characters"
                }
                out.push_raw(" autocapitalize=\"").push_raw(word).push_raw("\"")
            }
            Autofocus => out.push_raw(" autofocus")
            Class(v) => out.push_raw(" class=\"").push_escaped(v).push_raw("\"")
            Contenteditable(v) => {
                word = match v {
                    True => "true"
                    False => "false"
                    PlaintextOnly => "plaintext-only"
                }
                out.push_raw(" contenteditable=\"").push_raw(word).push_raw("\"")
            }
            Dir(v) => {
                word = match v {
                    Ltr => "ltr"
                    Rtl => "rtl"
                    Auto => "auto"
                }
                out.push_raw(" dir=\"").push_raw(word).push_raw("\"")
            }
            Draggable(v) => {
                word = match v {
                    True => "true"
                    False => "false"
                }
                out.push_raw(" draggable=\"").push_raw(word).push_raw("\"")
            }
            Enterkeyhint(v) => {
                word = match v {
                    Enter => "enter"
                    Done => "done"
                    Go => "go"
                    Next => "next"
                    Previous => "previous"
                    Search => "search"
                    Send => "send"
                }
                out.push_raw(" enterkeyhint=\"").push_raw(word).push_raw("\"")
            }
            Hidden => out.push_raw(" hidden")
            Id(v) => out.push_raw(" id=\"").push_escaped(v).push_raw("\"")
            Inert => out.push_raw(" inert")
            Inputmode(v) => {
                word = match v {
                    None => "none"
                    Text => "text"
                    Decimal => "decimal"
                    Numeric => "numeric"
                    Tel => "tel"
                    Search => "search"
                    Email => "email"
                    Url => "url"
                }
                out.push_raw(" inputmode=\"").push_raw(word).push_raw("\"")
            }
            Itemprop(v) => out.push_raw(" itemprop=\"").push_escaped(v).push_raw("\"")
            Itemscope => out.push_raw(" itemscope")
            Lang(v) => out.push_raw(" lang=\"").push_escaped(v).push_raw("\"")
            Role(v) => out.push_raw(" role=\"").push_escaped(v).push_raw("\"")
            Slot(v) => out.push_raw(" slot=\"").push_escaped(v).push_raw("\"")
            Spellcheck(v) => {
                word = match v {
                    True => "true"
                    False => "false"
                }
                out.push_raw(" spellcheck=\"").push_raw(word).push_raw("\"")
            }
            Style(v) => out.push_raw(" style=\"").push_escaped(v).push_raw("\"")
            Tabindex(v) => out.push_raw(" tabindex=\"").push_raw(v.to_str()).push_raw("\"")
            Title(v) => out.push_raw(" title=\"").push_escaped(v).push_raw("\"")
            Translate(v) => {
                word = match v {
                    Yes => "yes"
                    No => "no"
                }
                out.push_raw(" translate=\"").push_raw(word).push_raw("\"")
            }
            Custom(k, v) => out.push_raw(" ").push_raw(k).push_raw("=\"").push_escaped(v).push_raw("\"")
            Data(k, v) => out.push_raw(" data-").push_raw(k).push_raw("=\"").push_escaped(v).push_raw("\"")
            Aria(k, v) => out.push_raw(" aria-").push_raw(k).push_raw("=\"").push_escaped(v).push_raw("\"")
            _ => crash("unreachable: non-global attribute delegated to push_global_attr")
        }

    ## Shared attribute loop for elements with no specific attributes.
    push_global_attrs : SafeStr, List(GlobalAttrs([..])) -> SafeStr
    push_global_attrs = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = Html.push_global_attr(out, attrs.get(i) ?? Hidden)
            i = i + 1
        }
        out
    }

    # Per-element emitters: ONLY that element's specific attrs, then
    # delegation to push_global_attr for everything shared.

    attrs_g1 : SafeStr, List(GlobalAttrs([Cite(Str), Datetime(Str)])) -> SafeStr
    attrs_g1 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Cite(v) => out.push_raw(" cite=\"").push_escaped(v).push_raw("\"")
                Datetime(v) => out.push_raw(" datetime=\"").push_escaped(v).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g2 : SafeStr, List(GlobalAttrs([Media(Str)])) -> SafeStr
    attrs_g2 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Media(v) => out.push_raw(" media=\"").push_escaped(v).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g3 : SafeStr, List(GlobalAttrs([Allow(Str), Height(U64), Loading([Lazy, Eager]), Name(Str), Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Sandbox(Str), Src(Str), Srcdoc(Str), Width(U64)])) -> SafeStr
    attrs_g3 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Allow(v) => out.push_raw(" allow=\"").push_escaped(v).push_raw("\"")
                Height(v) => out.push_raw(" height=\"").push_raw(v.to_str()).push_raw("\"")
                Loading(v) => {
                    word = match v {
                        Lazy => "lazy"
                        Eager => "eager"
                    }
                    out.push_raw(" loading=\"").push_raw(word).push_raw("\"")
                }
                Name(v) => out.push_raw(" name=\"").push_escaped(v).push_raw("\"")
                Referrerpolicy(v) => {
                    word = match v {
                        NoReferrer => "no-referrer"
                        NoReferrerWhenDowngrade => "no-referrer-when-downgrade"
                        Origin => "origin"
                        OriginWhenCrossOrigin => "origin-when-cross-origin"
                        SameOrigin => "same-origin"
                        StrictOrigin => "strict-origin"
                        StrictOriginWhenCrossOrigin => "strict-origin-when-cross-origin"
                        UnsafeUrl => "unsafe-url"
                    }
                    out.push_raw(" referrerpolicy=\"").push_raw(word).push_raw("\"")
                }
                Sandbox(v) => out.push_raw(" sandbox=\"").push_escaped(v).push_raw("\"")
                Src(v) => out.push_raw(" src=\"").push_escaped(v).push_raw("\"")
                Srcdoc(v) => out.push_raw(" srcdoc=\"").push_escaped(v).push_raw("\"")
                Width(v) => out.push_raw(" width=\"").push_raw(v.to_str()).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g4 : SafeStr, List(GlobalAttrs([Form(Str), Height(U64), Name(Str), ObjectData(Str), Type(Str), Width(U64)])) -> SafeStr
    attrs_g4 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Form(v) => out.push_raw(" form=\"").push_escaped(v).push_raw("\"")
                Height(v) => out.push_raw(" height=\"").push_raw(v.to_str()).push_raw("\"")
                Name(v) => out.push_raw(" name=\"").push_escaped(v).push_raw("\"")
                ObjectData(v) => out.push_raw(" data=\"").push_escaped(v).push_raw("\"")
                Type(v) => out.push_raw(" type=\"").push_escaped(v).push_raw("\"")
                Width(v) => out.push_raw(" width=\"").push_raw(v.to_str()).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g5 : SafeStr, List(GlobalAttrs([Src(Str)])) -> SafeStr
    attrs_g5 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Src(v) => out.push_raw(" src=\"").push_escaped(v).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g6 : SafeStr, List(GlobalAttrs([Disabled, Form(Str), Formaction(Str), Formenctype([FormUrlEncoded, MultipartFormData, TextPlain]), Formmethod([Get, Post, Dialog]), Formnovalidate, Formtarget(Str), Name(Str), Type(Str), Value(Str)])) -> SafeStr
    attrs_g6 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Disabled => out.push_raw(" disabled")
                Form(v) => out.push_raw(" form=\"").push_escaped(v).push_raw("\"")
                Formaction(v) => out.push_raw(" formaction=\"").push_escaped(v).push_raw("\"")
                Formenctype(v) => {
                    word = match v {
                        FormUrlEncoded => "application/x-www-form-urlencoded"
                        MultipartFormData => "multipart/form-data"
                        TextPlain => "text/plain"
                    }
                    out.push_raw(" formenctype=\"").push_raw(word).push_raw("\"")
                }
                Formmethod(v) => {
                    word = match v {
                        Get => "get"
                        Post => "post"
                        Dialog => "dialog"
                    }
                    out.push_raw(" formmethod=\"").push_raw(word).push_raw("\"")
                }
                Formnovalidate => out.push_raw(" formnovalidate")
                Formtarget(v) => out.push_raw(" formtarget=\"").push_escaped(v).push_raw("\"")
                Name(v) => out.push_raw(" name=\"").push_escaped(v).push_raw("\"")
                Type(v) => out.push_raw(" type=\"").push_escaped(v).push_raw("\"")
                Value(v) => out.push_raw(" value=\"").push_escaped(v).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g7 : SafeStr, List(GlobalAttrs([Disabled, Form(Str), Name(Str)])) -> SafeStr
    attrs_g7 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Disabled => out.push_raw(" disabled")
                Form(v) => out.push_raw(" form=\"").push_escaped(v).push_raw("\"")
                Name(v) => out.push_raw(" name=\"").push_escaped(v).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g8 : SafeStr, List(GlobalAttrs([AcceptCharset(Str), Action(Str), Autocomplete(Str), Enctype([FormUrlEncoded, MultipartFormData, TextPlain]), Method([Get, Post, Dialog]), Name(Str), Novalidate, Rel(Str), Target(Str)])) -> SafeStr
    attrs_g8 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                AcceptCharset(v) => out.push_raw(" accept-charset=\"").push_escaped(v).push_raw("\"")
                Action(v) => out.push_raw(" action=\"").push_escaped(v).push_raw("\"")
                Autocomplete(v) => out.push_raw(" autocomplete=\"").push_escaped(v).push_raw("\"")
                Enctype(v) => {
                    word = match v {
                        FormUrlEncoded => "application/x-www-form-urlencoded"
                        MultipartFormData => "multipart/form-data"
                        TextPlain => "text/plain"
                    }
                    out.push_raw(" enctype=\"").push_raw(word).push_raw("\"")
                }
                Method(v) => {
                    word = match v {
                        Get => "get"
                        Post => "post"
                        Dialog => "dialog"
                    }
                    out.push_raw(" method=\"").push_raw(word).push_raw("\"")
                }
                Name(v) => out.push_raw(" name=\"").push_escaped(v).push_raw("\"")
                Novalidate => out.push_raw(" novalidate")
                Rel(v) => out.push_raw(" rel=\"").push_escaped(v).push_raw("\"")
                Target(v) => out.push_raw(" target=\"").push_escaped(v).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g9 : SafeStr, List(GlobalAttrs([For(Str)])) -> SafeStr
    attrs_g9 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                For(v) => out.push_raw(" for=\"").push_escaped(v).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g10 : SafeStr, List(GlobalAttrs([High(F64), Low(F64), Max(Str), Min(Str), Optimum(F64), Value(Str)])) -> SafeStr
    attrs_g10 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                High(v) => out.push_raw(" high=\"").push_raw(v.to_str()).push_raw("\"")
                Low(v) => out.push_raw(" low=\"").push_raw(v.to_str()).push_raw("\"")
                Max(v) => out.push_raw(" max=\"").push_escaped(v).push_raw("\"")
                Min(v) => out.push_raw(" min=\"").push_escaped(v).push_raw("\"")
                Optimum(v) => out.push_raw(" optimum=\"").push_raw(v.to_str()).push_raw("\"")
                Value(v) => out.push_raw(" value=\"").push_escaped(v).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g11 : SafeStr, List(GlobalAttrs([Disabled, Label(Str)])) -> SafeStr
    attrs_g11 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Disabled => out.push_raw(" disabled")
                Label(v) => out.push_raw(" label=\"").push_escaped(v).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g12 : SafeStr, List(GlobalAttrs([Disabled, Label(Str), Selected, Value(Str)])) -> SafeStr
    attrs_g12 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Disabled => out.push_raw(" disabled")
                Label(v) => out.push_raw(" label=\"").push_escaped(v).push_raw("\"")
                Selected => out.push_raw(" selected")
                Value(v) => out.push_raw(" value=\"").push_escaped(v).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g13 : SafeStr, List(GlobalAttrs([For(Str), Form(Str), Name(Str)])) -> SafeStr
    attrs_g13 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                For(v) => out.push_raw(" for=\"").push_escaped(v).push_raw("\"")
                Form(v) => out.push_raw(" form=\"").push_escaped(v).push_raw("\"")
                Name(v) => out.push_raw(" name=\"").push_escaped(v).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g14 : SafeStr, List(GlobalAttrs([Max(Str), Value(Str)])) -> SafeStr
    attrs_g14 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Max(v) => out.push_raw(" max=\"").push_escaped(v).push_raw("\"")
                Value(v) => out.push_raw(" value=\"").push_escaped(v).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g15 : SafeStr, List(GlobalAttrs([Autocomplete(Str), Disabled, Form(Str), Multiple, Name(Str), Required, Size(U64)])) -> SafeStr
    attrs_g15 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Autocomplete(v) => out.push_raw(" autocomplete=\"").push_escaped(v).push_raw("\"")
                Disabled => out.push_raw(" disabled")
                Form(v) => out.push_raw(" form=\"").push_escaped(v).push_raw("\"")
                Multiple => out.push_raw(" multiple")
                Name(v) => out.push_raw(" name=\"").push_escaped(v).push_raw("\"")
                Required => out.push_raw(" required")
                Size(v) => out.push_raw(" size=\"").push_raw(v.to_str()).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g16 : SafeStr, List(GlobalAttrs([Autocomplete(Str), Cols(U64), Dirname(Str), Disabled, Form(Str), Maxlength(U64), Minlength(U64), Name(Str), Placeholder(Str), Readonly, Required, Rows(U64), Wrap([Soft, Hard])])) -> SafeStr
    attrs_g16 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Autocomplete(v) => out.push_raw(" autocomplete=\"").push_escaped(v).push_raw("\"")
                Cols(v) => out.push_raw(" cols=\"").push_raw(v.to_str()).push_raw("\"")
                Dirname(v) => out.push_raw(" dirname=\"").push_escaped(v).push_raw("\"")
                Disabled => out.push_raw(" disabled")
                Form(v) => out.push_raw(" form=\"").push_escaped(v).push_raw("\"")
                Maxlength(v) => out.push_raw(" maxlength=\"").push_raw(v.to_str()).push_raw("\"")
                Minlength(v) => out.push_raw(" minlength=\"").push_raw(v.to_str()).push_raw("\"")
                Name(v) => out.push_raw(" name=\"").push_escaped(v).push_raw("\"")
                Placeholder(v) => out.push_raw(" placeholder=\"").push_escaped(v).push_raw("\"")
                Readonly => out.push_raw(" readonly")
                Required => out.push_raw(" required")
                Rows(v) => out.push_raw(" rows=\"").push_raw(v.to_str()).push_raw("\"")
                Wrap(v) => {
                    word = match v {
                        Soft => "soft"
                        Hard => "hard"
                    }
                    out.push_raw(" wrap=\"").push_raw(word).push_raw("\"")
                }
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g17 : SafeStr, List(GlobalAttrs([Autoplay, Controls, Crossorigin([Anonymous, UseCredentials]), Loop, Muted, Preload([None, Metadata, Auto]), Src(Str)])) -> SafeStr
    attrs_g17 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Autoplay => out.push_raw(" autoplay")
                Controls => out.push_raw(" controls")
                Crossorigin(v) => {
                    word = match v {
                        Anonymous => "anonymous"
                        UseCredentials => "use-credentials"
                    }
                    out.push_raw(" crossorigin=\"").push_raw(word).push_raw("\"")
                }
                Loop => out.push_raw(" loop")
                Muted => out.push_raw(" muted")
                Preload(v) => {
                    word = match v {
                        None => "none"
                        Metadata => "metadata"
                        Auto => "auto"
                    }
                    out.push_raw(" preload=\"").push_raw(word).push_raw("\"")
                }
                Src(v) => out.push_raw(" src=\"").push_escaped(v).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g18 : SafeStr, List(GlobalAttrs([Name(Str)])) -> SafeStr
    attrs_g18 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Name(v) => out.push_raw(" name=\"").push_escaped(v).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g19 : SafeStr, List(GlobalAttrs([Autoplay, Controls, Crossorigin([Anonymous, UseCredentials]), Height(U64), Loop, Muted, Playsinline, Poster(Str), Preload([None, Metadata, Auto]), Src(Str), Width(U64)])) -> SafeStr
    attrs_g19 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Autoplay => out.push_raw(" autoplay")
                Controls => out.push_raw(" controls")
                Crossorigin(v) => {
                    word = match v {
                        Anonymous => "anonymous"
                        UseCredentials => "use-credentials"
                    }
                    out.push_raw(" crossorigin=\"").push_raw(word).push_raw("\"")
                }
                Height(v) => out.push_raw(" height=\"").push_raw(v.to_str()).push_raw("\"")
                Loop => out.push_raw(" loop")
                Muted => out.push_raw(" muted")
                Playsinline => out.push_raw(" playsinline")
                Poster(v) => out.push_raw(" poster=\"").push_escaped(v).push_raw("\"")
                Preload(v) => {
                    word = match v {
                        None => "none"
                        Metadata => "metadata"
                        Auto => "auto"
                    }
                    out.push_raw(" preload=\"").push_raw(word).push_raw("\"")
                }
                Src(v) => out.push_raw(" src=\"").push_escaped(v).push_raw("\"")
                Width(v) => out.push_raw(" width=\"").push_raw(v.to_str()).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g20 : SafeStr, List(GlobalAttrs([Download(Str), Href(Str), Hreflang(Str), Ping(Str), Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Rel(Str), Target(Str), Type(Str)])) -> SafeStr
    attrs_g20 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Download(v) => out.push_raw(" download=\"").push_escaped(v).push_raw("\"")
                Href(v) => out.push_raw(" href=\"").push_escaped(v).push_raw("\"")
                Hreflang(v) => out.push_raw(" hreflang=\"").push_escaped(v).push_raw("\"")
                Ping(v) => out.push_raw(" ping=\"").push_escaped(v).push_raw("\"")
                Referrerpolicy(v) => {
                    word = match v {
                        NoReferrer => "no-referrer"
                        NoReferrerWhenDowngrade => "no-referrer-when-downgrade"
                        Origin => "origin"
                        OriginWhenCrossOrigin => "origin-when-cross-origin"
                        SameOrigin => "same-origin"
                        StrictOrigin => "strict-origin"
                        StrictOriginWhenCrossOrigin => "strict-origin-when-cross-origin"
                        UnsafeUrl => "unsafe-url"
                    }
                    out.push_raw(" referrerpolicy=\"").push_raw(word).push_raw("\"")
                }
                Rel(v) => out.push_raw(" rel=\"").push_escaped(v).push_raw("\"")
                Target(v) => out.push_raw(" target=\"").push_escaped(v).push_raw("\"")
                Type(v) => out.push_raw(" type=\"").push_escaped(v).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g21 : SafeStr, List(GlobalAttrs([Value(Str)])) -> SafeStr
    attrs_g21 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Value(v) => out.push_raw(" value=\"").push_escaped(v).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g22 : SafeStr, List(GlobalAttrs([Cite(Str)])) -> SafeStr
    attrs_g22 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Cite(v) => out.push_raw(" cite=\"").push_escaped(v).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g23 : SafeStr, List(GlobalAttrs([Datetime(Str)])) -> SafeStr
    attrs_g23 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Datetime(v) => out.push_raw(" datetime=\"").push_escaped(v).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g24 : SafeStr, List(GlobalAttrs([Open])) -> SafeStr
    attrs_g24 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Open => out.push_raw(" open")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g25 : SafeStr, List(GlobalAttrs([Height(U64), Width(U64)])) -> SafeStr
    attrs_g25 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Height(v) => out.push_raw(" height=\"").push_raw(v.to_str()).push_raw("\"")
                Width(v) => out.push_raw(" width=\"").push_raw(v.to_str()).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g26 : SafeStr, List(GlobalAttrs([Async, Crossorigin([Anonymous, UseCredentials]), Defer, Integrity(Str), Nomodule, Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Src(Str), Type(Str)])) -> SafeStr
    attrs_g26 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Async => out.push_raw(" async")
                Crossorigin(v) => {
                    word = match v {
                        Anonymous => "anonymous"
                        UseCredentials => "use-credentials"
                    }
                    out.push_raw(" crossorigin=\"").push_raw(word).push_raw("\"")
                }
                Defer => out.push_raw(" defer")
                Integrity(v) => out.push_raw(" integrity=\"").push_escaped(v).push_raw("\"")
                Nomodule => out.push_raw(" nomodule")
                Referrerpolicy(v) => {
                    word = match v {
                        NoReferrer => "no-referrer"
                        NoReferrerWhenDowngrade => "no-referrer-when-downgrade"
                        Origin => "origin"
                        OriginWhenCrossOrigin => "origin-when-cross-origin"
                        SameOrigin => "same-origin"
                        StrictOrigin => "strict-origin"
                        StrictOriginWhenCrossOrigin => "strict-origin-when-cross-origin"
                        UnsafeUrl => "unsafe-url"
                    }
                    out.push_raw(" referrerpolicy=\"").push_raw(word).push_raw("\"")
                }
                Src(v) => out.push_raw(" src=\"").push_escaped(v).push_raw("\"")
                Type(v) => out.push_raw(" type=\"").push_escaped(v).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g27 : SafeStr, List(GlobalAttrs([Span(U64)])) -> SafeStr
    attrs_g27 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Span(v) => out.push_raw(" span=\"").push_raw(v.to_str()).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g28 : SafeStr, List(GlobalAttrs([Colspan(U64), Headers(Str), Rowspan(U64)])) -> SafeStr
    attrs_g28 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Colspan(v) => out.push_raw(" colspan=\"").push_raw(v.to_str()).push_raw("\"")
                Headers(v) => out.push_raw(" headers=\"").push_escaped(v).push_raw("\"")
                Rowspan(v) => out.push_raw(" rowspan=\"").push_raw(v.to_str()).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g29 : SafeStr, List(GlobalAttrs([Abbr(Str), Colspan(U64), Headers(Str), Rowspan(U64), Scope([Row, Col, Rowgroup, Colgroup])])) -> SafeStr
    attrs_g29 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Abbr(v) => out.push_raw(" abbr=\"").push_escaped(v).push_raw("\"")
                Colspan(v) => out.push_raw(" colspan=\"").push_raw(v.to_str()).push_raw("\"")
                Headers(v) => out.push_raw(" headers=\"").push_escaped(v).push_raw("\"")
                Rowspan(v) => out.push_raw(" rowspan=\"").push_raw(v.to_str()).push_raw("\"")
                Scope(v) => {
                    word = match v {
                        Row => "row"
                        Col => "col"
                        Rowgroup => "rowgroup"
                        Colgroup => "colgroup"
                    }
                    out.push_raw(" scope=\"").push_raw(word).push_raw("\"")
                }
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g30 : SafeStr, List(GlobalAttrs([Reversed, Start(I64), Type(Str)])) -> SafeStr
    attrs_g30 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Reversed => out.push_raw(" reversed")
                Start(v) => out.push_raw(" start=\"").push_raw(v.to_str()).push_raw("\"")
                Type(v) => out.push_raw(" type=\"").push_escaped(v).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g31 : SafeStr, List(GlobalAttrs([Alt(Str), Coords(Str), Download(Str), Href(Str), Ping(Str), Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Rel(Str), Shape([Rect, Circle, Poly, Default]), Target(Str)])) -> SafeStr
    attrs_g31 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Alt(v) => out.push_raw(" alt=\"").push_escaped(v).push_raw("\"")
                Coords(v) => out.push_raw(" coords=\"").push_escaped(v).push_raw("\"")
                Download(v) => out.push_raw(" download=\"").push_escaped(v).push_raw("\"")
                Href(v) => out.push_raw(" href=\"").push_escaped(v).push_raw("\"")
                Ping(v) => out.push_raw(" ping=\"").push_escaped(v).push_raw("\"")
                Referrerpolicy(v) => {
                    word = match v {
                        NoReferrer => "no-referrer"
                        NoReferrerWhenDowngrade => "no-referrer-when-downgrade"
                        Origin => "origin"
                        OriginWhenCrossOrigin => "origin-when-cross-origin"
                        SameOrigin => "same-origin"
                        StrictOrigin => "strict-origin"
                        StrictOriginWhenCrossOrigin => "strict-origin-when-cross-origin"
                        UnsafeUrl => "unsafe-url"
                    }
                    out.push_raw(" referrerpolicy=\"").push_raw(word).push_raw("\"")
                }
                Rel(v) => out.push_raw(" rel=\"").push_escaped(v).push_raw("\"")
                Shape(v) => {
                    word = match v {
                        Rect => "rect"
                        Circle => "circle"
                        Poly => "poly"
                        Default => "default"
                    }
                    out.push_raw(" shape=\"").push_raw(word).push_raw("\"")
                }
                Target(v) => out.push_raw(" target=\"").push_escaped(v).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g32 : SafeStr, List(GlobalAttrs([Href(Str), Target(Str)])) -> SafeStr
    attrs_g32 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Href(v) => out.push_raw(" href=\"").push_escaped(v).push_raw("\"")
                Target(v) => out.push_raw(" target=\"").push_escaped(v).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g33 : SafeStr, List(GlobalAttrs([Height(U64), Src(Str), Type(Str), Width(U64)])) -> SafeStr
    attrs_g33 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Height(v) => out.push_raw(" height=\"").push_raw(v.to_str()).push_raw("\"")
                Src(v) => out.push_raw(" src=\"").push_escaped(v).push_raw("\"")
                Type(v) => out.push_raw(" type=\"").push_escaped(v).push_raw("\"")
                Width(v) => out.push_raw(" width=\"").push_raw(v.to_str()).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g34 : SafeStr, List(GlobalAttrs([Alt(Str), Crossorigin([Anonymous, UseCredentials]), Decoding([Sync, Async, Auto]), Height(U64), Ismap, Loading([Lazy, Eager]), Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Sizes(Str), Src(Str), Srcset(Str), Usemap(Str), Width(U64)])) -> SafeStr
    attrs_g34 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Alt(v) => out.push_raw(" alt=\"").push_escaped(v).push_raw("\"")
                Crossorigin(v) => {
                    word = match v {
                        Anonymous => "anonymous"
                        UseCredentials => "use-credentials"
                    }
                    out.push_raw(" crossorigin=\"").push_raw(word).push_raw("\"")
                }
                Decoding(v) => {
                    word = match v {
                        Sync => "sync"
                        Async => "async"
                        Auto => "auto"
                    }
                    out.push_raw(" decoding=\"").push_raw(word).push_raw("\"")
                }
                Height(v) => out.push_raw(" height=\"").push_raw(v.to_str()).push_raw("\"")
                Ismap => out.push_raw(" ismap")
                Loading(v) => {
                    word = match v {
                        Lazy => "lazy"
                        Eager => "eager"
                    }
                    out.push_raw(" loading=\"").push_raw(word).push_raw("\"")
                }
                Referrerpolicy(v) => {
                    word = match v {
                        NoReferrer => "no-referrer"
                        NoReferrerWhenDowngrade => "no-referrer-when-downgrade"
                        Origin => "origin"
                        OriginWhenCrossOrigin => "origin-when-cross-origin"
                        SameOrigin => "same-origin"
                        StrictOrigin => "strict-origin"
                        StrictOriginWhenCrossOrigin => "strict-origin-when-cross-origin"
                        UnsafeUrl => "unsafe-url"
                    }
                    out.push_raw(" referrerpolicy=\"").push_raw(word).push_raw("\"")
                }
                Sizes(v) => out.push_raw(" sizes=\"").push_escaped(v).push_raw("\"")
                Src(v) => out.push_raw(" src=\"").push_escaped(v).push_raw("\"")
                Srcset(v) => out.push_raw(" srcset=\"").push_escaped(v).push_raw("\"")
                Usemap(v) => out.push_raw(" usemap=\"").push_escaped(v).push_raw("\"")
                Width(v) => out.push_raw(" width=\"").push_raw(v.to_str()).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g35 : SafeStr, List(GlobalAttrs([Accept(Str), Alt(Str), Autocomplete(Str), Capture([User, Environment]), Checked, Dirname(Str), Disabled, Form(Str), Formaction(Str), Formenctype([FormUrlEncoded, MultipartFormData, TextPlain]), Formmethod([Get, Post, Dialog]), Formnovalidate, Formtarget(Str), Height(U64), List(Str), Max(Str), Maxlength(U64), Min(Str), Minlength(U64), Multiple, Name(Str), Pattern(Str), Placeholder(Str), Readonly, Required, Size(U64), Src(Str), Step(Str), Type(Str), Value(Str), Width(U64)])) -> SafeStr
    attrs_g35 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Accept(v) => out.push_raw(" accept=\"").push_escaped(v).push_raw("\"")
                Alt(v) => out.push_raw(" alt=\"").push_escaped(v).push_raw("\"")
                Autocomplete(v) => out.push_raw(" autocomplete=\"").push_escaped(v).push_raw("\"")
                Capture(v) => {
                    word = match v {
                        User => "user"
                        Environment => "environment"
                    }
                    out.push_raw(" capture=\"").push_raw(word).push_raw("\"")
                }
                Checked => out.push_raw(" checked")
                Dirname(v) => out.push_raw(" dirname=\"").push_escaped(v).push_raw("\"")
                Disabled => out.push_raw(" disabled")
                Form(v) => out.push_raw(" form=\"").push_escaped(v).push_raw("\"")
                Formaction(v) => out.push_raw(" formaction=\"").push_escaped(v).push_raw("\"")
                Formenctype(v) => {
                    word = match v {
                        FormUrlEncoded => "application/x-www-form-urlencoded"
                        MultipartFormData => "multipart/form-data"
                        TextPlain => "text/plain"
                    }
                    out.push_raw(" formenctype=\"").push_raw(word).push_raw("\"")
                }
                Formmethod(v) => {
                    word = match v {
                        Get => "get"
                        Post => "post"
                        Dialog => "dialog"
                    }
                    out.push_raw(" formmethod=\"").push_raw(word).push_raw("\"")
                }
                Formnovalidate => out.push_raw(" formnovalidate")
                Formtarget(v) => out.push_raw(" formtarget=\"").push_escaped(v).push_raw("\"")
                Height(v) => out.push_raw(" height=\"").push_raw(v.to_str()).push_raw("\"")
                List(v) => out.push_raw(" list=\"").push_escaped(v).push_raw("\"")
                Max(v) => out.push_raw(" max=\"").push_escaped(v).push_raw("\"")
                Maxlength(v) => out.push_raw(" maxlength=\"").push_raw(v.to_str()).push_raw("\"")
                Min(v) => out.push_raw(" min=\"").push_escaped(v).push_raw("\"")
                Minlength(v) => out.push_raw(" minlength=\"").push_raw(v.to_str()).push_raw("\"")
                Multiple => out.push_raw(" multiple")
                Name(v) => out.push_raw(" name=\"").push_escaped(v).push_raw("\"")
                Pattern(v) => out.push_raw(" pattern=\"").push_escaped(v).push_raw("\"")
                Placeholder(v) => out.push_raw(" placeholder=\"").push_escaped(v).push_raw("\"")
                Readonly => out.push_raw(" readonly")
                Required => out.push_raw(" required")
                Size(v) => out.push_raw(" size=\"").push_raw(v.to_str()).push_raw("\"")
                Src(v) => out.push_raw(" src=\"").push_escaped(v).push_raw("\"")
                Step(v) => out.push_raw(" step=\"").push_escaped(v).push_raw("\"")
                Type(v) => out.push_raw(" type=\"").push_escaped(v).push_raw("\"")
                Value(v) => out.push_raw(" value=\"").push_escaped(v).push_raw("\"")
                Width(v) => out.push_raw(" width=\"").push_raw(v.to_str()).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g36 : SafeStr, List(GlobalAttrs([Crossorigin([Anonymous, UseCredentials]), Disabled, Href(Str), Hreflang(Str), Integrity(Str), Media(Str), Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Rel(Str), Sizes(Str), Type(Str)])) -> SafeStr
    attrs_g36 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Crossorigin(v) => {
                    word = match v {
                        Anonymous => "anonymous"
                        UseCredentials => "use-credentials"
                    }
                    out.push_raw(" crossorigin=\"").push_raw(word).push_raw("\"")
                }
                Disabled => out.push_raw(" disabled")
                Href(v) => out.push_raw(" href=\"").push_escaped(v).push_raw("\"")
                Hreflang(v) => out.push_raw(" hreflang=\"").push_escaped(v).push_raw("\"")
                Integrity(v) => out.push_raw(" integrity=\"").push_escaped(v).push_raw("\"")
                Media(v) => out.push_raw(" media=\"").push_escaped(v).push_raw("\"")
                Referrerpolicy(v) => {
                    word = match v {
                        NoReferrer => "no-referrer"
                        NoReferrerWhenDowngrade => "no-referrer-when-downgrade"
                        Origin => "origin"
                        OriginWhenCrossOrigin => "origin-when-cross-origin"
                        SameOrigin => "same-origin"
                        StrictOrigin => "strict-origin"
                        StrictOriginWhenCrossOrigin => "strict-origin-when-cross-origin"
                        UnsafeUrl => "unsafe-url"
                    }
                    out.push_raw(" referrerpolicy=\"").push_raw(word).push_raw("\"")
                }
                Rel(v) => out.push_raw(" rel=\"").push_escaped(v).push_raw("\"")
                Sizes(v) => out.push_raw(" sizes=\"").push_escaped(v).push_raw("\"")
                Type(v) => out.push_raw(" type=\"").push_escaped(v).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g37 : SafeStr, List(GlobalAttrs([Charset(Str), Content(Str), HttpEquiv(Str), Media(Str), Name(Str)])) -> SafeStr
    attrs_g37 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Charset(v) => out.push_raw(" charset=\"").push_escaped(v).push_raw("\"")
                Content(v) => out.push_raw(" content=\"").push_escaped(v).push_raw("\"")
                HttpEquiv(v) => out.push_raw(" http-equiv=\"").push_escaped(v).push_raw("\"")
                Media(v) => out.push_raw(" media=\"").push_escaped(v).push_raw("\"")
                Name(v) => out.push_raw(" name=\"").push_escaped(v).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g38 : SafeStr, List(GlobalAttrs([Height(U64), Media(Str), Sizes(Str), Src(Str), Srcset(Str), Type(Str), Width(U64)])) -> SafeStr
    attrs_g38 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Height(v) => out.push_raw(" height=\"").push_raw(v.to_str()).push_raw("\"")
                Media(v) => out.push_raw(" media=\"").push_escaped(v).push_raw("\"")
                Sizes(v) => out.push_raw(" sizes=\"").push_escaped(v).push_raw("\"")
                Src(v) => out.push_raw(" src=\"").push_escaped(v).push_raw("\"")
                Srcset(v) => out.push_raw(" srcset=\"").push_escaped(v).push_raw("\"")
                Type(v) => out.push_raw(" type=\"").push_escaped(v).push_raw("\"")
                Width(v) => out.push_raw(" width=\"").push_raw(v.to_str()).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g39 : SafeStr, List(GlobalAttrs([Default, Kind([Subtitles, Captions, Descriptions, Chapters, Metadata]), Label(Str), Src(Str), Srclang(Str)])) -> SafeStr
    attrs_g39 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Default => out.push_raw(" default")
                Kind(v) => {
                    word = match v {
                        Subtitles => "subtitles"
                        Captions => "captions"
                        Descriptions => "descriptions"
                        Chapters => "chapters"
                        Metadata => "metadata"
                    }
                    out.push_raw(" kind=\"").push_raw(word).push_raw("\"")
                }
                Label(v) => out.push_raw(" label=\"").push_escaped(v).push_raw("\"")
                Src(v) => out.push_raw(" src=\"").push_escaped(v).push_raw("\"")
                Srclang(v) => out.push_raw(" srclang=\"").push_escaped(v).push_raw("\"")
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }

    attrs_g40 : SafeStr, List(GlobalAttrs([Abbr(Str), Accept(Str), AcceptCharset(Str), Action(Str), Allow(Str), Alt(Str), Async, Autocomplete(Str), Autoplay, Capture([User, Environment]), Charset(Str), Checked, Cite(Str), Cols(U64), Colspan(U64), Content(Str), Controls, Coords(Str), Crossorigin([Anonymous, UseCredentials]), Datetime(Str), Decoding([Sync, Async, Auto]), Default, Defer, Dirname(Str), Disabled, Download(Str), Enctype([FormUrlEncoded, MultipartFormData, TextPlain]), For(Str), Form(Str), Formaction(Str), Formenctype([FormUrlEncoded, MultipartFormData, TextPlain]), Formmethod([Get, Post, Dialog]), Formnovalidate, Formtarget(Str), Headers(Str), Height(U64), High(F64), Href(Str), Hreflang(Str), HttpEquiv(Str), Integrity(Str), Ismap, Kind([Subtitles, Captions, Descriptions, Chapters, Metadata]), Label(Str), List(Str), Loading([Lazy, Eager]), Loop, Low(F64), Max(Str), Maxlength(U64), Media(Str), Method([Get, Post, Dialog]), Min(Str), Minlength(U64), Multiple, Muted, Name(Str), Nomodule, Novalidate, ObjectData(Str), Open, Optimum(F64), Pattern(Str), Ping(Str), Placeholder(Str), Playsinline, Poster(Str), Preload([None, Metadata, Auto]), Readonly, Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Rel(Str), Required, Reversed, Rows(U64), Rowspan(U64), Sandbox(Str), Scope([Row, Col, Rowgroup, Colgroup]), Selected, Shape([Rect, Circle, Poly, Default]), Size(U64), Sizes(Str), Span(U64), Src(Str), Srcdoc(Str), Srclang(Str), Srcset(Str), Start(I64), Step(Str), Target(Str), Type(Str), Usemap(Str), Value(Str), Width(U64), Wrap([Soft, Hard])])) -> SafeStr
    attrs_g40 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
                Abbr(v) => out.push_raw(" abbr=\"").push_escaped(v).push_raw("\"")
                Accept(v) => out.push_raw(" accept=\"").push_escaped(v).push_raw("\"")
                AcceptCharset(v) => out.push_raw(" accept-charset=\"").push_escaped(v).push_raw("\"")
                Action(v) => out.push_raw(" action=\"").push_escaped(v).push_raw("\"")
                Allow(v) => out.push_raw(" allow=\"").push_escaped(v).push_raw("\"")
                Alt(v) => out.push_raw(" alt=\"").push_escaped(v).push_raw("\"")
                Async => out.push_raw(" async")
                Autocomplete(v) => out.push_raw(" autocomplete=\"").push_escaped(v).push_raw("\"")
                Autoplay => out.push_raw(" autoplay")
                Capture(v) => {
                    word = match v {
                        User => "user"
                        Environment => "environment"
                    }
                    out.push_raw(" capture=\"").push_raw(word).push_raw("\"")
                }
                Charset(v) => out.push_raw(" charset=\"").push_escaped(v).push_raw("\"")
                Checked => out.push_raw(" checked")
                Cite(v) => out.push_raw(" cite=\"").push_escaped(v).push_raw("\"")
                Cols(v) => out.push_raw(" cols=\"").push_raw(v.to_str()).push_raw("\"")
                Colspan(v) => out.push_raw(" colspan=\"").push_raw(v.to_str()).push_raw("\"")
                Content(v) => out.push_raw(" content=\"").push_escaped(v).push_raw("\"")
                Controls => out.push_raw(" controls")
                Coords(v) => out.push_raw(" coords=\"").push_escaped(v).push_raw("\"")
                Crossorigin(v) => {
                    word = match v {
                        Anonymous => "anonymous"
                        UseCredentials => "use-credentials"
                    }
                    out.push_raw(" crossorigin=\"").push_raw(word).push_raw("\"")
                }
                Datetime(v) => out.push_raw(" datetime=\"").push_escaped(v).push_raw("\"")
                Decoding(v) => {
                    word = match v {
                        Sync => "sync"
                        Async => "async"
                        Auto => "auto"
                    }
                    out.push_raw(" decoding=\"").push_raw(word).push_raw("\"")
                }
                Default => out.push_raw(" default")
                Defer => out.push_raw(" defer")
                Dirname(v) => out.push_raw(" dirname=\"").push_escaped(v).push_raw("\"")
                Disabled => out.push_raw(" disabled")
                Download(v) => out.push_raw(" download=\"").push_escaped(v).push_raw("\"")
                Enctype(v) => {
                    word = match v {
                        FormUrlEncoded => "application/x-www-form-urlencoded"
                        MultipartFormData => "multipart/form-data"
                        TextPlain => "text/plain"
                    }
                    out.push_raw(" enctype=\"").push_raw(word).push_raw("\"")
                }
                For(v) => out.push_raw(" for=\"").push_escaped(v).push_raw("\"")
                Form(v) => out.push_raw(" form=\"").push_escaped(v).push_raw("\"")
                Formaction(v) => out.push_raw(" formaction=\"").push_escaped(v).push_raw("\"")
                Formenctype(v) => {
                    word = match v {
                        FormUrlEncoded => "application/x-www-form-urlencoded"
                        MultipartFormData => "multipart/form-data"
                        TextPlain => "text/plain"
                    }
                    out.push_raw(" formenctype=\"").push_raw(word).push_raw("\"")
                }
                Formmethod(v) => {
                    word = match v {
                        Get => "get"
                        Post => "post"
                        Dialog => "dialog"
                    }
                    out.push_raw(" formmethod=\"").push_raw(word).push_raw("\"")
                }
                Formnovalidate => out.push_raw(" formnovalidate")
                Formtarget(v) => out.push_raw(" formtarget=\"").push_escaped(v).push_raw("\"")
                Headers(v) => out.push_raw(" headers=\"").push_escaped(v).push_raw("\"")
                Height(v) => out.push_raw(" height=\"").push_raw(v.to_str()).push_raw("\"")
                High(v) => out.push_raw(" high=\"").push_raw(v.to_str()).push_raw("\"")
                Href(v) => out.push_raw(" href=\"").push_escaped(v).push_raw("\"")
                Hreflang(v) => out.push_raw(" hreflang=\"").push_escaped(v).push_raw("\"")
                HttpEquiv(v) => out.push_raw(" http-equiv=\"").push_escaped(v).push_raw("\"")
                Integrity(v) => out.push_raw(" integrity=\"").push_escaped(v).push_raw("\"")
                Ismap => out.push_raw(" ismap")
                Kind(v) => {
                    word = match v {
                        Subtitles => "subtitles"
                        Captions => "captions"
                        Descriptions => "descriptions"
                        Chapters => "chapters"
                        Metadata => "metadata"
                    }
                    out.push_raw(" kind=\"").push_raw(word).push_raw("\"")
                }
                Label(v) => out.push_raw(" label=\"").push_escaped(v).push_raw("\"")
                List(v) => out.push_raw(" list=\"").push_escaped(v).push_raw("\"")
                Loading(v) => {
                    word = match v {
                        Lazy => "lazy"
                        Eager => "eager"
                    }
                    out.push_raw(" loading=\"").push_raw(word).push_raw("\"")
                }
                Loop => out.push_raw(" loop")
                Low(v) => out.push_raw(" low=\"").push_raw(v.to_str()).push_raw("\"")
                Max(v) => out.push_raw(" max=\"").push_escaped(v).push_raw("\"")
                Maxlength(v) => out.push_raw(" maxlength=\"").push_raw(v.to_str()).push_raw("\"")
                Media(v) => out.push_raw(" media=\"").push_escaped(v).push_raw("\"")
                Method(v) => {
                    word = match v {
                        Get => "get"
                        Post => "post"
                        Dialog => "dialog"
                    }
                    out.push_raw(" method=\"").push_raw(word).push_raw("\"")
                }
                Min(v) => out.push_raw(" min=\"").push_escaped(v).push_raw("\"")
                Minlength(v) => out.push_raw(" minlength=\"").push_raw(v.to_str()).push_raw("\"")
                Multiple => out.push_raw(" multiple")
                Muted => out.push_raw(" muted")
                Name(v) => out.push_raw(" name=\"").push_escaped(v).push_raw("\"")
                Nomodule => out.push_raw(" nomodule")
                Novalidate => out.push_raw(" novalidate")
                ObjectData(v) => out.push_raw(" data=\"").push_escaped(v).push_raw("\"")
                Open => out.push_raw(" open")
                Optimum(v) => out.push_raw(" optimum=\"").push_raw(v.to_str()).push_raw("\"")
                Pattern(v) => out.push_raw(" pattern=\"").push_escaped(v).push_raw("\"")
                Ping(v) => out.push_raw(" ping=\"").push_escaped(v).push_raw("\"")
                Placeholder(v) => out.push_raw(" placeholder=\"").push_escaped(v).push_raw("\"")
                Playsinline => out.push_raw(" playsinline")
                Poster(v) => out.push_raw(" poster=\"").push_escaped(v).push_raw("\"")
                Preload(v) => {
                    word = match v {
                        None => "none"
                        Metadata => "metadata"
                        Auto => "auto"
                    }
                    out.push_raw(" preload=\"").push_raw(word).push_raw("\"")
                }
                Readonly => out.push_raw(" readonly")
                Referrerpolicy(v) => {
                    word = match v {
                        NoReferrer => "no-referrer"
                        NoReferrerWhenDowngrade => "no-referrer-when-downgrade"
                        Origin => "origin"
                        OriginWhenCrossOrigin => "origin-when-cross-origin"
                        SameOrigin => "same-origin"
                        StrictOrigin => "strict-origin"
                        StrictOriginWhenCrossOrigin => "strict-origin-when-cross-origin"
                        UnsafeUrl => "unsafe-url"
                    }
                    out.push_raw(" referrerpolicy=\"").push_raw(word).push_raw("\"")
                }
                Rel(v) => out.push_raw(" rel=\"").push_escaped(v).push_raw("\"")
                Required => out.push_raw(" required")
                Reversed => out.push_raw(" reversed")
                Rows(v) => out.push_raw(" rows=\"").push_raw(v.to_str()).push_raw("\"")
                Rowspan(v) => out.push_raw(" rowspan=\"").push_raw(v.to_str()).push_raw("\"")
                Sandbox(v) => out.push_raw(" sandbox=\"").push_escaped(v).push_raw("\"")
                Scope(v) => {
                    word = match v {
                        Row => "row"
                        Col => "col"
                        Rowgroup => "rowgroup"
                        Colgroup => "colgroup"
                    }
                    out.push_raw(" scope=\"").push_raw(word).push_raw("\"")
                }
                Selected => out.push_raw(" selected")
                Shape(v) => {
                    word = match v {
                        Rect => "rect"
                        Circle => "circle"
                        Poly => "poly"
                        Default => "default"
                    }
                    out.push_raw(" shape=\"").push_raw(word).push_raw("\"")
                }
                Size(v) => out.push_raw(" size=\"").push_raw(v.to_str()).push_raw("\"")
                Sizes(v) => out.push_raw(" sizes=\"").push_escaped(v).push_raw("\"")
                Span(v) => out.push_raw(" span=\"").push_raw(v.to_str()).push_raw("\"")
                Src(v) => out.push_raw(" src=\"").push_escaped(v).push_raw("\"")
                Srcdoc(v) => out.push_raw(" srcdoc=\"").push_escaped(v).push_raw("\"")
                Srclang(v) => out.push_raw(" srclang=\"").push_escaped(v).push_raw("\"")
                Srcset(v) => out.push_raw(" srcset=\"").push_escaped(v).push_raw("\"")
                Start(v) => out.push_raw(" start=\"").push_raw(v.to_str()).push_raw("\"")
                Step(v) => out.push_raw(" step=\"").push_escaped(v).push_raw("\"")
                Target(v) => out.push_raw(" target=\"").push_escaped(v).push_raw("\"")
                Type(v) => out.push_raw(" type=\"").push_escaped(v).push_raw("\"")
                Usemap(v) => out.push_raw(" usemap=\"").push_escaped(v).push_raw("\"")
                Value(v) => out.push_raw(" value=\"").push_escaped(v).push_raw("\"")
                Width(v) => out.push_raw(" width=\"").push_raw(v.to_str()).push_raw("\"")
                Wrap(v) => {
                    word = match v {
                        Soft => "soft"
                        Hard => "hard"
                    }
                    out.push_raw(" wrap=\"").push_raw(word).push_raw("\"")
                }
                other => Html.push_global_attr(out, other)
            }
            i = i + 1
        }
        out
    }
}

# Ported regression tests + scoping tests. Negative examples (must be
# TYPE MISMATCH when uncommented):
#   Input([Colspan(2)])
#   Div([Checked], [])
#   Td([Placeholder("x")], [])

expect {
    doc : Html
    doc = Html([], [Body([], [P([Custom("example", "test")], [Text("Hello, World!")])])])
    doc.render_doc() == "<!DOCTYPE html><html><body><p example=\"test\">Hello, World!</p></body></html>"
}

# Boolean attributes render bare (Hidden is global).
expect {
    doc : Html
    doc = Html([], [Body([], [P([Hidden], [Text("Hello, World!")])])])
    doc.render_doc() == "<!DOCTYPE html><html><body><p hidden>Hello, World!</p></body></html>"
}

# Text nodes are escaped; raw HTML needs DangerousRaw.
expect Html.render(Text("<script>alert('hi')</script>")) == "&lt;script&gt;alert(&#39;hi&#39;)&lt;/script&gt;"
expect Html.render(DangerousRaw("<b>raw</b>")) == "<b>raw</b>"

# Attribute values escaped for the double-quoted context.
expect {
    doc : Html
    doc = A([Href("https://example.com/?q=\"x\"&y=1")], [Text("link")])
    doc.render() == "<a href=\"https://example.com/?q=&quot;x&quot;&amp;y=1\">link</a>"
}

# Void elements: attrs only, no closing tag.
expect Html.render(Br([])) == "<br>"
expect Html.render(Img([Src("cat.png"), Alt("A cat")])) == "<img src=\"cat.png\" alt=\"A cat\">"

# Custom elements accept the superset.
expect Html.render(CustomEl("my-widget", [Id("w")], [Text("hi")])) == "<my-widget id=\"w\">hi</my-widget>"

# data-* / aria-* escape hatches are global; empty divs keep closing tags.
expect Html.render(Div([Data("count", "3"), Aria("label", "Close")], [])) == "<div data-count=\"3\" aria-label=\"Close\"></div>"
expect Html.render(Div([], [])) == "<div></div>"

# Keyword-named variants; Cite as element and attribute (Blockquote allows it).
expect Html.render(Var([], [Text("x")])) == "<var>x</var>"
expect Html.render(Label([For("id1")], [Text("x")])) == "<label for=\"id1\">x</label>"
expect Html.render(Blockquote([Cite("src")], [Cite([], [Text("q")])])) == "<blockquote cite=\"src\"><cite>q</cite></blockquote>"

# Scoping: element-specific attributes combine on their element.
expect Html.render(Input([Class("f"), Checked, Placeholder("name"), Formaction("/go")])) == "<input class=\"f\" checked placeholder=\"name\" formaction=\"/go\">"
expect Html.render(Td([Colspan(2), Headers("h")], [Text("x")])) == "<td colspan=\"2\" headers=\"h\">x</td>"
expect Html.render(Th([Scope(Row), Abbr("n")], [])) == "<th scope=\"row\" abbr=\"n\"></th>"
expect Html.render(Meter([Value("0.6"), Low(0.25), High(0.75), Optimum(0.5)], [])) == "<meter value=\"0.6\" low=\"0.25\" high=\"0.75\" optimum=\"0.5\"></meter>"
expect Html.render(Track([Default, Kind(Captions), Src("s.vtt"), Srclang("en"), Label("English")])) == "<track default kind=\"captions\" src=\"s.vtt\" srclang=\"en\" label=\"English\">"
expect Html.render(Object([ObjectData("movie.swf"), Type("application/x")], [])) == "<object data=\"movie.swf\" type=\"application/x\"></object>"
expect Html.render(Form([Method(Post), Enctype(MultipartFormData), Action("/submit")], [])) == "<form method=\"post\" enctype=\"multipart/form-data\" action=\"/submit\"></form>"
expect Html.render(Ol([Reversed, Start(3)], [])) == "<ol reversed start=\"3\"></ol>"

# Shared helper (open annotation) flows into different elements' sets.
shared_card : Str -> List([Class(Str), Id(Str), ..])
shared_card = |cls| [Class(cls), Id("main")]

expect {
    doc : Html
    doc = Td(shared_card("card").append(Colspan(2)), [Input(shared_card("card"))])
    doc.render() == "<td class=\"card\" id=\"main\" colspan=\"2\"><input class=\"card\" id=\"main\"></td>"
}

# classes helper works on any element.
expect Html.render(Div([Html.classes(["a", "b"])], [])) == "<div class=\"a b\"></div>"
