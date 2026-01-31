--Retrieve employee details with gender displayed as full text.
SELECT EmployeeID,FirstName,LastName,Gender,
CASE Gender
    WHEN 'M' THEN 'Male'
    WHEN 'F' THEN 'Female'
    ELSE 'N/A'
END Fulltext   
FROM Sales.Employees
--1	Frank	Lee	    M	Male
--2	Kevin	Brown	M	Male
---3Mary	        F	Female
--4	Michael	Ray	    M	Male
--5	Carol	Baker	F	Female