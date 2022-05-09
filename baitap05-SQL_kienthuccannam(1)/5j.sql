--5j--HALFDONE. Tim bo phan ban hang co doanh so ban thap hon muc ban trung binh 
--cua cac bo phan trong tung thang trong nam 2014
USE B30
GO
drop table if EXISTS #tblDoanhSoBanHangNam2014
SELECT *
INTO #tblDoanhSoBanHangNam2014
FROM B30AccDocSales
WHERE YEAR(DocDate) = 2014

drop table if EXISTS #tblDoanhSoBanHangThang1
SELECT *
INTO #tblDoanhSoBanHangThang1
FROM #tblDoanhSoBanHangNam2014
WHERE MONTH(DocDate) = 1

SELECT *
FROM #tblDoanhSoBanHangThang1
WHERE Amount<
(SELECT AVG(Amount)
FROM #tblDoanhSoBanHangThang1 
)

drop table if EXISTS #tblDoanhSoBanHangThang2
SELECT *
INTO #tblDoanhSoBanHangThang2
FROM #tblDoanhSoBanHangNam2014
WHERE MONTH(DocDate) = 2

SELECT *
FROM #tblDoanhSoBanHangThang2
WHERE Amount<
(SELECT AVG(Amount)
FROM #tblDoanhSoBanHangThang2 
)

drop table if EXISTS #tblDoanhSoBanHangThang3
SELECT *
INTO #tblDoanhSoBanHangThang3
FROM #tblDoanhSoBanHangNam2014
WHERE MONTH(DocDate) = 3

SELECT *
FROM #tblDoanhSoBanHangThang3
WHERE Amount<
(SELECT AVG(Amount)
FROM #tblDoanhSoBanHangThang3 
)

drop table if EXISTS #tblDoanhSoBanHangThang4
SELECT *
INTO #tblDoanhSoBanHangThang4
FROM #tblDoanhSoBanHangNam2014
WHERE MONTH(DocDate) = 4


SELECT *
FROM #tblDoanhSoBanHangThang4
WHERE Amount<
(SELECT AVG(Amount)
FROM #tblDoanhSoBanHangThang4 
)

drop table if EXISTS #tblDoanhSoBanHangThang5
SELECT *
INTO #tblDoanhSoBanHangThang5
FROM #tblDoanhSoBanHangNam2014
WHERE MONTH(DocDate) = 5

SELECT *
FROM #tblDoanhSoBanHangThang5
WHERE Amount<
(SELECT AVG(Amount)
FROM #tblDoanhSoBanHangThang5 
)

drop table if EXISTS #tblDoanhSoBanHangThang6
SELECT *
INTO #tblDoanhSoBanHangThang6
FROM #tblDoanhSoBanHangNam2014
WHERE MONTH(DocDate) = 6


SELECT *
FROM #tblDoanhSoBanHangThang6
WHERE Amount<
(SELECT AVG(Amount)
FROM #tblDoanhSoBanHangThang6 
)

drop table if EXISTS #tblDoanhSoBanHangThang7
SELECT *
INTO #tblDoanhSoBanHangThang7
FROM #tblDoanhSoBanHangNam2014
WHERE MONTH(DocDate) = 7

SELECT *
FROM #tblDoanhSoBanHangThang7
WHERE Amount<
(SELECT AVG(Amount)
FROM #tblDoanhSoBanHangThang7 
)

drop table if EXISTS #tblDoanhSoBanHangThang8
SELECT *
INTO #tblDoanhSoBanHangThang8
FROM #tblDoanhSoBanHangNam2014
WHERE MONTH(DocDate) = 8


SELECT *
FROM #tblDoanhSoBanHangThang8
WHERE Amount<
(SELECT AVG(Amount)
FROM #tblDoanhSoBanHangThang8 
)

drop table if EXISTS #tblDoanhSoBanHangThang9
SELECT *
INTO #tblDoanhSoBanHangThang9
FROM #tblDoanhSoBanHangNam2014
WHERE MONTH(DocDate) = 9


SELECT *
FROM #tblDoanhSoBanHangThang9
WHERE Amount<
(SELECT AVG(Amount)
FROM #tblDoanhSoBanHangThang9 
)

drop table if EXISTS #tblDoanhSoBanHangThang10
SELECT *
INTO #tblDoanhSoBanHangThang10
FROM #tblDoanhSoBanHangNam2014
WHERE MONTH(DocDate) = 10


SELECT *
FROM #tblDoanhSoBanHangThang10
WHERE Amount<
(SELECT AVG(Amount)
FROM #tblDoanhSoBanHangThang10
)


drop table if EXISTS #tblDoanhSoBanHangThang11
SELECT *
INTO #tblDoanhSoBanHangThang11
FROM #tblDoanhSoBanHangNam2014
WHERE MONTH(DocDate) = 11

SELECT *
FROM #tblDoanhSoBanHangThang11
WHERE Amount<
(SELECT AVG(Amount)
FROM #tblDoanhSoBanHangThang11
)


drop table if EXISTS #tblDoanhSoBanHangThang12
SELECT *
INTO #tblDoanhSoBanHangThang12
FROM #tblDoanhSoBanHangNam2014
WHERE MONTH(DocDate) = 12

SELECT *
FROM #tblDoanhSoBanHangThang12
WHERE Amount<
(SELECT AVG(Amount)
FROM #tblDoanhSoBanHangThang12
)