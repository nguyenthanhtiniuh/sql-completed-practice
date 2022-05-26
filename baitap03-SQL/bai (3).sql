-- 3.Liệt kê ra các hoá đơn do NV kinh doanh Nguyễn Văn A bán vào tháng 9/2010. (Ngay_Ct, So_Ct, Ma_CbNv, Ten_CbNv, Tong_Tien)
-- SELECT *
-- FROM NhanVien
-- WHERE TenNhanVien = 'Nguyen Van a' or Manhanvien = 'nv1'
USE KinhDoanh
GO

SELECT *
FROM NhanVien

SELECT [Sohd],
    [Ngay],
    [Makhachhang],
    [HoaDon].[Manhanvien], TenNhanVien,
    [TriGia]
FROM HoaDon
    JOIN NhanVien
    ON HoaDon.Manhanvien=NhanVien.Manhanvien
WHERE year(Ngay) = 2010 AND MONTH(Ngay) = 9 AND NhanVien.TenNhanVien='Nguyen Van A'