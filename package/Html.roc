# GENERATED FILE — do not edit by hand. Regenerate with:
#     python3 gen/generate_html.py
# The WHATWG applicability tables (globals vs element-specific attributes),
# payload types, and element shapes all live in that script.
import /Html/SafeStr exposing [SafeStr]

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
    Html(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    # Sectioning root
    Body(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    # Content sectioning
    Address(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Article(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Aside(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Footer(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    H1(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    H2(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    H3(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    H4(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    H5(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    H6(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Header(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Main(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Nav(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Section(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    # Demarcating edits
    Del(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Cite(Str), Datetime(Str)]), List(Html)),
    Ins(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Cite(Str), Datetime(Str)]), List(Html)),
    # Document metadata
    Head(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Style(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Media(Str)]), List(Html)),
    Title(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    # Embedded content
    Iframe(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Allow(Str), Height(U64), Loading([Lazy, Eager]), Name(Str), Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Sandbox(Str), Src(Str), Srcdoc(Str), Width(U64)]), List(Html)),
    Object(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Form(Str), Height(U64), Name(Str), ObjectData(Str), Type(Str), Width(U64)]), List(Html)),
    Picture(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Portal(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Src(Str)]), List(Html)),
    # Forms
    Button(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Disabled, Form(Str), Formaction(Str), Formenctype([FormUrlEncoded, MultipartFormData, TextPlain]), Formmethod([Get, Post, Dialog]), Formnovalidate, Formtarget(Str), Name(Str), Type(Str), Value(Str)]), List(Html)),
    Datalist(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Fieldset(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Disabled, Form(Str), Name(Str)]), List(Html)),
    Form(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), AcceptCharset(Str), Action(Str), Autocomplete(Str), Enctype([FormUrlEncoded, MultipartFormData, TextPlain]), Method([Get, Post, Dialog]), Name(Str), Novalidate, Rel(Str), Target(Str)]), List(Html)),
    Label(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), For(Str)]), List(Html)),
    Legend(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Meter(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), High(F64), Low(F64), Max(Str), Min(Str), Optimum(F64), Value(Str)]), List(Html)),
    Optgroup(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Disabled, Label(Str)]), List(Html)),
    Option(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Disabled, Label(Str), Selected, Value(Str)]), List(Html)),
    Output(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), For(Str), Form(Str), Name(Str)]), List(Html)),
    Progress(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Max(Str), Value(Str)]), List(Html)),
    Select(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Autocomplete(Str), Disabled, Form(Str), Multiple, Name(Str), Required, Size(U64)]), List(Html)),
    Textarea(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Autocomplete(Str), Cols(U64), Dirname(Str), Disabled, Form(Str), Maxlength(U64), Minlength(U64), Name(Str), Placeholder(Str), Readonly, Required, Rows(U64), Wrap([Soft, Hard])]), List(Html)),
    # Image and multimedia
    Audio(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Autoplay, Controls, Crossorigin([Anonymous, UseCredentials]), Loop, Muted, Preload([None, Metadata, Auto]), Src(Str)]), List(Html)),
    Map(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Name(Str)]), List(Html)),
    Video(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Autoplay, Controls, Crossorigin([Anonymous, UseCredentials]), Height(U64), Loop, Muted, Playsinline, Poster(Str), Preload([None, Metadata, Auto]), Src(Str), Width(U64)]), List(Html)),
    # Inline text semantics
    A(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Download(Str), Href(Str), Hreflang(Str), Ping(Str), Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Rel(Str), Target(Str), Type(Str)]), List(Html)),
    Abbr(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    B(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Bdi(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Bdo(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Cite(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Code(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Data(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Value(Str)]), List(Html)),
    Dfn(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Em(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    I(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Kbd(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Mark(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Q(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Cite(Str)]), List(Html)),
    Rp(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Rt(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Ruby(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    S(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Samp(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Small(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Span(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Strong(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Sub(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Sup(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Time(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Datetime(Str)]), List(Html)),
    U(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Var(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    # Interactive elements
    Details(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Open]), List(Html)),
    Dialog(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Open]), List(Html)),
    Summary(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    # SVG and MathML
    Math(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Svg(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    # Scripting
    Canvas(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Height(U64), Width(U64)]), List(Html)),
    Noscript(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Script(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Async, Crossorigin([Anonymous, UseCredentials]), Defer, Integrity(Str), Nomodule, Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Src(Str), Type(Str)]), List(Html)),
    # Table content
    Caption(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Colgroup(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Span(U64)]), List(Html)),
    Table(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Tbody(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Td(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Colspan(U64), Headers(Str), Rowspan(U64)]), List(Html)),
    Tfoot(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Th(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Abbr(Str), Colspan(U64), Headers(Str), Rowspan(U64), Scope([Row, Col, Rowgroup, Colgroup])]), List(Html)),
    Thead(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Tr(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    # Text content
    Blockquote(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Cite(Str)]), List(Html)),
    Dd(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Div(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Dl(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Dt(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Figcaption(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Figure(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Li(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Value(Str)]), List(Html)),
    Menu(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Ol(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Reversed, Start(I64), Type(Str)]), List(Html)),
    P(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Pre(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    Ul(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    # Web components
    Slot(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Name(Str)]), List(Html)),
    Template(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]), List(Html)),
    # Void elements — no children slot, no closing tag
    Area(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Alt(Str), Coords(Str), Download(Str), Href(Str), Ping(Str), Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Rel(Str), Shape([Rect, Circle, Poly, Default]), Target(Str)])),
    Base(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Href(Str), Target(Str)])),
    Br(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)])),
    Col(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Span(U64)])),
    Embed(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Height(U64), Src(Str), Type(Str), Width(U64)])),
    Hr(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)])),
    Img(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Alt(Str), Crossorigin([Anonymous, UseCredentials]), Decoding([Sync, Async, Auto]), Height(U64), Ismap, Loading([Lazy, Eager]), Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Sizes(Str), Src(Str), Srcset(Str), Usemap(Str), Width(U64)])),
    Input(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Accept(Str), Alt(Str), Autocomplete(Str), Capture([User, Environment]), Checked, Dirname(Str), Disabled, Form(Str), Formaction(Str), Formenctype([FormUrlEncoded, MultipartFormData, TextPlain]), Formmethod([Get, Post, Dialog]), Formnovalidate, Formtarget(Str), Height(U64), List(Str), Max(Str), Maxlength(U64), Min(Str), Minlength(U64), Multiple, Name(Str), Pattern(Str), Placeholder(Str), Readonly, Required, Size(U64), Src(Str), Step(Str), Type(Str), Value(Str), Width(U64)])),
    Link(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Crossorigin([Anonymous, UseCredentials]), Disabled, Href(Str), Hreflang(Str), Integrity(Str), Media(Str), Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Rel(Str), Sizes(Str), Type(Str)])),
    Meta(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Charset(Str), Content(Str), HttpEquiv(Str), Media(Str), Name(Str)])),
    Source(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Height(U64), Media(Str), Sizes(Str), Src(Str), Srcset(Str), Type(Str), Width(U64)])),
    Track(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Default, Kind([Subtitles, Captions, Descriptions, Chapters, Metadata]), Label(Str), Src(Str), Srclang(Str)])),
    Wbr(List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)])),
    # Leaves and escape hatches
    Text(Str),
    DangerousRaw(Str),
    CustomEl(Str, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Abbr(Str), Accept(Str), AcceptCharset(Str), Action(Str), Allow(Str), Alt(Str), Async, Autocomplete(Str), Autoplay, Capture([User, Environment]), Charset(Str), Checked, Cite(Str), Cols(U64), Colspan(U64), Content(Str), Controls, Coords(Str), Crossorigin([Anonymous, UseCredentials]), Datetime(Str), Decoding([Sync, Async, Auto]), Default, Defer, Dirname(Str), Disabled, Download(Str), Enctype([FormUrlEncoded, MultipartFormData, TextPlain]), For(Str), Form(Str), Formaction(Str), Formenctype([FormUrlEncoded, MultipartFormData, TextPlain]), Formmethod([Get, Post, Dialog]), Formnovalidate, Formtarget(Str), Headers(Str), Height(U64), High(F64), Href(Str), Hreflang(Str), HttpEquiv(Str), Integrity(Str), Ismap, Kind([Subtitles, Captions, Descriptions, Chapters, Metadata]), Label(Str), List(Str), Loading([Lazy, Eager]), Loop, Low(F64), Max(Str), Maxlength(U64), Media(Str), Method([Get, Post, Dialog]), Min(Str), Minlength(U64), Multiple, Muted, Name(Str), Nomodule, Novalidate, ObjectData(Str), Open, Optimum(F64), Pattern(Str), Ping(Str), Placeholder(Str), Playsinline, Poster(Str), Preload([None, Metadata, Auto]), Readonly, Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Rel(Str), Required, Reversed, Rows(U64), Rowspan(U64), Sandbox(Str), Scope([Row, Col, Rowgroup, Colgroup]), Selected, Shape([Rect, Circle, Poly, Default]), Size(U64), Sizes(Str), Span(U64), Src(Str), Srcdoc(Str), Srclang(Str), Srcset(Str), Start(I64), Step(Str), Target(Str), Type(Str), Usemap(Str), Value(Str), Width(U64), Wrap([Soft, Hard])]), List(Html)),
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

    ## Size pass: rough rendered-byte estimate to reserve the buffer
    ## (tag framing exact; 32 bytes per attribute; 2x text for escaping).
    size_hint : Html -> U64
    size_hint = |node|
        match node {
            Html(attrs, kids) => 13 + attrs.len() * 32 + Html.kids_size(kids)
            Body(attrs, kids) => 13 + attrs.len() * 32 + Html.kids_size(kids)
            Address(attrs, kids) => 19 + attrs.len() * 32 + Html.kids_size(kids)
            Article(attrs, kids) => 19 + attrs.len() * 32 + Html.kids_size(kids)
            Aside(attrs, kids) => 15 + attrs.len() * 32 + Html.kids_size(kids)
            Footer(attrs, kids) => 17 + attrs.len() * 32 + Html.kids_size(kids)
            H1(attrs, kids) => 9 + attrs.len() * 32 + Html.kids_size(kids)
            H2(attrs, kids) => 9 + attrs.len() * 32 + Html.kids_size(kids)
            H3(attrs, kids) => 9 + attrs.len() * 32 + Html.kids_size(kids)
            H4(attrs, kids) => 9 + attrs.len() * 32 + Html.kids_size(kids)
            H5(attrs, kids) => 9 + attrs.len() * 32 + Html.kids_size(kids)
            H6(attrs, kids) => 9 + attrs.len() * 32 + Html.kids_size(kids)
            Header(attrs, kids) => 17 + attrs.len() * 32 + Html.kids_size(kids)
            Main(attrs, kids) => 13 + attrs.len() * 32 + Html.kids_size(kids)
            Nav(attrs, kids) => 11 + attrs.len() * 32 + Html.kids_size(kids)
            Section(attrs, kids) => 19 + attrs.len() * 32 + Html.kids_size(kids)
            Del(attrs, kids) => 11 + attrs.len() * 32 + Html.kids_size(kids)
            Ins(attrs, kids) => 11 + attrs.len() * 32 + Html.kids_size(kids)
            Head(attrs, kids) => 13 + attrs.len() * 32 + Html.kids_size(kids)
            Style(attrs, kids) => 15 + attrs.len() * 32 + Html.kids_size(kids)
            Title(attrs, kids) => 15 + attrs.len() * 32 + Html.kids_size(kids)
            Iframe(attrs, kids) => 17 + attrs.len() * 32 + Html.kids_size(kids)
            Object(attrs, kids) => 17 + attrs.len() * 32 + Html.kids_size(kids)
            Picture(attrs, kids) => 19 + attrs.len() * 32 + Html.kids_size(kids)
            Portal(attrs, kids) => 17 + attrs.len() * 32 + Html.kids_size(kids)
            Button(attrs, kids) => 17 + attrs.len() * 32 + Html.kids_size(kids)
            Datalist(attrs, kids) => 21 + attrs.len() * 32 + Html.kids_size(kids)
            Fieldset(attrs, kids) => 21 + attrs.len() * 32 + Html.kids_size(kids)
            Form(attrs, kids) => 13 + attrs.len() * 32 + Html.kids_size(kids)
            Label(attrs, kids) => 15 + attrs.len() * 32 + Html.kids_size(kids)
            Legend(attrs, kids) => 17 + attrs.len() * 32 + Html.kids_size(kids)
            Meter(attrs, kids) => 15 + attrs.len() * 32 + Html.kids_size(kids)
            Optgroup(attrs, kids) => 21 + attrs.len() * 32 + Html.kids_size(kids)
            Option(attrs, kids) => 17 + attrs.len() * 32 + Html.kids_size(kids)
            Output(attrs, kids) => 17 + attrs.len() * 32 + Html.kids_size(kids)
            Progress(attrs, kids) => 21 + attrs.len() * 32 + Html.kids_size(kids)
            Select(attrs, kids) => 17 + attrs.len() * 32 + Html.kids_size(kids)
            Textarea(attrs, kids) => 21 + attrs.len() * 32 + Html.kids_size(kids)
            Audio(attrs, kids) => 15 + attrs.len() * 32 + Html.kids_size(kids)
            Map(attrs, kids) => 11 + attrs.len() * 32 + Html.kids_size(kids)
            Video(attrs, kids) => 15 + attrs.len() * 32 + Html.kids_size(kids)
            A(attrs, kids) => 7 + attrs.len() * 32 + Html.kids_size(kids)
            Abbr(attrs, kids) => 13 + attrs.len() * 32 + Html.kids_size(kids)
            B(attrs, kids) => 7 + attrs.len() * 32 + Html.kids_size(kids)
            Bdi(attrs, kids) => 11 + attrs.len() * 32 + Html.kids_size(kids)
            Bdo(attrs, kids) => 11 + attrs.len() * 32 + Html.kids_size(kids)
            Cite(attrs, kids) => 13 + attrs.len() * 32 + Html.kids_size(kids)
            Code(attrs, kids) => 13 + attrs.len() * 32 + Html.kids_size(kids)
            Data(attrs, kids) => 13 + attrs.len() * 32 + Html.kids_size(kids)
            Dfn(attrs, kids) => 11 + attrs.len() * 32 + Html.kids_size(kids)
            Em(attrs, kids) => 9 + attrs.len() * 32 + Html.kids_size(kids)
            I(attrs, kids) => 7 + attrs.len() * 32 + Html.kids_size(kids)
            Kbd(attrs, kids) => 11 + attrs.len() * 32 + Html.kids_size(kids)
            Mark(attrs, kids) => 13 + attrs.len() * 32 + Html.kids_size(kids)
            Q(attrs, kids) => 7 + attrs.len() * 32 + Html.kids_size(kids)
            Rp(attrs, kids) => 9 + attrs.len() * 32 + Html.kids_size(kids)
            Rt(attrs, kids) => 9 + attrs.len() * 32 + Html.kids_size(kids)
            Ruby(attrs, kids) => 13 + attrs.len() * 32 + Html.kids_size(kids)
            S(attrs, kids) => 7 + attrs.len() * 32 + Html.kids_size(kids)
            Samp(attrs, kids) => 13 + attrs.len() * 32 + Html.kids_size(kids)
            Small(attrs, kids) => 15 + attrs.len() * 32 + Html.kids_size(kids)
            Span(attrs, kids) => 13 + attrs.len() * 32 + Html.kids_size(kids)
            Strong(attrs, kids) => 17 + attrs.len() * 32 + Html.kids_size(kids)
            Sub(attrs, kids) => 11 + attrs.len() * 32 + Html.kids_size(kids)
            Sup(attrs, kids) => 11 + attrs.len() * 32 + Html.kids_size(kids)
            Time(attrs, kids) => 13 + attrs.len() * 32 + Html.kids_size(kids)
            U(attrs, kids) => 7 + attrs.len() * 32 + Html.kids_size(kids)
            Var(attrs, kids) => 11 + attrs.len() * 32 + Html.kids_size(kids)
            Details(attrs, kids) => 19 + attrs.len() * 32 + Html.kids_size(kids)
            Dialog(attrs, kids) => 17 + attrs.len() * 32 + Html.kids_size(kids)
            Summary(attrs, kids) => 19 + attrs.len() * 32 + Html.kids_size(kids)
            Math(attrs, kids) => 13 + attrs.len() * 32 + Html.kids_size(kids)
            Svg(attrs, kids) => 11 + attrs.len() * 32 + Html.kids_size(kids)
            Canvas(attrs, kids) => 17 + attrs.len() * 32 + Html.kids_size(kids)
            Noscript(attrs, kids) => 21 + attrs.len() * 32 + Html.kids_size(kids)
            Script(attrs, kids) => 17 + attrs.len() * 32 + Html.kids_size(kids)
            Caption(attrs, kids) => 19 + attrs.len() * 32 + Html.kids_size(kids)
            Colgroup(attrs, kids) => 21 + attrs.len() * 32 + Html.kids_size(kids)
            Table(attrs, kids) => 15 + attrs.len() * 32 + Html.kids_size(kids)
            Tbody(attrs, kids) => 15 + attrs.len() * 32 + Html.kids_size(kids)
            Td(attrs, kids) => 9 + attrs.len() * 32 + Html.kids_size(kids)
            Tfoot(attrs, kids) => 15 + attrs.len() * 32 + Html.kids_size(kids)
            Th(attrs, kids) => 9 + attrs.len() * 32 + Html.kids_size(kids)
            Thead(attrs, kids) => 15 + attrs.len() * 32 + Html.kids_size(kids)
            Tr(attrs, kids) => 9 + attrs.len() * 32 + Html.kids_size(kids)
            Blockquote(attrs, kids) => 25 + attrs.len() * 32 + Html.kids_size(kids)
            Dd(attrs, kids) => 9 + attrs.len() * 32 + Html.kids_size(kids)
            Div(attrs, kids) => 11 + attrs.len() * 32 + Html.kids_size(kids)
            Dl(attrs, kids) => 9 + attrs.len() * 32 + Html.kids_size(kids)
            Dt(attrs, kids) => 9 + attrs.len() * 32 + Html.kids_size(kids)
            Figcaption(attrs, kids) => 25 + attrs.len() * 32 + Html.kids_size(kids)
            Figure(attrs, kids) => 17 + attrs.len() * 32 + Html.kids_size(kids)
            Li(attrs, kids) => 9 + attrs.len() * 32 + Html.kids_size(kids)
            Menu(attrs, kids) => 13 + attrs.len() * 32 + Html.kids_size(kids)
            Ol(attrs, kids) => 9 + attrs.len() * 32 + Html.kids_size(kids)
            P(attrs, kids) => 7 + attrs.len() * 32 + Html.kids_size(kids)
            Pre(attrs, kids) => 11 + attrs.len() * 32 + Html.kids_size(kids)
            Ul(attrs, kids) => 9 + attrs.len() * 32 + Html.kids_size(kids)
            Slot(attrs, kids) => 13 + attrs.len() * 32 + Html.kids_size(kids)
            Template(attrs, kids) => 21 + attrs.len() * 32 + Html.kids_size(kids)
            Area(attrs) => 6 + attrs.len() * 32
            Base(attrs) => 6 + attrs.len() * 32
            Br(attrs) => 4 + attrs.len() * 32
            Col(attrs) => 5 + attrs.len() * 32
            Embed(attrs) => 7 + attrs.len() * 32
            Hr(attrs) => 4 + attrs.len() * 32
            Img(attrs) => 5 + attrs.len() * 32
            Input(attrs) => 7 + attrs.len() * 32
            Link(attrs) => 6 + attrs.len() * 32
            Meta(attrs) => 6 + attrs.len() * 32
            Source(attrs) => 8 + attrs.len() * 32
            Track(attrs) => 7 + attrs.len() * 32
            Wbr(attrs) => 5 + attrs.len() * 32
            Text(content) => content.to_utf8().len() * 2
            DangerousRaw(content) => content.to_utf8().len()
            CustomEl(tag, attrs, kids) => 5 + 2 * tag.to_utf8().len() + attrs.len() * 32 + Html.kids_size(kids)
        }

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
            Html(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<html"), attrs), "html", kids)
            Body(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<body"), attrs), "body", kids)
            Address(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<address"), attrs), "address", kids)
            Article(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<article"), attrs), "article", kids)
            Aside(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<aside"), attrs), "aside", kids)
            Footer(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<footer"), attrs), "footer", kids)
            H1(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<h1"), attrs), "h1", kids)
            H2(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<h2"), attrs), "h2", kids)
            H3(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<h3"), attrs), "h3", kids)
            H4(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<h4"), attrs), "h4", kids)
            H5(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<h5"), attrs), "h5", kids)
            H6(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<h6"), attrs), "h6", kids)
            Header(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<header"), attrs), "header", kids)
            Main(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<main"), attrs), "main", kids)
            Nav(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<nav"), attrs), "nav", kids)
            Section(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<section"), attrs), "section", kids)
            Del(attrs, kids) => Html.close_el(Html.attrs_g1(buf.push_raw("<del"), attrs), "del", kids)
            Ins(attrs, kids) => Html.close_el(Html.attrs_g1(buf.push_raw("<ins"), attrs), "ins", kids)
            Head(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<head"), attrs), "head", kids)
            Style(attrs, kids) => Html.close_el(Html.attrs_g2(buf.push_raw("<style"), attrs), "style", kids)
            Title(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<title"), attrs), "title", kids)
            Iframe(attrs, kids) => Html.close_el(Html.attrs_g3(buf.push_raw("<iframe"), attrs), "iframe", kids)
            Object(attrs, kids) => Html.close_el(Html.attrs_g4(buf.push_raw("<object"), attrs), "object", kids)
            Picture(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<picture"), attrs), "picture", kids)
            Portal(attrs, kids) => Html.close_el(Html.attrs_g5(buf.push_raw("<portal"), attrs), "portal", kids)
            Button(attrs, kids) => Html.close_el(Html.attrs_g6(buf.push_raw("<button"), attrs), "button", kids)
            Datalist(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<datalist"), attrs), "datalist", kids)
            Fieldset(attrs, kids) => Html.close_el(Html.attrs_g7(buf.push_raw("<fieldset"), attrs), "fieldset", kids)
            Form(attrs, kids) => Html.close_el(Html.attrs_g8(buf.push_raw("<form"), attrs), "form", kids)
            Label(attrs, kids) => Html.close_el(Html.attrs_g9(buf.push_raw("<label"), attrs), "label", kids)
            Legend(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<legend"), attrs), "legend", kids)
            Meter(attrs, kids) => Html.close_el(Html.attrs_g10(buf.push_raw("<meter"), attrs), "meter", kids)
            Optgroup(attrs, kids) => Html.close_el(Html.attrs_g11(buf.push_raw("<optgroup"), attrs), "optgroup", kids)
            Option(attrs, kids) => Html.close_el(Html.attrs_g12(buf.push_raw("<option"), attrs), "option", kids)
            Output(attrs, kids) => Html.close_el(Html.attrs_g13(buf.push_raw("<output"), attrs), "output", kids)
            Progress(attrs, kids) => Html.close_el(Html.attrs_g14(buf.push_raw("<progress"), attrs), "progress", kids)
            Select(attrs, kids) => Html.close_el(Html.attrs_g15(buf.push_raw("<select"), attrs), "select", kids)
            Textarea(attrs, kids) => Html.close_el(Html.attrs_g16(buf.push_raw("<textarea"), attrs), "textarea", kids)
            Audio(attrs, kids) => Html.close_el(Html.attrs_g17(buf.push_raw("<audio"), attrs), "audio", kids)
            Map(attrs, kids) => Html.close_el(Html.attrs_g18(buf.push_raw("<map"), attrs), "map", kids)
            Video(attrs, kids) => Html.close_el(Html.attrs_g19(buf.push_raw("<video"), attrs), "video", kids)
            A(attrs, kids) => Html.close_el(Html.attrs_g20(buf.push_raw("<a"), attrs), "a", kids)
            Abbr(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<abbr"), attrs), "abbr", kids)
            B(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<b"), attrs), "b", kids)
            Bdi(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<bdi"), attrs), "bdi", kids)
            Bdo(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<bdo"), attrs), "bdo", kids)
            Cite(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<cite"), attrs), "cite", kids)
            Code(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<code"), attrs), "code", kids)
            Data(attrs, kids) => Html.close_el(Html.attrs_g21(buf.push_raw("<data"), attrs), "data", kids)
            Dfn(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<dfn"), attrs), "dfn", kids)
            Em(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<em"), attrs), "em", kids)
            I(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<i"), attrs), "i", kids)
            Kbd(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<kbd"), attrs), "kbd", kids)
            Mark(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<mark"), attrs), "mark", kids)
            Q(attrs, kids) => Html.close_el(Html.attrs_g22(buf.push_raw("<q"), attrs), "q", kids)
            Rp(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<rp"), attrs), "rp", kids)
            Rt(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<rt"), attrs), "rt", kids)
            Ruby(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<ruby"), attrs), "ruby", kids)
            S(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<s"), attrs), "s", kids)
            Samp(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<samp"), attrs), "samp", kids)
            Small(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<small"), attrs), "small", kids)
            Span(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<span"), attrs), "span", kids)
            Strong(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<strong"), attrs), "strong", kids)
            Sub(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<sub"), attrs), "sub", kids)
            Sup(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<sup"), attrs), "sup", kids)
            Time(attrs, kids) => Html.close_el(Html.attrs_g23(buf.push_raw("<time"), attrs), "time", kids)
            U(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<u"), attrs), "u", kids)
            Var(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<var"), attrs), "var", kids)
            Details(attrs, kids) => Html.close_el(Html.attrs_g24(buf.push_raw("<details"), attrs), "details", kids)
            Dialog(attrs, kids) => Html.close_el(Html.attrs_g24(buf.push_raw("<dialog"), attrs), "dialog", kids)
            Summary(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<summary"), attrs), "summary", kids)
            Math(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<math"), attrs), "math", kids)
            Svg(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<svg"), attrs), "svg", kids)
            Canvas(attrs, kids) => Html.close_el(Html.attrs_g25(buf.push_raw("<canvas"), attrs), "canvas", kids)
            Noscript(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<noscript"), attrs), "noscript", kids)
            Script(attrs, kids) => Html.close_el(Html.attrs_g26(buf.push_raw("<script"), attrs), "script", kids)
            Caption(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<caption"), attrs), "caption", kids)
            Colgroup(attrs, kids) => Html.close_el(Html.attrs_g27(buf.push_raw("<colgroup"), attrs), "colgroup", kids)
            Table(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<table"), attrs), "table", kids)
            Tbody(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<tbody"), attrs), "tbody", kids)
            Td(attrs, kids) => Html.close_el(Html.attrs_g28(buf.push_raw("<td"), attrs), "td", kids)
            Tfoot(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<tfoot"), attrs), "tfoot", kids)
            Th(attrs, kids) => Html.close_el(Html.attrs_g29(buf.push_raw("<th"), attrs), "th", kids)
            Thead(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<thead"), attrs), "thead", kids)
            Tr(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<tr"), attrs), "tr", kids)
            Blockquote(attrs, kids) => Html.close_el(Html.attrs_g22(buf.push_raw("<blockquote"), attrs), "blockquote", kids)
            Dd(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<dd"), attrs), "dd", kids)
            Div(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<div"), attrs), "div", kids)
            Dl(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<dl"), attrs), "dl", kids)
            Dt(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<dt"), attrs), "dt", kids)
            Figcaption(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<figcaption"), attrs), "figcaption", kids)
            Figure(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<figure"), attrs), "figure", kids)
            Li(attrs, kids) => Html.close_el(Html.attrs_g21(buf.push_raw("<li"), attrs), "li", kids)
            Menu(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<menu"), attrs), "menu", kids)
            Ol(attrs, kids) => Html.close_el(Html.attrs_g30(buf.push_raw("<ol"), attrs), "ol", kids)
            P(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<p"), attrs), "p", kids)
            Pre(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<pre"), attrs), "pre", kids)
            Ul(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<ul"), attrs), "ul", kids)
            Slot(attrs, kids) => Html.close_el(Html.attrs_g18(buf.push_raw("<slot"), attrs), "slot", kids)
            Template(attrs, kids) => Html.close_el(Html.attrs_g0(buf.push_raw("<template"), attrs), "template", kids)
            Area(attrs) => Html.attrs_g31(buf.push_raw("<area"), attrs).push_raw(">")
            Base(attrs) => Html.attrs_g32(buf.push_raw("<base"), attrs).push_raw(">")
            Br(attrs) => Html.attrs_g0(buf.push_raw("<br"), attrs).push_raw(">")
            Col(attrs) => Html.attrs_g27(buf.push_raw("<col"), attrs).push_raw(">")
            Embed(attrs) => Html.attrs_g33(buf.push_raw("<embed"), attrs).push_raw(">")
            Hr(attrs) => Html.attrs_g0(buf.push_raw("<hr"), attrs).push_raw(">")
            Img(attrs) => Html.attrs_g34(buf.push_raw("<img"), attrs).push_raw(">")
            Input(attrs) => Html.attrs_g35(buf.push_raw("<input"), attrs).push_raw(">")
            Link(attrs) => Html.attrs_g36(buf.push_raw("<link"), attrs).push_raw(">")
            Meta(attrs) => Html.attrs_g37(buf.push_raw("<meta"), attrs).push_raw(">")
            Source(attrs) => Html.attrs_g38(buf.push_raw("<source"), attrs).push_raw(">")
            Track(attrs) => Html.attrs_g39(buf.push_raw("<track"), attrs).push_raw(">")
            Wbr(attrs) => Html.attrs_g0(buf.push_raw("<wbr"), attrs).push_raw(">")
            Text(content) => buf.push_escaped(content)
            DangerousRaw(content) => buf.push_raw(content)
            CustomEl(tag, attrs, kids) => Html.close_el(Html.attrs_g40(buf.push_raw("<").push_raw(tag), attrs), tag, kids)
        }

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

    # One attribute-emitter per distinct attribute set. Attribute NAMES are
    # trusted (emitted raw); VALUES are escaped. Flags render bare.
    attrs_g0 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str)]) -> SafeStr
    attrs_g0 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
            }
            i = i + 1
        }
        out
    }

    attrs_g1 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Cite(Str), Datetime(Str)]) -> SafeStr
    attrs_g1 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
                Cite(v) => out.push_raw(" cite=\"").push_escaped(v).push_raw("\"")
                Datetime(v) => out.push_raw(" datetime=\"").push_escaped(v).push_raw("\"")
            }
            i = i + 1
        }
        out
    }

    attrs_g2 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Media(Str)]) -> SafeStr
    attrs_g2 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
                Media(v) => out.push_raw(" media=\"").push_escaped(v).push_raw("\"")
            }
            i = i + 1
        }
        out
    }

    attrs_g3 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Allow(Str), Height(U64), Loading([Lazy, Eager]), Name(Str), Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Sandbox(Str), Src(Str), Srcdoc(Str), Width(U64)]) -> SafeStr
    attrs_g3 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
            }
            i = i + 1
        }
        out
    }

    attrs_g4 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Form(Str), Height(U64), Name(Str), ObjectData(Str), Type(Str), Width(U64)]) -> SafeStr
    attrs_g4 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
                Form(v) => out.push_raw(" form=\"").push_escaped(v).push_raw("\"")
                Height(v) => out.push_raw(" height=\"").push_raw(v.to_str()).push_raw("\"")
                Name(v) => out.push_raw(" name=\"").push_escaped(v).push_raw("\"")
                ObjectData(v) => out.push_raw(" data=\"").push_escaped(v).push_raw("\"")
                Type(v) => out.push_raw(" type=\"").push_escaped(v).push_raw("\"")
                Width(v) => out.push_raw(" width=\"").push_raw(v.to_str()).push_raw("\"")
            }
            i = i + 1
        }
        out
    }

    attrs_g5 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Src(Str)]) -> SafeStr
    attrs_g5 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
                Src(v) => out.push_raw(" src=\"").push_escaped(v).push_raw("\"")
            }
            i = i + 1
        }
        out
    }

    attrs_g6 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Disabled, Form(Str), Formaction(Str), Formenctype([FormUrlEncoded, MultipartFormData, TextPlain]), Formmethod([Get, Post, Dialog]), Formnovalidate, Formtarget(Str), Name(Str), Type(Str), Value(Str)]) -> SafeStr
    attrs_g6 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
            }
            i = i + 1
        }
        out
    }

    attrs_g7 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Disabled, Form(Str), Name(Str)]) -> SafeStr
    attrs_g7 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
                Disabled => out.push_raw(" disabled")
                Form(v) => out.push_raw(" form=\"").push_escaped(v).push_raw("\"")
                Name(v) => out.push_raw(" name=\"").push_escaped(v).push_raw("\"")
            }
            i = i + 1
        }
        out
    }

    attrs_g8 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), AcceptCharset(Str), Action(Str), Autocomplete(Str), Enctype([FormUrlEncoded, MultipartFormData, TextPlain]), Method([Get, Post, Dialog]), Name(Str), Novalidate, Rel(Str), Target(Str)]) -> SafeStr
    attrs_g8 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
            }
            i = i + 1
        }
        out
    }

    attrs_g9 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), For(Str)]) -> SafeStr
    attrs_g9 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
                For(v) => out.push_raw(" for=\"").push_escaped(v).push_raw("\"")
            }
            i = i + 1
        }
        out
    }

    attrs_g10 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), High(F64), Low(F64), Max(Str), Min(Str), Optimum(F64), Value(Str)]) -> SafeStr
    attrs_g10 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
                High(v) => out.push_raw(" high=\"").push_raw(v.to_str()).push_raw("\"")
                Low(v) => out.push_raw(" low=\"").push_raw(v.to_str()).push_raw("\"")
                Max(v) => out.push_raw(" max=\"").push_escaped(v).push_raw("\"")
                Min(v) => out.push_raw(" min=\"").push_escaped(v).push_raw("\"")
                Optimum(v) => out.push_raw(" optimum=\"").push_raw(v.to_str()).push_raw("\"")
                Value(v) => out.push_raw(" value=\"").push_escaped(v).push_raw("\"")
            }
            i = i + 1
        }
        out
    }

    attrs_g11 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Disabled, Label(Str)]) -> SafeStr
    attrs_g11 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
                Disabled => out.push_raw(" disabled")
                Label(v) => out.push_raw(" label=\"").push_escaped(v).push_raw("\"")
            }
            i = i + 1
        }
        out
    }

    attrs_g12 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Disabled, Label(Str), Selected, Value(Str)]) -> SafeStr
    attrs_g12 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
                Disabled => out.push_raw(" disabled")
                Label(v) => out.push_raw(" label=\"").push_escaped(v).push_raw("\"")
                Selected => out.push_raw(" selected")
                Value(v) => out.push_raw(" value=\"").push_escaped(v).push_raw("\"")
            }
            i = i + 1
        }
        out
    }

    attrs_g13 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), For(Str), Form(Str), Name(Str)]) -> SafeStr
    attrs_g13 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
                For(v) => out.push_raw(" for=\"").push_escaped(v).push_raw("\"")
                Form(v) => out.push_raw(" form=\"").push_escaped(v).push_raw("\"")
                Name(v) => out.push_raw(" name=\"").push_escaped(v).push_raw("\"")
            }
            i = i + 1
        }
        out
    }

    attrs_g14 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Max(Str), Value(Str)]) -> SafeStr
    attrs_g14 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
                Max(v) => out.push_raw(" max=\"").push_escaped(v).push_raw("\"")
                Value(v) => out.push_raw(" value=\"").push_escaped(v).push_raw("\"")
            }
            i = i + 1
        }
        out
    }

    attrs_g15 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Autocomplete(Str), Disabled, Form(Str), Multiple, Name(Str), Required, Size(U64)]) -> SafeStr
    attrs_g15 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
                Autocomplete(v) => out.push_raw(" autocomplete=\"").push_escaped(v).push_raw("\"")
                Disabled => out.push_raw(" disabled")
                Form(v) => out.push_raw(" form=\"").push_escaped(v).push_raw("\"")
                Multiple => out.push_raw(" multiple")
                Name(v) => out.push_raw(" name=\"").push_escaped(v).push_raw("\"")
                Required => out.push_raw(" required")
                Size(v) => out.push_raw(" size=\"").push_raw(v.to_str()).push_raw("\"")
            }
            i = i + 1
        }
        out
    }

    attrs_g16 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Autocomplete(Str), Cols(U64), Dirname(Str), Disabled, Form(Str), Maxlength(U64), Minlength(U64), Name(Str), Placeholder(Str), Readonly, Required, Rows(U64), Wrap([Soft, Hard])]) -> SafeStr
    attrs_g16 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
            }
            i = i + 1
        }
        out
    }

    attrs_g17 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Autoplay, Controls, Crossorigin([Anonymous, UseCredentials]), Loop, Muted, Preload([None, Metadata, Auto]), Src(Str)]) -> SafeStr
    attrs_g17 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
            }
            i = i + 1
        }
        out
    }

    attrs_g18 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Name(Str)]) -> SafeStr
    attrs_g18 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
                Name(v) => out.push_raw(" name=\"").push_escaped(v).push_raw("\"")
            }
            i = i + 1
        }
        out
    }

    attrs_g19 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Autoplay, Controls, Crossorigin([Anonymous, UseCredentials]), Height(U64), Loop, Muted, Playsinline, Poster(Str), Preload([None, Metadata, Auto]), Src(Str), Width(U64)]) -> SafeStr
    attrs_g19 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
            }
            i = i + 1
        }
        out
    }

    attrs_g20 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Download(Str), Href(Str), Hreflang(Str), Ping(Str), Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Rel(Str), Target(Str), Type(Str)]) -> SafeStr
    attrs_g20 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
            }
            i = i + 1
        }
        out
    }

    attrs_g21 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Value(Str)]) -> SafeStr
    attrs_g21 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
                Value(v) => out.push_raw(" value=\"").push_escaped(v).push_raw("\"")
            }
            i = i + 1
        }
        out
    }

    attrs_g22 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Cite(Str)]) -> SafeStr
    attrs_g22 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
                Cite(v) => out.push_raw(" cite=\"").push_escaped(v).push_raw("\"")
            }
            i = i + 1
        }
        out
    }

    attrs_g23 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Datetime(Str)]) -> SafeStr
    attrs_g23 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
                Datetime(v) => out.push_raw(" datetime=\"").push_escaped(v).push_raw("\"")
            }
            i = i + 1
        }
        out
    }

    attrs_g24 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Open]) -> SafeStr
    attrs_g24 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
                Open => out.push_raw(" open")
            }
            i = i + 1
        }
        out
    }

    attrs_g25 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Height(U64), Width(U64)]) -> SafeStr
    attrs_g25 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
                Height(v) => out.push_raw(" height=\"").push_raw(v.to_str()).push_raw("\"")
                Width(v) => out.push_raw(" width=\"").push_raw(v.to_str()).push_raw("\"")
            }
            i = i + 1
        }
        out
    }

    attrs_g26 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Async, Crossorigin([Anonymous, UseCredentials]), Defer, Integrity(Str), Nomodule, Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Src(Str), Type(Str)]) -> SafeStr
    attrs_g26 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
            }
            i = i + 1
        }
        out
    }

    attrs_g27 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Span(U64)]) -> SafeStr
    attrs_g27 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
                Span(v) => out.push_raw(" span=\"").push_raw(v.to_str()).push_raw("\"")
            }
            i = i + 1
        }
        out
    }

    attrs_g28 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Colspan(U64), Headers(Str), Rowspan(U64)]) -> SafeStr
    attrs_g28 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
                Colspan(v) => out.push_raw(" colspan=\"").push_raw(v.to_str()).push_raw("\"")
                Headers(v) => out.push_raw(" headers=\"").push_escaped(v).push_raw("\"")
                Rowspan(v) => out.push_raw(" rowspan=\"").push_raw(v.to_str()).push_raw("\"")
            }
            i = i + 1
        }
        out
    }

    attrs_g29 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Abbr(Str), Colspan(U64), Headers(Str), Rowspan(U64), Scope([Row, Col, Rowgroup, Colgroup])]) -> SafeStr
    attrs_g29 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
            }
            i = i + 1
        }
        out
    }

    attrs_g30 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Reversed, Start(I64), Type(Str)]) -> SafeStr
    attrs_g30 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
                Reversed => out.push_raw(" reversed")
                Start(v) => out.push_raw(" start=\"").push_raw(v.to_str()).push_raw("\"")
                Type(v) => out.push_raw(" type=\"").push_escaped(v).push_raw("\"")
            }
            i = i + 1
        }
        out
    }

    attrs_g31 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Alt(Str), Coords(Str), Download(Str), Href(Str), Ping(Str), Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Rel(Str), Shape([Rect, Circle, Poly, Default]), Target(Str)]) -> SafeStr
    attrs_g31 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
            }
            i = i + 1
        }
        out
    }

    attrs_g32 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Href(Str), Target(Str)]) -> SafeStr
    attrs_g32 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
                Href(v) => out.push_raw(" href=\"").push_escaped(v).push_raw("\"")
                Target(v) => out.push_raw(" target=\"").push_escaped(v).push_raw("\"")
            }
            i = i + 1
        }
        out
    }

    attrs_g33 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Height(U64), Src(Str), Type(Str), Width(U64)]) -> SafeStr
    attrs_g33 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
                Height(v) => out.push_raw(" height=\"").push_raw(v.to_str()).push_raw("\"")
                Src(v) => out.push_raw(" src=\"").push_escaped(v).push_raw("\"")
                Type(v) => out.push_raw(" type=\"").push_escaped(v).push_raw("\"")
                Width(v) => out.push_raw(" width=\"").push_raw(v.to_str()).push_raw("\"")
            }
            i = i + 1
        }
        out
    }

    attrs_g34 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Alt(Str), Crossorigin([Anonymous, UseCredentials]), Decoding([Sync, Async, Auto]), Height(U64), Ismap, Loading([Lazy, Eager]), Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Sizes(Str), Src(Str), Srcset(Str), Usemap(Str), Width(U64)]) -> SafeStr
    attrs_g34 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
            }
            i = i + 1
        }
        out
    }

    attrs_g35 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Accept(Str), Alt(Str), Autocomplete(Str), Capture([User, Environment]), Checked, Dirname(Str), Disabled, Form(Str), Formaction(Str), Formenctype([FormUrlEncoded, MultipartFormData, TextPlain]), Formmethod([Get, Post, Dialog]), Formnovalidate, Formtarget(Str), Height(U64), List(Str), Max(Str), Maxlength(U64), Min(Str), Minlength(U64), Multiple, Name(Str), Pattern(Str), Placeholder(Str), Readonly, Required, Size(U64), Src(Str), Step(Str), Type(Str), Value(Str), Width(U64)]) -> SafeStr
    attrs_g35 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
            }
            i = i + 1
        }
        out
    }

    attrs_g36 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Crossorigin([Anonymous, UseCredentials]), Disabled, Href(Str), Hreflang(Str), Integrity(Str), Media(Str), Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Rel(Str), Sizes(Str), Type(Str)]) -> SafeStr
    attrs_g36 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
            }
            i = i + 1
        }
        out
    }

    attrs_g37 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Charset(Str), Content(Str), HttpEquiv(Str), Media(Str), Name(Str)]) -> SafeStr
    attrs_g37 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
                Charset(v) => out.push_raw(" charset=\"").push_escaped(v).push_raw("\"")
                Content(v) => out.push_raw(" content=\"").push_escaped(v).push_raw("\"")
                HttpEquiv(v) => out.push_raw(" http-equiv=\"").push_escaped(v).push_raw("\"")
                Media(v) => out.push_raw(" media=\"").push_escaped(v).push_raw("\"")
                Name(v) => out.push_raw(" name=\"").push_escaped(v).push_raw("\"")
            }
            i = i + 1
        }
        out
    }

    attrs_g38 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Height(U64), Media(Str), Sizes(Str), Src(Str), Srcset(Str), Type(Str), Width(U64)]) -> SafeStr
    attrs_g38 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
                Height(v) => out.push_raw(" height=\"").push_raw(v.to_str()).push_raw("\"")
                Media(v) => out.push_raw(" media=\"").push_escaped(v).push_raw("\"")
                Sizes(v) => out.push_raw(" sizes=\"").push_escaped(v).push_raw("\"")
                Src(v) => out.push_raw(" src=\"").push_escaped(v).push_raw("\"")
                Srcset(v) => out.push_raw(" srcset=\"").push_escaped(v).push_raw("\"")
                Type(v) => out.push_raw(" type=\"").push_escaped(v).push_raw("\"")
                Width(v) => out.push_raw(" width=\"").push_raw(v.to_str()).push_raw("\"")
            }
            i = i + 1
        }
        out
    }

    attrs_g39 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Default, Kind([Subtitles, Captions, Descriptions, Chapters, Metadata]), Label(Str), Src(Str), Srclang(Str)]) -> SafeStr
    attrs_g39 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
            }
            i = i + 1
        }
        out
    }

    attrs_g40 : SafeStr, List([Accesskey(Str), Autocapitalize([Off, On, None, Sentences, Words, Characters]), Autofocus, Class(Str), Contenteditable([True, False, PlaintextOnly]), Dir([Ltr, Rtl, Auto]), Draggable([True, False]), Enterkeyhint([Enter, Done, Go, Next, Previous, Search, Send]), Hidden, Id(Str), Inert, Inputmode([None, Text, Decimal, Numeric, Tel, Search, Email, Url]), Itemprop(Str), Itemscope, Lang(Str), Role(Str), Slot(Str), Spellcheck([True, False]), Style(Str), Tabindex(I64), Title(Str), Translate([Yes, No]), Custom(Str, Str), Data(Str, Str), Aria(Str, Str), Abbr(Str), Accept(Str), AcceptCharset(Str), Action(Str), Allow(Str), Alt(Str), Async, Autocomplete(Str), Autoplay, Capture([User, Environment]), Charset(Str), Checked, Cite(Str), Cols(U64), Colspan(U64), Content(Str), Controls, Coords(Str), Crossorigin([Anonymous, UseCredentials]), Datetime(Str), Decoding([Sync, Async, Auto]), Default, Defer, Dirname(Str), Disabled, Download(Str), Enctype([FormUrlEncoded, MultipartFormData, TextPlain]), For(Str), Form(Str), Formaction(Str), Formenctype([FormUrlEncoded, MultipartFormData, TextPlain]), Formmethod([Get, Post, Dialog]), Formnovalidate, Formtarget(Str), Headers(Str), Height(U64), High(F64), Href(Str), Hreflang(Str), HttpEquiv(Str), Integrity(Str), Ismap, Kind([Subtitles, Captions, Descriptions, Chapters, Metadata]), Label(Str), List(Str), Loading([Lazy, Eager]), Loop, Low(F64), Max(Str), Maxlength(U64), Media(Str), Method([Get, Post, Dialog]), Min(Str), Minlength(U64), Multiple, Muted, Name(Str), Nomodule, Novalidate, ObjectData(Str), Open, Optimum(F64), Pattern(Str), Ping(Str), Placeholder(Str), Playsinline, Poster(Str), Preload([None, Metadata, Auto]), Readonly, Referrerpolicy([NoReferrer, NoReferrerWhenDowngrade, Origin, OriginWhenCrossOrigin, SameOrigin, StrictOrigin, StrictOriginWhenCrossOrigin, UnsafeUrl]), Rel(Str), Required, Reversed, Rows(U64), Rowspan(U64), Sandbox(Str), Scope([Row, Col, Rowgroup, Colgroup]), Selected, Shape([Rect, Circle, Poly, Default]), Size(U64), Sizes(Str), Span(U64), Src(Str), Srcdoc(Str), Srclang(Str), Srcset(Str), Start(I64), Step(Str), Target(Str), Type(Str), Usemap(Str), Value(Str), Width(U64), Wrap([Soft, Hard])]) -> SafeStr
    attrs_g40 = |buf, attrs| {
        var out = buf
        var i = 0.U64
        while i < attrs.len() {
            out = match attrs.get(i) ?? Hidden {
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
