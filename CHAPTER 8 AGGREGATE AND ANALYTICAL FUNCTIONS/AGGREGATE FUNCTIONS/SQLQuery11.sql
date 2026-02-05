--Find all orders where sales are higher
--than the average sale across all orders.
SELECT *
FROM (
SELECT OrderID,ProductID,Sales,
    AVG(Sales) OVER() AS Avg_sales
FROM Sales.Orders
)t
WHERE Sales > Avg_sales
4	105	60	38
6	104	50	38
8	101	90	38
10	102	60	38