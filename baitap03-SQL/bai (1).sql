-- 1.Liệt kê ra các mặt hàng thuộc nhóm Hàng Hoá
USE KinhDoanh
-- ALTER table MatHang
-- ADD DanhMuc varchar(50)

-- UPDATE MatHang
-- set DanhMuc = 'Hang Hoa'
-- WHERE Gia>0

-- UPDATE MatHang
-- set DanhMuc = 'Do Dung Van Phong'
-- WHERE Gia<5000

SELECT *
FROM MatHang
WHERE DanhMuc = 'Hang Hoa'