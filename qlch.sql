-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 02, 2026 lúc 10:48 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlch`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `brandid` int(11) NOT NULL,
  `brand_code` varchar(50) DEFAULT NULL,
  `brand_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`brandid`, `brand_code`, `brand_name`) VALUES
(1, 'MN1', 'Motor Nuclear1'),
(2, 'MT', 'Moshow Toys'),
(3, 'BD', 'Bandai'),
(4, 'SH', 'Sunny Hobby'),
(5, 'GST', 'GS-TOYS'),
(6, 'IE', 'InEra+'),
(7, 'YLCW', 'Yi Li CHUANG WAN'),
(8, 'CTS', 'CANGTOYS'),
(9, 'CD', 'CANGDAO'),
(10, 'HKD', 'HAKUDA'),
(11, 'HM', 'Hobby Mio'),
(12, 'SNAA', 'SNAA'),
(13, 'HMXA', 'Hemoxian'),
(14, 'DS', 'Dspiae'),
(15, 'DB', 'Daban'),
(16, 'WM', 'Wolf Model');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `category_code` varchar(50) DEFAULT NULL,
  `category_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`categoryid`, `category_code`, `category_name`) VALUES
(1, 'MK', 'Model Kit'),
(2, 'MB', 'Metal Build'),
(3, 'FIGURE', 'Figure'),
(4, 'PK', 'Phụ kiện'),
(5, 'TOOL', 'Tool');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `order_date` datetime(6) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `total_amount` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`orderid`, `customer_name`, `order_date`, `payment_method`, `status`, `total_amount`, `userid`) VALUES
(1, 'Nguyễn Quang Huy', '2026-05-15 01:53:08.223000', 'Cash', b'1', 850000, 1),
(2, 'Huỳnh Thanh Trình', '2026-05-15 01:53:08.223000', 'Cash', b'1', 2950000, 1),
(3, 'Nguyễn Gia Khiêm', '2026-05-15 01:53:08.223000', 'BankTransfer', b'1', 4880000, 2),
(4, 'Phạm Gia Khiêm', '2026-05-16 01:53:08.223000', 'BankTransfer', b'1', 6650000, 1),
(5, 'Nguyễn Hữu Trọng', '2026-05-16 01:53:08.223000', 'BankTransfer', b'1', 13080000, 7),
(6, 'Phan Nhật Tấn', '2026-05-16 01:53:08.223000', 'Cash', b'1', 3450000, 7),
(7, 'Phạm Minh Quang', '2026-05-17 01:53:08.223000', 'Cash', b'1', 4600000, 6),
(8, 'Hoàng Xuân Đạt', '2026-05-17 01:53:08.223000', 'BankTransfer', b'1', 24430000, 3),
(9, 'Khôi Nguyên', '2026-05-17 01:53:08.223000', 'Cash', b'1', 15500000, 1),
(11, 'HieuThuHai', '2026-05-18 01:53:08.223000', 'BankTransfer', b'1', 6860000, 2),
(12, 'Nguyễn Gia Khiêm', '2026-05-18 01:53:08.223000', 'Cash', b'1', 900000, 1),
(13, 'Nguyễn Hữu Trọng', '2026-05-18 01:53:08.223000', 'Cash', b'1', 650000, 1),
(14, 'Sơn Tùng MTP', '2026-05-20 01:53:08.223000', 'BankTransfer', b'1', 9450000, 1),
(15, 'Huỳnh Lập', '2026-05-20 01:53:08.223000', 'Cash', b'1', 2800000, 1),
(16, 'Dương Đeo Mic', '2026-05-20 01:53:08.223000', 'Cash', b'1', 1450000, 1),
(17, '2 Khang', '2026-05-20 01:53:08.223000', 'BankTransfer', b'1', 4150000, 1),
(18, 'Hà Anh Tuấn', '2026-05-24 01:53:08.223000', 'BankTransfer', b'0', 4650000, 1),
(19, 'Mỹ Tâm', '2026-05-24 01:53:08.223000', 'Cash', b'1', 900000, 1),
(20, 'HieuThuHai', '2026-05-26 01:53:08.223000', 'Cash', b'1', 2000000, 1),
(21, 'Huỳnh Thanh Trình', '2026-05-26 01:53:08.223000', 'Cash', b'1', 4350000, 1),
(22, 'Nguyễn Quang Huy', '2026-05-26 01:53:08.223000', 'BankTransfer', b'1', 950000, 1),
(23, 'Huỳnh Lê Thúy Ngân', '2026-05-26 01:53:08.223000', 'Cash', b'1', 1850000, 1),
(24, 'Nguyễn Thị Hiền', '2026-05-27 01:53:08.223000', 'Cash', b'1', 2910000, 1),
(25, 'Nguyễn Tấn Đạt', '2026-05-27 01:53:08.223000', 'Cash', b'1', 1280000, 1),
(26, 'Lê Trung Kiên', '2026-05-28 01:53:08.223000', 'Cash', b'1', 950000, 1),
(27, 'HieuThuHai', '2026-05-28 01:53:08.223000', 'BankTransfer', b'1', 2550000, 1),
(28, 'Nguyễn Phạm Việt Tân', '2026-05-28 01:53:08.223000', 'Cash', b'1', 1500000, 1),
(29, 'G-Dragon', '2026-05-29 01:53:08.223000', 'Cash', b'1', 1100000, 1),
(30, 'Cái Bang', '2026-05-29 01:53:08.223000', 'Cash', b'1', 850000, 1),
(31, 'Hái Thứ Hiêu', '2026-06-02 00:39:09.000000', 'BankTransfer', b'0', 2730000, 1),
(32, 'Hái Thứ Hiêu', '2026-06-02 00:57:57.000000', 'BankTransfer', b'0', 15400000, 1),
(33, 'Hái Thứ Hiêu', '2026-06-02 01:14:50.000000', 'BankTransfer', b'0', 9600000, 1),
(34, 'Hái Thứ Hiêu', '2026-06-02 14:18:38.000000', 'BankTransfer', b'1', 850000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `odetailid` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`odetailid`, `price`, `quantity`, `orderid`, `productid`) VALUES
(1, 850000, 1, 1, 1),
(2, 850000, 1, 2, 1),
(3, 900000, 1, 2, 3),
(4, 550000, 1, 2, 4),
(5, 650000, 1, 2, 5),
(6, 900000, 1, 3, 3),
(7, 1280000, 1, 3, 7),
(8, 1100000, 1, 3, 10),
(9, 1600000, 1, 3, 11),
(10, 1800000, 3, 4, 14),
(11, 50000, 1, 4, 16),
(12, 1200000, 1, 4, 18),
(13, 650000, 1, 5, 5),
(14, 1280000, 1, 5, 7),
(15, 1600000, 5, 5, 11),
(16, 3150000, 1, 5, 12),
(17, 900000, 1, 6, 3),
(18, 550000, 1, 6, 4),
(19, 400000, 1, 6, 8),
(20, 600000, 1, 6, 9),
(21, 1000000, 1, 6, 13),
(22, 950000, 4, 7, 2),
(23, 400000, 2, 7, 8),
(24, 1280000, 1, 8, 7),
(25, 1600000, 2, 8, 11),
(26, 3150000, 3, 8, 12),
(27, 1500000, 7, 8, 21),
(28, 400000, 6, 9, 8),
(29, 1100000, 3, 9, 10),
(30, 1000000, 2, 9, 13),
(31, 1800000, 1, 9, 14),
(32, 1200000, 5, 9, 18),
(33, 950000, 1, 11, 2),
(34, 650000, 1, 11, 5),
(35, 1280000, 2, 11, 7),
(36, 1100000, 1, 11, 10),
(37, 1600000, 1, 11, 11),
(38, 900000, 1, 12, 3),
(39, 650000, 1, 13, 5),
(40, 3150000, 3, 14, 12),
(41, 400000, 1, 15, 8),
(42, 600000, 1, 15, 9),
(43, 1800000, 1, 15, 14),
(44, 900000, 1, 16, 3),
(45, 550000, 1, 16, 4),
(46, 3150000, 1, 17, 12),
(47, 1000000, 1, 17, 13),
(48, 600000, 1, 18, 9),
(49, 3150000, 1, 18, 12),
(50, 900000, 1, 18, 24),
(51, 900000, 1, 19, 3),
(52, 500000, 1, 20, 26),
(53, 500000, 1, 20, 27),
(54, 500000, 1, 20, 28),
(55, 500000, 1, 20, 29),
(56, 550000, 1, 21, 4),
(57, 1600000, 1, 21, 11),
(58, 500000, 1, 21, 28),
(59, 400000, 1, 21, 30),
(60, 400000, 1, 21, 31),
(61, 900000, 1, 21, 32),
(62, 950000, 1, 22, 2),
(63, 50000, 1, 23, 16),
(64, 1800000, 1, 23, 34),
(65, 1100000, 1, 24, 25),
(66, 1800000, 1, 24, 34),
(67, 10000, 1, 24, 35),
(68, 1280000, 1, 25, 7),
(69, 950000, 1, 26, 36),
(70, 400000, 1, 27, 8),
(71, 800000, 1, 27, 39),
(72, 1350000, 1, 27, 40),
(73, 1500000, 1, 28, 33),
(74, 1100000, 1, 29, 10),
(75, 850000, 1, 30, 1),
(76, 950000, 2, 31, 2),
(77, 650000, 1, 31, 5),
(78, 180000, 1, 31, 6),
(79, 1100000, 14, 32, 10),
(80, 800000, 12, 33, 39),
(81, 850000, 1, 34, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  `import_price` int(11) DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `sell_price` int(11) DEFAULT NULL,
  `brandid` int(11) DEFAULT NULL,
  `categoryid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`productid`, `image_url`, `import_price`, `is_active`, `product_code`, `product_name`, `quantity`, `sell_price`, `brandid`, `categoryid`) VALUES
(1, '/Images/Products/1.webp', 750000, b'1', 'MN-MK-0001', 'Mô hình MNP CR01 Huan Ci Huyễn Tứ', 28, 850000, 1, 1),
(2, '/Images/Products/2.webp', 850000, b'1', 'SNAA-MK-0002', 'Mô hình YR04BR Fire Lord Phantom', 37, 950000, 1, 1),
(3, '/Images/Products/3.webp', 800000, b'1', 'BD-MK-0003', 'Mô hình MGSD Gundam Aerial', 50, 800000, 3, 1),
(4, '/Images/Products/4.webp', 500000, b'1', 'YLCW-MK-0004', 'Mô hình FR3-V04 Ma Động Vương', 4, 550000, 9, 1),
(5, '/Images/Products/5.webp', 600000, b'1', 'HM-TOOL-0005', 'Combo Dụng Cụ Lắp Ráp Mô Hình Hobby Mio', 65, 650000, 2, 1),
(6, '/Images/Products/6.webp', 150000, b'1', 'HM-TOOL-0006', 'Kềm Kìm Cắt Hobby Mio HM-105', 36, 180000, 1, 1),
(7, '/Images/Products/7.webp', 1000000, b'1', 'BD-MK-0007', 'Mô hình RX93 NU FORTUNE MEOW VER', 34, 1280000, 3, 1),
(8, '/Images/Products/8.webp', 350000, b'1', 'SNAA-MK-0008', 'Mô hình SC009 RG/BE 1/144 Divine Invoker - Percival (Deluxe Edition)', 36, 400000, 2, 1),
(9, '/Images/Products/9.webp', 500000, b'1', 'SNAA-MK-0009', 'Mô hình YR05 Nether Emperor', 21, 600000, 2, 1),
(10, '/Images/Products/10.webp', 900000, b'1', 'MT-MB-0010', 'Mô hình Metal Build 1/100 Date Masamune', 59, 1100000, 2, 2),
(11, '/Images/Products/11.webp', 1400000, b'1', 'MN-MK-0011', 'Mô hình MNP XH14 Ma Lễ Thanh', 26, 1600000, 1, 1),
(12, '/Images/Products/12.webp', 3000000, b'1', 'MT-MB-0012', 'Mô hình Metal Build 1/100 Set 3 Fox Hound TYRANT', 35, 3150000, 2, 2),
(13, '/Images/Products/13.webp', 900000, b'1', 'FIGURE-CTS-0013', 'Mô hình Dragon Girl Loong', 16, 1000000, 11, 4),
(14, '/Images/Products/14.webp', 1600000, b'0', 'IE-MK-0014', 'Mô hình RT-002 Nemesis', 0, 1800000, 7, 1),
(16, '/Images/Products/aochoangkhaihuyen.webp', 30000, b'1', 'HKD-PK-0015', 'Áo Choàng Mô Hình Khải Huyền', 8, 50000, 2, 1),
(18, '/Images/Products/tianfa.webp', 1000000, b'1', 'CD-MB-0016', 'Mô hình Metal Build CD TG02 Tian Fa', 30, 1200000, 2, 2),
(21, '/Images/Products/ngokhong.webp', 1300000, b'1', 'MT-MB-0021', 'Mô hình Metal Build 1/100 Wukong Ngộ Không', 0, 1500000, 2, 2),
(24, '/Images/Products/tieudaotu.webp', 700000, b'1', 'SH-MK-0024', 'Mô hình Tiêu Dao Tử', 11, 900000, 5, 1),
(25, '/Images/Products/nguyenlinh.webp', 850000, b'1', 'GST-MK-0025', 'Mô hình lắp Nguyên Linh Hoàng Đế', 15, 1100000, 6, 1),
(26, '/Images/Products/chuoiphapsu.webp', 450000, b'1', 'YLCW-MK-0026', 'Mô hình Chuối Pháp Sư', 22, 500000, 9, 1),
(27, '/Images/Products/chuoisuphu.webp', 450000, b'1', 'YLCW-MK-0027', 'Mô hình Dưa Hấu Chùy Vương', 54, 500000, 9, 1),
(28, '/Images/Products/vuaphitieu.webp', 450000, b'1', 'YLCW-MK-0028', 'Mô hình Vua Phi Tiêu Vàng', 30, 500000, 9, 1),
(29, '/Images/Products/mdv.webp', 450000, b'1', 'YLCW-MK-0029', 'Mô hình Ma Động Vương', 11, 500000, 9, 1),
(30, '/Images/Products/dtk.webp', 350000, b'1', 'YLCW-MK-0030', 'Mô hình Đào Thích Khách', 9, 400000, 9, 1),
(31, '/Images/Products/nhotiachop.webp', 350000, b'1', 'YLCW-MK-0031', 'Mô hình Nho Tia Chớp', 9, 400000, 9, 1),
(32, '/Images/Products/thunder.webp', 800000, b'1', 'IE-MK-0032', 'Mô hình ThunderBolt 2.0', 8, 900000, 7, 1),
(33, '/Images/Products/lubu.webp', 1300000, b'1', 'MN-MK-0033', 'Mô hình LuBu', 9, 1500000, 1, 1),
(34, '/Images/Products/tv.webp', 1500000, b'1', 'MN-MK-0034', 'Mô hình Triệu Vân', 18, 1800000, 1, 1),
(35, '/Images/Products/binhnhua.webp', 5000, b'1', 'HM-TOOL-0035', 'Dụng cụ Bình nhựa pha sơn 2.0', 3, 10000, 2, 1),
(36, '/Images/Products/takeda.webp', 800000, b'1', 'MT-MB-0036', 'Mô hình Metal Build Takeda Shingen', 21, 950000, 2, 2),
(37, '/Images/Products/lynx.webp', 600000, b'1', 'SH-MK-0037', 'Mô Hình REA-03 Lynx Blue Whale', 13, 750000, 5, 1),
(38, '/Images/Products/tanthuyhan.webp', 700000, b'1', 'SH-MK-0038', 'Mô hình Tân Thủy Hoàng', 7, 850000, 5, 1),
(39, '/Images/Products/baff.webp', 700000, b'1', 'HMXA-MK-0039', 'Mô hình Baffarion', 32, 800000, 2, 1),
(40, '/Images/Products/dspiae1.webp', 1300000, b'1', 'DS-TOOL-0040', 'Bộ dụng cụ cao cấp Dspiae ', 9, 1350000, 2, 1),
(41, '/Images/Products/ban-sao-cua-an-hobby-store-50-1748596931579.webp', 30000, b'1', 'DS-TOOL-0041', 'Bút sơn mô hình đầu cọ DSPIAE Ánh Kim', 10, 45000, 2, 1),
(42, '/Images/Products/1e9a9de7-6c41-4635-981e-77ef11693156.webp', 800000, b'1', 'MN-MK-0042', 'MÔ HÌNH LẮP RÁP WOLF MODEL - BARBATOS REX 1/100', 3, 1000000, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `avatar_url` text DEFAULT NULL,
  `bday` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  `passwordu` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `roleu` varchar(20) NOT NULL,
  `sex` bit(1) DEFAULT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`userid`, `avatar_url`, `bday`, `email`, `full_name`, `is_active`, `passwordu`, `phone`, `roleu`, `sex`, `username`) VALUES
(1, '/Images/Employees/avatar_1.jpg', '1999-03-03', 'wuockahn1@gmail.com', 'Nguyễn Quốc Khánh', b'1', '$2a$10$xQOp2CYin/W69BOXvlR77ObfAQIhM7RPgFbOd/XawPTDkaSctwxUW', '09816374583', 'Admin', b'1', 'admin123'),
(2, '/Images/Employees/nghia.jpg', '2005-02-23', 'ducnghia1@gmail.com', 'Huỳnh Đức Nghĩa', b'1', '$2a$10$8AxhkCE0TV2vp5cY6pDAtOCAmEAE9S9Bf.AiVmoPcMxDsI1NAXfeG', '0982349128', 'user', b'1', 'nghia1'),
(3, '/Images/Employees/avatar_3.jpg', '2005-05-31', 'phuongmai1@gmail.com', 'Phạm Ngọc Phương Mai', b'1', '$2a$10$ilAKp7JDn0..UWCBAGV4beJDw2Yw7ecYTpo1FD2P/k4a8Tz99wawW', '0902590080', 'user', b'0', 'mai1'),
(5, '/Images/Employees/khoi.jpg', '2005-06-23', 'khoicaitran@gmail.com', 'Cái Trần Đăng Khôi', b'1', '$2a$10$1Dpb1iOoXljS2D8vFh1/.ujGclXmw3kjP92FH3EmfPxIb2WcZ0iju', '0914010012', 'user', b'1', 'khoiblack'),
(6, '/Images/Employees/bao.png', '2005-10-09', 'duonghoaibao@gmail.com', 'Dương Hoài Bảo', b'0', '$2a$10$PGhP8vTmmXhnqM1geDTzF.juUuD.3.nJGvlKwQ2WbmKCbe4HC8eh.', '0706101281', 'user', b'0', 'baomap1'),
(7, '/Images/Employees/kha.jpg', '2005-11-11', 'tankha@gmail.com', 'Phạm Tấn Kha', b'1', '$2a$10$If4NGHXrocoBGUl7wOkPcOv952cD64gF/PeoWLtUT1YGO5UPiwMhO', '0123456789', 'user', b'1', 'tankha36'),
(8, '/Images/Employees/bao2.jpg', '2005-02-17', 'giabao@gmail.com', 'Đặng Trần Gia Bảo', b'0', '$2a$10$N6uDjlHrcXNsoEUMtYHA9O9VSN..hBLmDG8WhRgxINWEjcf4f84w2', '0902112443', 'user', b'1', 'giabao1'),
(9, '/Images/Employees/Screenshot 2026-01-04 005233.png', '2006-06-16', 'banglaai1122@gmail.com', 'Hoàng Xuân Bằng', b'1', '$2a$10$qZw8oRohYhVxKCUp3A6fU.cuHEIbqjJSvU2Ofaa52zqqQzY8QqS2q', '0914010013', 'user', b'1', 'banglaai112233'),
(10, '/Images/Employees/khanh1.jpg', '2005-06-05', 'thailuong@gmail.com', 'Lương Việt Thái', b'1', '$2a$10$36cjFyg2IBFNiD01O.UqwuXfsJC7onErDzIcNZMMJrDOnvoaT6vGO', '0901313141', 'user', b'1', 'thailuong1'),
(11, '/Images/Employees/meo.jpg', '1995-06-15', 'hoangvu@gmail.com', 'Nguyễn Vũ Hoàng', b'1', '$2a$10$oaZ77LgxKthJjTiW6tBt8OOGAlEaNNwMIUrik.zz9VKlkzB.9gwtm', '0365520586', 'user', b'1', 'hoangvu1999'),
(12, '/Images/Employees/vt.jpg', '2005-10-10', 'viettan@gmail.com', 'Nguyễn Việt Tân', b'1', '$2a$10$.PUq.Tt7YkPIe3DxtMYfReiKNkqsdJmDgxzTACVpQcqx8kLglgqva', '0902090909', 'user', b'1', 'viettan');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brandid`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `FKpnm1eeupqm4tykds7k3okqegv` (`userid`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`odetailid`),
  ADD KEY `FKh35b1ljeu4440iie9psw8a7yt` (`orderid`),
  ADD KEY `FKjmdsv4sh1x4akwdtaibwspa0v` (`productid`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`),
  ADD KEY `FKbjg13m30ju2y2g5icqbuycglv` (`brandid`),
  ADD KEY `FK4ort9abhumpx4t2mlngljr1vi` (`categoryid`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`),
  ADD UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `brandid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `odetailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FKpnm1eeupqm4tykds7k3okqegv` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `FKh35b1ljeu4440iie9psw8a7yt` FOREIGN KEY (`orderid`) REFERENCES `orders` (`orderid`),
  ADD CONSTRAINT `FKjmdsv4sh1x4akwdtaibwspa0v` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK4ort9abhumpx4t2mlngljr1vi` FOREIGN KEY (`categoryid`) REFERENCES `category` (`categoryid`),
  ADD CONSTRAINT `FKbjg13m30ju2y2g5icqbuycglv` FOREIGN KEY (`brandid`) REFERENCES `brand` (`brandid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
