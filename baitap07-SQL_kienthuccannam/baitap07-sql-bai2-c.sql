--Tim cac cot co ten giong nhau cung khai bao kieu du lieu NVARCHAR giua 2 bang
--NHUNG DO DAI KHAI BAO KHAC NHAU
USE B30

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE DATA_TYPE='NVARCHAR'
GO
--
--ALTER TABLE B20Employee
--ADD  
--ItemCode nvarchar(10),
--DeptCode nvarchar(10)
ALTER TABLE B30AccDocSales
ALTER COLUMN DeptCode nvarchar(40)

SELECT
    t1.COLUMN_NAME,
    t1.DATA_TYPE AS DATA_TYPET_TBL1,
    t1.CHARACTER_MAXIMUM_LENGTH as maxlengthchar_tBL1 ,
    t2.DATA_TYPE AS DATA_TYPET_TBL2,
    t2.CHARACTER_MAXIMUM_LENGTH as maxlengthchar_TBL2
FROM INFORMATION_SCHEMA.COLUMNS AS t1
    JOIN INFORMATION_SCHEMA.COLUMNS AS t2
    ON t1.COLUMN_NAME LIKE t2.COLUMN_NAME
WHERE t1.TABLE_NAME = 'B20Employee'
    AND t2.TABLE_NAME = 'B30AccDocSales'
    AND t1.DATA_TYPE LIKE t2.DATA_TYPE
    AND t1.CHARACTER_MAXIMUM_LENGTH not like t2.CHARACTER_MAXIMUM_LENGTH
