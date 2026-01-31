--FULL JOIN
--Get all customers and all orders,even if there no match.

SELECT id,first_name,customer_id,sales
FROM customers AS C
FULL JOIN orders AS O
ON C.id = O.customer_id

--1	Maria	1	35
--2	 John	2	15
--3	Georg	3	20
--4	Martin	NULL	NULL
--5	Peter	NULL	NULL
--NULL	NULL 6	10
