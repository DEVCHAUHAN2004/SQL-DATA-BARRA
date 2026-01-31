--NULLIF
--Find the sales price for each order by dividing
-- sales by quantity

SELECT OrderID,Sales,Quantity,
Sales/NULLIF(Quantity,0) AS Price
FROM Sales.Orders

--1	10	1	10
--2	15	1	15
--3	20	2	10
--4	60	2	30
--5	25	1	25
--6	50	2	25
--7	30	2	15
--8	90	3	30
--9	20	2	10
--10 60	0	NULL