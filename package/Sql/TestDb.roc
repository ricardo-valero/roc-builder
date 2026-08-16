import /Sql/Value exposing [Value]
import /Sql/Cond exposing [Cond]
import /Sql/Scalar exposing [Scalar]
import /Sql exposing [Sql]

# Test schema context (the Db pattern users write): tables as type-module
# namespaces, columns as Scalar constants over the default (table, column)
# slot type. Not exported; exists to exercise the Sql module.
TestDb :: [].{
    Books :: [].{
        table : Str
        table = "books"

        cols : { id : Scalar((Str, Str)), genre : Scalar((Str, Str)), author_id : Scalar((Str, Str)) }
        cols = {
            id: Slot(("books", "id")),
            genre: Slot(("books", "genre")),
            author_id: Slot(("books", "author_id")),
        }
    }

    Sales :: [].{
        table : Str
        table = "sales"

        cols : { id : Scalar((Str, Str)), book_id : Scalar((Str, Str)), qty : Scalar((Str, Str)), sale_date : Scalar((Str, Str)) }
        cols = {
            id: Slot(("sales", "id")),
            book_id: Slot(("sales", "book_id")),
            qty: Slot(("sales", "qty")),
            sale_date: Slot(("sales", "sale_date")),
        }
    }

    Authors :: [].{
        table : Str
        table = "authors"

        cols : { id : Scalar((Str, Str)), name : Scalar((Str, Str)), deceased : Scalar((Str, Str)) }
        cols = {
            id: Slot(("authors", "id")),
            name: Slot(("authors", "name")),
            deceased: Slot(("authors", "deceased")),
        }
    }
}

# The reusable source: FROM + JOINs + named scope + slot emitter.
tables = {
    from: TestDb.Books.table,
    joins: [
        Inner(TestDb.Sales.table, Eq(TestDb.Sales.cols.book_id, TestDb.Books.cols.id)),
        Left(TestDb.Authors.table, Eq(TestDb.Authors.cols.id, TestDb.Books.cols.author_id)),
    ],
    scope: { book: TestDb.Books.cols, sale: TestDb.Sales.cols, author: TestDb.Authors.cols },
    slot_sql: Sql.std_col,
}

# The design's full example, end to end.
expect {
    out = Sql.render(Query(tables,
            Where(|{ sale, author, .. }| And([
                Eq(Year(sale.sale_date), I64(2024)),
                Not(Eq(author.deceased, True)),
            ]),
            Group(|{ book, sale, .. }| {
                keys: [book.genre],
                row: { genre: book.genre, total: Sum(sale.qty) },
            },
            Having(|{ total, .. }| Gt(total, I64(100)),
            Select(|{ genre, total, .. }| [genre, As(total, "total_sold")],
            Order(|{ total, .. }| [(total, Desc)],
            Limit(5, End))))))), Postgres)
    out.sql
    == "SELECT books.genre, SUM(sales.qty) AS total_sold FROM books INNER JOIN sales ON sales.book_id = books.id LEFT JOIN authors ON authors.id = books.author_id WHERE (EXTRACT(YEAR FROM sales.sale_date) = $1 AND NOT (authors.deceased = $2)) GROUP BY books.genre HAVING SUM(sales.qty) > $3 ORDER BY SUM(sales.qty) DESC LIMIT 5"
    and out.params.len() == 3
    and (out.params.get(0) ?? Null) == Value.I64(2024)
    and (out.params.get(1) ?? Null) == Value.Bool(Bool.True)
    and (out.params.get(2) ?? Null) == Value.I64(100)
}

# Minimal query over the SAME source — skip-by-omission, source reuse.
expect {
    out = Sql.render(Query(tables, Select(|{ book, .. }| [book.genre], End)), Postgres)
    out.sql == "SELECT books.genre FROM books INNER JOIN sales ON sales.book_id = books.id LEFT JOIN authors ON authors.id = books.author_id"
    and out.params.len() == 0
}

# Joinless source; Offset terminal.
expect {
    src = {
        from: TestDb.Authors.table,
        joins: [],
        scope: { author: TestDb.Authors.cols },
        slot_sql: Sql.std_col,
    }
    out = Sql.render(
        Query(src,
            Where(|{ author, .. }| Eq(author.name, Text("O'Brien")),
            Select(|{ author, .. }| [author.name],
            Offset(3)))),
        Postgres,
    )
    out.sql == "SELECT authors.name FROM authors WHERE authors.name = $1 OFFSET 3"
    and (out.params.get(0) ?? Null) == Value.Text("O'Brien")
}

# Ungrouped Order over the source scope; Limit then Offset.
expect {
    src = { from: TestDb.Books.table, joins: [], scope: { book: TestDb.Books.cols }, slot_sql: Sql.std_col }
    Sql.render(
        Query(src,
            Select(|{ book, .. }| [book.genre],
            Order(|{ book, .. }| [(book.genre, Asc)],
            Limit(10, End)))),
        Postgres,
    ).sql
    == "SELECT books.genre FROM books ORDER BY books.genre ASC LIMIT 10"
}

# Compile-time guarantees (negative examples — must be TYPE MISMATCH when
# uncommented):
#   Query(tables, Having(|{ x, .. }| Eq(x, 1), ...))         # HAVING without GROUP: not in AfterSource
#   Query(tables, Where(c1, Where(c2, ...)))             # double WHERE: not in AfterWhere
#   Query(tables, Select(..., Select(...)))              # double SELECT
#   Group(|t| { keys: [...], row: { genre: ... } }, Having(|{ total, .. }| ..., ...))  # row lacks total

