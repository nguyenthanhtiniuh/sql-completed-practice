use TBL 
GO
--DANH MUC VAT TU
IF OBJECT_ID('DMVT') IS NOT NULL DROP TABLE DMVT
CREATE TABLE DMVT
(
    MA_VT VARCHAR(16),
    TEN_VL VARCHAR(128)
)
INSERT INTO DMVT
VALUES
    ('G', 'GHE'),
    ('B', 'BAN'),
    ('X', 'XE'),
    ('T', 'TUI'),
    ('V', 'VAI')
--DANH MUC DT
IF OBJECT_ID('DMDT') IS NOT NULL DROP TABLE DMDT
CREATE TABLE DMDT
(
    MA_DT VARCHAR(16),
    TEN_DT NVARCHAR(128)
)
-- TRUNCATE TABLE #DMVT

INSERT INTO DMDT
VALUES
    ('VT001', 'D TU 001'),
    ('DT002', 'D TU 002'),
    ('DT003', 'D TU 003'),
    ('DT004', 'D TU 004'),
    ('DT005', 'D TU 005'),
    ('DT006', 'D TU 006')
SELECT *
FROM DMDT

-- DANH MUC BAN HANG
IF OBJECT_ID('BANHANG') IS NOT NULL DROP TABLE BANHANG
CREATE TABLE BANHANG
(
    NGAY_CT SMALLDATETIME,
    SO_CT VARCHAR(20),
    MA_DT VARCHAR(16),
    MA_VT VARCHAR(16),
    SO_LUONG NUMERIC(18,2),
    TIEN NUMERIC(18)
)

-- INSERT INTO BANHANG
-- VALUES
-- ((SELECT CAST('2013-01-07 12:35:00' AS smalldatetime)),'AA','VT001','G',5,100000),
-- ((SELECT CAST('2013-01-06 12:35:00' AS smalldatetime)),'AA','VT002','G',5,100000),
-- ((SELECT CAST('2013-01-05 12:35:00' AS smalldatetime)),'AA','VT003','G',5,100000),
-- ((SELECT CAST('2013-01-04 12:35:00' AS smalldatetime)),'AA','VT004','G',5,100000),
-- ((SELECT CAST('2013-01-03 12:35:00' AS smalldatetime)),'AA','VT005','G',5,100000),
-- ((SELECT CAST('2013-01-02 12:35:00' AS smalldatetime)),'AA','VT006','G',5,100000),
-- ((SELECT CAST('2013-01-01 12:35:00' AS smalldatetime)),'AA','VT001','G',9,1200000),
-- ((SELECT CAST('2013-01-05 12:35:00' AS smalldatetime)),'AA','VT001','G',10,1400000),
-- ((SELECT CAST('2013-01-20 12:35:00' AS smalldatetime)),'AA','VT001','G',11,100000),
-- ((SELECT CAST('2013-01-10 12:35:00' AS smalldatetime)),'AA','VT001','G',12,1500000),
-- ((SELECT CAST('2013-01-30 12:35:00' AS smalldatetime)),'AA','VT001','G',5,1600000)
INSERT INTO BANHANG
VALUES
    ((SELECT CAST('2014-01-10 12:35:00' AS smalldatetime)), 'AA', 'VT002', 'B', 22, 1500000),
    ((SELECT CAST('2014-02-10 12:35:00' AS smalldatetime)), 'AA', 'VT002', 'B', 22, 1500000),
    ((SELECT CAST('2014-03-10 12:35:00' AS smalldatetime)), 'AA', 'VT002', 'B', 22, 1500000),
    ((SELECT CAST('2014-04-10 12:35:00' AS smalldatetime)), 'AA', 'VT002', 'B', 22, 1500000),
    ((SELECT CAST('2013-01-10 12:35:00' AS smalldatetime)), 'AA', 'VT003', 'X', 1, 1500000),
    ((SELECT CAST('2013-02-10 12:35:00' AS smalldatetime)), 'AA', 'VT003', 'X', 2, 1500000),
    ((SELECT CAST('2013-03-10 12:35:00' AS smalldatetime)), 'AA', 'VT003', 'X', 5, 1500000),
    ((SELECT CAST('2013-04-10 12:35:00' AS smalldatetime)), 'AA', 'VT003', 'X', 15, 1500000)

SELECT *
FROM BANHANG

