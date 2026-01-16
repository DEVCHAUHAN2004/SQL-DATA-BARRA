--find the average score for each country considering only customers  with a 
-- score != 0 and return only those countries with an average score > 430

SELECT country, AVG(score) AS avg_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430

--UK	750
--USA	900