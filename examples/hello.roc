# Port of the old roc-html fork's examples/example2.roc to roc-builder.
# Run:  roc examples/hello.roc
app [main!] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.21.0/4rAQg8kUYZ3Vksr4qMQHpaFYNiHSn9GgS7gVxghd1XYV.tar.zst",
    html: "../package/main.roc",
}

import pf.Stdout
import html.Html
import html.Attribute

main! = |_args| {
    page = Html.html(
        [],
        [
            Html.body(
                [],
                [
                    Html.h1([], [Html.text("Roc")]),
                    Html.p(
                        [],
                        [
                            Html.text("My favourite language is "),
                            Html.a([Attribute.href("https://roc-lang.org/")], [Html.text("Roc")]),
                            Html.text("!"),
                        ],
                    ),
                ],
            ),
        ],
    )
    Stdout.line!(Html.render(page))
}
