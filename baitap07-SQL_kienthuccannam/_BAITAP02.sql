USE tempdb
USE B30
--2-Cho 2 bang du lieu bat ky tu mot database do nguoi dung tao va mot database tempdb khong dong cau truc
--a. Lay du lieu phan du lieu chung (cac cot cung ten, neu co) cua 2 bang.
IF OBJECT_ID('tempdb..#MSSQLTips') IS NOT NULL DROP TABLE #MSSQLTips
CREATE TABLE #MSSQLTips (
RowID int,
CustomerCode nvarchar(30)
--CustomerName INT
);

INSERT INTO #MSSQLTips
SELECT
1,'ALFKI'
UNION ALL
SELECT 
2,'ANATR'
UNION ALL
SELECT 
3,'ANTON'
UNION ALL
SELECT 
4,'AROUT'
UNION ALL
SELECT 
5,'BERGS'
UNION ALL
SELECT 
5,'NTT'
UNION ALL
SELECT 
5,'BERGSNTT'

--SELECT * FROM #MSSQLTips

SELECT CustomerCode
FROM #MSSQLTips
--WHERE nhacung_id > 500
INTERSECT 
SELECT CustomerCode
FROM B20Customer
--WHERE congty_ten in (‘Apple’, ‘Microsoft’, ‘SQL Server’)
--ORDER BY 2;
--b. Tim cac cot co ten giong nhau nhung co khai bao kieu du lieu khac nhau.
--CACH 1
SELECT name 
FROM sys.columns 
WHERE object_id = object_id('B20EMPLOYEE')
INTERSECT
SELECT name 
FROM sys.columns 
WHERE object_id = object_id('B30AccDocSales')
--WHERE object_id = object_id('B30.B20Customer')


--CACH 2
SELECT name 
FROM sys.columns 
WHERE object_id IN (object_id('B20Customer'),
                    object_id('B30AccDocSales'))
GROUP BY name
HAVING COUNT(*) = 2

--CACH 3
SELECT t1.COLUMN_NAME 
FROM        INFORMATION_SCHEMA.COLUMNS AS t1 
INNER JOIN  INFORMATION_SCHEMA.COLUMNS AS t2 
ON t1.COLUMN_NAME = t2.COLUMN_NAME 
WHERE t1.TABLE_NAME = 'B20Customer' AND t2.TABLE_NAME = 'B30AccDocSales'

SELECT * FROM INFORMATION_SCHEMA.COLUMNS 
--c. Tim cac cot co ten giong nhau cung khai bao kieu du lieu NVARCHAR, nhung do dai khai bao khac nhau
