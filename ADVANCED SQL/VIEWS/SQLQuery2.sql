CREATE VIEW V_Monthly_salary AS (
SELECT DATETRUNC(month,OrderDate) order_month,
SUM(Sales) Total_sales
FROM Sales.Orders
GROUP BY DATETRUNC(month,OrderDate)
)
SELECT *
FROM V_Monthly_salary