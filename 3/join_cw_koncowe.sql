--USE Northwind2 SELECT o.OrderID, SUM(Quantity), CompanyName FROM Orders As o INNER JOIN [Order Details] AS od ON od.OrderID = o.OrderID INNER JOIN Customers AS c ON c.CustomerID = o.CustomerID GROUP BY o.OrderID, CompanyName
--USE Northwind2 SELECT o.OrderID, SUM(Quantity), CompanyName FROM Orders As o INNER JOIN [Order Details] AS od ON od.OrderID = o.OrderID INNER JOIN Customers AS c ON c.CustomerID = o.CustomerID GROUP BY o.OrderID, CompanyName HAVING SUM(Quantity) > 250
--USE Northwind2 SELECT o.OrderID, ROUND(SUM(Quantity * UnitPrice * (1-Discount)), 2), CompanyName FROM Orders As o INNER JOIN [Order Details] AS od ON od.OrderID = o.OrderID INNER JOIN Customers AS c ON c.CustomerID = o.CustomerID GROUP BY o.OrderID, CompanyName
--USE Northwind2 SELECT o.OrderID, ROUND(SUM(Quantity * UnitPrice * (1-Discount)), 2), CompanyName FROM Orders As o INNER JOIN [Order Details] AS od ON od.OrderID = o.OrderID INNER JOIN Customers AS c ON c.CustomerID = o.CustomerID GROUP BY o.OrderID, CompanyName HAVING SUM(Quantity) > 250
--USE Northwind2 SELECT o.OrderID, ROUND(SUM(Quantity * UnitPrice * (1-Discount)), 2), CompanyName, FirstName, LastName FROM Orders As o INNER JOIN [Order Details] AS od ON od.OrderID = o.OrderID INNER JOIN Customers AS c ON c.CustomerID = o.CustomerID INNER JOIN Employees AS e ON e.EmployeeID = o.EmployeeID GROUP BY o.OrderID, CompanyName, FirstName, LastName HAVING SUM(Quantity) > 250

--USE Northwind2 SELECT CategoryName, SUM(Quantity) FROM Categories AS c LEFT OUTER JOIN Products AS p ON p.CategoryID = c.CategoryID LEFT OUTER JOIN [Order Details] AS od ON od.ProductID = p.ProductID GROUP BY CategoryName
--USE Northwind2 SELECT CategoryName, ROUND(SUM(Quantity * od.UnitPrice * (1-Discount)), 2) FROM Categories AS c LEFT OUTER JOIN Products AS p ON p.CategoryID = c.CategoryID LEFT OUTER JOIN [Order Details] AS od ON od.ProductID = p.ProductID GROUP BY CategoryName
--USE Northwind2 SELECT CategoryName, ROUND(SUM(Quantity * od.UnitPrice * (1-Discount)), 2) FROM Categories AS c LEFT OUTER JOIN Products AS p ON p.CategoryID = c.CategoryID LEFT OUTER JOIN [Order Details] AS od ON od.ProductID = p.ProductID GROUP BY CategoryName ORDER BY ROUND(SUM(Quantity * od.UnitPrice * (1-Discount)), 2)
--USE Northwind2 SELECT CategoryName, ROUND(SUM(Quantity * od.UnitPrice * (1-Discount)), 2) FROM Categories AS c LEFT OUTER JOIN Products AS p ON p.CategoryID = c.CategoryID LEFT OUTER JOIN [Order Details] AS od ON od.ProductID = p.ProductID GROUP BY CategoryName ORDER BY SUM(Quantity)
--USE Northwind2 SELECT o.OrderID, ROUND(SUM(Quantity * od.UnitPrice * (1-Discount)) + Freight, 2) FROM Orders AS o INNER JOIN [Order Details] AS od ON od.OrderID = o.OrderID GROUP BY o.OrderID, Freight

--USE Northwind2 SELECT CompanyName, COUNT(*) FROM Shippers AS s INNER JOIN Orders AS o ON s.ShipperID = o.ShipVia WHERE Year(ShippedDate) = 1997 GROUP BY CompanyName
--USE Northwind2 SELECT TOP 1 CompanyName FROM Shippers AS s INNER JOIN Orders AS o ON s.ShipperID = o.ShipVia WHERE Year(ShippedDate) = 1997 GROUP BY CompanyName ORDER BY COUNT(*) DESC
--USE Northwind2 SELECT FirstName, LastName, ROUND(SUM(Quantity * od.UnitPrice * (1-Discount)), 2) FROM Employees AS e INNER JOIN Orders AS o ON o.EmployeeID = e.EmployeeID INNER JOIN [Order Details] AS od ON od.OrderID = o.OrderID GROUP BY FirstName, LastName, e.EmployeeID
--USE Northwind2 SELECT TOP 1 FirstName, LastName FROM Employees AS e INNER JOIN Orders AS o ON o.EmployeeID = e.EmployeeID WHERE Year(ShippedDate) = 1997 GROUP BY FirstName, LastName, e.EmployeeID ORDER BY COUNT(*) DESC
--USE Northwind2 SELECT TOP 1 FirstName, LastName FROM Employees AS e INNER JOIN Orders AS o ON o.EmployeeID = e.EmployeeID INNER JOIN [Order Details] AS od ON od.OrderID = o.OrderID WHERE Year(ShippedDate) = 1997 GROUP BY FirstName, LastName, e.EmployeeID ORDER BY ROUND(SUM(Quantity * od.UnitPrice * (1-Discount)), 2) DESC

--USE Northwind2 SELECT FirstName, LastName, ROUND(SUM(Quantity * od.UnitPrice * (1-Discount)), 2) FROM Employees AS e INNER JOIN Orders AS o ON o.EmployeeID = e.EmployeeID INNER JOIN [Order Details] AS od ON od.OrderID = o.OrderID WHERE e.ReportsTo IS NOT NULL GROUP BY FirstName, LastName, e.EmployeeID
--USE Northwind2 SELECT FirstName, LastName, ROUND(SUM(Quantity * od.UnitPrice * (1-Discount)), 2) FROM Employees AS e INNER JOIN Orders AS o ON o.EmployeeID = e.EmployeeID INNER JOIN [Order Details] AS od ON od.OrderID = o.OrderID WHERE e.ReportsTo IS NULL GROUP BY FirstName, LastName, e.EmployeeID
