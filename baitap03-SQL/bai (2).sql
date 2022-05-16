USE KinhDoanh
go

-- 2.Liệt kê ra các hoá đơn trong tháng 9/2010 (Ngay_Ct, So_Ct, Dien_Giai0, Doanh thu, tiền thuế, Tổng tiền).
-- SELECT *
-- from HoaDon

-- update HoaDon
-- set Ngay = '2010-09-01'
-- WHERE Manhanvien like 'nv03'
--DONE
select [HoaDon].Sohd,
    [Ngay],
    [Makhachhang],
    [Manhanvien],
    [TriGia],
    TriGia*0.1 as TienThue,
    MaMatHang,
    SoLuong
from Hoadon
    JOIN HoaDonChiTiet
    ON HoaDon.Sohd=HoaDonChiTiet.Sohd
WHERE Ngay
between '2010-09-01 00:00:00.000' and '2010-09-30 00:00:00.000'
