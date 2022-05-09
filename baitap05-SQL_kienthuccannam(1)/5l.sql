--5l. Tim mat hang ban so luong nhieu nhat trong tung nam
USE B30
GO
DECLARE @_NamNhapVao INT = 2014
DECLARE @_MatHangCoSoLuongBanNhieuNhat int =
(select MAX(Quantity)
from B30AccDocSales
WHERE YEAR(DocDate)=@_NamNhapVao)

SELECT @_MatHangCoSoLuongBanNhieuNhat as MatHangCoSoLuongBanNhieuNhat

-- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'
SELECT *
FROM B30AccDocSales
WHERE YEAR(DocDate)  = @_NamNhapVao AND
    Quantity = @_MatHangCoSoLuongBanNhieuNhat