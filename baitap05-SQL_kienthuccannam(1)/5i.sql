----5i. Tim khach hang co doanh so mua nhieu nhat trong 2 thang lien trong nam 2014 --not done
use b30
go
SELECT B30AccDocSales.CustomerCode, Quantity, Amount, DocDate
FROM B30AccDocSales
    JOIN B20Customer
    ON B30AccDocSales.CustomerCode=B20Customer.CustomerCode
WHERE (Amount=(SELECT MAX(Amount)
FROM B30AccDocSales
WHERE YEAR(DocDate)=2014))