--show all customer details and find the total orders
-- for each customer.

SELECT *,
(SELECT COUNT(*) FROM Sales.Orders o
WHERE o.CustomerID = c.CustomerID) totalsales

FROM Sales.Customers c
1	Jossef	Goldberg	Germany	350	3
2	Kevin	Brown	USA	900	3
3	Mary	NULL	USA	750	3
4	Mark	Schwarz	Germany	500	1
5	Anna	Adams	USA	NULL	0