--Step1 = find the total sales per customer
WITH CTE_Total_sales AS
(
SELECT CustomerID,
       SUM(Sales) Total_sales
FROM Sales.Orders o
GROUP BY CustomerID
)
--step 2 = find the last order date per customer
,
CTE_last_order AS
(
SELECT CustomerID,
       MAX(OrderDate) AS Last_order
FROM Sales.Orders
GROUP BY CustomerID
)
--step3 = rank customers based on total sales per customer.
,
CTE_customer_rank AS
(
SELECT CustomerID, 
      Total_sales,
      RANK() OVER(ORDER BY Total_sales DESC) Customer_rank
FROM CTE_Total_sales
)
--step4 = segment customers based on thier total sales.
,
CTE_Customer_segment AS 
(
SELECT CustomerID,
       CASE WHEN Total_sales > 100 THEN 'HIGH'
       WHEN Total_sales > 50 THEN 'MEDIUM'
       ELSE 'LOW'
       END Customer_segments
FROM CTE_Total_sales
)
SELECT c.CustomerID,
       c.FirstName,c.LastName,
       cts.Total_sales,
       clo.Last_order,
       ccr.Customer_rank,
       ccs.Customer_segments
FROM Sales.Customers c

--step 1
LEFT JOIN CTE_Total_sales cts
ON cts.CustomerID = c.CustomerID

--step 2
LEFT JOIN CTE_last_order clo
ON clo.CustomerID = c.CustomerID

--step 3
LEFT JOIN CTE_customer_rank ccr
ON ccr.CustomerID = c.CustomerID

--step 4
LEFT JOIN CTE_Customer_segment ccs
ON ccs.CustomerID = c.CustomerID

--1	Jossef	Goldberg	110	2025-02-15	2	HIGH
--2	Kevin	Brown	    55	2025-03-10	4	MEDIUM
--3	Mary	NULL	   125	2025-03-15	1	HIGH
--4	Mark	Schwarz	   90	2025-02-18	3	MEDIUM
--5	Anna	Adams	   NULL	NULL	   NULL	NULL