--TIM CAC BANG CO SU DUNG TRONG MOT STORE PROCEDURE
--TIM VIEW CO SU DUNG TRONG MOT STORE PROCEDURE

SELECT DISTINCT sysobjects.name
FROM syscomments
    INNER JOIN sysobjects
    ON syscomments.id=sysobjects.id
WHERE syscomments.text LIKE '%CUSTOMERS%'
