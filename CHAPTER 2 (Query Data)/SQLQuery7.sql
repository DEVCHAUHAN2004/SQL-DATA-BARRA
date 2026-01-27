--Retrieves all customers and sort the result by country and then
-- by the highest score

SELECT * 
FROM customers
ORDER BY country ASC, score DESC

--4	Martin	Germany	500
--1	Maria	Germany	350
--3	Georg	UK	750
--2	 John	USA	900
--5	Peter	USA	0