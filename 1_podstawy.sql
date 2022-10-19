--USE Northwind SELECT ContactName, [Address] FROM Customers
--USE Northwind SELECT LastName, HomePhone FROM Employees
--USE Northwind SELECT ProductName, UnitPrice FROM Products
--USE Northwind SELECT CategoryName, [Description] FROM Categories
--USE Northwind SELECT CompanyName, HomePage FROM Suppliers

--USE Northwind SELECT OrderID, CustomerID FROM Orders WHERE OrderDate < '1996-08-01'

--USE Northwind SELECT ContactName, [Address] FROM Customers WHERE City = 'London'
--USE Northwind SELECT ContactName, [Address] FROM Customers WHERE Country = 'France' OR Country = 'Spain'
--USE Northwind SELECT ProductName, UnitPrice FROM Products WHERE UnitPrice BETWEEN 20 AND 30
--USE Northwind SELECT ProductName, UnitPrice FROM Products, Categories WHERE CategoryName = 'Meat/Poultry'
--USE Northwind SELECT ProductName, UnitsInStock FROM Products, Suppliers WHERE CompanyName = 'Tokyo Traders'
--USE Northwind SELECT ProductName FROM Products WHERE UnitsInStock = 0

--USE Northwind SELECT ProductName FROM Products WHERE QuantityPerUnit LIKE '%bottle%'
--USE Northwind SELECT Title FROM Employees WHERE LastName LIKE '[B-L]%'
--USE Northwind SELECT Title FROM Employees WHERE LastName LIKE 'B%' OR LastName LIKE 'L%'
--USE Northwind SELECT CategoryName, [Description] FROM Categories WHERE [Description] LIKE '%,%'
--USE Northwind SELECT CustomerID, CompanyName FROM Customers WHERE CompanyName LIKE '%Store%'

--USE Northwind SELECT CompanyName, Country FROM Suppliers WHERE Country IN ('Japan' , 'Italy')
--USE Northwind SELECT CompanyName, Fax FROM Suppliers WHERE Fax IS NULL
--USE Northwind SELECT OrderID, OrderDate, CustomerID FROM Orders WHERE ShipCountry = 'Argentina' AND (ShippedDate IS NULL OR ShippedDate > GETDATE())

--USE Northwind SELECT CompanyName, Country FROM Customers ORDER BY Country, CompanyName
--USE Northwind SELECT CategoryID, ProductName, UnitPrice FROM Products ORDER BY CategoryID, UnitPrice DESC
--USE Northwind SELECT CompanyName, Country FROM Customers WHERE Country IN ('UK' , 'Italy') ORDER BY Country, CompanyName
