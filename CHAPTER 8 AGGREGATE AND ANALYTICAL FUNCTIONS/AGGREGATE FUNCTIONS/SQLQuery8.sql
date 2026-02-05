--Find the percentage contribution of each product sales
-- to the total sales

SELECT OrderID,
       ProductID,
       Sales,
       SUM(Sales) OVER() AS Total_Sales,
       ROUND(
            (CAST(Sales AS FLOAT) / SUM(Sales) OVER()) * 100
            , 2
       ) AS Percentage_Total
FROM Sales.Orders;
1	101	10	380	2.63
2	102	15	380	3.95
3	101	20	380	5.26
4	105	60	380	15.79
5	104	25	380	6.58
6	104	50	380	13.16
7	102	30	380	7.89
8	101	90	380	23.68
9	101	20	380	5.26
10	102	60	380	15.79