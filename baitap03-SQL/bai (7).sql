-- 7.Liệt kê ra các nhân viên chờ nghỉ hưu ( nam >=55 và nữ >=50) .
-- UPDATE NhanVien 
-- set BirthDay = '1967-01-01'
-- where GioiTinh = 'nam'
USE KinhDoanh
GO

UPDATE NhanVien 
SET BirthDay = '1972-01-01'
WHERE GioiTinh = 'nu'

IF OBJECT_ID('Tempdb..#tblNhanvienNu') IS NOT NULL DROP TABLE #tblNhanVienNu
SELECT *
INTO #tblNhanVienNu
FROM NhanVien
WHERE GioiTinh LIKE 'nu'

DECLARE @_Namhientai INT = YEAR(GETDATE());

SELECT *
FROM #tblNhanVienNu
WHERE @_Namhientai-YEAR(BirthDay)>=50

IF OBJECT_ID('Tempdb..#tblNhanvienNam') IS NOT NULL DROP TABLE #tblNhanVienNam
SELECT *
INTO #tblNhanVienNam
FROM NhanVien
WHERE GioiTinh LIKE 'nam'

SELECT *
from #tblNhanVienNam
WHERE @_Namhientai-YEAR(BirthDay)>=55

-- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'
IF OBJECT_ID('Tempdb..#tblDefault') IS NOT NULL DROP TABLE #tblDefault
SELECT *
INTO #tblDefault
FROM NhanVien

ALTER TABLE [#tblDefault]
ADD CONSTRAINT NGAY_DF DEFAULT GETDATE() FOR BirthDay
------------------------
SELECT [Manhanvien],
    [TenNhanVien],
    [GioiTinh],
    [BirthDay],
    @_Namhientai-YEAR(BirthDay) as SoTuoi,
    "DuocNghiHuu" =   
        CASE   
            WHEN GioiTinh = 'nu'  THEN          
                                    CASE 
                                        WHEN @_Namhientai-YEAR(BirthDay)>=50 
                                        THEN 'nu duocnghihuu' ELSE 'chua duocnghihuu'END 
            WHEN GioiTinh ='nam'   THEN 
                                    CASE 
                                        WHEN @_Namhientai-YEAR(BirthDay)>=55 
                                        THEN 'nam duocnghihuu' ELSE 'chua duocnghihuu'END
        ELSE 'null'
END
FROM NhanVien