--5l. Tim mat hang ban so luong nhieu nhat trong tung nam
USE B30
GO
DECLARE @YEAR_INPUT INT = 2014;

--SELECT MAX(Quantity) FROM B30AccDocSales 
--WHERE YEAR(DocDate)=@YEAR_INPUT

SELECT B30AccDocSales.ItemCode,ItemName,Quantity,YEAR(DocDate) AS NAM
FROM B30AccDocSales
JOIN B20Item
ON B30AccDocSales.ItemCode=B20Item.ItemCode
WHERE YEAR(DocDate)=@YEAR_INPUT AND
B30AccDocSales.Quantity=(SELECT MAX(Quantity) FROM B30AccDocSales WHERE YEAR(DocDate)=@YEAR_INPUT)
