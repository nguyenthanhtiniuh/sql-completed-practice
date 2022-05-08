--TAO TABLE [#TBLRESULT] TU [#TBLRESOURCE]
USE tempdb

IF OBJECT_ID('Tempdb..#tblResource') IS NOT NULL DROP TABLE #tblResource
CREATE TABLE #tblResource
(
    Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Code nvarchar(50),
    Value int
)

INSERT INTO #tblResource
    (Code,Value)
VALUES
    ('A', 100),
    ('B', 200),
    ('C', 150),
    ('A', 300),
    ('B', 240),
    ('A', 120),
    ('C', 130)
SELECT *
FROM #tblResource

IF OBJECT_ID('Tempdb..#tblResult') IS NOT NULL DROP TABLE #tblResult
CREATE TABLE #tblResult
(
    Id int IDENTITY(1,1) ,
    OrderResult int NULL,
    Code nvarchar(50),
    Value int
)
;WITH
    tbl
    AS

    (
        SELECT *
        FROM #tblResource

    )
INSERT into #tblResult
    (OrderResult,Code,[Value])
SELECT ROW_NUMBER() OVER(PARTITION BY Code ORDER BY Code DESC) as OrderResult, Code, [Value]
FROM tbl
ORDER BY Code,[Value]


-- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'
DROP TABLE IF EXISTS #tblResult1
SELECT
[Code],
[Value]
INTO #tblResult1
FROM [#tblResource]

ALTER TABLE #tblResult1
ADD Id INT not NULL DEFAULT 1

-- Update rows in table '[TableName]' in schema '[dbo]'
UPDATE [#tblResult1]
SET
    [Id] = 1
    -- Add more columns and values here
WHERE Code='A'/* add search conditions here */
GO
UPDATE [#tblResult1]
SET
    [Id] = 2
    -- Add more columns and values here
WHERE Code='B'/* add search conditions here */
GO
UPDATE [#tblResult1]
SET
    [Id] = 3
    -- Add more columns and values here
WHERE Code='C'/* add search conditions here */
GO

SELECT * From #tblResult1

SELECT Id,
    ROW_NUMBER
() OVER
(PARTITION BY Code ORDER BY Code DESC) as OrderResult,
    [Code],
    [Value]
FROM #tblResult1
ORDER BY Code,[Value]