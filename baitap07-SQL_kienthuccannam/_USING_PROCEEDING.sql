USE TBL 
GO

-- Table to be used by Over Clause Rows/Range

--CREATE TABLE REVENUE
--(
--[DepartmentID] int,
--[Revenue] int,
--[Year] int
--);

--insert into REVENUE
--values (1,10030,1998),(2,20000,1998),(3,40000,1998),
-- (1,20000,1999),(2,60000,1999),(3,50000,1999),
-- (1,40000,2000),(2,40000,2000),(3,60000,2000),
-- (1,30000,2001),(2,30000,2001),(3,70000,2001),
-- (1,90000,2002),(2,20000,2002),(3,80000,2002),
-- (1,10300,2003),(2,1000,2003), (3,90000,2003),
-- (1,10000,2004),(2,10000,2004),(3,10000,2004),
-- (1,20000,2005),(2,20000,2005),(3,20000,2005),
-- (1,40000,2006),(2,30000,2006),(3,30000,2006),
-- (1,70000,2007),(2,40000,2007),(3,40000,2007),
-- (1,50000,2008),(2,50000,2008),(3,50000,2008),
-- (1,20000,2009),(2,60000,2009),(3,60000,2009),
-- (1,30000,2010),(2,70000,2010),(3,70000,2010),
-- (1,80000,2011),(2,80000,2011),(3,80000,2011),
-- (1,10000,2012),(2,90000,2012),(3,90000,2012)

--  SELECT * FROM REVENUE

-- first simple sum and avg aggregates
--SELECT sum(Revenue) as TotalRevenue,
-- avg(Revenue) as AverageRevenue,
-- count(*) as NumRows
-- FROM Revenue;

-- ROWS FOLLOWING
-- SELECT Year, DepartmentID, Revenue,
--  sum(Revenue) OVER (PARTITION by DepartmentID
--  ORDER BY [YEAR]
--  ROWS BETWEEN CURRENT ROW AND 3 FOLLOWING) as CurrentAndNext3
-- FROM REVENUE
-- ORDER BY departmentID, year;

SELECT Year, DepartmentID, Revenue,
    sum(Revenue) OVER (PARTITION by DepartmentID
 ORDER BY [YEAR]
 ROWS UNBOUNDED PRECEDING) as RowsCumulative
--  ,sum(Revenue) OVER (PARTITION by DepartmentID
--  ORDER BY [YEAR]
--  RANGE UNBOUNDED PRECEDING) as RangeCumulative
FROM REVENUE
WHERE year between 2003 and 2008
ORDER BY departmentID, year;