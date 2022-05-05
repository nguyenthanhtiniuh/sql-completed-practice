-Sử dụng các hàm xử lý chuỗi: LEFT, RIGHT, RTRIM, SUBTRING, REPLACE, REPLICATE, STUFF, CHARINDEX, PATINDEX
-Sử dụng các hàm xử lý thời gian: DATE, DATEDIFF, DATAPART, YEAR, MONTH, DAY, FORMATDATETIME
-Sử dụng các hàm xử lý số: /, %, ROUND, ISNUMERIC
-Chuyển đổi số liệu: CAST, CONVERT, STR
-Sử dụng các cách khác nhau (nếu có) cho từng câu bài tập
1.Tìm hiểu các kiểu dữ liệu trong Sql Server
2.Cho tên nhân viên đầy đủ. Tách lấy 2 phần: Họ tên đệm, và Tên; Tách lấy Họ và Tên đệm.
--SELECT Contactname 
--from Customers

--select DATALENGTH(SELECT Contactname 
--from Customers) as lengthcontactname

--SELECT REVERSE(CompanyName)
--FROM Customers;

--ADD column
--ALTER table Customers
--ADD  Ho VARCHAR(10), TEN VARCHAR(10)
--GO
use Northwind
go 
--drop column
--alter table Customers 
--drop Ho, TEN

--alter table Customers
--add CustomerFirstName nvarchar(40)

--UPDATE Customers

--Ten = SUBSTRING(ContactName,' ',-1)

--select 
----trim(substring(Customers.ContactName,1,LEN(Customers.ContactName)-

DECLARE @nstr nvarchar(100) = 'Nguyen Van Thanh Tin'
DECLARE @positionfirstspace int = CHARINDEX(' ',@nstr)

select left(@nstr,@positionfirstspace) as firstname

DECLARE @positionreversespace int = CHARINDEX(' ',reverse(@nstr))

select REVERSE(left((select REVERSE(@nstr) as reversename),@positionreversespace)) as lastName

DECLARE @lenname int = Len(@nstr) 

DECLARE @lenfirstname int = Len(left(@nstr,@positionfirstspace))

DECLARE @lenlastname int = Len(REVERSE(left((select REVERSE(@nstr) as reversename),@positionreversespace)))

select TRim(SUBSTRING(@nstr,@positionfirstspace,(@lenname-@lenlastname-@lenfirstname))) as middleName

