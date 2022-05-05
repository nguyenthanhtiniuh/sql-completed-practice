--DONE--5b. tim nhan vien khong ban duoc hang trong nam 2014
USE B30

UPDATE B30AccDocSales
SET Quantity = 0 
WHERE CustomerCode LIKE 'BONAP'

UPDATE B30AccDocSales
SET Amount = Quantity *100

SELECT *
from B30AccDocSales
WHERE YEAR(DocDate)=2014 and Quantity =0
--ALTER TABLE B30AccDocSales
--add  DocDate  date

--DECLARE @YEAR DATE = GETDATE()
--SELECT @YEAR

--SELECT DocDate
--FROM B30AccDocSales
-- SELECT B30AccDocSales.Employeecode,EmployeeName,Quantity,Amount
-- FROM B30AccDocSales
-- JOIN B20Employee
-- ON B30AccDocSales.Employeecode=B20Employee.EmployeeCode