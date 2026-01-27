--MEMBERSHIP OPERATOR

--Retrieve all customers from germany or USA

SELECT *
FROM customers
WHERE country = 'Germany' OR country = 'USA'
--1	Maria	Germany	350
--2	 John	USA	900
--4	Martin	Germany	500

SELECT * FROM customers
WHERE country  IN ('Germany','USA')
--1	Maria	Germany	350
--2	 John	USA	900
--4	Martin	Germany	500


SELECT * FROM customers
WHERE country NOT IN ('Germany','USA')
--3	Georg	UK	750
--5	Peter	UK	0