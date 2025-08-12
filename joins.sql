
-- INNER JOIN: Get all books and their authors where both exist
SELECT Books.Title, Authors.Name AS Author
FROM Books
INNER JOIN Authors ON Books.AuthorID = Authors.AuthorID;

-- LEFT JOIN: Get all books and their authors, include books without authors
SELECT Books.Title, Authors.Name AS Author
FROM Books
LEFT JOIN Authors ON Books.AuthorID = Authors.AuthorID;

-- RIGHT JOIN: Get all authors and their books, include authors without books
SELECT Books.Title, Authors.Name AS Author
FROM Books
RIGHT JOIN Authors ON Books.AuthorID = Authors.AuthorID;

-- FULL OUTER JOIN: Get all books and authors, even if they don't match (MySQL doesn't support FULL JOIN directly)
-- Simulate using UNION
SELECT Books.Title, Authors.Name AS Author
FROM Books
LEFT JOIN Authors ON Books.AuthorID = Authors.AuthorID
UNION
SELECT Books.Title, Authors.Name AS Author
FROM Books
RIGHT JOIN Authors ON Books.AuthorID = Authors.AuthorID;

-- INNER JOIN with 3 tables: Books, Authors, Categories
SELECT Books.Title, Authors.Name AS Author, Categories.CategoryName
FROM Books
INNER JOIN Authors ON Books.AuthorID = Authors.AuthorID
INNER JOIN Categories ON Books.CategoryID = Categories.CategoryID;

-- LEFT JOIN: Members and IssuedBooks
SELECT Members.Name AS Member, Books.Title AS Book
FROM Members
LEFT JOIN IssuedBooks ON Members.MemberID = IssuedBooks.MemberID
LEFT JOIN Books ON IssuedBooks.BookID = Books.BookID;
