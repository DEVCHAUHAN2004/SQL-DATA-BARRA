--WHERE CLAUSE

--Find the products that have a price higher than average
-- price of all products.

SELECT ProductID,Price
FROM Sales.Products
WHERE Price > (
              SELECT AVG(Price) FROM Sales.Products
               )



104	25
105	30