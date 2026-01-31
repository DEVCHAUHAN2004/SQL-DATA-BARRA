--RIGHT JOIN

-- Get all customers along with their orders,
-- including those orders without matching customers.

SELECT *
FROM customers AS C
RIGHT JOIN orders AS O
ON C.id = o.customer_id

--1  Maria	Germany	350	   1001	1	2021-01-11	35
--2	 John	USA	    900	   1002	2	2021-04-05	15
--3	Georg	UK	    750	   1003	3	2021-06-18	20
--NULLNULL	NULL	NULL   1004	6	2021-08-31	10



-- Get all customers along with their orders,
-- including those orders without matching customers.
--USE LEFT JOIN

SELECT *
FROM orders AS O
LEFT JOIN customers AS C
ON O.customer_id = C.id
--1001	1	2021-01-11	35	1	Maria	Germany	350
--1002	2	2021-04-05	15	2	 John	USA	900
--1003	3	2021-06-18	20	3	Georg	UK	750
--1004	6	2021-08-31	10	NULL	NULL	NULL	NULL