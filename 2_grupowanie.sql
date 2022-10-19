--USE Northwind SELECT 'Nr tel: ' + Phone + ISNULL(' Fax: ' + Fax,'') AS Kontakt FROM Suppliers
--USE Northwind SELECT TOP 5 WITH TIES orderid, productid, quantity FROM [Order Details] ORDER BY quantity DESC

--USE Northwind SELECT COUNT(*) FROM Products WHERE UnitPrice NOT BETWEEN 10 AND 20
--USE Northwind SELECT MAX(UnitPrice) FROM Products WHERE UnitPrice < 20
--USE Northwind SELECT MAX(UnitPrice), MIN(UnitPrice), AVG(UnitPrice) FROM Products WHERE QuantityPerUnit LIKE '%bottle%'
--USE Northwind SELECT * FROM Products WHERE UnitPrice > 28.8663
--USE Northwind SELECT ROUND(SUM(UnitPrice * Quantity * (1-Discount)), 2) FROM [Order Details] WHERE OrderID = 10250

--USE Northwind SELECT OrderID, MAX(UnitPrice * (1 - Discount)) AS 'Max' FROM [Order Details] GROUP BY OrderID
--USE Northwind SELECT OrderID, MAX(UnitPrice * (1 - Discount)) AS 'Max' FROM [Order Details] GROUP BY OrderID ORDER BY Max
--USE Northwind SELECT OrderID, MIN(UnitPrice * (1 - Discount)) AS 'Min', MAX(UnitPrice * (1 - Discount)) AS 'Max' FROM [Order Details] GROUP BY OrderID
--USE Northwind SELECT ShipVia, COUNT(OrderID) FROM Orders GROUP BY ShipVia
--USE Northwind SELECT TOP 1 ShipVia, COUNT(OrderID) AS 'Amount' FROM Orders WHERE Year(ShippedDate) = 1997 GROUP BY ShipVia ORDER BY Amount DESC

--USE Northwind SELECT OrderID, COUNT(ProductID) FROM [Order Details] GROUP BY OrderID HAVING COUNT(ProductID) > 5
--USE Northwind SELECT CustomerID, COUNT(OrderID) FROM Orders WHERE Year(ShippedDate) = 1998 GROUP BY CustomerID HAVING COUNT(OrderID) > 8 ORDER BY SUM(Freight) DESC

--USE Northwind SELECT productid, orderid, SUM(quantity) AS total_quantity FROM orderhist GROUP BY productid, orderid WITH ROLLUP ORDER BY productid, orderid
--USE Northwind SELECT productid, orderid, SUM(quantity) AS total_quantity FROM orderhist GROUP BY productid, orderid WITH CUBE ORDER BY productid, orderid

--ile lat przepracował w firmie każdy z pracowników
--USE Northwind SELECT EmployeeID, Year(HireDate) - Year() AS total_quantity FROM Employees GROUP BY productid, orderid WITH CUBE ORDER BY productid, orderid

--policz sumę lat przepracowana przez wszystkich pracowników i średni czas w firmie
--USE Northwind SELECT EmployeeID, Year(HireDate) - Year(GETDATE()) AS total_quantity FROM Employees GROUP BY productid, orderid WITH CUBE ORDER BY productid, orderid

--policz z ilu liter składa się najkrótsze imie pracownika
USE Northwind SELECT TOP 1 LEN(FirstName) FROM Employees ORDER BY LEN(FirstName)
