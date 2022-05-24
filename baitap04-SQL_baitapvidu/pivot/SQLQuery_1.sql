CREATE TABLE #tblTest
(
    AREA VARCHAR(10)
,
    LEVEL1 VARCHAR(3)
,
    LEVEL2 VARCHAR(3)
,
    Amount Decimal(5)

)
INSERT #tblTest
VALUES
    ('HR', 'ABC', '', 100)
INSERT #tblTest
VALUES
    ('COMP', 'BCD', '', 200)
INSERT #tblTest
VALUES
    ('TECH', 'CDF', 'A1', 5)
INSERT #tblTest
VALUES
    ('TECH', 'CDF', 'A2', 10)
INSERT #tblTest
VALUES
    ('TECH', 'CDF', 'A3', 15)
INSERT #tblTest
VALUES
    ('OPR', 'DEF', '', 90)


select *
FROM #tblTest