/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000)
    [Manhanvien]
      , [TenNhanVien]
      , [SoDienThoai]
      , [NgayVaoLam]
      , [GioiTinh]
      , [BirthDay]
FROM [KinhDoanh].[dbo].[NhanVien]