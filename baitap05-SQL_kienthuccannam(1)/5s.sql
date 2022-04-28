--5s. Tim nhan vien quan ly khong co ai quan ly minh
USE B30 
GO
SELECT *
FROM B20Employee
WHERE EmployeeCode LIKE '%QL' AND ManagerCode IS NULL