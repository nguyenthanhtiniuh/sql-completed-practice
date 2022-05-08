--2.3. TIM MAT HANG NAO BAN CHAY NHAT TRONG 
--KHOANG THOI GIAN TU '01/01/2013' DEN '31/01/2013'
--SELECT MAX(SO_LUONG) FROM CMT
SELECT *
into #tblBanHang1
FROM BanHang
WHERE NGAY_CT BETWEEN '20130101' and '20130131'

-- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'
SELECT *
FROM [#tblBanHang1]
WHERE TIEN = (select max(TIEN)
from #tblBanHang1)

GO