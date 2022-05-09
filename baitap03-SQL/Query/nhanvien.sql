/****** Script for SelectTopNRows command from SSMS  ******/
use KinhDoanh
go

SELECT TOP (1000)
    [Manhanvien]
      , [TenNhanVien]
      , [SoDienThoai]
      , [NgayVaoLam]
      , [GioiTinh]
      , [BirthDay]
FROM [KinhDoanh].[dbo].[NhanVien]