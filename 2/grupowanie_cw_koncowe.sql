--USE Northwind SELECT OrderID, SUM(UnitPrice * Quantity * (1 - Discount)) AS 'Wartość sprzedaży' FROM [Order Details] GROUP BY OrderID ORDER BY [Wartość sprzedaży] DESC
--USE Northwind SELECT TOP 10 OrderID, SUM(UnitPrice * Quantity * (1 - Discount)) AS 'Wartość sprzedaży' FROM [Order Details] GROUP BY OrderID ORDER BY [Wartość sprzedaży] DESC

--USE Northwind SELECT ProductID, SUM(Quantity) FROM [Order Details] WHERE productid < 3 GROUP BY ProductID
--USE Northwind SELECT ProductID, SUM(Quantity) FROM [Order Details] GROUP BY ProductID
--USE Northwind SELECT OrderID, SUM(UnitPrice * Quantity * (1 - Discount)) FROM [Order Details] GROUP BY OrderID HAVING SUM(Quantity) > 250

--USE Northwind SELECT EmployeeID, COUNT(*) FROM Orders GROUP BY EmployeeID
--USE Northwind SELECT ShipVia, SUM(Freight) FROM Orders GROUP BY ShipVia
--USE Northwind SELECT ShipVia, SUM(Freight) FROM Orders WHERE Year(ShippedDate) BETWEEN 1996 AND 1997 GROUP BY ShipVia

--USE Northwind SELECT EmployeeID, Year(OrderDate), Month(OrderDate), COUNT(*) FROM Orders GROUP BY EmployeeID, Year(OrderDate), Month(OrderDate) WITH ROLLUP
--USE Northwind SELECT CategoryID, MAX(UnitPrice), MIN(UnitPrice) FROM Products GROUP BY CategoryID
