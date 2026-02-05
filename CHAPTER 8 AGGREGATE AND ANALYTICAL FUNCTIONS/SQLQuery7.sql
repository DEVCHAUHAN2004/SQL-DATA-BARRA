--Find the total sales for each combination of product
-- and order status.

--PARTITION BY
SELECT ProductID,OrderStatus,
      SUM(Sales) OVER(PARTITION BY ProductId,OrderStatus) 
      Salesby_product_and_status
FROM Sales.Orders
ORDER BY OrderStatus

--101	Delivered	30
--101	Delivered	30
--101	Shipped	    110
--101	Shipped	     110
--102	Delivered	30
--102	Shipped	    75
--102	Shipped	    75
--104	Delivered	75
--104	Delivered	75
--105	Shipped	    60