-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2018 at 11:26 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suportivo`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `nama_category` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `nama_category`) VALUES
(1, 'Elektronik'),
(2, 'Perabotan');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id` int(11) NOT NULL,
  `nama_dokumen` varchar(45) DEFAULT NULL,
  `versi` varchar(45) DEFAULT NULL,
  `waktu_update` date DEFAULT NULL,
  `keterangan` text,
  `id_sub_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id`, `nama_dokumen`, `versi`, `waktu_update`, `keterangan`, `id_sub_category`) VALUES
(1, 'bahasa-pemrograman-C++.pdf', '10', '2018-02-15', 'Cobe', 1),
(3, 'Brosur-Haliza-10.pdf', '10', '2018-02-22', 'Haliza', 1);

-- --------------------------------------------------------

--
-- Table structure for table `produk_media`
--

CREATE TABLE `produk_media` (
  `id_media` int(11) NOT NULL,
  `media` varchar(200) DEFAULT NULL,
  `deskripsi` longtext,
  `tipe_file` varchar(20) DEFAULT NULL,
  `id_sub_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `produk_media`
--

INSERT INTO `produk_media` (`id_media`, `media`, `deskripsi`, `tipe_file`, `id_sub_category`) VALUES
(5, 'haliza-small-1.jpg', 'Contoh gambar percobaan', 'image/jpeg', 1),
(9, 'Cloud_Computing1.png', 'Isi', 'image/png', 1),
(11, 'Maintenance.png', 'Co', 'image/png', 1),
(12, 'signIn.png', 'DIh', 'image/png', 1),
(13, 'Script.png', '2', 'image/png', 1),
(15, 'a2bc600cf7d309b3319e45bd93c0ae3e.jpg', 'Haluza', 'image/jpeg', 1),
(16, 'images_(3).jpg', 'deh', 'image/jpeg', 1),
(17, 'images_(4).jpg', 'Haliza2', 'image/jpeg', 1),
(18, 'logodaunbiru.jpg', 'logo', 'image/jpeg', 1),
(19, 'newbanner.png', '<p><strong>Ini contoh penjelasan Gambar</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Memakai </strong></li>\r\n</ul>\r\n\r\n<ol>\r\n	<li><em>CkEditor</em></li>\r\n</ol>\r\n', 'image/png', 1),
(20, 'U_R_-_TAEYEON_NIGHTCORE.mp4', '<p>Contoh media:</p>\r\n\r\n<ul>\r\n	<li>Video</li>\r\n</ul>\r\n', 'video/mp4', 1),
(21, '02__Get_Shocked_To_See_How_Small_Our_Earth_Is_-.mp4', '', 'video/mp4', 2);

-- --------------------------------------------------------

--
-- Table structure for table `produk_software`
--

CREATE TABLE `produk_software` (
  `id_software` int(11) NOT NULL,
  `nama_software` varchar(45) DEFAULT NULL,
  `versi` varchar(45) DEFAULT NULL,
  `waktu_update` date DEFAULT NULL,
  `keterangan` text,
  `id_sub_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `produk_software`
--

INSERT INTO `produk_software` (`id_software`, `nama_software`, `versi`, `waktu_update`, `keterangan`, `id_sub_category`) VALUES
(2, 'FeedingFrenzy2Setup.exe', '101', '2018-02-27', '<ul>\r\n	<li>Isi Deskripsi Software</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Coba dengan Ckeditor</li>\r\n</ol>\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `spek2`
--

CREATE TABLE `spek2` (
  `idSpek2` int(11) NOT NULL,
  `num` int(4) NOT NULL,
  `nama_spek` varchar(45) DEFAULT NULL,
  `value_spek` text,
  `id_sub_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spek2`
--

INSERT INTO `spek2` (`idSpek2`, `num`, `nama_spek`, `value_spek`, `id_sub_category`) VALUES
(53, 1, 'Processor', 'I9 core', 2),
(54, 3, 'RAM', '24 GB', 2),
(55, 4, 'Harddisk', '3 TB', 2),
(56, 5, 'Layar', '17 Inch', 2),
(57, 2, 'VGA', 'Nvidia 8600 GT', 2),
(98, 2, 'Warna', 'Aqua', 4),
(99, 1, 'Material', 'Plastik', 4),
(100, 3, 'Bahan', 'Polyester', 4),
(194, 1, 'Processor', '<p>Intel Core 2 Duo</p>\r\n', 1),
(195, 4, 'Warna', '<p>Kuning</p>\r\n', 1),
(196, 2, 'ROM', '<p>230 GB</p>\r\n', 1),
(197, 5, 'Casing', '<p>Plastik Imfortz</p>\r\n', 1),
(198, 3, 'RAM', '<ul>\r\n	<li>3GB</li>\r\n	<li>4GB</li>\r\n</ul>\r\n', 1),
(216, 1, 'Tegangan', '<p>395 Watt</p>\r\n', 3),
(217, 2, 'Berat', '<p>2 Kg</p>\r\n', 3),
(218, 3, 'Wadah', '<p>Stainless Steel</p>\r\n', 3),
(219, 4, 'Warna', '<p>Merah</p>\r\n', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id_sub_category` int(11) NOT NULL,
  `nama_sub_category` varchar(45) DEFAULT NULL,
  `deskripsi` text NOT NULL,
  `category_id_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id_sub_category`, `nama_sub_category`, `deskripsi`, `category_id_category`) VALUES
(1, 'Handphone', 'Ini penjelasan tentang Handphone', 1),
(2, 'Laptop', 'Ini penjelasan tentang Laptop', 1),
(3, 'Rice Cooker', 'Ini penjelasan tentang Rice Cooker', 2),
(4, 'Sikat', 'Ini penjelasan tentang Sikat', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_last_login`
--

CREATE TABLE `tbl_last_login` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `sessionData` varchar(2048) NOT NULL,
  `machineIp` varchar(1024) NOT NULL,
  `userAgent` varchar(128) NOT NULL,
  `agentString` varchar(1024) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `createdDtm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_last_login`
--

INSERT INTO `tbl_last_login` (`id`, `userId`, `sessionData`, `machineIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(1, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '127.0.0.1', 'Spartan 15.15063', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36 Edge/15.15063', 'Windows 10', '2018-01-22 13:34:16'),
(2, 2, '{"role":"2","roleText":"Manager","name":"Manager"}', '127.0.0.1', 'Spartan 15.15063', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36 Edge/15.15063', 'Windows 10', '2018-01-22 13:38:21'),
(3, 3, '{"role":"3","roleText":"Employee","name":"Employee"}', '127.0.0.1', 'Spartan 15.15063', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36 Edge/15.15063', 'Windows 10', '2018-01-22 13:47:34'),
(4, 3, '{"role":"3","roleText":"Employee","name":"Employee"}', '127.0.0.1', 'Spartan 15.15063', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36 Edge/15.15063', 'Windows 10', '2018-01-22 13:59:49'),
(5, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '127.0.0.1', 'Spartan 15.15063', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36 Edge/15.15063', 'Windows 10', '2018-01-22 14:07:47'),
(6, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '127.0.0.1', 'Firefox 57.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0', 'Windows 10', '2018-01-24 08:56:48'),
(7, 2, '{"role":"2","roleText":"Manager","name":"Manager"}', '127.0.0.1', 'Firefox 57.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0', 'Windows 10', '2018-01-24 09:40:07'),
(8, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '127.0.0.1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-01-24 10:13:18'),
(9, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '127.0.0.1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-01-24 10:16:51'),
(10, 3, '{"role":"3","roleText":"Employee","name":"Employee"}', '127.0.0.1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-01-24 10:18:17'),
(11, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '127.0.0.1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-01-24 10:42:03'),
(12, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-01-25 11:42:59'),
(13, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-01-26 13:40:41'),
(14, 9, '{"role":"3","roleText":"Employee","name":"Karyawan Hiji"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-01-26 13:59:01'),
(15, 9, '{"role":"3","roleText":"Employee","name":"Karyawan Hiji"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-01-26 14:07:06'),
(16, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-06 10:25:19'),
(17, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-06 12:57:11'),
(18, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-06 15:43:29'),
(19, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-12 13:40:45'),
(20, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-12 19:01:56'),
(21, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-13 08:46:02'),
(22, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-13 19:06:44'),
(23, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-14 08:26:52'),
(24, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-14 15:19:57'),
(25, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-15 08:05:28'),
(26, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-19 10:35:06'),
(27, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-20 07:59:00'),
(28, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-20 14:46:58'),
(29, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-20 18:48:01'),
(30, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-21 08:44:00'),
(31, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-22 08:03:29'),
(32, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-22 13:50:05'),
(33, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-23 08:09:35'),
(34, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-23 16:28:01'),
(35, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-26 08:28:57'),
(36, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-26 13:32:55'),
(37, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-27 08:16:16'),
(38, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-28 08:31:37'),
(39, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-03-01 08:08:02'),
(40, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-03-01 14:13:34'),
(41, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-03-02 08:03:39'),
(42, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-03-02 14:32:15'),
(43, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-03-05 08:24:21'),
(44, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-03-05 11:59:26'),
(45, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-03-06 08:11:48'),
(46, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-03-06 11:01:55'),
(47, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-03-06 14:04:32'),
(48, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-03-07 08:55:12'),
(49, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 59.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0', 'Windows 10', '2018-03-23 10:10:53'),
(50, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 59.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0', 'Windows 10', '2018-03-23 14:17:10'),
(51, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '192.168.0.14', 'Chrome 64.0.3282.186', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'Windows 10', '2018-03-23 16:59:31'),
(52, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 59.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0', 'Windows 10', '2018-03-26 08:26:34'),
(53, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 59.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0', 'Windows 10', '2018-03-27 08:05:41'),
(54, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 59.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0', 'Windows 10', '2018-03-27 15:57:29'),
(55, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 59.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0', 'Windows 10', '2018-03-28 08:23:12'),
(56, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 59.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0', 'Windows 10', '2018-03-29 08:23:07'),
(57, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '192.168.0.37', 'Chrome 62.0.3202.84', 'Mozilla/5.0 (Linux; Android 5.1; Lenovo A2010-a Build/LMY47D) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.84 Mobile Safari/537.36', 'Android', '2018-03-29 10:27:07'),
(58, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 59.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0', 'Windows 10', '2018-03-29 13:23:38'),
(59, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '192.168.0.37', 'Chrome 62.0.3202.84', 'Mozilla/5.0 (Linux; Android 5.1; Lenovo A2010-a Build/LMY47D) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.84 Mobile Safari/537.36', 'Android', '2018-03-29 15:21:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reset_password`
--

CREATE TABLE `tbl_reset_password` (
  `id` bigint(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activation_id` varchar(32) NOT NULL,
  `agent` varchar(512) NOT NULL,
  `client_ip` varchar(32) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` bigint(20) NOT NULL DEFAULT '1',
  `createdDtm` datetime NOT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_reset_password`
--

INSERT INTO `tbl_reset_password` (`id`, `email`, `activation_id`, `agent`, `client_ip`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'employee@example.com', 'DvhfWjy5YVReKIA', 'Firefox 58.0', '127.0.0.1', 0, 1, '2018-01-24 04:15:05', NULL, NULL),
(2, 'karyawan@coba.com', '2genMFZ0aCYt7D4', 'Firefox 58.0', '::1', 0, 1, '2018-01-26 08:08:20', NULL, NULL),
(3, 'Manager@example.com', 'iE57klLGm9wDX3s', 'Firefox 58.0', '::1', 0, 1, '2018-01-26 08:08:34', NULL, NULL),
(4, 'manager@example.com', 'tdEOZBrzKxm83TS', 'Firefox 58.0', '::1', 0, 1, '2018-01-26 08:08:56', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `roleId` tinyint(4) NOT NULL COMMENT 'role id',
  `role` varchar(50) NOT NULL COMMENT 'role text'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`roleId`, `role`) VALUES
(1, 'System Administrator'),
(2, 'Manager'),
(3, 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `password` varchar(128) NOT NULL COMMENT 'hashed login password',
  `name` varchar(128) DEFAULT NULL COMMENT 'full name of user',
  `mobile` varchar(20) DEFAULT NULL,
  `roleId` tinyint(4) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `email`, `password`, `name`, `mobile`, `roleId`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'admin@example.com', '$2y$10$znYux4W448A1cg2ZsvRYWuq2MtltIR236J9FCtVojaRBdNdmExtcO', 'System Administrator', '9890098900', 1, 0, 0, '2015-07-01 18:56:49', 1, '2018-03-23 04:11:45'),
(2, 'manager@example.com', '$2y$10$quODe6vkNma30rcxbAHbYuKYAZQqUaflBgc4YpV9/90ywd.5Koklm', 'Manager', '9890098900', 2, 0, 1, '2016-12-09 17:49:56', 1, '2018-01-12 07:22:11'),
(3, 'employee@example.com', '$2y$10$VHre/MCQD9ac6U1tb4g4yeSg/EwavAJDbHT2FOdFFWxpXIWMziu9e', 'Employee', '9890098900', 3, 0, 1, '2016-12-09 17:50:22', 1, '2018-01-24 04:18:05'),
(9, 'karyawan@coba.com', '$2y$10$yBpk7sy4bmV3Jau16vrb6uVazIcjldE/E9d0GJwfbyHEoy7tCvTJm', 'Rian', '0821234145', 2, 0, 1, '2018-01-26 07:58:31', 1, '2018-02-06 10:06:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_download_produk1_idx` (`id_sub_category`);

--
-- Indexes for table `produk_media`
--
ALTER TABLE `produk_media`
  ADD PRIMARY KEY (`id_media`),
  ADD KEY `fk_produk_media_produk1_idx` (`id_sub_category`);

--
-- Indexes for table `produk_software`
--
ALTER TABLE `produk_software`
  ADD PRIMARY KEY (`id_software`),
  ADD KEY `id_produk` (`id_sub_category`);

--
-- Indexes for table `spek2`
--
ALTER TABLE `spek2`
  ADD PRIMARY KEY (`idSpek2`),
  ADD KEY `fk_Spek2_sub_category1_idx` (`id_sub_category`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id_sub_category`),
  ADD KEY `fk_sub_category_category_idx` (`category_id_category`);

--
-- Indexes for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `produk_media`
--
ALTER TABLE `produk_media`
  MODIFY `id_media` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `produk_software`
--
ALTER TABLE `produk_software`
  MODIFY `id_software` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `spek2`
--
ALTER TABLE `spek2`
  MODIFY `idSpek2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;
--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id_sub_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `download`
--
ALTER TABLE `download`
  ADD CONSTRAINT `fk_Download_sub_category1` FOREIGN KEY (`id_sub_category`) REFERENCES `sub_category` (`id_sub_category`);

--
-- Constraints for table `produk_media`
--
ALTER TABLE `produk_media`
  ADD CONSTRAINT `fk_produk_media_sub_category1` FOREIGN KEY (`id_sub_category`) REFERENCES `sub_category` (`id_sub_category`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `produk_software`
--
ALTER TABLE `produk_software`
  ADD CONSTRAINT `fk_produk_software_sub_category1` FOREIGN KEY (`id_sub_category`) REFERENCES `sub_category` (`id_sub_category`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `spek2`
--
ALTER TABLE `spek2`
  ADD CONSTRAINT `fk_Spek2_sub_category1` FOREIGN KEY (`id_sub_category`) REFERENCES `sub_category` (`id_sub_category`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD CONSTRAINT `fk_sub_category_category` FOREIGN KEY (`category_id_category`) REFERENCES `category` (`id_category`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
