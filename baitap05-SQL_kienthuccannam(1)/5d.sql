--HALFDONE--5D.TIM NHAN VIEN BAN HANG CO DOANH SO BAN (HAVE AMOUNT=SELECT(MAX(AMOUNT))) NHIEU NHAT TRONG TUNG THANG CUA NAM 2014
USE B30
GO

-- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'
-- Drop a table called '#tblB30AccDocSalesNam2014' in schema 'dbo'
-- Drop the table if it already exists
-- IF OBJECT_ID('[dbo].[#tblB30AccDocSalesNam2014]', 'U') IS NOT NULL
-- DROP TABLE [dbo].[#tblB30AccDocSalesNam2014]

DROP TABLE IF EXISTS #tblB30AccDocSalesNam2014

GO
SELECT *
INTO #tblB30AccDocSalesNam2014
FROM B30AccDocSales
WHERE YEAR(DocDate)= 2014

-- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'
--Tim nhan Vien Ban Hang Nhieu Nhat Theo Thang
decLare @_ThangInput int =6

SELECT MONTH(DocDate), Amount
FROM #tblB30AccDocSalesNam2014
WHERE Amount = (
SELECT MAX(Amount)
FROM #tblB30AccDocSalesNam2014
WHERE MONTH(DocDate) = @_ThangInput
)
GO

DECLARE @_ThangInput int =12
SELECT [STT],
    [#tblB30AccDocSalesNam2014].Employeecode,
    [Quantity],
    [Amount],
    [DocDate]
FROM [#tblB30AccDocSalesNam2014]
-- JOIN B20Employee
-- ON #tblB30AccDocSalesNam2014.Employeecode=B20Employee.EmployeeCode
WHERE #tblB30AccDocSalesNam2014.Amount=(
SELECT MAX
(Amount)
FROM #tblB30AccDocSalesNam2014
WHERE MONTH
(DocDate) = @_ThangInput
)