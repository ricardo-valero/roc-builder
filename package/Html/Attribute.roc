# HTML attributes.
#
# Two shapes: Valued(name, value) renders as ` name="value"` (value escaped),
# Flag(name) renders as the bare ` name` (boolean attributes, never `=""`).
#
# Named constructors cover the standard attributes; `data`, `aria`, `custom`,
# and `flag` are the escape hatches for everything else. Attribute NAMES are
# emitted verbatim (trusted); attribute VALUES are always escaped.
#
# `for` and `type` are Roc keywords, so those constructors are `for_`/`type_`.
Attribute := [
    Valued(Str, Str),
    Flag(Str),
].{
    is_eq : Attribute, Attribute -> Bool
    is_eq = |x, y|
        match (x, y) {
            (Valued(n1, v1), Valued(n2, v2)) => n1 == n2 and v1 == v2
            (Flag(n1), Flag(n2)) => n1 == n2
            _ => Bool.False
        }

    ## Non-standard valued attribute, name emitted verbatim.
    custom : Str, Str -> Attribute
    custom = |attr_name, value| Valued(attr_name, value)

    ## Non-standard boolean attribute, name emitted verbatim.
    flag : Str -> Attribute
    flag = |attr_name| Flag(attr_name)

    ## `data-<suffix>="value"`
    data : Str, Str -> Attribute
    data = |suffix, value| Valued("data-${suffix}", value)

    ## `aria-<suffix>="value"`
    aria : Str, Str -> Attribute
    aria = |suffix, value| Valued("aria-${suffix}", value)

    ## Join multiple class names with spaces into one `class` attribute.
    classes : List(Str) -> Attribute
    classes = |names| Valued("class", Str.join_with(names, " "))

    # Valued standard attributes

    accept : Str -> Attribute
    accept = |v| Valued("accept", v)

    accept_charset : Str -> Attribute
    accept_charset = |v| Valued("accept-charset", v)

    accesskey : Str -> Attribute
    accesskey = |v| Valued("accesskey", v)

    action : Str -> Attribute
    action = |v| Valued("action", v)

    allow : Str -> Attribute
    allow = |v| Valued("allow", v)

    alt : Str -> Attribute
    alt = |v| Valued("alt", v)

    autocapitalize : Str -> Attribute
    autocapitalize = |v| Valued("autocapitalize", v)

    autocomplete : Str -> Attribute
    autocomplete = |v| Valued("autocomplete", v)

    capture : Str -> Attribute
    capture = |v| Valued("capture", v)

    charset : Str -> Attribute
    charset = |v| Valued("charset", v)

    cite : Str -> Attribute
    cite = |v| Valued("cite", v)

    class : Str -> Attribute
    class = |v| Valued("class", v)

    cols : Str -> Attribute
    cols = |v| Valued("cols", v)

    colspan : Str -> Attribute
    colspan = |v| Valued("colspan", v)

    content : Str -> Attribute
    content = |v| Valued("content", v)

    contenteditable : Str -> Attribute
    contenteditable = |v| Valued("contenteditable", v)

    coords : Str -> Attribute
    coords = |v| Valued("coords", v)

    crossorigin : Str -> Attribute
    crossorigin = |v| Valued("crossorigin", v)

    datetime : Str -> Attribute
    datetime = |v| Valued("datetime", v)

    decoding : Str -> Attribute
    decoding = |v| Valued("decoding", v)

    dir : Str -> Attribute
    dir = |v| Valued("dir", v)

    dirname : Str -> Attribute
    dirname = |v| Valued("dirname", v)

    download : Str -> Attribute
    download = |v| Valued("download", v)

    draggable : Str -> Attribute
    draggable = |v| Valued("draggable", v)

    enctype : Str -> Attribute
    enctype = |v| Valued("enctype", v)

    enterkeyhint : Str -> Attribute
    enterkeyhint = |v| Valued("enterkeyhint", v)

    ## `for` — named with a trailing underscore because `for` is a Roc keyword.
    for_ : Str -> Attribute
    for_ = |v| Valued("for", v)

    form : Str -> Attribute
    form = |v| Valued("form", v)

    formaction : Str -> Attribute
    formaction = |v| Valued("formaction", v)

    formenctype : Str -> Attribute
    formenctype = |v| Valued("formenctype", v)

    formmethod : Str -> Attribute
    formmethod = |v| Valued("formmethod", v)

    formtarget : Str -> Attribute
    formtarget = |v| Valued("formtarget", v)

    headers : Str -> Attribute
    headers = |v| Valued("headers", v)

    height : Str -> Attribute
    height = |v| Valued("height", v)

    high : Str -> Attribute
    high = |v| Valued("high", v)

    href : Str -> Attribute
    href = |v| Valued("href", v)

    hreflang : Str -> Attribute
    hreflang = |v| Valued("hreflang", v)

    http_equiv : Str -> Attribute
    http_equiv = |v| Valued("http-equiv", v)

    id : Str -> Attribute
    id = |v| Valued("id", v)

    inputmode : Str -> Attribute
    inputmode = |v| Valued("inputmode", v)

    integrity : Str -> Attribute
    integrity = |v| Valued("integrity", v)

    itemprop : Str -> Attribute
    itemprop = |v| Valued("itemprop", v)

    kind : Str -> Attribute
    kind = |v| Valued("kind", v)

    label : Str -> Attribute
    label = |v| Valued("label", v)

    lang : Str -> Attribute
    lang = |v| Valued("lang", v)

    list : Str -> Attribute
    list = |v| Valued("list", v)

    loading : Str -> Attribute
    loading = |v| Valued("loading", v)

    low : Str -> Attribute
    low = |v| Valued("low", v)

    max : Str -> Attribute
    max = |v| Valued("max", v)

    maxlength : Str -> Attribute
    maxlength = |v| Valued("maxlength", v)

    media : Str -> Attribute
    media = |v| Valued("media", v)

    method : Str -> Attribute
    method = |v| Valued("method", v)

    min : Str -> Attribute
    min = |v| Valued("min", v)

    minlength : Str -> Attribute
    minlength = |v| Valued("minlength", v)

    name : Str -> Attribute
    name = |v| Valued("name", v)

    optimum : Str -> Attribute
    optimum = |v| Valued("optimum", v)

    pattern : Str -> Attribute
    pattern = |v| Valued("pattern", v)

    ping : Str -> Attribute
    ping = |v| Valued("ping", v)

    placeholder : Str -> Attribute
    placeholder = |v| Valued("placeholder", v)

    poster : Str -> Attribute
    poster = |v| Valued("poster", v)

    preload : Str -> Attribute
    preload = |v| Valued("preload", v)

    referrerpolicy : Str -> Attribute
    referrerpolicy = |v| Valued("referrerpolicy", v)

    rel : Str -> Attribute
    rel = |v| Valued("rel", v)

    role : Str -> Attribute
    role = |v| Valued("role", v)

    rows : Str -> Attribute
    rows = |v| Valued("rows", v)

    rowspan : Str -> Attribute
    rowspan = |v| Valued("rowspan", v)

    sandbox : Str -> Attribute
    sandbox = |v| Valued("sandbox", v)

    scope : Str -> Attribute
    scope = |v| Valued("scope", v)

    shape : Str -> Attribute
    shape = |v| Valued("shape", v)

    size : Str -> Attribute
    size = |v| Valued("size", v)

    sizes : Str -> Attribute
    sizes = |v| Valued("sizes", v)

    slot : Str -> Attribute
    slot = |v| Valued("slot", v)

    span : Str -> Attribute
    span = |v| Valued("span", v)

    spellcheck : Str -> Attribute
    spellcheck = |v| Valued("spellcheck", v)

    src : Str -> Attribute
    src = |v| Valued("src", v)

    srcdoc : Str -> Attribute
    srcdoc = |v| Valued("srcdoc", v)

    srclang : Str -> Attribute
    srclang = |v| Valued("srclang", v)

    srcset : Str -> Attribute
    srcset = |v| Valued("srcset", v)

    start : Str -> Attribute
    start = |v| Valued("start", v)

    step : Str -> Attribute
    step = |v| Valued("step", v)

    style : Str -> Attribute
    style = |v| Valued("style", v)

    tabindex : Str -> Attribute
    tabindex = |v| Valued("tabindex", v)

    target : Str -> Attribute
    target = |v| Valued("target", v)

    title : Str -> Attribute
    title = |v| Valued("title", v)

    translate : Str -> Attribute
    translate = |v| Valued("translate", v)

    ## `type` — named with a trailing underscore because `type` is a Roc keyword.
    type_ : Str -> Attribute
    type_ = |v| Valued("type", v)

    usemap : Str -> Attribute
    usemap = |v| Valued("usemap", v)

    value : Str -> Attribute
    value = |v| Valued("value", v)

    width : Str -> Attribute
    width = |v| Valued("width", v)

    wrap : Str -> Attribute
    wrap = |v| Valued("wrap", v)

    # Boolean (flag) attributes — render as the bare name

    async : Attribute
    async = Flag("async")

    autofocus : Attribute
    autofocus = Flag("autofocus")

    autoplay : Attribute
    autoplay = Flag("autoplay")

    checked : Attribute
    checked = Flag("checked")

    controls : Attribute
    controls = Flag("controls")

    default : Attribute
    default = Flag("default")

    defer : Attribute
    defer = Flag("defer")

    disabled : Attribute
    disabled = Flag("disabled")

    hidden : Attribute
    hidden = Flag("hidden")

    inert : Attribute
    inert = Flag("inert")

    ismap : Attribute
    ismap = Flag("ismap")

    itemscope : Attribute
    itemscope = Flag("itemscope")

    loop : Attribute
    loop = Flag("loop")

    multiple : Attribute
    multiple = Flag("multiple")

    muted : Attribute
    muted = Flag("muted")

    nomodule : Attribute
    nomodule = Flag("nomodule")

    novalidate : Attribute
    novalidate = Flag("novalidate")

    open : Attribute
    open = Flag("open")

    playsinline : Attribute
    playsinline = Flag("playsinline")

    readonly : Attribute
    readonly = Flag("readonly")

    required : Attribute
    required = Flag("required")

    reversed : Attribute
    reversed = Flag("reversed")

    selected : Attribute
    selected = Flag("selected")
}

expect Attribute.href("x") == Valued("href", "x")
expect Attribute.disabled == Flag("disabled")
expect Attribute.data("count", "3") == Valued("data-count", "3")
expect Attribute.aria("label", "Close") == Valued("aria-label", "Close")
expect Attribute.classes(["a", "b"]) == Valued("class", "a b")
expect Attribute.for_("name") == Valued("for", "name")
