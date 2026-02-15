--WHERE CLAUSE(LOGICAL OPERATOR)

--show the details of orders made by customers in germany.

SELECT *
FROM Sales.Orders
WHERE CustomerID IN (SELECT CustomerID
                    FROM Sales.Customers 
                    WHERE Country = 'Germany')

3	101	1	5	2025-01-10	2025-01-25	Delivered	8157 W. Book	8157 W. Book	2	20	2025-01-10 18:24:08.0000000
4	105	1	3	2025-01-20	2025-01-25	Shipped	5724 Victory Lane		2	60	2025-01-20 05:50:33.0000000
7	102	1	1	2025-02-15	2025-02-27	Delivered	136 Balboa Court		2	30	2025-02-16 06:22:01.0000000
8	101	4	3	2025-02-18	2025-02-27	Shipped	2947 Vine Lane	4311 Clay Rd	3	90	2025-02-18 10:45:22.0000000