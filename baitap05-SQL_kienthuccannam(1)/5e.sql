--5E.TIM 3 NHAN VIEN BAN HANG CO TONG DOANH SO BAN NHIEU NHAT TRONG NAM 2014 --SAI
USE B30
SELECT *
FROM B30AccDocSales
WHERE YEAR(DocDate)= 2014

SELECT TOP 3
    *
FROM B30AccDocSales
    JOIN B20Employee
    ON B30AccDocSales.Employeecode=B20Employee.EmployeeCode
WHERE YEAR(DocDate) = 2014
ORDER BY Amount DESC
