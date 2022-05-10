-- 3.Liệt kê ra các hoá đơn do NV kinh doanh Nguyễn Văn A bán vào tháng 9/2010. (Ngay_Ct, So_Ct, Ma_CbNv, Ten_CbNv, Tong_Tien)
-- SELECT *
-- FROM NhanVien
-- WHERE TenNhanVien = 'Nguyen Van a' or Manhanvien = 'nv1'

select *
from NhanVien

SELECT [Sohd],
    [Ngay],
    [Makhachhang],
    [HoaDon].[Manhanvien], TenNhanVien,
    [TriGia]
from HoaDon
    JOIN NhanVien
    ON HoaDon.Manhanvien=NhanVien.Manhanvien
wHERE year(Ngay) = 2010 and MONTH(Ngay) = 9 AND NhanVien.TenNhanVien='Nguyen Van A'