--USE Northwind2
--SELECT CompanyName, Phone FROM Customers
--WHERE CustomerID IN
--( SELECT DISTINCT CustomerID FROM Orders
--INNER JOIN Shippers ON ShipperID = ShipVia
--WHERE Year(ShippedDate) = 1997 AND CompanyName = 'United Package')

--SELECT OrderID, (Freight + (SELECT sum(UnitPrice * Quantity) FROM [Order Details] WHERE [Order Details].OrderID = Orders_global.OrderID AS "wart"))

--USE Northwind2
--SELECT CompanyName, [Address] FROM Customers
--WHERE CustomerID NOT IN
--( SELECT CustomerID FROM Orders
--WHERE Year(OrderDate) = 1997)

--SELECT ProductName
--FROM Products
--WHERE ProductID IN (SELECT DISTINCT ProductID
--                    FROM [Order Details]
--                             INNER JOIN Orders
--                                        ON [Order Details].OrderID = Orders.OrderID
--                             INNER JOIN Customers
--                                        ON Orders.CustomerID = Customers.CustomerID
--                    GROUP BY ProductID
--                    HAVING COUNT(Orders.CustomerID) > 1)

--USE Northwind2 SELECT FirstName, LastName, ROUND(SUM(Quantity * od.UnitPrice * (1-Discount)), 2) FROM Employees AS e INNER JOIN Orders AS o ON o.EmployeeID = e.EmployeeID INNER JOIN [Order Details] AS od ON od.OrderID = o.OrderID GROUP BY FirstName, LastName, e.EmployeeID

--SELECT FirstName, LastName, (
--        SELECT SUM(CostOfEachOrder.OrderCost)
--        FROM(
--                SELECT SUM((1-Discount)*UnitPrice*Quantity) + Freight AS OrderCost
--                FROM Orders INNER JOIN [Order Details]
--                    ON Orders.OrderID = [Order Details].OrderID
--                WHERE Orders.EmployeeID = Employees.EmployeeID
--                GROUP BY Orders.OrderID, Freight
--            ) AS CostOfEachOrder
--    )
--FROM Employees

SELECT FirstName, LastName, (
        SELECT SUM(CostOfEachOrder.OrderCost)
        FROM(
                SELECT SUM((1-Discount)*UnitPrice*Quantity) + Freight AS OrderCost
                FROM Orders INNER JOIN [Order Details]
                    ON Orders.OrderID = [Order Details].OrderID
                WHERE Orders.EmployeeID = Employees.EmployeeID
                GROUP BY Orders.OrderID, Freight
            ) AS CostOfEachOrder
    )
FROM Employees

