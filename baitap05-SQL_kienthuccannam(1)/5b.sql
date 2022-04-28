--DONE--5b. tim nhan vien khong ban duoc hang trong nam 2014
USE B30
SELECT DISTINCT B30AccDocSales.Employeecode,EmployeeName,Quantity
FROM B30AccDocSales
JOIN B20Employee
ON B30AccDocSales.Employeecode=B20Employee.EmployeeCode
WHERE B30AccDocSales.Quantity=0  AND YEAR(DocDate) =2014

--ALTER TABLE B30AccDocSales
--add  DocDate  date

--DECLARE @YEAR DATE = GETDATE()
--SELECT @YEAR

--SELECT DocDate
--FROM B30AccDocSales