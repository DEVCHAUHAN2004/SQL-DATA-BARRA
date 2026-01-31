--Sort the customers from lowest to highest scores,
-- with nulls appearing last.

SELECT CustomerID, Score
FROM Sales.Customers
ORDER BY 
    CASE WHEN Score IS NULL THEN 1 ELSE 0 END ,  -- NULLs last
    Score ASC;                                 -- lowest to highest
--1	350
--4	500
--3	750
--2	900
--5	NULL