USE [B30]
GO
/****** Object:  UserDefinedFunction [dbo].[RandNumber]    Script Date: 5/16/2022 3:57:38 PM ******/
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
/****** Object:  Table [dbo].[B30AccDocSales]    Script Date: 5/16/2022 3:57:38 PM ******/
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
/****** Object:  View [dbo].[V_ToDoList]    Script Date: 5/16/2022 3:57:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_ToDoList]
AS
	SELECT *
	FROM B30AccDocSales
GO
/****** Object:  View [dbo].[vRandNumber]    Script Date: 5/16/2022 3:57:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vRandNumber]
AS
	SELECT floor(RAND()*50) as RandNumber 
GO
/****** Object:  Table [dbo].[B20Customer]    Script Date: 5/16/2022 3:57:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B20Customer]
(
	[CustomerCode] [nvarchar](30) NULL,
	[CustomerName] [nvarchar](30) NULL,
	[STT] [nvarchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B20Dept]    Script Date: 5/16/2022 3:57:39 PM ******/
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
/****** Object:  Table [dbo].[B20Employee]    Script Date: 5/16/2022 3:57:39 PM ******/
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
/****** Object:  Table [dbo].[B20Item]    Script Date: 5/16/2022 3:57:39 PM ******/
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
/****** Object:  Table [dbo].[B20Prices]    Script Date: 5/16/2022 3:57:39 PM ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 5/16/2022 3:57:39 PM ******/
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
/****** Object:  Table [dbo].[Table1]    Script Date: 5/16/2022 3:57:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table1]
(
	[a] [int] NULL,
	[b] [int] NULL,
	[c] [int] NULL,
	[d] [int] NULL,
	[e] [int] NULL,
	[f] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table2]    Script Date: 5/16/2022 3:57:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table2]
(
	[c] [int] NULL,
	[d] [int] NULL,
	[e] [int] NULL,
	[f] [int] NULL,
	[g] [int] NULL,
	[h] [int] NULL,
	[i] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestResults]    Script Date: 5/16/2022 3:57:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestResults]
(
	[Test_Desc] [varchar](32) NULL,
	[TestResult_Desc] [varchar](32) NULL,
	[TreatmentPlan] [varchar](32) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'ALFKI', N'Maria Anders', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'W5580               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'ANTON', N'Antonio Moreno', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'B7817               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'W629                ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'H1078               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'A1954               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'R6072               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'P2366               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'B3321               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'A3', NULL, NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'V7030               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'A9', NULL, NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'G7894               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'A2', NULL, NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'C1870               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'A8', NULL, NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'E2429               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'S9460               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'Y1107               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'R7013               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'U9689               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'N2973               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'D2547               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'A4', NULL, NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'A6', NULL, NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'H5099               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'X5565               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'T2140               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'A1', NULL, NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'H3252               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'R9634               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'I6056               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'V5496               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'N4098               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'I5806               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'V8734               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'N31                 ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'E4733               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'D7702               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'A7', NULL, NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'E2034               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'A10', NULL, NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'R2562               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'T623                ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'T258                ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'G685                ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'A5', NULL, NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'L9605               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'M574                ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'R3719               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'E6765               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'S897                ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'V3630               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'H5667               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'B5015               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'K8060               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'U7352               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'L4380               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'D9317               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'P204                ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'D8910               ', N'Name', N'0')
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'BERGS', N'Christina Berglund', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'BLONP', N'Frédérique Citeaux', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'BONAP', N'Laurence Lebihan', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'BSBEV', N'Victoria Ashworth', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'CENTC', N'Francisco Chang', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'COMMI', N'Pedro Afonso', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'DRACD', N'Sven Ottlieb', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'EASTC', N'Ann Devon', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'FAMIA', N'Aria Cruz', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'FOLIG', N'Martine Rancé', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'FRANK', N'Peter Franken', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'FRANS', N'Paolo Accorti', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'GALED', N'Eduardo Saavedra', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'GOURL', N'André Fonseca', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'GROSR', N'Manuel Pereira', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'HILAA', N'Carlos Hernández', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'HUNGO', N'Patricia McKenna', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'KOENE', N'Philip Cramer', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'LAMAI', N'Annette Roulet', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'LAZYK', N'John Steel', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'LETSS', N'Jaime Yorres', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'LINOD', N'Felipe Izquierdo', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'MAGAA', N'Giovanni Rovelli', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'MEREP', N'Jean Fresnière', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'NORTS', N'Simon Crowther', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'OLDWO', N'Rene Phillips', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'PARIS', N'Marie Bertrand', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'PICCO', N'Georg Pipps', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'QUEDE', N'Bernardo Batista', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'QUICK', N'Horst Kloss', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'RATTC', N'Paula Wilson', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'RICAR', N'Janete Limeira', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'ROMEY', N'Alejandra Camino', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'SAVEA', N'Jose Pavarotti', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'SIMOB', N'Jytte Petersen', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'SPLIR', N'Art Braunschweiger', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'THEBI', N'Liz Nixon', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'TOMSP', N'Karin Josephs', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'TRADH', N'Anabela Domingues', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'VAFFE', N'Palle Ibsen', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'VINET', N'Paul Henriot', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'WARTH', N'Pirkko Koskitalo', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'WHITC', N'Karl Jablonski', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'WOLZA', N'Zbyszek Piestrzeniewicz', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'ANATR', N'Ana Trujillo', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'AROUT', N'Thomas Hardy', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'BLAUS', N'Hanna Moos', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'BOLID', N'Martín Sommer', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'BOTTM', N'Elizabeth Lincoln', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'CACTU', N'Patricio Simpson', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'CHOPS', N'Yang Wang', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'CONSH', N'Elizabeth Brown', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'DUMON', N'Janine Labrune', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'ERNSH', N'Roland Mendel', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'FISSA', N'Diego Roel', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'FOLKO', N'Maria Larsson', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'FRANR', N'Carine Schmitt', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'FURIB', N'Lino Rodriguez', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'GODOS', N'José Pedro Freyre', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'GREAL', N'Howard Snyder', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'HANAR', N'Mario Pontes', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'HUNGC', N'Yoshi Latimer', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'ISLAT', N'Helen Bennett', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'LACOR', N'Daniel Tonini', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'LAUGB', N'Yoshi Tannamuri', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'LEHMS', N'Renate Messner', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'LILAS', N'Carlos González', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'LONEP', N'Fran Wilson', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'MAISD', N'Catherine Dewey', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'MORGK', N'Alexander Feuer', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'OCEAN', N'Yvonne Moncada', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'OTTIK', N'Henriette Pfalzheim', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'PERIC', N'Guillermo Fernández', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'PRINI', N'Isabel de Castro', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'QUEEN', N'Lúcia Carvalho', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'RANCH', N'Sergio Gutiérrez', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'REGGC', N'Maurizio Moroni', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'RICSU', N'Michael Holz', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'SANTG', N'Jonas Bergulfsen', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'SEVES', N'Hari Kumar', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'SPECD', N'Dominique Perrier', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'SUPRD', N'Pascale Cartrain', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'THECR', N'Liu Wong', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'TORTU', N'Miguel Angel Paolino', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'TRAIH', N'Helvetius Nagy', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'VICTE', N'Mary Saveley', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'WANDK', N'Rita Müller', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'WELLI', N'Paula Parente', NULL)
GO
INSERT [dbo].[B20Customer]
	([CustomerCode], [CustomerName], [STT])
VALUES
	(N'WILMK', N'Matti Karttunen', NULL)
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
	(N'I326', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I5775', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I7018', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I3522', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I1820', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I9947', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I2516', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I1048', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I5318', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I3651', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I1757', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I180', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I4342', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I6623', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I2787', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I1118', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I4467', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I8614', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I563', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I5992', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I8249', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I211', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I2491', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I7069', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I9302', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I5170', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I3923', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I9710', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I841', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I339', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I4223', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I6341', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I3645', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I1851', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I8036', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I5421', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I543', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I5135', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I6287', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I2223', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I8607', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I2278', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I7113', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I3150', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I1159', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I9056', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I7264', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I3978', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I3449', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I3563', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I3621', CAST(N'2015-01-01' AS Date), 1466000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I4074', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'1', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'2', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'3', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'4', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'5', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'6', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'7', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'8', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'9', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'10', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'11', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'12', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'13', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'14', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'15', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'16', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'17', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'18', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'19', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'20', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'21', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'22', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'23', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'24', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'25', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'26', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'27', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'28', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'29', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'30', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'31', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'32', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'33', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'34', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'35', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'36', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'37', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'38', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'39', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'40', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'41', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'42', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'43', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'44', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'45', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'46', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'47', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'48', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'49', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'50', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'51', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'52', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'53', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'54', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'55', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'56', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'57', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'58', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'59', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'60', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'61', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'62', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'63', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'64', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'65', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'66', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'67', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'68', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'69', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'70', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'71', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'72', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'73', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'74', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'75', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'76', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I9352', CAST(N'2015-01-01' AS Date), 1718000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I5278', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I2352', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I9333', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I7995', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I7117', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I6836', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I1979', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I3094', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I8480', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I5152', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I7394', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I5893', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I6744', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I6754', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I8582', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I4843', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I3386', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I5958', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I9845', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I699', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I3758', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I6632', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I4514', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I6566', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I7362', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I1419', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I4893', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I3714', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I2901', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I6340', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I6626', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I3104', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I8959', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I7748', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I7196', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I7986', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I7962', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I670', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I9828', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I2560', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I5304', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I9705', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I3394', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I256', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I4817', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'77', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I15', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I8040', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I7702', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I3701', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I4280', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I1621', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I5614', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I8744', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I8654', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I4681', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I8973', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I2647', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I3623', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I1057', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I3123', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I1733', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I5050', CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1760000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1692900)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 746900)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1373900)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 920700)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 2162600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1588400)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1953600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 2114200)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1265000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 651200)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1621400)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 2097700)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1401400)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 816200)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1428900)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 564300)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1897500)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 691900)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1701700)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1975600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1072500)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1367300)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 991100)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1976700)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1004300)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1320000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1463000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1448700)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1747900)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 2081200)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 815100)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1719300)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1988800)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 836000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1876600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1689600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1032900)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1003200)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1009800)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1326600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 635800)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 569800)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 878900)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1087900)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1078000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1597200)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1975600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1296900)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1987700)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1654400)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1562000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 551100)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1866700)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 2116400)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1393700)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1045000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1323300)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 888800)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 903100)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 689700)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 2121900)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1547700)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1735800)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1353000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 984500)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1490500)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 894300)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 686400)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 940500)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1211100)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1665400)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1458600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1838100)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1612600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1236400)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 2150500)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1707200)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1469600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 572000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1835900)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 2191200)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1307900)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1806200)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1106600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 717200)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1227600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1511400)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 759000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1221000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 888800)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1215500)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 2113100)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 561000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 935000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1503700)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1302400)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1986600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 2029500)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1469600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1612600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1889800)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, CAST(N'2014-01-01' AS Date), 517000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, CAST(N'2014-01-01' AS Date), 1017000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I8897', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I7612', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I1940', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I7627', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I6653', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I1370', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I8929', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I8127', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I6413', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I2362', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I9363', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I537', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I4707', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I5944', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I998', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I1312', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I9948', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I80', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I4020', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I1434', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I2145', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I9296', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I2099', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I3660', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I9626', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I7642', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I2838', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I9172', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I4403', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I6307', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I270', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I3635', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I2812', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I7689', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I569', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I138', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I6246', NULL, NULL)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I1231', CAST(N'2015-01-01' AS Date), 1759000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I8242', CAST(N'2014-01-01' AS Date), 630000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I3233', CAST(N'2014-01-01' AS Date), 1370000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I8917', CAST(N'2014-01-01' AS Date), 1711000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I2041', CAST(N'2014-01-01' AS Date), 1502000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I8461', CAST(N'2014-01-01' AS Date), 781000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I1978', CAST(N'2014-01-01' AS Date), 772000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I8849', CAST(N'2014-01-01' AS Date), 1681000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I7612', CAST(N'2014-01-01' AS Date), 1141000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I9630', CAST(N'2014-01-01' AS Date), 976000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I8785', CAST(N'2014-01-01' AS Date), 1005000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I941', CAST(N'2014-01-01' AS Date), 620000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I3493', CAST(N'2014-01-01' AS Date), 682000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I3271', CAST(N'2014-01-01' AS Date), 1681000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I1933', CAST(N'2014-01-01' AS Date), 1802000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I2037', CAST(N'2014-01-01' AS Date), 1497000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I1802', CAST(N'2014-01-01' AS Date), 969000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I2536', CAST(N'2014-01-01' AS Date), 1723000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I1256', CAST(N'2014-01-01' AS Date), 1428000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I7203', CAST(N'2014-01-01' AS Date), 1177000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I9887', CAST(N'2014-01-01' AS Date), 1487000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I3403', CAST(N'2014-01-01' AS Date), 824000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I9767', CAST(N'2014-01-01' AS Date), 1927000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I2042', CAST(N'2014-01-01' AS Date), 1923000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I9688', CAST(N'2014-01-01' AS Date), 1291000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I4500', CAST(N'2014-01-01' AS Date), 1313000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I8470', CAST(N'2014-01-01' AS Date), 1222000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I6739', CAST(N'2014-01-01' AS Date), 631000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I3927', CAST(N'2014-01-01' AS Date), 1480000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I6060', CAST(N'2014-01-01' AS Date), 825000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I469', CAST(N'2014-01-01' AS Date), 1051000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I203', CAST(N'2014-01-01' AS Date), 1997000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I1282', CAST(N'2014-01-01' AS Date), 1172000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I2007', CAST(N'2014-01-01' AS Date), 668000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I9211', CAST(N'2014-01-01' AS Date), 958000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I1848', CAST(N'2014-01-01' AS Date), 1619000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I777', CAST(N'2014-01-01' AS Date), 1245000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I1042', CAST(N'2014-01-01' AS Date), 1047000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I6667', CAST(N'2014-01-01' AS Date), 1694000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I8371', CAST(N'2014-01-01' AS Date), 838000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I3895', CAST(N'2014-01-01' AS Date), 1287000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I5996', CAST(N'2014-01-01' AS Date), 969000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I5652', CAST(N'2014-01-01' AS Date), 1581000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I9857', CAST(N'2014-01-01' AS Date), 1494000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I420', CAST(N'2014-01-01' AS Date), 739000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I774', CAST(N'2014-01-01' AS Date), 1504000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I3600', CAST(N'2014-01-01' AS Date), 1738000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I9146', CAST(N'2014-01-01' AS Date), 1503000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I2856', CAST(N'2014-01-01' AS Date), 1293000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I4900', CAST(N'2014-01-01' AS Date), 703000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(N'I7626', CAST(N'2014-01-01' AS Date), 893000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1760000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1692900)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 746900)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1373900)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 920700)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 2162600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1588400)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1953600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 2114200)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1265000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 651200)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1621400)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 2097700)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1401400)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 816200)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1428900)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 564300)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1897500)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 691900)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1701700)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1975600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1072500)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1367300)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 991100)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1976700)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1004300)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1320000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1463000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1448700)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1747900)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 2081200)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 815100)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1719300)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1988800)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 836000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1876600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1689600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1032900)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1003200)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1009800)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1326600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 635800)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 569800)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 878900)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1087900)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1078000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1597200)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1975600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1296900)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1987700)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1654400)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1562000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 551100)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1866700)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 2116400)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1393700)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1045000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1323300)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 888800)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 903100)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 689700)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 2121900)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1547700)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1735800)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1353000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 984500)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1490500)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 894300)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 686400)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 940500)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1211100)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1665400)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1458600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1838100)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1612600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1236400)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 2150500)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1707200)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1469600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 572000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1835900)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 2191200)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1307900)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1806200)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1106600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 717200)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1227600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1511400)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 759000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1221000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 888800)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1215500)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 2113100)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 561000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 935000)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1503700)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1302400)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1986600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 2029500)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1469600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1612600)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1889800)
GO
INSERT [dbo].[B20Prices]
	([ItemCode], [EffectiveDate], [Amount])
VALUES
	(NULL, NULL, 1934900)
GO
SET IDENTITY_INSERT [dbo].[B30AccDocSales] ON 
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(1, N'1', N'FURIB', N'tin98', N'1', 19, 1900, CAST(N'2000-05-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(2, N'2', N'ANATR', N'tin98', NULL, 48, 4800, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(3, N'3', N'ANTON', N'tin98', NULL, 30, 3000, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(4, N'4', N'ALFKI', N'tin98', NULL, 6, 600, CAST(N'2014-07-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(5, N'5', N'ALFKI', N'tin98', NULL, 8, 800, CAST(N'2014-07-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(6, N'6', N'ALFKI', N'tin98', NULL, 32, 3200, CAST(N'2014-07-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(7, N'7', N'ALFKI', N'tin98', NULL, 47, 4700, CAST(N'2014-06-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(8, N'8', N'ALFKI', N'tin98', NULL, 25, 2500, CAST(N'2013-12-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(9, N'9', N'ALFKI', N'tin98', NULL, 3, 300, CAST(N'2014-04-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(10, N'10', N'ALFKI', N'tin98', NULL, 13, 1300, CAST(N'2014-03-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(11, N'11', N'ALFKI', N'tin98', NULL, 41, 4100, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(12, N'12', N'ALFKI', N'tin98', NULL, 8, 800, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(13, N'13', N'ANATR', N'tin98', NULL, 6, 600, CAST(N'2014-12-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(14, N'14', N'ANATR', N'tin98', NULL, 25, 2500, CAST(N'2014-11-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(15, N'15', N'ANATR', N'tin98', NULL, 2, 200, CAST(N'2014-10-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(16, N'1', N'ANATR', N'tin98', NULL, 33, 3300, CAST(N'2014-09-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(17, N'2', N'ANATR', N'anhnhan', NULL, 21, 2100, CAST(N'2014-08-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(18, N'3', N'ANTON', N'anhnhan', NULL, 30, 3000, CAST(N'2014-07-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(19, N'4', N'ANTON', N'anhnhan', NULL, 9, 900, CAST(N'2014-06-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(20, N'5', N'ANTON', N'anhnhan', NULL, 32, 3200, CAST(N'2014-05-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(21, N'6', N'AROUT', N'anhnhan', NULL, 19, 1900, CAST(N'2014-04-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(22, N'7', N'AROUT', N'anhnhan', NULL, 23, 2300, CAST(N'2014-03-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(23, N'8', N'AROUT', N'anhnhan', NULL, 21, 2100, CAST(N'2015-05-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(24, N'9', N'AROUT', N'anhtrung', NULL, 16, 1600, CAST(N'2016-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(25, N'10', N'BERGS', N'anhtrung', NULL, 23, 2300, CAST(N'2018-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(26, N'11', N'BERGS', N'anhtrung', NULL, 25, 2500, CAST(N'2014-05-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(27, N'12', N'BERGS', N'anhtrung', NULL, 46, 4600, CAST(N'2014-05-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(28, N'13', N'BERGS', N'anhtrung', NULL, 10, 1000, CAST(N'2014-05-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(29, N'14', N'BERGS', N'anhtrung', NULL, 13, 1300, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(30, N'15', N'BLAUS', N'anhhuyTP', NULL, 2, 200, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(31, N'1', N'BLAUS', N'anhhuyTP', NULL, 32, 3200, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(32, N'2', N'BLAUS', N'anhhuyTP', NULL, 43, 4300, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(33, N'3', N'BLAUS', N'anhhuyTP', NULL, 21, 2100, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(34, N'4', N'BLAUS', N'anhhuyTP', NULL, 12, 1200, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(35, N'5', N'BLAUS', N'anhhuyTP', NULL, 9, 900, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(36, N'6', N'BLONP', N'anhhuyTP', NULL, 13, 1300, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(37, N'7', N'BLONP', N'98033', NULL, 36, 3600, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(38, N'8', N'BLONP', N'98033', NULL, 8, 800, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(39, N'9', N'BLONP', N'98033', NULL, 20, 2000, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(40, N'10', N'BLONP', N'98033', NULL, 10, 1000, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(41, N'11', N'BONAP', N'98033', NULL, 21, 2100, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(42, N'12', N'BONAP', N'98033', NULL, 37, 3700, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(43, N'13', N'BONAP', N'98033', NULL, 30, 3000, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(44, N'14', N'BONAP', N'98033', NULL, 4, 400, CAST(N'2014-02-01' AS Date))
GO
INSERT [dbo].[B30AccDocSales]
	([STT], [ItemCode], [CustomerCode], [Employeecode], [DeptCode], [Quantity], [Amount], [DocDate])
VALUES
	(45, N'15', N'BONAP', N'98122', NULL, 11, 1100, CAST(N'2014-07-02' AS Date))
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
/****** Object:  StoredProcedure [dbo].[SelectCustomerstabledata]    Script Date: 5/16/2022 3:57:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectCustomerstabledata]
AS
BEGIN
	SELECT *
	FROM CUSTOMERS
	WHERE _SALARY=10000
END;
GO
/****** Object:  StoredProcedure [dbo].[SelectCustomerstabledata_AS_CUSTOMER_OUPUT]    Script Date: 5/16/2022 3:57:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectCustomerstabledata_AS_CUSTOMER_OUPUT]
	(@AGE INT = 25,
	@CUSTOMER_COUNT INT OUTPUT)
AS
BEGIN
	SELECT *
	FROM CUSTOMERS
	WHERE _AGE >= @AGE
	SELECT @CUSTOMER_COUNT = @@ROWCOUNT;
END;
GO
/****** Object:  StoredProcedure [dbo].[SelectCustomerstabledata_BY_DEFAULT_AGE]    Script Date: 5/16/2022 3:57:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectCustomerstabledata_BY_DEFAULT_AGE]
	(@AGE INT=30)
AS
BEGIN
	SELECT *
	FROM CUSTOMERS
	WHERE _AGE >= @AGE
END;
GO
/****** Object:  StoredProcedure [dbo].[SelectCustomerstabledata_BYAGE]    Script Date: 5/16/2022 3:57:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectCustomerstabledata_BYAGE]
	(@AGE INT)
AS
BEGIN
	SELECT *
	FROM CUSTOMERS
	WHERE _AGE >= _AGE
END;
GO
