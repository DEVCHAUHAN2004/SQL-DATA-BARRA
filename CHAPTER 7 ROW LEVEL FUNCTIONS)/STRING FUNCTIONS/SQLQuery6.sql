--LEN

--Calculate the length of customer first_name

SELECT first_name, LEN(first_name) Len_name
FROM customers
--Maria	5
-- John	5
--Georg	5
--Martin	6
--Peter	5