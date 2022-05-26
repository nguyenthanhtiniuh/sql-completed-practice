-- 8.Tạo một TABLE tạm #tblCt bằng câu lệnh CREATE gồm các field : Ma_Ct, Ngay_ct, So_Ct, Ma_Vt, So_Luong, Don_Gia, Thanh_tien, Ma_Kho, Ma_Dt, Ma_Nx, Ma_Tte kiểu dữ liệu giống như chương trình BRAVO.
USE Bravo8Training
GO

DROP TABLE IF EXISTS #tblCt
CREATE TABLE #tblCt
(
    Ma_Ct char(2),
    Ngay_Ct DATE,
    So_Ct varchar(32),
    Ma_Vt varchar(24),
    So_Luong NUMERIC(18,2),
    Don_Gia NUMERIC(18,5),
    Thanh_tien NUMERIC(18,2),
    Ma_Kho varchar(24),
    Ma_Dt varchar(24),
    Ma_Nx varchar(24),
    Ma_Tte varchar(3)
)
-- 9.INSERT dữ liệu của các chứng từ hoá đơn, chứng từ nhập mua và chi phí vào bản tạm #tblCt.
-- INSERT * INTO #tblCt(Ma_Ct,Ngay_Ct,So_Ct)
INSERT  INTO #tblCt
    (Ma_Ct,Ngay_Ct,So_Ct)
SELECT Ma_Ct
, CreatedAt AS Ngay_Ct
, [Id] AS So_Ct
FROM B00DmCt
WHERE Ma_Ct IN ('HD','NM','PC','PT','BN','BC')
-- Ma_Ct = 'HD'
--     OR Ma_Ct ='NM'
--     OR Ma_Ct = 'PC'
--     OR Ma_Ct ='PT'
--     OR Ma_Ct = 'BN'
--     OR Ma_Ct = 'BC'

-- 10.Dùng câu truy vấn SQL thêm vào bảng #tblCt các fileed Ten_Vt, Ten_Kho, Ten_Dt.
ALTER TABLE #tblCt
ADD  Ten_Vt NVARCHAR(192),
Ten_Kho NVARCHAR(192),
Ten_Dt NVARCHAR(192)

-- SELECT *
-- FROM #tblCt

-- 11.Update dữ liệu cho các field Ten_Vt, Ten_Kho, Ten_Dt của bảng #tblCt.

-- 12.Copy dữ liệu của #tblCt qua #CtHdCopy rồi xoá hết dữ liệu của #tblCt.
DROP TABLE IF EXISTS #CtHdCopy

SELECT *
INTO #CtHdCopy
FROM(
SELECT *
    FROM #tblCt ) as tbl


SELECT *
FROM #CtHdCopy

TRUNCATE TABLE #tblCt


-- 13.Thêm vào bảng #tblCt các filed Tk_No, Tk_Co.
ALTER TABLE #tblCt 
ADD 
Tk_No varchar(24) null,
Tk_Co varchar(24) null

INSERT  INTO #tblCt
    (Ma_Ct,Ngay_Ct,So_Ct,Tk_No,Tk_Co)
SELECT Ma_Ct
, CreatedAt AS Ngay_Ct
, [Id] AS So_Ct
, Tk_No_Ct
, Tk_Co_Ct
FROM B00DmCt
WHERE Ma_Ct IN ('HD','NM','PC','PT','BN','BC')

SELECT *
FROM #CtHdCopy

SELECT *
FROM #tblCt

