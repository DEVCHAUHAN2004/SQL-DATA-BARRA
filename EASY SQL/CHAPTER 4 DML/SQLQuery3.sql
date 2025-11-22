--update all customers witha null score by setting their score to 0.
UPDATE customers
SET country = 'Germany'
WHERE country IS NULL
SELECT * FROM customers
--| id | first_name | country | score |
--| -- | ---------- | ------- | ----- |
--| 1  | Maria      | Germany | 350   |
--| 2  | John       | USA     | 900   |
--| 3  | Georg      | UK      | 750   |
--| 4  | Martin     | Germany | 500   |
--| 5  | Peter      | USA     | 0     |
--| 6  | Anna       | UK      | 0     |
--| 7  | Dev        | Germany | 0     |
