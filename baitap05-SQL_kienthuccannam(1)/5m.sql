--5m. Tim mat hang ban co doanh thu nhieu nhat trong nam
use b30 
go

DECLARE @YEAR_INPUT INT =2014;

(SELECT MAX(Quantity) AS MAXQUAN
FROM B30AccDocSales
WHERE YEAR(DocDate)=@YEAR_INPUT)

SELECT B30AccDocSales.ItemCode, ItemName,Quantity,DocDate
FROM B30AccDocSales
JOIN B20Item
ON B30AccDocSales.ItemCode=B20Item.ItemCode
WHERE YEAR(DocDate)=@YEAR_INPUT AND (Quantity = (SELECT MAX(Quantity) AS MAXQUAN
FROM B30AccDocSales
WHERE YEAR(DocDate)=@YEAR_INPUT))