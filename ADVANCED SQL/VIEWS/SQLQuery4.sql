CREATE VIEW Sales.V_order_details AS
SELECT 
       o.OrderID, 
       o.OrderDate,
       o.Sales,
       o.Quantity,

       p.Product, 
       p.Category,

       COALESCE(c.FirstName,'') + ' ' + COALESCE(c.LastName,'') AS CustomerName,
       c.Country,

       COALESCE(e.FirstName,'') + ' ' + COALESCE(e.LastName,'') AS EmployeeName,
       e.Department

FROM Sales.Orders o

LEFT JOIN Sales.Products p
    ON o.ProductID = p.ProductID

LEFT JOIN Sales.Customers c
    ON o.CustomerID = c.CustomerID

LEFT JOIN Sales.Employees e
    ON o.SalesPersonID = e.EmployeeID;