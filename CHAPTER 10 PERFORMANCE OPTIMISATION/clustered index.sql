--CREATE CLUSTERED INDEX idx_db_customers_CustomerID
--ON Sales.db_customers (CustomerID);

select *
from Sales.db_customers
where LastName = 'Brown';