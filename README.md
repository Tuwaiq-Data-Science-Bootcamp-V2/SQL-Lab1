
# Day3_SQL_Lab1

Q1 - Create a table "BooksAuthors" containing two fields ( AuthorId, BookId )
- CREATE TABLE BooksAuthors (
    AuthorId INT NOT NULL,
    BookId  INT NOT NULL,
    FOREIGN KEY (AuthorId) REFERENCES Authors(Id),
    FOREIGN KEY (BookId) REFERENCES Books(Id)
Q2 - Insert at least 5 records into the BooksAuthors table.
- INSERT INTO booksauthors
VALUES 
(1,2),
(2,3);
Q3 - Write a statement that will select the Country column from the Authors table.
- SELECT Country 
From authors;
- Select all the different values from the Country column in the Authors table.
- SELECT DISTINCT Country
FROM authors;
Q4 - Write an SQL query to return only Authors whose last name begins with S.
- SELECT * FROM authors
WHERE name LIKE '%s';
Q5 - List the number of Authors in each country.
- SELECT Country,COUNT (id)
FROM authors
GROUP BY Country;
Q6 - Select all records from the Authors table, sort the result alphabetically by the column first name.
- SELECT * FROM authors
ORDER BY name;
Q7 - Select all records from the Customers table, sort the result reversed alphabetically by the column last name.
- SELECT * FROM authors
ORDER BY name DESC;
Q8 - Select all records where the Title column has the value 'Great ' from Books table.
- SELECT * FROM books
WHERE title='%Great%'
Q9 - Use the NOT keyword to select all records where Country is NOT "USA".
- SELECT Country
FROM authors
WHERE Country NOT LIKE 'USA'
Q10 - Select all records where the country column has the value 'USA' or 'India' from Authors table
- SELECT * FROM authors
WHERE Country= 'USA' OR Country='India';
Q11 - Select all records where the age column has the value BETWEEN 50 - 60 in Authors table.
- SELECT * FROM authors
WHERE age BETWEEN 50 AND 60;
Q12 - Use INNER to return the requested items with customers id.
SELECT books.title, booksauthors.authorid
 FROM booksauthors
 INNER JOIN books
 ON books.id = booksauthors.bookid
Q13 - Use the MIN function to select the record with the smallest value of the Age column from Authors table.
- SELECT *
 FROM authors
 WHERE age = (SELECT MIN(age) FROM authors);
Q14 - Choose the correct `JOIN` clause to view all books and their authors
- SELECT booksauthors.bookid, books.title, booksauthors.authorid, authors.name
 FROM booksauthors
 	INNER JOIN books
 	ON books.id = booksauthors.bookid
 		INNER JOIN authors
 		on authors.id = booksauthors.authorid
