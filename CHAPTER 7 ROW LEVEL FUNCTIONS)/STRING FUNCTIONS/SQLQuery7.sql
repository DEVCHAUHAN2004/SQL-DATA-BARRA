--LEFT(starting se extaction) AND RIGHT(end se )

--Retrieve the first 2 characters of each 1st name

SELECT first_name,
LEFT(first_name,2) first_2_char,
RIGHT(first_name,2) last_2_char
FROM customers
--Maria	Ma	ia
-- John	 J	hn
--Georg	Ge	rg
--Martin	Ma	in
--Peter	Pe	er

SELECT first_name,
LEFT(TRIM(first_name),2) first_2_char,
RIGHT(TRIM(first_name),2) last_2_char
FROM customers
--Maria	Ma	ia
-- John	Jo	hn
--Georg	Ge	rg
--Martin	Ma	in
--Peter	Pe	er