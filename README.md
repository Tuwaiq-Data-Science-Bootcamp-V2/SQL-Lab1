
# Day3_SQL_Lab1

Q1
- Create a table "BooksAuthors" containing two fields ( AuthorId, BookId )
CREATE TABLE BooksAuthors (
    AuthorId INT NOT NULL,
    BookId  INT NOT NULL,
    FOREIGN KEY (AuthorId) REFERENCES Authors(Id),
    FOREIGN KEY (BookId) REFERENCES Books(Id)
);

#Q2
- Insert at least 5 records into the BooksAuthors table.

INSERT INTO BooksAuthors
VALUES (1,2),
       (2,3),
	(4,4),
	(5,5),
	(6,1);
    
#Q3   
- Write a statement that will select the Country column from the Authors table.

SELECT country FROM authors;

#Q4
- Select all the different values from the Country column in the Authors table.

SELECT DISTINCT country FROM authors;

#Q5
- Write an SQL query to return only Authors whose last name begins with S.
select name from authors where 
name like '%s';

 
#Q6
- List the number of Authors in each country.
SELECT count(id),country FROM
authors GROUP BY Country;

#Q7
- Select all records from the Authors table, sort the result alphabetically by the column first name.
SELECT * FROM authors ORDER BY name;


#Q8
- Select all records from the Customers table, sort the result reversed alphabetically by the column last name.
select * from authors order by name DESC;


#Q9
- Select all records where the Title column has the value 'Great ' from Books table.

select * from books where title like '%Great%';

#Q10
- Use the NOT keyword to select all records where Country is NOT "USA".

select * from authors where not country = 'USA';


#Q11
- Select all records where the country column has the value 'USA' or 'India' from Authors table
select * from authors where country ='USA' or country = 'India';


#Q12
- Select all records where the age column has the value BETWEEN 50 - 60 in Authors table.
select * from authors where age between 50 and 60;

Q13
- Use INNER to return the requested items with customers id.
select a.id,b.id from authors a inner join authors b on a.id=b.id;

Q14
- Use the MIN function to select the record with the smallest value of the Age column from Authors table.
select min(age) from authors ;

Q15
- Choose the correct `JOIN` clause to view all books and their authors
select authors.name, booksauthors.bookid from authors inner join booksauthors 
on booksauthors.authorid=authors.id where booksauthors.bookid in ( select bookid from books);
