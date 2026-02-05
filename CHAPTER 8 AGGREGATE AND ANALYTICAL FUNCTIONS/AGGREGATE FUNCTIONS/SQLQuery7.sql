--SUM

--Find the total sales across all orders and 
-- the total sales for each product . add. provide orderid and orderdate

SELECT OrderID,ProductID,OrderDate,Sales,
     SUM(sales) OVER() Total_sales,
     SUM(sales) OVER(PARTITION BY ProductID) salesby_product

FROM Sales.Orders

1	101	2025-01-01	10	380	140
3	101	2025-01-10	20	380	140
8	101	2025-02-18	90	380	140
9	101	2025-03-10	20	380	140
10	102	2025-03-15	60	380	105
2	102	2025-01-05	15	380	105
7	102	2025-02-15	30	380	105
5	104	2025-02-01	25	380	75
6	104	2025-02-05	50	380	75
4	105	2025-01-20	60	380	60