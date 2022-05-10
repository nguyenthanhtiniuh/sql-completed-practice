-- 8.Tạo bảng tất cả thứ của tất cả các ngày trong một tháng từ một ngày cho trước.
use TBL
DROP TABLE if EXISTS #Dates
CREATE TABLE #Dates
(
	Dates Datetime
)

DECLARE @Start DATETIME
DECLARE @End DATETIME
DECLARE @_NgayHienTai DATETIME = GETDATE()

SET @Start = DATEADD
(dd,-
(DAY
(@_NgayHienTai)-1),@_NgayHienTai)
-- IN MM/DD/YYYY format
SET @End = DATEADD
(dd,-
(DAY
(DATEADD
(mm,1,@_NgayHienTai))),DATEADD
(mm,1,@_NgayHienTai))
-- IN MM/DD/YYYY format

DECLARE @Counter INT, @TotalCount INT
SET @Counter = 0
SET @TotalCount = DateDiff(DD,@Start,@End)


WHILE (@Counter <=@TotalCount)
BEGIN
	DECLARE @DateValue DATETIME
	SET  @DateValue= DATEADD(DD,@Counter,@Start)

	INSERT INTO #Dates
		(Dates)
	VALUES(@DateValue)

	SET @Counter = @Counter + 1
END

select * from #Dates