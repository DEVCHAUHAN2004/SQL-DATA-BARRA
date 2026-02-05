--find the total sales for each product.
SELECT ProductID,SUM(Sales) AS totalsales
FROM Sales.Orders
GROUP BY ProductID
--101	140
--102	105
--104	75
--105	60

