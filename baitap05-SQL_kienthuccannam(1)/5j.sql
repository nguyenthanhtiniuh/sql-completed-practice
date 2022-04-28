--5j--HALFDONE. Tim bo phan ban hang co doanh so ban thap hon muc ban trung binh 
--cua cac bo phan trong tung thang trong nam 2014
USE B30
GO

DECLARE @COUNT INT = 1
SELECT AVG(Amount) AS AVG_AMOUNT FROM B30AccDocSales WHERE MONTH(DocDate)=@COUNT AND YEAR(DocDate) = 2014
GO



-- SELECT DocDate, Amount, Quantity,B30AccDocSales.Employeecode,EmployeeName
-- FROM B30AccDocSales 
-- JOIN B20Employee
-- ON B30AccDocSales.Employeecode=B20Employee.EmployeeCode
-- WHERE (Amount<(SELECT AVG(Amount) FROM B30AccDocSales WHERE )) AND YEAR(DocDate)=2014 AND MONTH(DocDate)=@COUNT
-- SET @COUNT=@COUNT+1
--and Quantity=(select Quantity < AVG(acc.Quantity)) and YEAR(acc.DocDate)=2014
