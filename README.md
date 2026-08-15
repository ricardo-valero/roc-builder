# roc-builder

Typed builders for generating structured text from Roc — the dual of
[roc-parser](https://github.com/ricardo-valero/roc-parser):

- a **parser** goes `Str → AST`, validating on the way *in*
- a **builder** goes `AST → Str`, correct by construction on the way *out*

Each target language is a module. The grammar of the target is modeled as a
typed AST, constructors make invalid documents unrepresentable, and a render
function emits text with context-appropriate safety (escaping for HTML,
parameterization for SQL).

## Modules

| Module | Status       | Output                          |
| ------ | ------------ | ------------------------------- |
| `Html` | v0.1         | escaped HTML `Str`              |
| `Sql`  | experimental | `{ sql : Str, params : List }`  |

`Sql` is not yet in the package export list; its API is still settling.

## Toolchain

Requires the new Roc compiler, nightly-2026-08-10 or later. With nix:

```sh
nix develop            # provides `roc` (pinned via roc-overlay)
roc check package/main.roc
roc test package/main.roc
```

## Html in 10 lines

Documents are data literals — one variant per element, no wrapper functions,
no prefixes inside the tree:

```roc
import html.Html

page : Html.Html
page = Html([], [
    Body([], [
        H1([], [Text("Roc")]),
        P([], [
            Text("My favourite language is "),
            A([Href("https://roc-lang.org/")], [Text("Roc")]),
        ]),
    ]),
])
# Html.render_doc(page) == "<!DOCTYPE html><html>...</html>", text always escaped
# Html.render(page) renders the fragment without the doctype
```

Void elements (`Br`, `Img`, ...) have no children slot, so a void element
with children is unrepresentable. Attribute payloads are typed —
`Colspan(U64)`, `Tabindex(-1)`, `Dir(Rtl)`, `Enctype(MultipartFormData)`
(renders the full MIME string) — and boolean attributes are payload-less
variants (`Disabled`, never `disabled=""`).

**Attributes are scoped per element** (WHATWG HTML Living Standard): each
element accepts the ~25 global attributes (plus the `Custom`/`Data`/`Aria`
escape hatches) and only its own content attributes. `Input([Colspan(2)])`
is a type error. Shared attribute helpers use an open annotation:

```roc
card : Str -> List([Class(Str), Id(Str), ..])
card = |cls| [Class(cls), Id("main")]
# usable in any element's attribute list
```

`CustomEl` accepts the full attribute superset (unknown elements can't be
validated). Raw HTML requires the explicitly named `DangerousRaw`. See
`examples/hello.roc` for the runnable version.

`package/Html.roc` is hand-curated; the WHATWG applicability tables are
the type declarations themselves (`GlobalAttrs` + each element's set), and
every global attribute renders through one `push_global_attr` function.

## Migrating from Hasnep/roc-html

The tree shape is identical (attrs list, children list) — the move is
mechanical case changes:

- elements are variants, not functions: `Html.p([], [...])` becomes `P([], [...])`
- attributes too: `Attribute.href(v)` becomes `Href(v)`; boolean attributes
  are bare variants (`disabled("")` becomes `Disabled`)
- void elements take a single attrs argument (no empty children list)
- `attribute("name")("value")` becomes `Custom("name", "value")`
- `Html.dangerously_include_unescaped_html` becomes `DangerousRaw`
- `render` now renders fragments (was `render_without_doc_type`); the
  doctype-prefixed document render is `render_doc`

Migrating v0.1 → v0.2: misplaced attributes (valid nowhere per WHATWG) now
fail to type-check — fix the HTML; shared attribute helpers need open
annotations (`List([Class(Str), ..])`); the `<object>` `data` attribute is
`ObjectData(Str)`.
- keyword clashes disappear: `Var`, `For(...)`, `Type(...)` are ordinary
  variants (uppercase never collides with Roc keywords)

## Sql (experimental)

```roc
books = Sql.table("books", |c| { id: c("id"), genre: c("genre") })

out = Sql.from(books.name)
    .where_(books.cols.genre.eq(Expr.text("scifi")))   # literals become params
    .select([books.cols.genre, Expr.count_all.as_("n")])
    .render(Postgres)
# out.sql    == "SELECT books.genre, COUNT(*) AS n FROM books WHERE books.genre = $1"
# out.params == [Text("scifi")]
```

Clause order is enforced at compile time (a phantom stage parameter):
`having` before `group_by`, or `where_` after `select`, is a type error.
A misspelled column on a schema record is a compile error too. Not exported
yet — the module is exercised by `roc test package/main.roc` only.

## Provenance

Grew out of two experiments: the `wip-element-api` branch of a roc-html fork
(typed tag/attribute unions) and a type-driven SQL builder sketch. This
package is their new-compiler home.
