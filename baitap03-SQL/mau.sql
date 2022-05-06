create database qlbh
go
use qlbh
-----------------------------------------------------
-----------------------------------------------------
---------------------------------------------use qlbh
-- khachang
create table khachhang
(
	makh char(4) not null,
	hoten varchar(40),
	dchi varchar(50),
	sodt varchar(20),
	ngsinh smalldatetime,
	ngdk smalldatetime,
	doanhso money,
	constraint pk_kh primary key(makh)
)
---------------------------------------------
-- nhanvien
create table nhanvien
(
	manv char(4) not null,
	hoten varchar(40),
	sodt varchar(20),
	ngvl smalldatetime
		constraint pk_nv primary key(manv)
)
---------------------------------------------
-- sanpham
create table sanpham
(
	masp char(4) not null,
	tensp varchar(40),
	dvt varchar(20),
	nuocsx varchar(40),
	gia money,
	constraint pk_sp primary key(masp)
)
---------------------------------------------
-- hoadon
create table hoadon
(
	sohd int not null,
	nghd smalldatetime,
	makh char(4),
	manv char(4),
	trigia money,
	constraint pk_hd primary key(sohd)
)
---------------------------------------------
-- cthd
create table cthd
(
	sohd int,
	masp char(4),
	sl int,
	constraint pk_cthd primary key(sohd,masp)
)

-- khoa ngoai cho bang hoadon
alter table hoadon add constraint fk01_hd foreign key(makh) references khachhang(makh)
alter table hoadon add constraint fk02_hd foreign key(manv) references nhanvien(manv)
-- khoa ngoai cho bang cthd
alter table cthd add constraint fk01_cthd foreign key(sohd) references hoadon(sohd)
alter table cthd add constraint fk02_cthd foreign key(masp) references sanpham(masp)
-----------------------------------------------------
-----------------------------------------------------
set dateformat dmy
-------------------------------
-- khachhang
insert into khachhang
values('kh01', 'nguyen van a', '731 tran hung dao, q5, tphcm', '8823451', '22/10/1960', '22/07/2006', 13060000)
insert into khachhang
values('kh02', 'tran ngoc han', '23/5 nguyen trai, q5, tphcm', '908256478', '03/04/1974', '30/07/2006', 280000)
insert into khachhang
values('kh03', 'tran ngoc linh', '45 nguyen canh chan, q1, tphcm', '938776266', '12/06/1980', '08/05/2006', 3860000)
insert into khachhang
values('kh04', 'tran minh long', '50/34 le dai hanh, q10, tphcm', '917325476', '09/03/1965', '10/02/2006', 250000)
insert into khachhang
values('kh05', 'le nhat minh', '34 truong dinh, q3, tphcm', '8246108', '10/03/1950', '28/10/2006', 21000)
insert into khachhang
values('kh06', 'le hoai thuong', '227 nguyen van cu, q5, tphcm', '8631738', '31/12/1981', '24/11/2006', 915000)
insert into khachhang
values('kh07', 'nguyen van tam', '32/3 tran binh trong, q5, tphcm', '916783565', '06/04/1971', '12/01/2006', 12500)
insert into khachhang
values('kh08', 'phan thi thanh', '45/2 an duong vuong, q5, tphcm', '938435756', '10/01/1971', '13/12/2006', 365000)
insert into khachhang
values('kh09', 'le ha vinh', '873 le hong phong, q5, tphcm', '8654763', '03/09/1979', '14/01/2007', 70000)
insert into khachhang
values('kh10', 'ha duy lap', '34/34b nguyen trai, q1, tphcm', '8768904', '02/05/1983', '16/01/2007', 67500)

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

-------------------------------
-- sanpham
insert into sanpham
values('bc01', 'but chi', 'cay', 'singapore', 3000)
insert into sanpham
values('bc02', 'but chi', 'cay', 'singapore', 5000)
insert into sanpham
values('bc03', 'but chi', 'cay', 'viet nam', 3500)
insert into sanpham
values('bc04', 'but chi', 'hop', 'viet nam', 30000)
insert into sanpham
values('bb01', 'but bi', 'cay', 'viet nam', 5000)
insert into sanpham
values('bb02', 'but bi', 'cay', 'trung quoc', 7000)
insert into sanpham
values('bb03', 'but bi', 'hop', 'thai lan', 100000)
insert into sanpham
values('tv01', 'tap 100 giay mong', 'quyen', 'trung quoc', 2500)
insert into sanpham
values('tv02', 'tap 200 giay mong', 'quyen', 'trung quoc', 4500)
insert into sanpham
values('tv03', 'tap 100 giay tot', 'quyen', 'viet nam', 3000)
insert into sanpham
values('tv04', 'tap 200 giay tot', 'quyen', 'viet nam', 5500)
insert into sanpham
values('tv05', 'tap 100 trang', 'chuc', 'viet nam', 23000)
insert into sanpham
values('tv06', 'tap 200 trang', 'chuc', 'viet nam', 53000)
insert into sanpham
values('tv07', 'tap 100 trang', 'chuc', 'trung quoc', 34000)
insert into sanpham
values('st01', 'so tay 500 trang', 'quyen', 'trung quoc', 40000)
insert into sanpham
values('st02', 'so tay loai 1', 'quyen', 'viet nam', 55000)
insert into sanpham
values('st03', 'so tay loai 2', 'quyen', 'viet nam', 51000)
insert into sanpham
values('st04', 'so tay', 'quyen', 'thai lan', 55000)
insert into sanpham
values('st05', 'so tay mong', 'quyen', 'thai lan', 20000)
insert into sanpham
values('st06', 'phan viet bang', 'hop', 'viet nam', 5000)
insert into sanpham
values('st07', 'phan khong bui', 'hop', 'viet nam', 7000)
insert into sanpham
values('st08', 'bong bang', 'cai', 'viet nam', 1000)
insert into sanpham
values('st09', 'but long', 'cay', 'viet nam', 5000)
insert into sanpham
values('st10', 'but long', 'cay', 'trung quoc', 7000)

-------------------------------
-- hoadon
insert into hoadon
values(1001, '23/07/2006', 'kh01', 'nv01', 320000)
insert into hoadon
values(1002, '12/08/2006', 'kh01', 'nv02', 840000)
insert into hoadon
values(1003, '23/08/2006', 'kh02', 'nv01', 100000)
insert into hoadon
values(1004, '01/09/2006', 'kh02', 'nv01', 180000)
insert into hoadon
values(1005, '20/10/2006', 'kh01', 'nv02', 3800000)
insert into hoadon
values(1006, '16/10/2006', 'kh01', 'nv03', 2430000)
insert into hoadon
values(1007, '28/10/2006', 'kh03', 'nv03', 510000)
insert into hoadon
values(1008, '28/10/2006', 'kh01', 'nv03', 440000)
insert into hoadon
values(1009, '28/10/2006', 'kh03', 'nv04', 200000)
insert into hoadon
values(1010, '01/11/2006', 'kh01', 'nv01', 5200000)
insert into hoadon
values(1011, '04/11/2006', 'kh04', 'nv03', 250000)
insert into hoadon
values(1012, '30/11/2006', 'kh05', 'nv03', 21000)
insert into hoadon
values(1013, '12/12/2006', 'kh06', 'nv01', 5000)
insert into hoadon
values(1014, '31/12/2006', 'kh03', 'nv02', 3150000)
insert into hoadon
values(1015, '01/01/2007', 'kh06', 'nv01', 910000)
insert into hoadon
values(1016, '01/01/2007', 'kh07', 'nv02', 12500)
insert into hoadon
values(1017, '02/01/2007', 'kh08', 'nv03', 35000)
insert into hoadon
values(1018, '13/01/2007', 'kh08', 'nv03', 330000)
insert into hoadon
values(1019, '13/01/2007', 'kh01', 'nv03', 30000)
insert into hoadon
values(1020, '14/01/2007', 'kh09', 'nv04', 70000)
insert into hoadon
values(1021, '16/01/2007', 'kh10', 'nv03', 67500)
insert into hoadon
values(1022, '16/01/2007', null, 'nv03', 7000)
insert into hoadon
values(1023, '17/01/2007', null, 'nv01', 330000)

-------------------------------
-- cthd
insert into cthd
values(1001, 'tv02', 10)
insert into cthd
values(1001, 'st01', 5)
insert into cthd
values(1001, 'bc01', 5)
insert into cthd
values(1001, 'bc02', 10)
insert into cthd
values(1001, 'st08', 10)
insert into cthd
values(1002, 'bc04', 20)
insert into cthd
values(1002, 'bb01', 20)
insert into cthd
values(1002, 'bb02', 20)
insert into cthd
values(1003, 'bb03', 10)
insert into cthd
values(1004, 'tv01', 20)
insert into cthd
values(1004, 'tv02', 10)
insert into cthd
values(1004, 'tv03', 10)
insert into cthd
values(1004, 'tv04', 10)
insert into cthd
values(1005, 'tv05', 50)
insert into cthd
values(1005, 'tv06', 50)
insert into cthd
values(1006, 'tv07', 20)
insert into cthd
values(1006, 'st01', 30)
insert into cthd
values(1006, 'st02', 10)
insert into cthd
values(1007, 'st03', 10)
insert into cthd
values(1008, 'st04', 8)
insert into cthd
values(1009, 'st05', 10)
insert into cthd
values(1010, 'tv07', 50)
insert into cthd
values(1010, 'st07', 50)
insert into cthd
values(1010, 'st08', 100)
insert into cthd
values(1010, 'st04', 50)
insert into cthd
values(1010, 'tv03', 100)
insert into cthd
values(1011, 'st06', 50)
insert into cthd
values(1012, 'st07', 3)
insert into cthd
values(1013, 'st08', 5)
insert into cthd
values(1014, 'bc02', 80)
insert into cthd
values(1014, 'bb02', 100)
insert into cthd
values(1014, 'bc04', 60)
insert into cthd
values(1014, 'bb01', 50)
insert into cthd
values(1015, 'bb02', 30)
insert into cthd
values(1015, 'bb03', 7)
insert into cthd
values(1016, 'tv01', 5)
insert into cthd
values(1017, 'tv02', 1)
insert into cthd
values(1017, 'tv03', 1)
insert into cthd
values(1017, 'tv04', 5)
insert into cthd
values(1018, 'st04', 6)
insert into cthd
values(1019, 'st05', 1)
insert into cthd
values(1019, 'st06', 2)
insert into cthd
values(1020, 'st07', 10)
insert into cthd
values(1021, 'st08', 5)
insert into cthd
values(1021, 'tv01', 7)
insert into cthd
values(1021, 'tv02', 10)
insert into cthd
values(1022, 'st07', 1)
insert into cthd
values(1023, 'st04', 6)