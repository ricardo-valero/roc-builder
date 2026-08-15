# HTML attributes as data: one variant per standard attribute, with the
# payload its shape truly demands —
#   Str        freeform values (Href, Class, ...; also Max/Min/Step and Type,
#              which legitimately take dates, numbers, mimes, or token lists)
#   U64/I64    counts and indices (Colspan(U64); Tabindex(I64) since -1 matters)
#   F64        meter values (High, Low, Optimum)
#   enums      closed vocabularies (Dir([Ltr, Rtl, Auto]), Method, Loading,
#              Enctype maps to the full MIME strings, ...)
#   bare       boolean attributes; they cannot carry a value and render as
#              the name alone, never `=""`
# Custom/Data/Aria are the escape hatches for non-standard names and the
# infinite data-*/aria-* families. Attribute NAMES are emitted verbatim
# (trusted); VALUES are always escaped.
Attribute := [
    # Freeform values
    Accept(Str), AcceptCharset(Str), Accesskey(Str), Action(Str), Allow(Str), Alt(Str),
    Autocomplete(Str), Charset(Str), Cite(Str), Class(Str), Content(Str), Coords(Str),
    Datetime(Str), Dirname(Str), Download(Str), For(Str), Form(Str), Formaction(Str),
    Formtarget(Str), Headers(Str), Href(Str), Hreflang(Str), HttpEquiv(Str), Id(Str),
    Integrity(Str), Itemprop(Str), Label(Str), Lang(Str), List(Str), Max(Str),
    Media(Str), Min(Str), Name(Str), Pattern(Str), Ping(Str), Placeholder(Str),
    Poster(Str), Rel(Str), Role(Str), Sandbox(Str), Sizes(Str), Slot(Str),
    Src(Str), Srcdoc(Str), Srclang(Str), Srcset(Str), Step(Str), Style(Str),
    Target(Str), Title(Str), Type(Str), Usemap(Str), Value(Str),
    # Numeric values
    Cols(U64), Colspan(U64), Height(U64), Maxlength(U64), Minlength(U64), Rows(U64), Rowspan(U64), Size(U64), Span(U64), Width(U64),
    Start(I64), Tabindex(I64), High(F64), Low(F64), Optimum(F64),
    # Enumerated values
    Autocapitalize([Off, On, None, Sentences, Words, Characters]),
    Capture([User, Environment]),
    Contenteditable([True, False, PlaintextOnly]),
    Crossorigin([Anonymous, UseCredentials]),
    Decoding([Sync, Async, Auto]),
    Dir([Ltr, Rtl, Auto]),
    Draggable([True, False]),
    Enctype([FormUrlEncoded, MultipartFormData, TextPlain]),
    Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]),
    Formenctype([FormUrlEncoded, MultipartFormData, TextPlain]),
    Formmethod([Get, Post, Dialog]),
    Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]),
    Kind([Subtitles, Captions, Descriptions, Chapters, Metadata]),
    Loading([Lazy, Eager]),
    Method([Get, Post, Dialog]),
    Preload([None, Metadata, Auto]),
    Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]),
    Scope([Row, Col, Rowgroup, Colgroup]),
    Shape([Rect, Circle, Poly, Default]),
    Spellcheck([True, False]),
    Translate([Yes, No]),
    Wrap([Soft, Hard]),
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
            Autocomplete(v) => Pair("autocomplete", v)
            Charset(v) => Pair("charset", v)
            Cite(v) => Pair("cite", v)
            Class(v) => Pair("class", v)
            Content(v) => Pair("content", v)
            Coords(v) => Pair("coords", v)
            Datetime(v) => Pair("datetime", v)
            Dirname(v) => Pair("dirname", v)
            Download(v) => Pair("download", v)
            For(v) => Pair("for", v)
            Form(v) => Pair("form", v)
            Formaction(v) => Pair("formaction", v)
            Formtarget(v) => Pair("formtarget", v)
            Headers(v) => Pair("headers", v)
            Href(v) => Pair("href", v)
            Hreflang(v) => Pair("hreflang", v)
            HttpEquiv(v) => Pair("http-equiv", v)
            Id(v) => Pair("id", v)
            Integrity(v) => Pair("integrity", v)
            Itemprop(v) => Pair("itemprop", v)
            Label(v) => Pair("label", v)
            Lang(v) => Pair("lang", v)
            List(v) => Pair("list", v)
            Max(v) => Pair("max", v)
            Media(v) => Pair("media", v)
            Min(v) => Pair("min", v)
            Name(v) => Pair("name", v)
            Pattern(v) => Pair("pattern", v)
            Ping(v) => Pair("ping", v)
            Placeholder(v) => Pair("placeholder", v)
            Poster(v) => Pair("poster", v)
            Rel(v) => Pair("rel", v)
            Role(v) => Pair("role", v)
            Sandbox(v) => Pair("sandbox", v)
            Sizes(v) => Pair("sizes", v)
            Slot(v) => Pair("slot", v)
            Src(v) => Pair("src", v)
            Srcdoc(v) => Pair("srcdoc", v)
            Srclang(v) => Pair("srclang", v)
            Srcset(v) => Pair("srcset", v)
            Step(v) => Pair("step", v)
            Style(v) => Pair("style", v)
            Target(v) => Pair("target", v)
            Title(v) => Pair("title", v)
            Type(v) => Pair("type", v)
            Usemap(v) => Pair("usemap", v)
            Value(v) => Pair("value", v)
            Cols(v) => Pair("cols", v.to_str())
            Colspan(v) => Pair("colspan", v.to_str())
            Height(v) => Pair("height", v.to_str())
            Maxlength(v) => Pair("maxlength", v.to_str())
            Minlength(v) => Pair("minlength", v.to_str())
            Rows(v) => Pair("rows", v.to_str())
            Rowspan(v) => Pair("rowspan", v.to_str())
            Size(v) => Pair("size", v.to_str())
            Span(v) => Pair("span", v.to_str())
            Width(v) => Pair("width", v.to_str())
            Start(v) => Pair("start", v.to_str())
            Tabindex(v) => Pair("tabindex", v.to_str())
            High(v) => Pair("high", v.to_str())
            Low(v) => Pair("low", v.to_str())
            Optimum(v) => Pair("optimum", v.to_str())
            Autocapitalize(v) =>
                Pair(
                    "autocapitalize",
                    match v {
                        Off => "off"
                        On => "on"
                        None => "none"
                        Sentences => "sentences"
                        Words => "words"
                        Characters => "characters"
                    },
                )
            Capture(v) =>
                Pair(
                    "capture",
                    match v {
                        User => "user"
                        Environment => "environment"
                    },
                )
            Contenteditable(v) =>
                Pair(
                    "contenteditable",
                    match v {
                        True => "true"
                        False => "false"
                        PlaintextOnly => "plaintext-only"
                    },
                )
            Crossorigin(v) =>
                Pair(
                    "crossorigin",
                    match v {
                        Anonymous => "anonymous"
                        UseCredentials => "use-credentials"
                    },
                )
            Decoding(v) =>
                Pair(
                    "decoding",
                    match v {
                        Sync => "sync"
                        Async => "async"
                        Auto => "auto"
                    },
                )
            Dir(v) =>
                Pair(
                    "dir",
                    match v {
                        Ltr => "ltr"
                        Rtl => "rtl"
                        Auto => "auto"
                    },
                )
            Draggable(v) =>
                Pair(
                    "draggable",
                    match v {
                        True => "true"
                        False => "false"
                    },
                )
            Enctype(v) =>
                Pair(
                    "enctype",
                    match v {
                        FormUrlEncoded => "application/x-www-form-urlencoded"
                        MultipartFormData => "multipart/form-data"
                        TextPlain => "text/plain"
                    },
                )
            Enterkeyhint(v) =>
                Pair(
                    "enterkeyhint",
                    match v {
                        Enter => "enter"
                        Done => "done"
                        Go => "go"
                        Next => "next"
                        Previous => "previous"
                        Search => "search"
                        Send => "send"
                    },
                )
            Formenctype(v) =>
                Pair(
                    "formenctype",
                    match v {
                        FormUrlEncoded => "application/x-www-form-urlencoded"
                        MultipartFormData => "multipart/form-data"
                        TextPlain => "text/plain"
                    },
                )
            Formmethod(v) =>
                Pair(
                    "formmethod",
                    match v {
                        Get => "get"
                        Post => "post"
                        Dialog => "dialog"
                    },
                )
            Inputmode(v) =>
                Pair(
                    "inputmode",
                    match v {
                        None => "none"
                        Text => "text"
                        Decimal => "decimal"
                        Numeric => "numeric"
                        Tel => "tel"
                        Search => "search"
                        Email => "email"
                        Url => "url"
                    },
                )
            Kind(v) =>
                Pair(
                    "kind",
                    match v {
                        Subtitles => "subtitles"
                        Captions => "captions"
                        Descriptions => "descriptions"
                        Chapters => "chapters"
                        Metadata => "metadata"
                    },
                )
            Loading(v) =>
                Pair(
                    "loading",
                    match v {
                        Lazy => "lazy"
                        Eager => "eager"
                    },
                )
            Method(v) =>
                Pair(
                    "method",
                    match v {
                        Get => "get"
                        Post => "post"
                        Dialog => "dialog"
                    },
                )
            Preload(v) =>
                Pair(
                    "preload",
                    match v {
                        None => "none"
                        Metadata => "metadata"
                        Auto => "auto"
                    },
                )
            Referrerpolicy(v) =>
                Pair(
                    "referrerpolicy",
                    match v {
                        NoReferrer => "no-referrer"
                        NoReferrerWhenDowngrade => "no-referrer-when-downgrade"
                        Origin => "origin"
                        OriginWhenCrossOrigin => "origin-when-cross-origin"
                        SameOrigin => "same-origin"
                        StrictOrigin => "strict-origin"
                        StrictOriginWhenCrossOrigin => "strict-origin-when-cross-origin"
                        UnsafeUrl => "unsafe-url"
                    },
                )
            Scope(v) =>
                Pair(
                    "scope",
                    match v {
                        Row => "row"
                        Col => "col"
                        Rowgroup => "rowgroup"
                        Colgroup => "colgroup"
                    },
                )
            Shape(v) =>
                Pair(
                    "shape",
                    match v {
                        Rect => "rect"
                        Circle => "circle"
                        Poly => "poly"
                        Default => "default"
                    },
                )
            Spellcheck(v) =>
                Pair(
                    "spellcheck",
                    match v {
                        True => "true"
                        False => "false"
                    },
                )
            Translate(v) =>
                Pair(
                    "translate",
                    match v {
                        Yes => "yes"
                        No => "no"
                    },
                )
            Wrap(v) =>
                Pair(
                    "wrap",
                    match v {
                        Soft => "soft"
                        Hard => "hard"
                    },
                )
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

# Typed payloads
expect Attribute.to_pair(Colspan(2)) == Pair("colspan", "2")
expect Attribute.to_pair(Tabindex(-1)) == Pair("tabindex", "-1")
expect Attribute.to_pair(Dir(Rtl)) == Pair("dir", "rtl")
expect Attribute.to_pair(Enctype(MultipartFormData)) == Pair("enctype", "multipart/form-data")
expect Attribute.to_pair(Referrerpolicy(NoReferrerWhenDowngrade)) == Pair("referrerpolicy", "no-referrer-when-downgrade")
expect Attribute.to_pair(Loading(Lazy)) == Pair("loading", "lazy")
expect Attribute.to_pair(Optimum(0.5)) == Pair("optimum", "0.5")
