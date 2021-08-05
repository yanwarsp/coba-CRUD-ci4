-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2021 at 07:09 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'asdasd', NULL, '2021-07-27 01:11:56', 0),
(2, '::1', 'rizkyapa@gmail.com', NULL, '2021-07-27 01:48:28', 0),
(3, '::1', 'yanwarsla', 5, '2021-07-27 02:24:13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(6, 'Marvel', 'marvel', 'stan li', 'adlkasldkl', 'dflsjdfkd', '2021-07-26 00:41:00', '2021-07-26 01:32:54'),
(7, 'Avengers End Game', 'avengers-end-game', 'siapa', 'gatau', 'asdkajl', '2021-07-26 00:41:16', '2021-07-26 00:41:16'),
(8, 'X Men', 'x-men', 'APa', 'laksldk', 'jsldkfjskd', '2021-07-26 01:37:40', '2021-07-26 01:37:40'),
(9, 'Secret War', 'secret-war', 'aklkj', 'jklkjl', '1627290351_1e8a686ff279d939fda2.jpg', '2021-07-26 03:20:43', '2021-07-26 04:05:51'),
(12, 'fantastic four', 'fantastic-four', 'kjkjkl', 'kjlkj', '1627288973_02d7ce30a52b6d5e4e64.jpg', '2021-07-26 03:42:53', '2021-07-26 03:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-07-26-092540', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1627291956, 1),
(2, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1627362325, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Jasmin Wastuti', 'Jln. Bhayangkara No. 907, Singkawang 92932, Kepri', '1986-10-26 12:15:49', '2021-07-26 05:42:06'),
(2, 'Vanesa Wastuti', 'Jln. Labu No. 45, Depok 57234, Kaltim', '2008-04-14 15:27:08', '2021-07-26 05:42:06'),
(3, 'Jessica Novitasari', 'Psr. Ikan No. 664, Banjarbaru 59756, Babel', '1998-12-24 18:31:54', '2021-07-26 05:42:06'),
(4, 'Gaduh Wibowo M.Kom.', 'Dk. Bagonwoto  No. 587, Madiun 79166, Kepri', '1997-01-15 17:55:55', '2021-07-26 05:42:06'),
(5, 'Gambira Sirait', 'Ds. Baya Kali Bungur No. 726, Gorontalo 91796, Pabar', '1998-11-18 04:51:55', '2021-07-26 05:42:06'),
(6, 'Kiandra Ika Astuti S.Pd', 'Psr. Basuki No. 299, Bengkulu 90137, Kepri', '1993-09-20 08:26:45', '2021-07-26 05:42:06'),
(7, 'Carla Kusmawati', 'Gg. Gardujati No. 879, Banjar 63046, Banten', '2010-06-22 03:20:37', '2021-07-26 05:42:06'),
(8, 'Elisa Nilam Yulianti', 'Ds. K.H. Maskur No. 8, Tomohon 72365, Bengkulu', '1975-07-16 06:47:56', '2021-07-26 05:42:06'),
(9, 'Lembah Adriansyah', 'Psr. Bhayangkara No. 813, Tual 25571, Jatim', '1976-11-30 13:58:44', '2021-07-26 05:42:06'),
(10, 'Budi Mursinin Latupono', 'Jln. Bagis Utama No. 660, Bandar Lampung 70200, Sulsel', '2010-04-30 07:40:37', '2021-07-26 05:42:06'),
(11, 'Luhung Lazuardi', 'Psr. Cikutra Timur No. 829, Pematangsiantar 28233, Jabar', '1985-01-25 07:05:39', '2021-07-26 05:42:06'),
(12, 'Betania Yuliarti', 'Ds. Ki Hajar Dewantara No. 222, Tomohon 19246, Sumbar', '1994-01-13 23:48:52', '2021-07-26 05:42:06'),
(13, 'Silvia Nasyidah', 'Psr. Batako No. 692, Cilegon 73486, Sulsel', '1997-02-09 06:17:19', '2021-07-26 05:42:06'),
(14, 'Genta Nasyiah', 'Jr. Basuki No. 59, Prabumulih 54290, Jateng', '1999-11-04 02:59:24', '2021-07-26 05:42:06'),
(15, 'Siska Tira Nurdiyanti S.Pd', 'Kpg. Lumban Tobing No. 206, Lubuklinggau 89496, DKI', '1994-07-31 22:05:46', '2021-07-26 05:42:06'),
(16, 'Clara Wijayanti', 'Gg. Nanas No. 674, Depok 39827, Maluku', '1990-03-26 01:36:59', '2021-07-26 05:42:06'),
(17, 'Galur Firmansyah', 'Gg. Kusmanto No. 643, Denpasar 11418, Banten', '2015-01-04 11:53:13', '2021-07-26 05:42:06'),
(18, 'Nugraha Widodo', 'Jln. Camar No. 158, Jayapura 50495, Kaltim', '2017-09-24 14:44:35', '2021-07-26 05:42:06'),
(19, 'Cornelia Aryani', 'Dk. Bah Jaya No. 501, Tanjung Pinang 35303, Sultra', '2008-07-01 14:55:27', '2021-07-26 05:42:06'),
(20, 'Bancar Hadi Wibisono', 'Ki. Gedebage Selatan No. 134, Banda Aceh 70133, Kalteng', '2000-07-01 06:39:22', '2021-07-26 05:42:06'),
(21, 'Ami Gilda Safitri S.H.', 'Gg. Villa No. 141, Sabang 95866, Jateng', '1999-11-23 05:37:02', '2021-07-26 05:42:06'),
(22, 'Maria Karen Fujiati', 'Jr. Ekonomi No. 583, Palopo 31083, Sulsel', '2018-08-28 03:34:03', '2021-07-26 05:42:06'),
(23, 'Gandi Hutagalung', 'Jln. Imam Bonjol No. 756, Prabumulih 31223, Jambi', '2007-06-22 22:36:30', '2021-07-26 05:42:06'),
(24, 'Ajimat Saptono', 'Gg. Wora Wari No. 50, Mataram 62288, Pabar', '1974-08-01 09:56:47', '2021-07-26 05:42:06'),
(25, 'Janet Agustina', 'Gg. Kebonjati No. 199, Blitar 96677, Kepri', '2005-09-07 23:49:03', '2021-07-26 05:42:06'),
(26, 'Nadine Handayani S.E.I', 'Ki. Antapani Lama No. 756, Administrasi Jakarta Utara 90800, Sulsel', '1973-03-31 02:14:34', '2021-07-26 05:42:06'),
(27, 'Ifa Lestari M.Kom.', 'Ki. Raden No. 473, Palopo 96845, Sumbar', '1992-09-20 23:00:39', '2021-07-26 05:42:06'),
(28, 'Anastasia Maimunah Susanti', 'Jr. Reksoninten No. 713, Mojokerto 52349, Maluku', '1971-09-20 19:20:07', '2021-07-26 05:42:06'),
(29, 'Kacung Malik Damanik S.Gz', 'Jr. Pacuan Kuda No. 247, Lhokseumawe 14983, Papua', '1970-03-30 23:49:11', '2021-07-26 05:42:06'),
(30, 'Gandewa Latupono', 'Kpg. Ciwastra No. 737, Bandar Lampung 50849, Sumut', '1988-02-18 04:04:48', '2021-07-26 05:42:06'),
(31, 'Oni Suryatmi M.Pd', 'Ds. Kyai Gede No. 779, Administrasi Jakarta Utara 36794, Jambi', '2005-11-29 22:42:14', '2021-07-26 05:42:06'),
(32, 'Mustika Ramadan', 'Dk. S. Parman No. 593, Administrasi Jakarta Selatan 46537, Kepri', '1971-09-20 01:20:43', '2021-07-26 05:42:06'),
(33, 'Yulia Kiandra Widiastuti S.Pd', 'Jr. Gajah Mada No. 98, Serang 97158, Kalteng', '1978-04-03 20:26:11', '2021-07-26 05:42:06'),
(34, 'Lukman Januar M.M.', 'Psr. Bambu No. 489, Gorontalo 41932, Sumut', '1990-07-10 00:24:12', '2021-07-26 05:42:06'),
(35, 'Ika Halimah M.Pd', 'Gg. Sutarto No. 859, Banjarmasin 19676, Banten', '2012-05-09 07:49:26', '2021-07-26 05:42:06'),
(36, 'Qori Lailasari S.Ked', 'Ki. Jend. A. Yani No. 761, Madiun 95959, Lampung', '2013-10-17 15:35:00', '2021-07-26 05:42:06'),
(37, 'Agnes Amalia Usamah', 'Jln. Cokroaminoto No. 619, Tegal 71872, Sumsel', '2020-09-06 04:31:33', '2021-07-26 05:42:06'),
(38, 'Paris Usada', 'Dk. Cikutra Barat No. 288, Bandung 91588, Gorontalo', '2000-04-11 23:15:36', '2021-07-26 05:42:06'),
(39, 'Galak Prasetya', 'Ki. Ikan No. 374, Kendari 13192, Bengkulu', '2007-08-18 19:20:20', '2021-07-26 05:42:06'),
(40, 'Candra Waluyo', 'Ki. Basuki Rahmat  No. 47, Tasikmalaya 21177, Sulut', '1972-01-28 14:37:51', '2021-07-26 05:42:06'),
(41, 'Dimaz Irawan M.Farm', 'Jr. Sam Ratulangi No. 50, Palu 46908, Sulteng', '1990-08-23 20:22:57', '2021-07-26 05:42:06'),
(42, 'Vivi Laksmiwati', 'Ds. Tambun No. 911, Banjarbaru 31768, Sulteng', '2015-09-27 18:41:01', '2021-07-26 05:42:06'),
(43, 'Gatra Wahyudin', 'Jln. Tambun No. 876, Sibolga 45899, Malut', '2006-04-13 02:18:01', '2021-07-26 05:42:06'),
(44, 'Eka Nabila Hartati M.Kom.', 'Jln. S. Parman No. 683, Jambi 73094, Jatim', '1972-08-16 01:26:18', '2021-07-26 05:42:06'),
(45, 'Ulva Nuraini', 'Dk. Veteran No. 836, Ternate 45640, Sumbar', '2017-06-12 14:39:28', '2021-07-26 05:42:06'),
(46, 'Ridwan Karna Salahudin', 'Dk. Salak No. 83, Tangerang Selatan 91539, DKI', '1999-11-02 02:40:45', '2021-07-26 05:42:06'),
(47, 'Bella Oktaviani', 'Dk. Baranang Siang Indah No. 574, Padangpanjang 19337, Gorontalo', '1987-08-11 12:36:05', '2021-07-26 05:42:06'),
(48, 'Novi Nurul Melani', 'Ki. Bagonwoto  No. 790, Surakarta 50931, Pabar', '2005-03-14 22:32:40', '2021-07-26 05:42:06'),
(49, 'Jono Halim', 'Kpg. Barat No. 727, Kupang 29765, Sumsel', '1992-02-11 15:36:47', '2021-07-26 05:42:06'),
(50, 'Tantri Widiastuti', 'Kpg. Kyai Mojo No. 495, Pariaman 80943, Aceh', '1982-05-27 21:25:25', '2021-07-26 05:42:06'),
(51, 'Luluh Winarno', 'Psr. Lumban Tobing No. 315, Sungai Penuh 54031, Sulteng', '2006-12-16 15:33:48', '2021-07-26 05:42:06'),
(52, 'Cayadi Simbolon M.Pd', 'Psr. Basuki No. 129, Parepare 23609, NTT', '2001-08-18 07:46:32', '2021-07-26 05:42:06'),
(53, 'Cemeti Ardianto M.Farm', 'Psr. Bak Air No. 912, Banjarbaru 45818, Sulteng', '1970-07-25 03:20:41', '2021-07-26 05:42:06'),
(54, 'Pia Yuniar', 'Ds. Mulyadi No. 255, Solok 40811, Bali', '2011-05-29 22:29:21', '2021-07-26 05:42:06'),
(55, 'Cornelia Palastri', 'Jln. Cihampelas No. 70, Bandar Lampung 78613, Kaltara', '1992-08-30 20:51:05', '2021-07-26 05:42:06'),
(56, 'Rosman Saputra M.Ak', 'Ds. Baabur Royan No. 926, Gunungsitoli 76280, Jambi', '1978-10-26 03:00:38', '2021-07-26 05:42:06'),
(57, 'Cici Usada S.Ked', 'Ds. Pasir Koja No. 62, Tangerang 36249, Maluku', '1999-04-27 06:22:16', '2021-07-26 05:42:06'),
(58, 'Lidya Lili Palastri', 'Gg. Wahid Hasyim No. 12, Serang 34552, DKI', '1992-02-08 18:22:09', '2021-07-26 05:42:06'),
(59, 'Devi Paramita Agustina S.H.', 'Jr. Supono No. 517, Metro 60410, Kalbar', '2019-04-20 13:03:13', '2021-07-26 05:42:06'),
(60, 'Rusman Virman Hidayanto M.Farm', 'Kpg. Baya Kali Bungur No. 268, Cirebon 25500, Malut', '1990-03-04 18:04:17', '2021-07-26 05:42:06'),
(61, 'Karya Prabowo', 'Jr. Labu No. 985, Tarakan 68728, Kalteng', '2002-03-29 10:37:07', '2021-07-26 05:42:06'),
(62, 'Mutia Sudiati', 'Psr. Teuku Umar No. 508, Tasikmalaya 83307, Kalbar', '1973-07-25 09:29:05', '2021-07-26 05:42:06'),
(63, 'Nugraha Nrima Simbolon S.Pt', 'Ds. Haji No. 233, Sorong 53752, Sumut', '2016-04-04 09:17:49', '2021-07-26 05:42:06'),
(64, 'Mutia Safitri', 'Ds. B.Agam 1 No. 816, Pariaman 30171, Sumut', '2008-07-01 07:16:57', '2021-07-26 05:42:06'),
(65, 'Carla Eli Rahimah', 'Jr. Sutoyo No. 589, Yogyakarta 53350, NTB', '1978-11-02 07:51:59', '2021-07-26 05:42:06'),
(66, 'Laila Lestari S.Sos', 'Ki. Babadak No. 340, Surabaya 88629, Kalteng', '1975-10-26 02:17:08', '2021-07-26 05:42:06'),
(67, 'Nova Padmasari M.M.', 'Jr. Jamika No. 464, Kotamobagu 28117, Sultra', '2002-01-16 19:15:04', '2021-07-26 05:42:06'),
(68, 'Maras Dariati Hutagalung', 'Ki. Peta No. 762, Probolinggo 33090, Bengkulu', '1970-04-05 12:19:32', '2021-07-26 05:42:06'),
(69, 'Belinda Oktaviani', 'Ki. Salam No. 318, Bima 85982, Babel', '2010-01-07 03:40:49', '2021-07-26 05:42:06'),
(70, 'Dinda Suryatmi', 'Dk. Mulyadi No. 839, Batu 81079, Kaltim', '2020-01-23 23:21:59', '2021-07-26 05:42:06'),
(71, 'Opung Emil Marbun', 'Jr. Baranangsiang No. 202, Sabang 14124, Sumut', '1985-10-02 06:32:08', '2021-07-26 05:42:06'),
(72, 'Cinta Widiastuti S.Pt', 'Kpg. Bahagia  No. 633, Gorontalo 51119, Bali', '2006-01-22 00:24:25', '2021-07-26 05:42:06'),
(73, 'Edward Simbolon', 'Jr. Bak Air No. 980, Samarinda 53339, Kepri', '2011-01-23 23:26:16', '2021-07-26 05:42:06'),
(74, 'Kemba Argono Sitompul M.TI.', 'Dk. Bakit  No. 975, Banjarmasin 25811, Kalbar', '2006-07-06 16:25:03', '2021-07-26 05:42:06'),
(75, 'Juli Uyainah', 'Psr. Adisumarmo No. 775, Sibolga 71879, Sulsel', '1996-04-02 13:33:44', '2021-07-26 05:42:06'),
(76, 'Jane Mulyani', 'Dk. Elang No. 455, Depok 91793, Bali', '2003-03-28 14:30:15', '2021-07-26 05:42:06'),
(77, 'Dodo Darimin Uwais M.M.', 'Jr. Nangka No. 132, Tarakan 82477, Sultra', '1988-06-21 10:34:00', '2021-07-26 05:42:06'),
(78, 'Tirta Harjo Dabukke', 'Dk. Rumah Sakit No. 491, Administrasi Jakarta Barat 23942, Kepri', '1991-09-29 04:37:04', '2021-07-26 05:42:06'),
(79, 'Jasmani Radika Sinaga', 'Jln. Gading No. 602, Gunungsitoli 88495, Pabar', '2010-05-07 15:56:38', '2021-07-26 05:42:06'),
(80, 'Cahyo Samosir S.Ked', 'Kpg. Abdul No. 941, Banda Aceh 29000, Sumut', '1993-09-16 15:21:41', '2021-07-26 05:42:06'),
(81, 'Heryanto Saptono', 'Jr. Panjaitan No. 725, Yogyakarta 73819, Papua', '2014-05-16 00:54:29', '2021-07-26 05:42:06'),
(82, 'Cager Maryadi', 'Gg. Cihampelas No. 650, Pangkal Pinang 44203, Sulut', '1980-03-24 18:27:41', '2021-07-26 05:42:06'),
(83, 'Cahyadi Zulkarnain', 'Jr. Suprapto No. 207, Denpasar 52291, Bengkulu', '1984-07-15 15:57:51', '2021-07-26 05:42:06'),
(84, 'Juli Nuraini', 'Gg. Merdeka No. 139, Tangerang Selatan 66213, Papua', '2018-03-16 13:17:43', '2021-07-26 05:42:06'),
(85, 'Among Dabukke', 'Jln. Perintis Kemerdekaan No. 80, Metro 45104, Gorontalo', '1982-06-27 06:26:46', '2021-07-26 05:42:06'),
(86, 'Raden Nashiruddin', 'Psr. Cemara No. 353, Bukittinggi 73992, NTB', '1991-03-21 02:44:19', '2021-07-26 05:42:06'),
(87, 'Lalita Nasyiah', 'Ds. Bagis Utama No. 3, Tebing Tinggi 98469, DKI', '2020-01-08 10:45:59', '2021-07-26 05:42:06'),
(88, 'Reksa Damanik', 'Kpg. Labu No. 466, Makassar 66175, Sumsel', '1994-04-23 05:55:21', '2021-07-26 05:42:06'),
(89, 'Wani Agustina S.Psi', 'Jr. Yap Tjwan Bing No. 718, Bima 87084, Gorontalo', '2021-05-27 08:51:15', '2021-07-26 05:42:06'),
(90, 'Kamaria Oktaviani', 'Kpg. Basoka No. 456, Kupang 32236, Kalteng', '2012-06-25 11:40:42', '2021-07-26 05:42:06'),
(91, 'Hardana Ade Prabowo S.Kom', 'Psr. Bahagia No. 220, Cimahi 94761, NTB', '1985-07-26 20:52:26', '2021-07-26 05:42:06'),
(92, 'Farah Farida S.Psi', 'Dk. Sunaryo No. 527, Administrasi Jakarta Pusat 60192, Bengkulu', '1982-07-04 01:18:08', '2021-07-26 05:42:06'),
(93, 'Wage Prakosa Mahendra', 'Gg. Merdeka No. 182, Semarang 98430, Lampung', '1972-06-03 14:01:53', '2021-07-26 05:42:06'),
(94, 'Jelita Fitriani Mulyani', 'Dk. Baya Kali Bungur No. 485, Yogyakarta 43833, Kaltara', '1993-07-10 01:17:45', '2021-07-26 05:42:06'),
(95, 'Bakiman Jailani', 'Psr. R.M. Said No. 581, Surakarta 94257, Riau', '1985-08-27 21:32:40', '2021-07-26 05:42:06'),
(96, 'Rini Rachel Widiastuti', 'Gg. M.T. Haryono No. 7, Administrasi Jakarta Selatan 51263, Sumut', '1985-01-13 08:14:36', '2021-07-26 05:42:06'),
(97, 'Ajeng Puspita S.E.', 'Jr. Pasteur No. 458, Banda Aceh 88074, Gorontalo', '2005-07-19 06:01:56', '2021-07-26 05:42:06'),
(98, 'Umar Taswir Jailani S.E.I', 'Ki. PHH. Mustofa No. 342, Gunungsitoli 66760, Sumsel', '1972-11-23 01:00:20', '2021-07-26 05:42:06'),
(99, 'Mila Rahmawati', 'Gg. Adisucipto No. 622, Gunungsitoli 29421, Aceh', '1993-09-21 10:48:43', '2021-07-26 05:42:06'),
(100, 'Padmi Maryati', 'Jln. Katamso No. 990, Langsa 90999, Sulut', '2001-06-16 11:02:20', '2021-07-26 05:42:06'),
(101, 'Samiah Rahayu', 'Gg. R.E. Martadinata No. 946, Gunungsitoli 70421, DIY', '1984-02-03 13:58:00', '2021-07-26 07:58:45'),
(102, 'Ihsan Latupono', 'Ki. Baing No. 364, Dumai 67445, Sulteng', '1991-04-30 11:13:43', '2021-07-26 07:58:45'),
(103, 'Ulya Almira Usamah M.M.', 'Gg. Adisucipto No. 260, Semarang 51770, Sulut', '1983-04-13 09:42:59', '2021-07-26 07:58:45'),
(104, 'Agnes Pudjiastuti', 'Ki. Cemara No. 254, Ternate 87805, Sulteng', '1989-05-26 07:04:56', '2021-07-26 07:58:45'),
(105, 'Okta Widodo', 'Jln. Bah Jaya No. 784, Palu 28428, Sulut', '2013-02-21 21:25:17', '2021-07-26 07:58:45'),
(106, 'Betania Padmasari', 'Gg. Ahmad Dahlan No. 219, Tidore Kepulauan 72152, Sumbar', '2000-09-13 09:59:25', '2021-07-26 07:58:45'),
(107, 'Gandewa Kurniawan', 'Jln. Bah Jaya No. 716, Tarakan 13678, Sulteng', '1993-08-12 23:41:57', '2021-07-26 07:58:45'),
(108, 'Syahrini Pertiwi', 'Jr. Ters. Pasir Koja No. 643, Jambi 60261, Pabar', '2018-09-27 01:37:42', '2021-07-26 07:58:45'),
(109, 'Cawuk Agus Prabowo', 'Jr. Bak Mandi No. 678, Bau-Bau 28570, Jabar', '2002-07-01 11:23:37', '2021-07-26 07:58:45'),
(110, 'Farah Nurdiyanti M.Farm', 'Jr. Basket No. 626, Administrasi Jakarta Barat 16435, Sulut', '2005-08-15 03:19:41', '2021-07-26 07:58:45'),
(111, 'Sadina Lestari', 'Ds. Baung No. 208, Pematangsiantar 51673, DKI', '2012-10-14 15:14:51', '2021-07-26 07:58:45'),
(112, 'Maida Icha Novitasari S.H.', 'Jr. Jend. A. Yani No. 269, Kotamobagu 90480, Kaltara', '1975-10-30 20:42:30', '2021-07-26 07:58:45'),
(113, 'Nadia Hastuti', 'Ki. Uluwatu No. 102, Sibolga 65910, Sulteng', '1976-07-08 18:11:03', '2021-07-26 07:58:45'),
(114, 'Samiah Chelsea Susanti S.E.I', 'Gg. Banda No. 517, Tual 14408, DIY', '1992-04-01 20:01:25', '2021-07-26 07:58:45'),
(115, 'Ana Usamah', 'Ki. Astana Anyar No. 974, Palembang 85650, Kalsel', '2017-04-28 02:46:40', '2021-07-26 07:58:45'),
(116, 'Oni Mayasari', 'Ki. Ujung No. 424, Tangerang 10896, Kalbar', '2009-01-25 14:45:49', '2021-07-26 07:58:45'),
(117, 'Jaga Wahyudin', 'Jln. Nanas No. 255, Bima 10315, Pabar', '1971-05-08 00:05:21', '2021-07-26 07:58:45'),
(118, 'Sidiq Rahmat Sinaga S.Kom', 'Ds. Abdul Muis No. 411, Pekanbaru 69012, Malut', '1970-03-03 23:43:16', '2021-07-26 07:58:45'),
(119, 'Eva Haryanti', 'Jr. Lumban Tobing No. 178, Pagar Alam 68282, DIY', '1985-03-03 04:14:43', '2021-07-26 07:58:45'),
(120, 'Irma Suryatmi', 'Gg. Baladewa No. 489, Bengkulu 29093, Bengkulu', '2018-08-08 08:29:15', '2021-07-26 07:58:45'),
(121, 'Maria Yuniar', 'Ki. Suprapto No. 665, Jambi 82918, Jabar', '2012-03-21 19:19:31', '2021-07-26 07:58:45'),
(122, 'Dina Riyanti', 'Psr. Tentara Pelajar No. 615, Parepare 25348, Kepri', '1980-07-08 00:21:06', '2021-07-26 07:58:45'),
(123, 'Lidya Yolanda', 'Jln. Diponegoro No. 580, Banjarbaru 30959, Sumbar', '1991-08-25 15:57:47', '2021-07-26 07:58:45'),
(124, 'Maida Eli Mulyani', 'Kpg. Banda No. 727, Cilegon 89137, Gorontalo', '2018-02-13 11:55:32', '2021-07-26 07:58:45'),
(125, 'Kawaca Widodo', 'Gg. Honggowongso No. 391, Metro 94118, Maluku', '2001-06-09 20:25:24', '2021-07-26 07:58:45'),
(126, 'Praba Prasetyo', 'Ds. Bak Air No. 208, Pekanbaru 86052, Sulteng', '2002-11-15 09:50:22', '2021-07-26 07:58:45'),
(127, 'Elvina Yolanda', 'Ds. BKR No. 668, Tanjungbalai 43432, Jabar', '2013-09-20 12:00:33', '2021-07-26 07:58:45'),
(128, 'Farhunnisa Padmasari', 'Jln. Imam Bonjol No. 282, Denpasar 19947, DKI', '2015-09-17 08:59:24', '2021-07-26 07:58:45'),
(129, 'Harsana Sihombing', 'Ki. Achmad Yani No. 107, Balikpapan 77680, Jateng', '1988-01-30 01:01:54', '2021-07-26 07:58:45'),
(130, 'Carla Lintang Melani', 'Ds. Otto No. 693, Medan 29222, Pabar', '1984-08-15 08:44:30', '2021-07-26 07:58:45'),
(131, 'Padmi Handayani', 'Jr. Abdul Rahmat No. 264, Magelang 62372, Sumut', '1997-06-08 19:27:52', '2021-07-26 07:58:45'),
(132, 'Hesti Jane Wastuti S.Gz', 'Jr. Abdullah No. 172, Kotamobagu 99606, Bengkulu', '2005-05-04 11:43:56', '2021-07-26 07:58:45'),
(133, 'Gambira Pangestu S.H.', 'Ki. Pasirkoja No. 53, Bau-Bau 78466, Aceh', '2011-03-07 18:12:30', '2021-07-26 07:58:45'),
(134, 'Harsana Haryanto', 'Gg. Bayan No. 976, Bengkulu 40994, Papua', '1977-08-10 13:38:57', '2021-07-26 07:58:45'),
(135, 'Novi Nuraini', 'Psr. Wahidin Sudirohusodo No. 360, Administrasi Jakarta Timur 68515, NTB', '1990-12-15 13:12:45', '2021-07-26 07:58:45'),
(136, 'Jamil Mandala', 'Ki. S. Parman No. 173, Bogor 91975, Sumbar', '2021-05-20 17:53:01', '2021-07-26 07:58:45'),
(137, 'Titin Melani M.Farm', 'Gg. Raden No. 597, Pariaman 36781, Pabar', '2021-01-09 22:43:37', '2021-07-26 07:58:45'),
(138, 'Jaga Gunarto S.Kom', 'Kpg. Basket No. 843, Pematangsiantar 84831, NTB', '1974-01-09 03:02:52', '2021-07-26 07:58:45'),
(139, 'Aisyah Mulyani', 'Jln. Warga No. 911, Prabumulih 68085, Aceh', '2019-07-08 22:05:11', '2021-07-26 07:58:45'),
(140, 'Ajeng Nasyiah', 'Psr. Basudewo No. 370, Padangsidempuan 75895, Sumut', '2020-12-14 08:47:02', '2021-07-26 07:58:45'),
(141, 'Ulva Rahmawati S.Psi', 'Ds. K.H. Maskur No. 715, Sibolga 55759, Jabar', '2015-03-21 01:51:17', '2021-07-26 07:58:45'),
(142, 'Hendri Tampubolon', 'Gg. Wahidin No. 179, Salatiga 65669, Kalteng', '2010-05-31 12:26:05', '2021-07-26 07:58:45'),
(143, 'Zaenab Pratiwi', 'Kpg. Surapati No. 287, Banjar 21822, Kaltim', '2012-02-24 11:47:02', '2021-07-26 07:58:45'),
(144, 'Galak Jono Wahyudin', 'Gg. Dipatiukur No. 604, Samarinda 21204, Jambi', '1983-11-25 06:38:35', '2021-07-26 07:58:45'),
(145, 'Rahayu Melani', 'Gg. Cikutra Timur No. 809, Tidore Kepulauan 81952, DKI', '1999-01-27 04:32:22', '2021-07-26 07:58:45'),
(146, 'Viman Pradana', 'Dk. Rumah Sakit No. 350, Bau-Bau 76361, Papua', '1990-09-28 04:15:58', '2021-07-26 07:58:45'),
(147, 'Cecep Maryadi', 'Gg. Babadak No. 4, Cimahi 39938, Riau', '1979-11-19 12:08:07', '2021-07-26 07:58:45'),
(148, 'Dodo Sirait', 'Ds. Flora No. 245, Solok 59593, Lampung', '2018-12-05 03:56:28', '2021-07-26 07:58:45'),
(149, 'Purwanto Wasita S.Ked', 'Kpg. Basuki Rahmat  No. 503, Administrasi Jakarta Timur 36224, Kepri', '1977-07-15 15:54:55', '2021-07-26 07:58:45'),
(150, 'Nadia Hariyah S.H.', 'Ki. Bayan No. 370, Tarakan 21378, Kepri', '1990-01-22 06:47:33', '2021-07-26 07:58:45'),
(151, 'Anita Safitri S.IP', 'Jln. Bata Putih No. 686, Bogor 58960, Malut', '2018-01-15 22:34:06', '2021-07-26 07:58:45'),
(152, 'Artawan Langgeng Hutagalung', 'Gg. Jaksa No. 566, Sibolga 84874, Jambi', '1996-07-01 16:16:28', '2021-07-26 07:58:45'),
(153, 'Elisa Astuti', 'Dk. Baranang Siang No. 136, Metro 95341, Jambi', '1972-08-24 09:08:13', '2021-07-26 07:58:45'),
(154, 'Yani Raisa Riyanti', 'Ki. Kusmanto No. 727, Balikpapan 73716, Sulsel', '1978-04-05 05:39:57', '2021-07-26 07:58:45'),
(155, 'Emil Panca Simanjuntak M.Pd', 'Dk. Suryo No. 775, Pangkal Pinang 68252, DIY', '1970-01-09 07:45:19', '2021-07-26 07:58:45'),
(156, 'Jane Wulandari', 'Psr. Imam Bonjol No. 521, Bontang 33458, Sumut', '1997-11-14 08:29:34', '2021-07-26 07:58:45'),
(157, 'Jamalia Genta Wastuti S.Ked', 'Dk. Dr. Junjunan No. 887, Metro 73801, Kaltara', '2018-01-25 16:12:47', '2021-07-26 07:58:45'),
(158, 'Bahuraksa Ikhsan Nashiruddin', 'Kpg. Bahagia  No. 379, Padangsidempuan 84012, Kalsel', '1996-09-29 07:08:45', '2021-07-26 07:58:45'),
(159, 'Anastasia Agustina S.Pd', 'Dk. Setia Budi No. 889, Depok 93480, Sulsel', '1998-09-27 03:26:02', '2021-07-26 07:58:45'),
(160, 'Dodo Maheswara', 'Kpg. Bakhita No. 401, Sibolga 16179, DIY', '2019-07-29 16:13:04', '2021-07-26 07:58:45'),
(161, 'Janet Hartati M.Farm', 'Gg. Ters. Kiaracondong No. 463, Tasikmalaya 59147, Sumbar', '2011-11-05 17:23:41', '2021-07-26 07:58:45'),
(162, 'Marwata Salahudin', 'Dk. Banal No. 703, Surabaya 59667, Sulbar', '1991-01-31 21:35:48', '2021-07-26 07:58:45'),
(163, 'Lega Danang Setiawan S.H.', 'Kpg. Sugiono No. 352, Cimahi 28403, Maluku', '2011-09-05 22:58:42', '2021-07-26 07:58:45'),
(164, 'Langgeng Waluyo', 'Ds. Baja No. 416, Administrasi Jakarta Pusat 75369, NTB', '1977-05-07 23:23:38', '2021-07-26 07:58:45'),
(165, 'Queen Sarah Novitasari S.E.', 'Gg. Supomo No. 464, Bogor 52042, Sulut', '1991-12-05 18:27:25', '2021-07-26 07:58:45'),
(166, 'Kadir Sitorus', 'Jln. Jagakarsa No. 609, Administrasi Jakarta Utara 32747, Sulsel', '2015-01-12 12:28:09', '2021-07-26 07:58:45'),
(167, 'Raden Mahendra', 'Gg. Haji No. 671, Jayapura 95236, Riau', '1981-05-05 14:21:19', '2021-07-26 07:58:45'),
(168, 'Gasti Diah Hassanah S.E.I', 'Psr. Elang No. 484, Bengkulu 64371, DKI', '2014-03-14 17:01:13', '2021-07-26 07:58:45'),
(169, 'Kartika Rahayu', 'Ki. M.T. Haryono No. 404, Tarakan 33583, Kalbar', '2017-06-23 17:36:51', '2021-07-26 07:58:45'),
(170, 'Candrakanta Budiyanto', 'Psr. Nanas No. 271, Gorontalo 68673, Aceh', '1975-04-05 08:52:51', '2021-07-26 07:58:45'),
(171, 'Gandewa Kacung Uwais', 'Psr. Bara No. 74, Palopo 33380, Kaltim', '1977-07-18 18:33:05', '2021-07-26 07:58:45'),
(172, 'Taufik Sihotang', 'Ds. Ters. Buah Batu No. 373, Tanjung Pinang 53300, Sumsel', '1989-08-22 13:55:33', '2021-07-26 07:58:45'),
(173, 'Jumadi Sihombing', 'Kpg. Baabur Royan No. 584, Yogyakarta 34294, Sulteng', '2008-03-29 17:39:37', '2021-07-26 07:58:45'),
(174, 'Yoga Zulkarnain', 'Ds. Bayan No. 534, Makassar 20605, Kalbar', '2005-05-26 21:18:42', '2021-07-26 07:58:45'),
(175, 'Cawisono Pranowo', 'Ds. Cikutra Barat No. 649, Singkawang 32804, Jambi', '2003-07-04 03:06:38', '2021-07-26 07:58:45'),
(176, 'Ulva Wastuti', 'Dk. Sutoyo No. 503, Kendari 13334, Sultra', '2006-08-27 12:01:28', '2021-07-26 07:58:45'),
(177, 'Rini Susanti', 'Ds. Yos No. 69, Medan 72379, Jabar', '2018-05-02 11:30:36', '2021-07-26 07:58:45'),
(178, 'Laras Suartini', 'Jr. Ketandan No. 19, Pematangsiantar 27644, NTB', '2008-08-06 20:42:20', '2021-07-26 07:58:45'),
(179, 'Septi Oktaviani', 'Ki. Kusmanto No. 442, Surabaya 53548, NTB', '1979-05-08 09:19:12', '2021-07-26 07:58:45'),
(180, 'Umi Purnawati', 'Kpg. Suryo Pranoto No. 967, Medan 24049, Papua', '1981-07-23 03:08:15', '2021-07-26 07:58:45'),
(181, 'Diana Palastri', 'Ki. R.E. Martadinata No. 57, Balikpapan 72222, Jambi', '1987-02-15 01:54:26', '2021-07-26 07:58:45'),
(182, 'Hasim Prayoga', 'Kpg. Cikutra Timur No. 63, Dumai 84224, Bali', '1973-02-27 04:17:37', '2021-07-26 07:58:45'),
(183, 'Kamaria Winarsih', 'Ds. Muwardi No. 23, Tarakan 89058, Jambi', '2003-04-06 13:35:23', '2021-07-26 07:58:45'),
(184, 'Dewi Wulandari', 'Ds. Batako No. 155, Pasuruan 57566, Sultra', '1993-09-04 09:00:58', '2021-07-26 07:58:45'),
(185, 'Malika Queen Purwanti S.H.', 'Kpg. Soekarno Hatta No. 350, Administrasi Jakarta Pusat 79860, Malut', '1975-05-17 23:55:22', '2021-07-26 07:58:45'),
(186, 'Cici Elvina Hassanah M.Farm', 'Gg. Asia Afrika No. 383, Surabaya 61471, Sumut', '2001-07-24 15:46:11', '2021-07-26 07:58:45'),
(187, 'Prabowo Firmansyah', 'Gg. Merdeka No. 943, Salatiga 18474, Kalteng', '2005-03-27 23:20:44', '2021-07-26 07:58:45'),
(188, 'Lintang Hartati', 'Kpg. Lembong No. 595, Kediri 92837, Riau', '1982-11-22 06:57:42', '2021-07-26 07:58:45'),
(189, 'Cahyadi Muhammad Najmudin', 'Jr. Bara No. 118, Padangsidempuan 35293, Sumbar', '2016-01-19 08:57:29', '2021-07-26 07:58:45'),
(190, 'Budi Prasetya', 'Psr. Flora No. 706, Banjar 50224, Maluku', '1970-03-06 07:04:00', '2021-07-26 07:58:45'),
(191, 'Aurora Hartati S.E.', 'Jln. Ketandan No. 354, Samarinda 28830, Lampung', '2010-11-07 15:28:18', '2021-07-26 07:58:45'),
(192, 'Narji Budiyanto', 'Ki. Baranang Siang No. 94, Bau-Bau 58454, NTT', '1971-05-06 08:06:10', '2021-07-26 07:58:45'),
(193, 'Warta Pangestu', 'Jln. Lada No. 701, Bengkulu 41995, Kepri', '1996-07-19 04:05:09', '2021-07-26 07:58:45'),
(194, 'Purwa Gunarto', 'Jr. Kebonjati No. 381, Malang 17822, Jambi', '1998-08-06 07:48:35', '2021-07-26 07:58:45'),
(195, 'Mala Mulyani S.E.I', 'Ki. Lada No. 127, Samarinda 52388, Jabar', '1994-10-08 22:58:35', '2021-07-26 07:58:45'),
(196, 'Ade Yunita Nasyidah S.Farm', 'Dk. Ir. H. Juanda No. 168, Kupang 95259, Kalbar', '1970-12-01 22:20:07', '2021-07-26 07:58:45'),
(197, 'Karimah Rahayu S.Pt', 'Jln. Gegerkalong Hilir No. 820, Sabang 85215, Sultra', '2013-06-27 04:40:20', '2021-07-26 07:58:45'),
(198, 'Salsabila Suryatmi', 'Psr. Bahagia No. 284, Bontang 49850, NTT', '1997-04-23 03:20:29', '2021-07-26 07:58:45'),
(199, 'Kamila Wastuti', 'Kpg. Radio No. 668, Samarinda 72286, Kaltim', '2020-08-24 17:25:35', '2021-07-26 07:58:45'),
(200, 'Eman Hutapea', 'Psr. Lumban Tobing No. 396, Langsa 36765, Pabar', '1999-01-02 23:32:09', '2021-07-26 07:58:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'yanwarsp@gmail.com', 'yanwarsp', '$2y$10$C5ByD03ysR3PEmigW4bNLOKR/g/2k8Akk.uCpxRPJkto2mLFt1Vwy', NULL, NULL, NULL, '42d7953bed513cc79737fc7de64d1a24', NULL, NULL, 0, 0, '2021-07-27 01:21:21', '2021-07-27 01:21:21', NULL),
(2, 'yanwarsp01@gmail.com', 'yanwar01', '$2y$10$GB3Ec8hNGtIAQtrzfGgwSeZ0P1x5KXHtfthqut302baKYwMrmXL1O', NULL, NULL, NULL, 'fbebacc613c759f1bab111aac1ddf8a1', NULL, NULL, 0, 0, '2021-07-27 01:22:18', '2021-07-27 01:22:18', NULL),
(3, 'rizkyapa@gmail.com', 'rzky15', '$2y$10$h1LLaRi2vVe6yWctpbQokup7ZM38b/kEd8ARDk8BwkFFTfPQ8z01C', NULL, NULL, NULL, 'a215c0479ef591ce5bb209366886da8e', NULL, NULL, 0, 0, '2021-07-27 01:33:50', '2021-07-27 01:33:50', NULL),
(4, 'yspysp1@gmail.com', 'akuaja1', '$2y$10$nbU0SW2gkOC2aZDnemxHQeLzyIf7nBxk0gsgHJXQOouwMl/0r9BR6', NULL, NULL, NULL, 'ce8b0ac08864b0103e61bdeeb237305e', NULL, NULL, 0, 0, '2021-07-27 01:49:39', '2021-07-27 01:49:39', NULL),
(5, 'apapun@gmail.com', 'yanwarsla', '$2y$10$7SFE8kYmSeI2HGyY2GxMXuKc.yvfdLjEkHiaEDtIFmtSt83nVECXi', NULL, NULL, NULL, 'ec5f78513a24ffb074c17f86d1f19a89', NULL, NULL, 0, 0, '2021-07-27 02:23:55', '2021-07-27 02:23:55', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
