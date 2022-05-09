USE [B30]
GO
/****** Object:  UserDefinedFunction [dbo].[RandNumber]    Script Date: 5/9/2022 11:17:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[RandNumber]() 
RETURNS INT 
AS 
  BEGIN
    RETURN (SELECT RandNumber
    FROM vRandNumber)
END 
GO
/****** Object:  Table [dbo].[B30AccDocSales]    Script Date: 5/9/2022 11:17:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B30AccDocSales]
(
    [STT] [int] IDENTITY(1,1) NOT NULL,
    [ItemCode] [nvarchar](30) NULL,
    [CustomerCode] [nvarchar](30) NULL,
    [Employeecode] [nvarchar](30) NULL,
    [DeptCode] [nvarchar](40) NULL,
    [Quantity] [int] NULL,
    [Amount] [int] NULL,
    [DocDate] [date] NULL,
    PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_ToDoList]    Script Date: 5/9/2022 11:17:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_ToDoList]
AS
    SELECT *
    FROM B30AccDocSales
GO
/****** Object:  View [dbo].[vRandNumber]    Script Date: 5/9/2022 11:17:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vRandNumber]
AS
    SELECT floor(RAND()*50) as RandNumber 
GO
/****** Object:  Table [dbo].[B20Customer]    Script Date: 5/9/2022 11:17:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B20Customer]
(
    [CustomerCode] [nvarchar](30) NULL,
    [CustomerName] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B20Dept]    Script Date: 5/9/2022 11:17:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B20Dept]
(
    [DeptCode] [nvarchar](30) NULL,
    [DeptName] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B20Employee]    Script Date: 5/9/2022 11:17:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B20Employee]
(
    [EmployeeCode] [nvarchar](30) NULL,
    [EmployeeName] [nvarchar](30) NULL,
    [ManagerCode] [nvarchar](100) NULL,
    [ItemCode] [nvarchar](10) NULL,
    [DeptCode] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B20Item]    Script Date: 5/9/2022 11:17:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B20Item]
(
    [ItemCode] [nvarchar](30) NULL,
    [ItemName] [nvarchar](40) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B20Prices]    Script Date: 5/9/2022 11:17:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B20Prices]
(
    [ItemCode] [nvarchar](30) NULL,
    [EffectiveDate] [date] NULL,
    [Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/9/2022 11:17:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer]
(
    [_ID] [int] IDENTITY(1,1) NOT NULL,
    [_NAME] [nvarchar](40) NULL,
    [_AGE] [int] NULL,
    [_ADDRESS] [nvarchar](200) NULL,
    [_SALARY] [numeric](10, 2) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'ALFKI', N'Maria Anders')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'ANATR', N'Ana Trujillo')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'ANTON', N'Antonio Moreno')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'A3', NULL)
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'A9', NULL)
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'A2', NULL)
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'A8', NULL)
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'A4', NULL)
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'A6', NULL)
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'A1', NULL)
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'A7', NULL)
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'A10', NULL)
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'A5', NULL)
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'AROUT', N'Thomas Hardy')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'BERGS', N'Christina Berglund')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'BLAUS', N'Hanna Moos')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'BLONP', N'Frédérique Citeaux')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'BOLID', N'Martín Sommer')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'BONAP', N'Laurence Lebihan')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'BOTTM', N'Elizabeth Lincoln')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'BSBEV', N'Victoria Ashworth')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'CACTU', N'Patricio Simpson')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'CENTC', N'Francisco Chang')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'CHOPS', N'Yang Wang')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'COMMI', N'Pedro Afonso')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'CONSH', N'Elizabeth Brown')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'DRACD', N'Sven Ottlieb')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'DUMON', N'Janine Labrune')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'EASTC', N'Ann Devon')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'ERNSH', N'Roland Mendel')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'FAMIA', N'Aria Cruz')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'FISSA', N'Diego Roel')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'FOLIG', N'Martine Rancé')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'FOLKO', N'Maria Larsson')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'FRANK', N'Peter Franken')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'FRANR', N'Carine Schmitt')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'FRANS', N'Paolo Accorti')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'FURIB', N'Lino Rodriguez')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'GALED', N'Eduardo Saavedra')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'GODOS', N'José Pedro Freyre')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'GOURL', N'André Fonseca')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'GREAL', N'Howard Snyder')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'GROSR', N'Manuel Pereira')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'HANAR', N'Mario Pontes')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'HILAA', N'Carlos Hernández')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'HUNGC', N'Yoshi Latimer')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'HUNGO', N'Patricia McKenna')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'ISLAT', N'Helen Bennett')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'KOENE', N'Philip Cramer')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'LACOR', N'Daniel Tonini')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'LAMAI', N'Annette Roulet')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'LAUGB', N'Yoshi Tannamuri')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'LAZYK', N'John Steel')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'LEHMS', N'Renate Messner')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'LETSS', N'Jaime Yorres')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'LILAS', N'Carlos González')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'LINOD', N'Felipe Izquierdo')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'LONEP', N'Fran Wilson')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'MAGAA', N'Giovanni Rovelli')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'MAISD', N'Catherine Dewey')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'MEREP', N'Jean Fresnière')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'MORGK', N'Alexander Feuer')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'NORTS', N'Simon Crowther')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'OCEAN', N'Yvonne Moncada')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'OLDWO', N'Rene Phillips')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'OTTIK', N'Henriette Pfalzheim')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'PARIS', N'Marie Bertrand')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'PERIC', N'Guillermo Fernández')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'PICCO', N'Georg Pipps')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'PRINI', N'Isabel de Castro')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'QUEDE', N'Bernardo Batista')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'QUEEN', N'Lúcia Carvalho')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'QUICK', N'Horst Kloss')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'RANCH', N'Sergio Gutiérrez')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'RATTC', N'Paula Wilson')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'REGGC', N'Maurizio Moroni')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'RICAR', N'Janete Limeira')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'RICSU', N'Michael Holz')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'ROMEY', N'Alejandra Camino')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'SANTG', N'Jonas Bergulfsen')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'SAVEA', N'Jose Pavarotti')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'SEVES', N'Hari Kumar')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'SIMOB', N'Jytte Petersen')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'SPECD', N'Dominique Perrier')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'SPLIR', N'Art Braunschweiger')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'SUPRD', N'Pascale Cartrain')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'THEBI', N'Liz Nixon')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'THECR', N'Liu Wong')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'TOMSP', N'Karin Josephs')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'TORTU', N'Miguel Angel Paolino')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'TRADH', N'Anabela Domingues')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'TRAIH', N'Helvetius Nagy')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'VAFFE', N'Palle Ibsen')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'VICTE', N'Mary Saveley')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'VINET', N'Paul Henriot')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'WANDK', N'Rita Müller')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'WARTH', N'Pirkko Koskitalo')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'WELLI', N'Paula Parente')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'WHITC', N'Karl Jablonski')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'WILMK', N'Matti Karttunen')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'WOLZA', N'Zbyszek Piestrzeniewicz')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'ALFKI', N'Maria Anders')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'ANATR', N'Ana Trujillo')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'ANTON', N'Antonio Moreno')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'AROUT', N'Thomas Hardy')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'BERGS', N'Christina Berglund')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'BLAUS', N'Hanna Moos')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'BLONP', N'Frédérique Citeaux')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'BOLID', N'Martín Sommer')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'BONAP', N'Laurence Lebihan')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'BOTTM', N'Elizabeth Lincoln')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'BSBEV', N'Victoria Ashworth')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'CACTU', N'Patricio Simpson')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'CENTC', N'Francisco Chang')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'CHOPS', N'Yang Wang')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'COMMI', N'Pedro Afonso')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'CONSH', N'Elizabeth Brown')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'DRACD', N'Sven Ottlieb')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'DUMON', N'Janine Labrune')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'EASTC', N'Ann Devon')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'ERNSH', N'Roland Mendel')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'FAMIA', N'Aria Cruz')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'FISSA', N'Diego Roel')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'FOLIG', N'Martine Rancé')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'FOLKO', N'Maria Larsson')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'FRANK', N'Peter Franken')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'FRANR', N'Carine Schmitt')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'FRANS', N'Paolo Accorti')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'FURIB', N'Lino Rodriguez')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'GALED', N'Eduardo Saavedra')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'GODOS', N'José Pedro Freyre')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'GOURL', N'André Fonseca')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'GREAL', N'Howard Snyder')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'GROSR', N'Manuel Pereira')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'HANAR', N'Mario Pontes')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'HILAA', N'Carlos Hernández')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'HUNGC', N'Yoshi Latimer')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'HUNGO', N'Patricia McKenna')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'ISLAT', N'Helen Bennett')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'KOENE', N'Philip Cramer')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'LACOR', N'Daniel Tonini')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'LAMAI', N'Annette Roulet')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'LAUGB', N'Yoshi Tannamuri')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'LAZYK', N'John Steel')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'LEHMS', N'Renate Messner')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'LETSS', N'Jaime Yorres')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'LILAS', N'Carlos González')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'LINOD', N'Felipe Izquierdo')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'LONEP', N'Fran Wilson')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'MAGAA', N'Giovanni Rovelli')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'MAISD', N'Catherine Dewey')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'MEREP', N'Jean Fresnière')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'MORGK', N'Alexander Feuer')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'NORTS', N'Simon Crowther')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'OCEAN', N'Yvonne Moncada')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'OLDWO', N'Rene Phillips')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'OTTIK', N'Henriette Pfalzheim')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'PARIS', N'Marie Bertrand')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'PERIC', N'Guillermo Fernández')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'PICCO', N'Georg Pipps')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'PRINI', N'Isabel de Castro')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'QUEDE', N'Bernardo Batista')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'QUEEN', N'Lúcia Carvalho')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'QUICK', N'Horst Kloss')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'RANCH', N'Sergio Gutiérrez')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'RATTC', N'Paula Wilson')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'REGGC', N'Maurizio Moroni')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'RICAR', N'Janete Limeira')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'RICSU', N'Michael Holz')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'ROMEY', N'Alejandra Camino')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'SANTG', N'Jonas Bergulfsen')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'SAVEA', N'Jose Pavarotti')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'SEVES', N'Hari Kumar')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'SIMOB', N'Jytte Petersen')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'SPECD', N'Dominique Perrier')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'SPLIR', N'Art Braunschweiger')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'SUPRD', N'Pascale Cartrain')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'THEBI', N'Liz Nixon')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'THECR', N'Liu Wong')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'TOMSP', N'Karin Josephs')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'TORTU', N'Miguel Angel Paolino')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'TRADH', N'Anabela Domingues')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'TRAIH', N'Helvetius Nagy')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'VAFFE', N'Palle Ibsen')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'VICTE', N'Mary Saveley')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'VINET', N'Paul Henriot')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'WANDK', N'Rita Müller')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'WARTH', N'Pirkko Koskitalo')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'WELLI', N'Paula Parente')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'WHITC', N'Karl Jablonski')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'WILMK', N'Matti Karttunen')
GO
INSERT [dbo].[B20Customer]
    ([CustomerCode], [CustomerName])
VALUES
    (N'WOLZA', N'Zbyszek Piestrzeniewicz')
GO
INSERT [dbo].[B20Employee]
    ([EmployeeCode], [EmployeeName], [ManagerCode], [ItemCode], [DeptCode])
VALUES
    (N'tin98', N'NGUYEN THANH TIN', N'anhnhanQLanhtrungQL', NULL, NULL)
GO
INSERT [dbo].[B20Employee]
    ([EmployeeCode], [EmployeeName], [ManagerCode], [ItemCode], [DeptCode])
VALUES
    (N'anhnhanQL', N'ANH NHAN', N'anhtrungQLanhhuyTP', NULL, NULL)
GO
INSERT [dbo].[B20Employee]
    ([EmployeeCode], [EmployeeName], [ManagerCode], [ItemCode], [DeptCode])
VALUES
    (N'anhtrungQL', N'ANH TRUNG', N'anhhuyTPanhPhucPGDTK', NULL, NULL)
GO
INSERT [dbo].[B20Employee]
    ([EmployeeCode], [EmployeeName], [ManagerCode], [ItemCode], [DeptCode])
VALUES
    (N'anhhuyTP', N'ANH HUY', NULL, NULL, NULL)
GO
INSERT [dbo].[B20Employee]
    ([EmployeeCode], [EmployeeName], [ManagerCode], [ItemCode], [DeptCode])
VALUES
    (NULL, N'ANH PHUC', NULL, NULL, NULL)
GO
INSERT [dbo].[B20Employee]
    ([EmployeeCode], [EmployeeName], [ManagerCode], [ItemCode], [DeptCode])
VALUES
    (N'chingoanql', N'CHI NGOAN', N'anhhuyTP', NULL, NULL)
GO
INSERT [dbo].[B20Employee]
    ([EmployeeCode], [EmployeeName], [ManagerCode], [ItemCode], [DeptCode])
VALUES
    (N'anhtungql', N'ANH TUNG', NULL, NULL, NULL)
GO
INSERT [dbo].[B20Employee]
    ([EmployeeCode], [EmployeeName], [ManagerCode], [ItemCode], [DeptCode])
VALUES
    (N'anhtanql', N'ANH TAN', NULL, NULL, NULL)
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'1', N'Chai')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'2', N'Chang')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'3', N'Aniseed Syrup')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'4', N'Chef Anton''s Cajun Seasoning')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'5', N'Chef Anton''s Gumbo Mix')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'6', N'Grandma''s Boysenberry Spread')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'7', N'Uncle Bob''s Organic Dried Pears')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'8', N'Northwoods Cranberry Sauce')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'9', N'Mishi Kobe Niku')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'10', N'Ikura')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'11', N'Queso Cabrales')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'12', N'Queso Manchego La Pastora')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'13', N'Konbu')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'14', N'Tofu')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'15', N'Genen Shouyu')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'16', N'Pavlova')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'17', N'Alice Mutton')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'18', N'Carnarvon Tigers')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'19', N'Teatime Chocolate Biscuits')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'20', N'Sir Rodney''s Marmalade')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'21', N'Sir Rodney''s Scones')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'22', N'Gustaf''s Knäckebröd')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'23', N'Tunnbröd')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'24', N'Guaraná Fantástica')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'25', N'NuNuCa Nuß-Nougat-Creme')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'26', N'Gumbär Gummibärchen')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'27', N'Schoggi Schokolade')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'28', N'Rössle Sauerkraut')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'29', N'Thüringer Rostbratwurst')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'30', N'Nord-Ost Matjeshering')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'31', N'Gorgonzola Telino')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'32', N'Mascarpone Fabioli')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'33', N'Geitost')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'34', N'Sasquatch Ale')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'35', N'Steeleye Stout')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'36', N'Inlagd Sill')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'37', N'Gravad lax')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'38', N'Côte de Blaye')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'39', N'Chartreuse verte')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'40', N'Boston Crab Meat')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'41', N'Jack''s New England Clam Chowder')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'42', N'Singaporean Hokkien Fried Mee')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'43', N'Ipoh Coffee')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'44', N'Gula Malacca')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'45', N'Rogede sild')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'46', N'Spegesild')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'47', N'Zaanse koeken')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'48', N'Chocolade')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'49', N'Maxilaku')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'50', N'Valkoinen suklaa')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'51', N'Manjimup Dried Apples')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'52', N'Filo Mix')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'53', N'Perth Pasties')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'54', N'Tourtière')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'55', N'Pâté chinois')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'56', N'Gnocchi di nonna Alice')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'57', N'Ravioli Angelo')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'58', N'Escargots de Bourgogne')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'59', N'Raclette Courdavault')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'60', N'Camembert Pierrot')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'61', N'Sirop d''érable')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'62', N'Tarte au sucre')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'63', N'Vegie-spread')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'64', N'Wimmers gute Semmelknödel')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'65', N'Louisiana Fiery Hot Pepper Sauce')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'66', N'Louisiana Hot Spiced Okra')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'67', N'Laughing Lumberjack Lager')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'68', N'Scottish Longbreads')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'69', N'Gudbrandsdalsost')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'70', N'Outback Lager')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'71', N'Flotemysost')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'72', N'Mozzarella di Giovanni')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'73', N'Röd Kaviar')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'74', N'Longlife Tofu')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'75', N'Rhönbräu Klosterbier')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'76', N'Lakkalikööri')
GO
INSERT [dbo].[B20Item]
    ([ItemCode], [ItemName])
VALUES
    (N'77', N'Original Frankfurter grüne Soße')
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I3062', CAST(N'2015-01-01' AS Date), 1600000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I8789', CAST(N'2015-01-01' AS Date), 1539000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I7135', CAST(N'2015-01-01' AS Date), 679000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I740', CAST(N'2015-01-01' AS Date), 1249000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I2234', CAST(N'2015-01-01' AS Date), 837000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I3546', CAST(N'2015-01-01' AS Date), 1966000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I7599', CAST(N'2015-01-01' AS Date), 1444000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I7746', CAST(N'2015-01-01' AS Date), 1776000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I6354', CAST(N'2015-01-01' AS Date), 1922000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I2969', CAST(N'2015-01-01' AS Date), 1150000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I2510', CAST(N'2015-01-01' AS Date), 592000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I1238', CAST(N'2015-01-01' AS Date), 1474000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I115', CAST(N'2015-01-01' AS Date), 1907000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I5011', CAST(N'2015-01-01' AS Date), 1274000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I3922', CAST(N'2015-01-01' AS Date), 742000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I8417', CAST(N'2015-01-01' AS Date), 1299000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I3070', CAST(N'2015-01-01' AS Date), 513000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I8577', CAST(N'2015-01-01' AS Date), 1725000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I7866', CAST(N'2015-01-01' AS Date), 629000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I2450', CAST(N'2015-01-01' AS Date), 1547000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I6433', CAST(N'2015-01-01' AS Date), 1796000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I5932', CAST(N'2015-01-01' AS Date), 975000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I8289', CAST(N'2015-01-01' AS Date), 1243000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I804', CAST(N'2015-01-01' AS Date), 901000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I71', CAST(N'2015-01-01' AS Date), 1797000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I2400', CAST(N'2015-01-01' AS Date), 913000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I1882', CAST(N'2015-01-01' AS Date), 1200000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I1253', CAST(N'2015-01-01' AS Date), 1330000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I2736', CAST(N'2015-01-01' AS Date), 1317000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I9167', CAST(N'2015-01-01' AS Date), 1589000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I6858', CAST(N'2015-01-01' AS Date), 1892000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I5124', CAST(N'2015-01-01' AS Date), 741000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I4558', CAST(N'2015-01-01' AS Date), 1563000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I9814', CAST(N'2015-01-01' AS Date), 1808000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I9714', CAST(N'2015-01-01' AS Date), 760000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I435', CAST(N'2015-01-01' AS Date), 1706000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I907', CAST(N'2015-01-01' AS Date), 1536000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I7160', CAST(N'2015-01-01' AS Date), 939000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I7045', CAST(N'2015-01-01' AS Date), 912000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I3744', CAST(N'2015-01-01' AS Date), 918000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I6071', CAST(N'2015-01-01' AS Date), 1206000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I6171', CAST(N'2015-01-01' AS Date), 578000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I2522', CAST(N'2015-01-01' AS Date), 518000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I6487', CAST(N'2015-01-01' AS Date), 799000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I7919', CAST(N'2015-01-01' AS Date), 989000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I9170', CAST(N'2015-01-01' AS Date), 980000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I1932', CAST(N'2015-01-01' AS Date), 1452000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I9574', CAST(N'2015-01-01' AS Date), 1796000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I153', CAST(N'2015-01-01' AS Date), 1179000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I8085', CAST(N'2015-01-01' AS Date), 1807000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I8514', CAST(N'2015-01-01' AS Date), 1504000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I1048', CAST(N'2015-01-01' AS Date), 1420000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I6717', CAST(N'2015-01-01' AS Date), 501000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I396', CAST(N'2015-01-01' AS Date), 1697000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I7382', CAST(N'2015-01-01' AS Date), 1924000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I2401', CAST(N'2015-01-01' AS Date), 1267000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I1693', CAST(N'2015-01-01' AS Date), 950000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I4226', CAST(N'2015-01-01' AS Date), 1203000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I4714', CAST(N'2015-01-01' AS Date), 808000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I8035', CAST(N'2015-01-01' AS Date), 821000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I8495', CAST(N'2015-01-01' AS Date), 627000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I6302', CAST(N'2015-01-01' AS Date), 1929000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I1716', CAST(N'2015-01-01' AS Date), 1407000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I7005', CAST(N'2015-01-01' AS Date), 1578000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I8043', CAST(N'2015-01-01' AS Date), 1230000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I7659', CAST(N'2015-01-01' AS Date), 895000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I4643', CAST(N'2015-01-01' AS Date), 1355000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I88', CAST(N'2015-01-01' AS Date), 813000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I6400', CAST(N'2015-01-01' AS Date), 624000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I6478', CAST(N'2015-01-01' AS Date), 855000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I8583', CAST(N'2015-01-01' AS Date), 1101000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I5786', CAST(N'2015-01-01' AS Date), 1514000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I6652', CAST(N'2015-01-01' AS Date), 1326000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I1091', CAST(N'2015-01-01' AS Date), 1671000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I2162', CAST(N'2015-01-01' AS Date), 1466000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I2676', CAST(N'2015-01-01' AS Date), 1124000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I7492', CAST(N'2015-01-01' AS Date), 1955000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I9583', CAST(N'2015-01-01' AS Date), 1552000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I6516', CAST(N'2015-01-01' AS Date), 1336000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I3835', CAST(N'2015-01-01' AS Date), 520000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I5491', CAST(N'2015-01-01' AS Date), 1669000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I4219', CAST(N'2015-01-01' AS Date), 1992000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I1731', CAST(N'2015-01-01' AS Date), 1189000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I8771', CAST(N'2015-01-01' AS Date), 1642000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I2427', CAST(N'2015-01-01' AS Date), 1006000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I3934', CAST(N'2015-01-01' AS Date), 652000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I9630', CAST(N'2015-01-01' AS Date), 1116000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I7131', CAST(N'2015-01-01' AS Date), 1374000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I9791', CAST(N'2015-01-01' AS Date), 690000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I1471', CAST(N'2015-01-01' AS Date), 1110000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I6605', CAST(N'2015-01-01' AS Date), 808000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I769', CAST(N'2015-01-01' AS Date), 1105000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I6655', CAST(N'2015-01-01' AS Date), 1921000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I6012', CAST(N'2015-01-01' AS Date), 510000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I6522', CAST(N'2015-01-01' AS Date), 850000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I1512', CAST(N'2015-01-01' AS Date), 1367000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I4690', CAST(N'2015-01-01' AS Date), 1184000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I6758', CAST(N'2015-01-01' AS Date), 1806000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I827', CAST(N'2015-01-01' AS Date), 1845000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I1208', CAST(N'2015-01-01' AS Date), 1336000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I326', CAST(N'2014-01-01' AS Date), 1671000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I5775', CAST(N'2014-01-01' AS Date), 1827000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I7018', CAST(N'2014-01-01' AS Date), 1574000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I3522', CAST(N'2014-01-01' AS Date), 1769000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I1820', CAST(N'2014-01-01' AS Date), 1281000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I9947', CAST(N'2014-01-01' AS Date), 1326000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I2516', CAST(N'2014-01-01' AS Date), 1245000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I1048', CAST(N'2014-01-01' AS Date), 1901000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I5318', CAST(N'2014-01-01' AS Date), 1818000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I3651', CAST(N'2014-01-01' AS Date), 1093000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I1757', CAST(N'2014-01-01' AS Date), 1292000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I180', CAST(N'2014-01-01' AS Date), 1069000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I4342', CAST(N'2014-01-01' AS Date), 928000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I6623', CAST(N'2014-01-01' AS Date), 1495000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I2787', CAST(N'2014-01-01' AS Date), 1119000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I1118', CAST(N'2014-01-01' AS Date), 865000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I4467', CAST(N'2014-01-01' AS Date), 1527000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I8614', CAST(N'2014-01-01' AS Date), 1800000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I563', CAST(N'2014-01-01' AS Date), 892000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I5992', CAST(N'2014-01-01' AS Date), 1461000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I8249', CAST(N'2014-01-01' AS Date), 1460000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I211', CAST(N'2014-01-01' AS Date), 1698000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I2491', CAST(N'2014-01-01' AS Date), 1193000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I7069', CAST(N'2014-01-01' AS Date), 712000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I9302', CAST(N'2014-01-01' AS Date), 1428000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I5170', CAST(N'2014-01-01' AS Date), 776000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I3923', CAST(N'2014-01-01' AS Date), 735000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I9710', CAST(N'2014-01-01' AS Date), 866000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I841', CAST(N'2014-01-01' AS Date), 969000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I339', CAST(N'2014-01-01' AS Date), 1638000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I4223', CAST(N'2014-01-01' AS Date), 707000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I6341', CAST(N'2014-01-01' AS Date), 892000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I3645', CAST(N'2014-01-01' AS Date), 697000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I1851', CAST(N'2014-01-01' AS Date), 1388000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I8036', CAST(N'2014-01-01' AS Date), 1584000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I5421', CAST(N'2014-01-01' AS Date), 1527000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I543', CAST(N'2014-01-01' AS Date), 1078000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I5135', CAST(N'2014-01-01' AS Date), 945000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I6287', CAST(N'2014-01-01' AS Date), 880000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I2223', CAST(N'2014-01-01' AS Date), 1225000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I8607', CAST(N'2014-01-01' AS Date), 1286000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I2278', CAST(N'2014-01-01' AS Date), 842000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I7113', CAST(N'2014-01-01' AS Date), 1093000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I3150', CAST(N'2014-01-01' AS Date), 1383000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I1159', CAST(N'2014-01-01' AS Date), 1351000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I9056', CAST(N'2014-01-01' AS Date), 1316000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I7264', CAST(N'2014-01-01' AS Date), 1898000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I3978', CAST(N'2014-01-01' AS Date), 840000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I3449', CAST(N'2014-01-01' AS Date), 1014000)
GO
INSERT [dbo].[B20Prices]
    ([ItemCode], [EffectiveDate], [Amount])
VALUES
    (N'I3563', CAST(N'2014-01-01' AS Date), 1630000)
GO
SET IDENTITY_INSERT [dbo].[B30AccDocSales] ON 
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (1, N'1', N'FURIB', N'tin98', N'1', 25, 2500, CAST(N'2000-05-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (2, N'2', N'ANATR', N'tin98', NULL, 2, 200, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (3, N'3', N'ANTON', N'tin98', NULL, 11, 1100, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (4, N'4', N'ALFKI', N'tin98', NULL, 12, 1200, CAST(N'2014-07-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (5, N'5', N'ALFKI', N'tin98', NULL, 8, 800, CAST(N'2014-07-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (6, N'6', N'ALFKI', N'tin98', NULL, 8, 800, CAST(N'2014-07-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (7, N'7', N'ALFKI', N'tin98', NULL, 8, 800, CAST(N'2014-06-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (8, N'8', N'ALFKI', N'tin98', NULL, 3, 300, CAST(N'2013-12-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (9, N'9', N'ALFKI', N'tin98', NULL, 36, 3600, CAST(N'2014-04-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (10, N'10', N'ALFKI', N'tin98', NULL, 42, 4200, CAST(N'2014-03-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (11, N'11', N'ALFKI', N'tin98', NULL, 33, 3300, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (12, N'12', N'ALFKI', N'tin98', NULL, 26, 2600, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (13, N'13', N'ANATR', N'tin98', NULL, 12, 1200, CAST(N'2014-12-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (14, N'14', N'ANATR', N'tin98', NULL, 8, 800, CAST(N'2014-11-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (15, N'15', N'ANATR', N'tin98', NULL, 37, 3700, CAST(N'2014-10-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (16, N'1', N'ANATR', N'tin98', NULL, 39, 3900, CAST(N'2014-09-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (17, N'2', N'ANATR', N'anhnhan', NULL, 5, 500, CAST(N'2014-08-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (18, N'3', N'ANTON', N'anhnhan', NULL, 39, 3900, CAST(N'2014-07-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (19, N'4', N'ANTON', N'anhnhan', NULL, 19, 1900, CAST(N'2014-06-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (20, N'5', N'ANTON', N'anhnhan', NULL, 41, 4100, CAST(N'2014-05-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (21, N'6', N'AROUT', N'anhnhan', NULL, 5, 500, CAST(N'2014-04-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (22, N'7', N'AROUT', N'anhnhan', NULL, 27, 2700, CAST(N'2014-03-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (23, N'8', N'AROUT', N'anhnhan', NULL, 15, 1500, CAST(N'2015-05-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (24, N'9', N'AROUT', N'anhtrung', NULL, 14, 1400, CAST(N'2016-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (25, N'10', N'BERGS', N'anhtrung', NULL, 2, 200, CAST(N'2018-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (26, N'11', N'BERGS', N'anhtrung', NULL, 44, 4400, CAST(N'2014-05-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (27, N'12', N'BERGS', N'anhtrung', NULL, 18, 1800, CAST(N'2014-05-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (28, N'13', N'BERGS', N'anhtrung', NULL, 18, 1800, CAST(N'2014-05-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (29, N'14', N'BERGS', N'anhtrung', NULL, 35, 3500, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (30, N'15', N'BLAUS', N'anhhuyTP', NULL, 49, 4900, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (31, N'1', N'BLAUS', N'anhhuyTP', NULL, 38, 3800, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (32, N'2', N'BLAUS', N'anhhuyTP', NULL, 5, 500, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (33, N'3', N'BLAUS', N'anhhuyTP', NULL, 39, 3900, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (34, N'4', N'BLAUS', N'anhhuyTP', NULL, 23, 2300, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (35, N'5', N'BLAUS', N'anhhuyTP', NULL, 17, 1700, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (36, N'6', N'BLONP', N'anhhuyTP', NULL, 40, 4000, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (37, N'7', N'BLONP', N'98033', NULL, 38, 3800, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (38, N'8', N'BLONP', N'98033', NULL, 31, 3100, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (39, N'9', N'BLONP', N'98033', NULL, 19, 1900, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (40, N'10', N'BLONP', N'98033', NULL, 46, 4600, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (41, N'11', N'BOLID', N'98033', NULL, 25, 2500, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (42, N'12', N'BOLID', N'98033', NULL, 32, 3200, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (43, N'13', N'BOLID', N'98033', NULL, 43, 4300, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (44, N'14', N'BOLID', N'98033', NULL, 41, 4100, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (45, N'15', N'BOLID', N'98122', NULL, 41, 4100, CAST(N'2014-07-02' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (46, N'1', N'BONAP', N'98122', NULL, 0, 0, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (47, N'2', N'BONAP', N'98122', NULL, 0, 0, CAST(N'2014-02-02' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (48, N'3', N'BONAP', N'98122', NULL, 0, 0, CAST(N'2014-03-02' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (49, N'4', N'BONAP', N'98122', NULL, 0, 0, CAST(N'2014-04-02' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
    ([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
    (50, N'4', N'BONAP', N'98122', NULL, 0, 0, CAST(N'2013-05-02' AS Date))
GO
SET IDENTITY_INSERT [dbo].[B30AccDocSales] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 
GO
INSERT [dbo].[Customer]
    ([_ID], [_NAME], [_AGE], [_ADDRESS], [_SALARY])
VALUES
    (1, N'RAMESH', 32, N'Ahmedabad', CAST(2000.00 AS Numeric(10, 2)))
GO
INSERT [dbo].[Customer]
    ([_ID], [_NAME], [_AGE], [_ADDRESS], [_SALARY])
VALUES
    (2, N'KHILAN', 25, N'BELHI', CAST(1500.00 AS Numeric(10, 2)))
GO
INSERT [dbo].[Customer]
    ([_ID], [_NAME], [_AGE], [_ADDRESS], [_SALARY])
VALUES
    (3, N'KAUSHIK', 23, N'KOTA', CAST(2000.00 AS Numeric(10, 2)))
GO
INSERT [dbo].[Customer]
    ([_ID], [_NAME], [_AGE], [_ADDRESS], [_SALARY])
VALUES
    (4, N'CHAITALI', 25, N'MUMBAI', CAST(6500.00 AS Numeric(10, 2)))
GO
INSERT [dbo].[Customer]
    ([_ID], [_NAME], [_AGE], [_ADDRESS], [_SALARY])
VALUES
    (5, N'HARDIK', 27, N'BHOPAL', CAST(8500.00 AS Numeric(10, 2)))
GO
INSERT [dbo].[Customer]
    ([_ID], [_NAME], [_AGE], [_ADDRESS], [_SALARY])
VALUES
    (6, N'KOMAL', 22, N'MP', CAST(4500.00 AS Numeric(10, 2)))
GO
INSERT [dbo].[Customer]
    ([_ID], [_NAME], [_AGE], [_ADDRESS], [_SALARY])
VALUES
    (7, N'MUFFY', 24, N'INDORE', CAST(10000.00 AS Numeric(10, 2)))
GO
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
/****** Object:  StoredProcedure [dbo].[SelectCustomerstabledata]    Script Date: 5/9/2022 11:17:36 AM ******/
-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE PROCEDURE [dbo].[SelectCustomerstabledata]
-- AS
-- BEGIN
--     SELECT *
--     FROM CUSTOMERS
--     WHERE _SALARY=10000
-- END;
-- GO
-- /****** Object:  StoredProcedure [dbo].[SelectCustomerstabledata_AS_CUSTOMER_OUPUT]    Script Date: 5/9/2022 11:17:36 AM ******/
-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE PROCEDURE [dbo].[SelectCustomerstabledata_AS_CUSTOMER_OUPUT]
--     (@AGE INT = 25,
--     @CUSTOMER_COUNT INT OUTPUT)
-- AS
-- BEGIN
--     SELECT *
--     FROM CUSTOMERS
--     WHERE _AGE >= @AGE
--     SELECT @CUSTOMER_COUNT = @@ROWCOUNT;
-- END;
-- GO
-- /****** Object:  StoredProcedure [dbo].[SelectCustomerstabledata_BY_DEFAULT_AGE]    Script Date: 5/9/2022 11:17:36 AM ******/
-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE PROCEDURE [dbo].[SelectCustomerstabledata_BY_DEFAULT_AGE]
--     (@AGE INT=30)
-- AS
-- BEGIN
--     SELECT *
--     FROM CUSTOMERS
--     WHERE _AGE >= @AGE
-- END;
-- GO
-- /****** Object:  StoredProcedure [dbo].[SelectCustomerstabledata_BYAGE]    Script Date: 5/9/2022 11:17:36 AM ******/
-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE PROCEDURE [dbo].[SelectCustomerstabledata_BYAGE]
--     (@AGE INT)
-- AS
-- BEGIN
--     SELECT *
--     FROM CUSTOMERS
--     WHERE _AGE >= _AGE
-- END;
-- GO
