-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 08, 2019 at 05:38 PM
-- Server version: 5.7.24-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Suportivo_Alternative`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `judul_berita` varchar(225) CHARACTER SET utf8 DEFAULT NULL,
  `isi_rangkum` text CHARACTER SET utf8,
  `isi_full` text CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul_berita`, `isi_rangkum`, `isi_full`) VALUES
(1, 'Haliza 10 Reciprocating Analyzer', 'Merupakan perangkat diagnostik untuk mengambil data dan melakukan analisa kondisi reciprocating equipments, seperti:...', 'Merupakan perangkat diagnostik untuk mengambil data dan melakukan analisa kondisi reciprocating equipments, seperti:...'),
(2, 'Test Page\r\nTest Pages Build 001', 'Test pages 001 wkz Lol join into v_test.php pages.', 'Test pages 001 wkz Lol join into v_test.php pages.\r\n'),
(21, 'TEst Adddsd', '<p>Test Rangkuman</p>\r\n', '<p>Test Fullllll</p>\r\n'),
(31, 'judu;ppp', '<p>22222222222222222222222pppp</p>\r\n', '<p>222222222222222222222222222213123`1`ppppp</p>\r\n'),
(32, 'Test Ad dd', '<p>Okheiwqtets1231231235555555599999999qw</p>\r\n', '<p>12355677wowo123125555999999999999qw</p>\r\n'),
(33, '1Test Addd1', '<p>((((((((((())))))))))))(((((((((((())))))))))))))))</p>\r\n', '<p>111111111222222222222222[[[[[[[[[[]]]]]]]]]]]]]]][[[[[[[[[[[[[]]]]]]]]]]]]]]</p>\r\n');

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
(1, 'Online Monitoring System'),
(2, 'Portable Analyzer');

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
  `nama_dokumen` varchar(300) DEFAULT NULL,
  `versi` varchar(45) DEFAULT NULL,
  `waktu_update` date DEFAULT NULL,
  `keterangan` text,
  `link` varchar(250) NOT NULL,
  `id_sub_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id`, `nama_dokumen`, `versi`, `waktu_update`, `keterangan`, `link`, `id_sub_category`) VALUES
(1, 'bahasa-pemrograman-C++.pdf', '10', '2018-02-15', 'Cobe', '', 1),
(3, 'Brosur-Haliza-10.pdf', '10', '2018-02-22', 'Haliza', '', 1),
(4, '42_Rules_to_Jumpstart_your_Professional_Success1.pdf', '2.1', '2019-01-17', '<p>Test add</p>\r\n', '', 2),
(5, '100_Must-read_Life-Changing_Books.pdf', '13', '2019-01-17', '<p>Test Add</p>\r\n', '', 1),
(6, 'codeigniter_multilevel_menu-master.zip', '2.1', '2019-01-17', '<p>TEst aDD Zip</p>\r\n', '', 1),
(7, 'Catetan_PKL.txt', '1', '2019-03-08', '<p>Test add</p>\r\n', 'https://github.com/', 3);

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
(4, 'lol.jpg', 'lolololololo', 'image/jpeg', 1),
(9, 'Cloud_Computing1.png', 'Isi', 'image/png', 1),
(11, 'Maintenance.png', 'Co', 'image/png', 1),
(12, 'signIn.png', 'DIh', 'image/png', 1),
(13, 'Script.png', '2', 'image/png', 1),
(16, 'images_(3).jpg', 'deh', 'image/jpeg', 1),
(17, 'images_(4).jpg', 'Haliza2', 'image/jpeg', 1),
(18, 'logodaunbiru.jpg', 'logo', 'image/jpeg', 1),
(19, 'newbanner.png', '<p><strong>Ini contoh penjelasan Gambar</strong></p>\n\n<ul>\no<li><strong>Memakai </strong></li>\n</ul>\n\n<ol>\no<li><em>CkEditor</em></li>\n</ol>\n', 'image/png', 1),
(20, 'U_R_-_TAEYEON_NIGHTCORE.mp4', '<p>Contoh media:</p>\n\n<ul>\n<li>Video</li>\n</ul>\n', 'video/mp4', 1),
(21, '02__Get_Shocked_To_See_How_Small_Our_Earth_Is_-.mp4', '', 'video/mp4', 2),
(23, 'wkz.png', 'Test lol', 'image/png', 1),
(24, 'wwz.png', 'wkwkwkwkwkwkwkwkwkw', 'image/png', 1),
(25, 'Rise Up.mp4', '<p>Contoh media:</p>\n\n<ul>\n<li>Video</li>\n</ul>\n', 'video/mp4', 1),
(26, 'post_h_1.jpg', 'NO Game no Life Wallpaper', 'image/jpeg', 1),
(27, 'INAMARINE2016-6.jpg', 'GEM Indonesia back INAMARINE 2016 Exhibition held on 18-20 May 2016 JIExpo ago in Kemayoran, Jakarta.', 'image/jpeg', 1),
(30, 'post_1.jpg', '<p>Add mE</p>\r\n', 'image/jpeg', 1),
(33, 'haliza-small-11.jpg', '<p>Haliza</p>\r\n', 'image/jpeg', 1);

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
  `link` varchar(250) NOT NULL,
  `id_sub_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `produk_software`
--

INSERT INTO `produk_software` (`id_software`, `nama_software`, `versi`, `waktu_update`, `keterangan`, `link`, `id_sub_category`) VALUES
(2, 'FeedingFrenzy2Setup.exe', '101', '2018-02-27', '<ul>\n<li>Isi Deskripsi Software</li>\n</ul>\n\n<ol>\n<li>Coba dengan Ckeditor</li>\n</ol>\n', '', 1),
(4, 'aplikasi_penjualan_php_mysql-master2.zip', '3.2', '2019-01-17', '<p>Test Add</p>\r\n', '', 3),
(5, 'Asset_Registering_Premier.xlsx', 'Test git', '0000-00-00', '<p>Test add</p>\r\n', 'https://github.com/new', 3);

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
(216, 1, 'Tegangan', '<p>395 Watt</p>\r\n', 3),
(217, 2, 'Berat', '<p>2 Kg</p>\r\n', 3),
(218, 3, 'Wadah', '<p>Stainless Steel</p>\r\n', 3),
(219, 4, 'Warna', '<p>Merah</p>\r\n', 3),
(223, 1, 'test Add', '<p>Ini Masak</p>\r\n', 6),
(224, 2, 'Test Add2', '<p>Ini Masak2</p>\r\n', 6);

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id_sub_category` int(11) NOT NULL,
  `nama_sub_category` varchar(45) DEFAULT NULL,
  `deskripsi` text NOT NULL,
  `category_id_category` int(11) NOT NULL,
  `link` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id_sub_category`, `nama_sub_category`, `deskripsi`, `category_id_category`, `link`) VALUES
(1, 'Monita AMR (Automatic Meter Reading)', 'Ini penjelasan tentang Handphone', 1, '/produk/monitaamr'),
(2, 'Monita Engine Protection', 'Ini penjelasan tentang Laptop', 1, '/produk/monitaengine'),
(3, 'Monita Marine (Vessel Monitoring System)', 'Ini penjelasan tentang Rice Cooker', 1, '/produk/monitamarine'),
(4, 'Haliza Reciprocating Machinery Analyzer', 'Ini penjelasan tentang Sikat', 2, '/produk/halizareciprocating'),
(6, 'Haliza Rotating Machinery Analyzer', '<p>Keterangan</p>\r\n', 2, '/produk/halizareciprocating'),
(8, 'Monita Pembangkit (Power Generator)', '<p>Test add</p>\r\n', 1, '/produk/monitapembangkit'),
(9, 'Monita Penyulang (Feeder)', 'Ini Monita Penyulingan', 1, '/produk/monitapenyulang'),
(12, 'Test Aldad', '<p>123</p>\r\n', 1, NULL);

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
(1, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Spartan 15.15063', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36 Edge/15.15063', 'Windows 10', '2018-01-22 13:34:16'),
(2, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '127.0.0.1', 'Spartan 15.15063', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36 Edge/15.15063', 'Windows 10', '2018-01-22 13:38:21'),
(3, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '127.0.0.1', 'Spartan 15.15063', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36 Edge/15.15063', 'Windows 10', '2018-01-22 13:47:34'),
(4, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '127.0.0.1', 'Spartan 15.15063', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36 Edge/15.15063', 'Windows 10', '2018-01-22 13:59:49'),
(5, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Spartan 15.15063', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36 Edge/15.15063', 'Windows 10', '2018-01-22 14:07:47'),
(6, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Firefox 57.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0', 'Windows 10', '2018-01-24 08:56:48'),
(7, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '127.0.0.1', 'Firefox 57.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0', 'Windows 10', '2018-01-24 09:40:07'),
(8, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-01-24 10:13:18'),
(9, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-01-24 10:16:51'),
(10, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '127.0.0.1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-01-24 10:18:17'),
(11, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-01-24 10:42:03'),
(12, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-01-25 11:42:59'),
(13, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-01-26 13:40:41'),
(14, 9, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Karyawan Hiji\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-01-26 13:59:01'),
(15, 9, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Karyawan Hiji\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-01-26 14:07:06'),
(16, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-06 10:25:19'),
(17, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-06 12:57:11'),
(18, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-06 15:43:29'),
(19, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-12 13:40:45'),
(20, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-12 19:01:56'),
(21, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-13 08:46:02'),
(22, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-13 19:06:44'),
(23, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-14 08:26:52'),
(24, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-14 15:19:57'),
(25, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-15 08:05:28'),
(26, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-19 10:35:06'),
(27, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-20 07:59:00'),
(28, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-20 14:46:58'),
(29, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-20 18:48:01'),
(30, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-21 08:44:00'),
(31, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-22 08:03:29'),
(32, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-22 13:50:05'),
(33, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-23 08:09:35'),
(34, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-23 16:28:01'),
(35, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-26 08:28:57'),
(36, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-26 13:32:55'),
(37, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-27 08:16:16'),
(38, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-02-28 08:31:37'),
(39, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-03-01 08:08:02'),
(40, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-03-01 14:13:34'),
(41, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-03-02 08:03:39'),
(42, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-03-02 14:32:15'),
(43, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-03-05 08:24:21'),
(44, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-03-05 11:59:26'),
(45, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-03-06 08:11:48'),
(46, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-03-06 11:01:55'),
(47, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-03-06 14:04:32'),
(48, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 58.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 'Windows 10', '2018-03-07 08:55:12'),
(49, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 59.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0', 'Windows 10', '2018-03-23 10:10:53'),
(50, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 59.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0', 'Windows 10', '2018-03-23 14:17:10'),
(51, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.14', 'Chrome 64.0.3282.186', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'Windows 10', '2018-03-23 16:59:31'),
(52, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 59.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0', 'Windows 10', '2018-03-26 08:26:34'),
(53, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 59.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0', 'Windows 10', '2018-03-27 08:05:41'),
(54, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 59.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0', 'Windows 10', '2018-03-27 15:57:29'),
(55, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 59.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0', 'Windows 10', '2018-03-28 08:23:12'),
(56, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 59.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0', 'Windows 10', '2018-03-29 08:23:07'),
(57, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.37', 'Chrome 62.0.3202.84', 'Mozilla/5.0 (Linux; Android 5.1; Lenovo A2010-a Build/LMY47D) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.84 Mobile Safari/537.36', 'Android', '2018-03-29 10:27:07'),
(58, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 59.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0', 'Windows 10', '2018-03-29 13:23:38'),
(59, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.37', 'Chrome 62.0.3202.84', 'Mozilla/5.0 (Linux; Android 5.1; Lenovo A2010-a Build/LMY47D) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.84 Mobile Safari/537.36', 'Android', '2018-03-29 15:21:26'),
(60, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-09 14:47:57'),
(61, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-09 14:53:51'),
(62, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-10 08:46:03'),
(63, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-10 10:32:09'),
(64, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-10 10:32:56'),
(65, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-10 10:33:20'),
(66, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-10 11:15:59'),
(67, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-10 13:16:10'),
(68, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-10 16:23:35'),
(69, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-11 08:53:55'),
(70, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-11 13:47:41'),
(71, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-14 09:46:28'),
(72, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-14 11:44:02'),
(73, 10, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Test Account\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-14 11:45:16'),
(74, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-15 08:30:58'),
(75, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-15 11:13:07'),
(76, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-15 13:44:44'),
(77, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-15 13:44:58'),
(78, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-15 13:45:56'),
(79, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-15 14:59:16'),
(80, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-16 08:25:48'),
(81, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-17 08:28:06'),
(82, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-17 14:10:59'),
(83, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-17 14:58:06'),
(84, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-17 14:58:25'),
(85, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-18 08:54:54'),
(86, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-18 16:33:03'),
(87, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-21 08:18:10'),
(88, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-21 13:16:11'),
(89, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-23 09:45:33'),
(90, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-25 09:08:26'),
(91, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-28 08:23:42'),
(92, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-28 13:23:48'),
(93, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-29 08:28:38'),
(94, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-29 08:30:15'),
(95, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-29 13:29:32'),
(96, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-30 08:50:00'),
(97, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-30 14:11:13'),
(98, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-30 14:11:24'),
(99, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-01-31 13:57:03'),
(100, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-04 09:13:38'),
(101, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-04 13:51:27'),
(102, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-07 09:02:36'),
(103, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-08 09:20:56'),
(104, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-13 14:19:38'),
(105, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-14 09:25:02'),
(106, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-15 08:52:28'),
(107, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-15 13:30:42'),
(108, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-15 16:38:46'),
(109, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-18 08:24:41'),
(110, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-18 10:38:08'),
(111, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-18 13:17:08'),
(112, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-18 13:45:23'),
(113, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-18 14:07:21'),
(114, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-18 16:08:39'),
(115, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-18 16:25:51'),
(116, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-19 08:20:01'),
(117, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-19 08:20:25'),
(118, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-19 11:13:04'),
(119, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-19 14:18:21'),
(120, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-20 08:36:32'),
(121, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-21 08:37:27'),
(122, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-21 13:29:34'),
(123, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-22 09:08:28'),
(124, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-26 08:36:37'),
(125, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-26 09:36:52'),
(126, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-26 10:44:42'),
(127, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Linux', '2019-02-26 13:47:38'),
(128, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-02-27 08:41:13'),
(129, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Linux', '2019-02-27 17:03:13'),
(130, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Linux', '2019-02-28 11:47:15'),
(131, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Linux', '2019-02-28 14:05:50'),
(132, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Linux', '2019-02-28 17:03:52'),
(133, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Linux', '2019-03-01 10:08:33'),
(134, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Linux', '2019-03-01 17:20:43'),
(135, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Linux', '2019-03-04 10:04:51'),
(136, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Linux', '2019-03-04 16:05:00'),
(137, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Linux', '2019-03-05 08:54:55'),
(138, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Linux', '2019-03-06 10:19:03'),
(139, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-03-08 08:40:28'),
(140, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '127.0.0.1', 'Firefox 64.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Linux', '2019-03-08 14:21:42'),
(141, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Linux', '2019-03-08 14:35:56'),
(142, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Anonymous\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Linux', '2019-03-08 14:45:14');

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
(4, 'manager@example.com', 'tdEOZBrzKxm83TS', 'Firefox 58.0', '::1', 0, 1, '2018-01-26 08:08:56', NULL, NULL),
(5, 'email@example.com', 'QO8WUj0NS4pkgHn', 'Firefox 64.0', '127.0.0.1', 0, 1, '2019-01-15 13:45:20', NULL, NULL),
(6, 'email@example.com', '5zxdH10jFgkShZu', 'Firefox 64.0', '127.0.0.1', 0, 1, '2019-01-15 13:45:42', NULL, NULL),
(7, 'email@example.com', 'AgCciuOdaWRlq1y', 'Firefox 64.0', '127.0.0.1', 0, 1, '2019-01-17 14:57:35', NULL, NULL);

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
(1, 'admin@example.com', '$2y$10$6NOKhXKiR2SAgpFF2WpCkuRgYKlSqFJaqM0NgIM3PT1gKHEM5/SM6', 'System Administrator', '9890098900', 1, 0, 0, '2015-07-01 18:56:49', 1, '2018-01-05 05:56:34'),
(2, 'manager@example.com', '$2y$10$quODe6vkNma30rcxbAHbYuKYAZQqUaflBgc4YpV9/90ywd.5Koklm', 'Manager', '9890098900', 2, 0, 1, '2016-12-09 17:49:56', 1, '2018-01-12 07:22:11'),
(3, 'employee@example.com', '$2y$10$T/DJlRcUy/Bpn/B.79Ub0eTDXBuTMKq9NY9qciS22Q4mkc6uuF41S', 'Employee', '9890098900', 3, 0, 1, '2016-12-09 17:50:22', 3, '2019-01-10 10:33:10'),
(9, 'email@example.com', '$2y$10$vPJ4MEF.Abwn.z/ZT2Wt..S1mE8wzOLt86qh0Z7wI35vVFwO7NCGi', 'Anonymous', '0812212375', 2, 0, 1, '2019-01-10 13:37:16', 9, '2019-01-17 14:58:16'),
(10, 'test@example.com', '$2y$10$qNqNLoM.ysNJujhmUjiFOuiULFAigQ.oQtnaLHriRY9xRO9H8pKei', 'Test Account', '0000989762', 3, 0, 9, '2019-01-14 11:44:56', NULL, NULL),
(11, 'eez@example.com', '$2y$10$On3ZgwsUawyJ9uCMMe0a.uTtCgEfKo63UGDXzfVfNj2YvTFoJm/d2', 'Test Account1', '1234567789', 2, 1, 9, '2019-01-15 14:57:30', 9, '2019-01-15 14:58:26'),
(12, 'e@example.com', '$2y$10$Hr8V/Fr71KTfJmGqr42hm.4NtPRezt.5JgdwD39n5lz1p6NVdLHsq', 'Erqqqqqqqq', '1231231231', 2, 0, 9, '2019-01-25 14:40:15', 9, '2019-01-29 08:49:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

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
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `produk_media`
--
ALTER TABLE `produk_media`
  MODIFY `id_media` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `produk_software`
--
ALTER TABLE `produk_software`
  MODIFY `id_software` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `spek2`
--
ALTER TABLE `spek2`
  MODIFY `idSpek2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;
--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id_sub_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;
--
-- AUTO_INCREMENT for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
