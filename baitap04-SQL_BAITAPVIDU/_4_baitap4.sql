--4-baitap4
--TAO BANG TAM DANH MUC VAT TU #B20ITEM(CODE,NAME,GROUPCODE), VA TON KHO DAU KY #B30OPENSTOCK(ITEMCODE,QUANTITY,WAREHOUSECODE)

--BANG TAM DANH MUC VAT TU
CREATE TABLE #B20ITEM(
_CODE NVARCHAR(50),
_NAME NVARCHAR(50),
_GROUPCODE NVARCHAR(50))

--BANG TON KHO DAU KY
CREATE TABLE #B30OPENSTOCK(
_ITEMCODE NVARCHAR(50),
_QUANTITY INT,
_WAREHOUSECODE NVARCHAR(50))

--TABLE RESULT
CREATE TABLE #RESULT(
_GROUPCODE NVARCHAR(50),
_ITEMCODE NVARCHAR(50),
_ITEMNAME NVARCHAR(50),
_STOCK1 INT,
_STOCK2 INT,
_STOCK3 INT
)