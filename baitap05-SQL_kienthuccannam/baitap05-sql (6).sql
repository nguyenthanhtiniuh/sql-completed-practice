6.Tạo một ngày đầu tháng, một ngày cuối tháng, một ngày đầu năm, ngày đầu năm từ một ngày cho trước.

DECLARE @currentDate DATETIME

SELECT @currentDate = GETDATE()

SELECT CONVERT(VARCHAR(25),DATEADD(dd,-(DAY(@currentDate)-1),@currentDate),101) AS Date_Value,

N'Ngày đầu tháng hiện tại' AS Date_Type

UNION

SELECT CONVERT(VARCHAR(25),DATEADD(dd,-(DAY(GETDATE())),GETDATE()),101) ,

N'Ngày cuối tháng trước'

UNION

SELECT CONVERT(VARCHAR(25),@currentDate,101) AS Date_Value, N'Hôm nay' AS Date_Type

UNION

SELECT CONVERT(VARCHAR(25),DATEADD(dd,-(DAY(DATEADD(mm,1,@currentDate))),DATEADD(mm,1,@currentDate)),101) ,

N'Ngày cuối tháng này'

UNION

SELECT CONVERT(VARCHAR(25),DATEADD(dd,-(DAY(DATEADD(mm,1,@currentDate))-1),DATEADD(mm,1,@currentDate)),101) ,

N'Ngày đầu tháng tiếp theo'

--declare @FirstDayInYear varchar(25) = '01/01/' + str(YEAR(@currentDate),4)
--SELECT rtrim(CONVERT(VARCHAR(25),@FirstDayInYear)) AS Year_Value, 
--N'First Day Of Year' AS CurrentYear