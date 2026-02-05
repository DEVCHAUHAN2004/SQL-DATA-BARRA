--Check whether the table orders 
--contains any duplicate rows.
SELECT *
FROM (
SELECT OrderID,
      COUNT(*) OVER(PARTITION BY OrderId) check_pk
FROM Sales.OrdersArchive
) t
WHERE check_pk > 1

--4	2
--4	2
--6	3
--6	3
--6	3