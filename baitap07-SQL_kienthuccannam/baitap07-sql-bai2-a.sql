USE B30
GO
--2-Cho 2 bang du lieu bat ky tu mot database do nguoi dung tao va mot database tempdb khong dong cau truc
--a. Lay du lieu phan du lieu chung (cac cot cung ten, neu co) cua 2 bang.
IF OBJECT_ID('tempdb..#MSSQLTips') IS NOT NULL DROP TABLE #MSSQLTips
CREATE TABLE #MSSQLTips
(
    RowID int,
    CustomerCode nvarchar(30)
    --CustomerName INT
);

INSERT INTO #MSSQLTips
VALUES
    (1, 'ALFKI')
,
    (2, 'ANATR')
,
    (3, 'ANTON')
,
    (4, 'AROUT')
,
    (5, 'BERGS')
,
    (6, 'NTT')
,
    (7, 'BERGSNTT')

--SELECT * FROM #MSSQLTips
--lay du lieu chung cua 2 bang voi tu khoa INTERSECT
    SELECT CustomerCode
    FROM #MSSQLTips
INTERSECT
    SELECT CustomerCode
    FROM B20Customer