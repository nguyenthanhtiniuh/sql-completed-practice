--5E.TIM 3 NHAN VIEN BAN HANG CO TONG DOANH SO BAN NHIEU NHAT TRONG NAM 2014 
USE B30
drop TABLE if EXISTS #tblTop3NhanVienTongDoanhSoBanHang2014
SELECT top 3
    -- [ItemCode],
    -- [CustomerCode],
    [Employeecode],
    -- [DeptCode],
    -- [Quantity],
    -- [Amount],
    -- [DocDate],
    SUM(Amount)  as SumAmount
into #tblTop3NhanVienTongDoanhSoBanHang2014
FROM B30AccDocSales
WHERE YEAR(DocDate)= 2014
GROUP by Employeecode
ORDER BY SumAmount DESC

select *
from #tblTop3NhanVienTongDoanhSoBanHang2014