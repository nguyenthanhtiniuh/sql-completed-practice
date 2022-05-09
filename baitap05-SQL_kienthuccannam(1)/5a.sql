--NORMAL WAY
-- 5.Danh mục các mặt hàng bán B20Item(Code,Name)
--DONE
--5a. Tinh so luong, doanh so ban hang cua tung nhan vien trong tung thang cua nam 2014
USE B30
GO

SELECT EmployeeCode, MONTH(DocDate) AS THANG,
    CASE MONTH(DocDate)
		WHEN 1 THEN (Quantity)
            ELSE NULL
END AS QuantityTHANG1,

    CASE MONTH
(DocDate)
		WHEN 1 THEN
(Amount)
        
ELSE NULL
END AS AmountThang1,

    CASE MONTH(DocDate)
		WHEN 2 THEN(Quantity)
            ELSE NULL
END AS QuantityTHANG2,


    CASE MONTH
(DocDate)
		WHEN 2 THEN
(Amount)
        
ELSE NULL
END AS AmountThang2,

    CASE MONTH
(DocDate)
		WHEN 3 THEN
(Quantity)
            ELSE NULL
END AS QuantityTHANG3,

    CASE MONTH
(DocDate)
		WHEN 3 THEN
(Amount)
        
ELSE NULL
END AS AmountThang3,


    CASE MONTH
(DocDate)
		WHEN 4 THEN
(Quantity)
            ELSE NULL
END AS QuantityTHANG4,

    CASE MONTH
(DocDate)
		WHEN 4 THEN
(Amount)
        
ELSE NULL
END AS AmountThang4,


    CASE MONTH
(DocDate)
		WHEN 5 THEN
(Quantity)
            ELSE NULL
END AS QuantityTHANG5,

    CASE MONTH
(DocDate)
		WHEN 5 THEN
(Amount)
        
ELSE NULL
END AS AmountThang5,


    CASE MONTH
(DocDate)
		WHEN 6 THEN
(Quantity)
            ELSE NULL
END AS QuantityTHANG6,

    CASE MONTH
(DocDate)
		WHEN 6 THEN
(Amount)
        
ELSE NULL
END AS AmountThang6,


    CASE MONTH
(DocDate)
		WHEN 7 THEN
(Quantity)
            ELSE NULL
END AS QuantityTHANG7,

    CASE MONTH
(DocDate)
		WHEN 7 THEN
(Amount)
        
ELSE NULL
END AS AmountThang7,


    CASE MONTH
(DocDate)
		WHEN 8 THEN
(Quantity)
            ELSE NULL
END AS QuantityTHANG8,

    CASE MONTH
(DocDate)
		WHEN 8 THEN
(Amount)
        
ELSE NULL
END AS AmountThang8,


    CASE MONTH
(DocDate)
		WHEN 9 THEN
(Quantity)
            ELSE NULL
END AS QuantityTHANG9,

    CASE MONTH
(DocDate)
		WHEN 9 THEN
(Amount)
        
ELSE NULL
END AS AmountThang9,


    CASE MONTH
(DocDate)
		WHEN 10 THEN
(Quantity)
            ELSE NULL
END AS QuantityTHANG10,

    CASE MONTH
(DocDate)
		WHEN 10 THEN
(Amount)
        
ELSE NULL
END AS AmountThang10,


    CASE MONTH
(DocDate)
		WHEN 11 THEN
(Quantity)
            ELSE NULL
END AS QuantityTHANG11,

    CASE MONTH
(DocDate)
		WHEN 11 THEN
(Amount)
        
ELSE NULL
END AS AmountThang11,


    CASE MONTH
(DocDate)
		WHEN 12 THEN
(Quantity)
            ELSE NULL
END AS QuantityTHANG12,

    CASE MONTH
(DocDate)
		WHEN 12 THEN
(Amount)
        
ELSE NULL
END AS AmountThang12

FROM B30AccDocSales
ORDER by MONTH(DocDate)