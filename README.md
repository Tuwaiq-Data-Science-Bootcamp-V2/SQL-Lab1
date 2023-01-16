
# Day3_SQL_Lab1

- Create a table "BooksAuthors" containing two fields ( AuthorId, BookId )

CREATE TABLE BooksAuthors (
    AuthorId INT NOT NULL,
    BookId  INT NOT NULL,
    FOREIGN KEY (AuthorId) REFERENCES Authors(Id),
    FOREIGN KEY (BookId) REFERENCES Books(Id)
);


- Insert at least 5 records into the BooksAuthors table.

INSERT INTO BooksAuthors (AuthorId, BookId)
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

SELECT DISTINCT Country
FROM Authors;

- Write an SQL query to return only Authors whose last name begins with S.

SELECT * 
FROM Authors 
WHERE Name LIKE 'S%';

- List the number of Authors in each country.

SELECT Country, COUNT (*) AS Number
FROM Authors
GROUP BY Country

- Select all records from the Authors table, sort the result alphabetically by the column first name.

SELECT *
FROM Authors
ORDER BY name

- Select all records from the Customers table, sort the result reversed alphabetically by the column last name.

SELECT *
FROM Authors
ORDER BY name DESC;


- Select all records where the Title column has the value 'Great ' from Books table.

SELECT *
FROM Books
WHERE Title LIKE '%Great%'

- Use the NOT keyword to select all records where Country is NOT "USA".

SELECT *
FROM Authors
WHERE NOT Country = 'USA'

- Select all records where the country column has the value 'USA' or 'India' from Authors table
-
SELECT *
FROM Authors
WHERE country = 'USA' or country = 'India'


- Select all records where the age column has the value BETWEEN 50 - 60 in Authors table.

SELECT *
FROM Authors
WHERE Age BETWEEN 50 and 60

- Use INNER to return the requested items with customers id.

SELECT Books.Title
FROM Books
INNER JOIN Authors
ON Books.Id = Authors.ID;


- Use the MIN function to select the record with the smallest value of the Age column from Authors table.

SELECT MIN(Age)
FROM Authors


- Choose the correct `JOIN` clause to view all books and their authors

SELECT Authors.Name, Books.Title
FROM Authors
FULL JOIN Books 
ON Authors.ID =  Books.Id
