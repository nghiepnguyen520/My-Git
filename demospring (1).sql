-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 27, 2018 lúc 08:48 AM
-- Phiên bản máy phục vụ: 10.1.28-MariaDB
-- Phiên bản PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `demospring`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `mahoadon` int(11) NOT NULL,
  `machitietsanpham` int(11) NOT NULL,
  `soluong` int(11) DEFAULT NULL,
  `giatien` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `machitietsanpham` int(11) NOT NULL,
  `masanpham` int(11) DEFAULT NULL,
  `masize` int(11) DEFAULT NULL,
  `mamau` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `ngaynhap` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietsanpham`
--

INSERT INTO `chitietsanpham` (`machitietsanpham`, `masanpham`, `masize`, `mamau`, `soluong`, `ngaynhap`) VALUES
(6, 2, 2, 2, 1, '25/5/2018');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmucsanpham`
--

CREATE TABLE `danhmucsanpham` (
  `madanhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinhdanhmuc` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `mahoadon` int(11) NOT NULL,
  `tenkhachhang` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodt` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachigiaohang` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tinhtrang` tinyint(4) DEFAULT NULL,
  `ngaylap` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinhthucgiaohang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tensanpham` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `giatien` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`mahoadon`, `tenkhachhang`, `sodt`, `diachigiaohang`, `tinhtrang`, `ngaylap`, `hinhthucgiaohang`, `tensanpham`, `giatien`) VALUES
(1, 'Nguyen th', '01203215421', 'TPCT', NULL, NULL, 'Giao táº­n nÆ¡i', '', ''),
(2, 'nguyen van thi meo', '01203215421', 'tpct', NULL, NULL, 'Giao táº­n nÆ¡i', 'Giày sneaker 002', '520.000'),
(3, 'nguyen van thi meo', '01203215421', 'tpct', NULL, NULL, 'Giao táº­n nÆ¡i', 'Giày sneaker 002', '520.000'),
(4, 'nguyen van thi meo', '01203215421', 'tpct', NULL, NULL, 'Giao táº­n nÆ¡i', 'Giày sneaker 002', '520.000'),
(5, 'aaaaaaa', '01203215421', 'Ã¢bcccc', NULL, NULL, 'Giao táº­n nÆ¡i', 'giay cao cap 1', '200.000'),
(6, 'aaaaaaa', '01203215421', 'Ã¢bcccc', NULL, NULL, 'Giao táº­n nÆ¡i', 'giay cao cap 1', '200.000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `makhachhang` int(11) NOT NULL,
  `hoten` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cmnd` char(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `matkhau` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`makhachhang`, `hoten`, `diachi`, `cmnd`, `email`, `matkhau`) VALUES
(1, 'ngungu', 'abcxyz', '12345678978', 'ngu@gmail.com', '123456'),
(2, 'nguyen van c', 'TPCT', '132541251', 'nvc@gmail.com', '1475369'),
(11, 'Nguyá»?n VÄ?n C', 'TPCT', '1452365298', 'haihai@gmail.com', '123456'),
(12, 'Nguyá»?n VÄ?n C', 'TPCT', '1452365298', 'haihai@gmail.com', '123456'),
(13, 'Nguyá»?n VÄ?n C', 'TPCT', '1452365298', 'haihai@gmail.com', '123456'),
(14, 'Nguyá»?n VÄ?n A', 'TPCT', '152148523', 'aaa@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mausanpham`
--

CREATE TABLE `mausanpham` (
  `mamau` int(11) NOT NULL,
  `tenmau` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mausanpham`
--

INSERT INTO `mausanpham` (`mamau`, `tenmau`) VALUES
(2, NULL),
(3, 'vàng'),
(5, 'đen');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masanpham` int(11) NOT NULL,
  `madanhmuc` int(11) DEFAULT NULL,
  `tensanpham` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `giatien` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  `hinhsanpham` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masanpham`, `madanhmuc`, `tensanpham`, `giatien`, `mota`, `hinhsanpham`) VALUES
(2, NULL, 'giay cao cap 1', '200.000', 'giay cao cap 1 - day la mo ta', 'sneakercaocap.jpg'),
(6, NULL, 'Giày sneaker 002', '520.000', 'Mẫu mã đa dạng hợp thời trang.\r\nMang đến phong cách trẻ trung và thoải mái khi mang\r\nMẫu mã đa dạng hợp thời trang.\r\nMang đến phong cách trẻ trung và thoải mái khi mang\r\nMẫu mã đa dạng hợp thời trang.\r\nMang đến phong cách trẻ trung và thoải mái khi mang', 'giay (3).jpg'),
(7, NULL, 'Giày sneaker 003', '190.000', 'Mẫu mã đa dạng hợp thời trang.\r\nMang đến phong cách trẻ trung và thoải mái khi mang\r\nMẫu mã đa dạng hợp thời trang.\r\nMang đến phong cách trẻ trung và thoải mái khi mang\r\nMẫu mã đa dạng hợp thời trang.\r\nMang đến phong cách trẻ trung và thoải mái khi mang', 'giay (4).jpg'),
(8, NULL, 'Giày sneaker 004', '350.000', 'Mẫu mã đa dạng hợp thời trang.\r\nMang đến phong cách trẻ trung và thoải mái khi mang\r\nMẫu mã đa dạng hợp thời trang.\r\nMang đến phong cách trẻ trung và thoải mái khi mang\r\nMẫu mã đa dạng hợp thời trang.\r\nMang đến phong cách trẻ trung và thoải mái khi mang', 'giay (36).jpg'),
(9, NULL, 'Giày sneaker 005', '320.000', 'Mẫu mã đa dạng hợp thời trang.\r\nMang đến phong cách trẻ trung và thoải mái khi mang\r\nMẫu mã đa dạng hợp thời trang.\r\nMang đến phong cách trẻ trung và thoải mái khi mang\r\nMẫu mã đa dạng hợp thời trang.\r\nMang đến phong cách trẻ trung và thoải mái khi mang', 'giay (28).jpg'),
(10, NULL, 'Giày sneaker 006', '420.000', 'Mẫu mã đa dạng hợp thời trang.\r\nMang đến phong cách trẻ trung và thoải mái khi mang\r\nMẫu mã đa dạng hợp thời trang.\r\nMang đến phong cách trẻ trung và thoải mái khi mang\r\nMẫu mã đa dạng hợp thời trang.\r\nMang đến phong cách trẻ trung và thoải mái khi mang', 'giay (7).jpg'),
(11, NULL, 'Giày sneaker 007', '625.000', 'Mẫu mã đa dạng hợp thời trang.\r\nMang đến phong cách trẻ trung và thoải mái khi mang\r\nMẫu mã đa dạng hợp thời trang.\r\nMang đến phong cách trẻ trung và thoải mái khi mang\r\nMẫu mã đa dạng hợp thời trang.\r\nMang đến phong cách trẻ trung và thoải mái khi mang', 'giay (8).jpg'),
(12, NULL, 'Giày sneaker 008', '255.000', 'Mẫu mã đa dạng hợp thời trang.\r\nMang đến phong cách trẻ trung và thoải mái khi mang\r\nMẫu mã đa dạng hợp thời trang.\r\nMang đến phong cách trẻ trung và thoải mái khi mang\r\nMẫu mã đa dạng hợp thời trang.\r\nMang đến phong cách trẻ trung và thoải mái khi mang', 'giay (8).jpg'),
(13, NULL, 'Giày sneaker 009', '450.000', 'Mẫu mã đa dạng hợp thời trang.\r\nMang đến phong cách trẻ trung và thoải mái khi mang\r\nMẫu mã đa dạng hợp thời trang.\r\nMang đến phong cách trẻ trung và thoải mái khi mang\r\nMẫu mã đa dạng hợp thời trang.\r\nMang đến phong cách trẻ trung và thoải mái khi mang', 'giay (29).jpg'),
(14, NULL, 'Giày sneaker 010', '210.000', 'Mẫu mã đa dạng hợp thời trang.\r\nMang đến phong cách trẻ trung và thoải mái khi mang\r\nMẫu mã đa dạng hợp thời trang.\r\nMang đến phong cách trẻ trung và thoải mái khi mang\r\nMẫu mã đa dạng hợp thời trang.\r\nMang đến phong cách trẻ trung và thoải mái khi mang', 'giay (10).jpg'),
(15, NULL, 'Giày sneaker 012', '360.000', 'Mẫu mã đa dạng và hợp thời trang.\r\nPhong cách thiết kế tinh tế, mang độ chi tiết cao.\r\nMẫu mã đa dạng và hợp thời trang.\r\nPhong cách thiết kế tinh tế, mang độ chi tiết cao.\r\nMẫu mã đa dạng và hợp thời trang.\r\nPhong cách thiết kế tinh tế, mang độ chi tiết cao.\r\nMẫu mã đa dạng và hợp thời trang.\r\nPhong cách thiết kế tinh tế, mang độ chi tiết cao.', 'giay (20).jpg'),
(16, NULL, 'Giày sneaker 012', '420.000', 'Mẫu mã đa dạng và hợp thời trang.\r\nPhong cách thiết kế tinh tế, mang độ chi tiết cao.\r\nMẫu mã đa dạng và hợp thời trang.\r\nPhong cách thiết kế tinh tế, mang độ chi tiết cao.\r\nMẫu mã đa dạng và hợp thời trang.\r\nPhong cách thiết kế tinh tế, mang độ chi tiết cao.\r\nMẫu mã đa dạng và hợp thời trang.\r\nPhong cách thiết kế tinh tế, mang độ chi tiết cao.', 'giay (25).jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sizesanpham`
--

CREATE TABLE `sizesanpham` (
  `masize` int(11) NOT NULL,
  `tensize` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sizesanpham`
--

INSERT INTO `sizesanpham` (`masize`, `tensize`) VALUES
(2, NULL),
(4, '35');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`mahoadon`,`machitietsanpham`),
  ADD KEY `FK_CTHOADON_CTSANPHAM` (`machitietsanpham`);

--
-- Chỉ mục cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD PRIMARY KEY (`machitietsanpham`),
  ADD KEY `FK_CHITIET_SANPHAM` (`masanpham`),
  ADD KEY `FK_CHITIET_SIZE` (`masize`),
  ADD KEY `FK_CHITIET_MAUSANPHAM` (`mamau`);

--
-- Chỉ mục cho bảng `danhmucsanpham`
--
ALTER TABLE `danhmucsanpham`
  ADD PRIMARY KEY (`madanhmuc`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahoadon`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makhachhang`);

--
-- Chỉ mục cho bảng `mausanpham`
--
ALTER TABLE `mausanpham`
  ADD PRIMARY KEY (`mamau`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masanpham`),
  ADD KEY `FK_SANPHAM_DANHMUC` (`madanhmuc`);

--
-- Chỉ mục cho bảng `sizesanpham`
--
ALTER TABLE `sizesanpham`
  ADD PRIMARY KEY (`masize`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  MODIFY `machitietsanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `danhmucsanpham`
--
ALTER TABLE `danhmucsanpham`
  MODIFY `madanhmuc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `mahoadon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `makhachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `mausanpham`
--
ALTER TABLE `mausanpham`
  MODIFY `mamau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `sizesanpham`
--
ALTER TABLE `sizesanpham`
  MODIFY `masize` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `FK_CTHOADON_CTSANPHAM` FOREIGN KEY (`machitietsanpham`) REFERENCES `chitietsanpham` (`machitietsanpham`),
  ADD CONSTRAINT `FK_CTHOADON_HOADON` FOREIGN KEY (`mahoadon`) REFERENCES `hoadon` (`mahoadon`);

--
-- Các ràng buộc cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD CONSTRAINT `FK_CHITIET_MAUSANPHAM` FOREIGN KEY (`mamau`) REFERENCES `mausanpham` (`mamau`),
  ADD CONSTRAINT `FK_CHITIET_SANPHAM` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`),
  ADD CONSTRAINT `FK_CHITIET_SIZE` FOREIGN KEY (`masize`) REFERENCES `sizesanpham` (`masize`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `FK_SANPHAM_DANHMUC` FOREIGN KEY (`madanhmuc`) REFERENCES `danhmucsanpham` (`madanhmuc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
