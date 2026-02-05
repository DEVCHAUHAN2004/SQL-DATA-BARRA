--Aggregate functions

SELECT
      COUNT(*) AS Total_orders,
      SUM(sales) AS Total_sales,
      AVG(sales) AS Avg_sales,
      MAX(sales) AS Max_sales,
      MIN(sales) AS Min_sales
FROM orders
--4	80	35	20	10

SELECT *
FROM orders
--1001	1	2021-01-11	35
--1002	2	2021-04-05	15
--1003	3	2021-06-18	20
--1004	6	2021-08-31	10