/****** Script for SelectTopNRows command from SSMS  ******/
use KinhDoanh
go

SELECT TOP (1000)
    [Makhachhang]
      , [TenKhachHang]
      , [DiaChi]
      , [Sodt]
      , [NgaySinh]
      , [NgayDk]
      , [DoanhSo]
FROM [KinhDoanh].[dbo].[KhachHang]