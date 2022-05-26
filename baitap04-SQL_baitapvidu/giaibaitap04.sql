USE TBL
GO
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
 SUM(Quantity) for WarehouseCode IN (Stock1,Stock2,Stock3)
 )AS PIVOTTABLE
-- group by ItemCode