--Change the score of customer with id 5 to 650 and
-- update the country to 'UK'
UPDATE customers
SET score = 650, country = 'UK'
WHERE id = 5

SELECT * FROM customers
--1	Maria	Germany	350
--2	 John	USA	900
--3	Georg	UK	750
--4	Martin	Germany	500
--5	Peter	UK	650
--6	Anna	USA	0
--7	Devil	NULL	250
