-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2022 at 05:58 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tiket_bus`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_akun`
--

CREATE TABLE IF NOT EXISTS `daftar_akun` (
  `Nama` varchar(100) NOT NULL,
  `TTL` varchar(100) NOT NULL,
  `Jenis_Kelamin` varchar(20) NOT NULL,
  `Alamat` varchar(150) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_akun`
--

INSERT INTO `daftar_akun` (`Nama`, `TTL`, `Jenis_Kelamin`, `Alamat`, `Email`, `Password`) VALUES
('Amid Rakhman', 'Kebumen, 21 Februari 1997', 'Laki-laki', 'PerumNas, Karawang', 'amid@gmail.com', 'amid'),
('Anita Rahayu', 'Sleman, 02 Februari 1998', 'Perempuan', 'Karawang barat', 'anitaR@gmail.com', 'anita'),
('Muhammad Eko Romadhon', 'SLEMAN, 27 JANUARI 1997', 'Laki-laki', 'Perum Regency Jl. Onik 1 No.12 RT001/RW013, Cikampek Utara, KotaBaru, Karawang', 'mekoromad17@gmail.com', 'eko'),
('Satriyo Aji Laksono', 'Klaten, 18 Juli 1997', 'Laki-laki', 'Perum Pahlawan, Karawang', 'satriyo@gmail.com', 'satriyo'),
('Tanto', 'Karawang, 01 Januari 2013', 'Laki-laki', 'puseurjaya', 'tanto@gmai.com', 'tanto');

-- --------------------------------------------------------

--
-- Table structure for table `laporan_tiket`
--

CREATE TABLE IF NOT EXISTS `laporan_tiket` (
  `Tanggal` varchar(30) NOT NULL,
  `Nama` varchar(150) NOT NULL,
  `No_Handphone` varchar(20) NOT NULL,
  `Tipe_Bus` varchar(15) NOT NULL,
  `No_Kursi` int(15) NOT NULL,
  `Asal` varchar(50) NOT NULL,
  `Tujuan` varchar(50) NOT NULL,
  `Jam` varchar(100) NOT NULL,
  `Total_Harga` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan_tiket`
--

INSERT INTO `laporan_tiket` (`Tanggal`, `Nama`, `No_Handphone`, `Tipe_Bus`, `No_Kursi`, `Asal`, `Tujuan`, `Jam`, `Total_Harga`) VALUES
('21 Februari 2019', 'Muhammad Eko', '082211700097', 'VIP', 1, 'Terminal Cikampek', 'Terminal Karawang', '07:00WIB (Pagi)', 55000),
('07 Januari 2019', 'Amid Rakhman', '081300889011', 'Patas', 2, 'Terminal Karawang', 'Terminal Jakarta', '13:00WIB (Siang)', 80000),
('06 Januari 2019', 'Satriyo', '082280991011', 'Executive', 3, 'Terminal Purwakarta', 'Terminal Cikarang', '19:00WIB (Malam)', 110000),
('01 Januari 2019', 'tanto', '123456', 'VIP', 6, 'Terminal Cikampek', 'Terminal Karawang', '07:00WIB (Pagi)', 55000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_akun`
--
ALTER TABLE `daftar_akun`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `laporan_tiket`
--
ALTER TABLE `laporan_tiket`
  ADD PRIMARY KEY (`No_Kursi`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
