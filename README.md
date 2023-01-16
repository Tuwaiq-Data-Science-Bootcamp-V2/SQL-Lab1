
# Day3_SQL_Lab1

- Create a table "BooksAuthors" containing two fields ( AuthorId, BookId )
CREATE TABLE BooksAuthors (
    AuthorId INT NOT NULL,
    BookId  INT NOT NULL,
    FOREIGN KEY (AuthorId) REFERENCES Authors(Id),
    FOREIGN KEY (BookId) REFERENCES Books(Id)
);
----------------------------
- Insert at least 5 records into the BooksAuthors table.
INSERT INTO BooksAuthors
    (authorid, bookid)
VALUES
    (1,1),
    (2,2),
    (3,3),
    (4,4),
    (5,5);
----------------------------
- Write a statement that will select the Country column from the Authors table.
select Country from Authors;
----------------------------
- Select all the different values from the Country column in the Authors table.
select DISTINCT Country from Authors;
----------------------------
- Write an SQL query to return only Authors whose last name begins with S.
select * from Authors where name LIKE '% S%';
----------------------------
- List the number of Authors in each country.
select country , count(id) from Authors group by country;
----------------------------
- Select all records from the Authors table, sort the result alphabetically by the column first name.
select * from Authors order by name asc;
----------------------------
- Select all records from the Authors table, sort the result reversed alphabetically by the column last name.
select * from Authors order by name desc;
----------------------------
- Select all records where the Title column has the value 'Great ' from Books table.
select * from Books where title like '%Great %';
----------------------------
- Use the NOT keyword to select all records where Country is NOT "USA".
select * from Authors where not country='USA';
----------------------------
- Select all records where the country column has the value 'USA' or 'India' from Authors table
select * from Authors where country='USA' or country='India';
----------------------------
- Select all records where the age column has the value BETWEEN 50 - 60 in Authors table.
select * from Authors where age between 50 and 60;
----------------------------
- Use INNER to return the requested items with Authors id.
select * from Authors inner join BooksAuthors on Authors.id = BooksAuthors.authorid;
----------------------------
- Use the MIN function to select the record with the smallest value of the Age column from Authors table.
select min(age) from Authors;
----------------------------
- Choose the correct `JOIN` clause to view all books and their authors
select * from booksauthors left join authors on booksauthors.authorid = authors.id left join books on booksauthors.authorid = books.id; 
----------------------------
