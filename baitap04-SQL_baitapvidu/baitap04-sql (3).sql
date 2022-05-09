--bai tap 3: 
--viet t-sql de the hien gia tri ket quan nhu bang ben duoi
--tao cac bang tam 
--#b30accdoc(id,docdate,docno,description,customercode) va
--#b30accdocsales(id,itemcode,quantity,amount),
--#b20customer(code,name),
--#b20item(code,name)
use tbl

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
		'2010-01-01', 001, 'ban hang 01', 'aa'
union all
	select
		'2010-01-02', 002, 'ban hang 02', 'aab'
union all
	select
		'2010-03-01', 003, 'ban hang 03', 'ac'
union all
	select
		'2010-03-02', 004, 'ban hang 04', 'ad'

select *
from #b30accdoc

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



if object_id('tempdb..#b20customer') is not null drop table #b20customer
create table #b20customer
(
	code nvarchar(30),
	name nvarchar(30)
)

if object_id('tempdb..#b20item') is not null drop table #b20item
create table #b20item
(
	code nvarchar(30),
	name nvarchar(30)
)

if object_id('tempdb..#result') is not null drop table #result
create table #result
(
	_no int null,
	_code nvarchar(30),
	_docdate date,
	_docno int,
	_description nvarchar(max),
	_quantity numeric,
	_amount numeric,
	_discount numeric
)

;with
	cmt
	as
	
	(
		select #b30accdoc.id, itemcode, docdate, docno, descipttion, quantity, amount
		from #b30accdoc
			join #b30accdocsales
			on #b30accdoc.id=#b30accdocsales.id
	)
--insert into #result
insert into #result
	(_code,_docdate,_docno,_description,_quantity,_amount)
select itemcode, docdate, docno, descipttion, quantity, amount
from cmt




update #result set _discount=round(_amount*3/100,2) where _amount<10000000

update #result set _discount=round(_amount*5/100,2) where _amount >= 10000000 and _amount< 20000000

update #result set _discount=round(_amount*7/100,2) where _amount>=20000000

select *
from #result

--declare @del int =1
--while(select top 1 1 from #result) =1
--begin


--delete #result
--where _docno=@del
--end
;with
	cmt
	as
	
	(
		select top 2
			*
		from #result
	)
insert into cmt
	(_quantity
	,_amount,
	_discount)
select
	(select sum(_quantity)
	from cmt),
	(select sum(_amount)
	from cmt),
	(select sum(_discount)
	from cmt)
	