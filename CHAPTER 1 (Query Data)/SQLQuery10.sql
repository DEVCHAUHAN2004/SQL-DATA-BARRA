--total score for each country

SELECT country, SUM(score) AS total_score
FROM customers
GROUP BY country

--Germany	850
--UK	750
--USA	900
