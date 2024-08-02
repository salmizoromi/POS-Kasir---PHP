-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2024 at 03:32 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(1, 'BR001', 1, 'Semen Padang', 'Padang', '48.000', '55.000', 'Sak', '200', '6 October 2020, 0:41', '24 July 2024, 22:58'),
(2, 'BR002', 1, 'Semen Gersik', 'Gersik', '55.000', '58.000', 'Sak', '205', '6 October 2020, 0:41', '25 July 2024, 20:04'),
(3, 'BR003', 1, 'Semen tiga roda', 'Tiga Roda', '57.000', '60.000', 'Sak', '207', '6 October 2020, 1:34', '25 July 2024, 20:03'),
(4, 'BR004', 1, 'Acian Apluss', 'Apluss', '58.000', '70.000', 'Sak', '49', '18 July 2024, 22:55', '25 July 2024, 20:03'),
(5, 'BR005', 1, 'Aplus 220', 'Apluss', '50.000', '65.000', 'Sak', '50', '18 July 2024, 22:56', '25 July 2024, 20:03'),
(6, 'BR006', 1, 'Compon Aplus', 'Apluss', '49.000', '65.000', 'Sak', '44', '18 July 2024, 22:59', '25 July 2024, 20:03'),
(7, 'BR007', 5, 'Q-Luc White', 'Nippon', '69.000', '75.000', 'Galon', '100', '18 July 2024, 23:01', '25 July 2024, 20:03'),
(8, 'BR008', 8, 'Kuas cat 2 inc', 'Hamster', '4500', '10.000', 'PCS', '97', '24 July 2024, 21:53', NULL),
(9, 'BR009', 8, 'Kuas cat 3 inc', 'Owner', '9500', '15.000', 'PCS', '147', '24 July 2024, 21:53', '24 July 2024, 22:49'),
(11, 'BR010', 6, 'Ftalit Kuning', 'Kansai', '75.000', '95.000', 'Kaleng', '20', '24 July 2024, 22:54', NULL),
(12, 'BR011', 6, 'Cat Yoko Merah', 'Yoko', '54.000', '65.000', 'Kaleng', '20', '24 July 2024, 22:55', NULL),
(13, 'BR012', 5, 'Vinilex putih', 'Vinilex', '100.000', '175.000', 'Galon', '15', '25 July 2024, 20:04', NULL),
(14, 'BR013', 6, 'Ftalit Putih', 'Ftalit', '64.000', '85.000', 'Kaleng', '20', '25 July 2024, 20:05', NULL),
(15, 'BR014', 1, 'Sika Grout 215', 'Sika', '95.000', '120.000', 'Sak', '25', '25 July 2024, 20:06', NULL),
(16, 'BR015', 1, 'Sika Top 107', 'Sika Top', '185.000', '350.000', 'Sak', '25', '25 July 2024, 20:07', NULL),
(17, 'BR016', 8, 'Body kunci pintu besar', 'Wanly', '67.000', '120.000', 'PCS', '50', '25 July 2024, 20:14', NULL),
(18, 'BR017', 8, 'Engsel Jendela 3&quot;', 'HPP', '15500', '35.000', 'PCS', '50', '25 July 2024, 20:16', NULL),
(19, 'BR018', 5, 'Q-Luc putih', 'Nippon Paint', '200.000', '350.000', 'Pail', '20', '25 July 2024, 20:17', NULL),
(20, 'BR019', 8, 'Thiner Impala', 'Impala', '97.000', '145.000', 'Galon', '30', '25 July 2024, 20:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(1, 'Bahan Berat', '7 May 2017, 10:23'),
(5, 'Cat Tembok', '7 May 2017, 10:28'),
(6, 'Cat Minyak', '6 October 2020, 0:19'),
(7, 'Fiber Pagar', '6 October 2020, 0:20'),
(8, 'Peralatan Ringan', '24 July 2024, 21:52');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`, `id_member`) VALUES
(1, 'Salmizoromi', '20ba54e0e266ce2e79d35ebdbc9d5a6a', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`) VALUES
(1, 'Salmiyanti Zoromi', 'Jakarta Barat Puri Kembangan DKI Jakarta', '085781090063', 'yantizoromi@gmail.com', '1721913275_pp.png', '1231412156');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_nota`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`, `periode`) VALUES
(1, 'BR002', 1, '1', '58.000', '18 July 2024, 23:03', '07-2024'),
(2, 'BR006', 1, '1', '65.000', '18 July 2024, 23:03', '07-2024'),
(3, 'BR004', 1, '1', '70.000', '18 July 2024, 23:03', '07-2024'),
(4, 'BR008', 1, '1', '10.000', '24 July 2024, 21:56', '07-2024'),
(5, 'BR009', 1, '1', '15.000', '24 July 2024, 21:57', '07-2024'),
(6, 'BR008', 1, '1', '10.000', '24 July 2024, 21:56', '07-2024'),
(7, 'BR009', 1, '1', '15.000', '24 July 2024, 21:57', '07-2024'),
(8, 'BR008', 1, '1', '10.000', '24 July 2024, 21:56', '07-2024'),
(9, 'BR009', 1, '1', '15.000', '24 July 2024, 21:57', '07-2024');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`) VALUES
(4, 'BR008', 1, '1', '10.000', '24 July 2024, 21:56'),
(5, 'BR009', 1, '1', '15.000', '24 July 2024, 21:57');

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
(1, 'PT. Dharma Inti Tritunggal', 'Jl. Kembangan Utara Jakarta Barat DKI Jakarta No.99', '081234567890', 'William Thomas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
