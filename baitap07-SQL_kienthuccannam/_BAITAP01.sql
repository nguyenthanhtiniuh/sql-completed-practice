--CHO BANG DU LIEU CO MOT SO COT THONG TIN KHAI BAO KIEU DU LIEU VARCHAR(64).
--HAY CHINH CAC COT NAY THANH KIEU NVARCHAR(128)
use tbl 
go
SELECT * from tblABC

CREATE TABLE #TBLTEST2ND(
    _NAME VARCHAR(64),
    _ID VARCHAR(64))
    SELECT * FROM #TBLTEST2ND

ALTER TABLE TBLTEST2ND
ALTER COLUMN _NAME NVARCHAR(128)

ALTER TABLE TBLTEST2ND
ALTER COLUMN _ID NVARCHAR(128)

SELECT * FROM TBLTEST2ND