--RESULT TYPE SUBQUERY

--1.Scalar subquery returns single value.
SELECT AVG(Sales)
FROM Sales.Orders
--38

--2.row subquery return multiple rows and single column
SELECT CustomerID
FROM Sales.Orders

--3.table subquery return multiple rows and columns.
SELECT *
FROM Sales.Orders

