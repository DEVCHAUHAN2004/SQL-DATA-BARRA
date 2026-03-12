--select *
--from Sales.db_customers
--where Country = 'USA' and Score > 500

CREATE NONCLUSTERED INDEX idx_db_customers_countryscore
ON Sales.db_customers(Country,Score)

