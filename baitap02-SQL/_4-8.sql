--4-8
USE TBL
CREATE TABLE #tblResuorce
(
    _Code nvarchar(50),
    _Value int
)

-- insert into #tblResuorce
-- VALUES
--     ('A', 100),
--     ('B', 100),
--     ('C', 220),
--     ('A', 150),
--     ('C', 300),
--     ('D', 120),
--     ('E', 120)

-- SELECT *
-- FROM #tblResuorce

TRUNCATE TABLE #tblResuorce

CREATE TABLE #tblResult
(
    _CODE1 NVARCHAR(50),
    _VALUE1 INT,
    _CODE2 NVARCHAR(50),
    _VALUE2 INT,
    _CODE3 NVARCHAR(50),
    _VALUE3 INT,
)

;WITH
    CMT
    AS
    (
        SELECT *
        FROM #tblResuorce
    )
    INSERT INTO #tblResult
SELECT *
FROM CMT
