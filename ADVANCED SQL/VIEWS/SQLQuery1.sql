--VIEWS

--Find the running total of sales for each month.

WITH CTE_Monthly_salary AS (
SELECT DATETRUNC(month,OrderDate) order_month,
SUM(Sales) Total_sales
FROM Sales.Orders
GROUP BY DATETRUNC(month,OrderDate)
)
SELECT order_month, Total_sales,
    SUM(Total_sales) OVER(ORDER BY order_month) running_total
FROM CTE_Monthly_salary

2025-01-01	105	105
2025-02-01	195	300
2025-03-01	80	380