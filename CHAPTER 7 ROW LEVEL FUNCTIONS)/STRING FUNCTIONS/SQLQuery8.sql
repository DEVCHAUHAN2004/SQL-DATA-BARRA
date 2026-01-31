--SUBSTRING

--Retrieve a list of customers first name removing the first characters.

SELECT first_name,
SUBSTRING(TRIM(first_name),2,5) Sub_name
FROM customers
--Maria	   aria
-- John	   ohn
--Georg	   eorg
--Martin   artin
--Peter	   eter