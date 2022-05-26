--BAI TAP 1: -THEM BANG TAM #B20WAREHOUSE(DANH MUC KHO),THEM DU LIEU. 
--VIET T-SQL KIEM TRA MA LONG NHAU NHU AB LONG TRONG ABC,
--MA BC KHONG PHAI LA MA LONG TRONG ABC

USE TBL
GO

DROP TABLE if EXISTS #B20Warehouse
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

DROP TABLE IF EXISTS #tblResult
CREATE TABLE #tblResult
(
    STT INT IDENTITY(1,1) NOT NULL,
    WarehouseCode nvarchar(50),
    Decription NVARCHAR(50)
)
GO

INSERT INTO #tblResult
    (WarehouseCode)
SELECT WarehouseCode
FROM #B20Warehouse

UPDATE #tblResult
SET Decription = 'Co ma long tai dong "0001" '
WHERE WarehouseCode LIKE 'A%%' AND WarehouseCode NOT LIKE 'A';

UPDATE #tblResult
SET Decription = '
Ma "A" long trong "ABC"
'
WHERE WarehouseCode LIKE 'A'

SELECT *
FROM #tblResult
--SELECT * FROM table_name WHERE col_name LIKE '%my_value%';