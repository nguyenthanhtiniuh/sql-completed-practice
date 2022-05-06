use B30
GO

DROP database if exists KinhDoanh
CREATE database KinhDoanh
USE KinhDoanh
GO

IF OBJECT_ID('KhachHang') IS NOT NULL DROP TABLE KhachHang
CREATE TABLE KhachHang
(
    Makhachhang char(4) ,
    TenKhachHang NVARCHAR(40),
    DiaChi varchar(50),
    Sodt varchar(20),
    NgaySinh smalldatetime,
    NgayDk smalldatetime,
    DoanhSo money,
    CONSTRAINT pk_khahchang PRIMARY KEY(Makhachhang)
)
set dateformat dmy
-- khachhang
insert into KhachHang
values('kh01', 'nguyen van a', '731 tran hung dao, q5, tphcm', '8823451', '22/10/1960', '22/07/2006', 13060000)
insert into KhachHang
values('kh02', 'tran ngoc han', '23/5 nguyen trai, q5, tphcm', '908256478', '03/04/1974', '30/07/2006', 280000)
insert into KhachHang
values('kh03', 'tran ngoc linh', '45 nguyen canh chan, q1, tphcm', '938776266', '12/06/1980', '08/05/2006', 3860000)
insert into KhachHang
values('kh04', 'tran minh long', '50/34 le dai hanh, q10, tphcm', '917325476', '09/03/1965', '10/02/2006', 250000)
insert into KhachHang
values('kh05', 'le nhat minh', '34 truong dinh, q3, tphcm', '8246108', '10/03/1950', '28/10/2006', 21000)
insert into KhachHang
values('kh06', 'le hoai thuong', '227 nguyen van cu, q5, tphcm', '8631738', '31/12/1981', '24/11/2006', 915000)
insert into KhachHang
values('kh07', 'nguyen van tam', '32/3 tran binh trong, q5, tphcm', '916783565', '06/04/1971', '12/01/2006', 12500)
insert into KhachHang
values('kh08', 'phan thi thanh', '45/2 an duong vuong, q5, tphcm', '938435756', '10/01/1971', '13/12/2006', 365000)
insert into KhachHang
values('kh09', 'le ha vinh', '873 le hong phong, q5, tphcm', '8654763', '03/09/1979', '14/01/2007', 70000)
insert into KhachHang
values('kh10', 'ha duy lap', '34/34b nguyen trai, q1, tphcm', '8768904', '02/05/1983', '16/01/2007', 67500)

IF OBJECT_ID('NhanVien') IS NOT NULL DROP TABLE NhanVien
CREATE TABLE NhanVien
(
    Manhanvien char(4) ,
    TenNhanVien NVARCHAR(40),
    SoDienThoai VARCHAR(20),
    NgayVaoLam smalldatetime,
    CONSTRAINT pk_nhanvien PRIMARY KEY(Manhanvien)
)
-------------------------------
-- nhanvien
insert into nhanvien
values('nv01', 'nguyen nhu nhut', '927345678', '13/04/2006')
insert into nhanvien
values('nv02', 'le thi phi yen', '987567390', '21/04/2006')
insert into nhanvien
values('nv03', 'nguyen van b', '997047382', '27/04/2006')
insert into nhanvien
values('nv04', 'ngo thanh tuan', '913758498', '24/06/2006')
insert into nhanvien
values('nv05', 'nguyen thi truc thanh', '918590387', '20/07/2006')

IF OBJECT_ID('MatHang') IS NOT NULL DROP TABLE MatHang
CREATE TABLE MatHang
(
    MaMathang char(4) not NULL,
    TenMatHang NVARCHAR(40),
    DonViTinh VARCHAR(20),
    NuocSanXuat VARCHAR(40),
    Gia money,
    CONSTRAINT pk_mathang PRIMARY KEY(MaMatHang)
)
-------------------------------
-- MatHang
insert into MatHang
values('bc01', 'but chi', 'cay', 'singapore', 3000)
insert into MatHang
values('bc02', 'but chi', 'cay', 'singapore', 5000)
insert into MatHang
values('bc03', 'but chi', 'cay', 'viet nam', 3500)
insert into MatHang
values('bc04', 'but chi', 'hop', 'viet nam', 30000)
insert into MatHang
values('bb01', 'but bi', 'cay', 'viet nam', 5000)
insert into MatHang
values('bb02', 'but bi', 'cay', 'trung quoc', 7000)
insert into MatHang
values('bb03', 'but bi', 'hop', 'thai lan', 100000)
insert into MatHang
values('tv01', 'tap 100 giay mong', 'quyen', 'trung quoc', 2500)
insert into MatHang
values('tv02', 'tap 200 giay mong', 'quyen', 'trung quoc', 4500)
insert into MatHang
values('tv03', 'tap 100 giay tot', 'quyen', 'viet nam', 3000)
insert into MatHang
values('tv04', 'tap 200 giay tot', 'quyen', 'viet nam', 5500)
insert into MatHang
values('tv05', 'tap 100 trang', 'chuc', 'viet nam', 23000)
insert into MatHang
values('tv06', 'tap 200 trang', 'chuc', 'viet nam', 53000)
insert into MatHang
values('tv07', 'tap 100 trang', 'chuc', 'trung quoc', 34000)
insert into MatHang
values('st01', 'so tay 500 trang', 'quyen', 'trung quoc', 40000)
insert into MatHang
values('st02', 'so tay loai 1', 'quyen', 'viet nam', 55000)
insert into MatHang
values('st03', 'so tay loai 2', 'quyen', 'viet nam', 51000)
insert into MatHang
values('st04', 'so tay', 'quyen', 'thai lan', 55000)
insert into MatHang
values('st05', 'so tay mong', 'quyen', 'thai lan', 20000)
insert into MatHang
values('st06', 'phan viet bang', 'hop', 'viet nam', 5000)
insert into MatHang
values('st07', 'phan khong bui', 'hop', 'viet nam', 7000)
insert into MatHang
values('st08', 'bong bang', 'cai', 'viet nam', 1000)
insert into MatHang
values('st09', 'but long', 'cay', 'viet nam', 5000)
insert into MatHang
values('st10', 'but long', 'cay', 'trung quoc', 7000)

IF OBJECT_ID('HoaDon') IS NOT NULL DROP TABLE HoaDon
CREATE TABLE HoaDon
(
    Sohd INT ,
    Ngay DATETIME,
    Makhachhang char(4),
    Manhanvien char(4),
    TriGia money,
    CONSTRAINT pk_hoadon PRIMARY KEY(Sohd)
)
-- hoadon
insert into HoaDon
values(1001, '23/07/2006', 'kh01', 'nv01', 320000)
insert into HoaDon
values(1002, '12/08/2006', 'kh01', 'nv02', 840000)
insert into HoaDon
values(1003, '23/08/2006', 'kh02', 'nv01', 100000)
insert into HoaDon
values(1004, '01/09/2006', 'kh02', 'nv01', 180000)
insert into HoaDon
values(1005, '20/10/2006', 'kh01', 'nv02', 3800000)
insert into HoaDon
values(1006, '16/10/2006', 'kh01', 'nv03', 2430000)
insert into HoaDon
values(1007, '28/10/2006', 'kh03', 'nv03', 510000)
insert into HoaDon
values(1008, '28/10/2006', 'kh01', 'nv03', 440000)
insert into HoaDon
values(1009, '28/10/2006', 'kh03', 'nv04', 200000)
insert into HoaDon
values(1010, '01/11/2006', 'kh01', 'nv01', 5200000)
insert into HoaDon
values(1011, '04/11/2006', 'kh04', 'nv03', 250000)
insert into HoaDon
values(1012, '30/11/2006', 'kh05', 'nv03', 21000)
insert into HoaDon
values(1013, '12/12/2006', 'kh06', 'nv01', 5000)
insert into HoaDon
values(1014, '31/12/2006', 'kh03', 'nv02', 3150000)
insert into HoaDon
values(1015, '01/01/2007', 'kh06', 'nv01', 910000)
insert into HoaDon
values(1016, '01/01/2007', 'kh07', 'nv02', 12500)
insert into HoaDon
values(1017, '02/01/2007', 'kh08', 'nv03', 35000)
insert into HoaDon
values(1018, '13/01/2007', 'kh08', 'nv03', 330000)
insert into HoaDon
values(1019, '13/01/2007', 'kh01', 'nv03', 30000)
insert into HoaDon
values(1020, '14/01/2007', 'kh09', 'nv04', 70000)
insert into HoaDon
values(1021, '16/01/2007', 'kh10', 'nv03', 67500)
insert into HoaDon
values(1022, '16/01/2007', null, 'nv03', 7000)
insert into HoaDon
values(1023, '17/01/2007', null, 'nv01', 330000)


IF OBJECT_ID('HoaDonChiTiet') IS NOT NULL DROP TABLE HoaDonChiTiet
create TABLE HoaDonChiTiet
(
    Sohd INT ,
    MaMatHang char(4),
    SoLuong NUMERIC,
    -- ThanhTien NUMERIC,
    CONSTRAINT pk_hoadonchitiet PRIMARY KEY(Sohd,MaMatHang)
)
-------------------------------
-- cthd
insert into HoaDonChiTiet
values(1001, 'tv02', 10)
insert into HoaDonChiTiet
values(1001, 'st01', 5)
insert into HoaDonChiTiet
values(1001, 'bc01', 5)
insert into HoaDonChiTiet
values(1001, 'bc02', 10)
insert into HoaDonChiTiet
values(1001, 'st08', 10)
insert into HoaDonChiTiet
values(1002, 'bc04', 20)
insert into HoaDonChiTiet
values(1002, 'bb01', 20)
insert into HoaDonChiTiet
values(1002, 'bb02', 20)
insert into HoaDonChiTiet
values(1003, 'bb03', 10)
insert into HoaDonChiTiet
values(1004, 'tv01', 20)
insert into HoaDonChiTiet
values(1004, 'tv02', 10)
insert into HoaDonChiTiet
values(1004, 'tv03', 10)
insert into HoaDonChiTiet
values(1004, 'tv04', 10)
insert into HoaDonChiTiet
values(1005, 'tv05', 50)
insert into HoaDonChiTiet
values(1005, 'tv06', 50)
insert into HoaDonChiTiet
values(1006, 'tv07', 20)
insert into HoaDonChiTiet
values(1006, 'st01', 30)
insert into HoaDonChiTiet
values(1006, 'st02', 10)
insert into HoaDonChiTiet
values(1007, 'st03', 10)
insert into HoaDonChiTiet
values(1008, 'st04', 8)
insert into HoaDonChiTiet
values(1009, 'st05', 10)
insert into HoaDonChiTiet
values(1010, 'tv07', 50)
insert into HoaDonChiTiet
values(1010, 'st07', 50)
insert into HoaDonChiTiet
values(1010, 'st08', 100)
insert into HoaDonChiTiet
values(1010, 'st04', 50)
insert into HoaDonChiTiet
values(1010, 'tv03', 100)
insert into HoaDonChiTiet
values(1011, 'st06', 50)
insert into HoaDonChiTiet
values(1012, 'st07', 3)
insert into HoaDonChiTiet
values(1013, 'st08', 5)
insert into HoaDonChiTiet
values(1014, 'bc02', 80)
insert into HoaDonChiTiet
values(1014, 'bb02', 100)
insert into HoaDonChiTiet
values(1014, 'bc04', 60)
insert into HoaDonChiTiet
values(1014, 'bb01', 50)
insert into HoaDonChiTiet
values(1015, 'bb02', 30)
insert into HoaDonChiTiet
values(1015, 'bb03', 7)
insert into HoaDonChiTiet
values(1016, 'tv01', 5)
insert into HoaDonChiTiet
values(1017, 'tv02', 1)
insert into HoaDonChiTiet
values(1017, 'tv03', 1)
insert into HoaDonChiTiet
values(1017, 'tv04', 5)
insert into HoaDonChiTiet
values(1018, 'st04', 6)
insert into HoaDonChiTiet
values(1019, 'st05', 1)
insert into HoaDonChiTiet
values(1019, 'st06', 2)
insert into HoaDonChiTiet
values(1020, 'st07', 10)
insert into HoaDonChiTiet
values(1021, 'st08', 5)
insert into HoaDonChiTiet
values(1021, 'tv01', 7)
insert into HoaDonChiTiet
values(1021, 'tv02', 10)
insert into HoaDonChiTiet
values(1022, 'st07', 1)
insert into HoaDonChiTiet
values(1023, 'st04', 6)

-- khoa ngoai cho bang hoadon
alter table HoaDon add constraint fk01_hd foreign key(Makhachhang) references KhachHang(Makhachhang)
alter table HoaDon add constraint fk02_hd foreign key(Manhanvien) references NhanVien(Manhanvien)
-- khoa ngoai cho bang HoaDonChiTiet
alter table HoaDonChiTiet add constraint fk01_cthd foreign key(Sohd) references HoaDon(Sohd)
alter table HoaDonChiTiet add constraint fk02_cthd foreign key(MaMatHang) references MatHang(MaMatHang)

alter TABLE HoaDon
DROP CONSTRAINT fk01_hd;

alter TABLE HoaDon
DROP CONSTRAINT fk02_hd;

alter TABLE HoaDonChiTiet
DROP CONSTRAINT fk01_cthd;

alter TABLE HoaDonChiTiet
DROP CONSTRAINT fk02_cthd;

-- IF OBJECT_ID('NhanVienKinhDoanh') IS NOT NULL DROP TABLE NhanVienKinhDoanh
-- CREATE TABLE NhanVienKinhDoanh
-- (
--     Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--     TenNhanVienKinhDoanh NVARCHAR(100)
-- )