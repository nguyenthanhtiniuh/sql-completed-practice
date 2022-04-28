3.Cho chuỗi có dạng phần cuối là một ký tự bất kỳ, 
phần đầu là một số tự nhiên dưới 100000. 
Hãy tạo chuỗi có dạng phần đầu là một ký tự nói trên, 
phần cuối là một số tự nhiên nói trên được đắp thêm 
các ký tự 0 ở phía trước nó, và phần giữa là ký tự “-”. 
Nếu cho chuỗi “12A” thì chuỗi cần tìm “A-00012”.

begin
declare @str nvarchar(7) = '99999A';
DECLARE @RESULT nvarchar(8);
--select REVERSE(@str) as string
declare @lastLetterOfStr nvarchar= LEFT(REVERSE(@str),1)
--select @lastLetterOfStr as lastletter
declare @positionOfLetter int = CHARINDEX(@lastLetterOfStr,@str)
--select @positionOfLetter as positionofletter

declare @numberInStr int = left(@str,@positionOfLetter-1)
--select @numberInStr as number

SET @RESULT = @lastLetterOfStr+'-'+replace(str(@numberINSTR,7),' ',0)

if @numberInStr<100000
begin
print @RESULT
end
else
begin
print 'number large than 100000';
end
end
--create function mergerstring(@input varchar(7))
--returns varchar(7)
--as
--begin
--declare @lastLetterOfStr nvarchar= LEFT(REVERSE(@input),1)
--declare @positionOfLetter int = CHARINDEX(@lastLetterOfStr,@input)
--declare @numberInStr int = left(@input,@positionOfLetter-1)
--DECLARE @RESULT nvarchar(7) = @lastLetterOfStr+'-'+cast(@numberINSTR as nvarchar(7))
--return @RESULT
--END

--execute [dbo].[mergerstring]


--select left(@str,@positionOfLetter-1) as number
--declare @lastLetterStr char(7) = left(reverse(@str),1) 

--select @lastLetterStr as letter

--declare @lengthOfLetter int = len(@lastLetterStr)

--declare @numberINSTR int = left(@str,@lengthOfLetter) 

--select (@numberINSTR) as numberInStr

--select CAST(@numberINSTR as char(7)) as numbertochar

--DECLARE @RESULT char(7) = @lastLetterStr+'-'+cast(@numberINSTR as nvarchar(7))

--select @RESULT

--select reverse(@str) as daochuoi



--case 
--when @numberINSTR<100000 then 

--when then

--end
