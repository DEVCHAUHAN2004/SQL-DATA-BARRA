--HAVING--
SELECT country,SUM(score)
FROM customers
GROUP BY country
HAVING SUM(score)> 500

Germany	850
UK	750
USA	900