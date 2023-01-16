
# Day3_SQL_Lab1

- Create a table "BooksAuthors" containing two fields ( AuthorId, BookId )

CREATE TABLE BooksAuthors (
    AuthorId INT NOT NULL,
    BookId  INT NOT NULL,
    FOREIGN KEY (AuthorId) REFERENCES Authors(Id),
    FOREIGN KEY (BookId) REFERENCES Books(Id)
);

- Insert at least 5 records into the BooksAuthors table.

INSERT INTO booksauthors
VALUES 
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5);
  
- Write a statement that will select the Country column from the Authors table

SELECT country from authors

- Select all the different values from the Country column in the Authors table.

SELECT DISTINCT country from authors

- Write an SQL query to return only Authors whose last name stsrt with S.

SELECT * FROM authors
WHERE name LIKE ' % S%'

- List the number of Authors in each country.

SELECT country, COUNT(id) FROM authors
GROUP BY country

- Select all records from the Authors table, sort the result alphabetically by the column first name.

SELECT * FROM authors
ORDER BY name

- Select all records from the Authors table, sort the result reversed alphabetically by the column last name.

SELECT * FROM authors
ORDER BY name DESC

- Select all records where the Title column has the value 'Great ' from Books table.

SELECT * FROM books
WHERE title LIKE '%Great %'

- Use the NOT keyword to select all records where Country is NOT "USA".

SELECT * FROM authors
WHERE NOT country = 'USA'

- Select all records where the country column has the value 'USA' or 'India' from Authors table

SELECT * FROM authors
WHERE country = 'USA' OR country = 'India'

- Select all records where the age column has the value BETWEEN 50 - 60 in Authors table.

SELECT * FROM authors
WHERE age BETWEEN 50 AND 60

- Use INNER to return the requested items with customers id

SELECT name, bookid FROM authors
INNER JOIN booksauthors 
ON id = authorid

- Use the MIN function to select the record with the smallest value of the Age column from Authors table.

SELECT * FROM Authors
WHERE Age = (SELECT MIN(Age) FROM Authors)

- Choose the correct `JOIN` clause to view all books and their authors

SELECT title, name FROM books b
JOIN booksauthors ON bookid = b.id
JOIN authors a ON authorid = a.id

