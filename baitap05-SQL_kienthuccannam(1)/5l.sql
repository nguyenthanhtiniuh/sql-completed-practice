--5l. Tim mat hang ban so luong nhieu nhat trong tung nam
USE B30
GO
--Phai khai bao nam de lay moc
DECLARE @_NamNhapVao INT = 2014
DECLARE @_SoLuongMatHangBanNhieuNhat int =
(select MAX(Quantity)
from B30AccDocSales
WHERE YEAR(DocDate)=@_NamNhapVao)

SELECT @_SoLuongMatHangBanNhieuNhat as MatHangCoSoLuongBanNhieuNhat

-- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'
SELECT *
FROM B30AccDocSales
WHERE YEAR(DocDate)  = @_NamNhapVao AND
    Quantity = @_SoLuongMatHangBanNhieuNhat