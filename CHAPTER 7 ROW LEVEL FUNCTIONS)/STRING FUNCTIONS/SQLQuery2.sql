-- STRING FUNCTIONS

--CONCAT 
--Concatenate firstname and country into one column

SELECT first_name,country,CONCAT(first_name,' - ',country) AS 
name_country
FROM customers
--Maria	Germany	Maria - Germany
--John	USA	    John - USA
--Georg	UK	    Georg - UK
--MartinGermany	Martin - Germany
--Peter	UK	    Peter - UK