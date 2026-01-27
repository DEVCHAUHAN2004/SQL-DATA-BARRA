--Retrieve all customers who are either from the 'usa'
--and have a score > 500.
SELECT *
FROM customers
WHERE country = 'USA' OR score > 500

--2	 John	USA	900
--3	Georg	UK	750
