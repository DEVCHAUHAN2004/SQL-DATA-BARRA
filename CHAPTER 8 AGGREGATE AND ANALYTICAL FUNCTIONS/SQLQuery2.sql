--Analyze the scores in customers table and use country group by.

SELECT country,
      COUNT(*) AS Total_customers,
      SUM(score) AS Total_score,
      AVG(score) AS Avg_score,
      MAX(score) AS Max_score,
      MIN(score) AS Min_score
FROM customers
GROUP BY country
--Germany	2	850	 425	500	 350
--UK	    2	750	 375	750	 0
--USA	    1	900	 900	900	 900

SELECT *
FROM customers
--1	Maria	Germany	350
--2	 John	USA	    900
--3	Georg	UK	    750
--4	Martin	Germany	500
--5	Peter	UK	    0