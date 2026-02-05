--Show the employee who have the highest salary.

SELECT *
FROM (
SELECT EmployeeID,FirstName,LastName,BirthDate,salary,
      MAX(Salary) OVER() Highest_salary
      --MIN(Salary) OVER() Lowest_salary
FROM Sales.Employees
)t 
WHERE Salary = Highest_salary
4	Michael	Ray	1977-02-10	90000	90000
