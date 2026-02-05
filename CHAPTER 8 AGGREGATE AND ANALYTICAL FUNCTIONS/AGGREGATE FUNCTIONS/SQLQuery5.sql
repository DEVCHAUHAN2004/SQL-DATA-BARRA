--Check whether the table orders 
--contains any duplicate rows.

SELECT OrderID,
      COUNT(*) OVER(PARTITION BY OrderId) check_pk
FROM Sales.OrdersArchive

1	1
2	1
3	1
4	2
4	2
5	1
6	3
6	3
6	3
7	1