# Generate package/Html.roc from the WHATWG applicability tables.
#
# Single source of truth for:
#   - which attributes are global vs element-specific (WHATWG HTML Living Standard)
#   - each attribute's payload type (Str / U64 / I64 / F64 / enumerated union / flag)
#   - element shapes (void vs normal)
#
# Run from the repo root:  roc gen/generate_html.roc
#
# Do not edit package/Html.roc by hand.
app [main!] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.21.0/4rAQg8kUYZ3Vksr4qMQHpaFYNiHSn9GgS7gVxghd1XYV.tar.zst",
}

import pf.Path
import pf.OsStr
import pf.Stdout

Kind : [S, U, I, F, Flag, En(List((Str, Str)))]
Entry : { name : Str, kind : Kind, html : Str }
Element : { name : Str, spec : List(Str) }

# --- small utilities ---------------------------------------------------------

## CamelCase -> kebab-case ("AcceptCharset" -> "accept-charset"; also lowercases).
kebab : Str -> Str
kebab = |name| {
    src = name.to_utf8()
    var out = List.with_capacity(src.len() + 4)
    var i = 0.U64
    while i < src.len() {
        b = src.get(i) ?? 0
        out = if b >= 65 and b <= 90 {
            with_dash = if i > 0 { out.append(45) } else { out }
            with_dash.append(b + 32)
        } else {
            out.append(b)
        }
        i = i + 1
    }
    Str.from_utf8_lossy(out)
}

lex_lt : Str, Str -> Bool
lex_lt = |a, b| lex_lt_help(a.to_utf8(), b.to_utf8(), 0)

lex_lt_help : List(U8), List(U8), U64 -> Bool
lex_lt_help = |ab, bb, i|
    if i >= ab.len() {
        i < bb.len()
    } else if i >= bb.len() {
        Bool.False
    } else {
        ca = ab.get(i) ?? 0
        cb = bb.get(i) ?? 0
        if ca < cb {
            Bool.True
        } else if ca > cb {
            Bool.False
        } else {
            lex_lt_help(ab, bb, i + 1)
        }
    }

sort_strs : List(Str) -> List(Str)
sort_strs = |xs| {
    var out = []
    var i = 0.U64
    while i < xs.len() {
        x = xs.get(i) ?? ""
        var j = 0.U64
        while j < out.len() and lex_lt(out.get(j) ?? "", x) {
            j = j + 1
        }
        left = List.sublist(out, { start: 0, len: j })
        right = List.sublist(out, { start: j, len: out.len() - j })
        out = left.append(x).concat(right)
        i = i + 1
    }
    out
}

contains_str : List(Str), Str -> Bool
contains_str = |xs, x| {
    var i = 0.U64
    var found = Bool.False
    while i < xs.len() {
        found = found or (xs.get(i) ?? "") == x
        i = i + 1
    }
    found
}

expect kebab("AcceptCharset") == "accept-charset"
expect kebab("Href") == "href"
expect kebab("H1") == "h1"
expect sort_strs(["b", "a", "c", "a"]) == ["a", "a", "b", "c"]

# --- enumerated attribute vocabularies ---------------------------------------

vals : List(Str) -> List((Str, Str))
vals = |names| {
    var out = []
    var i = 0.U64
    while i < names.len() {
        n = names.get(i) ?? ""
        out = out.append((n, kebab(n)))
        i = i + 1
    }
    out
}

enctype_vals : List((Str, Str))
enctype_vals = [
    ("FormUrlEncoded", "application/x-www-form-urlencoded"),
    ("MultipartFormData", "multipart/form-data"),
    ("TextPlain", "text/plain"),
]

method_vals : List((Str, Str))
method_vals = vals(["Get", "Post", "Dialog"])

enums : List((Str, List((Str, Str))))
enums = [
    ("autocapitalize", vals(["Off", "On", "None", "Sentences", "Words", "Characters"])),
    ("capture", vals(["User", "Environment"])),
    ("contenteditable", vals(["True", "False", "PlaintextOnly"])),
    ("crossorigin", vals(["Anonymous", "UseCredentials"])),
    ("decoding", vals(["Sync", "Async", "Auto"])),
    ("dir", vals(["Ltr", "Rtl", "Auto"])),
    ("draggable", vals(["True", "False"])),
    ("enctype", enctype_vals),
    ("enterkeyhint", vals(["Enter", "Done", "Go", "Next", "Previous", "Search", "Send"])),
    ("method", method_vals),
    ("inputmode", vals(["None", "Text", "Decimal", "Numeric", "Tel", "Search", "Email", "Url"])),
    ("kind", vals(["Subtitles", "Captions", "Descriptions", "Chapters", "Metadata"])),
    ("loading", vals(["Lazy", "Eager"])),
    ("preload", vals(["None", "Metadata", "Auto"])),
    ("referrerpolicy", vals(["NoReferrer", "NoReferrerWhenDowngrade", "Origin", "OriginWhenCrossOrigin", "SameOrigin", "StrictOrigin", "StrictOriginWhenCrossOrigin", "UnsafeUrl"])),
    ("scope", vals(["Row", "Col", "Rowgroup", "Colgroup"])),
    ("shape", vals(["Rect", "Circle", "Poly", "Default"])),
    ("spellcheck", vals(["True", "False"])),
    ("translate", vals(["Yes", "No"])),
    ("wrap", vals(["Soft", "Hard"])),
]

lookup_enum : Str -> List((Str, Str))
lookup_enum = |key| {
    var i = 0.U64
    var found = []
    while i < enums.len() {
        match enums.get(i) ?? ("", []) {
            (k, pairs) => {
                found = if k == key { pairs } else { found }
            }
        }
        i = i + 1
    }
    if found.len() == 0 {
        crash("unknown enum key: ${key}")
    } else {
        found
    }
}

# --- attribute registry ------------------------------------------------------

str_attrs : List(Str)
str_attrs = ["Accept", "AcceptCharset", "Accesskey", "Action", "Allow", "Alt", "Autocomplete", "Charset", "Cite", "Class", "Content", "Coords", "Datetime", "Dirname", "Download", "For", "Form", "Formaction", "Formtarget", "Headers", "Href", "Hreflang", "HttpEquiv", "Id", "Integrity", "Itemprop", "Label", "Lang", "List", "Max", "Media", "Min", "Name", "Pattern", "Ping", "Placeholder", "Poster", "Rel", "Role", "Sandbox", "Sizes", "Slot", "Src", "Srcdoc", "Srclang", "Srcset", "Step", "Style", "Target", "Title", "Type", "Usemap", "Value", "Abbr"]

u64_attrs : List(Str)
u64_attrs = ["Cols", "Colspan", "Height", "Maxlength", "Minlength", "Rows", "Rowspan", "Size", "Span", "Width"]

i64_attrs : List(Str)
i64_attrs = ["Start", "Tabindex"]

f64_attrs : List(Str)
f64_attrs = ["High", "Low", "Optimum"]

flag_attrs : List(Str)
flag_attrs = ["Async", "Autofocus", "Autoplay", "Checked", "Controls", "Default", "Defer", "Disabled", "Hidden", "Inert", "Ismap", "Itemscope", "Loop", "Multiple", "Muted", "Nomodule", "Novalidate", "Open", "Playsinline", "Readonly", "Required", "Reversed", "Selected", "Formnovalidate"]

enum_attrs : List((Str, Str))
enum_attrs = [
    ("Autocapitalize", "autocapitalize"), ("Capture", "capture"), ("Contenteditable", "contenteditable"),
    ("Crossorigin", "crossorigin"), ("Decoding", "decoding"), ("Dir", "dir"), ("Draggable", "draggable"),
    ("Enctype", "enctype"), ("Enterkeyhint", "enterkeyhint"), ("Formenctype", "enctype"),
    ("Formmethod", "method"), ("Inputmode", "inputmode"), ("Kind", "kind"), ("Loading", "loading"),
    ("Method", "method"), ("Preload", "preload"), ("Referrerpolicy", "referrerpolicy"),
    ("Scope", "scope"), ("Shape", "shape"), ("Spellcheck", "spellcheck"), ("Translate", "translate"),
    ("Wrap", "wrap"),
]

registry : List(Entry)
registry = {
    var out = []
    var i = 0.U64
    while i < str_attrs.len() {
        n = str_attrs.get(i) ?? ""
        out = out.append({ name: n, kind: S, html: kebab(n) })
        i = i + 1
    }
    var iu = 0.U64
    while iu < u64_attrs.len() {
        n = u64_attrs.get(iu) ?? ""
        out = out.append({ name: n, kind: U, html: kebab(n) })
        iu = iu + 1
    }
    var ii = 0.U64
    while ii < i64_attrs.len() {
        n = i64_attrs.get(ii) ?? ""
        out = out.append({ name: n, kind: I, html: kebab(n) })
        ii = ii + 1
    }
    var jf = 0.U64
    while jf < f64_attrs.len() {
        n = f64_attrs.get(jf) ?? ""
        out = out.append({ name: n, kind: F, html: kebab(n) })
        jf = jf + 1
    }
    var kfl = 0.U64
    while kfl < flag_attrs.len() {
        n = flag_attrs.get(kfl) ?? ""
        out = out.append({ name: n, kind: Flag, html: kebab(n) })
        kfl = kfl + 1
    }
    var ke = 0.U64
    while ke < enum_attrs.len() {
        match enum_attrs.get(ke) ?? ("", "") {
            (n, key) => {
                out = out.append({ name: n, kind: En(lookup_enum(key)), html: kebab(n) })
            }
        }
        ke = ke + 1
    }
    # <object>'s `data` content attribute; distinct from the Data(k, v) data-* hatch
    out.append({ name: "ObjectData", kind: S, html: "data" })
}

lookup_attr : Str -> Entry
lookup_attr = |name| {
    var i = 0.U64
    var found = { name: "", kind: Flag, html: "" }
    while i < registry.len() {
        e = registry.get(i) ?? { name: "", kind: Flag, html: "" }
        found = if e.name == name { e } else { found }
        i = i + 1
    }
    if found.name == "" {
        crash("unknown attribute: ${name}")
    } else {
        found
    }
}

# --- globals + element tables ------------------------------------------------

globals : List(Str)
globals = ["Accesskey", "Autocapitalize", "Autofocus", "Class", "Contenteditable", "Dir", "Draggable", "Enterkeyhint", "Hidden", "Id", "Inert", "Inputmode", "Itemprop", "Itemscope", "Lang", "Role", "Slot", "Spellcheck", "Style", "Tabindex", "Title", "Translate"]

el : Str, List(Str) -> Element
el = |name, spec| { name: name, spec: spec }

elements : List((Str, List(Element)))
elements = [
    ("Main root", [el("Html", [])]),
    ("Sectioning root", [el("Body", [])]),
    ("Content sectioning", [
        el("Address", []), el("Article", []), el("Aside", []), el("Footer", []),
        el("H1", []), el("H2", []), el("H3", []), el("H4", []), el("H5", []), el("H6", []),
        el("Header", []), el("Main", []), el("Nav", []), el("Section", []),
    ]),
    ("Demarcating edits", [el("Del", ["Cite", "Datetime"]), el("Ins", ["Cite", "Datetime"])]),
    ("Document metadata", [el("Head", []), el("Style", ["Media"]), el("Title", [])]),
    ("Embedded content", [
        el("Iframe", ["Src", "Srcdoc", "Name", "Sandbox", "Allow", "Width", "Height", "Referrerpolicy", "Loading"]),
        el("Object", ["ObjectData", "Type", "Name", "Form", "Width", "Height"]),
        el("Picture", []), el("Portal", ["Src"]),
    ]),
    ("Forms", [
        el("Button", ["Disabled", "Form", "Formaction", "Formenctype", "Formmethod", "Formnovalidate", "Formtarget", "Name", "Type", "Value"]),
        el("Datalist", []),
        el("Fieldset", ["Disabled", "Form", "Name"]),
        el("Form", ["AcceptCharset", "Action", "Autocomplete", "Enctype", "Method", "Name", "Novalidate", "Target", "Rel"]),
        el("Label", ["For"]),
        el("Legend", []),
        el("Meter", ["Value", "Min", "Max", "Low", "High", "Optimum"]),
        el("Optgroup", ["Disabled", "Label"]),
        el("Option", ["Disabled", "Label", "Selected", "Value"]),
        el("Output", ["For", "Form", "Name"]),
        el("Progress", ["Value", "Max"]),
        el("Select", ["Autocomplete", "Disabled", "Form", "Multiple", "Name", "Required", "Size"]),
        el("Textarea", ["Autocomplete", "Cols", "Dirname", "Disabled", "Form", "Maxlength", "Minlength", "Name", "Placeholder", "Readonly", "Required", "Rows", "Wrap"]),
    ]),
    ("Image and multimedia", [
        el("Audio", ["Src", "Crossorigin", "Preload", "Autoplay", "Loop", "Muted", "Controls"]),
        el("Map", ["Name"]),
        el("Video", ["Src", "Crossorigin", "Poster", "Preload", "Autoplay", "Playsinline", "Loop", "Muted", "Controls", "Width", "Height"]),
    ]),
    ("Inline text semantics", [
        el("A", ["Href", "Target", "Download", "Ping", "Rel", "Hreflang", "Type", "Referrerpolicy"]),
        el("Abbr", []), el("B", []), el("Bdi", []), el("Bdo", []),
        el("Cite", []), el("Code", []),
        el("Data", ["Value"]),
        el("Dfn", []), el("Em", []), el("I", []), el("Kbd", []), el("Mark", []),
        el("Q", ["Cite"]),
        el("Rp", []), el("Rt", []), el("Ruby", []), el("S", []), el("Samp", []),
        el("Small", []), el("Span", []), el("Strong", []), el("Sub", []), el("Sup", []),
        el("Time", ["Datetime"]),
        el("U", []), el("Var", []),
    ]),
    ("Interactive elements", [
        el("Details", ["Open"]), el("Dialog", ["Open"]), el("Summary", []),
    ]),
    ("SVG and MathML", [el("Math", []), el("Svg", [])]),
    ("Scripting", [
        el("Canvas", ["Width", "Height"]),
        el("Noscript", []),
        el("Script", ["Src", "Type", "Nomodule", "Async", "Defer", "Crossorigin", "Integrity", "Referrerpolicy"]),
    ]),
    ("Table content", [
        el("Caption", []),
        el("Colgroup", ["Span"]),
        el("Table", []), el("Tbody", []),
        el("Td", ["Colspan", "Rowspan", "Headers"]),
        el("Tfoot", []),
        el("Th", ["Colspan", "Rowspan", "Headers", "Scope", "Abbr"]),
        el("Thead", []), el("Tr", []),
    ]),
    ("Text content", [
        el("Blockquote", ["Cite"]),
        el("Dd", []), el("Div", []), el("Dl", []), el("Dt", []),
        el("Figcaption", []), el("Figure", []),
        el("Li", ["Value"]),
        el("Menu", []),
        el("Ol", ["Reversed", "Start", "Type"]),
        el("P", []), el("Pre", []), el("Ul", []),
    ]),
    ("Web components", [el("Slot", ["Name"]), el("Template", [])]),
]

voids : List(Element)
voids = [
    el("Area", ["Alt", "Coords", "Shape", "Href", "Target", "Download", "Ping", "Rel", "Referrerpolicy"]),
    el("Base", ["Href", "Target"]),
    el("Br", []),
    el("Col", ["Span"]),
    el("Embed", ["Src", "Type", "Width", "Height"]),
    el("Hr", []),
    el("Img", ["Alt", "Src", "Srcset", "Sizes", "Crossorigin", "Usemap", "Ismap", "Width", "Height", "Referrerpolicy", "Decoding", "Loading"]),
    el("Input", ["Accept", "Alt", "Autocomplete", "Capture", "Checked", "Dirname", "Disabled", "Form", "Formaction", "Formenctype", "Formmethod", "Formnovalidate", "Formtarget", "Height", "List", "Max", "Maxlength", "Min", "Minlength", "Multiple", "Name", "Pattern", "Placeholder", "Readonly", "Required", "Size", "Src", "Step", "Type", "Value", "Width"]),
    el("Link", ["Href", "Crossorigin", "Rel", "Media", "Integrity", "Hreflang", "Type", "Referrerpolicy", "Sizes", "Disabled"]),
    el("Meta", ["Name", "HttpEquiv", "Content", "Charset", "Media"]),
    el("Source", ["Type", "Src", "Srcset", "Sizes", "Media", "Width", "Height"]),
    el("Track", ["Default", "Kind", "Label", "Src", "Srclang"]),
    el("Wbr", []),
]

# --- code generation ---------------------------------------------------------

enum_type_text : List((Str, Str)) -> Str
enum_type_text = |pairs| {
    var names = []
    var i = 0.U64
    while i < pairs.len() {
        match pairs.get(i) ?? ("", "") {
            (n, _) => {
                names = names.append(n)
            }
        }
        i = i + 1
    }
    "[${Str.join_with(names, ", ")}]"
}

attr_decl : Str -> Str
attr_decl = |variant| {
    e = lookup_attr(variant)
    match e.kind {
        S => "${e.name}(Str)"
        U => "${e.name}(U64)"
        I => "${e.name}(I64)"
        F => "${e.name}(F64)"
        Flag => e.name
        En(pairs) => "${e.name}(${enum_type_text(pairs)})"
    }
}

global_decls : {} -> List(Str)
global_decls = |_| {
    var out = []
    var i = 0.U64
    while i < globals.len() {
        out = out.append(attr_decl(globals.get(i) ?? ""))
        i = i + 1
    }
    out.append("Custom(Str, Str)").append("Data(Str, Str)").append("Aria(Str, Str)")
}

set_text : List(Str) -> Str
set_text = |specifics| {
    sorted = sort_strs(specifics)
    var decls = []
    var i = 0.U64
    while i < sorted.len() {
        decls = decls.append(attr_decl(sorted.get(i) ?? ""))
        i = i + 1
    }
    "GlobalAttrs([${Str.join_with(decls, ", ")}])"
}

## Emitter match arms for one attribute, at base indentation.
attr_arm : Str -> List(Str)
attr_arm = |variant| {
    e = lookup_attr(variant)
    match e.kind {
        S => ["${e.name}(v) => out.push_raw(\" ${e.html}=\\\"\").push_escaped(v).push_raw(\"\\\"\")"]
        U => ["${e.name}(v) => out.push_raw(\" ${e.html}=\\\"\").push_raw(v.to_str()).push_raw(\"\\\"\")"]
        I => ["${e.name}(v) => out.push_raw(\" ${e.html}=\\\"\").push_raw(v.to_str()).push_raw(\"\\\"\")"]
        F => ["${e.name}(v) => out.push_raw(\" ${e.html}=\\\"\").push_raw(v.to_str()).push_raw(\"\\\"\")"]
        Flag => ["${e.name} => out.push_raw(\" ${e.html}\")"]
        En(pairs) => {
            var lines = ["${e.name}(v) => {", "    word = match v {"]
            var i = 0.U64
            while i < pairs.len() {
                match pairs.get(i) ?? ("", "") {
                    (roc_v, s) => {
                        lines = lines.append("        ${roc_v} => \"${s}\"")
                    }
                }
                i = i + 1
            }
            lines
                .append("    }")
                .append("    out.push_raw(\" ${e.html}=\\\"\").push_raw(word).push_raw(\"\\\"\")")
                .append("}")
        }
    }
}

## Append `lines` each prefixed with `indent`.
push_indented : List(Str), List(Str), Str -> List(Str)
push_indented = |acc, lines, indent| {
    var out = acc
    var i = 0.U64
    while i < lines.len() {
        line = lines.get(i) ?? ""
        out = out.append("${indent}${line}")
        i = i + 1
    }
    out
}

sig_key : List(Str) -> Str
sig_key = |spec| Str.join_with(sort_strs(spec), "|")

main! = |_args| {
    # flatten elements; compute superset and attribute-set groups
    var all_els = [] # { name, spec, void : Bool }
    var ci = 0.U64
    while ci < elements.len() {
        match elements.get(ci) ?? ("", []) {
            (_, els) => {
                var ei = 0.U64
                while ei < els.len() {
                    e = els.get(ei) ?? el("", [])
                    all_els = all_els.append({ name: e.name, spec: e.spec, void: Bool.False })
                    ei = ei + 1
                }
            }
        }
        ci = ci + 1
    }
    var vi = 0.U64
    while vi < voids.len() {
        e = voids.get(vi) ?? el("", [])
        all_els = all_els.append({ name: e.name, spec: e.spec, void: Bool.True })
        vi = vi + 1
    }

    var superset = []
    var si = 0.U64
    while si < all_els.len() {
        e = all_els.get(si) ?? { name: "", spec: [], void: Bool.False }
        var sj = 0.U64
        while sj < e.spec.len() {
            v = e.spec.get(sj) ?? ""
            superset = if contains_str(superset, v) { superset } else { superset.append(v) }
            sj = sj + 1
        }
        si = si + 1
    }
    superset = sort_strs(superset)

    # groups: identical attribute sets share one emitter, in first-seen order
    var groups = [] # { key : Str, names : List(Str), fn_name : Str }
    var gi = 0.U64
    while gi < all_els.len() {
        e = all_els.get(gi) ?? { name: "", spec: [], void: Bool.False }
        key = sig_key(e.spec)
        var known = Bool.False
        var kj = 0.U64
        while kj < groups.len() {
            g = groups.get(kj) ?? { key: "", names: [], fn_name: "" }
            known = known or g.key == key
            kj = kj + 1
        }
        groups = if known {
            groups
        } else {
            groups.append({ key: key, names: sort_strs(e.spec), fn_name: "attrs_g${groups.len().to_str()}" })
        }
        gi = gi + 1
    }
    sup_key = sig_key(superset)
    var sup_known = Bool.False
    var sk = 0.U64
    while sk < groups.len() {
        g = groups.get(sk) ?? { key: "", names: [], fn_name: "" }
        sup_known = sup_known or g.key == sup_key
        sk = sk + 1
    }
    groups = if sup_known {
        groups
    } else {
        groups.append({ key: sup_key, names: superset, fn_name: "attrs_g${groups.len().to_str()}" })
    }

    group_for = |spec| {
        key = sig_key(spec)
        var fn_name = ""
        var i = 0.U64
        while i < groups.len() {
            g = groups.get(i) ?? { key: "", names: [], fn_name: "" }
            fn_name = if g.key == key { g.fn_name } else { fn_name }
            i = i + 1
        }
        fn_name
    }
    sup_group = group_for(superset)

    # --- emit ---------------------------------------------------------------
    var lines = [
        "# GENERATED FILE — do not edit by hand. Regenerate with:",
        "#     roc gen/generate_html.roc",
        "# The WHATWG applicability tables (globals vs element-specific attributes),",
        "# payload types, and element shapes all live in that app.",
        "import /Html/SafeStr exposing [SafeStr]",
        "",
        "# The WHATWG global attributes (+ Custom/Data/Aria escape hatches), with an",
        "# extension slot for each element's own attributes: GlobalAttrs([Checked, ...]).",
        "GlobalAttrs(ext) : [",
    ]
    gd = global_decls({})
    var gj = 0.U64
    while gj < gd.len() {
        chunk = List.sublist(gd, { start: gj, len: 5 })
        var parts = []
        var pk = 0.U64
        while pk < chunk.len() {
            d = chunk.get(pk) ?? ""
            parts = parts.append("${d},")
            pk = pk + 1
        }
        joined = Str.join_with(parts, " ")
        lines = lines.append("    ${joined}")
        gj = gj + 5
    }
    lines = lines
        .append("    ..ext,")
        .append("]")
        .append("")
        .append("# An HTML document as data: one variant per element, and each element's")
        .append("# attribute list is scoped per the WHATWG HTML Living Standard — the")
        .append("# global attributes (plus Custom/Data/Aria escape hatches) and only that")
        .append("# element's own content attributes. A misplaced attribute (Colspan on")
        .append("# Input) is a type error. Shared attribute helpers stay expressible with")
        .append("# an open annotation: `card : List([Class(Str), Id(Str), ..])`.")
        .append("# Void elements carry no children slot. Text escapes on render; raw HTML")
        .append("# requires DangerousRaw. CustomEl accepts the full attribute superset")
        .append("# (unknown elements cannot be validated).")
        .append("Html := [")
    var c2 = 0.U64
    while c2 < elements.len() {
        match elements.get(c2) ?? ("", []) {
            (cat, els) => {
                lines = lines.append("    # ${cat}")
                var e2 = 0.U64
                while e2 < els.len() {
                    e = els.get(e2) ?? el("", [])
                    lines = lines.append("    ${e.name}(List(${set_text(e.spec)}), List(Html)),")
                    e2 = e2 + 1
                }
            }
        }
        c2 = c2 + 1
    }
    lines = lines.append("    # Void elements — no children slot, no closing tag")
    var v2 = 0.U64
    while v2 < voids.len() {
        e = voids.get(v2) ?? el("", [])
        lines = lines.append("    ${e.name}(List(${set_text(e.spec)})),")
        v2 = v2 + 1
    }
    lines = lines
        .append("    # Leaves and escape hatches")
        .append("    Text(Str),")
        .append("    DangerousRaw(Str),")
        .append("    CustomEl(Str, List(${set_text(superset)}), List(Html)),")
        .append("].{")
        .append("    ## Render just the node — for fragments.")
        .append("    render : Html -> Str")
        .append("    render = |node|")
        .append("        node.render_help(SafeStr.with_capacity(node.size_hint())).to_str()")
        .append("")
        .append("    ## Render a complete document, prefixed with `<!DOCTYPE html>`.")
        .append("    render_doc : Html -> Str")
        .append("    render_doc = |node|")
        .append("        node.render_help(SafeStr.with_capacity(15 + node.size_hint()).push_raw(\"<!DOCTYPE html>\")).to_str()")
        .append("")
        .append("    ## Join multiple class names into one Class attribute (usable on any element).")
        .append("    classes : List(Str) -> [Class(Str), ..]")
        .append("    classes = |names| Class(Str.join_with(names, \" \"))")
        .append("")
        .append("    # -- rendering internals (generated) --------------------------------------")
        .append("")
        .append("    ## Size pass: rough rendered-byte estimate to reserve the buffer")
        .append("    ## (tag framing exact; 32 bytes per attribute; 2x text for escaping).")
        .append("    size_hint : Html -> U64")
        .append("    size_hint = |node|")
        .append("        match node {")
    var s2 = 0.U64
    while s2 < all_els.len() {
        e = all_els.get(s2) ?? { name: "", spec: [], void: Bool.False }
        tag_len = kebab(e.name).to_utf8().len()
        lines = if e.void {
            lines.append("            ${e.name}(attrs) => Html.void_size(${(2 + tag_len).to_str()}, attrs.len())")
        } else {
            lines.append("            ${e.name}(attrs, kids) => Html.el_size(${(5 + 2 * tag_len).to_str()}, attrs.len(), kids)")
        }
        s2 = s2 + 1
    }
    lines = lines
        .append("            Text(content) => content.to_utf8().len() * 2")
        .append("            DangerousRaw(content) => content.to_utf8().len()")
        .append("            CustomEl(tag, attrs, kids) => Html.el_size(5 + 2 * tag.to_utf8().len(), attrs.len(), kids)")
        .append("        }")
        .append("")
        .append("    ## base framing + 32 bytes per attribute (+ children).")
        .append("    el_size : U64, U64, List(Html) -> U64")
        .append("    el_size = |base, n_attrs, kids| base + n_attrs * 32 + Html.kids_size(kids)")
        .append("")
        .append("    void_size : U64, U64 -> U64")
        .append("    void_size = |base, n_attrs| base + n_attrs * 32")
        .append("")
        .append("    kids_size : List(Html) -> U64")
        .append("    kids_size = |kids| {")
        .append("        var total = 0.U64")
        .append("        var i = 0.U64")
        .append("        while i < kids.len() {")
        .append("            total = total + (kids.get(i) ?? Text(\"\")).size_hint()")
        .append("            i = i + 1")
        .append("        }")
        .append("        total")
        .append("    }")
        .append("")
        .append("    ## Emit pass.")
        .append("    render_help : Html, SafeStr -> SafeStr")
        .append("    render_help = |node, buf|")
        .append("        match node {")
    var r2 = 0.U64
    while r2 < all_els.len() {
        e = all_els.get(r2) ?? { name: "", spec: [], void: Bool.False }
        tag = kebab(e.name)
        g = group_for(e.spec)
        lines = if e.void {
            lines.append("            ${e.name}(attrs) => Html.${g}(buf.push_raw(\"<${tag}\"), attrs).push_raw(\">\")")
        } else {
            lines.append("            ${e.name}(attrs, kids) => Html.close_el(Html.${g}(buf.push_raw(\"<${tag}\"), attrs), \"${tag}\", kids)")
        }
        r2 = r2 + 1
    }
    lines = lines
        .append("            Text(content) => buf.push_escaped(content)")
        .append("            DangerousRaw(content) => buf.push_raw(content)")
        .append("            CustomEl(tag, attrs, kids) => Html.close_el(Html.${sup_group}(buf.push_raw(\"<\").push_raw(tag), attrs), tag, kids)")
        .append("        }")
        .append("")
        .append("    close_el : SafeStr, Str, List(Html) -> SafeStr")
        .append("    close_el = |buf, tag, kids| {")
        .append("        var out = buf.push_raw(\">\")")
        .append("        var i = 0.U64")
        .append("        while i < kids.len() {")
        .append("            out = (kids.get(i) ?? Text(\"\")).render_help(out)")
        .append("            i = i + 1")
        .append("        }")
        .append("        out.push_raw(\"</\").push_raw(tag).push_raw(\">\")")
        .append("    }")
        .append("")
        .append("    # One attribute-emitter per distinct attribute set. Attribute NAMES are")
        .append("    # trusted (emitted raw); VALUES are escaped. Flags render bare.")
    var g2 = 0.U64
    while g2 < groups.len() {
        grp = groups.get(g2) ?? { key: "", names: [], fn_name: "" }
        lines = lines
            .append("    ${grp.fn_name} : SafeStr, List(${set_text(grp.names)}) -> SafeStr")
            .append("    ${grp.fn_name} = |buf, attrs| {")
            .append("        var out = buf")
            .append("        var i = 0.U64")
            .append("        while i < attrs.len() {")
            .append("            out = match attrs.get(i) ?? Hidden {")
        var ga = 0.U64
        while ga < globals.len() {
            lines = push_indented(lines, attr_arm(globals.get(ga) ?? ""), "                ")
            ga = ga + 1
        }
        lines = lines
            .append("                Custom(k, v) => out.push_raw(\" \").push_raw(k).push_raw(\"=\\\"\").push_escaped(v).push_raw(\"\\\"\")")
            .append("                Data(k, v) => out.push_raw(\" data-\").push_raw(k).push_raw(\"=\\\"\").push_escaped(v).push_raw(\"\\\"\")")
            .append("                Aria(k, v) => out.push_raw(\" aria-\").push_raw(k).push_raw(\"=\\\"\").push_escaped(v).push_raw(\"\\\"\")")
        var gs = 0.U64
        while gs < grp.names.len() {
            lines = push_indented(lines, attr_arm(grp.names.get(gs) ?? ""), "                ")
            gs = gs + 1
        }
        lines = lines
            .append("            }")
            .append("            i = i + 1")
            .append("        }")
            .append("        out")
            .append("    }")
        lines = if g2 + 1 < groups.len() { lines.append("") } else { lines }
        g2 = g2 + 1
    }
    lines = lines
        .append("}")
        .append("")
        .append("# Ported regression tests + scoping tests. Negative examples (must be")
        .append("# TYPE MISMATCH when uncommented):")
        .append("#   Input([Colspan(2)])")
        .append("#   Div([Checked], [])")
        .append("#   Td([Placeholder(\"x\")], [])")
        .append("")
        .append("expect {")
        .append("    doc : Html")
        .append("    doc = Html([], [Body([], [P([Custom(\"example\", \"test\")], [Text(\"Hello, World!\")])])])")
        .append("    doc.render_doc() == \"<!DOCTYPE html><html><body><p example=\\\"test\\\">Hello, World!</p></body></html>\"")
        .append("}")
        .append("")
        .append("# Boolean attributes render bare (Hidden is global).")
        .append("expect {")
        .append("    doc : Html")
        .append("    doc = Html([], [Body([], [P([Hidden], [Text(\"Hello, World!\")])])])")
        .append("    doc.render_doc() == \"<!DOCTYPE html><html><body><p hidden>Hello, World!</p></body></html>\"")
        .append("}")
        .append("")
        .append("# Text nodes are escaped; raw HTML needs DangerousRaw.")
        .append("expect Html.render(Text(\"<script>alert('hi')</script>\")) == \"&lt;script&gt;alert(&#39;hi&#39;)&lt;/script&gt;\"")
        .append("expect Html.render(DangerousRaw(\"<b>raw</b>\")) == \"<b>raw</b>\"")
        .append("")
        .append("# Attribute values escaped for the double-quoted context.")
        .append("expect {")
        .append("    doc : Html")
        .append("    doc = A([Href(\"https://example.com/?q=\\\"x\\\"&y=1\")], [Text(\"link\")])")
        .append("    doc.render() == \"<a href=\\\"https://example.com/?q=&quot;x&quot;&amp;y=1\\\">link</a>\"")
        .append("}")
        .append("")
        .append("# Void elements: attrs only, no closing tag.")
        .append("expect Html.render(Br([])) == \"<br>\"")
        .append("expect Html.render(Img([Src(\"cat.png\"), Alt(\"A cat\")])) == \"<img src=\\\"cat.png\\\" alt=\\\"A cat\\\">\"")
        .append("")
        .append("# Custom elements accept the superset.")
        .append("expect Html.render(CustomEl(\"my-widget\", [Id(\"w\")], [Text(\"hi\")])) == \"<my-widget id=\\\"w\\\">hi</my-widget>\"")
        .append("")
        .append("# data-* / aria-* escape hatches are global; empty divs keep closing tags.")
        .append("expect Html.render(Div([Data(\"count\", \"3\"), Aria(\"label\", \"Close\")], [])) == \"<div data-count=\\\"3\\\" aria-label=\\\"Close\\\"></div>\"")
        .append("expect Html.render(Div([], [])) == \"<div></div>\"")
        .append("")
        .append("# Keyword-named variants; Cite as element and attribute (Blockquote allows it).")
        .append("expect Html.render(Var([], [Text(\"x\")])) == \"<var>x</var>\"")
        .append("expect Html.render(Label([For(\"id1\")], [Text(\"x\")])) == \"<label for=\\\"id1\\\">x</label>\"")
        .append("expect Html.render(Blockquote([Cite(\"src\")], [Cite([], [Text(\"q\")])])) == \"<blockquote cite=\\\"src\\\"><cite>q</cite></blockquote>\"")
        .append("")
        .append("# Scoping: element-specific attributes combine on their element.")
        .append("expect Html.render(Input([Class(\"f\"), Checked, Placeholder(\"name\"), Formaction(\"/go\")])) == \"<input class=\\\"f\\\" checked placeholder=\\\"name\\\" formaction=\\\"/go\\\">\"")
        .append("expect Html.render(Td([Colspan(2), Headers(\"h\")], [Text(\"x\")])) == \"<td colspan=\\\"2\\\" headers=\\\"h\\\">x</td>\"")
        .append("expect Html.render(Th([Scope(Row), Abbr(\"n\")], [])) == \"<th scope=\\\"row\\\" abbr=\\\"n\\\"></th>\"")
        .append("expect Html.render(Meter([Value(\"0.6\"), Low(0.25), High(0.75), Optimum(0.5)], [])) == \"<meter value=\\\"0.6\\\" low=\\\"0.25\\\" high=\\\"0.75\\\" optimum=\\\"0.5\\\"></meter>\"")
        .append("expect Html.render(Track([Default, Kind(Captions), Src(\"s.vtt\"), Srclang(\"en\"), Label(\"English\")])) == \"<track default kind=\\\"captions\\\" src=\\\"s.vtt\\\" srclang=\\\"en\\\" label=\\\"English\\\">\"")
        .append("expect Html.render(Object([ObjectData(\"movie.swf\"), Type(\"application/x\")], [])) == \"<object data=\\\"movie.swf\\\" type=\\\"application/x\\\"></object>\"")
        .append("expect Html.render(Form([Method(Post), Enctype(MultipartFormData), Action(\"/submit\")], [])) == \"<form method=\\\"post\\\" enctype=\\\"multipart/form-data\\\" action=\\\"/submit\\\"></form>\"")
        .append("expect Html.render(Ol([Reversed, Start(3)], [])) == \"<ol reversed start=\\\"3\\\"></ol>\"")
        .append("")
        .append("# Shared helper (open annotation) flows into different elements' sets.")
        .append("shared_card : Str -> List([Class(Str), Id(Str), ..])")
        .append("shared_card = |cls| [Class(cls), Id(\"main\")]")
        .append("")
        .append("expect {")
        .append("    doc : Html")
        .append("    doc = Td(shared_card(\"card\").append(Colspan(2)), [Input(shared_card(\"card\"))])")
        .append("    doc.render() == \"<td class=\\\"card\\\" id=\\\"main\\\" colspan=\\\"2\\\"><input class=\\\"card\\\" id=\\\"main\\\"></td>\"")
        .append("}")
        .append("")
        .append("# classes helper works on any element.")
        .append("expect Html.render(Div([Html.classes([\"a\", \"b\"])], [])) == \"<div class=\\\"a b\\\"></div>\"")
        .append("")

    content = Str.join_with(lines, "\n")
    out_path = Path.from_os_str(OsStr.from_str("package/Html.roc"))
    match out_path.write_utf8!(content) {
        Ok({}) => {
            Stdout.line!("wrote package/Html.roc (${lines.len().to_str()} lines)") ?? {}
        }
        Err(_) => {
            Stdout.line!("ERROR: could not write package/Html.roc") ?? {}
        }
    }
    Ok({})
}
