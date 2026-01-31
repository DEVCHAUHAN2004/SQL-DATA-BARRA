--TRIM

--Find customers who firstname containing leading or 
-- trailing spaces

SELECT first_name
FROM customers
WHERE first_name != TRIM(first_name)
-- John

--or 

SELECT first_name,
LEN(first_name) Len_name,
LEN(TRIM(first_name)) Len_trim_name,
LEN(first_name) - LEN(TRIM(first_name)) Flag
FROM  customers
--Maria	5	5	0
-- John	5	4	1
--Georg	5	5	0
--Martin	6	6	0
--Peter	5	5	0
WHERE LEN(first_name) != LEN(TRIM(first_name))
-- John	5	4	1
