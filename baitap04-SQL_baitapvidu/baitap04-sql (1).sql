--BAI TAP 1: -THEM BANG TAM #B20WAREHOUSE(DANH MUC KHO),THEM DU LIEU. 
--VIET T-SQL KIEM TRA MA LONG NHAU NHU AB LONG TRONG ABC,
--MA BC KHONG PHAI LA MA LONG TRONG ABC

USE TBL
GO

drop TABLE if EXISTS #B20Warehouse
CREATE TABLE #B20Warehouse
(
    STT INT IDENTITY(1,1) NOT NULL,
    WarehouseCode nvarchar(50)
)

INSERT INTO #B20Warehouse
    (WarehouseCode)
VALUES
    ('A'),
    ('B'),
    ('C'),
    ('ABC')
SELECT *
FROM #B20Warehouse

drop TABLE if EXISTS #tblResult
SELECT *
into #tblResult
FROM #B20Warehouse

select top 1
    WarehouseCode
from #B20Warehouse

SELECT CHARINDEX
( 'A', 'ABC')

drop TABLE if EXISTS #tblResult
SELECT *
into #tblResult
from #B20Warehouse


ALTER TABLE #tblResult
ADD Description NVARCHAR(100)

SELECT *
FROM #tblResult
