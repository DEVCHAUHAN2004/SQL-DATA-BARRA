--Retrieves the lowest 2 customer based on the score
SELECT TOP 2 *
FROM customers
ORDER BY score ASC

--5	Peter	USA	0
--1	Maria	Germany	350