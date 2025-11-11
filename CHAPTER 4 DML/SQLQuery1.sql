--copy data from customers table inot persons--
INSERT INTO persons (id, first_name, country, score)
SELECT id, first_name, country, score
FROM customers;

SELECT * FROM customers

