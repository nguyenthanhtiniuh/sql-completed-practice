-- 5.Tạo
-- ra bảng dữ liệu chứa các mã tài khoản kế toán từ một chuỗi các mã tài khoản kế toán
--cách nhau bằng dấu phẩy “,”.

USE B30
GO
--CREATE TABLE KeToan(
--	MaTaiKhoanKeToan nvarchar(100)
--)
--go
--DECLARE @STR VARCHAR(MAX) = '111,112,113,131,115'
----SELECT CONCAT(',',@STR)
--DECLARE @RESULT VARCHAR(MAX) = REPLACE(CONCAT(',',@STR,'%'),',','%DebitAccount LIKE')
--SELECT @RESULT
--SELECT Value FROM STRING_SPLIT(@RESULT, '%') 

--UPDATE KeToan
--set MaTaiKhoanKeToan = (select Value FROM STRING_SPLIT(@RESULT, '%') )
--go
--select MaTaiKhoanKeToan from KeToan

DECLARE @STRING_INPUT VARCHAR(MAX) ='111,112,131'
DECLARE @RESULT VARCHAR(MAX) = REPLACE( CONCAT(',',@STRING_INPUT,'%'),',','%TK LIKE')

SET @RESULT = REPLACE( SUBSTRING(@RESULT,2,LEN(@RESULT)),'%','%,')
SELECT VALUE
FROM string_split(@RESULT,',')