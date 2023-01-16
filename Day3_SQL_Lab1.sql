INSERT INTO BooksAuthors
(AuthorId ,BookId)
VALUES(1,1),(2,2),(3,3),(4,4),(5,5);
SELECT * FROM BooksAuthors;
SELECT * FROM AUTHORS;
SELECT country FROM AUTHORS;
SELECT distinct country FROM AUTHORS;
Select * FROM Authors
WHERE Name LIKE '% S%';
SELECT * FROM AUTHORS ORDER BY name ASC;
SELECT COUNT (ID),country
FROM AUTHORS
GROUP BY COUNTRY;
SELECT * FROM Books
WHERE title LIKE '%Great%';
SELECT * FROM AUTHORS
WHERE NOT country='USA';
SELECT *FROM AUTHORS
WHERE country='USA'OR  country='India';
SELECT * FROM AUTHORS
WHERE Age BETWEEN 50 AND 60;

SELECT MIN(Age) FROM AUTHORS;
SELECT * FROM AUTHORS
ORDER BY NAME ASC;
select Books.Title, BooksAuthors.AuthorId
from Books
inner join BooksAuthors on BooksAuthors.BookId = Books.Id and Books.Id = 1
