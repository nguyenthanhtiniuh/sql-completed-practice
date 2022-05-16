--4-8
USE testdb
IF OBJECT_ID('Tempdb..#tblResuorce') IS NOT NULL DROP TABLE #tblResuorce
CREATE TABLE #tblResuorce
(
    Id INT NOT NULL IDENTITY(1,1),
    Code nvarchar(50),
    Value int
)
insert into #tblResuorce
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


drop TABLE if EXISTS #tblResource2
GO

select *
into #tblResource2
from
    (
  select Code, [Value]
    from #tblResuorce
) d
PIVOT
(  
      max(VALUE) FOR Code In(A,B,C,D,E)
  
) as piv;

SELECT *
from #tblResource2
GO

SELECT [VALUE],
    [Code]
FROM
    (
    select [A],
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
