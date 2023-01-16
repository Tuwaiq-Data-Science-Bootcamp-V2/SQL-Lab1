
# Day3_SQL_Lab1

- Create a table "BooksAuthors" containing two fields ( AuthorId, BookId )
CREATE TABLE BooksAuthors (AuthorId INT, BookId INT);
- Insert at least 5 records into the BooksAuthors table.
- INSERT INTO BooksAuthors (AuthorId, BookId) VALUES (45, {"text":"\"Starship Training Center\"","cur":{"from":26,"to":26}} 4);
INSERT INTO BooksAuthors (AuthorId, BookId) VALUES (100, 567);
INSERT INTO BooksAuthors (AuthorId, BookId) VALUES (567, 56);
INSERT INTO BooksAuthors (AuthorId, BookId) VALUES (33, 34);
INSERT INTO BooksAuthors (AuthorId, BookId) VALUES (88, 86);

- Write a statement that will select the Country column from the Authors table.
SELECT Country FROM Authors;
- Select all the different values from the Country column in the Authors table.
SELECT DISTINCT Country FROM Authors;
- Write an SQL query to return only Authors whose last name begins with S.
SELECT * FROM Authors WHERE LastName LIKE 'S%';
- List the number of Authors in each country.
SELECT Country, COUNT(*) FROM Authors GROUP BY Country;

- Select all records from the Authors table, sort the result alphabetically by the column first name.
SELECT * FROM Authors ORDER BY FirstName ASC;
- Select all records from the Customers table, sort the result reversed alphabetically by the column last name.
SELECT * FROM Customers ORDER BY LastName DESC;

- Select all records where the Title column has the value 'Great ' from Books table.
SELECT * FROM Books WHERE Title = 'Great';

- Use the NOT keyword to select all records where Country is NOT "USA".
SELECT * FROM Authors WHERE Country != 'USA';
- Select all records where the country column has the value 'USA' or 'India' from Authors table
SELECT * FROM Authors WHERE Country IN ('USA', 'India');
- Select all records where the age column has the value BETWEEN 50 - 60 in Authors table.
SELECT * FROM Authors WHERE Age BETWEEN 50 AND 60;
- Use INNER to return the requested items with customers id.
SELECT Customers.ID, Items.RequestedItems FROM Customers INNER JOIN Items ON Customers.ID = Items.CustomerID;
- Use the MIN function to select the record with the smallest value of the Age column from Authors table.
SELECT MIN(Age) FROM Authors;
- Choose the correct `JOIN` clause to view all books and their authors
SELECT Books.Title, Authors.FirstName, Authors.LastName FROM Books JOIN BooksAuthors ON Books.ID = BooksAuthors.BookId JOIN Authors ON BooksAuthors.AuthorId = Authors.ID;
