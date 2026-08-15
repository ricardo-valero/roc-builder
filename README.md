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

```roc
import html.Html exposing [render, body, h1, p, a, text]
import html.Html/Attribute exposing [href]

page = Html.html([], [
    body([], [
        h1([], [text("Roc")]),
        p([], [
            text("My favourite language is "),
            a([href("https://roc-lang.org/")], [text("Roc")]),
        ]),
    ]),
])
# render(page) == "<!DOCTYPE html><html>...</html>", text always escaped
```

Void elements (`br`, `img`, ...) take no children — by type, not by runtime
check. Boolean attributes render bare (`disabled`, never `disabled=""`).
Custom elements and `data-*`/`aria-*` attributes have explicit escape hatches.

## Migrating from Hasnep/roc-html

The `Html` module keeps the same Elm-style surface (`div([attrs], [children])`,
`Attribute.href(...)`), so most documents port unchanged. Differences:

- void elements take a single `attrs` argument (no empty children list)
- boolean attributes use flag constructors: `disabled` instead of `disabled("")`
- `attribute("name")("value")` becomes `Attribute.custom("name", "value")`

## Provenance

Grew out of two experiments: the `wip-element-api` branch of a roc-html fork
(typed tag/attribute unions) and a type-driven SQL builder sketch. This
package is their new-compiler home.
