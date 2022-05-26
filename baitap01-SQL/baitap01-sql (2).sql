--2. TRUY VAN CAC CAU SAU:
-- 2.1. TIM CAC KHACH HANG CO SO LUONG MUA HANG
--NHIEU NHAT TRONG KHOANG THOI GIAN TU '01/01/2013' DEN '31/01/2013'
USE TBL
GO

SELECT *
INTO #tblBanHang
FROM BanHang
WHERE Ngay_ct BETWEEN '2013-01-01' AND '2013-01-31'

-- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'
SELECT *
FROM [#tblBanHang]
WHERE #tblBanHang.so_luong=(SELECT MAX(#tblBanHang.so_luong)
FROM #tblBanHang)

--2.2. TIM 10 KHACH HANG CO DOANH SO BAN NHIEU NHAT TRONG 
--KHOANG THOI GIAN TU '01/01/2013' DEN '31/01/2013'
SELECT TOP 10
    *, ''AS _10khach_muahangnhieunhat
FROM
    BanHang
WHERE ngay_ct BETWEEN '2013-01-01' AND '2013-01-31'
ORDER BY so_luong DESC

--2.3. TIM MAT HANG NAO BAN CHAY NHAT TRONG 
--KHOANG THOI GIAN TU '01/01/2013' DEN '31/01/2013'
--SELECT MAX(SO_LUONG) FROM CMT
SELECT *
INTO #tblBanHang1
FROM BanHang
WHERE ngay_ct BETWEEN '20130101' and '20130131'

-- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'
SELECT *
FROM [#tblBanHang1]
WHERE tien = (select max(tien)
FROM #tblBanHang1)

GO