#  Day3_SQL_Lab1

- **Insert at least 5 records into the BooksAuthors table.**
INSERT INTO booksauthors
VALUES
(1 , 1),
(2 , 2),
(3 , 3),
(4 , 4),
(5 , 5)
;
- **Write a statement that will select the Country column from the Authors table.**
select Country from authors

- **Select all the different values from the Country column in the Authors table.**
select  distinct country from authors
- **Write an SQL query to return only Authors whose last name begins with S.**
select * from authors
where name like '% S%'

- **List the number of Authors in each country.**
select  Country , count(Country) from authors
group by country

- **Select all records from the Authors table, sort the result alphabetically by the column first name.**
select  * from authors
order by name 

- **Select all records from the Customers table, sort the result reversed alphabetically by the column last name.**
select  * from authors
order by name desc

- **Select all records where the Title column has the value 'Great ' from Books table.**
select  * from books
where title like '%Great%'


- **Use the NOT keyword to select all records where Country is NOT "USA".**
select  * from authors
where not country = 'USA'

- **Select all records where the country column has the value 'USA' or 'India' from Authors table**
select  * from authors
where country = 'USA' or country = 'India'

- **Select all records where the age column has the value BETWEEN 50 - 60 in Authors table.**
select  * from authors
where age BETWEEN 50 and 60



- **Use INNER to return the requested items with customers id.**
SELECT title , authorid 
FROM books 
INNER JOIN booksauthors
    ON id = bookid 
   
- **Use the MIN function to select the record with the smallest value of the Age column from Authors table.**
select min(age) from authors

- **Choose the correct JOIN clause to view all books and their authors**
select name , title    
from authors
inner join booksauthors 
on id = authorid
right join books b
on bookid = b.id




