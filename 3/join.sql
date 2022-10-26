--USE Northwind SELECT ProductName, UnitPrice, s.Address FROM Products AS p INNER JOIN Suppliers AS s ON p.SupplierID = s.SupplierID WHERE UnitPrice BETWEEN 20 AND 30
--USE Northwind SELECT ProductName, UnitsInStock FROM Products AS p INNER JOIN Suppliers AS s ON p.SupplierID = s.SupplierID WHERE CompanyName = 'Tokyo Traders'
--USE Northwind SELECT c.Address FROM Customers AS c LEFT OUTER JOIN Orders AS o ON c.CustomerID = o.CustomerID AND Year(OrderDate) = 1997 WHERE OrderID is NULL
--USE Northwind SELECT CompanyName, Phone FROM Products AS p INNER JOIN Suppliers AS s ON p.SupplierID = s.SupplierID WHERE UnitsInStock = 0

--USE library SELECT firstname, lastname, birth_date FROM member AS m INNER JOIN juvenile AS j ON m.member_no = j.member_no
--USE library SELECT DISTINCT title FROM title AS t INNER JOIN loan AS l ON t.title_no = l.title_no
--USE library SELECT in_date, DATEDIFF(day, due_date, in_date), fine_paid FROM title AS t INNER JOIN loanhist AS l ON t.title_no = l.title_no WHERE title = 'Tao Teh King' AND DATEDIFF(day, due_date, in_date) > 0
USE library SELECT isbn FROM member AS m INNER JOIN reservation AS r ON m.member_no = r.member_no WHERE firstname = 'Stephen' AND middleinitial ='A' AND lastname ='Graff'
