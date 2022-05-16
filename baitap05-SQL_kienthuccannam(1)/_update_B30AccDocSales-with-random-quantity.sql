use B30
go


DROP VIEW IF EXISTS vRandNumber
CREATE VIEW vRandNumber
AS
  SELECT floor(RAND()*50) as RandNumber 
go

-- Azure Synapse Analytics, Parallel Data Warehouse 
DROP FUNCTION IF EXISTS RandNumber
CREATE FUNCTION RandNumber() 
RETURNS INT 
AS 
  BEGIN
  RETURN (SELECT RandNumber
  FROM vRandNumber)
END 
go

select dbo.RandNumber()

update B30AccDocSales 
set Quantity =  dbo.RandNumber()

UPDATE B30AccDocSales
SET Amount = Quantity*5000
SELECT *
FROM B30AccDocSales