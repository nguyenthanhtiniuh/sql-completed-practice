--4-10
use TBL

CREATE TABLE #tblResourceA(
_ClassA nvarchar(50),
_CodeA nvarchar(50),
_ValueA int)

INSERT INTO #tblResourceA
VALUES
('F1','A',100),
('F1','A',200),
('F1','B',100),
('F2','C',220),
('F3','A',150),
('F2','C',300),
('F3','D',120)

select * from #tblResourceA

--drop table #tblResourceA

CREATE TABLE #tblResourceB(
_ClassB nvarchar(50),
_SumB int
)
INSERT INTO #tblResourceB
VALUES
('F1',500),
('F2',400),
('F3',600)

select * from #tblResourceB

;WITH CMT AS(
SELECT #tblResourceA._ClassA AS CLASS,_CodeA,SUM(_ValueA) AS SUMVALUE 
FROM #tblResourceA
JOIN #tblResourceB
ON #tblResourceA._ClassA = #tblResourceB._ClassB
GROUP BY #tblResourceA._ClassA,_CodeA
)SELECT *,SUMVALUE AS DISTRIBUTE FROM CMT
ORDER BY CLASS