--TAO TABLE TU CHUOI 'A,B,C"
USE TBL

IF OBJECT_ID('Tempdb..#tblNewAbc') IS NOT NULL DROP TABLE #tblNewAbc
CREATE TABLE #tblNewAbc
(
    Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Code NVARCHAR(50) NULL
)

DECLARE @_ChuoiInput VARCHAR(MAX)
SET @_ChuoiInput = 'A,B,C,D,E,F,G,H,I,K,L,M,N'
INSERT INTO #tblNewAbc
    (Code)
SELECT VALUE
FROM string_split(@_ChuoiInput,',')

SELECT *
FROM #tblNewAbc