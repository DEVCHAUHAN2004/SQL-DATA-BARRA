--Find the product that fall wothin the highest 40% of the prices.
SELECT *
FROM (
SELECT *,
    CUME_DIST() OVER(ORDER BY Price DESC) dist_rank
FROM Sales.Products) t
WHERE dist_rank <= 0.4
--105	Gloves	Clothing	30	0.2
--104	Caps	Clothing	25	0.4