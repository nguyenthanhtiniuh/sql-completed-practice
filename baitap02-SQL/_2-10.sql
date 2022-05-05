IF OBJECT_ID('Tempdb..#tblResource1') IS NOT NULL DROP TABLE #tblResource1
CREATE TABLE #tblResource1
(
	Id INT Identity(1,1),	
	Class NVARCHAR(16),
	Code NVARCHAR(16),
	Value  NUMERIC(18,2)
)

IF OBJECT_ID('Tempdb..#tblResource2') IS NOT NULL DROP TABLE #tblResource2
CREATE TABLE #tblResource2
(
	Id INT Identity(1,1),	
	Class NVARCHAR(16),
	Value  NUMERIC(18,2)
)

INSERT INTO #tblResource1
SELECT 
'F1',	'A',	100
UNION ALL
SELECT
'F1',	'B',	100
UNION ALL
SELECT
'F2',	'A',	202
UNION ALL
SELECT
'F2',	'C',	219
UNION ALL
SELECT
'F3',	'A',	150
UNION ALL
SELECT
'F2',	'C',	300
UNION ALL
SELECT
'F3',	'D',	120
UNION ALL
SELECT
'F1',	'A',	200


INSERT INTO #tblResource2
SELECT 
'F1',512
UNION ALL
SELECT
'F2',411
UNION ALL
SELECT
'F3',691

SELECT * FROM #tblResource1 ORDER BY Class,Code
SELECT * FROM #tblResource2 ORDER BY Class
--;WITH #tblClassCode AS
--(
--	SELECT Class,Code,SUM(Value) AS Value 
--	FROM #tblResource1
--	GROUP BY Class,Code
--)
--SELECT 
-- t2.Class
--,t2.Code
--,t2.Value
--,SUM(t2.Value) OVER(PARTITION BY t2.Class) AS _Sum
--,t1.Value AS _Distributed
--,ROUND(t2.Value/SUM(t2.Value) OVER(PARTITION BY t2.Class)*t1.Value,2) AS Result
--FROM #tblClassCode t2 LEFT OUTER JOIN #tblResource2 t1 ON t1.Class=t2.Class

SELECT t2.Class,t2.Code,t2.Value
,SUM(t2.Value) OVER(PARTITION BY t2.Class) AS _Sum
,t1.Value AS _Distributed
,ROUND(t2.Value/SUM(t2.Value) OVER(PARTITION BY t2.Class)*t1.Value,2) AS _Result
FROM 
(	SELECT Class,Code,SUM(Value) AS Value 
	FROM #tblResource1
	GROUP BY Class,Code) t2 LEFT OUTER JOIN #tblResource2 t1 ON t1.Class=t2.Class
