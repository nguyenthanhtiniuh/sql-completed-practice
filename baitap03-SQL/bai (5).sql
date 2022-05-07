-- 5.Thống kê doanh số bán hàng của từng nhân viên kinh doanh trong tháng 9/2010 
select *
from HoaDon
where Ngay between '2010-09-01 00:00:00.000' and '2010-09-30 00:00:00.000'

-- và tổng doanh số của phòng kinh doanh là bao nhiêu. ( 1.5% trên tổng số tiền kí hoá đơn của từng nhân viên) .
select SUM(TriGia) as tongdoanhsocuaphongkinhdoanh_thang09nam2010
from HoaDon
where Ngay between '2010-09-01 00:00:00.000' and '2010-09-30 00:00:00.000'
group by MONTH(ngay)