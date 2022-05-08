--1.Tạo chuỗi “Tk LIKE ‘111%’ OR Tk LIKE ‘112%’ OR Tk LIKE ‘131%’” từ chuỗi cho trước “111,112,131”
--CREATE DATABASE TBL
USE TBL
GO

DECLARE @_String VARCHAR(MAX) ='111,112,131'
DECLARE @_Result VARCHAR(MAX) = REPLACE( CONCAT(',',@_String,'%'),',','% TK LIKE ')

SET @_Result = REPLACE( SUBSTRING(@_Result,2,LEN(@_Result)),'%','%,')
select(@_Result)

CREATE TABLE TestString
(
    String NVARCHAR(20)
)
INSERT into TestString
    (String)
SELECT VALUE
FROM string_split(@_Result,',')

select *
from TestString