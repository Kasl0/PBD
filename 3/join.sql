--USE Northwind SELECT ProductName, UnitPrice, s.Address FROM Products AS p INNER JOIN Suppliers AS s ON p.SupplierID = s.SupplierID WHERE UnitPrice BETWEEN 20 AND 30
--USE Northwind SELECT ProductName, UnitsInStock FROM Products AS p INNER JOIN Suppliers AS s ON p.SupplierID = s.SupplierID WHERE CompanyName = 'Tokyo Traders'
--USE Northwind SELECT c.Address FROM Customers AS c LEFT OUTER JOIN Orders AS o ON c.CustomerID = o.CustomerID AND Year(OrderDate) = 1997 WHERE OrderID is NULL
--USE Northwind SELECT CompanyName, Phone FROM Products AS p INNER JOIN Suppliers AS s ON p.SupplierID = s.SupplierID WHERE UnitsInStock = 0

--USE library SELECT firstname, lastname, birth_date FROM member AS m INNER JOIN juvenile AS j ON m.member_no = j.member_no
--USE library SELECT DISTINCT title FROM title AS t INNER JOIN loan AS l ON t.title_no = l.title_no
--USE library SELECT in_date, DATEDIFF(day, due_date, in_date), fine_paid FROM title AS t INNER JOIN loanhist AS l ON t.title_no = l.title_no WHERE title = 'Tao Teh King' AND DATEDIFF(day, due_date, in_date) > 0
--USE library SELECT isbn FROM member AS m INNER JOIN reservation AS r ON m.member_no = r.member_no WHERE firstname = 'Stephen' AND middleinitial ='A' AND lastname ='Graff'

--USE Northwind2 SELECT ProductName, UnitPrice, s.Address FROM Products AS p INNER JOIN Suppliers AS s ON p.SupplierID = s.SupplierID INNER JOIN Categories AS c ON c.CategoryID = p.CategoryID WHERE (UnitPrice BETWEEN 20 AND 30) AND CategoryName = 'Meat/Poultry'
--USE Northwind2 SELECT ProductName, UnitPrice, s.CompanyName FROM Products AS p INNER JOIN Suppliers AS s ON p.SupplierID = s.SupplierID INNER JOIN Categories AS c ON c.CategoryID = p.CategoryID WHERE CategoryName = 'Confections'
--USE Northwind2 SELECT c.CompanyName, c.Phone FROM Customers AS c INNER JOIN Orders AS o ON o.CustomerID = c.CustomerID INNER JOIN Shippers AS s ON o.ShipVia = s.ShipperID WHERE s.CompanyName = 'United Package' AND Year(ShippedDate) = 1997
--USE Northwind2 SELECT DISTINCT c.CompanyName, c.Phone FROM Customers AS c INNER JOIN Orders AS o ON o.CustomerID = c.CustomerID INNER JOIN [Order Details] AS od ON od.OrderID = o.OrderID INNER JOIN Products AS p ON p.ProductID = od.ProductID INNER JOIN Categories AS ca ON ca.CategoryID = p.CategoryID WHERE CategoryName = 'Confections'

--USE library SELECT firstname, lastname, birth_date, street, city FROM member AS m INNER JOIN juvenile AS j ON m.member_no = j.member_no INNER JOIN adult AS a ON a.member_no = j.adult_member_no
--USE library SELECT m.firstname, m.lastname, birth_date, street, city, am.firstname, am.lastname FROM member AS m INNER JOIN juvenile AS j ON m.member_no = j.member_no INNER JOIN adult AS a ON a.member_no = j.adult_member_no INNER JOIN member AS am ON am.member_no = a.member_no

--USE Northwind2 SELECT szef.EmployeeID AS Szef, pod.EmployeeID AS Podwładny FROM employees AS szef INNER JOIN employees AS pod ON pod.ReportsTo = szef.EmployeeID
--USE Northwind2 SELECT szef.EmployeeID FROM employees AS szef LEFT OUTER JOIN employees AS pod ON pod.ReportsTo = szef.EmployeeID WHERE pod.EmployeeID IS NULL
--USE library SELECT DISTINCT street, city FROM adult AS a INNER JOIN juvenile AS j ON a.member_no = j.adult_member_no WHERE birth_date < '1/1/1996'
--USE library SELECT DISTINCT street, city FROM adult AS a INNER JOIN juvenile AS j ON a.member_no = j.adult_member_no LEFT OUTER JOIN loan AS l ON a.member_no = l.member_no WHERE birth_date < '1/1/1996' AND (l.member_no IS NULL OR l.due_date < GETDATE())

--USE library SELECT firstname + ' ' + lastname AS 'name', street + ' ' + city + ' ' + [state] AS 'address' FROM member AS m INNER JOIN adult AS a ON a.member_no = m.member_no
--USE library SELECT c.isbn, copy_no, on_loan, title, translation, cover FROM [copy] AS c INNER JOIN title AS t ON t.title_no = c.title_no INNER JOIN item AS i ON i.isbn = c.isbn WHERE c.isbn = 1 OR c.isbn = 500 OR c.isbn = 1000 ORDER BY c.isbn
--USE library SELECT m.member_no, firstname, lastname, isbn, log_date FROM member AS m LEFT OUTER JOIN reservation AS r ON r.member_no = m.member_no WHERE m.member_no = 250 OR m.member_no = 342 OR m.member_no = 1675
--USE library SELECT firstname, lastname, COUNT(*) FROM member AS m INNER JOIN adult AS a ON a.member_no = m.member_no INNER JOIN juvenile AS j ON a.member_no = j.adult_member_no WHERE [state] = 'AZ' GROUP BY firstname, lastname, m.member_no HAVING COUNT(*) > 2

--USE library SELECT firstname, lastname, COUNT(*) FROM member AS m INNER JOIN adult AS a ON a.member_no = m.member_no INNER JOIN juvenile AS j ON a.member_no = j.adult_member_no WHERE [state] = 'AZ' GROUP BY firstname, lastname, m.member_no HAVING COUNT(*) > 2 UNION SELECT firstname, lastname, COUNT(*) FROM member AS m INNER JOIN adult AS a ON a.member_no = m.member_no INNER JOIN juvenile AS j ON a.member_no = j.adult_member_no WHERE [state] = 'CA' GROUP BY firstname, lastname, m.member_no HAVING COUNT(*) > 3
