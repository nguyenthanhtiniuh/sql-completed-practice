--TAO COT CLOSE, OPEN CHO BANG [#tablResult] tu table [#tblResource] theo cong thuc
--Close=Open+Input-Output
--Open[Id]=Close[Id-1]

IF OBJECT_ID('Tempdb..#tblResourceA') IS NOT NULL DROP TABLE #tblResourceA
CREATE TABLE #tblResourceA(
Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
Code nvarchar(50),
_Open INT
)
INSERT INTO #tblResourceA(Code,_Open)
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
ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
CODE nvarchar(50),
_OPEN INT,
INPUT INT,
_OUTPUT INT,
_CLOSE INT
)