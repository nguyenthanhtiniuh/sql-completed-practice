--5f. Tim khach hang mua hang trong thang 7 nam 2014
USE B30
GO
--DONE--5F
DROP TABLE if EXISTS #tblKhachMuaHangThang7
SELECT [STT],
    [ItemCode],
    [CustomerCode],
    [Employeecode],
    [DeptCode],
    [Quantity],
    [Amount],
    [DocDate]
INTO #tblKhachMuaHangThang7
FROM B30AccDocSales
-- JOIN B20Customer
-- ON B30AccDocSales.CustomerCode=B20Customer.CustomerCode
WHERE (DocDate BETWEEN '20140701' AND '20140731') AND Quantity>0

select *
from #tblKhachMuaHangThang7