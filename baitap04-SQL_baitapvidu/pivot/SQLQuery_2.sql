drop table if exists #tblTest

CREATE TABLE #tblTest
(
    AREA VARCHAR(10),
    LEVEL1 VARCHAR(3),
    LEVEL2 VARCHAR(3),
    Amount Decimal(5)
)

INSERT #tblTest
VALUES
    ('HR', 'ABC', '', 100)
INSERT #tblTest
VALUES
    ('COMP', 'BCD', '', 200)
INSERT #tblTest
VALUES
    ('TECH', 'CDF', 'A1', 5)
INSERT #tblTest
VALUES
    ('TECH', 'CDF', 'A2', 10)
INSERT #tblTest
VALUES
    ('TECH', 'CDF', 'A3', 15)
INSERT #tblTest
VALUES
    ('OPR', 'DEF', '', 90)

select *
from #tblTest

---

declare @columns as nvarchar(max)

select @columns = STRING_AGG(QUOTENAME(case when LEVEL2 is null or LEVEL2 = '' then LEVEL1 else LEVEL2 end), ', ')
from #tblTest

declare @q as nvarchar(max) = 
 N'select [AREA] as [ ], ' + @columns + ' from ( ' +
 ' select [AREA], case when LEVEL2 is null or LEVEL2 = '''' then LEVEL1 else LEVEL2 end as V, Amount
  from #tblTest 
 ) t
 pivot
 (
     SUM(Amount) for V in (' + @columns + ')
 ) p
 '

--PRINT @q

EXEC ( @q )