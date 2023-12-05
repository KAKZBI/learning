authors = [
    {"author_id" => 1, "name" => "Virginia Woolf"},
    {"author_id" => 2, "name" => "Leo Tolstoy"},
    {"author_id" => 3, "name" => "Dr. Seuss"},
    {"author_id" => 4, "name" => "J. K. Rowling"},
    {"author_id" => 5, "name" => "Mark Twain"}
    ]
books = [
        {"author_id" => 3, "title" => "Hop on Pop"},
        {"author_id" => 1, "title" => "Mrs. Dalloway"},
        {"author_id" => 4, "title" => "Harry Potter and the Sorcerer's Stone"},
        {"author_id" => 1, "title" => "To the Lighthouse"},
        {"author_id" => 2, "title" => "Anna Karenina"},
        {"author_id" => 5, "title" => "The Adventures of Tom Sawyer"},
        {"author_id" => 3, "title" => "The Cat in the Hat"},
        {"author_id" => 2, "title" => "War and Peace"},
        {"author_id" => 3, "title" => "Green Eggs and Ham"},
        {"author_id" => 5, "title" => "The Adventures of Huckleberry Finn"}
        ]
# we want to write code that combined this information together
# to create an array in the following format:
# books_with_authors = [
#     {"title" => "Hop on Pop", "author" => "Dr. Seuss"}
#     {"title" => "Mrs. Dalloway", "author" => "Virginia Woolf"}
#     {"title" => "Harry Potter and the Sorcerer's Stone",
#     "author" => "J. K. Rowling"}
#     {"title" => "To the Lighthouse", "author" => "Virginia Woolf"}
#     {"title" => "Anna Karenina", "author" => "Leo Tolstoy"}
#     {"title" => "The Adventures of Tom Sawyer", "author" => "Mark Twain"}
#     {"title" => "The Cat in the Hat", "author" => "Dr. Seuss"}
#     {"title" => "War and Peace", "author" => "Leo Tolstoy"}
#     {"title" => "Green Eggs and Ham", "author" => "Dr. Seuss"}
#     {"title" => "The Adventures of Huckleberry Finn", "author" => "Mark Twain"}
#     ]
# We could start with this:
def connect_books_with_authors(books, authors)
    books_with_authors = []
    books.each do |book|
        authors.each do |author|
            if book["author_id"] == author["author_id"]
                books_with_authors <<
                {title: book["title"],
                author: author["name"]}
            end
        end
    end
    return books_with_authors
end

