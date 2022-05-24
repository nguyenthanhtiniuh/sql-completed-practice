--bai tap 3: 
--viet t-sql de the hien gia tri ket quan nhu bang ben duoi
--tao cac bang tam 
--#b30accdoc(id,docdate,docno,description,customercode) va
--#b30accdocsales(id,itemcode,quantity,amount),
--#b20customer(code,name),
--#b20item(code,name)
USE TBL
GO
IF OBJECT_ID('tempdb..#b20customer') IS NOT NULL DROP TABLE #b20customer
CREATE TABLE #b20customer
(
	Code nvarchar(30),
	Name nvarchar(30)
)
INSERT INTO #b20customer
SELECT
	'ABC', 'Cong Ty ABC'

INSERT INTO #b20customer
SELECT
	'BCD', 'Cong Ty BCD'

IF OBJECT_ID('tempdb..#b30accdoc') IS Not NULL DROP TABLE #b30accdoc
CREATE TABLE #b30accdoc
(
	Id int identity(1,1),
	Docdate date,
	Docno int,
	Description nvarchar(max),
	Customercode nvarchar(30)
)
INSERT INTO #b30accdoc
VALUES
	('2010-01-01', 001, 'ban hang 01', 'ABC'),

	('2010-01-02', 002, 'ban hang 02', 'ABC'),

	('2010-03-01', 003, 'ban hang 03', 'BCD'),

	('2010-03-02', 004, 'ban hang 04', 'BCD')

IF OBJECT_ID('tempdb..#b30accdocsales') IS NOT NULL DROP TABLE #b30accdocsales
CREATE TABLE #b30accdocsales
(
	id int identity(1,1),
	itemcode nvarchar(30),
	quantity numeric,
	amount numeric
)
INSERT INTO #b30accdocsales
VALUES
	('hd', 10, 10000000),

	('hd', 5, 5000000),

	('hd', 28, 20000000),

	('hd', 5, 15000000)

SELECT *
FROM #b30accdocsales


IF OBJECT_ID('tempdb..#b20item') IS NOT NULL DROP TABLE #b20item
CREATE TABLE #b20item
(
	Code nvarchar(30),
	Name nvarchar(30)
)

DROP TABLE IF EXISTS #tblDiscount;
CREATE TABLE #tblDiscount
(
	FromValue INT,
	ToValue INT,
	pValue INT
);
INSERT #tblDiscount
	(FromValue, ToValue, pValue)
VALUES(0, 10, 3),
	(11, 20, 5),
	(21, 100000, 7)

IF OBJECT_ID('tempdb..#result') IS NOT NULL DROP TABLE #result
SELECT #b30accdoc.id + 0 AS Id, itemcode AS Code, docdate, docno, Description, quantity, amount
	
	, CAST(0 AS NUMERIC(18)) AS Discount
	, customercode, CAST(1 AS BIT) AS IsDetail
	, ROW_NUMBER() OVER(PARTITION BY CustomerCode ORDER BY DocNo) AS No
	, CAST(CustomerCode AS VARCHAR(32)) + '1' AS _Index
	, CAST('' AS VARCHAR(16)) AS _Format
INTO #result
FROM #b30accdoc
	JOIN #b30accdocsales
	ON #b30accdoc.id=#b30accdocsales.id

UPDATE #result
SET Discount = ROUND(t1.amount*t2.pValue/100, 0)

FROM #result AS t1
	INNER JOIN #tblDiscount AS t2
	ON t1.quantity 
	BETWEEN t2.FromValue AND t2.ToValue

INSERT INTO #result
	([Description],Quantity,Amount,Discount, _Index, _Format)
SELECT 'Tong Cong', SUM(Quantity), SUM(Amount), SUM(Discount), 'Z', 'BOLD'
FROM #result
WHERE IsDetail = 1

INSERT INTO #result
	(CustomerCode, Quantity,Amount,Discount, _Index, _Format)
SELECT CustomerCode, SUM(Quantity), SUM(Amount), SUM(Discount), CustomerCode + '0', 'BOLD'
FROM #result
WHERE IsDetail = 1
GROUP BY CustomerCode

SELECT CustomerCode 
	, [No],
	[Code],
	[Docdate],
	[DocNo],
	[Description],
	[Quantity],
	[Amount],
	[Discount]
-- , _Index
-- , _Format
FROM #result
ORDER BY _Index