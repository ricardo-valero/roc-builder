# Non-void HTML element tags, grouped by MDN category.
# Custom(name) is the escape hatch for web components and anything
# outside the closed set; the name is emitted verbatim.
Tag := [
    # Content sectioning
    Address, Article, Aside, Footer, H1, H2, H3, H4, H5, H6, Header, Main, Nav, Section,
    # Demarcating edits
    Del, Ins,
    # Document metadata
    Head, Style, Title,
    # Embedded content
    Iframe, Object, Picture, Portal,
    # Forms
    Button, Datalist, Fieldset, Form, Label, Legend, Meter, Optgroup, Option, Output, Progress, Select, Textarea,
    # Image and multimedia
    Audio, Map, Video,
    # Inline text semantics
    A, Abbr, B, Bdi, Bdo, Cite, Code, Data, Dfn, Em, I, Kbd, Mark, Q, Rp, Rt, Ruby, S, Samp, Small, Span, Strong, Sub, Sup, Time, U, Var,
    # Interactive elements
    Details, Dialog, Summary,
    # Main root
    Html,
    # SVG and MathML
    Math, Svg,
    # Scripting
    Canvas, Noscript, Script,
    # Sectioning root
    Body,
    # Table content
    Caption, Colgroup, Table, Tbody, Td, Tfoot, Th, Thead, Tr,
    # Text content
    Blockquote, Dd, Div, Dl, Dt, Figcaption, Figure, Li, Menu, Ol, P, Pre, Ul,
    # Web components
    Slot, Template,
    # Escape hatch
    Custom(Str),
].{
    to_str : Tag -> Str
    to_str = |tag|
        match tag {
            Address => "address"
            Article => "article"
            Aside => "aside"
            Footer => "footer"
            H1 => "h1"
            H2 => "h2"
            H3 => "h3"
            H4 => "h4"
            H5 => "h5"
            H6 => "h6"
            Header => "header"
            Main => "main"
            Nav => "nav"
            Section => "section"
            Del => "del"
            Ins => "ins"
            Head => "head"
            Style => "style"
            Title => "title"
            Iframe => "iframe"
            Object => "object"
            Picture => "picture"
            Portal => "portal"
            Button => "button"
            Datalist => "datalist"
            Fieldset => "fieldset"
            Form => "form"
            Label => "label"
            Legend => "legend"
            Meter => "meter"
            Optgroup => "optgroup"
            Option => "option"
            Output => "output"
            Progress => "progress"
            Select => "select"
            Textarea => "textarea"
            Audio => "audio"
            Map => "map"
            Video => "video"
            A => "a"
            Abbr => "abbr"
            B => "b"
            Bdi => "bdi"
            Bdo => "bdo"
            Cite => "cite"
            Code => "code"
            Data => "data"
            Dfn => "dfn"
            Em => "em"
            I => "i"
            Kbd => "kbd"
            Mark => "mark"
            Q => "q"
            Rp => "rp"
            Rt => "rt"
            Ruby => "ruby"
            S => "s"
            Samp => "samp"
            Small => "small"
            Span => "span"
            Strong => "strong"
            Sub => "sub"
            Sup => "sup"
            Time => "time"
            U => "u"
            Var => "var"
            Details => "details"
            Dialog => "dialog"
            Summary => "summary"
            Html => "html"
            Math => "math"
            Svg => "svg"
            Canvas => "canvas"
            Noscript => "noscript"
            Script => "script"
            Body => "body"
            Caption => "caption"
            Colgroup => "colgroup"
            Table => "table"
            Tbody => "tbody"
            Td => "td"
            Tfoot => "tfoot"
            Th => "th"
            Thead => "thead"
            Tr => "tr"
            Blockquote => "blockquote"
            Dd => "dd"
            Div => "div"
            Dl => "dl"
            Dt => "dt"
            Figcaption => "figcaption"
            Figure => "figure"
            Li => "li"
            Menu => "menu"
            Ol => "ol"
            P => "p"
            Pre => "pre"
            Ul => "ul"
            Slot => "slot"
            Template => "template"
            Custom(name) => name
        }
}

expect Tag.to_str(Div) == "div"
expect Tag.to_str(Custom("my-widget")) == "my-widget"
