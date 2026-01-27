--RANGE OPERATOR

--Retrieve all customers whose score falls in the range
-- between 100 & 500

SELECT * FROM customers
WHERE score BETWEEN 100 AND 500
--1	Maria	Germany	350
--4	Martin	Germany	500


SELECT * FROM customers
WHERE score <= 500 AND score >=100
--1	Maria	Germany	350
--4	Martin	Germany	500
