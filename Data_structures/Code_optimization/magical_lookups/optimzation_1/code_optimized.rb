# Right now, because the author hash tables are stored in an array, it will always
# take us O(M) steps (M being the number of authors) to find any given author_id
# within that array. But if we store that same information in a hash table, we’d
# now gain our “magical” ability to find each author in just O(1) time.
# Here’s one possibility of what this hash table could look like:
# author_hash_table =
# {1 => "Virginia Woolf", 2 => "Leo Tolstoy", 3 => "Dr. Seuss",
# 4 => "J. K. Rowling", 5 => "Mark Twain"}

# So, let’s optimize our algorithm by first moving the authors data into this hash
# table, and only then run our loop through the books:

def connect_books_with_authors(books, authors)
    books_with_authors = []
    author_hash_table = {}
    # Convert author data into author hash table:
    authors.each do |author|
        author_hash_table[author["author_id"]] = author["name"]
    end
    books.each do |book|
        books_with_authors <<
        {"title" => book["title"],
        "author" => author_hash_table[book["author_id"]]}
    end
    return books_with_authors
end
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
p connect_books_with_authors(books, authors)