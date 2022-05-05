4.Cho một chuỗi bất kỳ có dạng các tài khoản kế toán nối nhau bằng dấy phẩy như sau 
“111,112,113,131”. Hãy tạo chuỗi có dạng như sau 
“DebitAccount LIKE ‘111%’ OR DebitAccount LIKE ‘112%’ 
OR DebitAccount LIKE ‘113%’ OR DebitAccount LIKE ‘131%’”

go 
use TEST
go
DECLARE @STR NVARCHAR(100) = '111,112,113,131,115'
SELECT CONCAT(',',@STR)

DECLARE @RESULT NVARCHAR(500) = REPLACE(CONCAT(',',@STR,'%'),',','%DebitAccount LIKE ')
--SELECT @RESULT

SELECT Value FROM STRING_SPLIT(@RESULT, '%') 



--declare @strrepace nvarchar(100) = REPLACE(@STR,',','')

--declare @countnumbersInStr int = LEN(@strrepace)/3

--while (0<@countnumbersInStr)
--Begin

--declare @numberInStr nvarchar(100) = SUBSTRING(@strrepace)
--select @numberInStr

--declare @result nvarchar(100) = 'DebitAccount LIKE' +'%';
--print @result
--SET @countnumbersInStr  = @countnumbersInStr  - 1
--end

--DECLARE @strSplited nvarchar(100) = null 
--SELECT value from string_split(@STR,',')
--SELECT Value FROM STRING_SPLIT(@STR, ',');

