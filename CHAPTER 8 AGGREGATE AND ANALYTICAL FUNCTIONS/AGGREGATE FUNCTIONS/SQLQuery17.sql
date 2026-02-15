--Find the lowest 2 customers based on sales
SELECT *
FROM (
    SELECT 
        CustomerID,
        SUM(Sales) AS TotalSales,
        ROW_NUMBER() OVER (ORDER BY SUM(Sales) ASC) AS RankCustomers
    FROM Sales.Orders
    GROUP BY CustomerID
) t
WHERE RankCustomers <= 2;
2	55	1
4	90	2
