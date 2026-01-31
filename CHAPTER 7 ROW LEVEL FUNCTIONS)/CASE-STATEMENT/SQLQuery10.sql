--Generate a report showing the total sales for each category
--high : if the sales > 50
-- medium : if the sales b/w 20 and 50
--low : if the sales <= 20

--sort the result from low to high

SELECT 
    Category,
    SUM(Sales) AS TotalSales
FROM (
    SELECT 
        Sales,
        CASE
            WHEN Sales > 50 THEN 'HIGH'
            WHEN Sales BETWEEN 20 AND 50 THEN 'MEDIUM'
            ELSE 'LOW'
        END AS Category
    FROM Sales.Orders
) t
GROUP BY Category
ORDER BY 
    CASE 
        WHEN Category = 'LOW' THEN 1
        WHEN Category = 'MEDIUM' THEN 2
        WHEN Category = 'HIGH' THEN 3
    END;

--LOW	25
--MEDIUM	145
--HIGH	210

