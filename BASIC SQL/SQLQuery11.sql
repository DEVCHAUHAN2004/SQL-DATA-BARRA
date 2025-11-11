--GROUP BY--
SELECT country,SUM(score) AS total_sum
FROM customers
GROUP BY country

Germany	850
UK	    750
USA	    900