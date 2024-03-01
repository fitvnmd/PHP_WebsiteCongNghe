-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 05, 2022 at 05:18 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vuongnguyenmanhdatphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `vnmd_category`
--

CREATE TABLE `vnmd_category` (
  `id` int(11) NOT NULL COMMENT 'Mã loại',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên loại SP',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Slug loại SP',
  `parentid` int(11) DEFAULT '0' COMMENT 'Mã cấp cha',
  `orders` int(11) DEFAULT NULL COMMENT 'Thứ tự',
  `metakey` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Từ khoá SEO',
  `metadesc` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mô tả SEO',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày tạo',
  `created_by` int(11) NOT NULL DEFAULT '0' COMMENT 'Người tạo',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày sửa',
  `updated_by` int(11) DEFAULT '0' COMMENT 'Người sửa',
  `status` int(11) NOT NULL DEFAULT '2' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vnmd_category`
--

INSERT INTO `vnmd_category` (`id`, `name`, `slug`, `parentid`, `orders`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Điện thoại', 'dien-thoai', 0, 1, '', '', '2022-04-12 08:35:32', 0, '2022-04-15 08:37:22', 1, 1),
(2, 'Laptop', 'laptop', 0, 2, '', '', '2022-04-12 08:35:32', 0, '2022-06-04 14:03:15', 1, 2),
(3, 'Thời trang nam', 'thoi-trang-nam', 0, 3, '', '', '2022-04-12 08:35:32', 0, '2022-04-15 08:37:24', 1, 1),
(4, 'Thời trang nữ', 'thoi-trang-nu', 0, 4, '', '', '2022-04-12 08:35:32', 0, '2022-06-04 13:45:04', 1, 1),
(5, 'Giày', 'giay', 0, 5, '', '', '2022-04-12 08:35:32', 0, '2022-05-08 08:10:48', 1, 1),
(6, 'Túi xách', 'tui-xach', 0, 6, '', '', '2022-04-12 08:35:32', 0, '2022-05-08 08:10:49', 1, 1),
(7, 'Nón', 'non', 0, 7, '', '', '2022-04-12 08:35:32', 0, '2022-05-08 08:10:49', 1, 1),
(8, 'Balo', 'balo', 0, 8, '', '', '2022-04-12 08:35:32', 0, '2022-05-08 08:10:50', 1, 1),
(9, 'Phụ kiện điện tử', 'phu-kien-dien-tu', 0, 9, '', '', '2022-04-12 08:35:32', 0, '2022-05-08 08:10:52', 1, 1),
(10, 'Phụ kiện thời trang', 'phu-kien-thoi-trang', 0, 10, '', '', '2022-04-12 08:35:32', 0, '2022-05-08 08:10:58', 1, 1),
(11, 'Áo thun nam', 'ao-thun-nam', 3, 1, '', '', '2022-04-12 08:35:32', 0, '2022-04-12 08:35:32', 0, 2),
(12, 'Áo sơ mi nam', 'ao-so-mi-nam', 3, 2, '', '', '2022-04-12 08:35:32', 0, '2022-04-12 08:35:32', 0, 2),
(13, 'Áo khoác nam', 'ao-khoac-nam', 3, 3, '', '', '2022-04-12 08:35:32', 0, '2022-04-12 08:35:32', 0, 2),
(14, 'Áo kaki nam', 'ao-kaki-nam', 3, 4, '', '', '2022-04-12 08:35:32', 0, '2022-04-12 08:35:32', 0, 2),
(15, 'Áo thể thao nam', 'ao-the-thao-nam', 3, 5, '', '', '2022-04-12 08:35:32', 0, '2022-04-12 08:35:32', 0, 2),
(16, 'Áo ba lỗ nam', 'ao-ba-lo-nam', 3, 6, '', '', '2022-04-12 08:35:32', 0, '2022-04-12 08:35:32', 0, 2),
(17, 'Quần tây nam', 'quan-tay-nam', 3, 7, '', '', '2022-04-12 08:35:32', 0, '2022-04-12 08:35:32', 0, 2),
(18, 'Quần kaki nam', 'quan-kaki-nam', 3, 8, '', '', '2022-04-12 08:35:32', 0, '2022-04-12 08:35:32', 0, 2),
(19, 'Quần tây nam', 'quan-tay-nam', 3, 9, '', '', '2022-04-12 08:35:32', 0, '2022-04-12 08:35:32', 0, 2),
(20, 'Quần jean nam', 'quan-jean-nam', 3, 10, '', '', '2022-04-12 08:35:32', 0, '2022-04-12 08:35:32', 0, 2),
(23, 'Áo thun nữ', 'ao-thun-nu', 3, 1, '', '', '2022-04-12 08:35:32', 0, '2022-04-12 08:35:32', 0, 2),
(24, 'Áo sơ mi nữ', 'ao-so-mi-nu', 3, 2, '', '', '2022-04-12 08:35:32', 0, '2022-04-12 08:35:32', 0, 2),
(25, 'Áo khoác nữ', 'ao-khoac-nu', 3, 3, '', '', '2022-04-12 08:35:32', 0, '2022-04-12 08:35:32', 0, 2),
(26, 'Áo kaki nữ', 'ao-kaki-nu', 3, 4, '', '', '2022-04-12 08:35:32', 0, '2022-04-12 08:35:32', 0, 2),
(27, 'Áo thể thao nữ', 'ao-the-thao-nu', 3, 5, '', '', '2022-04-12 08:35:32', 0, '2022-04-12 08:35:32', 0, 2),
(28, 'Áo ba lỗ nữ', 'ao-ba-lo-nu', 3, 6, '', '', '2022-04-12 08:35:32', 0, '2022-04-12 08:35:32', 0, 2),
(29, 'Quần tây nữ', 'quan-tay-nu', 3, 7, '', '', '2022-04-12 08:35:32', 0, '2022-04-12 08:35:32', 0, 2),
(30, 'Quần kaki nữ', 'quan-kaki-nu', 3, 8, '', '', '2022-04-12 08:35:32', 0, '2022-04-12 08:35:32', 0, 2),
(31, 'Quần tây nữ', 'quan-tay-nu', 3, 9, '', '', '2022-04-12 08:35:32', 0, '2022-04-12 08:35:32', 0, 2),
(32, 'Quần jean nữ', 'quan-jean-nu', 3, 10, '', '', '2022-04-12 08:35:32', 0, '2022-04-12 08:35:32', 0, 2),
(33, 'Laptop moi nhap 2023', 'laptop-moi-nhap-2023', 2, 5, 'Laptop moi nhap 2023', 'Laptop moi nhap 2023', '2022-04-13 10:24:07', 1, '2022-05-08 08:11:05', 1, 2),
(34, 'Laptop moi nhap 2023 test 1', 'laptop-moi-nhap-2023-test-1', 2, 5, 'Laptop moi nhap 2023 test 1', 'Laptop moi nhap 2023 test 1', '2022-05-08 05:29:19', 1, '2022-06-04 06:11:58', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vnmd_contact`
--

CREATE TABLE `vnmd_contact` (
  `id` int(11) NOT NULL COMMENT 'Mã liên hệ	',
  `userid` int(11) DEFAULT '0',
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Họ và tên	',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Email	',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Điện thoại	',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tiêu đề	',
  `detail` mediumtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Chi tiết	',
  `replyid` int(11) DEFAULT NULL,
  `replydetail` text COLLATE utf8_unicode_ci COMMENT 'Nội dung liên hệ	',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày liên hệ	',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày trả lời	',
  `updated_by` int(11) DEFAULT '0' COMMENT 'Người trả lời	',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'Trạng thái	'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vnmd_contact`
--

INSERT INTO `vnmd_contact` (`id`, `userid`, `fullname`, `email`, `phone`, `title`, `detail`, `replyid`, `replydetail`, `created_at`, `updated_at`, `updated_by`, `status`) VALUES
(1, 0, 'Nguyễn Văn Toàn', 'nguyenvantoan@gmail.com', '0987654321', 'Hỏi về liên kết mua sĩ', 'Hỏi về liên kết mua sĩ', NULL, NULL, '2022-03-27 14:18:12', '2022-03-27 14:18:12', 1, 1),
(2, 0, 'Lê Thái Sơn', 'lethaison@gmail.com', '0987667986', 'Hỏi về liên kết mua sĩ', 'Hỏi về liên kết mua sĩ', NULL, NULL, '2022-03-27 14:18:12', '2022-06-04 14:03:34', 1, 2),
(3, 0, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '0987654333', 'Hỏi về liên kết mua sĩ', 'Hỏi về liên kết mua sĩ', NULL, NULL, '2022-03-27 14:18:12', '2022-03-27 14:18:12', 1, 1),
(4, 0, 'Lê Thái B', 'lethaib@gmail.com', '0987667979', 'Hỏi về liên kết mua sĩ', 'Hỏi về liên kết mua sĩ', NULL, NULL, '2022-03-27 14:18:12', '2022-05-03 01:44:18', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vnmd_menu`
--

CREATE TABLE `vnmd_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tableid` int(11) NOT NULL DEFAULT '0',
  `orders` int(11) NOT NULL DEFAULT '0',
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parentid` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vnmd_menu`
--

INSERT INTO `vnmd_menu` (`id`, `name`, `link`, `type`, `tableid`, `orders`, `position`, `parentid`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Trang chủ', 'index.php', 'custom', 1, 0, 'mainmenu', 0, '2022-04-12 15:07:11', 1, '2022-04-12 15:07:11', 1, 1),
(2, 'Giới thiệu', 'index.php?option=gioithieu', 'page', 2, 0, 'mainmenu', 0, '2022-04-12 15:07:11', 1, '2022-04-12 15:07:11', 1, 1),
(3, 'Sản phẩm', 'index.php?option=product', 'custom', 1, 0, 'mainmenu', 0, '2022-04-12 15:07:11', 1, '2022-04-12 15:07:11', 1, 1),
(4, 'Điện thoại', 'index.php?option=product&cat=dien-thoai', 'category', 2, 0, 'mainmenu', 3, '2022-04-12 15:07:11', 1, '2022-04-12 15:07:11', 1, 1),
(5, 'Laptop', 'index.php?option=product&cat=laptop', 'category', 3, 0, 'mainmenu', 3, '2022-04-12 15:07:11', 1, '2022-04-12 15:07:11', 1, 1),
(6, 'Thời trang nam', 'index.php?option=product&cat=thoi-trang-nam', 'category', 4, 0, 'mainmenu', 3, '2022-04-12 15:07:11', 1, '2022-04-12 15:07:11', 1, 1),
(7, 'Thời trang nữ', 'index.php?option=product&cat=thoi-trang-nu', 'category', 5, 0, 'mainmenu', 3, '2022-04-12 15:07:11', 1, '2022-04-12 15:07:11', 1, 1),
(8, 'Giày', 'index.php?option=product&cat=giay', 'category', 6, 0, 'mainmenu', 3, '2022-04-12 15:07:11', 1, '2022-04-12 15:07:11', 1, 1),
(9, 'Nón', 'index.php?option=product&cat=non', 'category', 7, 0, 'mainmenu', 3, '2022-04-12 15:07:11', 1, '2022-04-12 15:07:11', 1, 1),
(10, 'Balo', 'index.php?option=product&cat=balo', 'category', 8, 0, 'mainmenu', 3, '2022-04-12 15:07:11', 1, '2022-04-12 15:07:11', 1, 1),
(11, 'Túi xách', 'index.php?option=product&cat=tui-xach', 'category', 9, 0, 'mainmenu', 3, '2022-04-12 15:07:11', 1, '2022-04-12 15:07:11', 1, 1),
(12, 'Phụ kiện điện tử', 'index.php?option=product&cat=phu-kien-dien-tu', 'category', 10, 0, 'mainmenu', 3, '2022-04-12 15:07:11', 1, '2022-04-12 15:07:11', 1, 1),
(13, 'Phụ kiện thời trang', 'index.php?option=product&cat=phu-kien-thoi-trang', 'category', 11, 0, 'mainmenu', 3, '2022-04-12 15:07:11', 1, '2022-04-12 15:07:11', 1, 1),
(14, 'Tất cả sản phẩm', 'index.php?option=home_product-category', 'category', 1, 0, 'mainmenu', 0, '2022-04-12 15:07:11', 1, '2022-04-12 15:07:11', 1, 1),
(15, 'Tin khuyến mãi', 'index.php?option=tinkhuyenmai', 'category', 1, 0, 'mainmenu', 0, '2022-04-12 15:07:11', 1, '2022-04-12 15:07:11', 1, 1),
(16, 'Liên hệ', 'index.php?option=lienhe', 'custom', 1, 0, 'mainmenu', 0, '2022-04-12 15:07:11', 1, '2022-06-04 13:34:20', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vnmd_order`
--

CREATE TABLE `vnmd_order` (
  `id` int(11) NOT NULL COMMENT 'Mã đơn hàng	',
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Code đơn hàng	',
  `userid` int(11) NOT NULL COMMENT 'Mã khách hàng	',
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày tạo	',
  `exportdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày xuất	',
  `deliveryaddress` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Địa chỉ người nhận	',
  `deliveryname` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên người nhận	',
  `deliveryphone` varchar(120) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Điện thoại người nhận	',
  `deliveryemail` varchar(120) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Email ngươig nhận	',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày cập nhật	',
  `updated_by` int(11) DEFAULT NULL COMMENT 'Người cập nhật	',
  `status` int(11) NOT NULL COMMENT 'Trạng thái	'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vnmd_order`
--

INSERT INTO `vnmd_order` (`id`, `code`, `userid`, `createdate`, `exportdate`, `deliveryaddress`, `deliveryname`, `deliveryphone`, `deliveryemail`, `updated_at`, `updated_by`, `status`) VALUES
(1, '20200107121212', 1, '2022-04-08 03:41:16', '2022-04-08 03:41:16', 'HCM', 'Mạnh Đạt', '0987654321', 'dat@gmail.com', '2022-06-04 06:06:49', 1, 1),
(2, '20200107121216', 1, '2022-04-08 03:41:16', '2022-04-08 03:41:16', 'Bình Dương', 'Hoàng Mai Toàn', '0987654321', 'toan@gmail.com', '2022-06-04 14:03:11', 1, 1),
(3, '20200107121212', 1, '2022-04-08 03:41:16', '2022-04-08 03:41:16', 'HCM 1', 'Khách hàng 1', '0987654321', 'dat@gmail.com', '2022-06-04 13:50:43', 1, 2),
(4, '20200107121216', 1, '2022-04-08 03:41:16', '2022-04-08 03:41:16', 'Bình Dương 1', 'Khách hàng 2 ', '0987654321', 'toan@gmail.com', '2022-06-04 06:07:42', 1, 2),
(5, '20200107121212', 1, '2022-04-08 03:41:16', '2022-04-08 03:41:16', 'HCM 2', 'Khách hàng 3', '0987654321', 'dat@gmail.com', '2022-06-04 06:06:51', 1, 1),
(6, '20200107121216', 1, '2022-04-08 03:41:16', '2022-04-08 03:41:16', 'Bình Dương', 'Khách hàng 4', '0987654321', 'toan@gmail.com', '2022-06-04 06:06:52', 1, 1),
(7, '20200107121212', 1, '2022-04-08 03:41:16', '2022-04-08 03:41:16', 'HCM 3', 'Khách hàng 5', '0987654321', 'dat@gmail.com', '2022-06-04 06:05:54', 1, 2),
(8, '20200107121216', 1, '2022-04-08 03:41:16', '2022-04-08 03:41:16', 'Bình Dương 3', 'Khách hàng 6', '0987654321', 'toan@gmail.com', '2022-06-04 06:06:54', 1, 1),
(9, '20200107121212', 1, '2022-04-08 03:41:16', '2022-04-08 03:41:16', 'HCM', 'Khách hàng 6', '0987654321', 'dat@gmail.com', '2022-06-04 06:05:54', 1, 2),
(10, '20200107121216', 1, '2022-04-08 03:41:16', '2022-04-08 03:41:16', 'Bình Dương', 'Khách hàng 7', '0987654321', 'toan@gmail.com', '2022-06-04 06:05:54', 1, 2),
(11, '20200107121212', 1, '2022-04-08 03:41:16', '2022-04-08 03:41:16', 'HCM 1', 'Khách hàng 8', '0987654321', 'dat@gmail.com', '2022-04-08 03:41:16', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vnmd_orderdetail`
--

CREATE TABLE `vnmd_orderdetail` (
  `id` int(11) NOT NULL COMMENT 'Mã CT Đơn hàng	',
  `orderid` int(11) NOT NULL COMMENT 'Mã đơn hàng	',
  `productid` int(11) NOT NULL COMMENT 'Mã sản phẩm	',
  `price` float(12,2) NOT NULL COMMENT 'Giá sản phẩm	',
  `quantity` int(11) NOT NULL COMMENT 'Số lượng	',
  `amount` float(12,2) NOT NULL COMMENT 'Thành tiền	'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vnmd_post`
--

CREATE TABLE `vnmd_post` (
  `id` int(11) NOT NULL COMMENT 'Mã bài viết	',
  `topid` int(11) DEFAULT NULL COMMENT 'Mã chủ đề	',
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tiêu đề bài viết	',
  `slug` varchar(1000) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Slug tiêu đề	',
  `detail` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Chi tiết bài viết	',
  `img` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Hình ảnh	',
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post' COMMENT 'Kiểu bài viết	',
  `metakey` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Từ khóa SEO	',
  `metadesc` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mô tả SEO	',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày tạo	',
  `created_by` int(11) NOT NULL DEFAULT '1' COMMENT 'Người tạo	',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày sửa	',
  `updated_by` int(11) DEFAULT '1' COMMENT 'Người sửa	',
  `status` int(11) NOT NULL DEFAULT '2' COMMENT 'Trạng thái	'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vnmd_post`
--

INSERT INTO `vnmd_post` (`id`, `topid`, `title`, `slug`, `detail`, `img`, `type`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, NULL, 'Giới thiệu', 'gioi-thieu', 'Chi tiết bài viết', '10.png', 'post', '', '', '2022-04-18 11:50:03', 1, '2022-04-21 07:04:41', 1, 2),
(2, NULL, 'Chính sách vận chuyển', 'chinh-sach-van-chuyen', 'Chi tiết bài viết', '4.png', '', '', '', '2022-04-19 08:18:09', 1, '2022-04-21 07:04:42', 1, 2),
(3, NULL, 'Tin tức', 'tin-tuc', 'Chi tiết bài viết', '6.png', 'post', '', '', '2022-04-18 11:50:03', 1, '2022-04-21 07:04:44', 1, 2),
(7, 1, 'Tin tức 1', '', 'Tin tức 1', '6.png', 'post', 'Tin tức 1', 'Tin tức 1', '2022-04-21 07:10:30', 1, '2022-04-26 05:55:27', 1, 0),
(8, 1, 'khuyen mai 2test', '', 'khuyen mai 2test', '4.png', 'post', 'khuyen mai 2', 'khuyen mai 2', '2022-04-23 04:02:19', 1, '2022-04-26 05:55:26', 1, 0),
(9, 1, 'khuyen mai1 2 updateddddd', 'khuyen-mai1-2-updateddddd', 'khuyen mai1 2 updateddddd', '6.png', 'post', 'khuyen mai1 2 updateddddd', 'khuyen mai1 2 updateddddd', '2022-04-26 05:48:10', 1, '2022-04-26 05:55:17', 1, 2),
(10, 9, 'khuyen mai test22232', 'khuyen-mai-test22232', 'khuyen mai test32323', '6.png', 'post', 'khuyen mai test23232', 'khuyen mai test32', '2022-04-26 05:51:40', 1, '2022-04-26 05:54:38', 1, 2),
(11, 9, 'khuyen mai 2test 2222', 'khuyen-mai-2test-2222', 'khuyen mai 2test222', '6.png', 'post', 'khuyen mai 2test222', 'khuyen mai 2test22', '2022-04-26 05:52:03', 1, '2022-06-04 06:10:15', 1, 2),
(12, 9, 'khuyen mai1 2 Them2', 'khuyen-mai1-2-them2', 'khuyen mai1 2 Them2', '10.png', 'post', 'khuyen mai1 2 Them2', 'khuyen mai1 2 Them2', '2022-04-26 05:55:34', 1, '2022-06-04 06:10:14', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vnmd_product`
--

CREATE TABLE `vnmd_product` (
  `id` int(11) NOT NULL COMMENT 'Mã sản phẩm',
  `catid` int(11) NOT NULL COMMENT 'Mã loại sản phẩm',
  `name` varchar(1000) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên sản phẩm',
  `slug` varchar(1000) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Slug tên sản phẩm',
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Hình ảnh',
  `detail` mediumtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Chi tiết',
  `number` smallint(5) NOT NULL COMMENT 'Số lượng',
  `price` float(12,2) NOT NULL COMMENT 'Giá',
  `pricesale` float(12,3) NOT NULL COMMENT 'Giá khuyến mãi',
  `metakey` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Từ khóa SEO',
  `metadesc` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mô tả SEO',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày tạo',
  `created_by` int(11) NOT NULL DEFAULT '1' COMMENT 'Người tạo',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Ngày sửa',
  `updated_by` int(11) DEFAULT NULL COMMENT 'Người sửa',
  `status` int(11) NOT NULL DEFAULT '2' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vnmd_product`
--

INSERT INTO `vnmd_product` (`id`, `catid`, `name`, `slug`, `img`, `detail`, `number`, `price`, `pricesale`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 1, 'Điện thoại 01', 'dien-thoai-01', 'iphone-01.png', 'Chi tiết sản phẩm', 1, 9990000.00, 9490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-04-19 07:51:23', 1, 1),
(2, 1, 'Điện thoại 02', 'dien-thoai-02', 'iphone-01.png', 'Chi tiết sản phẩm', 1, 9990000.00, 9490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-04-19 07:51:24', 1, 1),
(3, 1, 'Điện thoại 03', 'dien-thoai-03', 'samsung-01.png', 'Chi tiết sản phẩm', 1, 9990000.00, 9490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:40:48', 1, 1),
(4, 1, 'Điện thoại 04', 'dien-thoai-04', 'samsung-01.png', 'Chi tiết sản phẩm', 1, 9990000.00, 9490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:40:49', 1, 1),
(5, 2, 'Laptop 01', 'laptop-01', 'mac-02.png', 'Chi tiết sản phẩm', 1, 29990000.00, 28490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:40:51', 1, 1),
(6, 2, 'Laptop 02', 'laptop-02', 'mac-01.png', 'Chi tiết sản phẩm', 1, 29990000.00, 28490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-04-04 05:41:57', 1, 1),
(7, 2, 'Laptop 03', 'laptop-03', 'mac-02.png', 'Chi tiết sản phẩm', 1, 29990000.00, 28490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(8, 2, 'Laptop 04', 'laptop-04', 'mac-01.png', 'Chi tiết sản phẩm', 1, 29990000.00, 28490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(9, 3, 'Thời trang nam 01', 'thoi-trang-nam-01', 'dirtycoins-01.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:17', 1, 1),
(10, 3, 'Thời trang nam 02', 'thoi-trang-nam-02', 'dirtycoins-02.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:21', 1, 1),
(11, 3, 'Thời trang nam 03', 'thoi-trang-nam-03', 'dirtycoins-03.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:24', 1, 1),
(12, 3, 'Thời trang nam 04', 'thoi-trang-nam-04', 'dirtycoins-04.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:33', 1, 1),
(13, 3, 'Thời trang nam 05', 'thoi-trang-nam-05', 'dirtycoins-02.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:35', 1, 1),
(14, 4, 'Thời trang nữ 01', 'thoi-trang-nu-01', 'dirtycoins-02.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:37', 1, 1),
(15, 4, 'Thời trang nữ 02', 'thoi-trang-nu-02', 'dirtycoins-02.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:39', 1, 1),
(16, 4, 'Thời trang nữ 03', 'thoi-trang-nu-03', 'dirtycoins-02.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:42', 1, 1),
(17, 4, 'Thời trang nữ 04', 'thoi-trang-nu-04', 'dirtycoins-02.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:44', 1, 1),
(18, 4, 'Thời trang nữ 05', 'thoi-trang-nu-05', 'aonu-01.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:46', 1, 1),
(19, 5, 'Giày 01', 'giay-01', 'giay-01.png', 'Chi tiết sản phẩm', 1, 890000.00, 849000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:48', 1, 1),
(20, 5, 'Giày 02', 'giay-02', 'giay-01.png', 'Chi tiết sản phẩm', 1, 890000.00, 849000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:52', 1, 1),
(21, 5, 'Giày 03', 'giay-03', 'giay-01.png', 'Chi tiết sản phẩm', 1, 890000.00, 849000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:01', 1, 1),
(22, 5, 'Giày 04', 'giay-04', 'giay-01.png', 'Chi tiết sản phẩm', 1, 890000.00, 849000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:05', 1, 1),
(23, 5, 'Giày 05', 'giay-05', 'giay-02.png', 'Chi tiết sản phẩm', 1, 890000.00, 849000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:07', 1, 1),
(24, 5, 'Giày 06', 'giay-06', 'giay-02.png', 'Chi tiết sản phẩm', 1, 890000.00, 849000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:09', 1, 1),
(25, 5, 'Giày 07', 'giay-07', 'giay-02.png', 'Chi tiết sản phẩm', 1, 890000.00, 849000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:11', 1, 1),
(26, 5, 'Giày 08', 'giay-08', 'giay-02.png', 'Chi tiết sản phẩm', 1, 890000.00, 849000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:13', 1, 1),
(27, 6, 'Túi xách 01', 'tui-xach-01', 'tuixach-01.png', 'Chi tiết sản phẩm', 1, 690000.00, 649000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:15', 1, 1),
(28, 6, 'Túi xách 02', 'tui-xach-02', 'tuixach-01.png', 'Chi tiết sản phẩm', 1, 690000.00, 649000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:17', 1, 1),
(29, 6, 'Túi xách 03', 'tui-xach-03', 'tuixach-01.png', 'Chi tiết sản phẩm', 1, 690000.00, 649000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:19', 1, 1),
(30, 6, 'Túi xách 04', 'tui-xach-04', 'tuixach-01.png', 'Chi tiết sản phẩm', 1, 690000.00, 649000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:22', 1, 1),
(31, 6, 'Túi xách 05', 'tui-xach-05', 'tuixach-01.png', 'Chi tiết sản phẩm', 1, 690000.00, 649000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:25', 1, 1),
(32, 6, 'Túi xách 06', 'tui-xach-06', 'tuixach-01.png', 'Chi tiết sản phẩm', 1, 690000.00, 649000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:27', 1, 1),
(33, 6, 'Túi xách 07', 'tui-xach-07', 'tuixach-01.png', 'Chi tiết sản phẩm', 1, 690000.00, 649000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:30', 1, 1),
(34, 6, 'Túi xách 08', 'tui-xach-08', 'tuixach-01.png', 'Chi tiết sản phẩm', 1, 690000.00, 649000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:32', 1, 1),
(35, 7, 'Nón 01', 'non-01', 'non-01.png', 'Chi tiết sản phẩm', 1, 290000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:34', 1, 1),
(36, 7, 'Nón 02', 'non-02', 'non-01.png', 'Chi tiết sản phẩm', 1, 290000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:36', 1, 1),
(37, 7, 'Nón 03', 'non-03', 'non-01.png', 'Chi tiết sản phẩm', 1, 290000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-04-04 04:18:30', 1, 1),
(38, 7, 'Nón 04', 'non-04', 'non-01.png', 'Chi tiết sản phẩm', 1, 290000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:38', 1, 1),
(39, 7, 'Nón 05', 'non-05', 'non-01.png', 'Chi tiết sản phẩm', 1, 290000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:40', 1, 1),
(40, 7, 'Nón 06', 'non-06', 'non-01.png', 'Chi tiết sản phẩm', 1, 290000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:42', 1, 1),
(41, 7, 'Nón 07', 'non-07', 'non-01.png', 'Chi tiết sản phẩm', 1, 290000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:45', 1, 1),
(42, 7, 'Nón 08', 'non-08', 'non-01.png', 'Chi tiết sản phẩm', 1, 290000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:47', 1, 1),
(43, 7, 'Nón 09', 'non-09', 'non-01.png', 'Chi tiết sản phẩm', 1, 290000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:50', 1, 1),
(44, 7, 'Nón 10', 'non-10', 'non-01.png', 'Chi tiết sản phẩm', 1, 290000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:52', 1, 1),
(45, 8, 'Balo 01', 'balo-01', 'balo-01.png', 'Chi tiết sản phẩm', 1, 379000.00, 349000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:54', 1, 1),
(46, 8, 'Balo 02', 'balo-02', 'balo-01.png', 'Chi tiết sản phẩm', 1, 379000.00, 349000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:56', 1, 1),
(47, 8, 'Balo 03', 'balo-03', 'balo-01.png', 'Chi tiết sản phẩm', 1, 379000.00, 349000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:59', 1, 1),
(48, 8, 'Balo 04', 'balo-04', 'balo-01.png', 'Chi tiết sản phẩm', 1, 379000.00, 349000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:43:00', 1, 1),
(49, 8, 'Balo 05', 'balo-05', 'balo-01.png', 'Chi tiết sản phẩm', 1, 379000.00, 349000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:43:02', 1, 1),
(50, 8, 'Balo 06', 'balo-06', 'balo-01.png', 'Chi tiết sản phẩm', 1, 379000.00, 349000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:43:05', 1, 1),
(51, 8, 'Balo 07', 'balo-07', 'balo-01.png', 'Chi tiết sản phẩm', 1, 379000.00, 349000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:43:08', 1, 1),
(52, 8, 'Balo 08', 'balo-08', 'balo-01.png', 'Chi tiết sản phẩm', 1, 379000.00, 349000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:43:11', 1, 1),
(53, 8, 'Balo 09', 'balo-09', 'balo-01.png', 'Chi tiết sản phẩm', 1, 379000.00, 349000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:43:14', 1, 1),
(54, 8, 'Balo 10', 'balo-10', 'balo-01.png', 'Chi tiết sản phẩm', 1, 379000.00, 349000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(55, 8, 'Balo 11', 'balo-11', 'balo-01.png', 'Chi tiết sản phẩm', 1, 379000.00, 349000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(56, 8, 'Balo 12', 'balo-12', 'balo-01.png', 'Chi tiết sản phẩm', 1, 379000.00, 349000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(57, 9, 'Phụ kiện điện tử 01', 'phu-kien-dien-tu-01', 'airpod-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(58, 9, 'Phụ kiện điện tử 02', 'phu-kien-dien-tu-02', 'airpod-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(59, 9, 'Phụ kiện điện tử 03', 'phu-kien-dien-tu-03', 'airpod-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(60, 9, 'Phụ kiện điện tử 04', 'phu-kien-dien-tu-04', 'airpod-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(61, 9, 'Phụ kiện điện tử 05', 'phu-kien-dien-tu-05', 'airpod-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(62, 9, 'Phụ kiện điện tử 06', 'phu-kien-dien-tu-06', 'magicmouse-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(63, 9, 'Phụ kiện điện tử 07', 'phu-kien-dien-tu-07', 'magicmouse-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(64, 9, 'Phụ kiện điện tử 08', 'phu-kien-dien-tu-08', 'magicmouse-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(65, 9, 'Phụ kiện điện tử 09', 'phu-kien-dien-tu-09', 'magicmouse-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(66, 9, 'Phụ kiện điện tử 10', 'phu-kien-dien-tu-10', 'magicmouse-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(67, 10, 'Phụ kiện thời trang 01', 'phu-kien-thoi-trang-01', 'daychuyen-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(68, 10, 'Phụ kiện thời trang 02', 'phu-kien-thoi-trang-02', 'dongho-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(69, 10, 'Phụ kiện thời trang 03', 'phu-kien-thoi-trang-03', 'vongtay-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(70, 10, 'Phụ kiện thời trang 04', 'phu-kien-thoi-trang-04', 'daychuyen-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(71, 10, 'Phụ kiện thời trang 05', 'phu-kien-thoi-trang-05', 'daychuyen-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(72, 10, 'Phụ kiện thời trang 06', 'phu-kien-thoi-trang-06', 'dongho-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(73, 10, 'Phụ kiện thời trang 07', 'phu-kien-thoi-trang-07', 'dongho-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(74, 10, 'Phụ kiện thời trang 08', 'phu-kien-thoi-trang-08', 'vongtay-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(75, 10, 'Phụ kiện thời trang 09', 'phu-kien-thoi-trang-09', 'vongtay-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(76, 10, 'Phụ kiện thời trang 10', 'phu-kien-thoi-trang-10', 'vongtay-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(77, 11, 'Điện thoại Android 01', 'dien-thoai-android-01', '1.jpg', 'Chi tiết sản phẩm', 1, 6790000.00, 6490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(78, 11, 'Điện thoại Android 02', 'dien-thoai-android-02', '2.jpg', 'Chi tiết sản phẩm', 1, 6790000.00, 6490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(79, 32, 'dsadsa', 'dsadsa', NULL, 'dsadas', 2, 70000.00, 50000.000, 'dsadas', 'dsadas', '2022-04-05 08:30:40', 1, '2022-04-12 07:59:13', 1, 0),
(80, 32, 'dsadsa', 'dsadsa', NULL, 'dsadas', 2, 70000.00, 50000.000, 'dsadas', 'dsadas', '2022-04-05 08:31:14', 1, '2022-04-12 07:59:12', 1, 0),
(81, 32, 'dsadsa', 'dsadsa', NULL, 'dsadas', 2, 70000.00, 50000.000, 'dsadas', 'dsadas', '2022-04-05 08:31:41', 1, '2022-04-12 07:59:11', 1, 0),
(82, 32, 'dsadsa', 'dsadsa', 'hinh', 'dsadas', 2, 70000.00, 50000.000, 'dsadas', 'dsadas', '2022-04-05 08:34:17', 1, '2022-04-12 07:59:11', 1, 0),
(83, 32, 'dsadsa', 'dsadsa', 'hinh', 'dsadas', 2, 70000.00, 50000.000, 'dsadas', 'dsadas', '2022-04-05 08:35:07', 1, '2022-04-12 07:59:11', 1, 0),
(84, 32, 'dsadsa', 'dsadsa', 'extension.png', 'dsadas', 2, 70000.00, 50000.000, 'dsadas', 'dsadas', '2022-04-05 08:38:23', 1, '2022-04-12 07:59:09', 1, 0),
(85, 32, 'dsadsa', 'dsadsa', 'extension.png', 'dsadas', 2, 70000.00, 50000.000, 'dsadas', 'dsadas', '2022-04-05 08:38:28', 1, '2022-04-12 07:59:09', 1, 0),
(86, 32, 'dsadsa', 'dsadsa', 'extension.png', 'dsadas', 2, 70000.00, 50000.000, 'dsadas', 'dsadas', '2022-04-05 08:39:24', 1, '2022-04-05 08:39:30', 1, 0),
(87, 3, 'Iphone 13promax', 'iphone-13promax', 'extension.png', 'Iphone 13promax', 1, 50000.00, 50000.000, 'Iphone 13promax', 'Iphone 13promax', '2022-04-12 07:59:05', 1, '2022-04-18 10:42:39', 1, 0),
(88, 5, 'Laptop moi nhap 2022dsadsadas', 'laptop-moi-nhap-2022dsadsadas', 'quy uoc.png', 'Laptop moi nhap 2022dsadsadsa', 1, 90000.00, 70000.000, 'Laptop moi nhap 2022dsadsadas', 'Laptop moi nhap 2022dsadsadas', '2022-04-12 08:00:16', 1, '2022-06-04 06:11:49', 1, 2),
(89, 33, 'Laptop moi nhap 2023 testtest', 'laptop-moi-nhap-2023-testtest', 'iphone-01.png', 'dsa', 1, 50000.00, 50000.000, 'dsa', 'dsa', '2022-04-19 08:15:15', 1, '2022-06-04 06:19:45', 1, 2),
(90, 1, 'Điện thoại 05', 'dien-thoai-05', 'iphone-01.png', 'Chi tiết sản phẩm', 1, 9990000.00, 9490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-10 09:51:57', 1, 1),
(91, 1, 'Điện thoại 06', 'dien-thoai-06', 'iphone-01.png', 'Chi tiết sản phẩm', 1, 9990000.00, 9490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-04-19 07:51:24', 1, 1),
(92, 1, 'Điện thoại 07', 'dien-thoai-07', 'iphone-01.png', 'Chi tiết sản phẩm', 1, 9990000.00, 9490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:40:48', 1, 1),
(93, 1, 'Điện thoại 08', 'dien-thoai-08', 'iphone-01.png', 'Chi tiết sản phẩm', 1, 9990000.00, 9490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:40:49', 1, 1),
(94, 1, 'Điện thoại 09', 'dien-thoai-09', 'samsung-01.png', 'Chi tiết sản phẩm', 1, 9990000.00, 9490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-04-19 07:51:23', 1, 1),
(95, 1, 'Điện thoại 10', 'dien-thoai-10', 'samsung-01.png', 'Chi tiết sản phẩm', 1, 9990000.00, 9490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-04-19 07:51:24', 1, 1),
(96, 1, 'Điện thoại 11', 'dien-thoai-11', 'samsung-01.png', 'Chi tiết sản phẩm', 1, 9990000.00, 9490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:40:48', 1, 1),
(97, 1, 'Điện thoại 12', 'dien-thoai-12', 'samsung-01.png', 'Chi tiết sản phẩm', 1, 9990000.00, 9490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:40:49', 1, 1),
(98, 1, 'Điện thoại 13', 'dien-thoai-13', 'samsung-01.png', 'Chi tiết sản phẩm', 1, 9990000.00, 9490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-04-19 07:51:23', 1, 1),
(99, 1, 'Điện thoại 14', 'dien-thoai-14', 'samsung-01.png', 'Chi tiết sản phẩm', 1, 9990000.00, 9490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-04-19 07:51:24', 1, 1),
(100, 1, 'Điện thoại 15', 'dien-thoai-15', 'samsung-01.png', 'Chi tiết sản phẩm', 1, 9990000.00, 9490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:40:48', 1, 1),
(101, 1, 'Điện thoại 16', 'dien-thoai-16', 'samsung-01.png', 'Chi tiết sản phẩm', 1, 9990000.00, 9490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:40:49', 1, 1),
(102, 1, 'Điện thoại 17', 'dien-thoai-17', 'samsung-01.png', 'Chi tiết sản phẩm', 1, 9990000.00, 9490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-04-19 07:51:23', 1, 1),
(103, 1, 'Điện thoại 18', 'dien-thoai-18', 'samsung-01.png', 'Chi tiết sản phẩm', 1, 9990000.00, 9490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-04-19 07:51:24', 1, 1),
(104, 1, 'Điện thoại 19', 'dien-thoai-19', 'iphone-01.png', 'Chi tiết sản phẩm', 1, 9990000.00, 9490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:40:48', 1, 1),
(105, 1, 'Điện thoại 20', 'dien-thoai-20', 'iphone-01.png', 'Chi tiết sản phẩm', 1, 9990000.00, 9490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:40:49', 1, 1),
(106, 2, 'Laptop 05', 'laptop-05', 'mac-02.png', 'Chi tiết sản phẩm', 1, 29990000.00, 28490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:40:51', 1, 1),
(107, 2, 'Laptop 06', 'laptop-06', 'mac-01.png', 'Chi tiết sản phẩm', 1, 29990000.00, 28490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-04-04 05:41:57', 1, 1),
(108, 2, 'Laptop 07', 'laptop-07', 'mac-02.png', 'Chi tiết sản phẩm', 1, 29990000.00, 28490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(109, 2, 'Laptop 08', 'laptop-08', 'mac-01.png', 'Chi tiết sản phẩm', 1, 29990000.00, 28490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(110, 2, 'Laptop 09', 'laptop-09', 'mac-02.png', 'Chi tiết sản phẩm', 1, 29990000.00, 28490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:40:51', 1, 1),
(111, 2, 'Laptop 10', 'laptop-10', 'mac-01.png', 'Chi tiết sản phẩm', 1, 29990000.00, 28490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-04-04 05:41:57', 1, 1),
(112, 2, 'Laptop 11', 'laptop-11', 'mac-02.png', 'Chi tiết sản phẩm', 1, 29990000.00, 28490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(113, 2, 'Laptop 12', 'laptop-12', 'mac-01.png', 'Chi tiết sản phẩm', 1, 29990000.00, 28490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(114, 2, 'Laptop 13', 'laptop-13', 'mac-02.png', 'Chi tiết sản phẩm', 1, 29990000.00, 28490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:40:51', 1, 1),
(115, 2, 'Laptop 14', 'laptop-14', 'mac-01.png', 'Chi tiết sản phẩm', 1, 29990000.00, 28490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-04-04 05:41:57', 1, 1),
(116, 2, 'Laptop 15', 'laptop-15', 'mac-02.png', 'Chi tiết sản phẩm', 1, 29990000.00, 28490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(117, 2, 'Laptop 16', 'laptop-16', 'mac-01.png', 'Chi tiết sản phẩm', 1, 29990000.00, 28490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(118, 2, 'Laptop 17', 'laptop-17', 'mac-01.png', 'Chi tiết sản phẩm', 1, 29990000.00, 28490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(119, 2, 'Laptop 18', 'laptop-18', 'mac-02.png', 'Chi tiết sản phẩm', 1, 29990000.00, 28490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:40:51', 1, 1),
(120, 2, 'Laptop 19', 'laptop-19', 'mac-01.png', 'Chi tiết sản phẩm', 1, 29990000.00, 28490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-04-04 05:41:57', 1, 1),
(121, 2, 'Laptop 20', 'laptop-20', 'mac-02.png', 'Chi tiết sản phẩm', 1, 29990000.00, 28490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(122, 2, 'Laptop 21', 'laptop-21', 'mac-01.png', 'Chi tiết sản phẩm', 1, 29990000.00, 28490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(123, 2, 'Laptop 22', 'laptop-22', 'mac-02.png', 'Chi tiết sản phẩm', 1, 29990000.00, 28490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:40:51', 1, 1),
(124, 2, 'Laptop 23', 'laptop-23', 'mac-01.png', 'Chi tiết sản phẩm', 1, 29990000.00, 28490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-04-04 05:41:57', 1, 1),
(125, 2, 'Laptop 24', 'laptop-24', 'mac-02.png', 'Chi tiết sản phẩm', 1, 29990000.00, 28490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(126, 2, 'Laptop 25', 'laptop-25', 'mac-01.png', 'Chi tiết sản phẩm', 1, 29990000.00, 28490000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(127, 3, 'Thời trang nam 06', 'thoi-trang-nam-06', 'dirtycoins-04.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:17', 1, 1),
(128, 3, 'Thời trang nam 07', 'thoi-trang-nam-07', 'dirtycoins-04.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:21', 1, 1),
(129, 3, 'Thời trang nam 08', 'thoi-trang-nam-08', 'dirtycoins-04.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:24', 1, 1),
(130, 3, 'Thời trang nam 09', 'thoi-trang-nam-09', 'dirtycoins-04.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:33', 1, 1),
(131, 3, 'Thời trang nam 10', 'thoi-trang-nam-10', 'dirtycoins-04.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:35', 1, 1),
(132, 3, 'Thời trang nam 11', 'thoi-trang-nam-11', 'dirtycoins-04.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:17', 1, 1),
(133, 3, 'Thời trang nam 12', 'thoi-trang-nam-12', 'aokhoac-01.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:21', 1, 1),
(134, 3, 'Thời trang nam 13', 'thoi-trang-nam-13', 'aokhoac-01.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:24', 1, 1),
(135, 3, 'Thời trang nam 14', 'thoi-trang-nam-14', 'aokhoac-01.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:33', 1, 1),
(136, 3, 'Thời trang nam 15', 'thoi-trang-nam-15', 'aokhoac-01.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:35', 1, 1),
(137, 3, 'Thời trang nam 16', 'thoi-trang-nam-16', 'aokhoac-01.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:17', 1, 1),
(138, 3, 'Thời trang nam 17', 'thoi-trang-nam-17', 'aokhoac-01.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:21', 1, 1),
(139, 3, 'Thời trang nam 18', 'thoi-trang-nam-18', 'aokhoac-01.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:24', 1, 1),
(140, 3, 'Thời trang nam 19', 'thoi-trang-nam-19', 'aokhoac-01.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:33', 1, 1),
(141, 3, 'Thời trang nam 20', 'thoi-trang-nam-20', 'aokhoac-01.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:35', 1, 1),
(142, 3, 'Thời trang nam 21', 'thoi-trang-nam-21', 'aokhoac-01.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:35', 1, 1),
(143, 3, 'Thời trang nam 22', 'thoi-trang-nam-22', 'dirtycoins-01.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:17', 1, 1),
(144, 3, 'Thời trang nam 23', 'thoi-trang-nam-23', 'aokhoac-01.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:21', 1, 1),
(145, 3, 'Thời trang nam 24', 'thoi-trang-nam-24', 'dirtycoins-03.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:24', 1, 1),
(146, 3, 'Thời trang nam 25', 'thoi-trang-nam-25', 'dirtycoins-03.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:33', 1, 1),
(147, 3, 'Thời trang nam 26', 'thoi-trang-nam-26', 'dirtycoins-03.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:35', 1, 1),
(148, 3, 'Thời trang nam 27', 'thoi-trang-nam-27', 'dirtycoins-02.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:17', 1, 1),
(149, 3, 'Thời trang nam 28', 'thoi-trang-nam-28', 'dirtycoins-02.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:21', 1, 1),
(150, 3, 'Thời trang nam 29', 'thoi-trang-nam-29', 'dirtycoins-01.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:24', 1, 1),
(151, 3, 'Thời trang nam 30', 'thoi-trang-nam-30', 'dirtycoins-01.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:33', 1, 1),
(152, 3, 'Thời trang nam 31', 'thoi-trang-nam-31', 'dirtycoins-01.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:35', 1, 1),
(153, 4, 'Thời trang nữ 06', 'thoi-trang-nu-06', 'aonu-01.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:37', 1, 1),
(154, 4, 'Thời trang nữ 07', 'thoi-trang-nu-07', 'aonu-01.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:39', 1, 1),
(155, 4, 'Thời trang nữ 08', 'thoi-trang-nu-08', 'aonu-01.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:42', 1, 1),
(156, 4, 'Thời trang nữ 09', 'thoi-trang-nu-09', 'aonu-02.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:44', 1, 1),
(157, 4, 'Thời trang nữ 10', 'thoi-trang-nu-10', 'aonu-02.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:46', 1, 1),
(158, 4, 'Thời trang nữ 11', 'thoi-trang-nu-11', 'aonu-03.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:37', 1, 1),
(159, 4, 'Thời trang nữ 12', 'thoi-trang-nu-12', 'aonu-03.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:39', 1, 1),
(160, 4, 'Thời trang nữ 13', 'thoi-trang-nu-13', 'aonu-03.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:42', 1, 1),
(161, 4, 'Thời trang nữ 14', 'thoi-trang-nu-14', 'aonu-03.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:44', 1, 1),
(162, 4, 'Thời trang nữ 15', 'thoi-trang-nu-15', 'aonu-01.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:46', 1, 1),
(163, 4, 'Thời trang nữ 16', 'thoi-trang-nu-16', 'aonu-01.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:37', 1, 1),
(164, 4, 'Thời trang nữ 17', 'thoi-trang-nu-17', 'aonu-02.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:39', 1, 1),
(165, 4, 'Thời trang nữ 18', 'thoi-trang-nu-18', 'aonu-02.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:42', 1, 1),
(166, 4, 'Thời trang nữ 19', 'thoi-trang-nu-19', 'aonu-01.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:44', 1, 1),
(167, 4, 'Thời trang nữ 20', 'thoi-trang-nu-20', 'aonu-03.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:46', 1, 1),
(168, 4, 'Thời trang nữ 21', 'thoi-trang-nu-21', 'aonu-03.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:44', 1, 1),
(169, 4, 'Thời trang nữ 22', 'thoi-trang-nu-22', 'aonu-02.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:46', 1, 1),
(170, 4, 'Thời trang nữ 23', 'thoi-trang-nu-23', 'aonu-02.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:37', 1, 1),
(171, 4, 'Thời trang nữ 24', 'thoi-trang-nu-24', 'aonu-02.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:39', 1, 1),
(172, 4, 'Thời trang nữ 25', 'thoi-trang-nu-25', 'aonu-02.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:42', 1, 1),
(173, 4, 'Thời trang nữ 26', 'thoi-trang-nu-26', 'aonu-01.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:44', 1, 1),
(174, 4, 'Thời trang nữ 27', 'thoi-trang-nu-27', 'aonu-01.png', 'Chi tiết sản phẩm', 1, 249000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:46', 1, 1),
(175, 5, 'Giày 09', 'giay-09', 'giay-01.png', 'Chi tiết sản phẩm', 1, 890000.00, 849000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:48', 1, 1),
(176, 5, 'Giày 10', 'giay-10', 'giay-01.png', 'Chi tiết sản phẩm', 1, 890000.00, 849000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:52', 1, 1),
(177, 5, 'Giày 11', 'giay-11', 'giay-01.png', 'Chi tiết sản phẩm', 1, 890000.00, 849000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:01', 1, 1),
(178, 5, 'Giày 12', 'giay-12', 'giay-01.png', 'Chi tiết sản phẩm', 1, 890000.00, 849000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:05', 1, 1),
(179, 5, 'Giày 13', 'giay-13', 'giay-01.png', 'Chi tiết sản phẩm', 1, 890000.00, 849000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:07', 1, 1),
(180, 5, 'Giày 14', 'giay-14', 'giay-01.png', 'Chi tiết sản phẩm', 1, 890000.00, 849000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:09', 1, 1),
(181, 5, 'Giày 15', 'giay-15', 'giay-01.png', 'Chi tiết sản phẩm', 1, 890000.00, 849000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:11', 1, 1),
(182, 5, 'Giày 16', 'giay-16', 'giay-01.png', 'Chi tiết sản phẩm', 1, 890000.00, 849000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:13', 1, 1),
(183, 5, 'Giày 17', 'giay-17', 'giay-01.png', 'Chi tiết sản phẩm', 1, 890000.00, 849000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:48', 1, 1),
(184, 5, 'Giày 18', 'giay-18', 'giay-01.png', 'Chi tiết sản phẩm', 1, 890000.00, 849000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:41:52', 1, 1),
(185, 5, 'Giày 19', 'giay-19', 'giay-02.png', 'Chi tiết sản phẩm', 1, 890000.00, 849000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:01', 1, 1),
(186, 5, 'Giày 20', 'giay-20', 'giay-02.png', 'Chi tiết sản phẩm', 1, 890000.00, 849000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:05', 1, 1),
(187, 5, 'Giày 21', 'giay-21', 'giay-02.png', 'Chi tiết sản phẩm', 1, 890000.00, 849000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:07', 1, 1),
(188, 5, 'Giày 22', 'giay-22', 'giay-02.png', 'Chi tiết sản phẩm', 1, 890000.00, 849000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:09', 1, 1),
(189, 5, 'Giày 23', 'giay-23', 'giay-02.png', 'Chi tiết sản phẩm', 1, 890000.00, 849000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:11', 1, 1),
(190, 5, 'Giày 24', 'giay-24', 'giay-02.png', 'Chi tiết sản phẩm', 1, 890000.00, 849000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:13', 1, 1),
(191, 6, 'Túi xách 09', 'tui-xach-09', 'tuixach-01.png', 'Chi tiết sản phẩm', 1, 690000.00, 649000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:15', 1, 1),
(192, 6, 'Túi xách 10', 'tui-xach-10', 'tuixach-01.png', 'Chi tiết sản phẩm', 1, 690000.00, 649000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:17', 1, 1),
(193, 6, 'Túi xách 11', 'tui-xach-11', 'tuixach-01.png', 'Chi tiết sản phẩm', 1, 690000.00, 649000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:19', 1, 1),
(194, 6, 'Túi xách 12', 'tui-xach-12', 'tuixach-01.png', 'Chi tiết sản phẩm', 1, 690000.00, 649000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:22', 1, 1),
(195, 6, 'Túi xách 13', 'tui-xach-13', 'tuixach-01.png', 'Chi tiết sản phẩm', 1, 690000.00, 649000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:25', 1, 1),
(196, 6, 'Túi xách 14', 'tui-xach-14', 'tuixach-01.png', 'Chi tiết sản phẩm', 1, 690000.00, 649000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:27', 1, 1),
(197, 6, 'Túi xách 15', 'tui-xach-15', 'tuixach-01.png', 'Chi tiết sản phẩm', 1, 690000.00, 649000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:30', 1, 1),
(198, 6, 'Túi xách 16', 'tui-xach-16', 'tuixach-01.png', 'Chi tiết sản phẩm', 1, 690000.00, 649000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:32', 1, 1),
(199, 6, 'Túi xách 17', 'tui-xach-17', 'tuixach-01.png', 'Chi tiết sản phẩm', 1, 690000.00, 649000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:15', 1, 1),
(200, 6, 'Túi xách 18', 'tui-xach-18', 'tuixach-01.png', 'Chi tiết sản phẩm', 1, 690000.00, 649000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:17', 1, 1),
(201, 6, 'Túi xách 19', 'tui-xach-19', 'tuixach-01.png', 'Chi tiết sản phẩm', 1, 690000.00, 649000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:19', 1, 1),
(202, 6, 'Túi xách 20', 'tui-xach-20', 'tuixach-01.png', 'Chi tiết sản phẩm', 1, 690000.00, 649000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:22', 1, 1),
(203, 6, 'Túi xách 21', 'tui-xach-21', 'tuixach-01.png', 'Chi tiết sản phẩm', 1, 690000.00, 649000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:25', 1, 1),
(204, 6, 'Túi xách 22', 'tui-xach-22', 'tuixach-01.png', 'Chi tiết sản phẩm', 1, 690000.00, 649000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:27', 1, 1),
(205, 6, 'Túi xách 23', 'tui-xach-23', 'tuixach-01.png', 'Chi tiết sản phẩm', 1, 690000.00, 649000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:30', 1, 1),
(206, 6, 'Túi xách 24', 'tui-xach-24', 'tuixach-01.png', 'Chi tiết sản phẩm', 1, 690000.00, 649000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:32', 1, 1),
(207, 7, 'Nón 11', 'non-11', 'non-01.png', 'Chi tiết sản phẩm', 1, 290000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:34', 1, 1),
(208, 7, 'Nón 12', 'non-12', 'non-01.png', 'Chi tiết sản phẩm', 1, 290000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:36', 1, 1),
(209, 7, 'Nón 13', 'non-13', 'non-01.png', 'Chi tiết sản phẩm', 1, 290000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-04-04 04:18:30', 1, 1),
(210, 7, 'Nón 14', 'non-14', 'non-01.png', 'Chi tiết sản phẩm', 1, 290000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:38', 1, 1),
(211, 7, 'Nón 15', 'non-15', 'non-01.png', 'Chi tiết sản phẩm', 1, 290000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:40', 1, 1),
(212, 7, 'Nón 16', 'non-16', 'non-01.png', 'Chi tiết sản phẩm', 1, 290000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:42', 1, 1),
(213, 7, 'Nón 17', 'non-17', 'non-01.png', 'Chi tiết sản phẩm', 1, 290000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:45', 1, 1),
(214, 7, 'Nón 18', 'non-18', 'non-01.png', 'Chi tiết sản phẩm', 1, 290000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:47', 1, 1),
(215, 7, 'Nón 19', 'non-19', 'non-01.png', 'Chi tiết sản phẩm', 1, 290000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:50', 1, 1),
(216, 7, 'Nón 20', 'non-20', 'non-01.png', 'Chi tiết sản phẩm', 1, 290000.00, 239000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:52', 1, 1),
(217, 8, 'Balo 13', 'balo-13', 'balo-01.png', 'Chi tiết sản phẩm', 1, 379000.00, 349000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:54', 1, 1),
(218, 8, 'Balo 14', 'balo-14', 'balo-01.png', 'Chi tiết sản phẩm', 1, 379000.00, 349000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:56', 1, 1),
(219, 8, 'Balo 15', 'balo-15', 'balo-01.png', 'Chi tiết sản phẩm', 1, 379000.00, 349000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:42:59', 1, 1),
(220, 8, 'Balo 16', 'balo-16', 'balo-01.png', 'Chi tiết sản phẩm', 1, 379000.00, 349000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:43:00', 1, 1),
(221, 8, 'Balo 17', 'balo-17', 'balo-01.png', 'Chi tiết sản phẩm', 1, 379000.00, 349000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:43:02', 1, 1),
(222, 8, 'Balo 18', 'balo-18', 'balo-01.png', 'Chi tiết sản phẩm', 1, 379000.00, 349000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:43:05', 1, 1),
(223, 8, 'Balo 19', 'balo-19', 'balo-01.png', 'Chi tiết sản phẩm', 1, 379000.00, 349000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:43:08', 1, 1),
(224, 8, 'Balo 20', 'balo-20', 'balo-01.png', 'Chi tiết sản phẩm', 1, 379000.00, 349000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:43:11', 1, 1),
(225, 8, 'Balo 21', 'balo-21', 'balo-01.png', 'Chi tiết sản phẩm', 1, 379000.00, 349000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-05-08 08:43:14', 1, 1),
(226, 8, 'Balo 22', 'balo-22', 'balo-01.png', 'Chi tiết sản phẩm', 1, 379000.00, 349000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(227, 9, 'Phụ kiện điện tử 11', 'phu-kien-dien-tu-11', 'airpod-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(228, 9, 'Phụ kiện điện tử 12', 'phu-kien-dien-tu-12', 'airpod-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(229, 9, 'Phụ kiện điện tử 13', 'phu-kien-dien-tu-13', 'airpod-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(230, 9, 'Phụ kiện điện tử 14', 'phu-kien-dien-tu-14', 'airpod-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(231, 9, 'Phụ kiện điện tử 15', 'phu-kien-dien-tu-15', 'airpod-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(232, 9, 'Phụ kiện điện tử 16', 'phu-kien-dien-tu-16', 'airpod-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(233, 9, 'Phụ kiện điện tử 17', 'phu-kien-dien-tu-17', 'airpod-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(234, 9, 'Phụ kiện điện tử 18', 'phu-kien-dien-tu-18', 'magicmouse-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(235, 9, 'Phụ kiện điện tử 19', 'phu-kien-dien-tu-19', 'magicmouse-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(236, 9, 'Phụ kiện điện tử 20', 'phu-kien-dien-tu-20', 'magicmouse-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(237, 10, 'Phụ kiện thời trang 11', 'phu-kien-thoi-trang-11', 'daychuyen-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(238, 10, 'Phụ kiện thời trang 12', 'phu-kien-thoi-trang-12', 'daychuyen-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(239, 10, 'Phụ kiện thời trang 13', 'phu-kien-thoi-trang-13', 'dongho-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(240, 10, 'Phụ kiện thời trang 14', 'phu-kien-thoi-trang-14', 'dongho-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(241, 10, 'Phụ kiện thời trang 15', 'phu-kien-thoi-trang-15', 'dongho-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(242, 10, 'Phụ kiện thời trang 16', 'phu-kien-thoi-trang-16', 'dongho-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(243, 10, 'Phụ kiện thời trang 17', 'phu-kien-thoi-trang-17', 'vongtay-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(244, 10, 'Phụ kiện thời trang 18', 'phu-kien-thoi-trang-18', 'vongtay-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(245, 10, 'Phụ kiện thời trang 19', 'phu-kien-thoi-trang-19', 'vongtay-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(246, 10, 'Phụ kiện thời trang 20', 'phu-kien-thoi-trang-20', 'vongtay-01.png', 'Chi tiết sản phẩm', 1, 179000.00, 149000.000, 'Từ khóa SEO', 'Mô tả SEO', '2022-03-27 13:10:10', 1, '2022-03-27 13:10:10', 1, 1),
(247, 2, 'Laptop test 1', 'laptop-test-1', 'mac-01.png', 'Laptop test 1', 1, 50000.00, 50000.000, 'Laptop test 1', 'Laptop test 1', '2022-06-04 06:20:08', 1, '2022-06-04 06:20:23', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vnmd_slider`
--

CREATE TABLE `vnmd_slider` (
  `id` int(11) NOT NULL COMMENT 'Mã Slider	',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên Slider	',
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Liên kết	',
  `position` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Vị trí	',
  `img` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Hình ảnh	',
  `orders` int(11) NOT NULL COMMENT 'Thứ tự	',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày tạo	',
  `created_by` int(11) NOT NULL DEFAULT '1' COMMENT 'Người tạo	',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày sửa	',
  `updated_by` int(11) DEFAULT '1' COMMENT 'Người sửa	',
  `status` int(11) NOT NULL DEFAULT '2' COMMENT 'Trạng thái	'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vnmd_slider`
--

INSERT INTO `vnmd_slider` (`id`, `name`, `link`, `position`, `img`, `orders`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Khuyễn mãi hè 2020', 'http://domain.com/index.php?option=page&cat=khuyen-mai-he', 'slideshow', 'slide-img1.png', 1, '2022-04-13 10:12:26', 1, '2022-06-02 07:04:27', 1, 1),
(2, 'Khuyễn mãi mùa khai giảng', 'http://domain.com/index.php?option=page&cat=khuyen-mai-mua-khai-giang', 'slideshow', 'slide-img2.png', 1, '2022-04-13 10:12:26', 1, '2022-04-13 10:12:26', 1, 1),
(3, 'Khuyễn mãi giáng sinh', 'http://domain.com/index.php?option=page&cat=khuyen-giang-sinh', 'slideshow', 'slide-img3.png', 1, '2022-04-13 10:12:26', 1, '2022-04-13 10:12:26', 1, 1),
(4, 'Vận chuyển 1 test', 'http://domain.com/index.php?option=page&cat=khuyen-mai-he-test', '2', 'slide-img3.png', 1, '2022-06-04 04:53:09', 1, '2022-06-04 04:58:07', 1, 2),
(7, 'Quảng cáo test', 'http://domain.com/index.php?option=page&cat=khuyen-mai-he-test', '1', 'slide-img1.png', 1, '2022-06-04 05:27:42', 1, '2022-06-04 05:27:42', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vnmd_topic`
--

CREATE TABLE `vnmd_topic` (
  `id` int(11) NOT NULL COMMENT 'Mã chủ đề',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên chủ đề',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Slug tên chủ đề	',
  `parentid` int(11) NOT NULL DEFAULT '0' COMMENT 'Mã cấp cha',
  `orders` int(11) NOT NULL DEFAULT '1' COMMENT 'Sắp xếp',
  `metakey` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Từ khóa SEO',
  `metadesc` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mô tả SEO	',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày tạo',
  `created_by` int(11) NOT NULL DEFAULT '1' COMMENT 'Người tạo',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày sửa',
  `updated_by` int(11) DEFAULT '1' COMMENT 'Người sửa',
  `status` int(11) NOT NULL DEFAULT '2' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vnmd_topic`
--

INSERT INTO `vnmd_topic` (`id`, `name`, `slug`, `parentid`, `orders`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Tin tức', 'tin-tuc', 0, 1, 'Từ khoá SEO', 'Mô tả SEO', '2022-04-21 07:02:47', 1, '2022-04-21 07:02:47', 1, 1),
(2, 'Dịch vụ', 'dich-vu', 0, 2, 'Từ khoé SEO', 'Mô tả SEO', '2022-04-21 07:02:47', 1, '2022-04-21 07:02:47', 1, 1),
(9, 'Vận chuyển 1 test', 'van-chuyen-1-test', 1, 1, 'Vận chuyển 1 test', 'Vận chuyển 1 test', '2022-04-21 07:06:08', 1, '2022-04-26 05:56:06', 1, 2),
(10, 'Dịch vụ test update', 'dich-vu-test-update', 9, 1, 'Dịch vụ test update', 'Dịch vụ test update', '2022-05-03 01:31:56', 1, '2022-06-04 06:10:36', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vnmd_user`
--

CREATE TABLE `vnmd_user` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã tài khoản',
  `fullname` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Họ và tên',
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên đăng nhâp',
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mật khẩu',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Email',
  `gender` tinyint(3) UNSIGNED NOT NULL COMMENT 'Giới tính',
  `phone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Điện thoại',
  `img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Hình',
  `roles` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quyền truy cập',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày tạo',
  `created_by` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Người tạo',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày sửa',
  `updated_by` tinyint(3) UNSIGNED DEFAULT '1' COMMENT 'Người sửa',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '2' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vnmd_user`
--

INSERT INTO `vnmd_user` (`id`, `fullname`, `username`, `password`, `email`, `gender`, `phone`, `img`, `roles`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Quản trị', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'admin@gmail.com', 1, '098765456', 'admin.jpg', 1, '2022-04-04 03:57:20', 1, '2022-04-04 03:57:20', 1, 1),
(2, 'Khách hàng', 'khachhang', '601f1889667efaebb33b8c12572835da3f027f78', 'khachhang@gmail.com', 1, '098765444', 'khachhang.jpg', 1, '2022-04-04 03:57:20', 1, '2022-04-04 03:57:20', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vnmd_category`
--
ALTER TABLE `vnmd_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vnmd_contact`
--
ALTER TABLE `vnmd_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vnmd_menu`
--
ALTER TABLE `vnmd_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vnmd_order`
--
ALTER TABLE `vnmd_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vnmd_orderdetail`
--
ALTER TABLE `vnmd_orderdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vnmd_post`
--
ALTER TABLE `vnmd_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vnmd_product`
--
ALTER TABLE `vnmd_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vnmd_slider`
--
ALTER TABLE `vnmd_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vnmd_topic`
--
ALTER TABLE `vnmd_topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vnmd_user`
--
ALTER TABLE `vnmd_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vnmd_category`
--
ALTER TABLE `vnmd_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã loại', AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `vnmd_contact`
--
ALTER TABLE `vnmd_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã liên hệ	', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vnmd_menu`
--
ALTER TABLE `vnmd_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `vnmd_order`
--
ALTER TABLE `vnmd_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã đơn hàng	', AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vnmd_orderdetail`
--
ALTER TABLE `vnmd_orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã CT Đơn hàng	';

--
-- AUTO_INCREMENT for table `vnmd_post`
--
ALTER TABLE `vnmd_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã bài viết	', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vnmd_product`
--
ALTER TABLE `vnmd_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã sản phẩm', AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `vnmd_slider`
--
ALTER TABLE `vnmd_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã Slider	', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vnmd_topic`
--
ALTER TABLE `vnmd_topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã chủ đề', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vnmd_user`
--
ALTER TABLE `vnmd_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã tài khoản', AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
