--BAI TAP 2: UPDATE BIEN
--VIET SQL TAO BANG TAM CO FIELD[CODE] VA [VALUE] TINH TOAN THEM [ACCUMULATIVE VALUE] 
--LAY DU LIEU TU [SO] DU LIEU NHU SAU
DROP TABLE IF EXISTS #tblResource
CREATE TABLE #tblResource
(
    Code NVARCHAR(25),
    ValuetblResource INT
)
INSERT INTO #tblResource
VALUES
    ('A', 1),
    ('B', 3),
    ('C', 2),
    ('D', 5),
    ('E', 7)

SELECT *
FROM #tblResource

DROP table if EXISTS #tblResult
SELECT *
into #tblREsult
FROM #tblResource
--SELECT * FROM CMT
SELECT Code, ValuetblResource, sum(ValuetblResource) OVER (ORDER BY Code ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
FROM #tblResource
ORDER BY Code