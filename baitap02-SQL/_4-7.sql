USE TBL 
GO

 CREATE TABLE #tblResuorce(
	_Class nvarchar(50),
	_Code nvarchar(50),
	_Value int
 )

 insert into #tblResuorce
 VALUES ('F1','A',100),
 ('F1','B',100),
 ('F2','C',220),
 ('F3','A',150),
 ('F2','C',300),
 ('F3','D',120)

 SELECT * FROM #tblResuorce
 --DROP TABLE #tblResuorce

 --;WITH CMT AS(
	--SELECT 
	-- _Class,_Code
	--FROM #tblResuorce
 --)
 SELECT _Class,
sum(A) AS CODEA,
sum(B) AS CODEB,
sum(C) AS CODEC,
sum(D) AS CODED
 FROM(
	SELECT 
	_Class,
	_Value,
	_Code	
	FROM #tblResuorce
 )AS SOURCETABLE
 --FOR A
 PIVOT
 ( 
 --sum(_Value) for _Code IN ([A],[B],[C],[D])
 sum(_Value) for _Code IN (A,B,C,D)
 )AS PIVOTTABLE 
group by _Class
go