-- 3.Cho chuỗi có dạng phần cuối là một ký tự bất kỳ, 
-- phần đầu là một số tự nhiên dưới 100000. 
-- Hãy tạo chuỗi có dạng phần đầu là một ký tự nói trên, 
-- phần cuối là một số tự nhiên nói trên được đắp thêm 
-- các ký tự 0 ở phía trước nó, và phần giữa là ký tự “-”. 
-- Nếu cho chuỗi “12A” thì chuỗi cần tìm “A-00012”.

BEGIN
    DECLARE @_StringInput nvarchar(7) = '999999A';
    SELECT @_StringInput

    DECLARE @_Result nvarchar(8);
    --SELECT REVERSE(@_StringInput) as string
    DECLARE @_KytucuoiStringInput nvarchar= LEFT(REVERSE(@_StringInput),1)
    SELECT @_KytucuoiStringInput as KytucuoiStringInput

    DECLARE @_VitriCuaKyTuCuoi int = CHARINDEX(@_KytucuoiStringInput,@_StringInput)
    SELECT @_VitriCuaKyTuCuoi as VitriCuaKyTuCuoi

    DECLARE @_SotachduoctrongStringInput int = (SELECT( left(@_StringInput,@_VitriCuaKyTuCuoi-1)))
    SELECT replace(str(@_SotachduoctrongStringInput,5),' ',0)

    DECLARE @_SotachduocThanhChuoi NVARCHAR(6) = replace(str(@_SotachduoctrongStringInput,5),' ',0)

    SET @_Result = @_KytucuoiStringInput+'-'+@_SotachduocThanhChuoi

    IF @_SotachduoctrongStringInput<100000
BEGIN
        PRINT 'So Tach Duoc Trong Chuoi = ' + replace(str(@_SotachduoctrongStringInput,5),' ',0)
        PRINT 'Ket qua Sau Khi Tach = '+ @_Result
    END
ELSE
BEGIN
        PRINT 'So lon hon 100000, khong tach chuoi duoc, moi nhap lai String Input';
    END
END