--DONE--5G.TIM KHACH HANG KHONG MUA HANG TRUOC THANG 7
SELECT B30AccDocSales.CustomerCode,CustomerName,Quantity,DocDate,Amount
FROM B30AccDocSales
JOIN B20Customer
ON B30AccDocSales.CustomerCode=B20Customer.CustomerCode
WHERE (DocDate)<'2014-07-01' AND Quantity=0