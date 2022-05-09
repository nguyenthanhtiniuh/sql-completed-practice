--TIM CAC COT CO TEN GIONG NHAU NHUNG CO KIEU KHAI BAO DU LIEU KHAC NHAU
USE B30
IF OBJECT_ID('tempdb..#MSSQLTips') IS NOT NULL DROP TABLE #MSSQLTips
CREATE TABLE #MSSQLTips
(
    RowID int,
    CustomerCode nvarchar(30),
    CustomerName INT
);

--INSERT INTO #MSSQLTips
--SELECT
--1,'ALFKI'
--UNION ALL
--SELECT 
--2,'ANATR'
--UNION ALL
--SELECT 
--3,'ANTON'
--UNION ALL
--SELECT 
--4,'AROUT'
--UNION ALL
--SELECT 
--5,'BERGS'
--UNION ALL
--SELECT 
--5,'NTT'
--UNION ALL
--SELECT c
--5,'BERGSNTT'

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'B20Customer'

ALTER TABLE B20Customer
ADD STT NVARCHAR

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'B30AccDocSales'

SELECT t1.COLUMN_NAME, t1.DATA_TYPE AS DATA_TYPET_TABLE1 , t2.DATA_TYPE AS DATA_TYPET_TABLE2
FROM INFORMATION_SCHEMA.COLUMNS AS t1
    INNER JOIN INFORMATION_SCHEMA.COLUMNS AS t2
    ON t1.COLUMN_NAME = t2.COLUMN_NAME
WHERE t1.TABLE_NAME = 'B20Customer' AND t2.TABLE_NAME = 'B30AccDocSales'
    AND t1.DATA_TYPE NOT LIKE t2.DATA_TYPE 

--Tim cac cot co ten giong nhau nhung co khai bao kieu du lieu khac nhau.
--ALTER TABLE B20Customer
--add
----Amount int ,
--DocDate int

--ALTER COLUMN AMOUNT AUTO_INCREMENT

--select * from B20Customer


--b. Tim cac cot co ten giong nhau nhung co khai bao kieu du lieu khac nhau.
--CACH 1
--SELECT name 
--FROM sys.columns 
--WHERE object_id = object_id('B20EMPLOYEE')
--INTERSECT
--SELECT name 
--FROM sys.columns 
--WHERE object_id = object_id('B30AccDocSales')
----WHERE object_id = object_id('B30.B20Customer')


----CACH 2
--SELECT name 
--FROM sys.columns 
--WHERE object_id IN (object_id('B20Customer'),
--                    object_id('B30AccDocSales'))
--GROUP BY name
--HAVING COUNT(*) = 2

----CACH 3
--SELECT t1.COLUMN_NAME,t1.DATA_TYPE AS DATA_TYPET1 ,t2.DATA_TYPE AS DATA_TYPET2
--FROM        INFORMATION_SCHEMA.COLUMNS AS t1 
--INNER JOIN  INFORMATION_SCHEMA.COLUMNS AS t2 
--ON t1.COLUMN_NAME = t2.COLUMN_NAME 
--WHERE t1.TABLE_NAME = 'B20Customer' AND t2.TABLE_NAME = 'B30AccDocSales' AND t1.DATA_TYPE LIKE t2.DATA_TYPE 

--SELECT * FROM INFORMATION_SCHEMA.COLUMNS 
--c. Tim cac cot co ten giong nhau cung khai bao kieu du lieu NVARCHAR, nhung do dai khai bao khac nhau