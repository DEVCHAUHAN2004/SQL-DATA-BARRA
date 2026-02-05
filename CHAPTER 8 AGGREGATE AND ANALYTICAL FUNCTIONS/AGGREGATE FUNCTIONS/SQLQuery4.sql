--Check whether the table orders 
--contains any duplicate rows.

SELECT OrderID,COUNT(*) OVER(PARTITION BY OrderId) check_pk
FROM Sales.Orders

1	1
2	1
3	1
4	1
5	1
6	1
7	1
8	1
9	1
10	1