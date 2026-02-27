--generate a sequence of number from 1 to 20.
WITH Series AS(
SELECT
       1 AS My_number

       UNION ALL

SELECT  My_number + 1
FROM Series
--WHERE My_number < 20
)
SELECT * FROM Series
OPTION(MAXRECURSION 50)