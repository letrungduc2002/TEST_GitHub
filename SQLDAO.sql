--1. L?y ra thông tin các s?n ph?m trong kho
  SELECT s.masp, s.tensp,lo.soluong, s.donvi, l.tenloai, lo.ngaynhap FROM sanpham s
  JOIN loaimathang l ON s.maloai = l.maloai
  JOIN losanpham lo ON s.masp = lo.masp
  JOIN nhacungcap n ON s.mancc = n.mancc
  WHERE s.trangthai = 'Kinh Doanh'
  ORDER BY lo.ngaynhap DESC
  --2 Tìm kiếm sản phẩm
  SELECT s.masp, s.tensp,lo.soluong, s.donvi, l.tenloai, lo.ngaynhap 
  FROM sanpham s 
  JOIN losanpham lo ON s.masp = lo.masp 
  JOIN loaimathang l ON s.maloai = l.maloai 
  JOIN nhacungcap n ON s.mancc = n.mancc 
  WHERE s.trangthai = 'Kinh Doanh'
  AND (? = '' OR s.tensp LIKE ?) 
  AND (? = '' OR l.tenloai LIKE ?) 
  AND (? = '' OR n.tenncc LIKE ?)
  AND (? IS NULL OR lo.ngaynhap = ?)
  ORDER BY lo.ngaynhap DESC