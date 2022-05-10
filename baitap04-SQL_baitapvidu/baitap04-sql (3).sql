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

if object_id('tempdb..#b30accdoc') is not null drop table #b30accdoc
create table #b30accdoc
(
	id int identity(1,1),
	docdate date,
	docno int,
	descipttion nvarchar(max),
	customercode nvarchar(30)
)
insert into #b30accdoc
	select
		'2010-01-01', 001, 'ban hang 01', 'ABC'
union all
	select
		'2010-01-02', 002, 'ban hang 02', 'ABC'

INSERT into #b20customer
SELECT
	'BCD', 'Cong Ty BCD'


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
		'hd', 8, 20000000
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

if object_id('tempdb..#result') is not null drop table #result
create table #result
(
	No int null,
	Code nvarchar(30),
	Docdate date default NULL,
	DocNo int default 1,
	Description nvarchar(100) ,
	Quantity numeric(18,2),
	Amount numeric(18,2),
	Discount numeric(18,2) DEFAULT 1,
	CustomerCode NVARCHAR(50)
)

;WITH
	cmt
	AS

	(
		select #b30accdoc.id, itemcode, docdate, docno, descipttion, quantity, amount, customercode
		from #b30accdoc
			join #b30accdocsales
			on #b30accdoc.id=#b30accdocsales.id
	)
INSERT into #result
	(
	[Code],
	[Docdate],
	[DocNo],
	[Description],
	[Quantity],
	[Amount],
	CustomerCode)
SELECT
	[itemcode],
	[docdate],
	[docno],
	[descipttion],
	[quantity],
	[amount],
	customercode
from cmt

-- Update rows in table '[#result]' in schema '[dbo]'
UPDATE #result
SET
	[Discount] = round(Amount*3/100,2)
WHERE Amount<10000000
GO

UPDATE #result
SET
	[Discount] = round(Amount*5/100,2)
WHERE Amount>=10000000 and Amount<20000000
GO

UPDATE #result
SET
	[Discount] = round(Amount*7/100,2)
WHERE Amount>=20000000
GO

-- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'

SELECT *
FROM #result