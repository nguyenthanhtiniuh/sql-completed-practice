-- 8.Tạo bảng tất cả thứ của tất cả các ngày trong một tháng từ một ngày cho trước.
USE TBL
DROP TABLE if EXISTS #Dates
CREATE TABLE #Dates
(
	Dates Datetime
)

DECLARE @_Start DATETIME
DECLARE @_End DATETIME
DECLARE @_NgayHienTai DATETIME = GETDATE()

SET @_Start = DATEADD
(dd,-
(DAY
(@_NgayHienTai)-1),@_NgayHienTai)
-- IN MM/DD/YYYY format
SET @_End = DATEADD
(dd,-
(DAY
(DATEADD
(mm,1,@_NgayHienTai))),DATEADD
(mm,1,@_NgayHienTai))

SELECT DateDiff
(DD,@_Start,@_End)
-- IN MM/DD/YYYY format

DECLARE @Counter INT, @TotalCount INT
SET @Counter = 0
SET @TotalCount = DateDiff(DD,@_Start,@_End)


WHILE (@Counter <=@TotalCount)
BEGIN
	DECLARE @DateValue DATETIME
	SET  @DateValue= DATEADD(DD,@Counter,@_Start)

	INSERT INTO #Dates
		(Dates)
	VALUES(@DateValue)

	SET @Counter = @Counter + 1
END

SELECT *
FROM #Dates