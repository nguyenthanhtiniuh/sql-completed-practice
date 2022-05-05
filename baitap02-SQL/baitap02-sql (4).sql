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
    Id int not null IDENTITY(1,1) ,
    _Order int NULL,
    Code nvarchar(50),
    Value int
)
;WITH tbl AS(
    SELECT * FROM #tblResource
    
)INSERT into #tblResult(_Order,Code,[Value])
SELECT ROW_NUMBER() OVER(PARTITION BY Code ORDER BY Code DESC) as _Order,Code,[Value] FROM tbl ORDER BY Code,[Value]

SELECT *
FROM [#tblResult]