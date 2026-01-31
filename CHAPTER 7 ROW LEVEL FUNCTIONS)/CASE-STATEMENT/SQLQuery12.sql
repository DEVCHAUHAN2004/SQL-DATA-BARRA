--Retrieve customer details with abbreviated code

SELECT CustomerID,FirstName,LastName,Country,
CASE
    WHEN Country = 'Germany' THEN 'Ge'
    WHEN Country = 'USA' THEN 'Us'
END Country_code
FROM Sales.Customers

1	Jossef	Goldberg	Germany	Ge
2	Kevin	Brown	USA	        Us
3	Mary	NULL	USA	        Us
4	Mark	Schwarz	Germany	     Ge
5	Anna	Adams	USA	         Us