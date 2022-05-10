-- 4C--THEM DU LIEU NGAU NHIEN 50 KHACH HANG
-- VOI MA SO NGAU NHIEN THEO QUY TAC: KY TU DAU NGAU NHIEN
-- TRONG BANG KY TU CHU CAI VA 4 KY TU SAU NGAU NHIEN TRONG KHOANG TU "0001" -"9999"

-- DEC HEX CHAR
-- 65  41  A
-- 90 5A  Z

-- 97 61 a
-- 122 7A z

USE B30
GO

drop TABLE if EXISTS #tblCustomer
create TABLE #tblCustomer
(
    CustomerCode NVARCHAR(20),
    CustomerName NVARCHAR(50) DEFAULT 'Name',
    Stt int DEFAULT 0
)

BEGIN
    DECLARE @_BeginNumberCharInASCII INT=65;
    DECLARE @_EndNumberCharInASCII INT=90;
    DECLARE @_BeginNumberInRangeToRanDom INT = 0001;
    DECLARE @_EndNumberInRangeToRanDom INT = 9999;

    DECLARE @COUNT INT =1;
    WHILE @COUNT<=50
BEGIN
        INSERT into #tblCustomer
            (CustomerCode)
        select CHAR(RAND()*(@_EndNumberCharInASCII-@_BeginNumberCharInASCII)+@_BeginNumberCharInASCII) 
+ cast(Cast(RAND()*(@_EndNumberInRangeToRanDom-@_BeginNumberInRangeToRanDom)+@_BeginNumberInRangeToRanDom as int)as char);

        SET @COUNT=@COUNT+1
    END
END

select *
from B20Customer

insert into B20Customer
select *
from #tblCustomer

select *
from B20Customer