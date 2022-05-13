USE [master]
GO
/****** Object:  Database [TBL]    Script Date: 5/12/2022 3:01:54 PM ******/
CREATE DATABASE [TBL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TBL', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.NTT\MSSQL\DATA\TBL.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TBL_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.NTT\MSSQL\DATA\TBL_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TBL] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TBL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TBL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TBL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TBL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TBL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TBL] SET ARITHABORT OFF 
GO
ALTER DATABASE [TBL] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TBL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TBL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TBL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TBL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TBL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TBL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TBL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TBL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TBL] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TBL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TBL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TBL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TBL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TBL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TBL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TBL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TBL] SET RECOVERY FULL 
GO
ALTER DATABASE [TBL] SET  MULTI_USER 
GO
ALTER DATABASE [TBL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TBL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TBL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TBL] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TBL] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TBL] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TBL', N'ON'
GO
ALTER DATABASE [TBL] SET QUERY_STORE = OFF
GO
USE [TBL]
GO
/****** Object:  UserDefinedFunction [dbo].[RandNumber]    Script Date: 5/12/2022 3:01:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[RandNumber]() 
RETURNS INT 
AS 
  BEGIN 
  RETURN (SELECT RandNumber FROM vRandNumber) 
  END 
GO
/****** Object:  View [dbo].[vRandNumber]    Script Date: 5/12/2022 3:01:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vRandNumber] 
AS 
SELECT floor(RAND()*30) as RandNumber 
GO
/****** Object:  Table [dbo].[BanHang]    Script Date: 5/12/2022 3:01:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanHang](
	[NGAY_CT] [smalldatetime] NULL,
	[SO_CT] [varchar](20) NULL,
	[MA_DT] [varchar](16) NULL,
	[MA_VT] [varchar](16) NULL,
	[SO_LUONG] [numeric](18, 2) NULL,
	[TIEN] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dmdt]    Script Date: 5/12/2022 3:01:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dmdt](
	[MA_DT] [varchar](16) NULL,
	[TEN_DT] [nvarchar](128) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dmvt]    Script Date: 5/12/2022 3:01:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dmvt](
	[MA_VT] [varchar](16) NULL,
	[TEN_VL] [varchar](128) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Revenue]    Script Date: 5/12/2022 3:01:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Revenue](
	[DepartmentID] [int] NULL,
	[Revenue] [int] NULL,
	[Year] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblABC]    Script Date: 5/12/2022 3:01:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblABC](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CODE] [nvarchar](50) NULL,
	[NAME] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblnewAbc]    Script Date: 5/12/2022 3:01:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblnewAbc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNgayTrongMotThang]    Script Date: 5/12/2022 3:01:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNgayTrongMotThang](
	[Ngay] [nvarchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestString]    Script Date: 5/12/2022 3:01:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestString](
	[String] [nvarchar](20) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[BanHang] ([NGAY_CT], [SO_CT], [MA_DT], [MA_VT], [SO_LUONG], [TIEN]) VALUES (CAST(N'2013-01-02T00:00:00' AS SmallDateTime), N'AA', N'VT002', N'B', CAST(27.00 AS Numeric(18, 2)), CAST(135000 AS Numeric(18, 0)))
GO
INSERT [dbo].[BanHang] ([NGAY_CT], [SO_CT], [MA_DT], [MA_VT], [SO_LUONG], [TIEN]) VALUES (CAST(N'2013-01-02T00:00:00' AS SmallDateTime), N'AA', N'VT002', N'B', CAST(12.00 AS Numeric(18, 2)), CAST(60000 AS Numeric(18, 0)))
GO
INSERT [dbo].[BanHang] ([NGAY_CT], [SO_CT], [MA_DT], [MA_VT], [SO_LUONG], [TIEN]) VALUES (CAST(N'2013-01-02T00:00:00' AS SmallDateTime), N'AA', N'VT002', N'B', CAST(12.00 AS Numeric(18, 2)), CAST(60000 AS Numeric(18, 0)))
GO
INSERT [dbo].[BanHang] ([NGAY_CT], [SO_CT], [MA_DT], [MA_VT], [SO_LUONG], [TIEN]) VALUES (CAST(N'2013-01-02T00:00:00' AS SmallDateTime), N'AA', N'VT002', N'B', CAST(2.00 AS Numeric(18, 2)), CAST(10000 AS Numeric(18, 0)))
GO
INSERT [dbo].[BanHang] ([NGAY_CT], [SO_CT], [MA_DT], [MA_VT], [SO_LUONG], [TIEN]) VALUES (CAST(N'2013-01-02T00:00:00' AS SmallDateTime), N'AA', N'VT003', N'X', CAST(23.00 AS Numeric(18, 2)), CAST(115000 AS Numeric(18, 0)))
GO
INSERT [dbo].[BanHang] ([NGAY_CT], [SO_CT], [MA_DT], [MA_VT], [SO_LUONG], [TIEN]) VALUES (CAST(N'2013-01-02T00:00:00' AS SmallDateTime), N'AA', N'VT003', N'X', CAST(14.00 AS Numeric(18, 2)), CAST(70000 AS Numeric(18, 0)))
GO
INSERT [dbo].[BanHang] ([NGAY_CT], [SO_CT], [MA_DT], [MA_VT], [SO_LUONG], [TIEN]) VALUES (CAST(N'2013-01-02T00:00:00' AS SmallDateTime), N'AA', N'VT003', N'X', CAST(19.00 AS Numeric(18, 2)), CAST(95000 AS Numeric(18, 0)))
GO
INSERT [dbo].[BanHang] ([NGAY_CT], [SO_CT], [MA_DT], [MA_VT], [SO_LUONG], [TIEN]) VALUES (CAST(N'2013-01-02T00:00:00' AS SmallDateTime), N'AA', N'VT003', N'X', CAST(7.00 AS Numeric(18, 2)), CAST(35000 AS Numeric(18, 0)))
GO
INSERT [dbo].[BanHang] ([NGAY_CT], [SO_CT], [MA_DT], [MA_VT], [SO_LUONG], [TIEN]) VALUES (CAST(N'2013-01-02T00:00:00' AS SmallDateTime), N'AA', N'VT003', N'X', CAST(3.00 AS Numeric(18, 2)), CAST(15000 AS Numeric(18, 0)))
GO
INSERT [dbo].[BanHang] ([NGAY_CT], [SO_CT], [MA_DT], [MA_VT], [SO_LUONG], [TIEN]) VALUES (CAST(N'2013-01-02T00:00:00' AS SmallDateTime), N'AA', N'VT003', N'X', CAST(6.00 AS Numeric(18, 2)), CAST(30000 AS Numeric(18, 0)))
GO
INSERT [dbo].[BanHang] ([NGAY_CT], [SO_CT], [MA_DT], [MA_VT], [SO_LUONG], [TIEN]) VALUES (CAST(N'2013-01-02T00:00:00' AS SmallDateTime), N'AA', N'VT003', N'X', CAST(12.00 AS Numeric(18, 2)), CAST(60000 AS Numeric(18, 0)))
GO
INSERT [dbo].[BanHang] ([NGAY_CT], [SO_CT], [MA_DT], [MA_VT], [SO_LUONG], [TIEN]) VALUES (CAST(N'2013-01-02T00:00:00' AS SmallDateTime), N'AA', N'VT003', N'X', CAST(17.00 AS Numeric(18, 2)), CAST(85000 AS Numeric(18, 0)))
GO
INSERT [dbo].[BanHang] ([NGAY_CT], [SO_CT], [MA_DT], [MA_VT], [SO_LUONG], [TIEN]) VALUES (CAST(N'2013-01-02T00:00:00' AS SmallDateTime), N'AA', N'VT003', N'X', CAST(20.00 AS Numeric(18, 2)), CAST(100000 AS Numeric(18, 0)))
GO
INSERT [dbo].[BanHang] ([NGAY_CT], [SO_CT], [MA_DT], [MA_VT], [SO_LUONG], [TIEN]) VALUES (CAST(N'2013-01-02T00:00:00' AS SmallDateTime), N'AA', N'VT003', N'X', CAST(11.00 AS Numeric(18, 2)), CAST(55000 AS Numeric(18, 0)))
GO
INSERT [dbo].[BanHang] ([NGAY_CT], [SO_CT], [MA_DT], [MA_VT], [SO_LUONG], [TIEN]) VALUES (CAST(N'2013-01-02T00:00:00' AS SmallDateTime), N'AA', N'VT003', N'X', CAST(3.00 AS Numeric(18, 2)), CAST(15000 AS Numeric(18, 0)))
GO
INSERT [dbo].[BanHang] ([NGAY_CT], [SO_CT], [MA_DT], [MA_VT], [SO_LUONG], [TIEN]) VALUES (CAST(N'2013-01-02T00:00:00' AS SmallDateTime), N'AA', N'VT003', N'X', CAST(11.00 AS Numeric(18, 2)), CAST(55000 AS Numeric(18, 0)))
GO
INSERT [dbo].[Dmdt] ([MA_DT], [TEN_DT]) VALUES (N'VT001', N'D TU 001')
GO
INSERT [dbo].[Dmdt] ([MA_DT], [TEN_DT]) VALUES (N'DT002', N'D TU 002')
GO
INSERT [dbo].[Dmdt] ([MA_DT], [TEN_DT]) VALUES (N'DT003', N'D TU 003')
GO
INSERT [dbo].[Dmdt] ([MA_DT], [TEN_DT]) VALUES (N'DT004', N'D TU 004')
GO
INSERT [dbo].[Dmdt] ([MA_DT], [TEN_DT]) VALUES (N'DT005', N'D TU 005')
GO
INSERT [dbo].[Dmdt] ([MA_DT], [TEN_DT]) VALUES (N'DT006', N'D TU 006')
GO
INSERT [dbo].[Dmvt] ([MA_VT], [TEN_VL]) VALUES (N'G', N'GHE')
GO
INSERT [dbo].[Dmvt] ([MA_VT], [TEN_VL]) VALUES (N'B', N'BAN')
GO
INSERT [dbo].[Dmvt] ([MA_VT], [TEN_VL]) VALUES (N'X', N'XE')
GO
INSERT [dbo].[Dmvt] ([MA_VT], [TEN_VL]) VALUES (N'T', N'TUI')
GO
INSERT [dbo].[Dmvt] ([MA_VT], [TEN_VL]) VALUES (N'V', N'VAI')
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (1, 10030, 1998)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (2, 20000, 1998)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (3, 40000, 1998)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (1, 20000, 1999)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (2, 60000, 1999)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (3, 50000, 1999)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (1, 40000, 2000)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (2, 40000, 2000)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (3, 60000, 2000)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (1, 30000, 2001)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (2, 30000, 2001)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (3, 70000, 2001)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (1, 90000, 2002)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (2, 20000, 2002)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (3, 80000, 2002)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (1, 10300, 2003)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (2, 1000, 2003)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (3, 90000, 2003)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (1, 10000, 2004)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (2, 10000, 2004)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (3, 10000, 2004)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (1, 20000, 2005)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (2, 20000, 2005)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (3, 20000, 2005)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (1, 40000, 2006)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (2, 30000, 2006)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (3, 30000, 2006)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (1, 70000, 2007)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (2, 40000, 2007)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (3, 40000, 2007)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (1, 50000, 2008)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (2, 50000, 2008)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (3, 50000, 2008)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (1, 20000, 2009)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (2, 60000, 2009)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (3, 60000, 2009)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (1, 30000, 2010)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (2, 70000, 2010)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (3, 70000, 2010)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (1, 80000, 2011)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (2, 80000, 2011)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (3, 80000, 2011)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (1, 10000, 2012)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (2, 90000, 2012)
GO
INSERT [dbo].[Revenue] ([DepartmentID], [Revenue], [Year]) VALUES (3, 90000, 2012)
GO
SET IDENTITY_INSERT [dbo].[tblABC] ON 
GO
INSERT [dbo].[tblABC] ([ID], [CODE], [NAME]) VALUES (1, N'A', N'Anh')
GO
INSERT [dbo].[tblABC] ([ID], [CODE], [NAME]) VALUES (2, N'B', N'By')
GO
INSERT [dbo].[tblABC] ([ID], [CODE], [NAME]) VALUES (3, N'C', N'Canada')
GO
SET IDENTITY_INSERT [dbo].[tblABC] OFF
GO
INSERT [dbo].[TestString] ([String]) VALUES (N' TK LIKE 111%')
GO
INSERT [dbo].[TestString] ([String]) VALUES (N' TK LIKE 112%')
GO
INSERT [dbo].[TestString] ([String]) VALUES (N' TK LIKE 131%')
GO
INSERT [dbo].[TestString] ([String]) VALUES (N'')
GO
USE [master]
GO
ALTER DATABASE [TBL] SET  READ_WRITE 
GO
