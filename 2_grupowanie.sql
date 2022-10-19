--USE Northwind SELECT 'Nr tel: ' + Phone + ISNULL(' Fax: ' + Fax,'') AS Kontakt FROM Suppliers
--USE Northwind SELECT TOP 5 WITH TIES orderid, productid, quantity FROM [Order Details] ORDER BY quantity DESC

--USE Northwind SELECT COUNT(*) FROM Products WHERE UnitPrice NOT BETWEEN 10 AND 20
--USE Northwind SELECT MAX(UnitPrice) FROM Products WHERE UnitPrice < 20
--USE Northwind SELECT MAX(UnitPrice), MIN(UnitPrice), AVG(UnitPrice) FROM Products WHERE QuantityPerUnit LIKE '%bottle%'
--USE Northwind SELECT * FROM Products WHERE UnitPrice > 28.8663
--USE Northwind SELECT ROUND(SUM(UnitPrice * Quantity * (1-Discount)), 2) FROM [Order Details] WHERE OrderID = 10250
