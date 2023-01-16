
# Day3_SQL_Lab1

- Create a table "BooksAuthors" containing two fields ( AuthorId, BookId )
CREATE TABLE BooksAuthors (
    AuthorId INT NOT NULL,
    BookId  INT NOT NULL,
    FOREIGN KEY (AuthorId) REFERENCES Authors(Id),
    FOREIGN KEY (BookId) REFERENCES Books(Id)
);

- Insert at least 5 records into the BooksAuthors table.
INSERT INTO BooksAuthors
 (AuthorId, BookId )
VALUES
    (7,6),
    (3,5),
    (4,7),
    (2,3),
    (5,8),
    (1,3),
;

- Write a statement that will select the Country column from the Authors table.
select country from authors;

- Select all the different values from the Country column in the Authors table.
select DISTINCT country from authors;

- Write an SQL query to return only Authors whose last name begins with S.
select name from authors where name like '%s';

- List the number of Authors in each country.
select country,count(id) from authors group by country;

- Select all records from the Authors table, sort the result alphabetically by the column first name.
select * from authors order by name;

- Select all records from the Customers table, sort the result reversed alphabetically by the column last name.
select * from authors order by name DESC;

- Select all records where the Title column has the value 'Great ' from Books table.
select * from Books where title like '%Great%';

- Use the NOT keyword to select all records where Country is NOT "USA".
select * from authors where not country = 'USA';

- Select all records where the country column has the value 'USA' or 'India' from Authors table
select * from authors where country = 'USU' or country = 'India';

- Select all records where the age column has the value BETWEEN 50 - 60 in Authors table.
select * from authors where age between 50 and 60;

- Use INNER to return the requested items with customers id.
select a.id,b.id from authors a inner join authors b on a.id=b.id;

- Use the MIN function to select the record with the smallest value of the Age column from Authors table.
select min(age) from authors;

- Choose the correct `JOIN` clause to view all books and their authors
select authors.name, booksauthors.bookid from authors inner join booksauthors on booksauthors.authorid=authors.id where booksauthors.bookid in ( select bookid from books);

