--RIGHT ANTI JOIN
--Get all orders without matching customers
SELECT * FROM customers
SELECT * FROM orders

SELECT *
FROM orders O
LEFT JOIN customers C
ON O.customer_id = C.id
WHERE C.id IS NULL;
--1004	6	2021-08-31	10	NULL	NULL	NULL	NULL

SELECT *
FROM customers C
RIGHT JOIN orders O
ON O.customer_id = C.id
WHERE C.id IS NULL;




