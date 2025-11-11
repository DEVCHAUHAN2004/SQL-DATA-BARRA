--find total score and total number of customers for each country--

SELECT COUNT(id) AS total_values,country,SUM(score) AS total_score
FROM customers

GROUP BY country

2	Germany	850
1	UK	750
2	USA	900