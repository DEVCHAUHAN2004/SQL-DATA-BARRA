--MIN OR MAX
--Find lowest and highest sales of all orders,
-- find the highest and lowest sales for each product,
--provide orderid and orderdate.

SELECT OrderID,OrderDate,Sales,ProductID,
      MIN(Sales) OVER() min_sales,
      MAX(Sales)  OVER() max_sales,
      MIN(Sales) OVER(PARTITION BY ProductID) min_sales_by_product,
      MAX(Sales)  OVER(PARTITION BY ProductID) max_sales_by_product
FROM Sales.Orders
1	2025-01-01	10	101	10	90	10	90
3	2025-01-10	20	101	10	90	10	90
8	2025-02-18	90	101	10	90	10	90
9	2025-03-10	20	101	10	90	10	90
10	2025-03-15	60	102	10	90	15	60
2	2025-01-05	15	102	10	90	15	60
7	2025-02-15	30	102	10	90	15	60
5	2025-02-01	25	104	10	90	25	50
6	2025-02-05	50	104	10	90	25	50
4	2025-01-20	60	105	10	90	60	60