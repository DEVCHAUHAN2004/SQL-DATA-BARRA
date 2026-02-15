--NTILE()
SELECT *,
    CASE WHEN buckets = 1 THEN 'HIGH'
         WHEN buckets = 2 THEN 'MEDIUM'
         WHEN buckets = 3 THEN 'LOW'
END sales_segment
FROM(SELECT OrderID,Sales,
    NTILE(3) OVER(ORDER BY Sales DESC) buckets
    --NTILE(2) OVER(ORDER BY Sales DESC) buckets
FROM Sales.Orders) t
8	90	1	HIGH
4	60	1	HIGH
10	60	1	HIGH
6	50	1	HIGH
7	30	2	MEDIUM
5	25	2	MEDIUM
9	20	2	MEDIUM
3	20	3	LOW
2	15	3	LOW
1	10	3	LOW