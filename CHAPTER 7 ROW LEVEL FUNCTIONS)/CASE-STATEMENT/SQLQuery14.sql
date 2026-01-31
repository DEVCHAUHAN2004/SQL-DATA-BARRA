--count how many times each customer has made an order 
--with sales > 30.
SELECT 
    CustomerID,
    SUM(CASE 
            WHEN Sales > 30 THEN 1 
            ELSE 0 
        END) AS TotalOrderSales
FROM Sales.Orders
GROUP BY CustomerID;

--1	1
--2	0
--3	2
--4	1

