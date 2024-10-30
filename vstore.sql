-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2024 at 02:42 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `detailpenjualan`
--

CREATE TABLE `detailpenjualan` (
  `idpenjualan` int(11) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `subtotal` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `idpenjualan` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `status` enum('pending','proses','selesai','dibatalkan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` enum('customer','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`) VALUES
(1, 'vtri', '$2y$10$evvCKohqOwC0B4KdaHJZ2OJrrT3AOOvrZx1nboSqijyenD1pJOgxC', 'customer'),
(2, 'amel', '$2y$10$jUJwTbZv8N8Q7EQa.VP/MOK1oaerMN5jSqtYqujXI6SVSzmyh7JcK', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  ADD KEY `idproduk` (`idproduk`),
  ADD KEY `idpenjualan` (`idpenjualan`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`idpenjualan`),
  ADD KEY `iduser` (`iduser`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  ADD CONSTRAINT `detailpenjualan_ibfk_1` FOREIGN KEY (`idproduk`) REFERENCES `produk` (`idproduk`),
  ADD CONSTRAINT `detailpenjualan_ibfk_2` FOREIGN KEY (`idpenjualan`) REFERENCES `penjualan` (`idpenjualan`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
