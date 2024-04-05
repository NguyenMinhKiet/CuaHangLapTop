CREATE DATABASE IF NOT EXISTS laptopshop;
USE laptopshop;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: laptopshop
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Bảng `NHOMQUYEN`
DROP TABLE IF EXISTS `NHOMQUYEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NHOMQUYEN` (
    `manhomquyen` varchar(50) not null,
    `tennhomquyen` varchar(50) not null,
    PRIMARY KEY (`manhomquyen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Chèn dữ liệu vào bảng `NHOMQUYEN`
INSERT INTO `NHOMQUYEN` (`manhomquyen`, `tennhomquyen`)
VALUES ('ADMIN', 'ADMIN'), ('KH', 'KHÁCH HÀNG'), ('QL', 'QUẢN LÝ');

DROP TABLE IF EXISTS `QUYEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QUYEN` (
    `maquyen` varchar(50) not null,
    `tenquyen` varchar(50) not null,
    primary key(`maquyen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Chèn dữ liệu vào bảng `QUYEN`
LOCK TABLES `QUYEN` WRITE;
INSERT INTO `QUYEN` (`maquyen`, `tenquyen`)
VALUES ('Q00', 'VIEW PRODUCT INFORMATION'),
       ('Q01', 'PURCHASE'),
       ('Q02', 'BROWSE ORDERS'),
       ('Q03', 'UPDATE ORDERS'),
       ('Q04', 'ADD ACCOUNT'),
       ('Q05', 'DELETE ACCOUNT'),
       ('Q06', 'BLOCK ACCOUNT'),
       ('Q07', 'UPDATE PRODUCT INFORMATION'),
       ('Q08', 'IMPORT GOODS'),
       ('Q09', 'EXPORT INVOICES'),
       ('Q10', 'EXPORT IMPORT SLIP');
UNLOCK TABLES;

DROP TABLE IF EXISTS `NHOMQUYENTK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NHOMQUYENTK` (
    `manhomquyen` varchar(50) not null,
    `maquyen` varchar(50) not null,
    foreign key (`manhomquyen`) references `NHOMQUYEN`(`manhomquyen`),
    foreign key (`maquyen`) references `QUYEN`(`maquyen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Chèn dữ liệu vào bảng `NHOMQUYENTK`
INSERT INTO `NHOMQUYENTK` (`manhomquyen`, `maquyen`)
VALUES ('KH', 'Q00'),
       ('KH', 'Q01'),
       ('ADMIN', 'Q00'),
       ('ADMIN', 'Q01'),
       ('ADMIN', 'Q02'),
       ('ADMIN', 'Q07'),
       ('ADMIN', 'Q09'),
       ('QL', 'Q00'),
       ('QL', 'Q01'),
       ('QL', 'Q02'),
       ('QL', 'Q03'),
       ('QL', 'Q04'),
       ('QL', 'Q05'),
       ('QL', 'Q06'),
       ('QL', 'Q07'),
       ('QL', 'Q08'),
       ('QL', 'Q09'),
       ('QL', 'Q10');

DROP TABLE IF EXISTS `TAIKHOAN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TAIKHOAN` (
    `tendn` varchar(50) not null,
    `matkhau` varchar(50) not null,
    `manhomquyen` varchar(50) not null,
    primary key (`tendn`),
    foreign key (`manhomquyen`) references `NHOMQUYEN`(`manhomquyen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Chèn dữ liệu vào bảng `TAIKHOAN`
INSERT INTO `TAIKHOAN` (`tendn`, `matkhau`, `manhomquyen`)
VALUES ('khachkhang', '123456789', 'KH'),
       ('admin', '1234', 'ADMIN'),
       ('quanly', '1234', 'QL');

DROP TABLE IF EXISTS `NGUOIDUNG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NGUOIDUNG` (
    `tendn` varchar(50) not null,
    `hoten` varchar(50) not null,
    `ngaysinh` date null,
    `gioitinh` varchar(4) null,
    foreign key (`tendn`) references `TAIKHOAN`(`tendn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Chèn dữ liệu vào bảng `NGUOIDUNG`
INSERT INTO `NGUOIDUNG` (`tendn`, `hoten`, `ngaysinh`, `gioitinh`)
VALUES ('khachhang', 'nguyen van A', '1999-03-19', 'nam'),
       ('admin', 'admin', NULL, NULL),
       ('quanly', 'quản lý', NULL, NULL);

/*!40000 ALTER TABLE `NGUOIDUNG` ENABLE KEYS */;
UNLOCK TABLES;

-- Bảng `GIOHANG`
DROP TABLE IF EXISTS `GIOHANG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GIOHANG` (
    `magh` varchar(50) not null,
    `tendn` varchar(50) not null,
    primary key (`magh`),
    foreign key (`tendn`) references `NGUOIDUNG`(`tendn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GIOHANG`
--

LOCK TABLES `GIOHANG` WRITE;
/*!40000 ALTER TABLE `GIOHANG` DISABLE KEYS */;

/*!40000 ALTER TABLE `GIOHANG` ENABLE KEYS */;
UNLOCK TABLES;
-- Bảng `SANPHAM`
DROP TABLE IF EXISTS `SANPHAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `SANPHAM` (
    `masp` varchar(50) not null primary key,
    `tensp` varchar(255) not null, 
    `soluong` int default null,
    `hangsx` varchar(50) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SANPHAM`
--

LOCK TABLES `SANPHAM` WRITE;
/*!40000 ALTER TABLE `SANPHAM` DISABLE KEYS */;

/*!40000 ALTER TABLE `SANPHAM` ENABLE KEYS */;
UNLOCK TABLES;

-- Bảng `CHITIETSANPHAM`
DROP TABLE IF EXISTS `CHITIETSANPHAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CHITIETSANPHAM` (
    `serinumber` varchar(255) not null primary key,
    `masp` varchar(50) not null,
    `CPU` varchar(50) not null,
    `RAM` varchar(50) not null,
    `HARDWARE` varchar(50) not null,
    `CARD` varchar(50) not null,
    `SCREEN` varchar(50) not null,
    `OS` varchar(50) not null,
    `COLOR` varchar(50) not null,
    `PRICE` varchar(50) not null,
    `MOTA` varchar(50) not null,
    foreign key (`masp`) references `SANPHAM`(`masp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CHITIETSANPHAM`
--

LOCK TABLES `CHITIETSANPHAM` WRITE;
/*!40000 ALTER TABLE `CHITIETSANPHAM` DISABLE KEYS */;

/*!40000 ALTER TABLE `CHITIETSANPHAM` ENABLE KEYS */;
UNLOCK TABLES;

-- Bảng `CHITIETGIOHANG`
DROP TABLE IF EXISTS `CHITIETGIOHANG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CHITIETGIOHANG` (
    `magh` varchar(50) not null,
    `serinumber` varchar(255) not null,
    `ngaythem` datetime,
    `tongtien` int not null,
    foreign key (`magh`) references `GIOHANG`(`magh`),
    foreign key (`serinumber`) references `CHITIETSANPHAM`(`serinumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CHITIETGIOHANG`
--

LOCK TABLES `CHITIETGIOHANG` WRITE;
/*!40000 ALTER TABLE `CHITIETGIOHANG` DISABLE KEYS */;

/*!40000 ALTER TABLE `CHITIETGIOHANG` ENABLE KEYS */;
UNLOCK TABLES;

-- Bảng `HOADON`
DROP TABLE IF EXISTS `HOADON`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HOADON` (
    `tendn` varchar(50) not null,
    `mahd` varchar(50) not null primary key,
    `trangthai` varchar(30) not null,
    `diachigiaohang` varchar(255) not null,
    foreign key (`tendn`) references `NGUOIDUNG`(`tendn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HOADON`
--

LOCK TABLES `HOADON` WRITE;
/*!40000 ALTER TABLE `HOADON` DISABLE KEYS */;

/*!40000 ALTER TABLE `HOADON` ENABLE KEYS */;
UNLOCK TABLES;
ALTER TABLE `HOADON`
ADD COLUMN `tongtienhd` decimal(10, 2) DEFAULT 0.00;
ALTER TABLE `HOADON`
ADD COLUMN `ngaydat` datetime not null;
ALTER TABLE `HOADON`
ADD COLUMN `ngaygiao` datetime not null;
ALTER TABLE `CHITIETSANPHAM`
MODIFY COLUMN `price` DECIMAL(10, 2);
ALTER TABLE `CHITIETSANPHAM`
MODIFY COLUMN `mota` text;
-- Bảng `CHITIETHOADON`
DROP TABLE IF EXISTS `CHITIETHOADON`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CHITIETHOADON` (
    `mahd` varchar(50) not null,
    `serinumber` varchar(255) not null,
    `tongtien` decimal(10,2),
    foreign key (`mahd`) references `HOADON`(`mahd`),
    foreign key (`serinumber`) references `CHITIETSANPHAM`(`serinumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CHITIETHOADON`
--

LOCK TABLES `CHITIETHOADON` WRITE;
/*!40000 ALTER TABLE `CHITIETHOADON` DISABLE KEYS */;

/*!40000 ALTER TABLE `CHITIETHOADON` ENABLE KEYS */;
UNLOCK TABLES;

-- Bảng `BAOHANH`
DROP TABLE IF EXISTS `BAOHANH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BAOHANH` (
    `mabh` varchar(50) not null primary key,
    `mahd` varchar(50) not null,
    `serinumber` varchar(255) not null,
    `ngaybh` datetime not null,
    `ngaygiao` datetime not null,
    `trangthai` text,
    foreign key (`mahd`) references `CHITIETHOADON`(`mahd`),
    foreign key (`serinumber`) references `CHITIETHOADON`(`serinumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BAOHANH`
--

LOCK TABLES `BAOHANH` WRITE;
/*!40000 ALTER TABLE `BAOHANH` DISABLE KEYS */;

/*!40000 ALTER TABLE `BAOHANH` ENABLE KEYS */;
UNLOCK TABLES;

-- Bảng `KHUYENMAI`
DROP TABLE IF EXISTS `KHUYENMAI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `KHUYENMAI` (
    `makm` varchar(50) not null primary key,
    `masp` varchar(50) not null,
    `ngaybd` datetime not null,
    `ngaykt` datetime not null,
    `quatang` text,
    `giamgia` text,
    foreign key (`masp`) references `SANPHAM`(`masp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KHUYENMAI`
--

LOCK TABLES `KHUYENMAI` WRITE;
/*!40000 ALTER TABLE `KHUYENMAI` DISABLE KEYS */;

/*!40000 ALTER TABLE `KHUYENMAI` ENABLE KEYS */;
UNLOCK TABLES;

-- Bảng `NCC` (Nhà cung cấp)
DROP TABLE IF EXISTS `NCC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NCC` (
    `mancc` varchar(50) not null primary key,
    `tenncc` text,
    `diachi` text,
    `email` text,
    `sdt` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NCC`
--

LOCK TABLES `NCC` WRITE;
/*!40000 ALTER TABLE `NCC` DISABLE KEYS */;

/*!40000 ALTER TABLE `NCC` ENABLE KEYS */;
UNLOCK TABLES;

-- Bảng `PHIEUNHAP`
DROP TABLE IF EXISTS `PHIEUNHAP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PHIEUNHAP` (
    `mapn` varchar(50) not null primary key,
    `mancc` varchar(50) not null,
    `ngaynhap` datetime not null,
    foreign key (`mancc`) references `NCC`(`mancc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PHIEUNHAP`
--

LOCK TABLES `PHIEUNHAP` WRITE;
/*!40000 ALTER TABLE `PHIEUNHAP` DISABLE KEYS */;

/*!40000 ALTER TABLE `PHIEUNHAP` ENABLE KEYS */;
UNLOCK TABLES;

-- Bảng `CHITIETPHIEUNHAP`
DROP TABLE IF EXISTS `CHITIETPHIEUNHAP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CHITIETPHIEUNHAP` (
    `mapn` varchar(50) not null,
    `masp` varchar(50) not null,
    `soluong` int not null,
    `tongtien` decimal(10,2) not null,
    foreign key (`mapn`) references `PHIEUNHAP`(`mapn`),
    foreign key (`masp`) references `SANPHAM`(`masp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CHITIETPHIEUNHAP`
--

LOCK TABLES `CHITIETPHIEUNHAP` WRITE;
/*!40000 ALTER TABLE `CHITIETPHIEUNHAP` DISABLE KEYS */;

/*!40000 ALTER TABLE `CHITIETPHIEUNHAP` ENABLE KEYS */;
UNLOCK TABLES;

-- Bảng `HINHANHSANPHAM`
DROP TABLE IF EXISTS `HINHANHSANPHAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HINHANHSANPHAM` (
    `mahinhanh` INT AUTO_INCREMENT PRIMARY KEY,
    `masp` varchar(50) NOT NULL,
    `url` VARCHAR(255) NOT NULL,
    FOREIGN KEY (`masp`) REFERENCES `SANPHAM`(`masp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HINHANHSANPHAM`
--

LOCK TABLES `HINHANHSANPHAM` WRITE;
/*!40000 ALTER TABLE `HINHANHSANPHAM` DISABLE KEYS */;

/*!40000 ALTER TABLE `HINHANHSANPHAM` ENABLE KEYS */;
UNLOCK TABLES;





