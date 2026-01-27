--retrieve all customers who are not from germany.

SELECT *
FROM customers

WHERE country != 'Germany'
--2	 John	USA	900
--3	Georg	UK	750
--5	Peter	UK	650