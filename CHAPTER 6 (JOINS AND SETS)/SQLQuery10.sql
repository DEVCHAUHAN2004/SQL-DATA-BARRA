--FULL ANTI JOIN
--FIND customers without orders and orders without customers.
SELECT *
FROM customers C
FULL JOIN orders O
ON C.id = O.customer_id
WHERE C.id IS NULL OR O.customer_id IS NULL
--4	Martin	Germany	500	    NULL	NULL	NULL	NULL
--5	Peter	UK	    0	   NULL	   NULL	  NULL	   NULL
--NULLNULL	NULL	NULL	1004	6	2021-08-31	10


--get all customers along with
--their orders but only for customers 
--who have placed an order.

SELECT *
FROM customers C
LEFT JOIN orders O
ON C.id = O.customer_id
WHERE O.customer_id IS NOT NULL

--1	Maria	Germany	350	1001	1	2021-01-11	35
--2	 John	USA	   900	1002	2	2021-04-05	15
--3	Georg	UK	   750	1003	3	2021-06-18	20