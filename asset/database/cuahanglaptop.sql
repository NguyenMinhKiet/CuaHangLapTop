create database if not EXISTS cuahanglaptop;
use cuahanglaptop;
-- Bảng Quyền
DROP TABLE IF EXISTS QUYEN;
CREATE TABLE QUYEN (
    MAQUYEN INT AUTO_INCREMENT PRIMARY KEY,
    TENQUYEN VARCHAR(100)
); 

-- Bảng Nhóm Quyền
DROP TABLE IF EXISTS NHOMQUYEN;
CREATE TABLE NHOMQUYEN (
    MANHOMQUYEN INT AUTO_INCREMENT ,
    MAQUYEN INT,
    TENNHOMQUYEN VARCHAR(200),
    FOREIGN KEY (MAQUYEN) REFERENCES QUYEN(MAQUYEN),
    PRIMARY KEY (MANHOMQUYEN,MAQUYEN)
); 


-- Bảng Tài Khoản
DROP TABLE IF EXISTS TAIKHOAN;
CREATE TABLE TAIKHOAN (
    MATK INT AUTO_INCREMENT PRIMARY KEY,
    NGAYTAO DATE,
    TENDN VARCHAR(50),
    MATKHAU VARCHAR(200),
    TRANGTHAI TINYINT(1)
); 

-- Bảng Người Dùng: Khách Hàng
DROP TABLE IF EXISTS KHACHHANG;
CREATE TABLE KHACHHANG (
    MAKH INT AUTO_INCREMENT PRIMARY KEY,
    TEN VARCHAR(100),
    NGAYSINH DATE,
    SDT VARCHAR(20),
    DIACHI VARCHAR(255),
    MATK INT,
    EMAIL VARCHAR(100),
    FOREIGN KEY (MATK) REFERENCES TAIKHOAN(MATK)
); 


-- Bảng Người Dùng: Nhân Viên
DROP TABLE IF EXISTS NHANVIEN;
CREATE TABLE NHANVIEN (
    MANV INT AUTO_INCREMENT PRIMARY KEY,
    TEN VARCHAR(100),
    NGAYSINH DATE,
    SDT VARCHAR(20),
    DIACHI VARCHAR(255),
    MATK INT,
    EMAIL VARCHAR(100),
    CHUCVU VARCHAR(100),
    TRANGTHAI TINYINT(1),
    FOREIGN KEY (MATK) REFERENCES TAIKHOAN(MATK)
); 

-- Bảng Phân Quyền
DROP TABLE IF EXISTS PHANQUYEN;
CREATE TABLE PHANQUYEN (
    MATK INT,
    MANHOMQUYEN INT,
    FOREIGN KEY (MATK) REFERENCES TAIKHOAN(MATK),
    FOREIGN KEY (MANHOMQUYEN) REFERENCES NHOMQUYEN(MANHOMQUYEN),
    PRIMARY KEY (MATK, MANHOMQUYEN)
); 

-- Bảng nhà cung cấp
DROP TABLE IF EXISTS NHACUNGCAP;
CREATE TABLE NHACUNGCAP (
    MANCC INT AUTO_INCREMENT PRIMARY KEY,
    TENNCC VARCHAR(200),
    DIACHI VARCHAR(255),
    EMAIL VARCHAR(100),
    SDT VARCHAR(20)
);

-- Bảng Bảo Hành
DROP TABLE IF EXISTS BAOHANH;
CREATE TABLE BAOHANH (
    MABAOHANH INT AUTO_INCREMENT PRIMARY KEY,
    MANV INT,
    DONVIBAOHANH VARCHAR(100),
    THOIHAN INT,
    TRANGTHAI TINYINT(1),
    FOREIGN KEY (MANV) REFERENCES NHANVIEN(MANV)
);

-- Bảng Sản Phẩm
DROP TABLE IF EXISTS SANPHAM;
CREATE TABLE SANPHAM (
    MASP INT AUTO_INCREMENT PRIMARY KEY,
    HINHSP VARCHAR(200),
    MANV INT,
    SOLUONG INT,
    MANCC INT,
    TRANGTHAI TINYINT(1),
    FOREIGN KEY (MANV) REFERENCES NHANVIEN(MANV),
    FOREIGN KEY (MANCC) REFERENCES NHACUNGCAP(MANCC)
);

-- Bảng Phân loại Sản phẩm
DROP TABLE IF EXISTS PHANLOAISANPHAM;
CREATE TABLE PHANLOAISANPHAM (
    MALOAISP INT AUTO_INCREMENT PRIMARY KEY,
    TENLOAISP VARCHAR(100)
);

-- Bảng Nhóm loại Sản phẩm
DROP TABLE IF EXISTS NHOMLOAISANPHAM;
CREATE TABLE NHOMLOAISANPHAM (
    MASP INT AUTO_INCREMENT,
    MALOAISP INT,
    FOREIGN KEY (MALOAISP) REFERENCES PHANLOAISANPHAM(MALOAISP),
    FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP),
    PRIMARY KEY (MASP,MALOAISP)
);

-- Bảng Thương Hiệu
DROP TABLE IF EXISTS THUONGHIEU;
CREATE TABLE THUONGHIEU(
    MATHUONGHIEU INT AUTO_INCREMENT PRIMARY KEY,
    TENTHUONGHIEU VARCHAR(100)
);

-- Bảng Chi Tiết Sản Phẩm
DROP TABLE IF EXISTS CHITIETSANPHAM;
CREATE TABLE CHITIETSANPHAM (
    MASP INT PRIMARY KEY,
    TENSP VARCHAR(100),
    CPU VARCHAR(100),
    SCREEN VARCHAR(100),
    RAM VARCHAR(100),
    VGA VARCHAR(100),
    STORAGE VARCHAR(100),
    OS VARCHAR(100),
    PIN VARCHAR(100),
    WEIGHT VARCHAR(100),
    MOTA TEXT,
    MATHUONGHIEU INT,
    MAU VARCHAR(100),
    GIATIEN DECIMAL(15,2),
    MABAOHANH INT,
    FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP),
    FOREIGN KEY (MATHUONGHIEU) REFERENCES THUONGHIEU(MATHUONGHIEU),
    FOREIGN KEY (MABAOHANH) REFERENCES BAOHANH(MABAOHANH)
);



-- Bảng Khuyến Mãi
DROP TABLE IF EXISTS KHUYENMAI;
CREATE TABLE KHUYENMAI (
    MAKM INT AUTO_INCREMENT PRIMARY KEY,
    MASP INT,
    MANV INT,
    TENKM VARCHAR(255),
    TRANGTHAI TINYINT(1),
    FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP),
    FOREIGN KEY (MANV) REFERENCES NHANVIEN(MANV)
);


-- Bảng Chi Tiết Khuyến Mãi
DROP TABLE IF EXISTS CHITIETKHUYENMAI;
CREATE TABLE CHITIETKHUYENMAI (
    MAKM INT PRIMARY KEY,
    NGAYBATDAU DATE,
    NGAYKETTHUC DATE,
    GIAMGIA DECIMAL(15,2),
    QUATANG VARCHAR(255),
    FOREIGN KEY (MAKM) REFERENCES KHUYENMAI(MAKM)
);





-- Bảng Phiếu Nhập
DROP TABLE IF EXISTS PHIEUNHAP;
CREATE TABLE PHIEUNHAP (
    MAPN INT AUTO_INCREMENT PRIMARY KEY,
    MANV INT,
    NGAYNHAP DATE,
    TONGTIEN DECIMAL(15,2),
    TRANGTHAI VARCHAR(100),
    FOREIGN KEY (MANV) REFERENCES NHANVIEN(MANV)
);


-- Bảng Chi Tiết Phiếu Nhập
DROP TABLE IF EXISTS CHITIETPHIEUNHAP;
CREATE TABLE CHITIETPHIEUNHAP (
    MAPN INT,
    MANCC INT,
    MASP INT,
    SOLUONG INT,
    FOREIGN KEY (MAPN) REFERENCES PHIEUNHAP(MAPN),
    FOREIGN KEY (MANCC) REFERENCES NHACUNGCAP(MANCC),
    FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP)
);


-- Bảng Giỏ Hàng
DROP TABLE IF EXISTS GIOHANG;
CREATE TABLE GIOHANG (
    MAGH INT AUTO_INCREMENT PRIMARY KEY,
    MAKH INT,
    FOREIGN KEY (MAKH) REFERENCES KHACHHANG(MAKH)
);


-- Bảng Chi Tiết Giỏ Hàng
DROP TABLE IF EXISTS CHITIETGIOHANG;
CREATE TABLE CHITIETGIOHANG (
    MAGH INT,
    MASP INT,
    SOLUONG INT,
    DONGIA DECIMAL(15,2),
    FOREIGN KEY (MAGH) REFERENCES GIOHANG(MAGH),
    FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP),
    PRIMARY KEY (MAGH, MASP)
);


-- Bảng Hóa Đơn
DROP TABLE IF EXISTS HOADON;
CREATE TABLE HOADON (
    MAHD INT AUTO_INCREMENT PRIMARY KEY,
    MAGH INT,
    MAKH INT,
    MANV INT,
    FOREIGN KEY (MAGH) REFERENCES GIOHANG(MAGH),
    FOREIGN KEY (MAKH) REFERENCES KHACHHANG(MAKH),
    FOREIGN KEY (MANV) REFERENCES NHANVIEN(MANV)
);


-- Bảng Chi Tiết Hóa Đơn
DROP TABLE IF EXISTS CHITIETHOADON;
CREATE TABLE CHITIETHOADON (
    MAHD INT,
    MAKH INT,
    NGAYTAO DATE,
    MAGH INT,
    TONGTIEN DECIMAL(15,2),
    TRANGTHAI VARCHAR(100),
    FOREIGN KEY (MAHD) REFERENCES HOADON(MAHD),
    FOREIGN KEY (MAGH) REFERENCES GIOHANG(MAGH),
    PRIMARY KEY (MAHD)
);



INSERT INTO QUYEN (MAQUYEN, TENQUYEN) VALUES
(1,'THÊM THÔNG TIN SẢN PHẨM'),
(2,'THÊM THÔNG TIN NHÂN VIÊN'),
(3,'THÊM THÔNG TIN TÀI KHOẢN'),
(4,'THÊM THÔNG TIN QUYỀN'),
(5,'THÊM THÔNG TIN NHÓM QUYỀN'),
(6,'THÊM THÔNG TIN BẢO HÀNH'),
(7,'THÊM THÔNG TIN KHUYẾN MÃI'),
(8,'THÊM THÔNG TIN KHÁCH HÀNG'),
(9,'ẨN THÔNG TIN SẢN PHẨM'),
(10,'ẨN THÔNG TIN NHÂN VIÊN'),
(11,'ẨN THÔNG TIN TÀI KHOẢN'),
(12,'ẨN THÔNG TIN KHUYẾN MÃI'),
(13,'ẨN THÔNG TIN BẢO HÀNH'),
(14,'SỬA THÔNG TIN SẢN PHẨM'),
(15,'SỬA THÔNG TIN NHÂN VIÊN'),
(16,'SỬA THÔNG TIN TÀI KHOẢN'),
(17,'SỬA THÔNG TIN QUYỀN'),
(18,'SỬA THÔNG TIN NHÓM QUYỀN'),
(19,'SỬA THÔNG TIN KHÁCH HÀNG'),
(20,'SỬA THÔNG TIN KHUYẾN MÃI'),
(21,'SỬA THÔNG TIN BẢO HÀNH'),
(22,'THỐNG KÊ SẢN PHẨM'),
(23,'XUẤT HÓA ĐƠN'),
(24,'LẬP PHIẾU NHẬP SẢN PHẨM'),
(25,'VÀO TRANG ADMIN');






INSERT INTO NHOMQUYEN (MANHOMQUYEN,MAQUYEN,TENNHOMQUYEN) VALUES
(1,1,'ADMIN'),
(1,2,'ADMIN'),
(1,3,'ADMIN'),
(1,4,'ADMIN'),
(1,5,'ADMIN'),
(1,6,'ADMIN'),
(1,7,'ADMIN'),
(1,8,'ADMIN'),
(1,9,'ADMIN'),
(1,10,'ADMIN'),
(1,11,'ADMIN'),
(1,12,'ADMIN'),
(1,13,'ADMIN'),
(1,14,'ADMIN'),
(1,15,'ADMIN'),
(1,16,'ADMIN'),
(1,17,'ADMIN'),
(1,18,'ADMIN'),
(1,19,'ADMIN'),
(1,20,'ADMIN'),
(1,21,'ADMIN'),
(1,22,'ADMIN'),
(1,23,'ADMIN'),
(1,24,'ADMIN'),
(1,25,'ADMIN'),
(2,23,'QUẢN LÝ'),
(2,24,'QUẢN LÝ'),
(2,15,'QUẢN LÝ'),
(2,16,'QUẢN LÝ'),
(3,23,'THU NGÂN'),
(3,15,'THU NGÂN'),
(3,16,'THU NGÂN'),
(4,24,'KHO'),
(4,15,'KHO'),
(4,16,'KHO'),
(5,19,'KHÁCH HÀNG'),
(5,16,'KHÁCH HÀNG');



INSERT INTO TAIKHOAN(MATK,NGAYTAO,TENDN,MATKHAU,TRANGTHAI) VALUES 
(1,'2024-01-04','admin1234','admin1234',1),
(2,'2024-01-04','kh1234','kh1234',1),
(3,'2024-01-04','ql1234','ql1234',1);

INSERT INTO PHANQUYEN (MATK,MANHOMQUYEN) VALUES
(1,1),
(2,2),
(3,5);


--  ->   ->  -> SANPHAM -> BAO HANH -...
INSERT INTO KHACHHANG (MAKH,TEN,NGAYSINH,SDT,DIACHI,MATK,EMAIL) VALUES
(1,'Nguyễn Minh Kiệt','2002-04-06','0932667135','B16 Phan Huy Ich, p.15, q.TB',3,'nguyenminhkiet642002@gmail.com');

INSERT INTO NHANVIEN (MANV,TEN,NGAYSINH,SDT,DIACHI,MATK,EMAIL,CHUCVU) VALUES
(1,'Nguyễn Minh Kiệt','2002-04-06','0932667135','B16 Phan Huy Ich, p.15, q.TB',1,'nguyenminhkiet642002@gmail.com','ADMIN'),
(2,'Phạm Minh Tuấn','1994-04-09','0932667222',' Võ Văn Ngân, q.Bình Tân',2,'phamminhtuan12091994@gmail.com','Quản lý');

INSERT INTO NHACUNGCAP(MANCC,TENNCC,DIACHI,EMAIL,SDT) VALUES
(1,'ACER','Lê Thánh Tôn , q1','acer@gmail.com','0988777333'),
(2,'APPLE','Lê Minh Xuân , q.Tân Bình','apple@gmail.com','0988333222'),
(3,'ASUS','An Dương Vương , q5','asus@gmail.com','0999988833'),
(4,'DELL','Lê Duẩn , q1','dell@gmail.com','0912888333'),
(5,'GIGABYTE','Phan Huy Ích , q.Tân Bình','gigabyte@gmail.com','0918888444'),
(6,'HP','Lê Đức Thọ , q.Gò Vấp','hp@gmail.com','0377888222'),
(7,'LG','Thạnh Xuân 25 , q12','lg@gmail.com','0911888333'),
(8,'LENOVO','Trường Chinh , q.Tân Bình','lenovo@gmail.com','0912344567'),
(9,'MSI','Lê Thị Hà , q12','msi@gmail.com','0933888277');

INSERT INTO THUONGHIEU(MATHUONGHIEU,TENTHUONGHIEU) VALUES
(1,'ACER'),
(2,'APPLE'),
(3,'ASUS'),
(4,'DELL'),
(5,'GIGABYTE'),
(6,'HP'),
(7,'LG'),
(8,'LENOVO'),
(9,'MSI');

INSERT INTO BAOHANH(MABAOHANH,MANV,THOIHAN,DONVIBAOHANH,TRANGTHAI) VALUES
(1,1,1, 'ACER',1),
(2,1,2, 'APPLE',1),
(3,1,3, 'ASUS',1),
(4,1,2, 'DELL',1),
(5,1,1, 'GIGABYTE',1),
(6,1,2, 'HP',1),
(7,1,3, 'LG',1),
(8,1,2, 'LENOVO',1),
(9,1,2, 'MSI',1);

INSERT INTO PHANLOAISANPHAM (MALOAISP,TENLOAISP) VALUES
(1,'LAPTOP DOANH NGHIỆP'),
(2,'LAPTOP DOANH NHÂN'),
(3,'LAPTOP GAMING'),
(4,'LAPTOP HỌC SINH - SINH VIÊN'),
(5,'LAPTOP VĂN PHÒNG'),
(6,'LAPTOP ĐỒ HỌA - KỸ THUẬT');

-- Sản phẩm
INSERT INTO SANPHAM(MASP,HINHSP,MANV,SOLUONG,MANCC,TRANGTHAI) VALUES
(1,'HP_1.PNG',1,1,6,1),
(2,'HP_2.PNG',1,1,6,1),
(3,'ACER_1.PNG',1,1,1,1),
(4,'APPLE_1.PNG',1,1,2,1),
(5,'ASUS_1.PNG',1,1,3,1),
(6,'GIGABYTE_1.PNG',1,1,4,1),
(7,'LENOVO_1.PNG',1,1,5,1),
(8,'MSI_1.PNG',1,1,7,1),
(9,'MSI_2.PNG',1,1,7,1),
(10,'DELL_1.PNG',1,1,4,1);

INSERT INTO NHOMLOAISANPHAM (MASP,MALOAISP) VALUES
(1,1),
(2,1),
(3,1),
(4,1),
(5,1),
(6,1),
(7,1),
(8,1),
(8,3),
(9,1),
(10,1),
(10,3);

INSERT INTO CHITIETSANPHAM(MASP,TENSP,CPU,SCREEN,RAM,VGA,STORAGE,OS,PIN,WEIGHT,MOTA,MATHUONGHIEU,MAU,GIATIEN,MABAOHANH) VALUES
(1,'Laptop HP Pavilion 14-dv2075TU (7C0W2PA) (i5-1235U) (Bạc)','Intel Core i5-1235U','14" IPS (1920 x 1080)','2 x 4GB DDR4 3200MHz','Onboard Intel Iris Xe Graphics','512GB SSD M.2 NVMe /','Windows 11 Home SL','3 cell 41 Wh Pin liền','1.4kg','Laptop HP Pavilion 14-dv2075TU đã lâu đã trở thành một lựa chọn hàng đầu cho người dùng có nhu cầu văn phòng, doanh nghiệp và học sinh - sinh viên. Với thương hiệu đáng tin cậy của HP và chế độ bảo hành 12 tháng, model HP của chiếc laptop này mang đến sự an tâm và tin cậy cho người dùng. Với cấu hình mạnh mẽ và tính năng đáng chú ý, Laptop HP Pavilion đảm bảo hiệu suất ổn định và trải nghiệm tuyệt vời. Hãy khám phá chi tiết về Laptop HP Pavilion để hiểu rõ hơn về những lí do vì sao nó xứng đáng trở thành người bạn đồng hành tin cậy của bạn.',6,'Bạc',19690000.00,6),
(2,'Laptop HP 15s-fq5144TU (7C0R8PA) (i7-1255U) (Bạc)','Intel Core i7-1255U','15.6" IPS (1920 x 1080)','2 x 8GB DDR4 3200MHz','Onboard Intel Iris Xe Graphics','512GB SSD M.2 NVMe /','Windows 11 Home SL','3 cell 41 Wh Pin liền','1.7kg','HP 15s-fq5144TU (7C0R8PA) (i7-1255U) là một chiếc laptop tầm trung được thiết kế dành cho người dùng văn phòng và học sinh, sinh viên. Máy sở hữu cấu hình mạnh mẽ với bộ vi xử lý Intel Core i7 thế hệ thứ 12, RAM 16GB, ổ cứng SSD 512GB và màn hình Full HD 15.6 inch.',4,'BẠC',22890000.00,6),
(3,'Laptop ACER Aspire 3 A315-59-51X8 (NX.K6TSV.00F) (i5-1235U/RAM 8GB/512GB SSD/ Windows 11)','Intel Core i5-1235U','15.6" (1920 x 1080)','1 x 8GB DDR4 2400MHz','Onboard Intel UHD Graphics','512GB SSD M.2 NVMe /','Windows 11 Home','3 cell 40 Wh Pin liền','1.7kg','Laptop Acer Aspire 3 A315-59-51X8 được biết đến là mẫu laptop văn phòng do thương hiệu Acer mới ra mắt gần đây. Ưu điểm của sản phẩm là cấu hình vượt trội và giá thành rẻ so với các mẫu máy tính khác cùng hiệu năng. Do đó, Acer Aspire 3 A315-59-51X8 rất phù hợp với đối tượng là học sinh, sinh viên và dân văn phòng. ',1,'Bạc',15490000.00,1),
(4,'MacBook Air 15.3 inch (M2/ 16GB/ 512GB SSD)','Apple M2','15.3" (2880 x 1864) Liquid Retina','16GB','onboard','512GB SSD','macOS','70 Wh','1.5 kg | 1.15 x 34.04 x 23.76 cm','MacBook Air M2 2023 15 inch (16GB/512GB SSD) là một sản phẩm của Apple, thương hiệu nổi tiếng với sự kết hợp tinh tế giữa thiết kế và hiệu suất đỉnh cao. Trong đó, MacBook Air M2 2023 15 inch (16GB/512GB SSD) nổi bật với sự mạnh mẽ và tính di động cao, là sản phẩm phục vụ tốt cho nhu cầu văn phòng, đồ họa - kỹ thuật, doanh nghiệp và doanh nhân.',2,'Bạc',45290000.00,2),
(5,'Laptop ASUS TUF Gaming FA506ICB-HN355W (Ryzen 5 4600H/RAM 8GB/RTX 3050/512GB SSD/ Windows 11)','AMD Ryzen 5 4600H','15.6" IPS (1920 x 1080),144Hz','1 x 8GB DDR4 3200MHz','RTX 3050 4GB GDDR6 / AMD Radeon Graphics','512GB SSD M.2 NVMe /','Windows 11 Home','3 cell 48 Wh Pin liền','2.3kg','Laptop ASUS TUF DashFA506ICB - HN355W đến từ thương hiệu Asus nổi tiếng được khá nhiều khách hàng ưa thích và tin dùng bởi sự chất lượng, hiệu năng làm việc vượt trội cùng với mức giá hợp lý. Ngoài ra, với thiết kế bắt mắt thu hút ánh nhìn nhiều đối tượng khách hàng, đặc biệt là giới game thủ. Hãy cùng Phong Vũ khám phá xem chiếc máy tính xách tay này có gì đặc biệt nhé!',3,'Đen',21990000.00,3),
(6,'Laptop Dell Inspiron 14 T7420 N4I5021W (i5-1235U/RAM 8GB/512GB SSD/ Windows 11 + Office)','Intel Core i5-1235U','14" WVA (1920 x 1200)','1 x 8GB DDR4 3200MHz','Onboard Intel UHD Graphics','512GB SSD M.2 NVMe /','Windows 11 Home SL + Office Home & Student 2021','4 cell 54 Wh Pin liền','1.6kg',NULL,4,'Bạc',24890000.00,4),
(7,'Laptop GIGABYTE G5 ME (i5-12500H/RAM 8GB/RTX 3050Ti/512GB SSD/ Windows 11)','Intel Core i5-12500H','15.6" IPS (1920 x 1080),144Hz','1 x 8GB DDR4 3200MHz','RTX 3050Ti 4GB GDDR6 / Intel Iris Xe Graphics','512GB SSD M.2 NVMe /','Windows 11 Home SL','54 Wh Pin liền','2kg','Laptop GIGABYTE G5 ME 51VN263SH là sự lựa chọn phù hợp cho các game thủ, tín đồ mê game. Máy tính sở hữu cấu hình mạnh mẽ từ bộ vi xử lý Intel Core i5 thế hệ thứ 12, màn hình lớn kết hợp tấm nền IPS cho hiển thị sắc nét mang đến trải nghiệm chơi game đồ họa khủng với chất lượng mượt mà, lôi cuốn. Cùng Phong Vũ điểm qua một vài tính năng nổi bật của chiếc laptop này nhé!',5,'Đen',27090000.00,5),
(8,'Laptop Lenovo Legion 5 Pro 16IAH7H-82RF0045VN (i7-12700H/RAM 16GB/512GB SSD/ Windows 11)','Intel Core i7-12700H','16" IPS (2560 x 1600),165Hz','2 x 8GB DDR5 4800MHz','RTX 3070Ti 8GB GDDR6 / Intel Iris Xe Graphics','512GB SSD M.2 NVMe /','Windows 11 Home','4 cell 80 Wh Pin liền','2.5kg','Laptop Lenovo Legion 5 Pro 16IAH7H 82RF0045VN là một trong những dòng laptop cao cấp đến từ thương hiệu Lenovo nổi tiếng. Chiếc laptop này sở hữu thiết kế với các đường nét cá tính, mạnh mẽ cùng hiệu năng hoạt động nổi bật. Máy được trang bị card đồ họa RTX 3070Ti 8GB GDDR6 siêu khủng hỗ trợ người dùng những trải nghiệm làm việc đồ họa hay chơi game cấu hình cao tuyệt vời. ',7,'Trắng',56990000.00,7),
(9,'Laptop MSI Summit E14 Flip Evo A12MT-210VN (i7-1280P/RAM 16GB/512GB SSD/ Windows 11)','Intel Core i7-1280P','14" IPS (2880 x 1800)','16GB Onboard LPDDR5 4800MHz','Onboard Intel Iris Xe Graphics','512GB SSD M.2 NVMe /','Windows 11 Home','4 cell 72 Wh Pin liền','1.6kg',NULL,8,'Đen',30990000.00,8),
(10,'Laptop MSI Gaming GF63 Thin 11SC (i5-11400H/RAM 8GB/GTX 1650/512GB SSD/ Windows 11)','Intel Core i5-11400H','15.6" IPS (1920 x 1080),144Hz','1 x 8GB DDR4 3200MHz','GTX 1650 4GB GDDR6 / Intel UHD Graphics','512GB SSD M.2 NVMe /','Windows 11 Home','3 cell 51 Wh Pin liền','1.9kg',NULL,8,'Đen',19490000.00,8);

-- NHẬP PHIẾU NHẬP 
INSERT INTO PHIEUNHAP(MAPN,MANV,NGAYNHAP,TONGTIEN,TRANGTHAI) VALUES
(1,1,'2024-04-05',62270000.00,1),
(2,1,'2024-04-05',15490000.00,1),
(3,1,'2024-04-05',30990000.00,1);

INSERT INTO CHITIETPHIEUNHAP(MAPN,MANCC,MASP,SOLUONG) VALUES
(1,6,1,2),
(1,6,2,1),
(2,1,3,1),
(3,9,9,1);
