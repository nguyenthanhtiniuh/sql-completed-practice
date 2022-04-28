--4-9
USE TBL
GO
CREATE TABLE #tblResource(
Class nvarchar(50),
A INT,
B INT,
C INT,
D INT)

-- TRUNCATE TABLE tblResource

INSERT INTO #tblResource
VALUES ('F1',100,100,NULL,NULL),
('F2',NULL,NULL,220,300),
('F3',150,NULL,NULL,120)

SELECT * FROM #tblResource

-- DECLARE @DEL INT =1,@TRING NVARCHAR(MAX) = ''
-- WHILE (SELECT TOP 1 1 FROM #tblResource) = 1
-- BEGIN 
-- SELECT TOP 1 CLASS
-- FROM #tblResource
-- ORDER by class
-- END



-- SELECT name FROM sys.columns WHERE object_id = OBJECT_ID('#tblResource')