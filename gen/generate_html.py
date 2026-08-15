#!/usr/bin/env python3
"""Generate package/Html.roc from the WHATWG applicability tables.

Single source of truth for:
  - which attributes are global vs element-specific (WHATWG HTML Living Standard)
  - each attribute's payload type (Str / U64 / I64 / F64 / enumerated union / flag)
  - element shapes (void vs normal)

Run:  python3 gen/generate_html.py    (writes package/Html.roc in place)

Do not edit package/Html.roc by hand.
"""

import re
from pathlib import Path

OUT = Path(__file__).resolve().parent.parent / "package" / "Html.roc"


def kebab(name: str) -> str:
    return re.sub(r"(?<!^)([A-Z])", r"-\1", name).lower()


# --- enumerated attribute vocabularies --------------------------------------
# enum key -> list of (RocVariant, html value); value defaults to kebab(variant)
def vals(*names):
    return [(n, kebab(n)) for n in names]


ENCTYPE = [
    ("FormUrlEncoded", "application/x-www-form-urlencoded"),
    ("MultipartFormData", "multipart/form-data"),
    ("TextPlain", "text/plain"),
]

ENUMS = {
    "autocapitalize": vals("Off", "On", "None", "Sentences", "Words", "Characters"),
    "capture": vals("User", "Environment"),
    "contenteditable": vals("True", "False", "PlaintextOnly"),
    "crossorigin": vals("Anonymous", "UseCredentials"),
    "decoding": vals("Sync", "Async", "Auto"),
    "dir": vals("Ltr", "Rtl", "Auto"),
    "draggable": vals("True", "False"),
    "enctype": ENCTYPE,
    "enterkeyhint": vals("Enter", "Done", "Go", "Next", "Previous", "Search", "Send"),
    "method": vals("Get", "Post", "Dialog"),
    "inputmode": vals("None", "Text", "Decimal", "Numeric", "Tel", "Search", "Email", "Url"),
    "kind": vals("Subtitles", "Captions", "Descriptions", "Chapters", "Metadata"),
    "loading": vals("Lazy", "Eager"),
    "preload": vals("None", "Metadata", "Auto"),
    "referrerpolicy": vals(
        "NoReferrer", "NoReferrerWhenDowngrade", "Origin", "OriginWhenCrossOrigin",
        "SameOrigin", "StrictOrigin", "StrictOriginWhenCrossOrigin", "UnsafeUrl",
    ),
    "scope": vals("Row", "Col", "Rowgroup", "Colgroup"),
    "shape": vals("Rect", "Circle", "Poly", "Default"),
    "spellcheck": vals("True", "False"),
    "translate": vals("Yes", "No"),
    "wrap": vals("Soft", "Hard"),
}

# --- attribute registry: variant -> (kind, html name) ------------------------
# kind: "str" | "u64" | "i64" | "f64" | "flag" | ("enum", key)
# html name defaults to kebab(variant).
STR = """Accept AcceptCharset Accesskey Action Allow Alt Autocomplete Charset Cite
Class Content Coords Datetime Dirname Download For Form Formaction Formtarget
Headers Href Hreflang HttpEquiv Id Integrity Itemprop Label Lang List Max Media
Min Name Pattern Ping Placeholder Poster Rel Role Sandbox Sizes Slot Src Srcdoc
Srclang Srcset Step Style Target Title Type Usemap Value Abbr""".split()
U64 = "Cols Colspan Height Maxlength Minlength Rows Rowspan Size Span Width".split()
I64 = "Start Tabindex".split()
F64 = "High Low Optimum".split()
FLAGS = """Async Autofocus Autoplay Checked Controls Default Defer Disabled Hidden
Inert Ismap Itemscope Loop Multiple Muted Nomodule Novalidate Open Playsinline
Readonly Required Reversed Selected Formnovalidate""".split()
ENUM_ATTRS = {  # variant -> enum key
    "Autocapitalize": "autocapitalize", "Capture": "capture", "Contenteditable": "contenteditable",
    "Crossorigin": "crossorigin", "Decoding": "decoding", "Dir": "dir", "Draggable": "draggable",
    "Enctype": "enctype", "Enterkeyhint": "enterkeyhint", "Formenctype": "enctype",
    "Formmethod": "method", "Inputmode": "inputmode", "Kind": "kind", "Loading": "loading",
    "Method": "method", "Preload": "preload", "Referrerpolicy": "referrerpolicy",
    "Scope": "scope", "Shape": "shape", "Spellcheck": "spellcheck", "Translate": "translate",
    "Wrap": "wrap",
}

ATTRS = {}
for v in STR:
    ATTRS[v] = ("str", kebab(v))
for v in U64:
    ATTRS[v] = ("u64", kebab(v))
for v in I64:
    ATTRS[v] = ("i64", kebab(v))
for v in F64:
    ATTRS[v] = ("f64", kebab(v))
for v in FLAGS:
    ATTRS[v] = ("flag", kebab(v))
for v, key in ENUM_ATTRS.items():
    ATTRS[v] = (("enum", key), kebab(v))
# <object>'s `data` content attribute; distinct from the Data(k, v) data-* hatch
ATTRS["ObjectData"] = ("str", "data")

# --- globals (WHATWG global attributes) + escape hatches ---------------------
GLOBALS = [
    "Accesskey", "Autocapitalize", "Autofocus", "Class", "Contenteditable", "Dir",
    "Draggable", "Enterkeyhint", "Hidden", "Id", "Inert", "Inputmode", "Itemprop",
    "Itemscope", "Lang", "Role", "Slot", "Spellcheck", "Style", "Tabindex", "Title",
    "Translate",
]
HATCHES = ["Custom", "Data", "Aria"]  # special-cased: (Str, Str) payloads

# --- element tables (WHATWG applicability) -----------------------------------
# category -> [(ElementVariant, [specific attr variants])]; void elements separate
ELEMENTS = [
    ("Main root", [("Html", [])]),
    ("Sectioning root", [("Body", [])]),
    ("Content sectioning", [
        ("Address", []), ("Article", []), ("Aside", []), ("Footer", []),
        ("H1", []), ("H2", []), ("H3", []), ("H4", []), ("H5", []), ("H6", []),
        ("Header", []), ("Main", []), ("Nav", []), ("Section", []),
    ]),
    ("Demarcating edits", [("Del", ["Cite", "Datetime"]), ("Ins", ["Cite", "Datetime"])]),
    ("Document metadata", [("Head", []), ("Style", ["Media"]), ("Title", [])]),
    ("Embedded content", [
        ("Iframe", ["Src", "Srcdoc", "Name", "Sandbox", "Allow", "Width", "Height", "Referrerpolicy", "Loading"]),
        ("Object", ["ObjectData", "Type", "Name", "Form", "Width", "Height"]),
        ("Picture", []), ("Portal", ["Src"]),
    ]),
    ("Forms", [
        ("Button", ["Disabled", "Form", "Formaction", "Formenctype", "Formmethod", "Formnovalidate", "Formtarget", "Name", "Type", "Value"]),
        ("Datalist", []),
        ("Fieldset", ["Disabled", "Form", "Name"]),
        ("Form", ["AcceptCharset", "Action", "Autocomplete", "Enctype", "Method", "Name", "Novalidate", "Target", "Rel"]),
        ("Label", ["For"]),
        ("Legend", []),
        ("Meter", ["Value", "Min", "Max", "Low", "High", "Optimum"]),
        ("Optgroup", ["Disabled", "Label"]),
        ("Option", ["Disabled", "Label", "Selected", "Value"]),
        ("Output", ["For", "Form", "Name"]),
        ("Progress", ["Value", "Max"]),
        ("Select", ["Autocomplete", "Disabled", "Form", "Multiple", "Name", "Required", "Size"]),
        ("Textarea", ["Autocomplete", "Cols", "Dirname", "Disabled", "Form", "Maxlength", "Minlength", "Name", "Placeholder", "Readonly", "Required", "Rows", "Wrap"]),
    ]),
    ("Image and multimedia", [
        ("Audio", ["Src", "Crossorigin", "Preload", "Autoplay", "Loop", "Muted", "Controls"]),
        ("Map", ["Name"]),
        ("Video", ["Src", "Crossorigin", "Poster", "Preload", "Autoplay", "Playsinline", "Loop", "Muted", "Controls", "Width", "Height"]),
    ]),
    ("Inline text semantics", [
        ("A", ["Href", "Target", "Download", "Ping", "Rel", "Hreflang", "Type", "Referrerpolicy"]),
        ("Abbr", []), ("B", []), ("Bdi", []), ("Bdo", []),
        ("Cite", []), ("Code", []),
        ("Data", ["Value"]),
        ("Dfn", []), ("Em", []), ("I", []), ("Kbd", []), ("Mark", []),
        ("Q", ["Cite"]),
        ("Rp", []), ("Rt", []), ("Ruby", []), ("S", []), ("Samp", []),
        ("Small", []), ("Span", []), ("Strong", []), ("Sub", []), ("Sup", []),
        ("Time", ["Datetime"]),
        ("U", []), ("Var", []),
    ]),
    ("Interactive elements", [
        ("Details", ["Open"]), ("Dialog", ["Open"]), ("Summary", []),
    ]),
    ("SVG and MathML", [("Math", []), ("Svg", [])]),
    ("Scripting", [
        ("Canvas", ["Width", "Height"]),
        ("Noscript", []),
        ("Script", ["Src", "Type", "Nomodule", "Async", "Defer", "Crossorigin", "Integrity", "Referrerpolicy"]),
    ]),
    ("Table content", [
        ("Caption", []),
        ("Colgroup", ["Span"]),
        ("Table", []), ("Tbody", []),
        ("Td", ["Colspan", "Rowspan", "Headers"]),
        ("Tfoot", []),
        ("Th", ["Colspan", "Rowspan", "Headers", "Scope", "Abbr"]),
        ("Thead", []), ("Tr", []),
    ]),
    ("Text content", [
        ("Blockquote", ["Cite"]),
        ("Dd", []), ("Div", []), ("Dl", []), ("Dt", []),
        ("Figcaption", []), ("Figure", []),
        ("Li", ["Value"]),
        ("Menu", []),
        ("Ol", ["Reversed", "Start", "Type"]),
        ("P", []), ("Pre", []), ("Ul", []),
    ]),
    ("Web components", [("Slot", ["Name"]), ("Template", [])]),
]

VOIDS = [
    ("Area", ["Alt", "Coords", "Shape", "Href", "Target", "Download", "Ping", "Rel", "Referrerpolicy"]),
    ("Base", ["Href", "Target"]),
    ("Br", []),
    ("Col", ["Span"]),
    ("Embed", ["Src", "Type", "Width", "Height"]),
    ("Hr", []),
    ("Img", ["Alt", "Src", "Srcset", "Sizes", "Crossorigin", "Usemap", "Ismap", "Width", "Height", "Referrerpolicy", "Decoding", "Loading"]),
    ("Input", ["Accept", "Alt", "Autocomplete", "Capture", "Checked", "Dirname", "Disabled", "Form", "Formaction", "Formenctype", "Formmethod", "Formnovalidate", "Formtarget", "Height", "List", "Max", "Maxlength", "Min", "Minlength", "Multiple", "Name", "Pattern", "Placeholder", "Readonly", "Required", "Size", "Src", "Step", "Type", "Value", "Width"]),
    ("Link", ["Href", "Crossorigin", "Rel", "Media", "Integrity", "Hreflang", "Type", "Referrerpolicy", "Sizes", "Disabled"]),
    ("Meta", ["Name", "HttpEquiv", "Content", "Charset", "Media"]),
    ("Source", ["Type", "Src", "Srcset", "Sizes", "Media", "Width", "Height"]),
    ("Track", ["Default", "Kind", "Label", "Src", "Srclang"]),
    ("Wbr", []),
]


# --- code generation ---------------------------------------------------------

def enum_type_text(key):
    return "[" + ", ".join(v for v, _ in ENUMS[key]) + "]"


def attr_decl(variant):
    kind, _ = ATTRS[variant]
    if kind == "str":
        return f"{variant}(Str)"
    if kind == "u64":
        return f"{variant}(U64)"
    if kind == "i64":
        return f"{variant}(I64)"
    if kind == "f64":
        return f"{variant}(F64)"
    if kind == "flag":
        return variant
    if isinstance(kind, tuple):
        return f"{variant}({enum_type_text(kind[1])})"
    raise ValueError(variant)


def set_decls(specifics):
    decls = [attr_decl(v) for v in GLOBALS]
    decls += ["Custom(Str, Str)", "Data(Str, Str)", "Aria(Str, Str)"]
    decls += [attr_decl(v) for v in sorted(specifics)]
    return decls


def set_text(specifics):
    return "[" + ", ".join(set_decls(specifics)) + "]"


def attr_arm(variant):
    kind, html = ATTRS[variant]
    if kind == "str":
        return [f'{variant}(v) => out.push_raw(" {html}=\\"").push_escaped(v).push_raw("\\"")']
    if kind in ("u64", "i64", "f64"):
        return [f'{variant}(v) => out.push_raw(" {html}=\\"").push_raw(v.to_str()).push_raw("\\"")']
    if kind == "flag":
        return [f'{variant} => out.push_raw(" {html}")']
    if isinstance(kind, tuple):
        lines = [f'{variant}(v) => {{']
        lines.append(f'    word = match v {{')
        for roc_v, s in ENUMS[kind[1]]:
            lines.append(f'        {roc_v} => "{s}"')
        lines.append("    }")
        lines.append(f'    out.push_raw(" {html}=\\"").push_raw(word).push_raw("\\"")')
        lines.append("}")
        return lines
    raise ValueError(variant)


def main():
    all_elements = []  # (variant, specifics, void)
    for _, els in ELEMENTS:
        for name, spec in els:
            all_elements.append((name, spec, False))
    for name, spec in VOIDS:
        all_elements.append((name, spec, True))

    superset = sorted({v for _, spec, _ in all_elements for v in spec})

    # attribute-set groups: identical sets share one push function
    groups = {}  # signature -> group name
    el_group = {}
    for name, spec, _ in all_elements:
        sig = tuple(sorted(spec))
        if sig not in groups:
            groups[sig] = f"attrs_g{len(groups)}"
        el_group[name] = groups[sig]
    sup_sig = tuple(sorted(superset))
    if sup_sig not in groups:
        groups[sup_sig] = f"attrs_g{len(groups)}"
    sup_group = groups[sup_sig]

    L = []
    L.append("# GENERATED FILE — do not edit by hand. Regenerate with:")
    L.append("#     python3 gen/generate_html.py")
    L.append("# The WHATWG applicability tables (globals vs element-specific attributes),")
    L.append("# payload types, and element shapes all live in that script.")
    L.append("import /Html/SafeStr exposing [SafeStr]")
    L.append("")
    L.append("# An HTML document as data: one variant per element, and each element's")
    L.append("# attribute list is scoped per the WHATWG HTML Living Standard — the")
    L.append("# global attributes (plus Custom/Data/Aria escape hatches) and only that")
    L.append("# element's own content attributes. A misplaced attribute (Colspan on")
    L.append("# Input) is a type error. Shared attribute helpers stay expressible with")
    L.append("# an open annotation: `card : List([Class(Str), Id(Str), ..])`.")
    L.append("# Void elements carry no children slot. Text escapes on render; raw HTML")
    L.append("# requires DangerousRaw. CustomEl accepts the full attribute superset")
    L.append("# (unknown elements cannot be validated).")
    L.append("Html := [")
    for cat, els in ELEMENTS:
        L.append(f"    # {cat}")
        for name, spec in els:
            L.append(f"    {name}(List({set_text(spec)}), List(Html)),")
    L.append("    # Void elements — no children slot, no closing tag")
    for name, spec in VOIDS:
        L.append(f"    {name}(List({set_text(spec)})),")
    L.append("    # Leaves and escape hatches")
    L.append("    Text(Str),")
    L.append("    DangerousRaw(Str),")
    L.append(f"    CustomEl(Str, List({set_text(superset)}), List(Html)),")
    L.append("].{")
    L.append("    ## Render just the node — for fragments.")
    L.append("    render : Html -> Str")
    L.append("    render = |node|")
    L.append("        node.render_help(SafeStr.with_capacity(node.size_hint())).to_str()")
    L.append("")
    L.append("    ## Render a complete document, prefixed with `<!DOCTYPE html>`.")
    L.append("    render_doc : Html -> Str")
    L.append("    render_doc = |node|")
    L.append('        node.render_help(SafeStr.with_capacity(15 + node.size_hint()).push_raw("<!DOCTYPE html>")).to_str()')
    L.append("")
    L.append("    ## Join multiple class names into one Class attribute (usable on any element).")
    L.append("    classes : List(Str) -> [Class(Str), ..]")
    L.append('    classes = |names| Class(Str.join_with(names, " "))')
    L.append("")
    L.append("    # -- rendering internals (generated) --------------------------------------")
    L.append("")
    L.append("    ## Size pass: rough rendered-byte estimate to reserve the buffer")
    L.append("    ## (tag framing exact; 32 bytes per attribute; 2x text for escaping).")
    L.append("    size_hint : Html -> U64")
    L.append("    size_hint = |node|")
    L.append("        match node {")
    for name, _, void in all_elements:
        tag = name.lower()
        if void:
            L.append(f"            {name}(attrs) => {2 + len(tag)} + attrs.len() * 32")
        else:
            L.append(f"            {name}(attrs, kids) => {5 + 2 * len(tag)} + attrs.len() * 32 + Html.kids_size(kids)")
    L.append("            Text(content) => content.to_utf8().len() * 2")
    L.append("            DangerousRaw(content) => content.to_utf8().len()")
    L.append("            CustomEl(tag, attrs, kids) => 5 + 2 * tag.to_utf8().len() + attrs.len() * 32 + Html.kids_size(kids)")
    L.append("        }")
    L.append("")
    L.append("    kids_size : List(Html) -> U64")
    L.append("    kids_size = |kids| {")
    L.append("        var total = 0.U64")
    L.append("        var i = 0.U64")
    L.append("        while i < kids.len() {")
    L.append('            total = total + (kids.get(i) ?? Text("")).size_hint()')
    L.append("            i = i + 1")
    L.append("        }")
    L.append("        total")
    L.append("    }")
    L.append("")
    L.append("    ## Emit pass.")
    L.append("    render_help : Html, SafeStr -> SafeStr")
    L.append("    render_help = |node, buf|")
    L.append("        match node {")
    for name, _, void in all_elements:
        tag = name.lower()
        g = el_group[name]
        if void:
            L.append(f'            {name}(attrs) => Html.{g}(buf.push_raw("<{tag}"), attrs).push_raw(">")')
        else:
            L.append(f'            {name}(attrs, kids) => Html.close_el(Html.{g}(buf.push_raw("<{tag}"), attrs), "{tag}", kids)')
    L.append("            Text(content) => buf.push_escaped(content)")
    L.append("            DangerousRaw(content) => buf.push_raw(content)")
    L.append(f'            CustomEl(tag, attrs, kids) => Html.close_el(Html.{sup_group}(buf.push_raw("<").push_raw(tag), attrs), tag, kids)')
    L.append("        }")
    L.append("")
    L.append("    close_el : SafeStr, Str, List(Html) -> SafeStr")
    L.append("    close_el = |buf, tag, kids| {")
    L.append('        var out = buf.push_raw(">")')
    L.append("        var i = 0.U64")
    L.append("        while i < kids.len() {")
    L.append('            out = (kids.get(i) ?? Text("")).render_help(out)')
    L.append("            i = i + 1")
    L.append("        }")
    L.append('        out.push_raw("</").push_raw(tag).push_raw(">")')
    L.append("    }")
    L.append("")
    L.append("    # One attribute-emitter per distinct attribute set. Attribute NAMES are")
    L.append("    # trusted (emitted raw); VALUES are escaped. Flags render bare.")
    for sig, g in groups.items():
        L.append(f"    {g} : SafeStr, List({set_text(list(sig))}) -> SafeStr")
        L.append(f"    {g} = |buf, attrs| {{")
        L.append("        var out = buf")
        L.append("        var i = 0.U64")
        L.append("        while i < attrs.len() {")
        L.append("            out = match attrs.get(i) ?? Hidden {")
        for v in GLOBALS:
            for line in attr_arm(v):
                L.append("                " + line)
        L.append('                Custom(k, v) => out.push_raw(" ").push_raw(k).push_raw("=\\"").push_escaped(v).push_raw("\\"")')
        L.append('                Data(k, v) => out.push_raw(" data-").push_raw(k).push_raw("=\\"").push_escaped(v).push_raw("\\"")')
        L.append('                Aria(k, v) => out.push_raw(" aria-").push_raw(k).push_raw("=\\"").push_escaped(v).push_raw("\\"")')
        for v in sig:
            for line in attr_arm(v):
                L.append("                " + line)
        L.append("            }")
        L.append("            i = i + 1")
        L.append("        }")
        L.append("        out")
        L.append("    }")
        L.append("")
    if L[-1] == "":
        L.pop()
    L.append("}")
    L.append("")

    # --- tests ---------------------------------------------------------------
    L.append("# Ported regression tests + scoping tests. Negative examples (must be")
    L.append("# TYPE MISMATCH when uncommented):")
    L.append("#   Input([Colspan(2)])")
    L.append("#   Div([Checked], [])")
    L.append("#   Td([Placeholder(\"x\")], [])")
    L.append("")
    L.append("expect {")
    L.append("    doc : Html")
    L.append('    doc = Html([], [Body([], [P([Custom("example", "test")], [Text("Hello, World!")])])])')
    L.append('    doc.render_doc() == "<!DOCTYPE html><html><body><p example=\\"test\\">Hello, World!</p></body></html>"')
    L.append("}")
    L.append("")
    L.append("# Boolean attributes render bare (Hidden is global).")
    L.append("expect {")
    L.append("    doc : Html")
    L.append("    doc = Html([], [Body([], [P([Hidden], [Text(\"Hello, World!\")])])])")
    L.append('    doc.render_doc() == "<!DOCTYPE html><html><body><p hidden>Hello, World!</p></body></html>"')
    L.append("}")
    L.append("")
    L.append("# Text nodes are escaped; raw HTML needs DangerousRaw.")
    L.append("expect Html.render(Text(\"<script>alert('hi')</script>\")) == \"&lt;script&gt;alert(&#39;hi&#39;)&lt;/script&gt;\"")
    L.append("expect Html.render(DangerousRaw(\"<b>raw</b>\")) == \"<b>raw</b>\"")
    L.append("")
    L.append("# Attribute values escaped for the double-quoted context.")
    L.append("expect {")
    L.append("    doc : Html")
    L.append('    doc = A([Href("https://example.com/?q=\\"x\\"&y=1")], [Text("link")])')
    L.append('    doc.render() == "<a href=\\"https://example.com/?q=&quot;x&quot;&amp;y=1\\">link</a>"')
    L.append("}")
    L.append("")
    L.append("# Void elements: attrs only, no closing tag.")
    L.append('expect Html.render(Br([])) == "<br>"')
    L.append('expect Html.render(Img([Src("cat.png"), Alt("A cat")])) == "<img src=\\"cat.png\\" alt=\\"A cat\\">"')
    L.append("")
    L.append("# Custom elements accept the superset.")
    L.append('expect Html.render(CustomEl("my-widget", [Id("w")], [Text("hi")])) == "<my-widget id=\\"w\\">hi</my-widget>"')
    L.append("")
    L.append("# data-* / aria-* escape hatches are global; empty divs keep closing tags.")
    L.append('expect Html.render(Div([Data("count", "3"), Aria("label", "Close")], [])) == "<div data-count=\\"3\\" aria-label=\\"Close\\"></div>"')
    L.append('expect Html.render(Div([], [])) == "<div></div>"')
    L.append("")
    L.append("# Keyword-named variants; Cite as element and attribute (Blockquote allows it).")
    L.append('expect Html.render(Var([], [Text("x")])) == "<var>x</var>"')
    L.append('expect Html.render(Label([For("id1")], [Text("x")])) == "<label for=\\"id1\\">x</label>"')
    L.append('expect Html.render(Blockquote([Cite("src")], [Cite([], [Text("q")])])) == "<blockquote cite=\\"src\\"><cite>q</cite></blockquote>"')
    L.append("")
    L.append("# Scoping: element-specific attributes combine on their element.")
    L.append('expect Html.render(Input([Class("f"), Checked, Placeholder("name"), Formaction("/go")])) == "<input class=\\"f\\" checked placeholder=\\"name\\" formaction=\\"/go\\">"')
    L.append('expect Html.render(Td([Colspan(2), Headers("h")], [Text("x")])) == "<td colspan=\\"2\\" headers=\\"h\\">x</td>"')
    L.append('expect Html.render(Th([Scope(Row), Abbr("n")], [])) == "<th scope=\\"row\\" abbr=\\"n\\"></th>"')
    L.append('expect Html.render(Meter([Value("0.6"), Low(0.25), High(0.75), Optimum(0.5)], [])) == "<meter value=\\"0.6\\" low=\\"0.25\\" high=\\"0.75\\" optimum=\\"0.5\\"></meter>"')
    L.append('expect Html.render(Track([Default, Kind(Captions), Src("s.vtt"), Srclang("en"), Label("English")])) == "<track default kind=\\"captions\\" src=\\"s.vtt\\" srclang=\\"en\\" label=\\"English\\">"')
    L.append('expect Html.render(Object([ObjectData("movie.swf"), Type("application/x")], [])) == "<object data=\\"movie.swf\\" type=\\"application/x\\"></object>"')
    L.append('expect Html.render(Form([Method(Post), Enctype(MultipartFormData), Action("/submit")], [])) == "<form method=\\"post\\" enctype=\\"multipart/form-data\\" action=\\"/submit\\"></form>"')
    L.append('expect Html.render(Ol([Reversed, Start(3)], [])) == "<ol reversed start=\\"3\\"></ol>"')
    L.append("")
    L.append("# Shared helper (open annotation) flows into different elements' sets.")
    L.append("shared_card : Str -> List([Class(Str), Id(Str), ..])")
    L.append('shared_card = |cls| [Class(cls), Id("main")]')
    L.append("")
    L.append("expect {")
    L.append("    doc : Html")
    L.append('    doc = Td(shared_card("card").append(Colspan(2)), [Input(shared_card("card"))])')
    L.append('    doc.render() == "<td class=\\"card\\" id=\\"main\\" colspan=\\"2\\"><input class=\\"card\\" id=\\"main\\"></td>"')
    L.append("}")
    L.append("")
    L.append("# classes helper works on any element.")
    L.append('expect Html.render(Div([Html.classes(["a", "b"])], [])) == "<div class=\\"a b\\"></div>"')
    L.append("")

    OUT.write_text("\n".join(L))
    print(f"wrote {OUT} ({len(L)} lines, {len(groups)} attribute groups)")


if __name__ == "__main__":
    main()
