-- 5.Thống kê doanh số bán hàng của từng nhân viên kinh doanh trong tháng 9/2010 

USE KinhDoanh
GO

SELECT *
FROM HoaDon
WHERE Ngay BETWEEN '2010-09-01 00:00:00.000' AND '2010-09-30 00:00:00.000'

-- và tổng doanh số của phòng kinh doanh là bao nhiêu. ( 1.5% trên tổng số tiền kí hoá đơn của từng nhân viên) .
SELECT SUM(TriGia) AS tongdoanhsocuaphongkinhdoanh_thang09nam2010
FROM HoaDon
WHERE Ngay BETWEEN '2010-09-01 00:00:00.000' AND '2010-09-30 00:00:00.000'
GROUP BY MONTH(Ngay)