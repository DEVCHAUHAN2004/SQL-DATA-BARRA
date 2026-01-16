--Find the total score and total number of customers for each country

SELECT country,SUM(score) AS total_score, COUNT(id) as total_customers
FROM customers
GROUP BY country

--Germany	850	2
--UK	750	1
--USA	900	2