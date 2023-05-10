-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2023 at 06:34 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistempenyewaanvideo`
--

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `NoPelanggan` varchar(10) NOT NULL,
  `NamaPelanggan` varchar(100) NOT NULL,
  `NoKP` varchar(50) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `NoTel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`NoPelanggan`, `NamaPelanggan`, `NoKP`, `Alamat`, `NoTel`) VALUES
('001', 'Hanis Izzati Binti Hazmirul Azmi', '700210-03-6140', 'Balakong', '03-51622017'),
('002', 'Syamsul Azri Bin Muhammad Amin', '800319-14-5562', 'Kajang', '03-82330312'),
('003', 'Abdul Razak bin Abdul Muhaimin', '630314-01-4442', 'Seri Kembangan', '03-84229013'),
('004', 'Mashitah Aliya binti Azril', '901221-10-6234', 'Putrajaya', '03-88813445'),
('005', 'Munzir Al Hakem Bin Azhari', '800521-14-6032', 'Bangi', '03-83218803'),
('006', 'Nadia Nabila Binti Mohammad Hakimi', '901112-14-5046', 'Kajang', '03-88562314');

-- --------------------------------------------------------

--
-- Table structure for table `penyewaan`
--

CREATE TABLE `penyewaan` (
  `NoPenyewaan` varchar(10) NOT NULL,
  `NoPelanggan` varchar(10) NOT NULL,
  `NoVideo` varchar(10) NOT NULL,
  `TarikhSewa` date NOT NULL,
  `BilVideo` int(11) NOT NULL,
  `JumlahBayaran` float(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyewaan`
--

INSERT INTO `penyewaan` (`NoPenyewaan`, `NoPelanggan`, `NoVideo`, `TarikhSewa`, `BilVideo`, `JumlahBayaran`) VALUES
('011', '004', '021', '2017-01-28', 2, 8.00),
('012', '003', '022', '2018-02-14', 2, 12.00),
('013', '001', '024', '2019-03-16', 1, 7.00),
('014', '001', '023', '2019-02-10', 1, 5.00),
('015', '006', '025', '2018-12-21', 1, 7.00);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `NoVideo` varchar(10) NOT NULL,
  `NoPelanggan` varchar(10) NOT NULL,
  `Tajuk` varchar(100) NOT NULL,
  `KadarSewa` float(5,2) NOT NULL,
  `TarikhKeluaran` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`NoVideo`, `NoPelanggan`, `Tajuk`, `KadarSewa`, `TarikhKeluaran`) VALUES
('021', '004', 'Aladdin', 4.00, '2005-01-01'),
('022', '003', 'Conjuring', 6.00, '2007-02-15'),
('023', '001', 'Cinderella', 5.00, '2005-03-21'),
('024', '001', 'Star Wars', 7.00, '2017-05-12'),
('025', '006', 'Transformers', 7.00, '2018-12-31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`NoPelanggan`);

--
-- Indexes for table `penyewaan`
--
ALTER TABLE `penyewaan`
  ADD PRIMARY KEY (`NoPenyewaan`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`NoVideo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
