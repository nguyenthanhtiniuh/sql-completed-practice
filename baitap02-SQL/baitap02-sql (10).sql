--4-10
use TBL
GO

IF OBJECT_ID('Tempdb..#tblResource1') IS NOT NULL DROP TABLE #tblResource1
CREATE TABLE #tblResource1
(
    Class nvarchar(50),
    Code nvarchar(50),
    Value NUMERIC(18,2)
)

INSERT INTO #tblResource1
VALUES
    ('F1', 'A', 100)
,
    ('F1', 'A', 200)
,
    ('F1', 'B', 100)
,
    ('F2', 'C', 220)
,
    ('F3', 'A', 150)
,
    ('F2', 'C', 300)
,
    ('F3', 'D', 120)

select *
from #tblResource1


IF OBJECT_ID('Tempdb..#tblResource2') IS NOT NULL DROP TABLE #tblResource2
CREATE TABLE #tblResource2
(
    Class nvarchar(50),
    Value NUMERIC(18,2)
)
INSERT INTO #tblResource2
VALUES
    ('F1', 500)
,
    ('F2', 400)
,
    ('F3', 600)

select *
from #tblResource2

SELECT r1.Class, r1.Code, r1.Value
, SUM(r1.Value) OVER(PARTITION BY r1.Class) AS _Sum
, r2.Value AS _Distributed
, ROUND(r1.Value/SUM(r1.Value) OVER(PARTITION BY r1.Class)*r2.Value,2) AS _Result
FROM
    ( SELECT Class, Code, SUM(Value) AS Value
    FROM #tblResource1
    GROUP BY Class,Code) r1 LEFT OUTER JOIN #tblResource2 r2 ON r2.Class=r1.Class

--ORDER BY Class,Code

-- F1 A 1  3
-- F1 A 1  3
-- F1 B 1  3

-- F1  10