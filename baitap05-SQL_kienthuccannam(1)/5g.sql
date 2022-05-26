--DONE--5G.TIM KHACH HANG KHONG MUA HANG TRUOC THANG 7
USE B30
GO
SELECT
    -- [STT],
    [ItemCode],
    B30AccDocSales.[CustomerCode],
    [Employeecode],
    [DeptCode],
    [Quantity],
    [Amount],
    [DocDate]
FROM B30AccDocSales
    JOIN B20Customer
    ON B30AccDocSales.CustomerCode=B20Customer.CustomerCode
WHERE (DocDate)<'2014-07-01' AND Amount=0