--get the 2 most recent orders
SELECT TOP 2 * 
FROM orders
ORDER BY order_date DESC

--1004	6	2021-08-31	10
--1003	3	2021-06-18	20