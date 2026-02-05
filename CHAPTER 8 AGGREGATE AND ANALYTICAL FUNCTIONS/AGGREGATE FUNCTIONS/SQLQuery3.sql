--Find the total number of customers provide all cusotmer details

SELECT CustomerID,FirstName,LastName,Country,score,
COUNT(*) OVER() Total_customers
FROM Sales.Customers

--1	Jossef	Goldberg	Germany	350	5
--2	Kevin	Brown	USA	900	             5
--3	Mary	NULL	USA	750	       5
--4	Mark	Schwarz	Germany	500	      5
--5	Anna	Adams	USA	NULL	 5  

--Find the total number of scores for the customers

SELECT score, COUNT(Score)OVER() Total_score
FROM Sales.Customers
--4  without inclide NULL
--350	4
--900	4
--750	4
--500	4
--NULL	4

SELECT CustomerID, Score,
       COUNT(COALESCE(Score, 0)) OVER() AS TotalScore
FROM Sales.Customers;

1	350	5
2	900	5
3	750	5
4	500	5
5	NULL	5