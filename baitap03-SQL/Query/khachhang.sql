/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000)
    [Makhachhang]
      , [TenKhachHang]
      , [DiaChi]
      , [Sodt]
      , [NgaySinh]
      , [NgayDk]
      , [DoanhSo]
FROM [KinhDoanh].[dbo].[KhachHang]