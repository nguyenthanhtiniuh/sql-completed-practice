--bai tap 3: 
--viet t-sql de the hien gia tri ket quan nhu bang ben duoi
--tao cac bang tam 
--#b30accdoc(id,docdate,docno,description,customercode) va
--#b30accdocsales(id,itemcode,quantity,amount),
--#b20customer(code,name),
--#b20item(code,name)
use tbl
GO
if object_id('tempdb..#b20customer') is not null drop table #b20customer
create table #b20customer
(
	Code nvarchar(30),
	Name nvarchar(30)
)
INSERT into #b20customer
SELECT
	'ABC', 'Cong Ty ABC'

INSERT into #b20customer
SELECT
	'BCD', 'Cong Ty BCD'

if object_id('tempdb..#b30accdoc') is not null drop table #b30accdoc
create table #b30accdoc
(
	id int identity(1,1),
	docdate date,
	docno int,
	Description nvarchar(max),
	customercode nvarchar(30)
)
insert into #b30accdoc
	select
		'2010-01-01', 001, 'ban hang 01', 'ABC'
union all
	select
		'2010-01-02', 002, 'ban hang 02', 'ABC'

insert into #b30accdoc
	select
		'2010-03-01', 003, 'ban hang 03', 'BCD'
union all
	select
		'2010-03-02', 004, 'ban hang 04', 'BCD'

if object_id('tempdb..#b30accdocsales') is not null drop table #b30accdocsales
create table #b30accdocsales
(
	id int identity(1,1),
	itemcode nvarchar(30),
	quantity numeric,
	amount numeric
)
insert into #b30accdocsales
	select
		'hd', 10, 10000000
union all
	select
		'hd', 5, 5000000
union all
	select
		'hd', 28, 20000000
union all
	select
		'hd', 5, 15000000

select *
from #b30accdocsales


if object_id('tempdb..#b20item') is not null drop table #b20item
create table #b20item
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
select #b30accdoc.id + 0 AS Id, itemcode AS Code, docdate, docno, Description, quantity, amount
	
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