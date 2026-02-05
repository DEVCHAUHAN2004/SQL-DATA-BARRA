--Find the total sales for each product.
--Additionally, provide details order ID and order date.

SELECT 
      OrderID,OrderDate,ProductID,
      SUM(Sales) OVER(PARTITION BY ProductId) total_sales

FROM Sales.Orders
--1	2025-01-01	  101	140
--3	2025-01-10	  101	140
--8	2025-02-18	  101	140
--9	2025-03-10	  101	140
--10	2025-03-15	102	105
--2	2025-01-05	  102	105
--7	2025-02-15	  102	105
--5	2025-02-01	  104	75
--6	2025-02-05	  104	75
--4	2025-01-20	  105	60