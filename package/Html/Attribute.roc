import /Html/AttrName exposing [AttrName]

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
    Valued(AttrName, Str),
    Flag(AttrName),
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
    custom = |attr_name, value| Valued(Custom(attr_name), value)

    ## Non-standard boolean attribute, name emitted verbatim.
    flag : Str -> Attribute
    flag = |attr_name| Flag(Custom(attr_name))

    ## `data-<suffix>="value"`
    data : Str, Str -> Attribute
    data = |suffix, value| Valued(Custom("data-${suffix}"), value)

    ## `aria-<suffix>="value"`
    aria : Str, Str -> Attribute
    aria = |suffix, value| Valued(Custom("aria-${suffix}"), value)

    ## Join multiple class names with spaces into one `class` attribute.
    classes : List(Str) -> Attribute
    classes = |names| Valued(Class, Str.join_with(names, " "))

    # Valued standard attributes

    accept : Str -> Attribute
    accept = |v| Valued(Accept, v)

    accept_charset : Str -> Attribute
    accept_charset = |v| Valued(AcceptCharset, v)

    accesskey : Str -> Attribute
    accesskey = |v| Valued(Accesskey, v)

    action : Str -> Attribute
    action = |v| Valued(Action, v)

    allow : Str -> Attribute
    allow = |v| Valued(Allow, v)

    alt : Str -> Attribute
    alt = |v| Valued(Alt, v)

    autocapitalize : Str -> Attribute
    autocapitalize = |v| Valued(Autocapitalize, v)

    autocomplete : Str -> Attribute
    autocomplete = |v| Valued(Autocomplete, v)

    capture : Str -> Attribute
    capture = |v| Valued(Capture, v)

    charset : Str -> Attribute
    charset = |v| Valued(Charset, v)

    cite : Str -> Attribute
    cite = |v| Valued(Cite, v)

    class : Str -> Attribute
    class = |v| Valued(Class, v)

    cols : Str -> Attribute
    cols = |v| Valued(Cols, v)

    colspan : Str -> Attribute
    colspan = |v| Valued(Colspan, v)

    content : Str -> Attribute
    content = |v| Valued(Content, v)

    contenteditable : Str -> Attribute
    contenteditable = |v| Valued(Contenteditable, v)

    coords : Str -> Attribute
    coords = |v| Valued(Coords, v)

    crossorigin : Str -> Attribute
    crossorigin = |v| Valued(Crossorigin, v)

    datetime : Str -> Attribute
    datetime = |v| Valued(Datetime, v)

    decoding : Str -> Attribute
    decoding = |v| Valued(Decoding, v)

    dir : Str -> Attribute
    dir = |v| Valued(Dir, v)

    dirname : Str -> Attribute
    dirname = |v| Valued(Dirname, v)

    download : Str -> Attribute
    download = |v| Valued(Download, v)

    draggable : Str -> Attribute
    draggable = |v| Valued(Draggable, v)

    enctype : Str -> Attribute
    enctype = |v| Valued(Enctype, v)

    enterkeyhint : Str -> Attribute
    enterkeyhint = |v| Valued(Enterkeyhint, v)

    ## `for` — named with a trailing underscore because `for` is a Roc keyword.
    for_ : Str -> Attribute
    for_ = |v| Valued(For, v)

    form : Str -> Attribute
    form = |v| Valued(Form, v)

    formaction : Str -> Attribute
    formaction = |v| Valued(Formaction, v)

    formenctype : Str -> Attribute
    formenctype = |v| Valued(Formenctype, v)

    formmethod : Str -> Attribute
    formmethod = |v| Valued(Formmethod, v)

    formtarget : Str -> Attribute
    formtarget = |v| Valued(Formtarget, v)

    headers : Str -> Attribute
    headers = |v| Valued(Headers, v)

    height : Str -> Attribute
    height = |v| Valued(Height, v)

    high : Str -> Attribute
    high = |v| Valued(High, v)

    href : Str -> Attribute
    href = |v| Valued(Href, v)

    hreflang : Str -> Attribute
    hreflang = |v| Valued(Hreflang, v)

    http_equiv : Str -> Attribute
    http_equiv = |v| Valued(HttpEquiv, v)

    id : Str -> Attribute
    id = |v| Valued(Id, v)

    inputmode : Str -> Attribute
    inputmode = |v| Valued(Inputmode, v)

    integrity : Str -> Attribute
    integrity = |v| Valued(Integrity, v)

    itemprop : Str -> Attribute
    itemprop = |v| Valued(Itemprop, v)

    kind : Str -> Attribute
    kind = |v| Valued(Kind, v)

    label : Str -> Attribute
    label = |v| Valued(Label, v)

    lang : Str -> Attribute
    lang = |v| Valued(Lang, v)

    list : Str -> Attribute
    list = |v| Valued(List, v)

    loading : Str -> Attribute
    loading = |v| Valued(Loading, v)

    low : Str -> Attribute
    low = |v| Valued(Low, v)

    max : Str -> Attribute
    max = |v| Valued(Max, v)

    maxlength : Str -> Attribute
    maxlength = |v| Valued(Maxlength, v)

    media : Str -> Attribute
    media = |v| Valued(Media, v)

    method : Str -> Attribute
    method = |v| Valued(Method, v)

    min : Str -> Attribute
    min = |v| Valued(Min, v)

    minlength : Str -> Attribute
    minlength = |v| Valued(Minlength, v)

    name : Str -> Attribute
    name = |v| Valued(Name, v)

    optimum : Str -> Attribute
    optimum = |v| Valued(Optimum, v)

    pattern : Str -> Attribute
    pattern = |v| Valued(Pattern, v)

    ping : Str -> Attribute
    ping = |v| Valued(Ping, v)

    placeholder : Str -> Attribute
    placeholder = |v| Valued(Placeholder, v)

    poster : Str -> Attribute
    poster = |v| Valued(Poster, v)

    preload : Str -> Attribute
    preload = |v| Valued(Preload, v)

    referrerpolicy : Str -> Attribute
    referrerpolicy = |v| Valued(Referrerpolicy, v)

    rel : Str -> Attribute
    rel = |v| Valued(Rel, v)

    role : Str -> Attribute
    role = |v| Valued(Role, v)

    rows : Str -> Attribute
    rows = |v| Valued(Rows, v)

    rowspan : Str -> Attribute
    rowspan = |v| Valued(Rowspan, v)

    sandbox : Str -> Attribute
    sandbox = |v| Valued(Sandbox, v)

    scope : Str -> Attribute
    scope = |v| Valued(Scope, v)

    shape : Str -> Attribute
    shape = |v| Valued(Shape, v)

    size : Str -> Attribute
    size = |v| Valued(Size, v)

    sizes : Str -> Attribute
    sizes = |v| Valued(Sizes, v)

    slot : Str -> Attribute
    slot = |v| Valued(Slot, v)

    span : Str -> Attribute
    span = |v| Valued(Span, v)

    spellcheck : Str -> Attribute
    spellcheck = |v| Valued(Spellcheck, v)

    src : Str -> Attribute
    src = |v| Valued(Src, v)

    srcdoc : Str -> Attribute
    srcdoc = |v| Valued(Srcdoc, v)

    srclang : Str -> Attribute
    srclang = |v| Valued(Srclang, v)

    srcset : Str -> Attribute
    srcset = |v| Valued(Srcset, v)

    start : Str -> Attribute
    start = |v| Valued(Start, v)

    step : Str -> Attribute
    step = |v| Valued(Step, v)

    style : Str -> Attribute
    style = |v| Valued(Style, v)

    tabindex : Str -> Attribute
    tabindex = |v| Valued(Tabindex, v)

    target : Str -> Attribute
    target = |v| Valued(Target, v)

    title : Str -> Attribute
    title = |v| Valued(Title, v)

    translate : Str -> Attribute
    translate = |v| Valued(Translate, v)

    ## `type` — named with a trailing underscore because `type` is a Roc keyword.
    type_ : Str -> Attribute
    type_ = |v| Valued(Type, v)

    usemap : Str -> Attribute
    usemap = |v| Valued(Usemap, v)

    value : Str -> Attribute
    value = |v| Valued(Value, v)

    width : Str -> Attribute
    width = |v| Valued(Width, v)

    wrap : Str -> Attribute
    wrap = |v| Valued(Wrap, v)

    # Boolean (flag) attributes — render as the bare name

    async : Attribute
    async = Flag(Async)

    autofocus : Attribute
    autofocus = Flag(Autofocus)

    autoplay : Attribute
    autoplay = Flag(Autoplay)

    checked : Attribute
    checked = Flag(Checked)

    controls : Attribute
    controls = Flag(Controls)

    default : Attribute
    default = Flag(Default)

    defer : Attribute
    defer = Flag(Defer)

    disabled : Attribute
    disabled = Flag(Disabled)

    hidden : Attribute
    hidden = Flag(Hidden)

    inert : Attribute
    inert = Flag(Inert)

    ismap : Attribute
    ismap = Flag(Ismap)

    itemscope : Attribute
    itemscope = Flag(Itemscope)

    loop : Attribute
    loop = Flag(Loop)

    multiple : Attribute
    multiple = Flag(Multiple)

    muted : Attribute
    muted = Flag(Muted)

    nomodule : Attribute
    nomodule = Flag(Nomodule)

    novalidate : Attribute
    novalidate = Flag(Novalidate)

    open : Attribute
    open = Flag(Open)

    playsinline : Attribute
    playsinline = Flag(Playsinline)

    readonly : Attribute
    readonly = Flag(Readonly)

    required : Attribute
    required = Flag(Required)

    reversed : Attribute
    reversed = Flag(Reversed)

    selected : Attribute
    selected = Flag(Selected)
}

expect Attribute.href("x") == Valued(Href, "x")
expect Attribute.disabled == Flag(Disabled)
expect Attribute.data("count", "3") == Valued(Custom("data-count"), "3")
expect Attribute.aria("label", "Close") == Valued(Custom("aria-label"), "Close")
expect Attribute.classes(["a", "b"]) == Valued(Class, "a b")
expect Attribute.for_("name") == Valued(For, "name")
