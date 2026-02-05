--Find the total number of orders.
SELECT COUNT(*) AS Total_orders
FROM Sales.Orders

--10 

--Find the total number of orders.and provide orderid and orderdate
SELECT OrderID,OrderDate,COUNT(*) OVER() AS Total_orders
FROM Sales.Orders

1	2025-01-01	10
2	2025-01-05	10
3	2025-01-10	10
4	2025-01-20	10
5	2025-02-01	10
6	2025-02-05	10
7	2025-02-15	10
8	2025-02-18	10
9	2025-03-10	10
10	2025-03-15	10