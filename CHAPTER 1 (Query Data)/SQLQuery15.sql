--Retrieves top 3 customers with highest score
SELECT TOP 3 * 
FROM customers
ORDER BY score DESC

--2	 John	USA	900
--3	Georg	UK	750
--4	Martin	Germany	500