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


DECLARE @_MaxSoLuongThangMot int = (SELECT MAX(SO_LUONG) FROM BANHANG WHERE NGAY_CT BETWEEN '20130101' AND '20130131')
SELECT * 
    FROM BANHANG
    WHERE NGAY_CT BETWEEN '20130101' AND '20130131' AND SO_LUONG=@_MaxSoLuongThangMot