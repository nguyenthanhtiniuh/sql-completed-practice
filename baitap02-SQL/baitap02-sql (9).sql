--4-9
USE testdb
GO
DROP TABLE IF EXISTS tblResource
CREATE TABLE tblResource
(
    Class nvarchar(50),
    A INT,
    B INT,
    C INT,
    D INT
)

INSERT INTO tblResource
VALUES
    ('F1', 100, 100, NULL, NULL),
    ('F2', NULL, NULL, 520, 300),
    ('F3', 150, NULL, NULL, 120)
SELECT *
FROM tblResource

SELECT [Class],
    [Code],
    [VALUE]
FROM
    (SELECT [Class],
        [A],
        [B],
        [C],
        [D]
    FROM tblResource) as p
UNPIVOT(
    VALUE FOR [Code] In (A,B,C,D)
) as unpvt;
go

