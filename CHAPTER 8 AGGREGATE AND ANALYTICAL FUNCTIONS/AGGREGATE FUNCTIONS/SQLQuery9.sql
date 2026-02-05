--AVG
--Find the average sale across all orders. 
--Find the average sale for each product and 
--additionally provide order ID and order date.

SELECT OrderID,
       ProductID,
       OrderDate,Sales,
       AVG(Sales) OVER() AS Avg_sales,
       AVG(Sales) OVER(PARTITION BY ProductID) AS Avgsales_by_product

FROM Sales.Orders
1	101	2025-01-01	10	38	35
3	101	2025-01-10	20	38	35
8	101	2025-02-18	90	38	35
9	101	2025-03-10	20	38	35
10	102	2025-03-15	60	38	35
2	102	2025-01-05	15	38	35
7	102	2025-02-15	30	38	35
5	104	2025-02-01	25	38	37
6	104	2025-02-05	50	38	37
4	105	2025-01-20	60	38	60