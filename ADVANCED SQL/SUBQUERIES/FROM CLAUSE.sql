--LOCATION TYPE SUBQUERY

--1.FROM CLAUSE
--find the products that have a price higher than the 
-- average price of all products.
SELECT *
FROM 
(
SELECT ProductID,Price,
    AVG(Price) OVER()  Avg_price
FROM Sales.Products
)t
WHERE Price > Avg_price

--104	25	20
--105	30	20


--2.rank customers based on their total sales.
SELECT *,
RANK()  OVER(ORDER BY Total_sales DESC) Customer_rank
FROM
(
SELECT CustomerID,
    SUM(Sales) Total_sales
FROM Sales.Orders
GROUP BY CustomerID
)t

--3	125	1
--1	110	2
--4	90	3
--2	55	4



