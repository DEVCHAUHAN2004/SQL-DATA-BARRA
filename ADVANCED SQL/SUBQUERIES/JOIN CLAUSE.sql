--JOIN CLAUSE
--Show all customer details 
--and find the total orders for each customer.
SELECT c.*, o.Total_orders
FROM Sales.Customers c
LEFT JOIN (
    SELECT CustomerID,
    COUNT(*) Total_orders
    FROM Sales.Orders
    GROUP BY CustomerID
)o
ON c.CustomerID = o.CustomerID

1	Jossef	Goldberg   Germany	350	3
2	Kevin	Brown	   USA	   900	3
3	Mary	NULL	   USA	   750	3
4	Mark	Schwarz	   Germany	500	1
5	Anna	Adams	   USA	   NULL	NULL