--ad.1
USE library
SELECT firstname, lastname, street + ' ' + city + ' ' + [state] + ' ' + zip AS 'Addres'
FROM member AS m
INNER JOIN adult AS a ON m.member_no = a.member_no
WHERE m.member_no NOT IN (
    SELECT member_no
    FROM loanhist
)

USE library
SELECT firstname, lastname, street + ' ' + city + ' ' + [state] + ' ' + zip AS 'Addres'
FROM member AS m
INNER JOIN adult AS a ON m.member_no = a.member_no
WHERE NOT EXISTS (
    SELECT member_no
    FROM loanhist AS l
    WHERE l.member_no = m.member_no
)


--ad.2
USE Northwind2
SELECT OrderID, CompanyName
FROM Orders AS o1
INNER JOIN Customers AS c ON c.CustomerID = o1.CustomerID
WHERE Freight > (
    SELECT AVG(Freight)
    FROM Orders AS o2
    WHERE Year(o1.OrderDate) = Year(o2.OrderDate)
)

--ad.3
USE library
SELECT firstname, lastname, (
    SELECT COUNT(*)
    FROM loanhist AS l
    INNER JOIN juvenile AS j2 ON j2.member_no = l.member_no
    INNER JOIN adult AS a2 ON a2.member_no = l.member_no
    WHERE (l.member_no = a2.member_no OR l.member_no = j2.member_no)
    AND Month(in_date) = 12
    AND Year(in_date) = 2001
) AS 'Count'
FROM member AS m
INNER JOIN adult AS a ON a.member_no = m.member_no
INNER JOIN juvenile AS j ON a.member_no = j.adult_member_no
WHERE [state] = 'AZ'
GROUP BY firstname, lastname, m.member_no
HAVING COUNT(*) > 2

UNION 

SELECT firstname, lastname, (
    SELECT COUNT(*)
    FROM loanhist AS l
    INNER JOIN juvenile AS j2 ON j2.member_no = l.member_no
    INNER JOIN adult AS a2 ON a2.member_no = l.member_no
    WHERE (l.member_no = a2.member_no OR l.member_no = j2.member_no)
    AND Month(in_date) = 12
    AND Year(in_date) = 2001
) AS 'Count'
FROM member AS m INNER JOIN adult AS a ON a.member_no = m.member_no
INNER JOIN juvenile AS j ON a.member_no = j.adult_member_no
WHERE [state] = 'CA'
GROUP BY firstname, lastname, m.member_no
HAVING COUNT(*) > 3
