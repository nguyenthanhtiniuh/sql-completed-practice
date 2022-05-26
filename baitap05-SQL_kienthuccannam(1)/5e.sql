--5E.TIM 3 NHAN VIEN BAN HANG CO TONG DOANH SO BAN NHIEU NHAT TRONG NAM 2014 
USE B30
DROP TABLE IF EXISTS #tblTop3NhanVienTongDoanhSoBanHang2014
SELECT top 3
    -- [ItemCode],
    -- [CustomerCode],
    [Employeecode],
    -- [DeptCode],
    -- [Quantity],
    -- [Amount],
    -- [DocDate],
    SUM(Amount)  AS SumAmount
INTO #tblTop3NhanVienTongDoanhSoBanHang2014
FROM B30AccDocSales
WHERE YEAR(DocDate)= 2014
GROUP By Employeecode
ORDER BY SumAmount DESC

SELECT *
FROM #tblTop3NhanVienTongDoanhSoBanHang2014