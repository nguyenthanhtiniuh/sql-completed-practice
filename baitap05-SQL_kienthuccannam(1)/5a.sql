--NORMAL WAY
-- 5.Danh mục các mặt hàng bán B20Item(Code,Name)
--DONE--5a. Tinh so luong, doanh so ban hang cua tung nhan vien trong tung thang cua nam 2014
USE B30
GO

SELECT EMPCODE, Month(DocDate) AS THANG, SUM(QUAN) AS SUMQUAN, SUM(AMOUNT) AS SUMAMOUNT
FROM B30AccDocSales
GROUP BY Month(DocDate),EMPCODE
ORDER BY Month(DocDate)
