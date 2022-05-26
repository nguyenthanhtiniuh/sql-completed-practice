USE Qlbh
GO
/****** Object:  Table [dbo].[CTHD]    Script Date: 5/26/2022 8:05:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
DROP TABLE IF EXISTS Cthd
CREATE TABLE [dbo].[Cthd]
(
    [SoHd] [int] NOT NULL,
    [MaSp] [char](4) NOT NULL,
    [Sl] [int] NULL,
    CONSTRAINT [pk_cthd] PRIMARY KEY CLUSTERED 
(
	[SoHd] ASC,
	[MaSp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 5/26/2022 8:05:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
DROP TABLE IF EXISTS HoaDon
CREATE TABLE [dbo].[HoaDon]
(
    [SoHd] [int] NOT NULL PRIMARY KEY,
    [NgayHd] [smalldatetime] NULL,
    [MaKh] [char](4) NULL,
    [MaNv] [char](4) NULL,
    [TriGia] [money] NULL,
)
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/26/2022 8:05:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
DROP TABLE IF EXISTS KhachHang
CREATE TABLE [dbo].[KhachHang]
(
    [MaKh] [char](4) NOT NULL,
    [HoTen] [varchar](40) NULL,
    [DiaChi] [varchar](50) NULL,
    [SoDt] [varchar](20) NULL,
    [NgaySinh] [smalldatetime] NULL,
    [NgayDk] [smalldatetime] NULL,
    [DoanhSo] [money] NULL,
    CONSTRAINT [pk_kh] PRIMARY KEY CLUSTERED 
(
	[MaKh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/26/2022 8:05:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
DROP TABLE IF EXISTS NhanVien
CREATE TABLE [dbo].[NhanVien]
(
    [MaNv] [char](4) NOT NULL PRIMARY KEY,
    [HoTen] [varchar](40) NULL,
    [SoDt] [varchar](20) NULL,
    [NgayVaoLam] [smalldatetime] NULL,

)
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 5/26/2022 8:05:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
DROP TABLE IF EXISTS SanPham
CREATE TABLE [dbo].[SanPham]
(
    [MaSp] [char](4) NOT NULL,
    [TenSanPham] [varchar](40) NULL,
    [DonViTinh] [varchar](20) NULL,
    [NuocSx] [varchar](40) NULL,
    [Gia] [money] NULL,
    CONSTRAINT [pk_sp] PRIMARY KEY CLUSTERED 
(
	[MaSp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
