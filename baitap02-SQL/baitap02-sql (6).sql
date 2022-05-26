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
VALUES
    ('20130101', 'A', 'Mr.NAM')
,
    ('20130515', 'A', 'Mr.TUNG')
,
    ('20130201', 'B', 'Mrs.LAM')
,
    ('20130430', 'B', 'Mrs.HOA')
,
    ('20130414', 'C', 'Ms.HANH')
,
    ('20130623', 'C', 'Ms.HAN')
,
    ('20130830', 'C', 'Ms.HUONG')

SELECT *
FROM #tblResourceA

IF OBJECT_ID('Tempdb..#tblResourceB') IS NOT NULL DROP TABLE #tblResourceB
CREATE TABLE #tblResourceB
(
    DateRB DATE,
    CodeRB NVARCHAR(50)
)

INSERT INTO #tblResourceB
VALUES
    ('20130101', 'A')
,
    ('20130311', 'A')
,
    ('20130615', 'A')
,
    ('20130101', 'B')
,
    ('20130214', 'B')
,
    ('20130502', 'B')
,
    ('20130211', 'C')
,
    ('20130418', 'C')
,
    ('20130817', 'C')
SELECT *
FROM #tblResourceB

IF OBJECT_ID('Tempdb..#tblResult') IS NOT NULL DROP TABLE #tblResult
CREATE TABLE #tblResult
(
    DateResult DATE,
    CodeResult NVARCHAR(50),
    Nameresult NVARCHAR(50)
)

SELECT FORMAT (#tblResourceB.DateRB, 'dd-MM-yyyy') AS DATE,
    [DateRB],
    [CodeRB], NameRA
FROM #tblResourceB
    RIGHT JOIN #tblResourceA
    ON #tblResourceB.CodeRB=#tblResourceA.CodeRA
-- WHERE #tblResourceA.DateRA=#tblResourceB.DateRB
ORDER BY [date]