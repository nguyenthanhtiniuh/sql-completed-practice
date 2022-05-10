-- -Sử dụng các hàm xử lý chuỗi: LEFT, RIGHT, RTRIM, SUBTRING, REPLACE, REPLICATE, STUFF, CHARINDEX, PATINDEX
-- -Sử dụng các hàm xử lý thời gian: DATE, DATEDIFF, DATAPART, YEAR, MONTH, DAY, FORMATDATETIME
-- -Sử dụng các hàm xử lý số: /, %, ROUND, ISNUMERIC
-- -Chuyển đổi số liệu: CAST, CONVERT, STR
-- -Sử dụng các cách khác nhau (nếu có) cho từng câu bài tập
-- 1.Tìm hiểu các kiểu dữ liệu trong Sql Server
use TBL

DECLARE @_StringInput nvarchar(100) = 'Nguyen Van Thanh Tin'
DECLARE @_Vitridaucachdautien int = CHARINDEX(' ',@_StringInput)

select left(@_StringInput,@_Vitridaucachdautien) as Ho

DECLARE @_VitridaucachdautienkhidaoChuoi int = CHARINDEX(' ',reverse(@_StringInput))

select REVERSE(left((select REVERSE(@_StringInput) as reversename),@_VitridaucachdautienkhidaoChuoi)) as Ten

DECLARE @_ChieudaiStringInput int = Len(@_StringInput)

DECLARE @_ChieudaiHo int = Len(left(@_StringInput,@_Vitridaucachdautien))

DECLARE @_ChieuDaiTen int = Len(REVERSE(left((select REVERSE(@_StringInput) as reversename),@_VitridaucachdautienkhidaoChuoi)))

select TRIM(SUBSTRING(@_StringInput,@_Vitridaucachdautien,(@_ChieudaiStringInput-@_ChieuDaiTen-@_ChieudaiHo))) as TenDem