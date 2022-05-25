--4-BAITAP4
--TAO BANG TAM DANH MUC VAT TU #B20ITEM(CODE,NAME,GROUPCODE), VA TON KHO DAU KY #B30OPENSTOCK(ITEMCODE,QUANTITY,WAREHOUSECODE)
USE TBL
GO
--BANG TAM DANH MUC VAT TU
DROP TABLE IF EXISTS #B20ITEM
CREATE TABLE #B20Item
(
    Code nvarchar(50),
    Name nvarchar(50),
    GroupCode nvarchar(50)
)
INSERT INTO #B20Item
VALUES
    ('Vt1', 'Vat tu 1', 'VT'),
    ('Vt2', 'Vat tu 2', 'VT'),
    ('Vt3', 'Vat tu 3', 'VT')
SELECT *
FROM #B20Item

--BANG TON KHO DAU KY
DROP TABLE IF EXISTS #B30OpenStock
CREATE TABLE #B30OpenStock
(
    ItemCode nvarchar(50),
    Quantity int,
    WarehouseCode nvarchar(50)
)
INSERT INTO #B30OpenStock
VALUES
    ('Vt1', 5, 'Stock1'),
    ('Vt2', 9, 'Stock2'),
    ('Vt2', 1, 'Stock3'),
    ('Vt3', 3, 'Stock1'),
    ('Vt3', 2, 'Stock2'),
    ('Vt3', 7, 'Stock3')

--table tblResult
-- DROP TABLE IF EXISTS #tblResult
-- CREATE TABLE #tblResult
-- (
--     GroupCode nvarchar(50),
--     ItemCode nvarchar(50),
--     ItemName nvarchar(50),
--     Stock1 int,
--     Stock2 int,
--     Stock3 int
-- )

DROP TABLE IF EXISTS #tblcte
;WITH
    cte
    AS

    (
        SELECT ItemCode,
            Stock1, Stock2, Stock3
        FROM(
	SELECT
                [ItemCode],
                [WarehouseCode],
                [Quantity]
            FROM #B30OpenStock
 )AS SOURCETABLE
 PIVOT
 ( 
 SUM(Quantity) FOR WarehouseCode IN (Stock1,Stock2,Stock3)
 )AS PIVOTTABLE
    )-- Insert rows into table '#tblResult' in schema '[dbo]'
SELECT *
INTO #tblcte
FROM cte

SELECT *
INTO #tblResult

FROM(
SELECT GroupCode, [ItemCode], Name,
        [Stock1],
        [Stock2],
        [Stock3]
    FROM #tblcte
        JOIN #B20Item
        ON #tblcte.ItemCode=#B20Item.Code
)AS tbl

SELECT *
FROM #tblResult
INSERT INTO #tblResult
    (Name,Stock1,Stock2,Stock3)
SELECT 'Tong Cong', SUM(Stock1), SUM(Stock2), SUM(Stock3)
FROM #tblResult

-- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'
SELECT *
FROM #tblResult