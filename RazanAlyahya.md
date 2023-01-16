# Razan Alyahya
# Day3_SQL_Lab1

- Create a table "BooksAuthors" containing two fields ( AuthorId, BookId )
```sql
CREATE TABLE BooksAuthors (
    AuthorId INT NOT NULL,
    BookId  INT NOT NULL,
    FOREIGN KEY (AuthorId) REFERENCES Authors(Id),
    FOREIGN KEY (BookId) REFERENCES Books(Id)
);
```
- Insert at least 5 records into the BooksAuthors table.
```sql
INSERT INTO BooksAuthors
    (AuthorId, BookId)
VALUES
    (1,1),
    (2,2),
    (3,3),
    (4,4),
    (5,5);
```
- Write a statement that will select the Country column from the Authors table.
```sql
SELECT country 
FROM Authors;
```
- Select all the different values from the Country column in the Authors table.
```sql
SELECT distinct country 
FROM Authors;

```
- Write an SQL query to return only Authors whose last name begins with S.
```sql
SELECT Name 
from Authors 
WHERE Name like '% S%';
```
- List the number of Authors in each country.
```sql
SELECT count(id), Country 
FROM authors group by Country;
```
- Select all records from the Authors table, sort the result alphabetically by the column first name.
```sql
SELECT * 
FROM authors ORDER bY Name;
```
- Select all records from the Customers table, sort the result reversed alphabetically by the column last name.
```sql
SELECT name
FROM authors
ORDER BY RIGHT(name, LENGTH(name)  -  STRPOS(name, ' ') ) DESC;
```
Or
```sql
SELECT * 
FROM authors ORDER bY Name DESC;
```
- Select all records where the Title column has the value 'Great ' from Books table.
```sql
SELECT *
FROM books
WHERE title like '%Great%';
```
- Use the NOT keyword to select all records where Country is NOT "USA".
```sql
SELECT * 
FROM authors 
WHERE Country<>'USA';
```
- Select all records where the country column has the value 'USA' or 'India' from Authors table
```sql
SELECT * 
FROM authors 
WHERE country = 'USA' OR country = 'India'
```
- Select all records where the age column has the value BETWEEN 50 - 60 in Authors table.
```sql
SELECT *
FROM authors
WHERE age BETWEEN 50 and 60;
```
- Use INNER to return the requested items with customers id.
```sql
SELECT B.title, BA.authorid
FROM booksauthors AS BA
INNER JOIN books AS B
ON B.id = BA.bookid;
```
- Use the MIN function to select the record with the smallest value of the Age column from Authors table.
```sql
SELECT * 
FROM authors 
WHERE age= (select min(age) from authors);
```
- Choose the correct `JOIN` clause to view all books and their authors
1. View all books, whether they have an author or not
```sql
  SElECT A.id AS Authors_ID ,A.name AS Authors_Name ,B.id AS Books_ID,B.title AS Books_Name 
  FROM books AS B
  LEFT join booksauthors AS BA
   on B.id = BA.bookid
  LEFT JOIN authors AS A
  on A.id = BA.AuthorId;
```
2. View all books that have an author
```sql
SELECT A.id AS Authors_ID ,A.name AS Authors_Name ,B.id AS Books_ID,B.title AS Books_Name
FROM booksauthors AS BA
 inner join books AS B
 on B.id = BA.bookid
  inner join authors AS A
  on A.id = BA.AuthorId;
```
