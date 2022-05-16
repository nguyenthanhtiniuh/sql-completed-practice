-- 7.Nhân viên vào làm 13/01/1983, nghỉ việc đến thời hiện tại. 
-- Hãy tính thâm niên nhân viên bao nhiêu ngày, bao nhiêu tháng, bao nhiêu năm.

DECLARE @_NgayHienTai date = GETDATE()

--SELECT @_NgayHienTai AS CURRENTDAY

DECLARE @_NgayVaoLam date = '01-13-1983';

DECLARE @_NgayInNgayVaoLam int = DAY(@_NgayVaoLam)

DECLARE @_ThangInNgayVaoLam int = MONTH(@_NgayVaoLam)

DECLARE @ThangInNgayVaoLam int = YEAR(@_NgayVaoLam)

DECLARE @_NamInNgayVaoLam INT = YEAR(@_NgayHienTai) - @ThangInNgayVaoLam

DECLARE @_ThangDaLam INT = @_NamInNgayVaoLam*12 + MONTH(@_NgayHienTai)-@_ThangInNgayVaoLam

DECLARE @_NgayDaLamViec INT = 6*4*@_ThangDaLam

SELECT @_NamInNgayVaoLam AS soNAMLAMVIEC, @_ThangDaLam AS soTHANGDALAMVIEC, @_NgayDaLamViec AS soNGAYDALAMVIEC

--SELECT 
--@_NgayVaoLam AS DAYINPUT,
--@_NgayInNgayVaoLam AS N'NGAY' ,
--@_ThangInNgayVaoLam AS N'THANG',
--@ThangInNgayVaoLam AS N'NAM'
