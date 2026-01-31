--MULTI TABLE JOIN
--USE SALES DB 
--Retrieve a list of all orders,along with the related
-- customer,product and employee details

--SELECT * FROM Sales.Customers
--SELECT * FROM Sales.Employees
--SELECT * FROM Sales.Orders
--SELECT * FROM Sales.OrdersArchive
--SELECT * FROM Sales.Products

SELECT O.OrderID,O.Sales,C.FirstName AS c_firstname,C.LastName AS c_lastname,
P.Product AS Productname, P.Price,
E.FirstName AS e_firstname,E.LastName AS e_lastname
FROM Sales.Orders O

LEFT JOIN Sales.Customers C
ON O.CustomerID = C.CustomerID

LEFT JOIN Sales.Products P
ON O.ProductID = P.ProductID

LEFT JOIN Sales.Employees E
ON O.SalesPersonID = E.EmployeeID

1	10	Kevin	Brown	Bottle	10	Mary	NULL
2	15	Mary	NULL	Tire	15	Mary	NULL
3	20	Jossef	Goldberg	Bottle	10	Carol	Baker
4	60	Jossef	Goldberg	Gloves	30	Mary	NULL
5	25	Kevin	Brown	Caps	25	Carol	Baker
6	50	Mary	NULL	Caps	25	Carol	Baker
7	30	Jossef	Goldberg	Tire	15	Frank	Lee
8	90	Mark	Schwarz	Bottle	10	Mary	NULL
9	20	Kevin	Brown	Bottle	10	Mary	NULL
10	60	Mary	NULL	Tire	15	Carol	Baker
