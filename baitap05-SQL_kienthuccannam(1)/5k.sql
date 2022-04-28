--5k.Tinh (AMOUNT) doanh so ban hang cua tung (ITEM) mat hang trong tunng (thang) trong nam 2014
USE B30 
GO
--SELECT ItemCode,Amount,DocDate
--FROM B30AccDocSales
--WHERE YEAR(DocDate)=2014
--GO


;WITH TBL
AS(
SELECT ItemCode,Amount,DocDate,
CASE MONTH(DocDate)
		WHEN 1 THEN (Amount)
		ELSE 0 
		END AS Amount1,
		CASE MONTH(DocDate)
		WHEN 2 THEN (Amount)
		ELSE 0 
		END AS Amount2,
		CASE MONTH(DocDate)
		WHEN 3 THEN (Amount)
		ELSE 0 
		END AS Amount3,
		CASE MONTH(DocDate)
		WHEN 4 THEN (Amount)
		ELSE 0 
		END AS Amount4,
		CASE MONTH(DocDate)
		WHEN 5 THEN (Amount)
		ELSE 0 
		END AS Amount5,
		CASE MONTH(DocDate)
		WHEN 6 THEN (Amount)
		ELSE 0 
		END AS Amount6,
		CASE MONTH(DocDate)
		WHEN 7 THEN (Amount)
		ELSE 0 
		END AS Amount7,
		CASE MONTH(DocDate)
		WHEN 8 THEN (Amount)
		ELSE 0 
		END AS Amount8,
		CASE MONTH(DocDate)
		WHEN 9 THEN (Amount)
		ELSE 0 
		END AS Amount9,
		CASE MONTH(DocDate)
		WHEN 10 THEN (Amount)
		ELSE 0 
		END AS Amount10,
		CASE MONTH(DocDate)
		WHEN 11 THEN (Amount)
		ELSE 0 
		END AS Amount11,
		CASE MONTH(DocDate)
		WHEN 12 THEN (Amount)
		ELSE 0 
		END AS Amount12
FROM B30AccDocSales
WHERE YEAR(DocDate)=2014
)
SELECT ItemCode,
SUM(Amount1) AS SUMAMOUNT1,
SUM(Amount2) AS SUMAMOUNT2,
SUM(Amount3) AS SUMAMOUNT3,
SUM(Amount4) AS SUMAMOUNT4,
SUM(Amount5) AS SUMAMOUNT5,
SUM(Amount6) AS SUMAMOUNT6,
SUM(Amount7) AS SUMAMOUNT7,
SUM(Amount8) AS SUMAMOUNT8,
SUM(Amount9) AS SUMAMOUNT9,
SUM(Amount10) AS SUMAMOUNT10,
SUM(Amount11) AS SUMAMOUNT11,
SUM(Amount12) AS SUMAMOUNT12
FROM TBL
GROUP BY ItemCode
