
# Day3_SQL_Lab1


- Create a table "BooksAuthors" containing two fields ( AuthorId, BookId )

create table BooksAuthors ( AuthorId int , BookId int  );

- Insert at least 5 records into the BooksAuthors table.

INSERT INTO BooksAuthors (AuthorId , BookId) values ( 1 , 234);
INSERT INTO BooksAuthors (AuthorId , BookId) values ( 2 , 245);
INSERT INTO BooksAuthors (AuthorId , BookId) values ( 3 , 256);
INSERT INTO BooksAuthors (AuthorId , BookId) values ( 4 , 267);
INSERT INTO BooksAuthors (AuthorId , BookId) values ( 5 , 278);
INSERT INTO BooksAuthors (AuthorId , BookId) values ( 6 , 289);

- Write a statement that will select the Country column from the Authors table.

select Country from Authors  ; 

- Select all the different values from the Country column in the Authors table.
 
select DISTINCT Country from Authors  ;

- Write an SQL query to return only Authors whose last name begins with S.
 
select *  from BooksAuthors where Authors LIKE ‘S%’ ; 

- List the number of Authors in each country.

select COUNT (Authors) from country ;

- Select all records from the Authors table, sort the result alphabetically by the column first name.

select *  from  Authors ORDERD BY firstName ;

- Select all records from the Customers table, sort the result reversed alphabetically by the column last name.

select * from Customers ORDERD BY lastName DESC ;

- Select all records where the Title column has the value 'Great ' from Books table.

select * from Books where Title IN( 'Great ‘) ; 

- Use the NOT keyword to select all records where Country is NOT "USA".

select * from Authors where Country  NOT IN (‘USA' ); 

- Select all records where the country column has the value 'USA' or 'India' from Authors table.

select * from Authors where country = ‘USA' OR country = ‘India' ;

- Select all records where the age column has the value BETWEEN 50 - 60 in Authors table.

select * from Authors where age BETWEEN 50 AND 60 ;

- Use INNER to return the requested items with customers id.

select A.id ,  B.id from A INNER JOIN B  ON  A.id = B.id ;

- Use the MIN function to select the record with the smallest value of the Age column from Authors table.

select MIN(Age) from Authors ; 

- Choose the correct `JOIN` clause to view all books and their authors

select  Authors.name , BooksAuthors.bookid from Authors INNER JOIN  BooksAuthors ON  BooksAuthors.Authorsid = authors.id where BooksAuthors.bookid IN (select bookid from books)  ; 

