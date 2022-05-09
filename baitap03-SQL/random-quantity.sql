use KinhDoanh
go

-- Azure Synapse Analytics, Parallel Data Warehouse 
DROP FUNCTION IF EXISTS RandNumber
-- CREATE FUNCTION RandNumber() 
-- RETURNS INT 
-- AS 
--   BEGIN
--   RETURN (SELECT RandNumber
--   FROM vRandNumber)
-- END 
go

--baitap03-sql

DROP VIEW IF EXISTS vRandNumber
-- CREATE VIEW vRandNumber
-- AS
--   SELECT floor(RAND()*50) as RandNumber 
-- go


-- select dbo.RandNumber()

-- update HoaDonChiTiet 
-- set SoLuong =  dbo.RandNumber()

-- DECLARE @_BeginNumberInRangeToRanDom INT
-- SET @_BeginNumberInRangeToRanDom = 0001
-- DECLARE @_EndNumberInRangeToRanDom INT
-- SET @_EndNumberInRangeToRanDom = 9999

-- DECLARE @COUNT INT =1;
-- WHILE @COUNT<=50
-- BEGIN
--     select CHAR(RAND()*(@_EndNumberCharInASCII-@_BeginNumberCharInASCII)+@_BeginNumberCharInASCII) 
-- + cast(Cast(RAND()*(@_EndNumberInRangeToRanDom-@_BeginNumberInRangeToRanDom)+@_BeginNumberInRangeToRanDom as int)as char);

--     SET @COUNT=@COUNT+1
-- END