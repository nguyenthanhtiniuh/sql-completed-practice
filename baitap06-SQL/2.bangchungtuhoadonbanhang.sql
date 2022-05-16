drop table if exists [B30AccDocDetail]
create table [B30AccDocDetail](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[DocDate] [date] NULL,
	[DocNo] [date] NULL,
	[CustomerCode] [nvarchar](30) NULL,
	ItemCode nvarchar(30) null,	
	[Quantity] [int] NULL,
	Price int null,
	[Amount] [int] NULL,
)