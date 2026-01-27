--use < or <=

--Retrive all customers with a score less than 500.
UPDATE customers
SET score = 0
WHERE id = 5

SELECT * 
FROM customers
WHERE score < 500

--1	Maria	Germany	350
--5	Peter	UK	0

SELECT * 
FROM customers
WHERE score <= 500

--1	Maria	Germany	350
--4	Martin	Germany	500
--5	Peter	UK	0