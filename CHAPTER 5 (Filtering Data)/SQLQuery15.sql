--use > or >=

--Retrive all customers with a score greater than 500

SELECT * 
FROM customers
WHERE score > 500
--2	 John	USA	900
--3	Georg	UK	750


SELECT * 
FROM customers
WHERE score >= 500

--2	 John	USA	900
--3	Georg	UK	750
--4	Martin	Germany	500