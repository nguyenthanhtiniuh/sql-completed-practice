--5n. Tim mat hang ban nhieu nhat ve so luong nhung khong nhieu nhat ve doanh thu 
--trong tung nam
DECLARE @YEAR_INPUT INT = 2014;

WITH
    TBLDOANHTHUNHIEUNHAT_NAM (DOCDATE, QUANTITY, AMOUNT, ITEMCODE)
    AS

    (
        SELECT DocDate, Quantity, Amount, ItemCode
        FROM B30AccDocSales
        WHERE 
Quantity=(SELECT MAX(Quantity)
        FROM B30AccDocSales)
    )
SELECT ITEMCODE, QUANTITY, AMOUNT, DOCDATE
FROM TBLDOANHTHUNHIEUNHAT_NAM
WHERE (YEAR(DOCDATE)=@YEAR_INPUT)
    AND
    (AMOUNT<(SELECT MAX(AMOUNT)
    FROM TBLDOANHTHUNHIEUNHAT_NAM))
ORDER BY ITEMCODE