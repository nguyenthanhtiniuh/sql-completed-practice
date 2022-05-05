--TAO COT CLOSE, OPEN CHO BANG [#tablResult] tu table [#tblResource] theo cong thuc
--Close=Open+Input-Output
--Open[Id]=Close[Id-1]

IF OBJECT_ID('Tempdb..#tblResourceA') IS NOT NULL DROP TABLE #tblResourceA
CREATE TABLE #tblResourceA(
Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
Code nvarchar(50),
_OPEN INT
)
INSERT INTO #tblResourceA(Code,_OPEN)
SELECT 
'A',1
UNION ALL 
SELECT
'C',3
SELECT * FROM #tblResourceA

IF OBJECT_ID('Tempdb..#tblResourceB') IS NOT NULL DROP TABLE #tblResourceB
CREATE TABLE #tblResourceB(
Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
Code nvarchar(50),
INPUT INT,
OUTPUT INT)
INSERT INTO #tblResourceB(Code,INPUT,OUTPUT)
VALUES
('A',1,0),
('A',3,2),
('A',1,3),
('B',1,1),
('B',2,1),
('C',1,4),
('C',2,2)
SELECT * FROM #tblResourceB

IF OBJECT_ID('Tempdb..#tblResult') IS NOT NULL DROP TABLE #tblResult
CREATE TABLE #tblResult(
_ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
_CODE nvarchar(50),
_OPEN INT,
_INPUT INT,
_OUTPUT INT,
_CLOSE INT
)

;WITH CMT AS (
SELECT * FROM #tblResourceB
)
INSERT INTO #tblResult(_OPEN,_CODE,_INPUT,_OUTPUT)
SELECT _OPEN,CMT.Code,[INPUT],[OUTPUT] FROM CMT 
FULL OUTER JOIN #tblResourceA ON CMT.Code=#tblResourceA.Code


UPDATE #tblResult
SET _CLOSE=_OPEN+_INPUT-_OUTPUT

UPDATE #tblResult
SET _OPEN=_CLOSE-1

SELECT * FROM #tblResult