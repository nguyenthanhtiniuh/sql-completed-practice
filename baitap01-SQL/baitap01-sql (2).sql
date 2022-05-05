--2. TRUY VAN CAC CAU SAU:
-- 2.1. TIM CAC KHACH HANG CO SO LUONG MUA HANG
--NHIEU NHAT TRONG KHOANG THOI GIAN TU '01/01/2013' DEN '31/01/2013'
use TBL
;WITH CMT AS(
    SELECT * 
    FROM BANHANG
    WHERE NGAY_CT BETWEEN '2013-01-01' AND '2013-01-31'
)
SELECT *,'' AS KHACH_MUAHANGNHIEUNHAT 
FROM CMT
WHERE SO_LUONG=(SELECT MAX(SO_LUONG) FROM CMT)

--2.2. TIM 10 KHACH HANG CO DOANH SO BAN NHIEU NHAT TRONG 
--KHOANG THOI GIAN TU '01/01/2013' DEN '31/01/2013'
;WITH CMT AS(
SELECT * FROM BANHANG
WHERE NGAY_CT BETWEEN '2013-01-01' AND '2013-01-31'
)SELECT TOP 10 *,''AS _10KHACH_MUAHANGNHIEUNHAT FROM CMT
ORDER BY SO_LUONG DESC

--2.3. TIM MAT HANG NAO BAN CHAY NHAT TRONG 
--KHOANG THOI GIAN TU '01/01/2013' DEN '31/01/2013'
;WITH CMT AS(
SELECT * FROM BANHANG
WHERE NGAY_CT BETWEEN '2013-01-01' AND '2013-01-31'
)
--SELECT MAX(SO_LUONG) FROM CMT
SELECT CMT.MA_VT,TEN_VL,NGAY_CT,SO_CT,MA_DT,SO_LUONG,TIEN,''AS _MATHANGBANCHAYNHAT
 FROM CMT
JOIN DMVT
ON CMT.MA_VT=DMVT.MA_VT
WHERE SO_LUONG=(SELECT MAX(SO_LUONG)FROM CMT)