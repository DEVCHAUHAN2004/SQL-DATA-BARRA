--EXAMPLE
WITH Orders AS (
SELECT 1 Id, 'A' Category
UNION
SELECT 2, NULL
UNION
SELECT 3,''
UNION
SELECT 4,'  '
)
SELECT Id,Category,DATALENGTH(Category) AS Category_length,
TRIM(Category) policy1,
NULLIF(TRIM(Category),'') policy2,
COALESCE(NULLIF(TRIM(Category),''),'BABA') POLICY3
FROM Orders

--1	 A	    1	     A	    A	    A
--2	 NULL	NULL	NULL	NULL	BABA
--3	        0		        NULL    BABA
--4	        2		        NULL	BABA
