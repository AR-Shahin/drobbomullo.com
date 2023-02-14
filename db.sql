-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 14, 2023 at 07:55 AM
-- Server version: 10.3.36-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `drobbomu_drobbomullo`
--

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE `link` (
  `id` int(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `chaldal_link` varchar(255) NOT NULL,
  `paikaree_link` varchar(255) DEFAULT NULL,
  `meenaclick_link` varchar(255) DEFAULT NULL,
  `othoba_link` varchar(255) DEFAULT NULL,
  `jogaan_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `link`
--

INSERT INTO `link` (`id`, `item_name`, `category`, `subcategory`, `chaldal_link`, `paikaree_link`, `meenaclick_link`, `othoba_link`, `jogaan_link`) VALUES
(56, 'Pierre Cardin Roll Act Lashes Curl & Volume Mascara', 'Beauty & Makeup', 'eyes', 'https://chaldal.com/pierre-cardin-roll-act-lashes-curl-volume-mascara-1-pcs', NULL, NULL, NULL, NULL),
(57, 'Pierre Cardin Automatic Eyeliner Waterproof', 'Beauty & Makeup', 'eyes', 'https://chaldal.com/pierre-cardin-automatic-eyeliner-waterproof-1-pcs', NULL, NULL, NULL, NULL),
(58, 'Pierre Cardin Smokey Eyeliner Waterproof', 'Beauty & Makeup', 'eyes', 'https://chaldal.com/pierre-cardin-smokey-eyeliner-waterproof-1-pcs', NULL, NULL, NULL, NULL),
(59, 'Pierre Cardin Eyeliner Kohl Kajal', 'Beauty & Makeup', 'eyes', 'https://chaldal.com/pierre-cardin-eyeliner-kohl-kajal-1-pcs', NULL, NULL, NULL, NULL),
(60, 'TIS Au Natural Eyelashes 3 Pair 1 set', 'Beauty & Makeup', 'eyes', 'https://chaldal.com/tis-au-natural-eyelashes-3-pair-1-set', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `main_table`
--

CREATE TABLE `main_table` (
  `id` int(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `extra` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_table`
--

INSERT INTO `main_table` (`id`, `item_name`, `category`, `subcategory`, `weight`, `image`, `extra`) VALUES
(60, 'Pierre Cardin Roll Act Lashes Curl & Volume Mascara', 'Beauty & Makeup', 'eyes', 'each', 'Pierre-Cardin-Roll-Act-Lashes-Curl-&-Volume-Mascara.jpg', 'somethingextra'),
(61, 'Pierre Cardin Automatic Eyeliner Waterproof', 'Beauty & Makeup', 'eyes', 'each', 'Pierre-Cardin-Automatic-Eyeliner-Waterproof.jpg', 'somethingextra'),
(62, 'Pierre Cardin Smokey Eyeliner Waterproof', 'Beauty & Makeup', 'eyes', 'each', 'Pierre-Cardin-Smokey-Eyeliner-Waterproof.jpg', 'somethingextra'),
(63, 'Pierre Cardin Eyeliner Kohl Kajal', 'Beauty & Makeup', 'eyes', 'each', 'Pierre-Cardin-Eyeliner-Kohl-Kajal.jpg', 'somethingextra'),
(64, 'TIS Au Natural Eyelashes 3 Pair 1 set', 'Beauty & Makeup', 'eyes', '', 'TIS-Au-Natural-Eyelashes-3-Pair-1-set.jpg', 'somethingextra');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` int(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `chaldal_price` varchar(255) NOT NULL,
  `paikaree_price` varchar(255) DEFAULT NULL,
  `meenaclick_price` varchar(255) DEFAULT NULL,
  `othoba_price` varchar(255) DEFAULT NULL,
  `jogaan_price` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id`, `item_name`, `category`, `subcategory`, `chaldal_price`, `paikaree_price`, `meenaclick_price`, `othoba_price`, `jogaan_price`) VALUES
(56, 'Pierre Cardin Roll Act Lashes Curl & Volume Mascara', 'Beauty & Makeup', 'eyes', ' 600', NULL, NULL, NULL, NULL),
(57, 'Pierre Cardin Automatic Eyeliner Waterproof', 'Beauty & Makeup', 'eyes', ' 750', NULL, NULL, NULL, NULL),
(58, 'Pierre Cardin Smokey Eyeliner Waterproof', 'Beauty & Makeup', 'eyes', ' 980', NULL, NULL, NULL, NULL),
(59, 'Pierre Cardin Eyeliner Kohl Kajal', 'Beauty & Makeup', 'eyes', ' 400', NULL, NULL, NULL, NULL),
(60, 'TIS Au Natural Eyelashes 3 Pair 1 set', 'Beauty & Makeup', 'eyes', ' 2,400', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testing`
--

CREATE TABLE `testing` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testing`
--

INSERT INTO `testing` (`id`, `name`, `number`, `address`) VALUES
(1, 'John', '879654', 'john@example.com'),
(2, 'najim', '88888', 'sjdhakhsd'),
(3, '', '', ''),
(4, 'fahim', '01912812', 'dakshinkhan'),
(5, '', '', ''),
(6, 'PHP', '8977989', 'uttarkhan'),
(7, 'PHP', '8977989', 'uttarkhan'),
(8, 'fahim', '01912812', 'dakshinkhan'),
(9, 'najim', '0000', 'dakshinkhan'),
(10, 'shahin', '01999999', 'mohakhali'),
(11, 'keeita', '00112233', 'mohakhali'),
(12, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `testing2`
--

CREATE TABLE `testing2` (
  `id` int(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `extra` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testing2`
--

INSERT INTO `testing2` (`id`, `item_name`, `category`, `subcategory`, `weight`, `image`, `extra`) VALUES
(848, 'Pierre Cardin Roll Act Lashes Curl & Volume Mascara', 'Beauty & Makeup', 'eyes', 'each', 'Pierre-Cardin-Roll-Act-Lashes-Curl-&-Volume-Mascara.jpg', 'somethingextra'),
(849, 'Pierre Cardin Automatic Eyeliner Waterproof', 'Beauty & Makeup', 'eyes', 'each', 'Pierre-Cardin-Automatic-Eyeliner-Waterproof.jpg', 'somethingextra'),
(850, 'Pierre Cardin Smokey Eyeliner Waterproof', 'Beauty & Makeup', 'eyes', 'each', 'Pierre-Cardin-Smokey-Eyeliner-Waterproof.jpg', 'somethingextra'),
(851, 'Pierre Cardin Eyeliner Kohl Kajal', 'Beauty & Makeup', 'eyes', 'each', 'Pierre-Cardin-Eyeliner-Kohl-Kajal.jpg', 'somethingextra'),
(852, 'TIS Au Natural Eyelashes 3 Pair 1 set', 'Beauty & Makeup', 'eyes', '', 'TIS-Au-Natural-Eyelashes-3-Pair-1-set.jpg', 'somethingextra');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_table`
--
ALTER TABLE `main_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testing`
--
ALTER TABLE `testing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testing2`
--
ALTER TABLE `testing2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `main_table`
--
ALTER TABLE `main_table`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `testing`
--
ALTER TABLE `testing`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `testing2`
--
ALTER TABLE `testing2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=853;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
