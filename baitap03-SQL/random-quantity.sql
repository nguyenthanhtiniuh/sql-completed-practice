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
  RETURN (SELECT RandNumber FROM vRandNumber) 
  END 
go  

select dbo.RandNumber()

update HoaDonChiTiet 
set SoLuong =  dbo.RandNumber()

