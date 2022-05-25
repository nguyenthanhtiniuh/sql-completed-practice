--3.TIM CAC BANG,VIEW CO SU DUNG COT CUSTOMERCODE
--TIM CAC BANG
use B30
GO
SELECT
  sys.columns.name AS ColumnName,
  tables.name AS TableName
FROM
  sys.columns
  JOIN sys.tables ON
  sys.columns.object_id = tables.object_id
WHERE
  sys.columns.name LIKE '%CUSTOMERCODE%'

--TIM CAC VIEWS 
--SELECT * 
--FROM   INFORMATION_SCHEMA.VIEWS 

--SELECT sys.columns.name
--,tables.name
--FROM sys.columns

--tim cac Views sử dụng column name là 'Ten_Vt' và 'Ten_Dt'
--Baitap03-sql
--Cau 11

SELECT
  sys.columns.name AS ColumnName,
  views.name AS TableName
FROM
  sys.columns
  JOIN sys.views
  ON
  sys.columns.object_id = views.object_id
WHERE
  sys.columns.name LIKE 'Ten_Vt'
  --and 
  --sys.columns.name LIKE 'Ten_Kho'
  --and 
  --sys.columns.name LIKE 'Ten_Dt'