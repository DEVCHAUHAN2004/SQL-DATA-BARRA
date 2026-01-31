--ISNULL / IS NOT NULL

--Identify the cusotmers who have no scores.
SELECT *
FROM Sales.Customers
WHERE Score IS NULL
--5	Anna	Adams	USA	NULL

--List all customers who have scores.
SELECT *
FROM Sales.Customers
WHERE Score IS NOT NULL

--1	Jossef	Goldberg    Germany	    350
--2	Kevin	Brown	   USA	        900
--3	Mary	NULL	   USA	        750
--4	Mark	Schwarz    Germany	    500