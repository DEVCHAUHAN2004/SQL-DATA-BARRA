--use like operator

--find all customers whose 1st name starts with 'M'
SELECT *
FROM customers
WHERE first_name LIKE 'M%'
--1	Maria	Germany	350
--4	Martin	Germany	500


--find all customers whose 1st name ends with 'n'
SELECT *
FROM customers
WHERE first_name LIKE '%n'
--2	 John	USA	900
--4	Martin	Germany	500

--find all customers whose 1st name contains 'r'.
SELECT *
FROM customers
WHERE first_name LIKE '%r%'
--1	Maria	Germany	350
--3	Georg	UK	750
--4	Martin	Germany	500
--5	Peter	UK	0

--find all customers whose 1st name has 'r' in 3rd position.
SELECT *
FROM customers
WHERE first_name LIKE '__r%'
--1	Maria	Germany	350
--4	Martin	Germany	500


