-- union

--combine the data from employee and customers into one table.
SELECT FirstName,LastName
FROM Sales.Customers
UNION
SELECT FirstName,LastName
FROM Sales.Employees

--Anna	Adams
--Carol	Baker
--Frank	Lee
--Jossef	Goldberg
--Kevin	Brown
--Mark	Schwarz
--Mary	NULL
--Michael	Ray


--UNION ALL
--Combine the data from employee and customers into 
-- one table including duplicates
SELECT FirstName,LastName
FROM Sales.Customers
UNION ALL
SELECT FirstName,LastName
FROM Sales.Employees

--Jossef	Goldberg
--Kevin	Brown
--Mary	NULL
--Mark	Schwarz
--Anna	Adams
--Frank	Lee
--Kevin	Brown
--Mary	NULL
--Michael	Ray
--Carol	Baker

--EXCEPT
--Find employee who are not customers at the same time.
SELECT FirstName,LastName
FROM Sales.Customers
EXCEPT
SELECT FirstName,LastName
FROM Sales.Employees

--Anna	Adams
--Jossef	Goldberg
--Mark	Schwarz

SELECT FirstName,LastName
FROM Sales.Employees
EXCEPT
SELECT FirstName,LastName
FROM Sales.Customers

--Carol	Baker
--Frank	Lee
--Michael	Ray

--INTERSECT
--Find the employee who ate also customers
SELECT FirstName,LastName
FROM Sales.Employees
INTERSECT
SELECT FirstName,LastName
FROM Sales.Customers
--Kevin	Brown
--Mary	NULL

