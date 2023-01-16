
# Day7_SQL_Lab1

## Mohamed Alshaikh 

- Create a table "BooksAuthors" containing two fields ( AuthorId, BookId )
### Done

- Insert at least 5 records into the BooksAuthors table.

```sql
insert into booksauthors
	(authorid , bookid)
	values
	(1,1),
	(2,2),
	(3,3),
	(4,4),(5,5);
```


- Write a statement that will select the Country column from the Authors table.
```sql
select country from authors;
```

- Select all the different values from the Country column in the Authors table.
```sql
select DISTINCT country from authors;
```

- Write an SQL query to return only Authors whose last name begins with S.
```sql
select * from Authors 
	select * from Authors 
	where name like '% S%';
 ```

- List the number of Authors in each country.
```sql
select  country,count(country) from authors
	group by country;
 ```
  
- Select all records from the Authors table, sort the result alphabetically by the column first name.
```sql
select * from authors 
	order by name;
 ```
 
- Select all records from the Customers table, sort the result reversed alphabetically by the column last name.
```sql
 select * from authors 
	order by name desc;
 ```
 
- Select all records where the Title column has the value 'Great ' from Books table.
```sql
select * from books where title like '%Great%';
```

- Use the NOT keyword to select all records where Country is NOT "USA".
```sql
select * from authors where NOT country = 'USA';
```

- Select all records where the country column has the value 'USA' or 'India' from Authors table
```sql
select * from authors where country ='USA' OR country ='India';
```

- Select all records where the age column has the value BETWEEN 50 - 60 in Authors table.
```sql
select * from authors where age between 50 and 60;
```

~~- Use INNER to return the requested items with customers id.~~
- Use INNER to return the requested books with authors id.
```sql 
select * from books
	inner join booksauthors
	on books.id = booksauthors.bookid;
```

- Use the MIN function to select the record with the smallest value of the Age column from Authors table.
```sql
select * from authors
	where age = (select min(age) from authors);
 ```
 
- Choose the correct `JOIN` clause to view all books and their authors
```sql
select books.title BookTitle, authors.name AuthorName 
	from booksauthors
	inner join books
	on books.id = booksauthors.bookid
	inner join authors 
	on authors.id = booksauthors.authorid;
```
