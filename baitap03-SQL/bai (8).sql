-- 8.Tạo một TABLE tạm #tblCt bằng câu lệnh CREATE gồm các field : Ma_Ct, Ngay_ct, So_Ct, Ma_Vt, So_Luong, Don_Gia, Thanh_tien, Ma_Kho, Ma_Dt, Ma_Nx, Ma_Tte kiểu dữ liệu giống như chương trình BRAVO.
IF OBJECT_ID('tempb..#tblCt') IS NOT NULL DROP TABLE #tblCt
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

-- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'
SELECT *
FROM [#tblCt]