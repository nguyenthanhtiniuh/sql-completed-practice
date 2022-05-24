/****** Script for SelectTopNRows command from SSMS  ******/
--SET DATEFORMAT 'DD-MM-YYYY'
USE KinhDoanh
GO
DROP TABLE IF EXISTS #tblMaMatHangThang9
CREATE TABLE #tblMaMatHangThang9
(
    MaMatHang nvarchar(4)
)

;WITH
    tbl
    AS
    (
        SELECT HoaDonChiTiet.Sohd
      , [MaMatHang]
      , [SoLuong]
	  , HoaDon.Ngay
	  , FORMAT (HoaDon.Ngay, 'dd/MM/yyyy ') AS DATE
        FROM [KinhDoanh].[dbo].[HoaDonChiTiet]
            JOIN HoaDon
            ON HoaDonChiTiet.Sohd=HoaDon.Sohd
        WHERE Ngay BETWEEN '2010-09-01 00:00:00.000' AND '2010-09-30 00:00:00.000'
        --WHERE (cast (HoaDon.Ngay as date)) between '20100901' and '20100931' 
    )
INSERT INTO #tblMaMatHangThang9
    (MaMatHang)
SELECT MaMatHang
FROM tbl

SELECT *
FROM #tblMaMatHangThang9

SELECT #tblMaMatHangThang9.MaMatHang AS MATHANGBANVAOTHANG9, TenMatHang, Gia
FROM #tblMaMatHangThang9
    JOIN MatHang
    ON #tblMaMatHangThang9.MaMatHang=MatHang.MaMathang

    SELECT MaMathang AS _MATHANGCONGUOIMUATHANG9
    FROM #tblMaMatHangThang9
INTERSECT
    SELECT MaMathang
    FROM MatHang

--MAT HANG KHONG CO NGUOI MUA VAO THANG 9
    SELECT MaMathang AS MATHANGKOCONGUOIMUATHANG9
    FROM MatHang
EXCEPT
    SELECT MaMathang
    FROM #tblMaMatHangThang9