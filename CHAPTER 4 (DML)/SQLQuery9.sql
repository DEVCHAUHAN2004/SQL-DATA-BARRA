--Update all customers with a null score by setting their
-- score to 0

UPDATE customers
SET score = 0
WHERE score IS NULL

SELECT* FROM customers
--1	Maria	Germany	350
--2	 John	USA	900
--3	Georg	UK	750
--4	Martin	Germany	500
--5	Peter	UK	650
--6	Anna	USA	0
--7	Devil	NULL	250