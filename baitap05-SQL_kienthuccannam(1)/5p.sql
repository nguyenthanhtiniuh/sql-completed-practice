--5p. Tim nhan vien quan ly cac nhan vien khac
USE B30
GO
SELECT *
FROM B20Employee
WHERE EmployeeCode LIKE '%QL'
OR EmployeeCode LIKE '%TP'