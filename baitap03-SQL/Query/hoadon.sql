/****** Script for SelectTopNRows command from SSMS  ******/
--SELECT column_name 'Column Name',
--data_type 'Data Type'
--FROM information_schema.columns
--WHERE table_name = 'HoaDon'
--GO
--SELECT DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE()))

SELECT *,FORMAT(ngay,'dd-MM-yyyy') FROM HoaDon