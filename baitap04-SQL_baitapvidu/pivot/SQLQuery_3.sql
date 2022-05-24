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


;with
    cte
    as

    (
        select AREA, case when LEVEL2='' then LEVEL1 else LEVEL2 end rn, Amount
        from #tblTest
    )
     ,
    cte2
    as
    (
        select *
        from (select AREA, rn, Amount
            from cte) as t  
     pivot (max(Amount) for rn in (ABC,BCD,A1,A2,A3,DEF)) as p
    )
     ,
    cte3
    as
    (
        select *, case when AREA='HR' then 1
                   when AREA='COMP'then 2
        when AREA='TECH'then 3
        when AREA='OPR'then 4
        end rn
        from cte2
    )

select AREA, ABC, BCD, A1, A2, A3, DEF
from cte3
order by rn

drop table #tblTest