--TAO COT CLOSE, OPEN CHO BANG [#tablResult] tu table [#tblResource] theo cong thuc
--Close=Open+Input-Output
--Open[Id]=Close[Id-1]

CREATE TABLE #tblResource(
Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
Code nvarchar(50),
INPUT INT,
OUTPUT INT
)
USE TBL

INSERT INTO #tblResource(Code,INPUT,OUTPUT)
VALUES('A',1,0),
('A',3,2),
('A',1,3),
('B',1,1),
('B',2,1),
('C',1,4),
('C',2,2)
--DROP TABLE #tblResource
SELECT * FROM #tblResource

CREATE TABLE #tblResult(
_ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
_CODE nvarchar(50),
_OPEN INT,
_INPUT INT,
_OUTPUT INT,
_CLOSE INT
)

;WITH CMT AS (
SELECT Code,INPUT,OUTPUT FROM #tblResource
)INSERT INTO #tblResult(_CODE,_OPEN,_INPUT,_OUTPUT,_CLOSE)
SELECT Code,0,INPUT,OUTPUT,0 FROM CMT

TRUNCATE TABLE #tblResult

SELECT* FROM #tblResult

--TRUNCATE TABLE #tblResult

