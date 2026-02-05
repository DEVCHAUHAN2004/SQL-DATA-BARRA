--Find the total sales across all orders.

--Additionally, provide details order ID and order date.

SELECT OrderID,OrderDate,SUM(Sales) OVER() total_sales
FROM Sales.Orders
1	2025-01-01	380
2	2025-01-05	380
3	2025-01-10	380
4	2025-01-20	380
5	2025-02-01	380
6	2025-02-05	380
7	2025-02-15	380
8	2025-02-18	380
9	2025-03-10	380
10	2025-03-15	380