--Find the avearge scoreof cusotmers.
SELECT CustomerID,
     AVG(Score) OVER() Avg_score_withnull,
     AVG(COALESCE(Score,0)) OVER() Avg_score_withnotnull

FROM Sales.Customers
1	625	500
2	625	500
3	625	500
4	625	500
5	625	500