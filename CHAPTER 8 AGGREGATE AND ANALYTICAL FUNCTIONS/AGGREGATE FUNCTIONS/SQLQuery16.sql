--Find the top highest sales for each product.
SELECT *
FROM(
SELECT OrderID,ProductID,Sales,
    ROW_NUMBER() OVER(PARTITION BY ProductId ORDER BY Sales DESC) rankbyproduct
FROM Sales.Orders) t
WHERE rankbyproduct = 1
8	101	90	1
10	102	60	1
6	104	50	1
4	105	60	1