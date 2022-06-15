-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2022 at 07:44 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `katalog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`) VALUES
(2, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(1, 'Baju Gamis'),
(2, 'Baju Koko'),
(3, 'Jilbab');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `data_created`) VALUES
(22, 3, 'Jilbab Basic Voal Umama', 19000, '<p>BAHAN : POLYESTER</p>\r\n\r\n<p>JAHIT TEPI</p>\r\n\r\n<p>UKURAN : 110x110</p>\r\n\r\n<p>BRAND : UMAMA</p>\r\n', 'produk1646460640.jpg', 1, '2022-03-05 06:10:40'),
(23, 1, 'Lucia Gamis Feminine Casual', 289000, '<p>Lucia dress dengan warna pastel yang manis untuk kamu pecinta dress feminine casual. Model garis di bagian pinggang membuatmu tampak lebih ramping dan jenjang.</p>\r\n', 'produk1646461449.jpg', 1, '2022-03-05 06:24:09'),
(24, 2, 'Koko Putih Lengan Panjang', 150000, '<p>Bahan katun supernova (bahan katun berkualitas bagus utk produksi baju koko) menyerap keringat,ringan, dan nyaman di pakai untuk beribadah atau beraktivitas di luar ruangan.</p>\r\n', 'produk1646462031.jpeg', 1, '2022-03-05 06:33:51'),
(25, 3, ' Jilbab Rabbani AN Innova', 80000, '<p>Kerudung Innova</p>\r\n\r\n<p>Kerudung sekolah dengan variasi pita serut terbuka sebagai aksen. Selain untuk sekolah, kerudung ini sangat cocok digunakan untuk sehari-hari.</p>\r\n\r\n<p>Material</p>\r\n\r\n<p>- Polyester</p>\r\n\r\n<p>- Kualitas jahitan terbaik</p>\r\n', 'produk1646489009.jpg', 1, '2022-03-05 14:03:29'),
(26, 1, 'Baju Gamis Remaja', 70000, '<p>Bahan : Moscrepe Detail</p>\r\n\r\n<p>Size :</p>\r\n\r\n<p>- Panjang Baju : 135cm</p>\r\n\r\n<p>- Lingkar Dada : 105cm</p>\r\n\r\n<p>- Panjang Lengan : 55cm</p>\r\n\r\n<p>All Size fit to L</p>\r\n', 'produk1646489336.jpg', 1, '2022-03-05 14:08:56'),
(27, 2, 'Koko Anak Nibras', 177000, '<p>Setelan baju Koko Anak Katun Nibras terbuat dari katun cigaret berkualitas.&nbsp;<br />\r\n<br />\r\nBahan: Katun cigaret<br />\r\n<br />\r\nKoko Anak Laki-laki (1 stell koko + celana)</p>\r\n', 'produk1646490340.jpg', 1, '2022-03-05 14:12:46'),
(28, 1, 'Gamis Anak Perempuan', 95000, '<p>Hanina Syari Kids<br />\r\nBahan : cotton rayon<br />\r\nUsia 5-6 tahun (tergantung fisik anak )<br />\r\n- Lingkar Dada 80 cm<br />\r\n- Panjang Gamis 92 cm<br />\r\nWarna : Lavender, Blue Pink, Maroon</p>\r\n', 'produk1646490818.jpg', 1, '2022-03-05 14:33:38'),
(29, 3, 'Jilbab Pashmina Plisket', 8000, '<p>Pashmina Plisket</p>\r\n\r\n<ul>\r\n	<li>Bahan : Hyget Ori</li>\r\n	<li>Size : M (Dewasa) 75 X 150 Cm</li>\r\n</ul>\r\n', 'produk1646490985.jpg', 1, '2022-03-05 14:36:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
