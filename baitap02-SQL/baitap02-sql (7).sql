USE TBL 
GO
IF OBJECT_ID('Tempdb..#tblResource') IS NOT NULL DROP TABLE #tblResource
CREATE TABLE #tblResource
(
	Class nvarchar(50),
	Code nvarchar(50),
	Value int
)

INSERT into #tblResource
VALUES
	('F1', 'A', 100),
	('F1', 'B', 100),
	('F2', 'C', 220),
	('F3', 'A', 150),
	('F2', 'C', 300),
	('F3', 'D', 120)

SELECT [Class],
	[Code],
	[Value]
FROM #tblResource


SELECT Class,
	sum(A) AS CODEA,
	sum(B) AS CODEB,
	sum(C) AS CODEC,
	sum(D) AS CODED
FROM(
	SELECT
		[Class],
		[Code],
		[Value]
	FROM #tblResource
 )AS SOURCETABLE
 --FOR A
 PIVOT
 ( 
 sum(Value) for Code IN (A,B,C,D)
 )AS PIVOTTABLE
group by Class
--Truong hop co nhieu Class or Code, viet sql dong khi co F4,F5,Code E,Code F

SELECT [Class],
[A],
[B],
[C],
[D]
FROM #tblResource
PIVOT
(
	SUM(Value) FOR Code IN (A,B,C,D)
)AS PivotTable