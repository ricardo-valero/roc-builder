# HTML attributes as data: one variant per standard attribute, with the
# payload shape the attribute demands. Valued attributes carry their Str
# value; boolean attributes are payload-less variants, so `Disabled` can
# never be given a value and renders as the bare name (never `=""`).
# Custom/Data/Aria are the escape hatches for non-standard names and the
# infinite data-*/aria-* families. Attribute NAMES are emitted verbatim
# (trusted); VALUES are always escaped.
Attribute := [
    # Valued standard attributes
    Accept(Str), AcceptCharset(Str), Accesskey(Str), Action(Str), Allow(Str), Alt(Str),
    Autocapitalize(Str), Autocomplete(Str), Capture(Str), Charset(Str), Cite(Str), Class(Str),
    Cols(Str), Colspan(Str), Content(Str), Contenteditable(Str), Coords(Str), Crossorigin(Str),
    Datetime(Str), Decoding(Str), Dir(Str), Dirname(Str), Download(Str), Draggable(Str),
    Enctype(Str), Enterkeyhint(Str), For(Str), Form(Str), Formaction(Str), Formenctype(Str),
    Formmethod(Str), Formtarget(Str), Headers(Str), Height(Str), High(Str), Href(Str),
    Hreflang(Str), HttpEquiv(Str), Id(Str), Inputmode(Str), Integrity(Str), Itemprop(Str),
    Kind(Str), Label(Str), Lang(Str), List(Str), Loading(Str), Low(Str),
    Max(Str), Maxlength(Str), Media(Str), Method(Str), Min(Str), Minlength(Str),
    Name(Str), Optimum(Str), Pattern(Str), Ping(Str), Placeholder(Str), Poster(Str),
    Preload(Str), Referrerpolicy(Str), Rel(Str), Role(Str), Rows(Str), Rowspan(Str),
    Sandbox(Str), Scope(Str), Shape(Str), Size(Str), Sizes(Str), Slot(Str),
    Span(Str), Spellcheck(Str), Src(Str), Srcdoc(Str), Srclang(Str), Srcset(Str),
    Start(Str), Step(Str), Style(Str), Tabindex(Str), Target(Str), Title(Str),
    Translate(Str), Type(Str), Usemap(Str), Value(Str), Width(Str), Wrap(Str),
    # Boolean attributes — payload-less, render as the bare name
    Async, Autofocus, Autoplay, Checked, Controls, Default,
    Defer, Disabled, Hidden, Inert, Ismap, Itemscope,
    Loop, Multiple, Muted, Nomodule, Novalidate, Open,
    Playsinline, Readonly, Required, Reversed, Selected,
    # Escape hatches
    Custom(Str, Str),
    Data(Str, Str),
    Aria(Str, Str),
].{
    ## The name/value view consumed by the renderer and is_eq.
    to_pair : Attribute -> [Pair(Str, Str), Bare(Str)]
    to_pair = |attr|
        match attr {
            Accept(v) => Pair("accept", v)
            AcceptCharset(v) => Pair("accept-charset", v)
            Accesskey(v) => Pair("accesskey", v)
            Action(v) => Pair("action", v)
            Allow(v) => Pair("allow", v)
            Alt(v) => Pair("alt", v)
            Autocapitalize(v) => Pair("autocapitalize", v)
            Autocomplete(v) => Pair("autocomplete", v)
            Capture(v) => Pair("capture", v)
            Charset(v) => Pair("charset", v)
            Cite(v) => Pair("cite", v)
            Class(v) => Pair("class", v)
            Cols(v) => Pair("cols", v)
            Colspan(v) => Pair("colspan", v)
            Content(v) => Pair("content", v)
            Contenteditable(v) => Pair("contenteditable", v)
            Coords(v) => Pair("coords", v)
            Crossorigin(v) => Pair("crossorigin", v)
            Datetime(v) => Pair("datetime", v)
            Decoding(v) => Pair("decoding", v)
            Dir(v) => Pair("dir", v)
            Dirname(v) => Pair("dirname", v)
            Download(v) => Pair("download", v)
            Draggable(v) => Pair("draggable", v)
            Enctype(v) => Pair("enctype", v)
            Enterkeyhint(v) => Pair("enterkeyhint", v)
            For(v) => Pair("for", v)
            Form(v) => Pair("form", v)
            Formaction(v) => Pair("formaction", v)
            Formenctype(v) => Pair("formenctype", v)
            Formmethod(v) => Pair("formmethod", v)
            Formtarget(v) => Pair("formtarget", v)
            Headers(v) => Pair("headers", v)
            Height(v) => Pair("height", v)
            High(v) => Pair("high", v)
            Href(v) => Pair("href", v)
            Hreflang(v) => Pair("hreflang", v)
            HttpEquiv(v) => Pair("http-equiv", v)
            Id(v) => Pair("id", v)
            Inputmode(v) => Pair("inputmode", v)
            Integrity(v) => Pair("integrity", v)
            Itemprop(v) => Pair("itemprop", v)
            Kind(v) => Pair("kind", v)
            Label(v) => Pair("label", v)
            Lang(v) => Pair("lang", v)
            List(v) => Pair("list", v)
            Loading(v) => Pair("loading", v)
            Low(v) => Pair("low", v)
            Max(v) => Pair("max", v)
            Maxlength(v) => Pair("maxlength", v)
            Media(v) => Pair("media", v)
            Method(v) => Pair("method", v)
            Min(v) => Pair("min", v)
            Minlength(v) => Pair("minlength", v)
            Name(v) => Pair("name", v)
            Optimum(v) => Pair("optimum", v)
            Pattern(v) => Pair("pattern", v)
            Ping(v) => Pair("ping", v)
            Placeholder(v) => Pair("placeholder", v)
            Poster(v) => Pair("poster", v)
            Preload(v) => Pair("preload", v)
            Referrerpolicy(v) => Pair("referrerpolicy", v)
            Rel(v) => Pair("rel", v)
            Role(v) => Pair("role", v)
            Rows(v) => Pair("rows", v)
            Rowspan(v) => Pair("rowspan", v)
            Sandbox(v) => Pair("sandbox", v)
            Scope(v) => Pair("scope", v)
            Shape(v) => Pair("shape", v)
            Size(v) => Pair("size", v)
            Sizes(v) => Pair("sizes", v)
            Slot(v) => Pair("slot", v)
            Span(v) => Pair("span", v)
            Spellcheck(v) => Pair("spellcheck", v)
            Src(v) => Pair("src", v)
            Srcdoc(v) => Pair("srcdoc", v)
            Srclang(v) => Pair("srclang", v)
            Srcset(v) => Pair("srcset", v)
            Start(v) => Pair("start", v)
            Step(v) => Pair("step", v)
            Style(v) => Pair("style", v)
            Tabindex(v) => Pair("tabindex", v)
            Target(v) => Pair("target", v)
            Title(v) => Pair("title", v)
            Translate(v) => Pair("translate", v)
            Type(v) => Pair("type", v)
            Usemap(v) => Pair("usemap", v)
            Value(v) => Pair("value", v)
            Width(v) => Pair("width", v)
            Wrap(v) => Pair("wrap", v)
            Async => Bare("async")
            Autofocus => Bare("autofocus")
            Autoplay => Bare("autoplay")
            Checked => Bare("checked")
            Controls => Bare("controls")
            Default => Bare("default")
            Defer => Bare("defer")
            Disabled => Bare("disabled")
            Hidden => Bare("hidden")
            Inert => Bare("inert")
            Ismap => Bare("ismap")
            Itemscope => Bare("itemscope")
            Loop => Bare("loop")
            Multiple => Bare("multiple")
            Muted => Bare("muted")
            Nomodule => Bare("nomodule")
            Novalidate => Bare("novalidate")
            Open => Bare("open")
            Playsinline => Bare("playsinline")
            Readonly => Bare("readonly")
            Required => Bare("required")
            Reversed => Bare("reversed")
            Selected => Bare("selected")
            Custom(k, v) => Pair(k, v)
            Data(k, v) => Pair("data-${k}", v)
            Aria(k, v) => Pair("aria-${k}", v)
        }

    ## Names are canonical strings, so Custom("href", v) == Href(v) by design.
    is_eq : Attribute, Attribute -> Bool
    is_eq = |x, y|
        match (x.to_pair(), y.to_pair()) {
            (Pair(n1, v1), Pair(n2, v2)) => n1 == n2 and v1 == v2
            (Bare(n1), Bare(n2)) => n1 == n2
            _ => Bool.False
        }

    ## Join multiple class names into one Class attribute.
    classes : List(Str) -> Attribute
    classes = |names| Class(Str.join_with(names, " "))
}

expect Attribute.to_pair(Href("x")) == Pair("href", "x")
expect Attribute.to_pair(AcceptCharset("utf-8")) == Pair("accept-charset", "utf-8")
expect Attribute.to_pair(HttpEquiv("refresh")) == Pair("http-equiv", "refresh")
expect Attribute.to_pair(Disabled) == Bare("disabled")
expect Attribute.to_pair(Data("count", "3")) == Pair("data-count", "3")
expect Attribute.to_pair(Aria("label", "Close")) == Pair("aria-label", "Close")
expect Attribute.Custom("href", "x") == Attribute.Href("x")
expect Attribute.classes(["a", "b"]) == Attribute.Class("a b")
