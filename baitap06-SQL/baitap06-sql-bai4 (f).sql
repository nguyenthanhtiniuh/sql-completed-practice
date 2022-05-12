USE B30
GO
--INSERT INTO B20Prices(Amount,EffectiveDate,ItemCode)
--VALUES((floor(rand()*(2000-500))*1000+500000),'20140101',(SELECT ItemCode FROM B20Item));
INSERT INTO B20Prices
    (ItemCode)
(SELECT ItemCode
FROM B20Item)
go
DECLARE @A INT =1
DECLARE @B INT =9999
INSERT INTO B20Prices
    (ItemCode,EffectiveDate,Amount)
VALUES
    (('I' + cast( @A + FLOOR(RAND() * (@B + 1 - @A))as nvarchar)), '20150101', (floor(rand()*(2000-500))*1000+500000))
GO

--INSERT 50 RANDOM ITEM WITH (ITEMCODE = KY TU DAU LA "I" VA 4 KY TU SAU NGAU NHIEN TRONG KHOAN TU "0001" - "9999")
--EFFECTIVEDATE =2015-01-01
--AMOUNT LA GIA NGAU NHIEN KHONG DUOI 500000
--VA KHONG LON HON 2000000. GIA BAN LA BOI SO CUA 1000
DECLARE @COUNT INT=1
DECLARE @A INT =1
DECLARE @B INT =9999
WHILE @COUNT<=50
BEGIN
    INSERT INTO B20Prices
        (ItemCode,EffectiveDate,Amount)
    VALUES
        (('I' + cast( @A + FLOOR(RAND() * (@B + 1 - @A))as nvarchar)), '20140101', (floor(rand()*(2000-500))*1000+500000))
    SET @COUNT=@COUNT+1
END
GO

SELECT COUNT(ItemCode)
FROM B20Prices
SELECT *
FROM B20Prices

--4F--BO SUNG CAC GIA BAN CUA CAC MAT HANG CHUA KHAI BAO GIA BAN
--VAO NGAY 01012015, GIA BAN MOI BANG GIA BAN GAN NHAT
--TRUOC NGAY 01012015 VA CONG THEM 10%
INSERT INTO B20Prices
    (Amount)
--SELECT Amount FROM B20Prices WHERE EffectiveDate='20150101'
SELECT Amount+Amount*10/100 AS NEW_AMOUNT
FROM B20Prices
WHERE EffectiveDate='20150101'

DECLARE @GIABANTRUOC INT;

--TRUNCATE TABLE B20PRICES

