# The document is a data literal: variants, no wrapper functions.
# Run:  roc examples/hello.roc
app [main!] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.21.0/4rAQg8kUYZ3Vksr4qMQHpaFYNiHSn9GgS7gVxghd1XYV.tar.zst",
    html: "../package/main.roc",
}

import pf.Stdout
import html.Html

main! = |_args| {
    page : Html.Html
    page = Html(
        [],
        [
            Body(
                [],
                [
                    H1([], [Text("Roc")]),
                    P(
                        [],
                        [
                            Text("My favourite language is "),
                            A([Href("https://roc-lang.org/")], [Text("Roc")]),
                            Text("!"),
                        ],
                    ),
                ],
            ),
        ],
    )
    Stdout.line!(Html.render_doc(page))
}
