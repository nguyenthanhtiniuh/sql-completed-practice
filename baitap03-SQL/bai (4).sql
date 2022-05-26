-- 4.Liệt kê ra 3 mặt hàng bán chạy nhất trong tháng 9/2010. ( nhiều người mua nhất; Ma_Vt, Ten_Vt, Sl_Ban, Tong_Tien).

-- SELECT *
-- INTO #tblHoadonthang9

USE KinhDoanh
GO

DROP TABLE if EXISTS #tblTopHoaDonThang9nam2010

SELECT *
INTO #tblTopHoaDonThang9nam2010
FROM(
SELECT
        TOP 3
        HoaDonChiTiet.SoLuong,
        HoaDonChiTiet.Sohd, MaMatHang, Ngay
    FROM HoaDonChiTiet
        JOIN HoaDon
        ON HoaDonChiTiet.Sohd=HoaDon.Sohd
    WHERE HoaDon.Ngay BETWEEN '2010-09-01 00:00:00.000'
AND '2010-09-30 00:00:00.000'
    ORDER BY HoaDonChiTiet.SoLuong DESC
) AS tbl

-- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'
SELECT *
FROM [#tblTopHoaDonThang9nam2010]
-- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'
SELECT #tblTopHoaDonThang9nam2010.MaMatHang, TenMatHang, DonViTinh, Gia, NuocSanXuat
FROM [#tblTopHoaDonThang9nam2010]
    JOIN MatHang
    ON #tblTopHoaDonThang9nam2010.MaMatHang=MatHang.MaMathang