--1.Tạo chuỗi “Tk LIKE ‘111%’ OR Tk LIKE ‘112%’ OR Tk LIKE ‘131%’” từ chuỗi cho trước “111,112,131”
--CREATE DATABASE TBL
USE TBL

DECLARE @STRING NVARCHAR = '111,112,131'

DECLARE @STRING_INPUT VARCHAR(MAX) ='111,112,131'
DECLARE @RESULT VARCHAR(MAX) = REPLACE( CONCAT(',',@STRING_INPUT,'%'),',','% TK LIKE ')

SET @RESULT = REPLACE( SUBSTRING(@RESULT,2,LEN(@RESULT)),'%','%,')
select(@RESULT)

CREATE TABLE TestString(
    String NVARCHAR(20)
)
INSERT into TestString(String)
SELECT VALUE FROM string_split(@RESULT,',')



select * from TestString