-- Create a new database called 'KinhDoanh'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
	SELECT [name]
		FROM sys.databases
		WHERE [name] = N'KinhDoanh'
)
CREATE DATABASE KinhDoanh
GO
use [KinhDoanh]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 5/16/2022 3:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon]
(
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
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 5/16/2022 3:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet]
(
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
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/16/2022 3:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang]
(
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
/****** Object:  Table [dbo].[MatHang]    Script Date: 5/16/2022 3:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatHang]
(
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
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/16/2022 3:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien]
(
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
