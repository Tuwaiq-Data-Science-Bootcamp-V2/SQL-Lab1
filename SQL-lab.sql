-- Q1:
INSERT INTO booksauthors
    (authorid, bookid)
VALUES 
    (1,1),
    (2,2),
	(3,3),
	(4,4),
	(5,5);

-- Q2:	
select country from authors;

-- Q3:
select DISTINCT country from authors;

-- Q4:
select name from authors
where name like '%_S%'
;

-- Q5:
select count(id), country from authors
group by country;

-- Q6:
select * from authors 
order by name;

-- Q7:
select * from authors
order by name desc;

-- Q8:
select * from books
where title like  '%Great%' ;

-- Q9:
select * from authors
where  not country = 'USA';

-- Q10:
select * from authors
where country = 'USA' or country = 'India' ;

-- Q11:
select * from authors
where age between 50 and 60 ;

-- Q12:
select books.title, booksauthors.authorid from books
inner join booksauthors
on books.id = booksauthors.bookid ;

-- Q13:
select min(age) from authors;

-- Q14:
select authors.name, books.title from books
full outer join authors
on authors.id = books.id ;






