--4B--THEM DU LIEU NGAU NHIEN 50 MAT HANG VOI MA SO NGAU NHIEN THEO QUY TAC: 
--KY TU DAU LA "I" VA 4 KY TU SAU NGAU NHIEN TRONG KHOAN TU "0001" - "9999"
use B30
GO


BEGIN
    DECLARE @_BeginOfRandomRange INT;
    DECLARE @_EndOfRandomRange INT;

    SET @_BeginOfRandomRange = 1
    SET @_EndOfRandomRange = 9999

    DECLARE @_Count INT =1;

    WHILE @_Count<=50
BEGIN
        INSERT INTO B20Item
            (ItemCode)
        VALUES
            ('I' + cast( @_BeginOfRandomRange + FLOOR(RAND() * (@_EndOfRandomRange + 1 - @_BeginOfRandomRange))as nvarchar))
        SET @_Count=@_Count+1
    END
END


DELETE top(50) from B20Item
WHERE ItemName is NULL

select *
FROM B20Item
ORDER by ItemCode DESC

select *
FROM B20Item