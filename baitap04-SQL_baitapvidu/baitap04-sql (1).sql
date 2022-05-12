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

--select top 1
--    WarehouseCode
--from #B20Warehouse

--SELECT CHARINDEX
--( 'A', 'ABC')

drop TABLE if EXISTS #tblResult
SELECT *
into #tblResult
from #B20Warehouse


ALTER TABLE #tblResult
ADD Description NVARCHAR(100)

SELECT *
FROM #tblResult


SELECT WarehouseCode
FROM #B20Warehouse
WHERE EXISTS
(SELECT WarehouseCode
FROM #tblResult
WHERE #B20Warehouse.WarehouseCode=#tblResult.WarehouseCode);



SELECT *
FROM #B20Warehouse
WHERE WarehouseCode like 'A%%' and WarehouseCode not like 'A';
--SELECT * FROM table_name WHERE col_name LIKE '%my_value%';