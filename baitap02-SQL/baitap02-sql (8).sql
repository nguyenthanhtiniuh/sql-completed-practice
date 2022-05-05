--4-8
USE TBL
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

-- ROW_NUMBER
-- () OVER
-- (PARTITION BY Code ORDER BY Code DESC) as _Order
SELECT
    -- ROW_NUMBER() OVER (PARTITION BY Id ORDER BY Id) as #ROw,
    *
FROM #tblResuorce
ORDER BY Id

IF OBJECT_ID('Tempdb..#tblResult') IS NOT NULL DROP TABLE #tblResult
CREATE TABLE #tblResult
(
    CODE1 NVARCHAR(50),
    VALUE1 INT,
    CODE2 NVARCHAR(50),
    VALUE2 INT,
    CODE3 NVARCHAR(50),
    VALUE3 INT,
)

SELECT Id,
    sum(A) AS CODEA,
    sum(B) AS CODEB,
    sum(C) AS CODEC,
    sum(D) AS CODED
FROM
(
	SELECT
    [Id],
    [Code],
    [Value]
FROM #tblResuorce
 )
AS SOURCETABLE
 --FOR A
 PIVOT
( 
 sum
(Value) for Code IN
(A,B,C,D)
 )AS PIVOTTABLE
group by Id