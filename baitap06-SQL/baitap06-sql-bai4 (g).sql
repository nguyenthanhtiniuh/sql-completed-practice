--4G--BO SUNG NGAU NHIEN 20 DON HANG (SELECT 20 ITEMCODE IN B20ITEM WHERE EFFDATE BETWEEN '201410101' AND '20140130' ) 
--BAN NGAU NHIEN TRONG THANG 01-2014
--CUA 10 KHACH HANG NGAU NHIEN TRONG DANH SACH KHACH HANG (SELECT 10 CUSTOMER FROM B20CUSTOMER) 
--CUA 10 MAT HANG NGAU NHIEN TRONG DANH SACH CAC MAT HANG (SELECT 10) 
--SO LUONG BAN NGAU NHIEN TU 1 DEN 5.(QUANTITY RANDOM(5))
--(GIA SU THEO THIET KE MOI DON HANG BAN CHI MOT MAT HANG)

USE B30
GO

SELECT * FROM B30AccDocSales
--values
--(SELECT  ItemCode
--FROM B20Item),
--(SELECT CustomerCode
--FROM B20Customer)) 

--SELECT ItemCode
--FROM B20Prices
--SELECT ItemCode FROM B20Item
--ORDER BY RAND() 

SELECT TOP 10 ItemCode 
FROM B20Item 
ORDER BY NEWID();

SELECT TOP 10 CustomerCode
FROM B20Customer
ORDER BY NEWID();

SELECT TOP 10 FLOOR(RAND()*6-1)+1