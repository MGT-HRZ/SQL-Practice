-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 12:40 PM
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
-- Database: `venturacarrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `kereta`
--

CREATE TABLE `kereta` (
  `NoPendaftaran` varchar(50) NOT NULL,
  `Jenama` varchar(50) NOT NULL,
  `Model` varchar(50) NOT NULL,
  `Harga` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kereta`
--

INSERT INTO `kereta` (`NoPendaftaran`, `Jenama`, `Model`, `Harga`) VALUES
('BMX6200', 'Hyundai', 'Elantra', 200),
('BNQ6866', 'Perodua', 'Myvi', 150),
('BPA7880', 'Proton', 'Exora', 300),
('JPQ7979', 'Perodua', 'Viva', 80),
('JSE6869', 'Proton', 'Saga', 150),
('VAP8048', 'Honda', 'City', 230),
('WA7698H', 'Proton', 'Exora', 300);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `ICPelanggan` varchar(20) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Jantina` char(1) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Negeri` varchar(50) NOT NULL,
  `NoHP` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`ICPelanggan`, `Nama`, `Jantina`, `Alamat`, `Negeri`, `NoHP`) VALUES
('780131565100', 'Nur Anisah binti Zulkifli', 'P', 'Sungai Petani', 'Kedah', '601312345678'),
('880309105121', 'Helmi bin Harris', 'L', 'Bukit Mertajam', 'Pulau Pinang', '601130304040'),
('910517048110', 'Siti Zulaikha binti Ismail', 'P', 'Batu Pahat', 'Johor', '601133005656'),
('950428067875', 'Muhammad Ali bin Adam', 'L', 'Sepang', 'Selangor', '601798765432'),
('991225045354', 'Nurul Amirah binti Junaidi', 'P', 'Nilai', 'Negeri Sembilan', '601400228888');

-- --------------------------------------------------------

--
-- Table structure for table `tempahan`
--

CREATE TABLE `tempahan` (
  `OrderID` int(11) NOT NULL,
  `ICPelanggan` varchar(20) NOT NULL,
  `NoPendaftaran` varchar(50) NOT NULL,
  `Hari` int(11) NOT NULL,
  `Jumlah` int(11) NOT NULL,
  `TarikhMula` date DEFAULT NULL,
  `TarikhTamat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tempahan`
--

INSERT INTO `tempahan` (`OrderID`, `ICPelanggan`, `NoPendaftaran`, `Hari`, `Jumlah`, `TarikhMula`, `TarikhTamat`) VALUES
(1, '780131565100', 'BMX6200', 1, 200, '2021-10-15', '2021-10-15'),
(2, '880309105121', 'JPQ7979', 3, 240, '2021-10-15', '2021-10-17'),
(3, '950428067875', 'VAP8048', 2, 460, '2021-11-19', '2021-11-20'),
(4, '991225045354', 'JSE6869', 1, 150, '2021-11-23', '2021-11-23'),
(5, '910517048110', 'WA7698H', 2, 600, '2021-12-05', '2021-12-06'),
(6, '880309105121', 'JPQ7979', 5, 400, '2021-12-14', '2021-12-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kereta`
--
ALTER TABLE `kereta`
  ADD PRIMARY KEY (`NoPendaftaran`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`ICPelanggan`);

--
-- Indexes for table `tempahan`
--
ALTER TABLE `tempahan`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `ICPelanggan` (`ICPelanggan`),
  ADD KEY `NoPendaftaran` (`NoPendaftaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tempahan`
--
ALTER TABLE `tempahan`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tempahan`
--
ALTER TABLE `tempahan`
  ADD CONSTRAINT `tempahan_ibfk_1` FOREIGN KEY (`ICPelanggan`) REFERENCES `pelanggan` (`ICPelanggan`),
  ADD CONSTRAINT `tempahan_ibfk_2` FOREIGN KEY (`NoPendaftaran`) REFERENCES `kereta` (`NoPendaftaran`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
