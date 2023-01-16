
# Day3_SQL_Lab1

- Create a table "BooksAuthors" containing two fields ( AuthorId, BookId )
- Insert at least 5 records into the BooksAuthors table.

INSERT INTO BookAuthors
(AuthorId, BookId)
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);

- Write a statement that will select the Country column from the Authors table.

SELECT Country 
FROM Authors;

- Select all the different values from the Country column in the Authors table.

SELECT DISTINCT(Country)
FROM Authors;

- Write an SQL query to return only Authors whose last name begins with S.

SELECT Name
FROM Authors
WHERE Name LIKE '% S%';

- List the number of Authors in each country.

SELECT Country, COUNT(Country)
FROM Authors
GROUP BY Country;

- Select all records from the Authors table, sort the result alphabetically by the column first name.

SELECT *
FROM Authors
ORDER BY Name;

- Select all records from the Customers table, sort the result reversed alphabetically by the column last name.

SELECT *
FROM Authors
ORDER BY Name DESC;

- Select all records where the Title column has the value 'Great ' from Books table.

SELECT *
FROM Books
WHERE Title LIKE '%Great%';

- Use the NOT keyword to select all records where Country is NOT "USA".

SELECT * 
FROM Authors
WHERE Country != 'USA';

- Select all records where the country column has the value 'USA' or 'India' from Authors table

SELECT * 
FROM Authors
WHERE Country LIKE 'USA' OR Country LIKE 'India';

- Select all records where the age column has the value BETWEEN 50 - 60 in Authors table.

SELECT * 
FROM Authors
WHERE Age BETWEEN 50 AND 60;

- Use INNER to return the requested items with costumers id.

SELECT a.id, b.id 
FROM Authors a
INNER JOIN authors b;

- Use the MIN function to select the record with the smallest value of the Age column from Authors table.

SELECT MIN(Age)
FROM Authors;

- Choose the correct `JOIN` clause to view all books and their authors

SELECT Authors.name, BooksAuthors.bookid
FROM Authors
INNER JOIN BooksAuthors
ON BooksAuthors.authorid = Authors.id
WHERE BooksAuthors.bookid IN (SELECT bookid FROM Books);
