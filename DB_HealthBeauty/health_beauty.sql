-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2023 at 01:20 PM
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
-- Database: `health_beauty`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id_brand` int(11) NOT NULL,
  `brand_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id_brand`, `brand_name`) VALUES
(1, 'Abbot'),
(2, 'Live well'),
(3, 'Blackmores'),
(4, 'Bio-Life'),
(5, 'Blogland'),
(6, 'Forlax'),
(7, 'GKB');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `no_item` varchar(10) NOT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `item_size` int(11) DEFAULT NULL,
  `item_brand` int(11) DEFAULT NULL,
  `item_price` float(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`no_item`, `item_name`, `item_size`, `item_brand`, `item_price`) VALUES
('V781', 'Zinc B-Plus', 30, 1, 54.00),
('V782', 'C Burst 1000mg', 30, 2, 32.00),
('V783', 'Magnesium', 50, 3, 46.00),
('V784', 'Calcium+d3', 120, 3, 43.30),
('V785', 'Executive B Complex', 30, 4, 45.00),
('V786', 'Multivitamins + Minerals', 100, 4, 74.00),
('V787', 'Buffered C', 100, 3, 159.00);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_desc`
--

CREATE TABLE `purchase_desc` (
  `no_purchase` varchar(10) NOT NULL,
  `date_purchase` date DEFAULT NULL,
  `cashier` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_desc`
--

INSERT INTO `purchase_desc` (`no_purchase`, `date_purchase`, `cashier`) VALUES
('0145', '2023-02-15', 'Intan'),
('0190', '2023-02-15', 'Anna'),
('0545', '2023-02-12', 'Qaseh'),
('0865', '2023-02-12', 'Anna'),
('1545', '2023-02-14', 'Halimah');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_item`
--

CREATE TABLE `purchase_item` (
  `id_purchase` int(11) NOT NULL,
  `no_purchase` varchar(10) DEFAULT NULL,
  `no_item` varchar(10) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_item`
--

INSERT INTO `purchase_item` (`id_purchase`, `no_purchase`, `no_item`, `quantity`) VALUES
(1, '0865', 'V784', 1),
(2, '0865', 'V787', 1),
(3, '1545', 'V783', 2),
(4, '0545', 'V781', 3),
(5, '0545', 'V787', 1),
(6, '0145', 'V782', 1),
(7, '0190', 'V781', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id_brand`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`no_item`);

--
-- Indexes for table `purchase_desc`
--
ALTER TABLE `purchase_desc`
  ADD PRIMARY KEY (`no_purchase`);

--
-- Indexes for table `purchase_item`
--
ALTER TABLE `purchase_item`
  ADD PRIMARY KEY (`id_purchase`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id_brand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `purchase_item`
--
ALTER TABLE `purchase_item`
  MODIFY `id_purchase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
