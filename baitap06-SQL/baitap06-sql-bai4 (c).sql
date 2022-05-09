--4C--THEM DU LIEU NGAU NHIEN 50 KHACH HANG
--VOI MA SO NGAU NHIEN THEO QUY TAC: KY TU DAU NGAU NHIEN
--TRONG BANG KY TU CHU CAI VA 4 KY TU SAU NGAU NHIEN TRONG KHOANG TU "0001" -"9999"
USE B30
GO

-- DECLARE @_BeginNumberCharInASCII INT=65;
-- DECLARE @_EndNumberCharInASCII INT=90;
--DEC HEX CHAR
--65  41  A
--90 5A  Z

--97 61 a
--122 7A z
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

-- Drop a table called '#tblB20Customer' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[#tblB20Customer]', 'U') IS NOT NULL
DROP TABLE [dbo].[#tblB20Customer]
GO
SELECT *
into #tblB20Customer
FROM B20Customer

SELECT *
FROM #tblB20Customer

-- Delete rows from table '[TableName]' in schema '[dbo]'
-- DELETE top(20) FROM #tblB20Customer