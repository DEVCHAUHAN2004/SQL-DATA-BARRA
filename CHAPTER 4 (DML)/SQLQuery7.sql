--USE UPDATE 
--change the score of customer id 6 to 0

UPDATE customers
SET score = 0
WHERE id = 6

SELECT * FROM customers

--1	Maria	Germany	350
--2	 John	USA	900
--3	Georg	UK	750
--4	Martin	Germany	500
--5	Peter	USA	0
--6	Anna	USA	0
--7	Devil	NULL	250