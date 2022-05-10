-- 3.Liệt kê ra các hoá đơn do NV kinh doanh Nguyễn Văn A bán vào tháng 9/2010. (Ngay_Ct, So_Ct, Ma_CbNv, Ten_CbNv, Tong_Tien)
-- SELECT *
-- FROM NhanVien
-- WHERE TenNhanVien = 'Nguyen Van a' or Manhanvien = 'nv1'

-- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'
SELECT NhanVien.Manhanvien, Sohd, [Ngay],
    [Makhachhang],
    [TriGia]
FROM NhanVien
    JOIN HoaDon
    ON NhanVien.Manhanvien = HoaDon.Manhanvien
WHERE TenNhanVien
= 'Nguyen Van A'