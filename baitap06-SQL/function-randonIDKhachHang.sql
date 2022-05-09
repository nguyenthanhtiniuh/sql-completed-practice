USE B30
GO
CREATE FUNCTION RandCharIdKhachHang()
RETURNS CHAR
as
BEGIN
    DECLARE @_BeginNumberCharInASCII INT=65;
    DECLARE @_EndNumberCharInASCII INT=90;
    --DEC HEX CHAR
    --65  41  A
    --90 5A  Z

    DECLARE @_BeginNumberInRangeToRanDom INT = 0001
    DECLARE @_EndNumberInRangeToRanDom INT = 9999

    RETURN(select CHAR(RAND()*(@_EndNumberCharInASCII-@_BeginNumberCharInASCII)+@_BeginNumberCharInASCII) 
 + cast(Cast(RAND()*(@_EndNumberInRangeToRanDom-@_BeginNumberInRangeToRanDom)+@_BeginNumberInRangeToRanDom as int)as char))
END