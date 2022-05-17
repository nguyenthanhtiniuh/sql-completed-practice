--4-baitap4
--tao bang tam danh muc vat tu #B20Item(Code,Name,GroupCode), va ton kho dau ky #B30OpenStock(ItemCode,Quantity,WarehouseCode)
use tbl
--bang tam danh muc vat tu
if object_id('tempdb..#B20Item') is not null drop table #B20Item
create table #B20Item
(
    Code nvarchar(50),
    Name nvarchar(50),
    GroupCode nvarchar(50)
)

--bang ton kho dau ky
if object_id('tempdb..#B30OpenStock') is not null drop table #B30OpenStock
create table #B30OpenStock
(
    ItemCode nvarchar(50),
    Quantity int,
    WarehouseCode nvarchar(50)
)

--table result
if object_id('tempdb..#result') is not null drop table #result
create table #result
(
    GroupCode nvarchar(50),
    ItemCode nvarchar(50),
    ItemName nvarchar(50),
    Stock1 int,
    Stock2 int,
    Stock3 int
)

INSERT into #result
    SELECT
        'VT', 'Vt1', 'Vat tu 1', 5, 0, 0
union all
    select
        'VT', 'Vt2', 'Vat tu 2', 0, 9, 1
UNION ALL
    select
        'VT', 'Vt3', 'Vat tu 3', 3, 2, 7

INSERT into #B20Item
SELECT ItemCode, ItemName, GroupCode
from #result
select *
from #B20Item

INSERT into #result
    (ItemName,Stock1,Stock2,Stock3)
select 'tong cong', SUM(Stock1), SUM(Stock2), SUM(Stock3)
from #result

DECLARE @_Str Nvarchar(MAX) = ''

-- Select *
-- From #B20Item

SELECT @_Str = @_Str  + N'ALTER TABLE #Result Add ' + Code + N' Numeric(18,5)' + CHAR(10)
FROM #B20Item

EXEC( @_Str)

SELECT *
FROM #result