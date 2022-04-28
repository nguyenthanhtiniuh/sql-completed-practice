--NORMAL WAY
-- 5.Danh mục các mặt hàng bán B20Item(Code,Name)
--DONE--5a. Tinh so luong, doanh so ban hang cua tung nhan vien trong tung thang cua nam 2014
USE B30
GO

;WITH TBL(EMPCODE,THANG,QUAN,AMOUNT)
AS(
SELECT EmployeeCode,MONTH(DocDate) AS THANG,
	CASE MONTH(DocDate)
		WHEN 1 THEN (Quantity)
			WHEN 2 THEN Quantity
			WHEN 3 THEN Quantity
			WHEN 4 THEN Quantity
			WHEN 5 THEN Quantity
			WHEN 6 THEN Quantity
			WHEN 7 THEN Quantity
			WHEN 8 THEN Quantity
			WHEN 9 THEN Quantity
			WHEN 10 THEN Quantity
				WHEN 11 THEN Quantity
					WHEN 12 THEN Quantity
		ELSE NULL 
		END AS Quantity,

		CASE MONTH(DocDate)
		WHEN 1 THEN (Amount)
			WHEN 2 THEN Amount
			WHEN 3 THEN Amount
			WHEN 4 THEN Amount
			WHEN 5 THEN Amount
			WHEN 6 THEN Amount
			WHEN 7 THEN Amount
			WHEN 8 THEN Amount
			WHEN 9 THEN Amount
			WHEN 10 THEN Amount
				WHEN 11 THEN Amount
					WHEN 12 THEN Amount
		ELSE NULL 
		END AS Amount
		FROM B30AccDocSales
)
SELECT EMPCODE,THANG,SUM(QUAN) AS SUMQUAN,SUM(AMOUNT) AS SUMAMOUNT
FROM TBL
GROUP BY THANG,EMPCODE
ORDER BY THANG

