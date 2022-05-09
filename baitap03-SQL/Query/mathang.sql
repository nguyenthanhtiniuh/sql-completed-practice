/****** Script for SelectTopNRows command from SSMS  ******/
use KinhDoanh
go

SELECT TOP (1000)
    [MaMathang]
      , [TenMatHang]
      , [DonViTinh]
      , [NuocSanXuat]
      , [Gia]
FROM [KinhDoanh].[dbo].[MatHang]