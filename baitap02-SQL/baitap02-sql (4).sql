--TAO TABLE [#TBLRESULT] TU [#TBLRESOURCE]
USE TBL

CREATE TABLE #tblResource(
Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
Code nvarchar(50),
Value int
)
INSERT INTO #tblResource(Code,Value)
VALUES 
('A',100),
('B',200),
('C',150),
('A',300),
('B',240),
('A',120),
('C',130)
SELECT * FROM #tblResource

CREATE TABLE #tblResult(
_Id int ,
_Order int NULL,
_Code nvarchar(50),
_Value int
)

INSERT INTO #tblResulT(_Code,_Value)
SELECT Code,Value FROM #tblResource

SELECT * FROM #tblResult
ORDER BY _Code,_Value

TRUNCATE TABLE #tblResult

--INSERT INTO #tblResult(_Id)
--VALUES (1)

--update  #tblResult
--set _Id =1 
--where _Code like 'A'

--update  #tblResult
--set _Id =2 
--where _Code like 'B'

--update  #tblResult
--set _Id =3 
--where _Code like 'C'

--HOW TO CHANGE VALUES ORDER COLUMN LIKE THE REQUIREMENT OF TEST?