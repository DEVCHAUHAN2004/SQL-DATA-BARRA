--List all details of customers who have not placed any orders.

SELECT O.CustomerID,FirstName,LastName,Country,Score
FROM Sales.Customers C
LEFT JOIN Sales.Orders O
ON C.CustomerID = O.CustomerID
WHERE O.CustomerID IS NULL
--NULL	Anna	Adams	USA	NULL