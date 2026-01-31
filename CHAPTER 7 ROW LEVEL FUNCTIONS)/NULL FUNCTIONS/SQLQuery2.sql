-- ISNULL/ COALESCE
--Find the average score of customers

SELECT 
CustomerID,Score,AVG(Score) OVER() Avg_score,
AVG(COALESCE(Score,0)) OVER() Avg_score2
FROM Sales.Customers
--1	350	625	500
--2	900	625	500
--3	750	625	500
--4	500	625	500
--5	NULL	625	500