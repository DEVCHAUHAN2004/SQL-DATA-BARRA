--ORDER BY
--Rank each order based on the sales form high to low,
-- add. provide orderid and orderdate.
SELECT OrderID,OrderDate,
      Sales, RANK() OVER(ORDER BY Sales DESC) Rank_sales
FROM Sales.Orders