SELECT Title, PubDate FROM Books
WHERE LOWER(Author) = "paulo coelho" AND LOWER(language) = "english";

SELECT COUNT(*) FROM books
WHERE LOWER(category) = "sports" AND LOWER(language) = "english";

SELECT CONCAT(Author, ", ", Publisher, ", ", PubDate) AS "Book Information" FROM Books 
WHERE PaperB = "P" AND DigitF="D" AND LOWER(category)="coaching";

SELECT COUNT(paperB) "# of Fiction Paperback", COUNT(DigitF) "# of Fiction Digital Format" FROM Books
WHERE LOWER(category)="fiction";

select CONCAT("$ ", FORMAT(SUM(PBsalePrice), 2)) AS "Paperback Cost for Sports" FROM Books
WHERE (PaperB IS NOT NULL) AND (DigitF IS NULL) AND LOWER(category)="sports";

SELECT Title, PubDate FROM BOOKS
WHERE LOWER(category)="sports" AND YEAR(PubDate) = '2010';

SELECT Publisher, COUNT(Publisher) "# of publications" FROM Books
GROUP BY Publisher
HAVING COUNT(Publisher) > 3;

SELECT Title FROM Books
WHERE LOWER(category)="coaching" AND (PaperB IS NOT NULL) AND (DigitF IS NULL);

SELECT Title FROM Books
WHERE (DigitF IS NOT NULL) AND (PaperB IS NULL);

SELECT Author AS "Author Name" FROM BOOKS
GROUP BY Author
HAVING COUNT(Author) > 2;
