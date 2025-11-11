--UPDATE--
--change the score of a customer id 6 to 0--
SELECT * FROM customers
--| id | first_name | country | score |
--| -- | ---------- | ------- | ----- |
--| 1  | Maria      | Germany | 350   |
--| 2  | John       | USA     | 900   |
--| 3  | Georg      | UK      | 750   |
--| 4  | Martin     | Germany | 500   |
--| 5  | Peter      | USA     | 0     |
--| 6  | Anna       | USA     | NULL  |
--| 7  | Dev        | NULL    | 100   |


UPDATE customers
SET score = 0
WHERE id = 6
SELECT * FROM customers

--| id | first_name | country | score |
--| -- | ---------- | ------- | ----- |
--| 1  | Maria      | Germany | 350   |
--| 2  | John       | USA     | 900   |
--| 3  | Georg      | UK      | 750   |
--| 4  | Martin     | Germany | 500   |
--| 5  | Peter      | USA     | 0     |
--| 6  | Anna       | USA     | 0     |
--| 7  | Dev        | NULL    | 100   |

