SELECT country,first_name,SUM(score) AS total_score
FROM customers

GROUP BY country,first_name

USA	 John	900
UK	Georg	750
Germany	Maria	350
Germany	Martin	500
USA	Peter	0