### Create a table "BooksAuthors" containing two fields ( AuthorId, BookId )

CREATE TABLE BooksAuthors (
    AuthorId INT NOT NULL,
    BookId  INT NOT NULL,
    FOREIGN KEY (AuthorId) REFERENCES Authors(Id),
    FOREIGN KEY (BookId) REFERENCES Books(Id)
);
### Insert at least 5 records into the BooksAuthors table.

insert into BooksAuthors (AuthorId,BookId) values (1,1),(2,2),(3,3),(4,4),(5,5)

### Write a statement that will select the Country column from the Authors table.
Select Country from Authors

### Select all the different values from the Country column in the Authors table.
Select DISTINCT Country from Authors

### Write an SQL query to return only Authors whose last name begins with S.
Select Name from Authors where Name like 'S%'

### List the number of Authors in each country.
Select Count(Country) from Authors

### Select all records from the Authors table, sort the result alphabetically by the column first name.
Select * from Authors ORDER BY Name ASC

### Select all records from the Customers table, sort the result reversed alphabetically by the column last name.
Select * from Authors ORDER BY Name DESC

### Select all records where the Title column has the value 'Great ' from Books table.
Select * from Books where Title like '%Great%'

### Use the NOT keyword to select all records where Country is NOT "USA".
Select * from Authors where not Country  ='USA'

### Select all records where the country column has the value 'USA' or 'India' from Authors table
Select * from Authors where Country  ='USA' or Country='India'

### Select all records where the age column has the value BETWEEN 50 - 60 in Authors table.
Select * from Authors where age between 50 and 60

### Use INNER to return the requested items with customers id.
select *from BooksAuthors inner join Authors on BooksAuthors.AuthorId =Authors.id

### Use the MIN function to select the record with the smallest value of the Age column from Authors table.
Select min(age) from Authors

### Choose the correct JOIN clause to view all books and their authors
Select Name ,Title from Authors full outer join Books ON Authors.Id=Books.Id







