----4D--XOA CAC DU LIEU TRUNG LAP MA TRONG CAC BANG
----B20ITEM,B20CUSTOMER, GIU LAI MOT TRONG CAC DU LIEU TRUNG MA DO

USE B30
GO

;WITH
   cte
   AS
   (
      SELECT
         ItemCode
	, ItemName       
       , ROW_NUMBER() OVER (
           PARTITION BY 
              ItemCode
           ORDER BY 
              ItemCode
       ) ROW_NUM
      FROM
         B20Item
   )
--SELECT * FROM cte
DELETE FROM cte
WHERE ROW_NUM > 1

select *
from B20Item


--B20CUSTOMER
USE B30
GO
SELECT COUNT(CustomerCode)
FROM B20Customer
SELECT *
FROM B20Customer

;WITH
   cte
   AS
   (
      SELECT
         CustomerCode
	, CustomerName       
        , ROW_NUMBER() OVER (
            PARTITION BY 
               CustomerCode
            ORDER BY 
               CustomerCode
        ) ROW_NUM
      FROM
         B20Customer
   )
--SELECT * FROM cte
DELETE FROM cte
WHERE ROW_NUM > 1

SELECT COUNT(CustomerCode)
FROM B20Customer


SELECT *
FROM B20Customer