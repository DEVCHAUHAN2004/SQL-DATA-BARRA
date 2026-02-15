--Window ranking function row_number 
--rank the orders based on their sale from highest to lowest.

SELECT OrderID,ProductID,Sales,
    ROW_NUMBER() OVER(ORDER BY Sales DESC) salesrank_row,
    RANK() OVER(ORDER BY Sales DESC) salesrank_rank,
    DENSE_RANK() OVER(ORDER BY Sales DESC) sales_denserank

FROM Sales.Orders