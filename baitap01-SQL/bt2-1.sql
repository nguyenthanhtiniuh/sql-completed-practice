-- 2.1. TIM CAC KHACH HANG CO SO LUONG MUA HANG
--NHIEU NHAT TRONG KHOANG THOI GIAN TU '01/01/2013' DEN '31/01/2013'
USE TBL
GO
SELECT *
INTO #tblBanHang
FROM BanHang
WHERE NGAY_CT BETWEEN '2013-01-01' AND '2013-01-31'



-- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'
SELECT *
FROM [#tblBanHang]
WHERE #tblBanHang.So_Luong=(SELECT MAX(#tblBanHang.So_Luong)
FROM #tblBanHang)