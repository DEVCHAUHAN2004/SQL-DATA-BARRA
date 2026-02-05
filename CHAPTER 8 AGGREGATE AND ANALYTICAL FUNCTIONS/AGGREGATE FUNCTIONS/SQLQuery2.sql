--Find the total number of orders for each customers AND PROVIDE ALL DETAILS.

SELECT OrderID,CustomerID,Sales,COUNT(*) OVER(PARTITION BY customerId) AS Total_orders
FROM Sales.Orders

3	1	20	3
4	1	60	3
7	1	30	3
1	2	10	3
5	2	25	3
9	2	20	3
10	3	60	3
6	3	50	3
2	3	15	3
8	4	90	1