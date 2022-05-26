-- 6.Tạo một ngày đầu tháng, một ngày cuối tháng, một ngày đầu năm, ngày đầu năm từ một ngày cho trước.
SET DATEFORMAT dmy;  
GO

DECLARE @_NgayHienTai DATETIME

SET @_NgayHienTai = GETDATE()

    SELECT CONVERT(VARCHAR(25),DATEADD(dd,-(DAY(@_NgayHienTai)-1),@_NgayHienTai),101) AS Date_Value,

        N'Ngày đầu tháng hiện tại' AS Date_Type

UNION


    SELECT CONVERT(VARCHAR(25),DATEADD(dd,-(DAY(GETDATE())),GETDATE()),101) ,

        N'Ngày cuối tháng trước'

UNION

    SELECT CONVERT(VARCHAR(25),@_NgayHienTai,101) AS Date_Value, N'Hôm nay' AS Date_Type

UNION

    SELECT CONVERT(VARCHAR(25),DATEADD(dd,-(DAY(DATEADD(mm,1,@_NgayHienTai))),DATEADD(mm,1,@_NgayHienTai)),101) ,

        N'Ngày cuối tháng này'
UNION

    SELECT CONVERT(VARCHAR(25),DATEADD(dd,-(DAY(DATEADD(mm,1,@_NgayHienTai))-1),DATEADD(mm,1,@_NgayHienTai)),101) ,

        N'Ngày đầu tháng tiếp theo'

GO

DECLARE @_NgayHienTai DATETIME

SELECT
    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) AS NgayDauNamHienTai,

    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) AS NgayCuoiNamHienTai


    
    

--declare @FirstDayInYear varchar(25) = '01/01/' + str(YEAR(@_NgayHienTai),4)
--SELECT rtrim(CONVERT(VARCHAR(25),@FirstDayInYear)) AS Year_Value, 
--N'First Day Of Year' AS CurrentYear