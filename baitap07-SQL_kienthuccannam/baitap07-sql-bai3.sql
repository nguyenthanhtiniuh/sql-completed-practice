--3.TIM CAC BANG,VIEW CO SU DUNG COT CUSTOMERCODE
--TIM CAC BANG
use B30
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

SELECT
  sys.columns.name AS ColumnName,
  tables.name AS TableName
FROM
  sys.columns
  JOIN sys.tables
  ON
  sys.columns.object_id = tables.object_id
WHERE
  sys.columns.name LIKE '%CUSTOMERCODE%'