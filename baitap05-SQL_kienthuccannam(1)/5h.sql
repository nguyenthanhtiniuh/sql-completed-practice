--5h. Tim khach hang chi mua hang QUANTITY>0 trong thang 7 nam 2014
USE B30
 GO

drop TABLE if EXISTS #tblTatCaKhachKhongMuaHangTrongThanh07
SELECT [STT],
    [ItemCode],
    [CustomerCode],
    [Employeecode],
    [DeptCode],
    [Quantity],
    [Amount],
    [DocDate]
INTO #tblTatCaKhachKhongMuaHangTrongThanh07
FROM B30AccDocSales
WHERE (DocDate<'20140701'OR DocDate>'20140731') AND Quantity =0
SELECT *
FROM #tblTatCaKhachKhongMuaHangTrongThanh07

SELECT [STT],
    [ItemCode],
    [CustomerCode],
    [Employeecode],
    [DeptCode],
    [Quantity],
    [Amount],
    [DocDate]
FROM B30AccDocSales
WHERE 
(DocDate BETWEEN '20140701' AND '20140731') AND
    Employeecode
IN
(SELECT Employeecode
    FROM #tblTatCaKhachKhongMuaHangTrongThanh07)