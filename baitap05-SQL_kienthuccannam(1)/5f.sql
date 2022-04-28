--5f. Tim khach hang mua hang trong thang 7 nam 2014
USE B30
GO
--DONE--5F
SELECT B30AccDocSales.CustomerCode,CustomerName,Quantity,DocDate
FROM B30AccDocSales
JOIN B20Customer
ON B30AccDocSales.CustomerCode=B20Customer.CustomerCode
WHERE (DocDate BETWEEN '20140701' AND '20140731') AND Quantity>0
GO