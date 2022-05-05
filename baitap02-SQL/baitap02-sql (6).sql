USE TBL
GO
IF OBJECT_ID('Tempdb..#tblResourceA') IS NOT NULL DROP TABLE #tblResourceA
CREATE TABLE #tblResourceA
(
    DateRA DATE,
    CodeRA NVARCHAR(50),
    NameRA NVARCHAR(50)
)

INSERT INTO #tblResourceA
    SELECT '20130101', 'A', 'Mr.NAM'
UNION ALL
    SELECT
        '20130515', 'A', 'Mr.TUNG'
UNION ALL
    SELECT
        '20130201', 'B', 'Mrs.LAM'
UNION ALL
    SELECT
        '20130430', 'B', 'Mrs.HOA'
UNION ALL
    SELECT
        '20130414', 'C', 'Ms.HANH'
UNION ALL
    SELECT
        '20130623', 'C', 'Ms.HAN'
UNION ALL
    SELECT
        '20130830', 'C', 'Ms.HUONG'
SELECT *
FROM #tblResourceA

IF OBJECT_ID('Tempdb..#tblResourceB') IS NOT NULL DROP TABLE #tblResourceB
CREATE TABLE #tblResourceB
(
    DateRB DATE,
    CodeRB NVARCHAR(50)
)

INSERT INTO #tblResourceB
    SELECT
        '20130101', 'A'
UNION ALL
    SELECT
        '20130311', 'A'
UNION ALL
    SELECT
        '20130615', 'A'
UNION ALL
    SELECT
        '20130101', 'B'
UNION ALL
    SELECT
        '20130214', 'B'
UNION ALL
    SELECT
        '20130502', 'B'
UNION ALL
    SELECT
        '20130211', 'C'
UNION ALL
    SELECT
        '20130418', 'C'
UNION ALL
    SELECT
        '20130817', 'C'
SELECT *
FROM #tblResourceB

IF OBJECT_ID('Tempdb..#tblResult') IS NOT NULL DROP TABLE #tblResult
CREATE TABLE #tblResult
(
    DateResult DATE,
    CodeResult NVARCHAR(50),
    Nameresult NVARCHAR(50)
)

SELECT distinct FORMAT (#tblResourceB.DateRB, 'dd-MM-yyyy') as date,
    [DateRB],
    [CodeRB], NameRA
FROM #tblResourceB
    right JOIN #tblResourceA
    ON #tblResourceB.CodeRB=#tblResourceA.CodeRA
    WHERE #tblResourceA.DateRA=#tblResourceB.DateRB
ORDER by [date]

-- ;WITH
--     tbl
--     AS
    
--     (
--         SELECT distinct FORMAT (#tblResourceB.DateRB, 'dd-MM-yyyy') as date,
--             [DateRB],
--             [CodeRB], NameRA
--         FROM #tblResourceB
--             right JOIN #tblResourceA
--             ON #tblResourceB.CodeRB=#tblResourceA.CodeRA
--     )
-- SELECT *
-- FROM tbl
--     INNER JOIN #tblResourceB
--     ON tbl.[DateRB]=#tblResourceB.DateRB
-- WHERE tbl.DateRB=#tblResourceB.DateRB
-- HAVING #tblResourceA.DateRA<#tblResourceB.DateRB