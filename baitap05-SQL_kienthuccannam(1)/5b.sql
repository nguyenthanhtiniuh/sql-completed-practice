--DONE--5b. tim nhan vien khong ban duoc hang trong nam 2014
USE B30

UPDATE B30AccDocSales
SET Quantity = 0 
WHERE CustomerCode LIKE 'BONAP'

UPDATE B30AccDocSales
SET Amount = Quantity *100

SELECT *
from B30AccDocSales
WHERE YEAR(DocDate)=2014 and Quantity = 0