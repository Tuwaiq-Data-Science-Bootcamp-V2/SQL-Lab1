
# Day3_SQL_Lab1

## - Create a table "BooksAuthors" containing two fields ( AuthorId, BookId )
```sql
CREATE TABLE BooksAuthors (
    AuthorId INT NOT NULL,
    BookId  INT NOT NULL,
    FOREIGN KEY (AuthorId) REFERENCES Authors(Id),
    FOREIGN KEY (BookId) REFERENCES Books(Id)
);
```

---------------------------------------------------------------------------
## - Insert at least 5 records into the BooksAuthors table.
```sql
INSERT INTO BooksAuthors
    (AuthorId, BookId)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);
```    

---------------------------------------------------------------------------
## - Write a statement that will select the Country column from the Authors table.
```sql
SELECT Country FROM Authors;
```
---------------------------------------------------------------------------
## - Select all the different values from the Country column in the Authors table.
```sql
SELECT DISTINCT Country FROM Authors;
```

---------------------------------------------------------------------------
## - Write an SQL query to return only Authors whose last name begins with S.
```sql
SELECT * FROM Authors
WHERE NAME LIKE 'S%'
```
---------------------------------------------------------------------------
## - List the number of Authors in each country.
```sql
SELECT country, count(id)
from authors 
group by country;
```
---------------------------------------------------------------------------
## - Select all records from the Authors table, sort the result alphabetically by the column first name.
```sql
SELECT * 
from authors 
ORDER BY name asc;
```
---------------------------------------------------------------------------
## - Select all records from the Authors table, sort the result reversed alphabetically by the column last name.
```sql
SELECT * 
from authors 
ORDER BY name desc;
```
---------------------------------------------------------------------------
## - Select all records where the Title column has the value 'Great ' from Books table.
```sql
SELECT * FROM Books
where Title like %Great%';
```
---------------------------------------------------------------------------
## - Use the NOT keyword to select all records where Country is NOT "USA".
```sql
SELECT * FROM authors
where Country not like  '%USA%';
```
---------------------------------------------------------------------------
## - Select all records where the country column has the value 'USA' or 'India' from Authors table
```sql
SELECT * FROM Authors
where Country = '%USA%' or Country = '%India%';
```
---------------------------------------------------------------------------
## - Select all records where the age column has the value BETWEEN 50 - 60 in Authors table.
```sql
SELECT * FROM Authors
where age between 50 and 60;
```
---------------------------------------------------------------------------
## - Use INNER to return the requested Books with Authour id.
```sql
select * 
from books 
inner join booksauthors on books.id=booksauthors.bookid;
```
---------------------------------------------------------------------------
##  Use the MIN function to select the record with the smallest value of the Age column from Authors table.
```sql
SELECT MIN( Age) FROM Authors;
```
---------------------------------------------------------------------------
## - Choose the correct `JOIN` clause to view all books and their authors
```sql
select books.title,authors.name 
from booksauthors 
join authors on authors.id=booksauthors.authorid
join books on books.id=booksauthors.bookid;  
```
