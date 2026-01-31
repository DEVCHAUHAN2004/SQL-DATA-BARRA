--Find the average score of customers and 
-- treats null as 0 or provide lastname and cust_id.

SELECT CustomerID,LastName,Score,
AVG(Score) OVER() Avg_score,
AVG(
CASE
    WHEN Score IS NULL THEN 0
    ELSE Score
END) OVER()  Avg_Score_clean
FROM Sales.Customers

1	Goldberg	350	625	500
2	Brown	900	625	500
3	NULL	750	625	500
4	Schwarz	500	625	500
5	Adams	NULL	625	500