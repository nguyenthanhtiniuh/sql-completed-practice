--4-8
USE testdb
IF OBJECT_ID('Tempdb..#tblResuorce') IS NOT NULL DROP TABLE #tblResuorce
CREATE TABLE #tblResuorce
(
    Id INT NOT NULL IDENTITY(1,1),
    Code nvarchar(50),
    Value int
)
INSERT INTO #tblResuorce
VALUES
    ('A', 100),
    ('B', 100),
    ('C', 220),
    ('A', 150),
    ('C', 300),
    ('D', 120),
    ('E', 120)
SELECT *
FROM #tblResuorce
ORDER BY Id


DROP TABLE IF EXISTS #tblResource2
GO

SELECT *
INTO #tblResource2
FROM
    (
  SELECT Code, [Value]
    FROM #tblResuorce
) d
PIVOT
(  
      max(VALUE) FOR Code In(A,B,C,D,E)
  
) AS piv;

SELECT *
FROM #tblResource2
GO

SELECT [VALUE],
    [Code]
FROM
    (
    SELECT [A],
        [B],
        [C],
        [D],
        [E]
    FROM #tblResource2
) p
UNPIVOT
(
    VALUE FOR Code In ([A],
[B],
[C],
[D],
[E])
)unpt;

GO
