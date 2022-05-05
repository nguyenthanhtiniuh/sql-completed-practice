USE [TBL]
GO
/****** Object:  Table [dbo].[BANHANG]    Script Date: 5/5/2022 12:23:52 PM ******/
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
/****** Object:  Table [dbo].[DMDT]    Script Date: 5/5/2022 12:23:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DmDt](
	[MA_DT] [varchar](16) NULL,
	[TEN_DT] [nvarchar](128) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DMVT]    Script Date: 5/5/2022 12:23:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DmVt](
	[MA_VT] [varchar](16) NULL,
	[TEN_VL] [varchar](128) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REVENUE]    Script Date: 5/5/2022 12:23:52 PM ******/
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
/****** Object:  Table [dbo].[tblABC]    Script Date: 5/5/2022 12:23:52 PM ******/
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
/****** Object:  Table [dbo].[TBLNEWABC]    Script Date: 5/5/2022 12:23:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLNEWABC](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLTEST]    Script Date: 5/5/2022 12:23:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLTEST](
	[_NAME] [varchar](64) NULL,
	[_ID] [varchar](64) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLTEST2ND]    Script Date: 5/5/2022 12:23:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLTEST2ND](
	[_NAME] [nvarchar](128) NULL,
	[_ID] [nvarchar](128) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[BANHANG] ([NGAY_CT], [SO_CT], [MA_DT], [MA_VT], [SO_LUONG], [TIEN]) VALUES (CAST(N'2014-01-10T12:35:00' AS SmallDateTime), N'AA', N'VT002', N'B', CAST(22.00 AS Numeric(18, 2)), CAST(1500000 AS Numeric(18, 0)))
GO
INSERT [dbo].[BANHANG] ([NGAY_CT], [SO_CT], [MA_DT], [MA_VT], [SO_LUONG], [TIEN]) VALUES (CAST(N'2014-02-10T12:35:00' AS SmallDateTime), N'AA', N'VT002', N'B', CAST(22.00 AS Numeric(18, 2)), CAST(1500000 AS Numeric(18, 0)))
GO
INSERT [dbo].[BANHANG] ([NGAY_CT], [SO_CT], [MA_DT], [MA_VT], [SO_LUONG], [TIEN]) VALUES (CAST(N'2014-03-10T12:35:00' AS SmallDateTime), N'AA', N'VT002', N'B', CAST(22.00 AS Numeric(18, 2)), CAST(1500000 AS Numeric(18, 0)))
GO
INSERT [dbo].[BANHANG] ([NGAY_CT], [SO_CT], [MA_DT], [MA_VT], [SO_LUONG], [TIEN]) VALUES (CAST(N'2014-04-10T12:35:00' AS SmallDateTime), N'AA', N'VT002', N'B', CAST(22.00 AS Numeric(18, 2)), CAST(1500000 AS Numeric(18, 0)))
GO
INSERT [dbo].[BANHANG] ([NGAY_CT], [SO_CT], [MA_DT], [MA_VT], [SO_LUONG], [TIEN]) VALUES (CAST(N'2013-01-10T12:35:00' AS SmallDateTime), N'AA', N'VT003', N'X', CAST(1.00 AS Numeric(18, 2)), CAST(1500000 AS Numeric(18, 0)))
GO
INSERT [dbo].[BANHANG] ([NGAY_CT], [SO_CT], [MA_DT], [MA_VT], [SO_LUONG], [TIEN]) VALUES (CAST(N'2013-02-10T12:35:00' AS SmallDateTime), N'AA', N'VT003', N'X', CAST(2.00 AS Numeric(18, 2)), CAST(1500000 AS Numeric(18, 0)))
GO
INSERT [dbo].[BANHANG] ([NGAY_CT], [SO_CT], [MA_DT], [MA_VT], [SO_LUONG], [TIEN]) VALUES (CAST(N'2013-03-10T12:35:00' AS SmallDateTime), N'AA', N'VT003', N'X', CAST(5.00 AS Numeric(18, 2)), CAST(1500000 AS Numeric(18, 0)))
GO
INSERT [dbo].[BANHANG] ([NGAY_CT], [SO_CT], [MA_DT], [MA_VT], [SO_LUONG], [TIEN]) VALUES (CAST(N'2013-04-10T12:35:00' AS SmallDateTime), N'AA', N'VT003', N'X', CAST(15.00 AS Numeric(18, 2)), CAST(1500000 AS Numeric(18, 0)))
GO
INSERT [dbo].[DMDT] ([MA_DT], [TEN_DT]) VALUES (N'VT001', N'D TU 001')
GO
INSERT [dbo].[DMDT] ([MA_DT], [TEN_DT]) VALUES (N'DT002', N'D TU 002')
GO
INSERT [dbo].[DMDT] ([MA_DT], [TEN_DT]) VALUES (N'DT003', N'D TU 003')
GO
INSERT [dbo].[DMDT] ([MA_DT], [TEN_DT]) VALUES (N'DT004', N'D TU 004')
GO
INSERT [dbo].[DMDT] ([MA_DT], [TEN_DT]) VALUES (N'DT005', N'D TU 005')
GO
INSERT [dbo].[DMDT] ([MA_DT], [TEN_DT]) VALUES (N'DT006', N'D TU 006')
GO
INSERT [dbo].[DMVT] ([MA_VT], [TEN_VL]) VALUES (N'G', N'GHE')
GO
INSERT [dbo].[DMVT] ([MA_VT], [TEN_VL]) VALUES (N'B', N'BAN')
GO
INSERT [dbo].[DMVT] ([MA_VT], [TEN_VL]) VALUES (N'X', N'XE')
GO
INSERT [dbo].[DMVT] ([MA_VT], [TEN_VL]) VALUES (N'T', N'TUI')
GO
INSERT [dbo].[DMVT] ([MA_VT], [TEN_VL]) VALUES (N'V', N'VAI')
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (1, 10030, 1998)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (2, 20000, 1998)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (3, 40000, 1998)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (1, 20000, 1999)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (2, 60000, 1999)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (3, 50000, 1999)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (1, 40000, 2000)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (2, 40000, 2000)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (3, 60000, 2000)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (1, 30000, 2001)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (2, 30000, 2001)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (3, 70000, 2001)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (1, 90000, 2002)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (2, 20000, 2002)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (3, 80000, 2002)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (1, 10300, 2003)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (2, 1000, 2003)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (3, 90000, 2003)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (1, 10000, 2004)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (2, 10000, 2004)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (3, 10000, 2004)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (1, 20000, 2005)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (2, 20000, 2005)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (3, 20000, 2005)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (1, 40000, 2006)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (2, 30000, 2006)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (3, 30000, 2006)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (1, 70000, 2007)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (2, 40000, 2007)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (3, 40000, 2007)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (1, 50000, 2008)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (2, 50000, 2008)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (3, 50000, 2008)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (1, 20000, 2009)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (2, 60000, 2009)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (3, 60000, 2009)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (1, 30000, 2010)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (2, 70000, 2010)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (3, 70000, 2010)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (1, 80000, 2011)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (2, 80000, 2011)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (3, 80000, 2011)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (1, 10000, 2012)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (2, 90000, 2012)
GO
INSERT [dbo].[REVENUE] ([DepartmentID], [Revenue], [Year]) VALUES (3, 90000, 2012)
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
