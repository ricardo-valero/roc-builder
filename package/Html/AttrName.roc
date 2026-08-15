# Standard HTML attribute names, symmetric with Tag/VoidTag.
# Custom(name) is the escape hatch for data-*/aria-* (infinite families)
# and anything non-standard; the name is emitted verbatim.
AttrName := [
    Accept, AcceptCharset, Accesskey, Action, Allow, Alt, Autocapitalize, Autocomplete,
    Capture, Charset, Cite, Class, Cols, Colspan, Content, Contenteditable, Coords, Crossorigin,
    Datetime, Decoding, Dir, Dirname, Download, Draggable,
    Enctype, Enterkeyhint,
    For, Form, Formaction, Formenctype, Formmethod, Formtarget,
    Headers, Height, High, Href, Hreflang, HttpEquiv,
    Id, Inputmode, Integrity, Itemprop,
    Kind,
    Label, Lang, List, Loading, Low,
    Max, Maxlength, Media, Method, Min, Minlength,
    Name,
    Optimum,
    Pattern, Ping, Placeholder, Poster, Preload,
    Referrerpolicy, Rel, Role, Rows, Rowspan,
    Sandbox, Scope, Shape, Size, Sizes, Slot, Span, Spellcheck, Src, Srcdoc, Srclang, Srcset, Start, Step, Style,
    Tabindex, Target, Title, Translate, Type,
    Usemap,
    Value,
    Width, Wrap,
    # Boolean attributes (typically used with Flag)
    Async, Autofocus, Autoplay, Checked, Controls, Default, Defer, Disabled, Hidden,
    Inert, Ismap, Itemscope, Loop, Multiple, Muted, Nomodule, Novalidate, Open,
    Playsinline, Readonly, Required, Reversed, Selected,
    # Escape hatch
    Custom(Str),
].{
    to_str : AttrName -> Str
    to_str = |attr_name|
        match attr_name {
            Accept => "accept"
            AcceptCharset => "accept-charset"
            Accesskey => "accesskey"
            Action => "action"
            Allow => "allow"
            Alt => "alt"
            Autocapitalize => "autocapitalize"
            Autocomplete => "autocomplete"
            Capture => "capture"
            Charset => "charset"
            Cite => "cite"
            Class => "class"
            Cols => "cols"
            Colspan => "colspan"
            Content => "content"
            Contenteditable => "contenteditable"
            Coords => "coords"
            Crossorigin => "crossorigin"
            Datetime => "datetime"
            Decoding => "decoding"
            Dir => "dir"
            Dirname => "dirname"
            Download => "download"
            Draggable => "draggable"
            Enctype => "enctype"
            Enterkeyhint => "enterkeyhint"
            For => "for"
            Form => "form"
            Formaction => "formaction"
            Formenctype => "formenctype"
            Formmethod => "formmethod"
            Formtarget => "formtarget"
            Headers => "headers"
            Height => "height"
            High => "high"
            Href => "href"
            Hreflang => "hreflang"
            HttpEquiv => "http-equiv"
            Id => "id"
            Inputmode => "inputmode"
            Integrity => "integrity"
            Itemprop => "itemprop"
            Kind => "kind"
            Label => "label"
            Lang => "lang"
            List => "list"
            Loading => "loading"
            Low => "low"
            Max => "max"
            Maxlength => "maxlength"
            Media => "media"
            Method => "method"
            Min => "min"
            Minlength => "minlength"
            Name => "name"
            Optimum => "optimum"
            Pattern => "pattern"
            Ping => "ping"
            Placeholder => "placeholder"
            Poster => "poster"
            Preload => "preload"
            Referrerpolicy => "referrerpolicy"
            Rel => "rel"
            Role => "role"
            Rows => "rows"
            Rowspan => "rowspan"
            Sandbox => "sandbox"
            Scope => "scope"
            Shape => "shape"
            Size => "size"
            Sizes => "sizes"
            Slot => "slot"
            Span => "span"
            Spellcheck => "spellcheck"
            Src => "src"
            Srcdoc => "srcdoc"
            Srclang => "srclang"
            Srcset => "srcset"
            Start => "start"
            Step => "step"
            Style => "style"
            Tabindex => "tabindex"
            Target => "target"
            Title => "title"
            Translate => "translate"
            Type => "type"
            Usemap => "usemap"
            Value => "value"
            Width => "width"
            Wrap => "wrap"
            Async => "async"
            Autofocus => "autofocus"
            Autoplay => "autoplay"
            Checked => "checked"
            Controls => "controls"
            Default => "default"
            Defer => "defer"
            Disabled => "disabled"
            Hidden => "hidden"
            Inert => "inert"
            Ismap => "ismap"
            Itemscope => "itemscope"
            Loop => "loop"
            Multiple => "multiple"
            Muted => "muted"
            Nomodule => "nomodule"
            Novalidate => "novalidate"
            Open => "open"
            Playsinline => "playsinline"
            Readonly => "readonly"
            Required => "required"
            Reversed => "reversed"
            Selected => "selected"
            Custom(raw) => raw
        }

    ## Names are canonical strings, so Custom("href") == Href by design.
    is_eq : AttrName, AttrName -> Bool
    is_eq = |x, y| x.to_str() == y.to_str()
}

expect AttrName.to_str(Href) == "href"
expect AttrName.to_str(AcceptCharset) == "accept-charset"
expect AttrName.to_str(HttpEquiv) == "http-equiv"
expect AttrName.to_str(Custom("data-count")) == "data-count"
expect AttrName.Custom("href") == AttrName.Href
