--USE library SELECT title, title_no FROM title
--USE library SELECT * FROM title WHERE title_no = 10
--USE library SELECT DISTINCT member_no, fine_assessed FROM loanhist WHERE fine_assessed BETWEEN 8 AND 9
--USE library SELECT title_no, author FROM title WHERE author = 'author' OR author = 'Jane Austen'
--USE library SELECT title_no, title FROM title WHERE title LIKE '%adventures%'
--USE library SELECT DISTINCT member_no, fine_assessed, fine_paid FROM loanhist WHERE (fine_assessed IS NOT NULL AND fine_assessed != 0) AND (fine_paid IS NULL OR fine_paid = 0)
--USE library SELECT DISTINCT city, [state] FROM adult

--USE library SELECT * FROM title ORDER BY title
--USE library SELECT DISTINCT member_no, isbn, fine_assessed, fine_assessed * 2 AS 'double fine' FROM loanhist WHERE fine_assessed IS NOT NULL AND fine_assessed != 0
--USE library SELECT LOWER(firstname) + LOWER(middleinitial) + LOWER(SUBSTRING(lastname, 1, 2)) AS 'email_name' FROM member WHERE lastname = 'Anderson'
--USE library SELECT 'The title is: ' + title + ', title number ' + CAST(title_no AS varchar) FROM title
