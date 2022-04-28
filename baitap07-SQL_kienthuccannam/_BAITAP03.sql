--3.TIM CAC BANG,VIEW CO SU DUNG COT CUSTOMERCODE
use B30
SELECT
  sys.columns.name AS ColumnName,
  tables.name AS TableName
FROM
  sys.columns
JOIN sys.tables ON
  sys.columns.object_id = tables.object_id
WHERE
  sys.columns.name LIKE '%Code%'