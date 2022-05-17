--2.3. TIM MAT HANG NAO BAN CHAY NHAT TRONG 
--KHOANG THOI GIAN TU '01/01/2013' DEN '31/01/2013'
--SELECT MAX(SO_LUONG) FROM CMT
USE TBL
GO

SELECT *
INTO #tblBanHang1
FROM BanHang
WHERE NGAY_CT BETWEEN '20130101' AND '20130131'

-- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'
SELECT *
FROM [#tblBanHang1]
WHERE tien = (SELECT max(tien)
FROM #tblBanHang1)

GO