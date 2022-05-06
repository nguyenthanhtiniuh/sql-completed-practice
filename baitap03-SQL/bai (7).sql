-- 7.Liệt kê ra các nhân viên chờ nghỉ hưu ( nam >=55 và nữ >=50) .
ALTER TABLE NhanVien
ADD  GioiTinh NVARCHAR(5),BirthDay smallDatetime

select *
from NhanVien

UPDATE NhanVien 
set GioiTinh = 'nu' WHERE TenNhanVien like '%thi%'
UPDATE NhanVien 
set GioiTinh = 'nam' WHERE TenNhanVien not like '%thi%'

UPDATE NhanVien 
set BirthDay = '1980-01-01'
where GioiTinh = 'nam'

UPDATE NhanVien 
set BirthDay = '1970-01-01'
where GioiTinh = 'nu'

DECLARE @_Namhientai int = YEAR(GETDATE())
SELECT *, '' as Nhanvienchonghihuu
from NhanVien
WHERE (@_Namhientai- YEAR(BirthDay)) >=50

SELECT (@_Namhientai
- YEAR
(BirthDay))
FROM NhanVien