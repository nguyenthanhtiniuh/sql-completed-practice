USE [B30]
GO
/****** Object:  Table [dbo].[B20Customer]    Script Date: 4/23/2022 11:59:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B20Customer](
	[CustomerCode] [nvarchar](30) NULL,
	[CustomerName] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B20Dept]    Script Date: 4/23/2022 11:59:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B20Dept](
	[DeptCode] [nvarchar](30) NULL,
	[DeptName] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B20Employee]    Script Date: 4/23/2022 11:59:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B20Employee](
	[EmployeeCode] [nvarchar](30) NULL,
	[EmployeeName] [nvarchar](30) NULL,
	[ManagerCode] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B20Item]    Script Date: 4/23/2022 11:59:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B20Item](
	[ItemCode] [nvarchar](30) NULL,
	[ItemName] [nvarchar](40) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B20Prices]    Script Date: 4/23/2022 11:59:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B20Prices](
	[ItemCode] [nvarchar](30) NULL,
	[EffectiveDate] [date] NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B30AccDocSales]    Script Date: 4/23/2022 11:59:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B30AccDocSales](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[ItemCode] [nvarchar](30) NULL,
	[CustomerCode] [nvarchar](30) NULL,
	[Employeecode] [nvarchar](30) NULL,
	[DeptCode] [nvarchar](30) NULL,
	[Quantity] [int] NULL,
	[Amount] [int] NULL,
	[DocDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'ALFKI', N'Maria Anders')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'ANATR', N'Ana Trujillo')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'ANTON', N'Antonio Moreno')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'AROUT', N'Thomas Hardy')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'BERGS', N'Christina Berglund')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'BLAUS', N'Hanna Moos')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'BLONP', N'Frédérique Citeaux')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'BOLID', N'Martín Sommer')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'BONAP', N'Laurence Lebihan')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'BOTTM', N'Elizabeth Lincoln')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'BSBEV', N'Victoria Ashworth')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'CACTU', N'Patricio Simpson')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'CENTC', N'Francisco Chang')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'CHOPS', N'Yang Wang')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'COMMI', N'Pedro Afonso')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'CONSH', N'Elizabeth Brown')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'DRACD', N'Sven Ottlieb')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'DUMON', N'Janine Labrune')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'EASTC', N'Ann Devon')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'ERNSH', N'Roland Mendel')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'FAMIA', N'Aria Cruz')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'FISSA', N'Diego Roel')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'FOLIG', N'Martine Rancé')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'FOLKO', N'Maria Larsson')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'FRANK', N'Peter Franken')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'FRANR', N'Carine Schmitt')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'FRANS', N'Paolo Accorti')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'FURIB', N'Lino Rodriguez')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'GALED', N'Eduardo Saavedra')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'GODOS', N'José Pedro Freyre')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'GOURL', N'André Fonseca')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'GREAL', N'Howard Snyder')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'GROSR', N'Manuel Pereira')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'HANAR', N'Mario Pontes')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'HILAA', N'Carlos Hernández')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'HUNGC', N'Yoshi Latimer')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'HUNGO', N'Patricia McKenna')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'ISLAT', N'Helen Bennett')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'KOENE', N'Philip Cramer')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'LACOR', N'Daniel Tonini')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'LAMAI', N'Annette Roulet')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'LAUGB', N'Yoshi Tannamuri')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'LAZYK', N'John Steel')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'LEHMS', N'Renate Messner')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'LETSS', N'Jaime Yorres')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'LILAS', N'Carlos González')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'LINOD', N'Felipe Izquierdo')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'LONEP', N'Fran Wilson')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'MAGAA', N'Giovanni Rovelli')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'MAISD', N'Catherine Dewey')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'MEREP', N'Jean Fresnière')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'MORGK', N'Alexander Feuer')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'NORTS', N'Simon Crowther')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'OCEAN', N'Yvonne Moncada')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'OLDWO', N'Rene Phillips')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'OTTIK', N'Henriette Pfalzheim')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'PARIS', N'Marie Bertrand')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'PERIC', N'Guillermo Fernández')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'PICCO', N'Georg Pipps')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'PRINI', N'Isabel de Castro')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'QUEDE', N'Bernardo Batista')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'QUEEN', N'Lúcia Carvalho')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'QUICK', N'Horst Kloss')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'RANCH', N'Sergio Gutiérrez')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'RATTC', N'Paula Wilson')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'REGGC', N'Maurizio Moroni')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'RICAR', N'Janete Limeira')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'RICSU', N'Michael Holz')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'ROMEY', N'Alejandra Camino')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'SANTG', N'Jonas Bergulfsen')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'SAVEA', N'Jose Pavarotti')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'SEVES', N'Hari Kumar')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'SIMOB', N'Jytte Petersen')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'SPECD', N'Dominique Perrier')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'SPLIR', N'Art Braunschweiger')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'SUPRD', N'Pascale Cartrain')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'THEBI', N'Liz Nixon')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'THECR', N'Liu Wong')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'TOMSP', N'Karin Josephs')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'TORTU', N'Miguel Angel Paolino')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'TRADH', N'Anabela Domingues')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'TRAIH', N'Helvetius Nagy')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'VAFFE', N'Palle Ibsen')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'VICTE', N'Mary Saveley')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'VINET', N'Paul Henriot')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'WANDK', N'Rita Müller')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'WARTH', N'Pirkko Koskitalo')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'WELLI', N'Paula Parente')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'WHITC', N'Karl Jablonski')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'WILMK', N'Matti Karttunen')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'WOLZA', N'Zbyszek Piestrzeniewicz')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'ALFKI', N'Maria Anders')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'ANATR', N'Ana Trujillo')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'ANTON', N'Antonio Moreno')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'AROUT', N'Thomas Hardy')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'BERGS', N'Christina Berglund')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'BLAUS', N'Hanna Moos')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'BLONP', N'Frédérique Citeaux')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'BOLID', N'Martín Sommer')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'BONAP', N'Laurence Lebihan')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'BOTTM', N'Elizabeth Lincoln')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'BSBEV', N'Victoria Ashworth')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'CACTU', N'Patricio Simpson')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'CENTC', N'Francisco Chang')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'CHOPS', N'Yang Wang')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'COMMI', N'Pedro Afonso')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'CONSH', N'Elizabeth Brown')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'DRACD', N'Sven Ottlieb')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'DUMON', N'Janine Labrune')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'EASTC', N'Ann Devon')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'ERNSH', N'Roland Mendel')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'FAMIA', N'Aria Cruz')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'FISSA', N'Diego Roel')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'FOLIG', N'Martine Rancé')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'FOLKO', N'Maria Larsson')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'FRANK', N'Peter Franken')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'FRANR', N'Carine Schmitt')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'FRANS', N'Paolo Accorti')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'FURIB', N'Lino Rodriguez')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'GALED', N'Eduardo Saavedra')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'GODOS', N'José Pedro Freyre')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'GOURL', N'André Fonseca')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'GREAL', N'Howard Snyder')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'GROSR', N'Manuel Pereira')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'HANAR', N'Mario Pontes')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'HILAA', N'Carlos Hernández')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'HUNGC', N'Yoshi Latimer')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'HUNGO', N'Patricia McKenna')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'ISLAT', N'Helen Bennett')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'KOENE', N'Philip Cramer')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'LACOR', N'Daniel Tonini')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'LAMAI', N'Annette Roulet')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'LAUGB', N'Yoshi Tannamuri')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'LAZYK', N'John Steel')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'LEHMS', N'Renate Messner')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'LETSS', N'Jaime Yorres')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'LILAS', N'Carlos González')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'LINOD', N'Felipe Izquierdo')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'LONEP', N'Fran Wilson')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'MAGAA', N'Giovanni Rovelli')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'MAISD', N'Catherine Dewey')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'MEREP', N'Jean Fresnière')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'MORGK', N'Alexander Feuer')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'NORTS', N'Simon Crowther')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'OCEAN', N'Yvonne Moncada')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'OLDWO', N'Rene Phillips')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'OTTIK', N'Henriette Pfalzheim')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'PARIS', N'Marie Bertrand')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'PERIC', N'Guillermo Fernández')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'PICCO', N'Georg Pipps')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'PRINI', N'Isabel de Castro')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'QUEDE', N'Bernardo Batista')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'QUEEN', N'Lúcia Carvalho')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'QUICK', N'Horst Kloss')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'RANCH', N'Sergio Gutiérrez')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'RATTC', N'Paula Wilson')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'REGGC', N'Maurizio Moroni')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'RICAR', N'Janete Limeira')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'RICSU', N'Michael Holz')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'ROMEY', N'Alejandra Camino')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'SANTG', N'Jonas Bergulfsen')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'SAVEA', N'Jose Pavarotti')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'SEVES', N'Hari Kumar')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'SIMOB', N'Jytte Petersen')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'SPECD', N'Dominique Perrier')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'SPLIR', N'Art Braunschweiger')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'SUPRD', N'Pascale Cartrain')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'THEBI', N'Liz Nixon')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'THECR', N'Liu Wong')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'TOMSP', N'Karin Josephs')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'TORTU', N'Miguel Angel Paolino')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'TRADH', N'Anabela Domingues')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'TRAIH', N'Helvetius Nagy')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'VAFFE', N'Palle Ibsen')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'VICTE', N'Mary Saveley')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'VINET', N'Paul Henriot')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'WANDK', N'Rita Müller')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'WARTH', N'Pirkko Koskitalo')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'WELLI', N'Paula Parente')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'WHITC', N'Karl Jablonski')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'WILMK', N'Matti Karttunen')
GO
INSERT [dbo].[B20Customer] ([CustomerCode], [CustomerName]) VALUES (N'WOLZA', N'Zbyszek Piestrzeniewicz')
GO
INSERT [dbo].[B20Employee] ([EmployeeCode], [EmployeeName], [ManagerCode]) VALUES (N'tin98', N'NGUYEN THANH TIN', N'anhnhanQLanhtrungQL')
GO
INSERT [dbo].[B20Employee] ([EmployeeCode], [EmployeeName], [ManagerCode]) VALUES (N'anhnhanQL', N'ANH NHAN', N'anhtrungQLanhhuyTP')
GO
INSERT [dbo].[B20Employee] ([EmployeeCode], [EmployeeName], [ManagerCode]) VALUES (N'anhtrungQL', N'ANH TRUNG', N'anhhuyTPanhPhucPGDTK')
GO
INSERT [dbo].[B20Employee] ([EmployeeCode], [EmployeeName], [ManagerCode]) VALUES (N'anhhuyTP', N'ANH HUY', NULL)
GO
INSERT [dbo].[B20Employee] ([EmployeeCode], [EmployeeName], [ManagerCode]) VALUES (NULL, N'ANH PHUC', NULL)
GO
INSERT [dbo].[B20Employee] ([EmployeeCode], [EmployeeName], [ManagerCode]) VALUES (N'chingoanql', N'CHI NGOAN', N'anhhuyTP')
GO
INSERT [dbo].[B20Employee] ([EmployeeCode], [EmployeeName], [ManagerCode]) VALUES (N'anhtungql', N'ANH TUNG', NULL)
GO
INSERT [dbo].[B20Employee] ([EmployeeCode], [EmployeeName], [ManagerCode]) VALUES (N'anhtanql', N'ANH TAN', NULL)
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'1', N'Chai')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'2', N'Chang')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'3', N'Aniseed Syrup')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'4', N'Chef Anton''s Cajun Seasoning')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'5', N'Chef Anton''s Gumbo Mix')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'6', N'Grandma''s Boysenberry Spread')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'7', N'Uncle Bob''s Organic Dried Pears')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'8', N'Northwoods Cranberry Sauce')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'9', N'Mishi Kobe Niku')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'10', N'Ikura')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'11', N'Queso Cabrales')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'12', N'Queso Manchego La Pastora')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'13', N'Konbu')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'14', N'Tofu')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'15', N'Genen Shouyu')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'16', N'Pavlova')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'17', N'Alice Mutton')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'18', N'Carnarvon Tigers')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'19', N'Teatime Chocolate Biscuits')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'20', N'Sir Rodney''s Marmalade')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'21', N'Sir Rodney''s Scones')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'22', N'Gustaf''s Knäckebröd')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'23', N'Tunnbröd')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'24', N'Guaraná Fantástica')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'25', N'NuNuCa Nuß-Nougat-Creme')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'26', N'Gumbär Gummibärchen')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'27', N'Schoggi Schokolade')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'28', N'Rössle Sauerkraut')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'29', N'Thüringer Rostbratwurst')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'30', N'Nord-Ost Matjeshering')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'31', N'Gorgonzola Telino')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'32', N'Mascarpone Fabioli')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'33', N'Geitost')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'34', N'Sasquatch Ale')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'35', N'Steeleye Stout')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'36', N'Inlagd Sill')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'37', N'Gravad lax')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'38', N'Côte de Blaye')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'39', N'Chartreuse verte')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'40', N'Boston Crab Meat')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'41', N'Jack''s New England Clam Chowder')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'42', N'Singaporean Hokkien Fried Mee')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'43', N'Ipoh Coffee')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'44', N'Gula Malacca')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'45', N'Rogede sild')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'46', N'Spegesild')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'47', N'Zaanse koeken')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'48', N'Chocolade')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'49', N'Maxilaku')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'50', N'Valkoinen suklaa')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'51', N'Manjimup Dried Apples')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'52', N'Filo Mix')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'53', N'Perth Pasties')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'54', N'Tourtière')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'55', N'Pâté chinois')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'56', N'Gnocchi di nonna Alice')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'57', N'Ravioli Angelo')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'58', N'Escargots de Bourgogne')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'59', N'Raclette Courdavault')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'60', N'Camembert Pierrot')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'61', N'Sirop d''érable')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'62', N'Tarte au sucre')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'63', N'Vegie-spread')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'64', N'Wimmers gute Semmelknödel')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'65', N'Louisiana Fiery Hot Pepper Sauce')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'66', N'Louisiana Hot Spiced Okra')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'67', N'Laughing Lumberjack Lager')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'68', N'Scottish Longbreads')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'69', N'Gudbrandsdalsost')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'70', N'Outback Lager')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'71', N'Flotemysost')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'72', N'Mozzarella di Giovanni')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'73', N'Röd Kaviar')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'74', N'Longlife Tofu')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'75', N'Rhönbräu Klosterbier')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'76', N'Lakkalikööri')
GO
INSERT [dbo].[B20Item] ([ItemCode], [ItemName]) VALUES (N'77', N'Original Frankfurter grüne Soße')
GO
SET IDENTITY_INSERT [dbo].[B30AccDocSales] ON 
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (1, N'1', N'FURIB', N'tin98', N'1', 0, 500, CAST(N'2000-05-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (2, N'2', N'ANATR', N'tin98', NULL, 12, 100, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (3, N'3', N'ANTON', N'tin98', NULL, 10, 200, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (4, N'4', N'ALFKI', N'tin98', NULL, 5, 300, CAST(N'2014-07-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (5, N'5', N'ALFKI', N'tin98', NULL, 9, 100, CAST(N'2014-07-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (6, N'6', N'ALFKI', N'tin98', NULL, 40, 5000, CAST(N'2014-07-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (7, N'7', N'ALFKI', N'tin98', NULL, 0, 1000, CAST(N'2014-06-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (8, N'8', N'ALFKI', N'tin98', NULL, 0, 500, CAST(N'2013-12-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (9, N'9', N'ALFKI', N'tin98', NULL, 0, 1000, CAST(N'2014-04-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (10, N'10', N'ALFKI', N'tin98', NULL, 0, 3000, CAST(N'2014-03-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (11, N'11', N'ALFKI', N'tin98', NULL, 4, 3000, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (12, N'12', N'ALFKI', N'tin98', NULL, 20, 5000, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (13, N'13', N'ANATR', N'tin98', NULL, 0, 7000, CAST(N'2014-12-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (14, N'14', N'ANATR', N'tin98', NULL, 25, 4000, CAST(N'2014-11-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (15, N'15', N'ANATR', N'tin98', NULL, 40, 5000, CAST(N'2014-10-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (16, N'1', N'ANATR', N'tin98', NULL, 20, 3000, CAST(N'2014-09-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (17, N'2', N'ANATR', N'anhnhan', NULL, 42, 2000, CAST(N'2014-08-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (18, N'3', N'ANTON', N'anhnhan', NULL, 40, 2000, CAST(N'2014-07-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (19, N'4', N'ANTON', N'anhnhan', NULL, 15, 1000, CAST(N'2014-06-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (20, N'5', N'ANTON', N'anhnhan', NULL, 21, 2000, CAST(N'2014-05-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (21, N'6', N'AROUT', N'anhnhan', NULL, 21, 3000, CAST(N'2014-04-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (22, N'7', N'AROUT', N'anhnhan', NULL, 20, 4000, CAST(N'2014-03-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (23, N'8', N'AROUT', N'anhnhan', NULL, 35, 5000, CAST(N'2015-05-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (24, N'9', N'AROUT', N'anhtrung', NULL, 25, 100, CAST(N'2016-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (25, N'10', N'BERGS', N'anhtrung', NULL, 30, 5000, CAST(N'2018-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (26, N'11', N'BERGS', N'anhtrung', NULL, 15, 5000, CAST(N'2014-05-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (27, N'12', N'BERGS', N'anhtrung', NULL, 12, 5000, CAST(N'2014-05-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (28, N'13', N'BERGS', N'anhtrung', NULL, 25, 5000, CAST(N'2014-05-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (29, N'14', N'BERGS', N'anhtrung', NULL, 6, 5000, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (30, N'15', N'BLAUS', N'anhhuy', NULL, 15, 5000, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (31, N'1', N'BLAUS', N'anhhuy', NULL, 50, 5000, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (32, N'2', N'BLAUS', N'anhhuy', NULL, 65, 1000, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (33, N'3', N'BLAUS', N'anhhuy', NULL, 6, 1000, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (34, N'4', N'BLAUS', N'anhhuy', NULL, 10, 1000, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (35, N'5', N'BLAUS', N'anhhuy', NULL, 1, 1000, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (36, N'6', N'BLONP', N'anhhuy', NULL, 16, 1000, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (37, N'7', N'BLONP', N'98033', NULL, 50, 1000, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (38, N'8', N'BLONP', N'98033', NULL, 15, 1000, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (39, N'9', N'BLONP', N'98033', NULL, 21, 1000, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (40, N'10', N'BLONP', N'98033', NULL, 20, 500, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (41, N'11', N'BOLID', N'98033', NULL, 20, 500, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (42, N'12', N'BOLID', N'98033', NULL, 12, 500, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (43, N'13', N'BOLID', N'98033', NULL, 65, 500, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (44, N'14', N'BOLID', N'98033', NULL, 65, 500, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (45, N'15', N'BOLID', N'98122', NULL, 65, 500, CAST(N'2014-07-02' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (46, N'1', N'BONAP', N'98122', NULL, 65, 500, CAST(N'2014-07-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (47, N'2', N'BONAP', N'98122', NULL, 65, 500, CAST(N'2014-07-02' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (48, N'3', N'BONAP', N'98122', NULL, 65, 500, CAST(N'2014-07-02' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (49, N'4', N'BONAP', N'98122', NULL, 65, 0, CAST(N'2014-07-02' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (2161, N'5', N'NNN', N'toan', NULL, 0, 0, CAST(N'2014-06-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales] ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate]) VALUES (2162, N'7', N'NNN', N'toan', NULL, 5, NULL, CAST(N'2014-07-02' AS Date))
GO
SET IDENTITY_INSERT [dbo].[B30AccDocSales] OFF
GO
