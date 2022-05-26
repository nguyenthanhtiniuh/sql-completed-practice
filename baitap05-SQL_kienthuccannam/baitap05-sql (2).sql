-- -Sử dụng các hàm xử lý chuỗi: LEFT, RIGHT, RTRIM, SUBTRING, REPLACE, REPLICATE, STUFF, CHARINDEX, PATINDEX
-- -Sử dụng các hàm xử lý thời gian: DATE, DATEDIFF, DATAPART, YEAR, MONTH, DAY, FORMATDATETIME
-- -Sử dụng các hàm xử lý số: /, %, ROUND, ISNUMERIC
-- -Chuyển đổi số liệu: CAST, CONVERT, STR
-- -Sử dụng các cách khác nhau (nếu có) cho từng câu bài tập
-- 1.Tìm hiểu các kiểu dữ liệu trong Sql Server
USE TBL

DECLARE @_StringInput nvarchar(100) = 'Nguyen Van Thanh Tin'
DECLARE @_Vitridaucachdautien int = CHARINDEX(' ',@_StringInput)

select left(@_StringInput,@_Vitridaucachdautien) as Ho

DECLARE @_VitridaucachdautienkhidaoChuoi int = CHARINDEX(' ',reverse(@_StringInput))

SELECT REVERSE(left((SELECT REVERSE(@_StringInput) AS reversename),@_VitridaucachdautienkhidaoChuoi)) AS Ten

DECLARE @_ChieudaiStringInput int = Len(@_StringInput)

DECLARE @_ChieudaiHo int = Len(left(@_StringInput,@_Vitridaucachdautien))

DECLARE @_ChieuDaiTen int = Len(REVERSE(left((SELECT REVERSE(@_StringInput) AS reversename),@_VitridaucachdautienkhidaoChuoi)))

SELECT TRIM(SUBSTRING(@_StringInput,@_Vitridaucachdautien,(@_ChieudaiStringInput-@_ChieuDaiTen-@_ChieudaiHo))) AS TenDem