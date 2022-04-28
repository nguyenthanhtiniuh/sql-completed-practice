--4-10
use TBL

--CREATE TABLE #tblResourceA(
--_Class nvarchar(50),
--_Code nvarchar(50),
--_Value int)

--INSERT INTO #tblResourceA
--VALUES
--('F1','A',100),
--('F1','A',200),
--('F1','B',100),
--('F2','C',220),
--('F3','A',150),
--('F2','C',300),
--('F3','D',120)

select * from #tblResourceA

--drop table #tblResourceA

--CREATE TABLE #tblResourceB(
--_Class nvarchar(50),
--_Sum int
--)
--INSERT INTO #tblResourceB
--VALUES
--('F1',500),
--('F2',400),
--('F3',600)

select * from #tblResourceB

GO
;WITH CMT AS(
SELECT #tblResourceA._Class AS CLASS,_Code,SUM(_Value) AS SUMVALUE FROM #tblResourceA
JOIN #tblResourceB
ON #tblResourceA._Class=#tblResourceB._Class
GROUP BY #tblResourceA._Class,_Code
)SELECT *,SUMVALUE AS DISTRIBUTE FROM CMT
ORDER BY CLASS