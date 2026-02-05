--Calculate moving average of sales for each product over time.
SELECT OrderID,ProductID,OrderDate,
     AVG(Sales) OVER(PARTITION BY ProductID) Avg_by_product,
     AVG(Sales) OVER(PARTITION BY ProductID ORDER BY OrderDate) Moving_avg

FROM Sales.Orders
1	101	2025-01-01	35	10
3	101	2025-01-10	35	15
8	101	2025-02-18	35	40
9	101	2025-03-10	35	35
2	102	2025-01-05	35	15
7	102	2025-02-15	35	22
10	102	2025-03-15	35	35
5	104	2025-02-01	37	25
6	104	2025-02-05	37	37
4	105	2025-01-20	60	60