--5l. Tim mat hang ban so luong nhieu nhat trong tung nam
USE B30
GO
--Phai khai bao nam de lay moc
DECLARE @_NamNhapVao INT = 2014
DECLARE @_SoLuongMatHangBanNhieuNhat int =
(SELECT MAX(Quantity)
FROM B30AccDocSales
WHERE YEAR(DocDate)=@_NamNhapVao)

SELECT @_SoLuongMatHangBanNhieuNhat AS MatHangCoSoLuongBanNhieuNhat

-- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'
SELECT *
FROM B30AccDocSales
WHERE YEAR(DocDate)  = @_NamNhapVao AND
    Quantity = @_SoLuongMatHangBanNhieuNhat