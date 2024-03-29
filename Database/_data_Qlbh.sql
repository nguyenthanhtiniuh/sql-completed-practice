USE Qlbh
GO
TRUNCATE TABLE KHACHHANG
GO
TRUNCATE TABLE NHANVIEN
GO
TRUNCATE TABLE CTHD 
GO
TRUNCATE TABLE HOADON
GO
TRUNCATE TABLE SANPHAM
GO

INSERT [dbo].[KHACHHANG]
    ([MAKH], [HOTEN], [DiaChi], [SODT], [NgaySinh], [NgayDk], [DOANHSO])
VALUES
    (N'KH01', N'Nguyen Van A', N'731 Tran Hung Dao, Q5, TpHCM', N'8823451', CAST(N'1960-10-22T00:00:00' AS SmallDateTime), CAST(N'2006-07-22T00:00:00' AS SmallDateTime), 13060000.0000)
GO
INSERT [dbo].[KHACHHANG]
    ([MAKH], [HOTEN], [DiaChi], [SODT], [NgaySinh], [NgayDk], [DOANHSO])
VALUES
    (N'KH02', N'Tran Ngoc Han', N'23/5 Nguyen Trai, Q5, TpHCM', N'908256478', CAST(N'1974-04-03T00:00:00' AS SmallDateTime), CAST(N'2006-07-30T00:00:00' AS SmallDateTime), 280000.0000)
GO
INSERT [dbo].[KHACHHANG]
    ([MAKH], [HOTEN], [DiaChi], [SODT], [NgaySinh], [NgayDk], [DOANHSO])
VALUES
    (N'KH03', N'Tran Ngoc Linh', N'45 Nguyen Canh Chan, Q1, TpHCM', N'938776266', CAST(N'1980-06-12T00:00:00' AS SmallDateTime), CAST(N'2006-05-08T00:00:00' AS SmallDateTime), 3860000.0000)
GO
INSERT [dbo].[KHACHHANG]
    ([MAKH], [HOTEN], [DiaChi], [SODT], [NgaySinh], [NgayDk], [DOANHSO])
VALUES
    (N'KH04', N'Tran Minh Long', N'50/34 Le Dai Hanh, Q10, TpHCM', N'917325476', CAST(N'1965-03-09T00:00:00' AS SmallDateTime), CAST(N'2006-02-10T00:00:00' AS SmallDateTime), 250000.0000)
GO
INSERT [dbo].[KHACHHANG]
    ([MAKH], [HOTEN], [DiaChi], [SODT], [NgaySinh], [NgayDk], [DOANHSO])
VALUES
    (N'KH05', N'Le Nhat Minh', N'34 Truong Dinh, Q3, TpHCM', N'8246108', CAST(N'1950-03-10T00:00:00' AS SmallDateTime), CAST(N'2006-10-28T00:00:00' AS SmallDateTime), 21000.0000)
GO
INSERT [dbo].[KHACHHANG]
    ([MAKH], [HOTEN], [DiaChi], [SODT], [NgaySinh], [NgayDk], [DOANHSO])
VALUES
    (N'KH06', N'Le Hoai Thuong', N'227 Nguyen Van Cu, Q5, TpHCM', N'8631738', CAST(N'1981-12-31T00:00:00' AS SmallDateTime), CAST(N'2006-11-24T00:00:00' AS SmallDateTime), 915000.0000)
GO
INSERT [dbo].[KHACHHANG]
    ([MAKH], [HOTEN], [DiaChi], [SODT], [NgaySinh], [NgayDk], [DOANHSO])
VALUES
    (N'KH07', N'Nguyen Van Tam', N'32/3 Tran Binh Trong, Q5, TpHCM', N'916783565', CAST(N'1971-04-06T00:00:00' AS SmallDateTime), CAST(N'2006-01-12T00:00:00' AS SmallDateTime), 12500.0000)
GO
INSERT [dbo].[KHACHHANG]
    ([MAKH], [HOTEN], [DiaChi], [SODT], [NgaySinh], [NgayDk], [DOANHSO])
VALUES
    (N'KH08', N'Phan Thi Thanh', N'45/2 An Duong Vuong, Q5, TpHCM', N'938435756', CAST(N'1971-01-10T00:00:00' AS SmallDateTime), CAST(N'2006-12-13T00:00:00' AS SmallDateTime), 365000.0000)
GO
INSERT [dbo].[KHACHHANG]
    ([MAKH], [HOTEN], [DiaChi], [SODT], [NgaySinh], [NgayDk], [DOANHSO])
VALUES
    (N'KH09', N'Le Ha Vinh', N'873 Le Hong Phong, Q5, TpHCM', N'8654763', CAST(N'1979-09-03T00:00:00' AS SmallDateTime), CAST(N'2007-01-14T00:00:00' AS SmallDateTime), 70000.0000)
GO
INSERT [dbo].[KHACHHANG]
    ([MAKH], [HOTEN], [DiaChi], [SODT], [NgaySinh], [NgayDk], [DOANHSO])
VALUES
    (N'KH10', N'Ha Duy Lap', N'34/34B Nguyen Trai, Q1, TpHCM', N'8768904', CAST(N'1983-05-02T00:00:00' AS SmallDateTime), CAST(N'2007-01-16T00:00:00' AS SmallDateTime), 67500.0000)
GO
INSERT [dbo].[NHANVIEN]
    ([MANV], [HOTEN], [SODT], [NgayVaoLam])
VALUES
    (N'NV01', N'Nguyen Nhu Nhut', N'927345678', CAST(N'2006-04-13T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[NHANVIEN]
    ([MANV], [HOTEN], [SODT], [NgayVaoLam])
VALUES
    (N'NV02', N'Le Thi Phi Yen', N'987567390', CAST(N'2006-04-21T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[NHANVIEN]
    ([MANV], [HOTEN], [SODT], [NgayVaoLam])
VALUES
    (N'NV03', N'Nguyen Van B', N'997047382', CAST(N'2006-04-27T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[NHANVIEN]
    ([MANV], [HOTEN], [SODT], [NgayVaoLam])
VALUES
    (N'NV04', N'Ngo Thanh Tuan', N'913758498', CAST(N'2006-06-24T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[NHANVIEN]
    ([MANV], [HOTEN], [SODT], [NgayVaoLam])
VALUES
    (N'NV05', N'Nguyen Thi Truc Thanh', N'918590387', CAST(N'2006-07-20T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[HOADON]
    ([SOHD], [NgayHd], [MAKH], [MANV], [TRIGIA])
VALUES
    (1001, CAST(N'2006-07-23T00:00:00' AS SmallDateTime), N'KH01', N'NV01', 320000.0000)
GO
INSERT [dbo].[HOADON]
    ([SOHD], [NgayHd], [MAKH], [MANV], [TRIGIA])
VALUES
    (1002, CAST(N'2006-08-12T00:00:00' AS SmallDateTime), N'KH01', N'NV02', 840000.0000)
GO
INSERT [dbo].[HOADON]
    ([SOHD], [NgayHd], [MAKH], [MANV], [TRIGIA])
VALUES
    (1003, CAST(N'2006-08-23T00:00:00' AS SmallDateTime), N'KH02', N'NV01', 100000.0000)
GO
INSERT [dbo].[HOADON]
    ([SOHD], [NgayHd], [MAKH], [MANV], [TRIGIA])
VALUES
    (1004, CAST(N'2006-09-01T00:00:00' AS SmallDateTime), N'KH02', N'NV01', 180000.0000)
GO
INSERT [dbo].[HOADON]
    ([SOHD], [NgayHd], [MAKH], [MANV], [TRIGIA])
VALUES
    (1005, CAST(N'2006-10-20T00:00:00' AS SmallDateTime), N'KH01', N'NV02', 3800000.0000)
GO
INSERT [dbo].[HOADON]
    ([SOHD], [NgayHd], [MAKH], [MANV], [TRIGIA])
VALUES
    (1006, CAST(N'2006-10-16T00:00:00' AS SmallDateTime), N'KH01', N'NV03', 2430000.0000)
GO
INSERT [dbo].[HOADON]
    ([SOHD], [NgayHd], [MAKH], [MANV], [TRIGIA])
VALUES
    (1007, CAST(N'2006-10-28T00:00:00' AS SmallDateTime), N'KH03', N'NV03', 510000.0000)
GO
INSERT [dbo].[HOADON]
    ([SOHD], [NgayHd], [MAKH], [MANV], [TRIGIA])
VALUES
    (1008, CAST(N'2006-10-28T00:00:00' AS SmallDateTime), N'KH01', N'NV03', 440000.0000)
GO
INSERT [dbo].[HOADON]
    ([SOHD], [NgayHd], [MAKH], [MANV], [TRIGIA])
VALUES
    (1009, CAST(N'2006-10-28T00:00:00' AS SmallDateTime), N'KH03', N'NV04', 200000.0000)
GO
INSERT [dbo].[HOADON]
    ([SOHD], [NgayHd], [MAKH], [MANV], [TRIGIA])
VALUES
    (1010, CAST(N'2006-11-01T00:00:00' AS SmallDateTime), N'KH01', N'NV01', 5200000.0000)
GO
INSERT [dbo].[HOADON]
    ([SOHD], [NgayHd], [MAKH], [MANV], [TRIGIA])
VALUES
    (1011, CAST(N'2006-11-04T00:00:00' AS SmallDateTime), N'KH04', N'NV03', 250000.0000)
GO
INSERT [dbo].[HOADON]
    ([SOHD], [NgayHd], [MAKH], [MANV], [TRIGIA])
VALUES
    (1012, CAST(N'2006-11-30T00:00:00' AS SmallDateTime), N'KH05', N'NV03', 21000.0000)
GO
INSERT [dbo].[HOADON]
    ([SOHD], [NgayHd], [MAKH], [MANV], [TRIGIA])
VALUES
    (1013, CAST(N'2006-12-12T00:00:00' AS SmallDateTime), N'KH06', N'NV01', 5000.0000)
GO
INSERT [dbo].[HOADON]
    ([SOHD], [NgayHd], [MAKH], [MANV], [TRIGIA])
VALUES
    (1014, CAST(N'2006-12-31T00:00:00' AS SmallDateTime), N'KH03', N'NV02', 3150000.0000)
GO
INSERT [dbo].[HOADON]
    ([SOHD], [NgayHd], [MAKH], [MANV], [TRIGIA])
VALUES
    (1015, CAST(N'2007-01-01T00:00:00' AS SmallDateTime), N'KH06', N'NV01', 910000.0000)
GO
INSERT [dbo].[HOADON]
    ([SOHD], [NgayHd], [MAKH], [MANV], [TRIGIA])
VALUES
    (1016, CAST(N'2007-01-01T00:00:00' AS SmallDateTime), N'KH07', N'NV02', 12500.0000)
GO
INSERT [dbo].[HOADON]
    ([SOHD], [NgayHd], [MAKH], [MANV], [TRIGIA])
VALUES
    (1017, CAST(N'2007-01-02T00:00:00' AS SmallDateTime), N'KH08', N'NV03', 35000.0000)
GO
INSERT [dbo].[HOADON]
    ([SOHD], [NgayHd], [MAKH], [MANV], [TRIGIA])
VALUES
    (1018, CAST(N'2007-01-13T00:00:00' AS SmallDateTime), N'KH08', N'NV03', 330000.0000)
GO
INSERT [dbo].[HOADON]
    ([SOHD], [NgayHd], [MAKH], [MANV], [TRIGIA])
VALUES
    (1019, CAST(N'2007-01-13T00:00:00' AS SmallDateTime), N'KH01', N'NV03', 30000.0000)
GO
INSERT [dbo].[HOADON]
    ([SOHD], [NgayHd], [MAKH], [MANV], [TRIGIA])
VALUES
    (1020, CAST(N'2007-01-14T00:00:00' AS SmallDateTime), N'KH09', N'NV04', 70000.0000)
GO
INSERT [dbo].[HOADON]
    ([SOHD], [NgayHd], [MAKH], [MANV], [TRIGIA])
VALUES
    (1021, CAST(N'2007-01-16T00:00:00' AS SmallDateTime), N'KH10', N'NV03', 67500.0000)
GO
INSERT [dbo].[HOADON]
    ([SOHD], [NgayHd], [MAKH], [MANV], [TRIGIA])
VALUES
    (1022, CAST(N'2007-01-16T00:00:00' AS SmallDateTime), NULL, N'NV03', 7000.0000)
GO
INSERT [dbo].[HOADON]
    ([SOHD], [NgayHd], [MAKH], [MANV], [TRIGIA])
VALUES
    (1023, CAST(N'2007-01-17T00:00:00' AS SmallDateTime), NULL, N'NV01', 330000.0000)
GO
INSERT [dbo].[SANPHAM]
    ([MASP], [TenSanPham], [DonViTinh], [NUOCSX], [GIA])
VALUES
    (N'BB01', N'But bi', N'cay', N'Viet Nam', 5000.0000)
GO
INSERT [dbo].[SANPHAM]
    ([MASP], [TenSanPham], [DonViTinh], [NUOCSX], [GIA])
VALUES
    (N'BB02', N'But bi', N'cay', N'Trung Quoc', 7000.0000)
GO
INSERT [dbo].[SANPHAM]
    ([MASP], [TenSanPham], [DonViTinh], [NUOCSX], [GIA])
VALUES
    (N'BB03', N'But bi', N'hop', N'Thai Lan', 100000.0000)
GO
INSERT [dbo].[SANPHAM]
    ([MASP], [TenSanPham], [DonViTinh], [NUOCSX], [GIA])
VALUES
    (N'BC01', N'But chi', N'cay', N'Singapore', 3000.0000)
GO
INSERT [dbo].[SANPHAM]
    ([MASP], [TenSanPham], [DonViTinh], [NUOCSX], [GIA])
VALUES
    (N'BC02', N'But chi', N'cay', N'Singapore', 5000.0000)
GO
INSERT [dbo].[SANPHAM]
    ([MASP], [TenSanPham], [DonViTinh], [NUOCSX], [GIA])
VALUES
    (N'BC03', N'But chi', N'cay', N'Viet Nam', 3500.0000)
GO
INSERT [dbo].[SANPHAM]
    ([MASP], [TenSanPham], [DonViTinh], [NUOCSX], [GIA])
VALUES
    (N'BC04', N'But chi', N'hop', N'Viet Nam', 30000.0000)
GO
INSERT [dbo].[SANPHAM]
    ([MASP], [TenSanPham], [DonViTinh], [NUOCSX], [GIA])
VALUES
    (N'ST01', N'So tay 500 trang', N'quyen', N'Trung Quoc', 40000.0000)
GO
INSERT [dbo].[SANPHAM]
    ([MASP], [TenSanPham], [DonViTinh], [NUOCSX], [GIA])
VALUES
    (N'ST02', N'So tay loai 1', N'quyen', N'Viet Nam', 55000.0000)
GO
INSERT [dbo].[SANPHAM]
    ([MASP], [TenSanPham], [DonViTinh], [NUOCSX], [GIA])
VALUES
    (N'ST03', N'So tay loai 2', N'quyen', N'Viet Nam', 51000.0000)
GO
INSERT [dbo].[SANPHAM]
    ([MASP], [TenSanPham], [DonViTinh], [NUOCSX], [GIA])
VALUES
    (N'ST04', N'So tay', N'quyen', N'Thai Lan', 55000.0000)
GO
INSERT [dbo].[SANPHAM]
    ([MASP], [TenSanPham], [DonViTinh], [NUOCSX], [GIA])
VALUES
    (N'ST05', N'So tay mong', N'quyen', N'Thai Lan', 20000.0000)
GO
INSERT [dbo].[SANPHAM]
    ([MASP], [TenSanPham], [DonViTinh], [NUOCSX], [GIA])
VALUES
    (N'ST06', N'Phan viet bang', N'hop', N'Viet Nam', 5000.0000)
GO
INSERT [dbo].[SANPHAM]
    ([MASP], [TenSanPham], [DonViTinh], [NUOCSX], [GIA])
VALUES
    (N'ST07', N'Phan khong bui', N'hop', N'Viet Nam', 7000.0000)
GO
INSERT [dbo].[SANPHAM]
    ([MASP], [TenSanPham], [DonViTinh], [NUOCSX], [GIA])
VALUES
    (N'ST08', N'Bong bang', N'cai', N'Viet Nam', 1000.0000)
GO
INSERT [dbo].[SANPHAM]
    ([MASP], [TenSanPham], [DonViTinh], [NUOCSX], [GIA])
VALUES
    (N'ST09', N'But long', N'cay', N'Viet Nam', 5000.0000)
GO
INSERT [dbo].[SANPHAM]
    ([MASP], [TenSanPham], [DonViTinh], [NUOCSX], [GIA])
VALUES
    (N'ST10', N'But long', N'cay', N'Trung Quoc', 7000.0000)
GO
INSERT [dbo].[SANPHAM]
    ([MASP], [TenSanPham], [DonViTinh], [NUOCSX], [GIA])
VALUES
    (N'TV01', N'Tap 100 giay mong', N'quyen', N'Trung Quoc', 2500.0000)
GO
INSERT [dbo].[SANPHAM]
    ([MASP], [TenSanPham], [DonViTinh], [NUOCSX], [GIA])
VALUES
    (N'TV02', N'Tap 200 giay mong', N'quyen', N'Trung Quoc', 4500.0000)
GO
INSERT [dbo].[SANPHAM]
    ([MASP], [TenSanPham], [DonViTinh], [NUOCSX], [GIA])
VALUES
    (N'TV03', N'Tap 100 giay tot', N'quyen', N'Viet Nam', 3000.0000)
GO
INSERT [dbo].[SANPHAM]
    ([MASP], [TenSanPham], [DonViTinh], [NUOCSX], [GIA])
VALUES
    (N'TV04', N'Tap 200 giay tot', N'quyen', N'Viet Nam', 5500.0000)
GO
INSERT [dbo].[SANPHAM]
    ([MASP], [TenSanPham], [DonViTinh], [NUOCSX], [GIA])
VALUES
    (N'TV05', N'Tap 100 trang', N'chuc', N'Viet Nam', 23000.0000)
GO
INSERT [dbo].[SANPHAM]
    ([MASP], [TenSanPham], [DonViTinh], [NUOCSX], [GIA])
VALUES
    (N'TV06', N'Tap 200 trang', N'chuc', N'Viet Nam', 53000.0000)
GO
INSERT [dbo].[SANPHAM]
    ([MASP], [TenSanPham], [DonViTinh], [NUOCSX], [GIA])
VALUES
    (N'TV07', N'Tap 100 trang', N'chuc', N'Trung Quoc', 34000.0000)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1001, N'BC01', 5)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1001, N'BC02', 10)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1001, N'ST01', 5)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1001, N'ST08', 10)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1001, N'TV02', 10)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1002, N'BB01', 20)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1002, N'BB02', 20)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1002, N'BC04', 20)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1003, N'BB03', 10)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1004, N'TV01', 20)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1004, N'TV02', 10)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1004, N'TV03', 10)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1004, N'TV04', 10)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1005, N'TV05', 50)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1005, N'TV06', 50)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1006, N'ST01', 30)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1006, N'ST02', 10)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1006, N'TV07', 20)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1007, N'ST03', 10)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1008, N'ST04', 8)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1009, N'ST05', 10)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1010, N'ST04', 50)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1010, N'ST07', 50)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1010, N'ST08', 100)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1010, N'TV03', 100)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1010, N'TV07', 50)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1011, N'ST06', 50)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1012, N'ST07', 3)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1013, N'ST08', 5)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1014, N'BB01', 50)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1014, N'BB02', 100)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1014, N'BC02', 80)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1014, N'BC04', 60)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1015, N'BB02', 30)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1015, N'BB03', 7)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1016, N'TV01', 5)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1017, N'TV02', 1)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1017, N'TV03', 1)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1017, N'TV04', 5)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1018, N'ST04', 6)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1019, N'ST05', 1)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1019, N'ST06', 2)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1020, N'ST07', 10)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1021, N'ST08', 5)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1021, N'TV01', 7)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1021, N'TV02', 10)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1022, N'ST07', 1)
GO
INSERT [dbo].[CTHD]
    ([SOHD], [MASP], [SL])
VALUES
    (1023, N'ST04', 6)
GO
