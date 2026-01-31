--UPPER AND LOWER
--Convert the firstname to lowercase and uppercase.

SELECT first_name,
UPPER(first_name) Upper_name,
LOWER(first_name) Lower_name
FROM customers

--Maria	    MARIA	maria
--John	    JOHN	 john
--Georg	    GEORG	georg
--Martin	MARTIN	martin
--Peter	    PETER	peter
