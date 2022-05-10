-- 3.Cho chuỗi có dạng phần cuối là một ký tự bất kỳ, 
-- phần đầu là một số tự nhiên dưới 100000. 
-- Hãy tạo chuỗi có dạng phần đầu là một ký tự nói trên, 
-- phần cuối là một số tự nhiên nói trên được đắp thêm 
-- các ký tự 0 ở phía trước nó, và phần giữa là ký tự “-”. 
-- Nếu cho chuỗi “12A” thì chuỗi cần tìm “A-00012”.

begin
    declare @_StringInput nvarchar(7) = '999999A';
    select @_StringInput

    DECLARE @_Result nvarchar(8);
    --select REVERSE(@_StringInput) as string
    declare @_KytucuoiStringInput nvarchar= LEFT(REVERSE(@_StringInput),1)
    select @_KytucuoiStringInput as KytucuoiStringInput

    declare @_VitriCuaKyTuCuoi int = CHARINDEX(@_KytucuoiStringInput,@_StringInput)
    select @_VitriCuaKyTuCuoi as VitriCuaKyTuCuoi

    declare @_SotachduoctrongStringInput int = (SELECT( left(@_StringInput,@_VitriCuaKyTuCuoi-1)))
    select replace(str(@_SotachduoctrongStringInput,5),' ',0)

    declare @_SotachduocThanhChuoi NVARCHAR(6) = replace(str(@_SotachduoctrongStringInput,5),' ',0)

    SET @_Result = @_KytucuoiStringInput+'-'+@_SotachduocThanhChuoi

    if @_SotachduoctrongStringInput<100000
begin
        print 'So Tach Duoc Trong Chuoi = ' + replace(str(@_SotachduoctrongStringInput,5),' ',0)
        print 'Ket qua Sau Khi Tach = '+ @_Result
    end
else
begin
        print 'So lon hon 100000, khong tach chuoi duoc, moi nhap lai String Input';
    end
end