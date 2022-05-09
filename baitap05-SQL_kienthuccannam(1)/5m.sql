--5m. Tim mat hang ban co doanh thu(Amount) nhieu nhat trong nam
USE B30
GO
DECLARE @_NamNhapVao INT = 2014
DECLARE @_MatHangDoanhThuBanNhieuNhat int =
(select MAX(Amount)
from B30AccDocSales
WHERE YEAR(DocDate)=@_NamNhapVao)

SELECT @_MatHangDoanhThuBanNhieuNhat as MatHangCoSoLuongBanNhieuNhat

-- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'
SELECT *
FROM B30AccDocSales
WHERE YEAR(DocDate)  = @_NamNhapVao AND
    Amount = @_MatHangDoanhThuBanNhieuNhat