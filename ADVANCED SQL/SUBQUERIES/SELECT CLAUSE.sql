--SELECT CLAUSE
--Show the productid,name,prices,total numbers of orders

SELECT ProductID,Product,Price,
    (SELECT COUNT(*) FROM Sales.Orders) Total_orders
FROM Sales.Products

101	Bottle	10	10
102	Tire	15	10
103	Socks	20	10
104	Caps	25	10
105	Gloves	30	10