USE [master]
GO
/****** Object:  Database [KinhDoanh]    Script Date: 5/12/2022 3:00:22 PM ******/
CREATE DATABASE [KinhDoanh]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KinhDoanh', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.NTT\MSSQL\DATA\KinhDoanh.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KinhDoanh_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.NTT\MSSQL\DATA\KinhDoanh_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [KinhDoanh] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KinhDoanh].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KinhDoanh] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KinhDoanh] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KinhDoanh] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KinhDoanh] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KinhDoanh] SET ARITHABORT OFF 
GO
ALTER DATABASE [KinhDoanh] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KinhDoanh] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KinhDoanh] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KinhDoanh] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KinhDoanh] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KinhDoanh] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KinhDoanh] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KinhDoanh] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KinhDoanh] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KinhDoanh] SET  ENABLE_BROKER 
GO
ALTER DATABASE [KinhDoanh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KinhDoanh] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KinhDoanh] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KinhDoanh] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KinhDoanh] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KinhDoanh] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KinhDoanh] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KinhDoanh] SET RECOVERY FULL 
GO
ALTER DATABASE [KinhDoanh] SET  MULTI_USER 
GO
ALTER DATABASE [KinhDoanh] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KinhDoanh] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KinhDoanh] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KinhDoanh] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KinhDoanh] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KinhDoanh] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'KinhDoanh', N'ON'
GO
ALTER DATABASE [KinhDoanh] SET QUERY_STORE = OFF
GO
USE [KinhDoanh]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 5/12/2022 3:00:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Sohd] [int] NOT NULL,
	[Ngay] [datetime] NULL,
	[Makhachhang] [char](4) NULL,
	[Manhanvien] [char](4) NULL,
	[TriGia] [money] NULL,
 CONSTRAINT [pk_hoadon] PRIMARY KEY CLUSTERED 
(
	[Sohd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 5/12/2022 3:00:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[Sohd] [int] NOT NULL,
	[MaMatHang] [char](4) NOT NULL,
	[SoLuong] [numeric](18, 0) NULL,
 CONSTRAINT [pk_hoadonchitiet] PRIMARY KEY CLUSTERED 
(
	[Sohd] ASC,
	[MaMatHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/12/2022 3:00:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Makhachhang] [char](4) NOT NULL,
	[TenKhachHang] [nvarchar](40) NULL,
	[DiaChi] [varchar](50) NULL,
	[Sodt] [varchar](20) NULL,
	[NgaySinh] [smalldatetime] NULL,
	[NgayDk] [smalldatetime] NULL,
	[DoanhSo] [money] NULL,
 CONSTRAINT [pk_khahchang] PRIMARY KEY CLUSTERED 
(
	[Makhachhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatHang]    Script Date: 5/12/2022 3:00:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatHang](
	[MaMathang] [char](4) NOT NULL,
	[TenMatHang] [nvarchar](40) NULL,
	[DonViTinh] [varchar](20) NULL,
	[NuocSanXuat] [varchar](40) NULL,
	[Gia] [money] NULL,
	[DanhMuc] [varchar](50) NULL,
 CONSTRAINT [pk_mathang] PRIMARY KEY CLUSTERED 
(
	[MaMathang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/12/2022 3:00:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[Manhanvien] [char](4) NOT NULL,
	[TenNhanVien] [nvarchar](40) NULL,
	[SoDienThoai] [varchar](20) NULL,
	[NgayVaoLam] [smalldatetime] NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[BirthDay] [smalldatetime] NULL,
 CONSTRAINT [pk_nhanvien] PRIMARY KEY CLUSTERED 
(
	[Manhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HoaDon] ([Sohd], [Ngay], [Makhachhang], [Manhanvien], [TriGia]) VALUES (1001, CAST(N'2006-07-23T00:00:00.000' AS DateTime), N'kh01', N'nv01', 320000.0000)
GO
INSERT [dbo].[HoaDon] ([Sohd], [Ngay], [Makhachhang], [Manhanvien], [TriGia]) VALUES (1002, CAST(N'2006-08-12T00:00:00.000' AS DateTime), N'kh01', N'nv02', 840000.0000)
GO
INSERT [dbo].[HoaDon] ([Sohd], [Ngay], [Makhachhang], [Manhanvien], [TriGia]) VALUES (1003, CAST(N'2006-08-23T00:00:00.000' AS DateTime), N'kh02', N'nv01', 100000.0000)
GO
INSERT [dbo].[HoaDon] ([Sohd], [Ngay], [Makhachhang], [Manhanvien], [TriGia]) VALUES (1004, CAST(N'2006-09-01T00:00:00.000' AS DateTime), N'kh02', N'nv01', 180000.0000)
GO
INSERT [dbo].[HoaDon] ([Sohd], [Ngay], [Makhachhang], [Manhanvien], [TriGia]) VALUES (1005, CAST(N'2006-10-20T00:00:00.000' AS DateTime), N'kh01', N'nv02', 3800000.0000)
GO
INSERT [dbo].[HoaDon] ([Sohd], [Ngay], [Makhachhang], [Manhanvien], [TriGia]) VALUES (1006, CAST(N'2010-09-01T00:00:00.000' AS DateTime), N'kh01', N'nv03', 2430000.0000)
GO
INSERT [dbo].[HoaDon] ([Sohd], [Ngay], [Makhachhang], [Manhanvien], [TriGia]) VALUES (1007, CAST(N'2010-09-01T00:00:00.000' AS DateTime), N'kh03', N'nv03', 510000.0000)
GO
INSERT [dbo].[HoaDon] ([Sohd], [Ngay], [Makhachhang], [Manhanvien], [TriGia]) VALUES (1008, CAST(N'2010-09-01T00:00:00.000' AS DateTime), N'kh01', N'nv03', 440000.0000)
GO
INSERT [dbo].[HoaDon] ([Sohd], [Ngay], [Makhachhang], [Manhanvien], [TriGia]) VALUES (1009, CAST(N'2006-10-28T00:00:00.000' AS DateTime), N'kh03', N'nv04', 200000.0000)
GO
INSERT [dbo].[HoaDon] ([Sohd], [Ngay], [Makhachhang], [Manhanvien], [TriGia]) VALUES (1010, CAST(N'2006-11-01T00:00:00.000' AS DateTime), N'kh01', N'nv01', 5200000.0000)
GO
INSERT [dbo].[HoaDon] ([Sohd], [Ngay], [Makhachhang], [Manhanvien], [TriGia]) VALUES (1011, CAST(N'2010-09-01T00:00:00.000' AS DateTime), N'kh04', N'nv03', 250000.0000)
GO
INSERT [dbo].[HoaDon] ([Sohd], [Ngay], [Makhachhang], [Manhanvien], [TriGia]) VALUES (1012, CAST(N'2010-09-01T00:00:00.000' AS DateTime), N'kh05', N'nv03', 21000.0000)
GO
INSERT [dbo].[HoaDon] ([Sohd], [Ngay], [Makhachhang], [Manhanvien], [TriGia]) VALUES (1013, CAST(N'2006-12-12T00:00:00.000' AS DateTime), N'kh06', N'nv01', 5000.0000)
GO
INSERT [dbo].[HoaDon] ([Sohd], [Ngay], [Makhachhang], [Manhanvien], [TriGia]) VALUES (1014, CAST(N'2006-12-31T00:00:00.000' AS DateTime), N'kh03', N'nv02', 3150000.0000)
GO
INSERT [dbo].[HoaDon] ([Sohd], [Ngay], [Makhachhang], [Manhanvien], [TriGia]) VALUES (1015, CAST(N'2007-01-01T00:00:00.000' AS DateTime), N'kh06', N'nv01', 910000.0000)
GO
INSERT [dbo].[HoaDon] ([Sohd], [Ngay], [Makhachhang], [Manhanvien], [TriGia]) VALUES (1016, CAST(N'2007-01-01T00:00:00.000' AS DateTime), N'kh07', N'nv02', 12500.0000)
GO
INSERT [dbo].[HoaDon] ([Sohd], [Ngay], [Makhachhang], [Manhanvien], [TriGia]) VALUES (1017, CAST(N'2010-09-01T00:00:00.000' AS DateTime), N'kh08', N'nv03', 35000.0000)
GO
INSERT [dbo].[HoaDon] ([Sohd], [Ngay], [Makhachhang], [Manhanvien], [TriGia]) VALUES (1018, CAST(N'2010-09-01T00:00:00.000' AS DateTime), N'kh08', N'nv03', 330000.0000)
GO
INSERT [dbo].[HoaDon] ([Sohd], [Ngay], [Makhachhang], [Manhanvien], [TriGia]) VALUES (1019, CAST(N'2010-09-01T00:00:00.000' AS DateTime), N'kh01', N'nv03', 30000.0000)
GO
INSERT [dbo].[HoaDon] ([Sohd], [Ngay], [Makhachhang], [Manhanvien], [TriGia]) VALUES (1020, CAST(N'2007-01-14T00:00:00.000' AS DateTime), N'kh09', N'nv04', 70000.0000)
GO
INSERT [dbo].[HoaDon] ([Sohd], [Ngay], [Makhachhang], [Manhanvien], [TriGia]) VALUES (1021, CAST(N'2010-09-01T00:00:00.000' AS DateTime), N'kh10', N'nv03', 67500.0000)
GO
INSERT [dbo].[HoaDon] ([Sohd], [Ngay], [Makhachhang], [Manhanvien], [TriGia]) VALUES (1022, CAST(N'2010-09-01T00:00:00.000' AS DateTime), N'kh01', N'nv03', 7000.0000)
GO
INSERT [dbo].[HoaDon] ([Sohd], [Ngay], [Makhachhang], [Manhanvien], [TriGia]) VALUES (1023, CAST(N'2010-09-17T00:00:00.000' AS DateTime), N'kh01', N'nv01', 330000.0000)
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1001, N'bc01', CAST(5 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1001, N'bc02', CAST(10 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1001, N'st01', CAST(5 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1001, N'st08', CAST(10 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1001, N'tv02', CAST(10 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1002, N'bb01', CAST(20 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1002, N'bb02', CAST(20 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1002, N'bc04', CAST(20 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1003, N'bb03', CAST(10 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1004, N'tv01', CAST(20 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1004, N'tv02', CAST(10 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1004, N'tv03', CAST(10 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1004, N'tv04', CAST(10 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1005, N'tv05', CAST(50 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1005, N'tv06', CAST(50 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1006, N'st01', CAST(30 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1006, N'st02', CAST(10 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1006, N'tv07', CAST(20 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1007, N'st03', CAST(10 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1008, N'st04', CAST(8 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1009, N'st05', CAST(10 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1010, N'st04', CAST(50 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1010, N'st07', CAST(50 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1010, N'st08', CAST(100 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1010, N'tv03', CAST(100 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1010, N'tv07', CAST(50 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1011, N'st06', CAST(50 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1012, N'st07', CAST(3 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1013, N'st08', CAST(5 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1014, N'bb01', CAST(50 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1014, N'bb02', CAST(100 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1014, N'bc02', CAST(80 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1014, N'bc04', CAST(60 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1015, N'bb02', CAST(30 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1015, N'bb03', CAST(7 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1016, N'tv01', CAST(5 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1017, N'tv02', CAST(1 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1017, N'tv03', CAST(1 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1017, N'tv04', CAST(5 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1018, N'st04', CAST(6 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1019, N'st05', CAST(1 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1019, N'st06', CAST(2 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1020, N'st07', CAST(10 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1021, N'st08', CAST(5 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1021, N'tv01', CAST(7 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1021, N'tv02', CAST(10 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1022, N'st07', CAST(1 AS Numeric(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([Sohd], [MaMatHang], [SoLuong]) VALUES (1023, N'st04', CAST(6 AS Numeric(18, 0)))
GO
INSERT [dbo].[KhachHang] ([Makhachhang], [TenKhachHang], [DiaChi], [Sodt], [NgaySinh], [NgayDk], [DoanhSo]) VALUES (N'kh01', N'nguyen van a', N'731 tran hung dao, q5, tphcm', N'8823451', CAST(N'1960-10-22T00:00:00' AS SmallDateTime), CAST(N'2006-07-22T00:00:00' AS SmallDateTime), 13060000.0000)
GO
INSERT [dbo].[KhachHang] ([Makhachhang], [TenKhachHang], [DiaChi], [Sodt], [NgaySinh], [NgayDk], [DoanhSo]) VALUES (N'kh02', N'tran ngoc han', N'23/5 nguyen trai, q5, tphcm', N'908256478', CAST(N'1974-04-03T00:00:00' AS SmallDateTime), CAST(N'2006-07-30T00:00:00' AS SmallDateTime), 280000.0000)
GO
INSERT [dbo].[KhachHang] ([Makhachhang], [TenKhachHang], [DiaChi], [Sodt], [NgaySinh], [NgayDk], [DoanhSo]) VALUES (N'kh03', N'tran ngoc linh', N'45 nguyen canh chan, q1, tphcm', N'938776266', CAST(N'1980-06-12T00:00:00' AS SmallDateTime), CAST(N'2006-05-08T00:00:00' AS SmallDateTime), 3860000.0000)
GO
INSERT [dbo].[KhachHang] ([Makhachhang], [TenKhachHang], [DiaChi], [Sodt], [NgaySinh], [NgayDk], [DoanhSo]) VALUES (N'kh04', N'tran minh long', N'50/34 le dai hanh, q10, tphcm', N'917325476', CAST(N'1965-03-09T00:00:00' AS SmallDateTime), CAST(N'2006-02-10T00:00:00' AS SmallDateTime), 250000.0000)
GO
INSERT [dbo].[KhachHang] ([Makhachhang], [TenKhachHang], [DiaChi], [Sodt], [NgaySinh], [NgayDk], [DoanhSo]) VALUES (N'kh05', N'le nhat minh', N'34 truong dinh, q3, tphcm', N'8246108', CAST(N'1950-03-10T00:00:00' AS SmallDateTime), CAST(N'2006-10-28T00:00:00' AS SmallDateTime), 21000.0000)
GO
INSERT [dbo].[KhachHang] ([Makhachhang], [TenKhachHang], [DiaChi], [Sodt], [NgaySinh], [NgayDk], [DoanhSo]) VALUES (N'kh06', N'le hoai thuong', N'227 nguyen van cu, q5, tphcm', N'8631738', CAST(N'1981-12-31T00:00:00' AS SmallDateTime), CAST(N'2006-11-24T00:00:00' AS SmallDateTime), 915000.0000)
GO
INSERT [dbo].[KhachHang] ([Makhachhang], [TenKhachHang], [DiaChi], [Sodt], [NgaySinh], [NgayDk], [DoanhSo]) VALUES (N'kh07', N'nguyen van tam', N'32/3 tran binh trong, q5, tphcm', N'916783565', CAST(N'1971-04-06T00:00:00' AS SmallDateTime), CAST(N'2006-01-12T00:00:00' AS SmallDateTime), 12500.0000)
GO
INSERT [dbo].[KhachHang] ([Makhachhang], [TenKhachHang], [DiaChi], [Sodt], [NgaySinh], [NgayDk], [DoanhSo]) VALUES (N'kh08', N'phan thi thanh', N'45/2 an duong vuong, q5, tphcm', N'938435756', CAST(N'1971-01-10T00:00:00' AS SmallDateTime), CAST(N'2006-12-13T00:00:00' AS SmallDateTime), 365000.0000)
GO
INSERT [dbo].[KhachHang] ([Makhachhang], [TenKhachHang], [DiaChi], [Sodt], [NgaySinh], [NgayDk], [DoanhSo]) VALUES (N'kh09', N'le ha vinh', N'873 le hong phong, q5, tphcm', N'8654763', CAST(N'1979-09-03T00:00:00' AS SmallDateTime), CAST(N'2007-01-14T00:00:00' AS SmallDateTime), 70000.0000)
GO
INSERT [dbo].[KhachHang] ([Makhachhang], [TenKhachHang], [DiaChi], [Sodt], [NgaySinh], [NgayDk], [DoanhSo]) VALUES (N'kh10', N'ha duy lap', N'34/34b nguyen trai, q1, tphcm', N'8768904', CAST(N'1983-05-02T00:00:00' AS SmallDateTime), CAST(N'2007-01-16T00:00:00' AS SmallDateTime), 67500.0000)
GO
INSERT [dbo].[MatHang] ([MaMathang], [TenMatHang], [DonViTinh], [NuocSanXuat], [Gia], [DanhMuc]) VALUES (N'bb01', N'but bi', N'cay', N'viet nam', 5000.0000, N'Hang Hoa')
GO
INSERT [dbo].[MatHang] ([MaMathang], [TenMatHang], [DonViTinh], [NuocSanXuat], [Gia], [DanhMuc]) VALUES (N'bb02', N'but bi', N'cay', N'trung quoc', 7000.0000, N'Hang Hoa')
GO
INSERT [dbo].[MatHang] ([MaMathang], [TenMatHang], [DonViTinh], [NuocSanXuat], [Gia], [DanhMuc]) VALUES (N'bb03', N'but bi', N'hop', N'thai lan', 100000.0000, N'Hang Hoa')
GO
INSERT [dbo].[MatHang] ([MaMathang], [TenMatHang], [DonViTinh], [NuocSanXuat], [Gia], [DanhMuc]) VALUES (N'bc01', N'but chi', N'cay', N'singapore', 3000.0000, N'Do Dung Van Phong')
GO
INSERT [dbo].[MatHang] ([MaMathang], [TenMatHang], [DonViTinh], [NuocSanXuat], [Gia], [DanhMuc]) VALUES (N'bc02', N'but chi', N'cay', N'singapore', 5000.0000, N'Hang Hoa')
GO
INSERT [dbo].[MatHang] ([MaMathang], [TenMatHang], [DonViTinh], [NuocSanXuat], [Gia], [DanhMuc]) VALUES (N'bc03', N'but chi', N'cay', N'viet nam', 3500.0000, N'Do Dung Van Phong')
GO
INSERT [dbo].[MatHang] ([MaMathang], [TenMatHang], [DonViTinh], [NuocSanXuat], [Gia], [DanhMuc]) VALUES (N'bc04', N'but chi', N'hop', N'viet nam', 30000.0000, N'Hang Hoa')
GO
INSERT [dbo].[MatHang] ([MaMathang], [TenMatHang], [DonViTinh], [NuocSanXuat], [Gia], [DanhMuc]) VALUES (N'st01', N'so tay 500 trang', N'quyen', N'trung quoc', 40000.0000, N'Hang Hoa')
GO
INSERT [dbo].[MatHang] ([MaMathang], [TenMatHang], [DonViTinh], [NuocSanXuat], [Gia], [DanhMuc]) VALUES (N'st02', N'so tay loai 1', N'quyen', N'viet nam', 55000.0000, N'Hang Hoa')
GO
INSERT [dbo].[MatHang] ([MaMathang], [TenMatHang], [DonViTinh], [NuocSanXuat], [Gia], [DanhMuc]) VALUES (N'st03', N'so tay loai 2', N'quyen', N'viet nam', 51000.0000, N'Hang Hoa')
GO
INSERT [dbo].[MatHang] ([MaMathang], [TenMatHang], [DonViTinh], [NuocSanXuat], [Gia], [DanhMuc]) VALUES (N'st04', N'so tay', N'quyen', N'thai lan', 55000.0000, N'Hang Hoa')
GO
INSERT [dbo].[MatHang] ([MaMathang], [TenMatHang], [DonViTinh], [NuocSanXuat], [Gia], [DanhMuc]) VALUES (N'st05', N'so tay mong', N'quyen', N'thai lan', 20000.0000, N'Hang Hoa')
GO
INSERT [dbo].[MatHang] ([MaMathang], [TenMatHang], [DonViTinh], [NuocSanXuat], [Gia], [DanhMuc]) VALUES (N'st06', N'phan viet bang', N'hop', N'viet nam', 5000.0000, N'Hang Hoa')
GO
INSERT [dbo].[MatHang] ([MaMathang], [TenMatHang], [DonViTinh], [NuocSanXuat], [Gia], [DanhMuc]) VALUES (N'st07', N'phan khong bui', N'hop', N'viet nam', 7000.0000, N'Hang Hoa')
GO
INSERT [dbo].[MatHang] ([MaMathang], [TenMatHang], [DonViTinh], [NuocSanXuat], [Gia], [DanhMuc]) VALUES (N'st08', N'bong bang', N'cai', N'viet nam', 1000.0000, N'Do Dung Van Phong')
GO
INSERT [dbo].[MatHang] ([MaMathang], [TenMatHang], [DonViTinh], [NuocSanXuat], [Gia], [DanhMuc]) VALUES (N'st09', N'but long', N'cay', N'viet nam', 5000.0000, N'Hang Hoa')
GO
INSERT [dbo].[MatHang] ([MaMathang], [TenMatHang], [DonViTinh], [NuocSanXuat], [Gia], [DanhMuc]) VALUES (N'st10', N'but long', N'cay', N'trung quoc', 7000.0000, N'Hang Hoa')
GO
INSERT [dbo].[MatHang] ([MaMathang], [TenMatHang], [DonViTinh], [NuocSanXuat], [Gia], [DanhMuc]) VALUES (N'tv01', N'tap 100 giay mong', N'quyen', N'trung quoc', 2500.0000, N'Do Dung Van Phong')
GO
INSERT [dbo].[MatHang] ([MaMathang], [TenMatHang], [DonViTinh], [NuocSanXuat], [Gia], [DanhMuc]) VALUES (N'tv02', N'tap 200 giay mong', N'quyen', N'trung quoc', 4500.0000, N'Do Dung Van Phong')
GO
INSERT [dbo].[MatHang] ([MaMathang], [TenMatHang], [DonViTinh], [NuocSanXuat], [Gia], [DanhMuc]) VALUES (N'tv03', N'tap 100 giay tot', N'quyen', N'viet nam', 3000.0000, N'Do Dung Van Phong')
GO
INSERT [dbo].[MatHang] ([MaMathang], [TenMatHang], [DonViTinh], [NuocSanXuat], [Gia], [DanhMuc]) VALUES (N'tv04', N'tap 200 giay tot', N'quyen', N'viet nam', 5500.0000, N'Hang Hoa')
GO
INSERT [dbo].[MatHang] ([MaMathang], [TenMatHang], [DonViTinh], [NuocSanXuat], [Gia], [DanhMuc]) VALUES (N'tv05', N'tap 100 trang', N'chuc', N'viet nam', 23000.0000, N'Hang Hoa')
GO
INSERT [dbo].[MatHang] ([MaMathang], [TenMatHang], [DonViTinh], [NuocSanXuat], [Gia], [DanhMuc]) VALUES (N'tv06', N'tap 200 trang', N'chuc', N'viet nam', 53000.0000, N'Hang Hoa')
GO
INSERT [dbo].[MatHang] ([MaMathang], [TenMatHang], [DonViTinh], [NuocSanXuat], [Gia], [DanhMuc]) VALUES (N'tv07', N'tap 100 trang', N'chuc', N'trung quoc', 34000.0000, N'Hang Hoa')
GO
INSERT [dbo].[NhanVien] ([Manhanvien], [TenNhanVien], [SoDienThoai], [NgayVaoLam], [GioiTinh], [BirthDay]) VALUES (N'nv01', N'Nguyen Van a', N'927345678', CAST(N'2006-04-13T00:00:00' AS SmallDateTime), N'nam', CAST(N'1967-01-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[NhanVien] ([Manhanvien], [TenNhanVien], [SoDienThoai], [NgayVaoLam], [GioiTinh], [BirthDay]) VALUES (N'nv02', N'Pham Thi B', N'987567390', CAST(N'2006-04-21T00:00:00' AS SmallDateTime), N'nu', CAST(N'1972-01-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[NhanVien] ([Manhanvien], [TenNhanVien], [SoDienThoai], [NgayVaoLam], [GioiTinh], [BirthDay]) VALUES (N'nv03', N'Phan Ngoc C', N'997047382', CAST(N'2006-04-27T00:00:00' AS SmallDateTime), N'nam', CAST(N'1967-01-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[NhanVien] ([Manhanvien], [TenNhanVien], [SoDienThoai], [NgayVaoLam], [GioiTinh], [BirthDay]) VALUES (N'nv04', N'ngo thanh tuan', N'913758498', CAST(N'2006-06-24T00:00:00' AS SmallDateTime), N'nam', CAST(N'1967-01-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[NhanVien] ([Manhanvien], [TenNhanVien], [SoDienThoai], [NgayVaoLam], [GioiTinh], [BirthDay]) VALUES (N'nv05', N'nguyen thi truc thanh', N'918590387', CAST(N'2006-07-20T00:00:00' AS SmallDateTime), N'nu', CAST(N'1972-01-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[NhanVien] ([Manhanvien], [TenNhanVien], [SoDienThoai], [NgayVaoLam], [GioiTinh], [BirthDay]) VALUES (N'nv06', N'Nguyen Thanh Tin', N'0399552111', CAST(N'2006-07-20T00:00:00' AS SmallDateTime), N'nam', CAST(N'1998-01-01T00:00:00' AS SmallDateTime))
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [fk01_hd] FOREIGN KEY([Makhachhang])
REFERENCES [dbo].[KhachHang] ([Makhachhang])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [fk01_hd]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [fk02_hd] FOREIGN KEY([Manhanvien])
REFERENCES [dbo].[NhanVien] ([Manhanvien])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [fk02_hd]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [fk01_cthd] FOREIGN KEY([Sohd])
REFERENCES [dbo].[HoaDon] ([Sohd])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [fk01_cthd]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [fk02_cthd] FOREIGN KEY([MaMatHang])
REFERENCES [dbo].[MatHang] ([MaMathang])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [fk02_cthd]
GO
USE [master]
GO
ALTER DATABASE [KinhDoanh] SET  READ_WRITE 
GO
