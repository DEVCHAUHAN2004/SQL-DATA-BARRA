-- LEFT JOIN 
-- Get all customers along with their orders,
--including those without orders

SELECT *
FROM customers AS C
LEFT JOIN orders AS O
ON C.id = o.customer_id

--1	Maria	Germany	350	1001	1	2021-01-11	35
--2	 John	USA	    900	1002	2	2021-04-05	15
--3	Georg	UK	    750	1003	3	2021-06-18	20
--4	Martin	Germany	500	NULL	NULL	NULL	NULL
--5	Peter	UK	    0	NULL	NULL	NULL	NULL