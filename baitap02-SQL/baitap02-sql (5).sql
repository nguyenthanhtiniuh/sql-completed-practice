--TAO COT CLOSE, OPEN CHO BANG [#tablResult] tu table [#tblResource] theo cong thuc
--Close=Open+InputValue-OutputValue
--Open[Id]=Close[Id-1]

IF OBJECT_ID('Tempdb..#tblResourceA') IS NOT NULL DROP TABLE #tblResourceA
CREATE TABLE #tblResourceA
(
    Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Code nvarchar(50),
    OpenValue INT
)
INSERT INTO #tblResourceA
    (Code,OpenValue)
    SELECT
        'A', 1
UNION ALL
    SELECT
        'C', 3
SELECT *
FROM #tblResourceA

IF OBJECT_ID('Tempdb..#tblResourceB') IS NOT NULL DROP TABLE #tblResourceB
CREATE TABLE #tblResourceB
(
    Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Code nvarchar(50),
    InputValue INT,
    OutputValue INT
)
INSERT INTO #tblResourceB
    (Code,InputValue,OutputValue)
VALUES
    ('A', 1, 0),
    ('A', 3, 2),
    ('A', 1, 3),
    ('B', 1, 1),
    ('B', 2, 1),
    ('C', 1, 4),
    ('C', 2, 2)

IF OBJECT_ID('Tempdb..#tblResult') IS NOT NULL DROP TABLE #tblResult
CREATE TABLE #tblResult
(
    Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Code nvarchar(50),
    OpenValue INT DEFAULT 1,
    InputValue INT,
    OutputValue INT,
    CloseValue INT DEFAULT 2
)

SET
IDENTITY_INSERT #tblResult  ON

insert into #tblResult
    ([Id],
    [Code],
    [InputValue],
    [OutputValue])
SELECT [Id],
    [Code],
    [InputValue],
    [OutputValue]
FROM #tblResourceB

SELECT [Id],
    [Code],
    [OpenValue]=CloseValue-1,
    [InputValue],
    [OutputValue],
    [CloseValue]=OpenValue+InputValue-OutputValue
FROM #tblResult