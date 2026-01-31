--Display the full name of the customers in single field,
-- by merging their firstname and lastname and 
-- add 10 bonus points to the customers score.

SELECT CustomerID,FirstName,LastName,Score,
FirstName+ ' ' + COALESCE(LastName,'baba') AS Fullname,
CONCAT(FirstName,'-',LastName) Concat_fullname,

COALESCE(Score,0) + 10 AS Bonuspoints
FROM Sales.Customers



--1	Jossef	Goldberg	350	Jossef Goldberg	 Jossef-Goldberg	360
--2	Kevin	Brown	   900	Kevin Brown	     Kevin-Brown	910
--3	Mary	NULL	   750	Mary baba	     Mary-	760
--4	Mark	Schwarz	   500	Mark Schwarz	 Mark-Schwarz	510
--5	Anna	Adams	   NULL	Anna Adams	     Anna-Adams	10