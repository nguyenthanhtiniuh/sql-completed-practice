--TAO CHUOI "A,B,C" TU BANG DU LIEU SAU:
--GO
--JOIN ALL THE STRING FROM COLUMNS IN A TABLE
USE TBL 
GO
DROP TABLE IF EXISTS #tblABC
SELECT * INTO #tblABC FROM tblABC

SELECT * FROM #tblABC

DECLARE @DEL INT =1,@STRING NVARCHAR(50) = ''
WHILE (SELECT TOP 1 1 FROM #tblABC) = 1
BEGIN
  SELECT TOP 1
    @STRING = @STRING +','+ CODE, 
    @DEL =ID
  FROM #tblABC
  ORDER BY ID
  DELETE #tblABC WHERE ID=@DEL
END
SELECT @STRING

SELECT SUBSTRING(@STRING,2,LEN(@STRING)) AS CACH1

--CACH 2
SELECT STRING_AGG(Code,',') AS CACH2
FROM tblABC