-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 14, 2023 at 09:32 AM
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
(60, 'TIS Au Natural Eyelashes 3 Pair 1 set', 'Beauty & Makeup', 'eyes', 'https://chaldal.com/tis-au-natural-eyelashes-3-pair-1-set', NULL, NULL, NULL, NULL),
(61, 'Satej Fortified Soyabean Oil', 'Food', 'cooking', 'https://chaldal.com/satej-fortified-soyabean-oil-5-ltr-2', NULL, NULL, NULL, NULL),
(62, 'Teer Fortified Soyabean Oil', 'Food', 'cooking', 'https://chaldal.com/teer-soyabean-oil-5-ltr-5', NULL, NULL, NULL, NULL),
(63, 'Fresh Fortified Soyabean Oil', 'Food', 'cooking', 'https://chaldal.com/fresh-fortified-soyabean-oil-5-ltr', NULL, NULL, NULL, NULL),
(64, 'Teer Fortified Soyabean Oil', 'Food', 'cooking', 'https://chaldal.com/teer-soyabean-oil-2-ltr-5', NULL, NULL, NULL, NULL),
(65, 'Fresh Fortified Soyabean Oil', 'Food', 'cooking', 'https://chaldal.com/fresh-fortified-soyabean-oil-2-ltr', NULL, NULL, NULL, NULL),
(66, 'Rupchanda Fortified Soyabean Oil', 'Food', 'cooking', 'https://chaldal.com/rupchanda-soyabean-oil-5-ltr-5', NULL, NULL, NULL, NULL),
(67, 'Radhuni Pure Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/radhuni-pure-mustard-oil-500-ml', NULL, NULL, NULL, NULL),
(68, 'Akij Essential Fortified Soybean Oil', 'Food', 'cooking', 'https://chaldal.com/akij-essential-fortified-soybean-oil-1-ltr', NULL, NULL, NULL, NULL),
(69, 'Rupchanda Fortified Soyabean Oil', 'Food', 'cooking', 'https://chaldal.com/rupchanda-soyabean-oil-2-ltr-5', NULL, NULL, NULL, NULL),
(70, 'Teer Fortified Soyabean Oil (Poly)', 'Food', 'cooking', 'https://chaldal.com/teer-soyabean-oil-poly-1-ltr', NULL, NULL, NULL, NULL),
(71, 'Radhuni Pure Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/radhuni-pure-mustard-oil-1-ltr', NULL, NULL, NULL, NULL),
(72, 'ACME Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/acme-mustard-oil-200-ml', NULL, NULL, NULL, NULL),
(73, 'Fresh Fortified Soyabean Oil (Poly)', 'Food', 'cooking', 'https://chaldal.com/fresh-soyabean-oil-poly-1-ltr', NULL, NULL, NULL, NULL),
(74, 'Pusti Fortified Soyabean Oil', 'Food', 'cooking', 'https://chaldal.com/pusti-fortified-soyabean-oil-5-ltr', NULL, NULL, NULL, NULL),
(75, 'Akij Essential Fortified Soybean Oil', 'Food', 'cooking', 'https://chaldal.com/akij-essential-fortified-soybean-oil-2-ltr', NULL, NULL, NULL, NULL),
(76, 'Olitalia Fortified Sunflower Oil', 'Food', 'cooking', 'https://chaldal.com/olitalia-fortified-sunflower-oil-2-ltr', NULL, NULL, NULL, NULL),
(77, 'Royal Chef Fortified Sunflower Oil', 'Food', 'cooking', 'https://chaldal.com/royal-chef-sunflower-oil-5-ltr', NULL, NULL, NULL, NULL),
(78, 'Saffola Active Plus Edible Oil', 'Food', 'cooking', 'https://chaldal.com/saffola-active-plus-edible-oil-5-ltr', NULL, NULL, NULL, NULL),
(79, 'Fresh Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/fresh-mustard-oil-1-ltr', NULL, NULL, NULL, NULL),
(80, 'Olitalia Fortified Sunflower Oil', 'Food', 'cooking', 'https://chaldal.com/olitalia-fortified-sunflower-oil-5-ltr', NULL, NULL, NULL, NULL),
(81, 'Italiano Pure Olive Oil', 'Food', 'cooking', 'https://chaldal.com/italiano-pure-olive-oil-100-ml', NULL, NULL, NULL, NULL),
(82, 'Zaytoon Extra Virgin Olive Oil', 'Food', 'cooking', 'https://chaldal.com/zaytoon-extra-virgin-olive-oil-100-ml', NULL, NULL, NULL, NULL),
(83, 'Olio Orolio Olive Oil', 'Food', 'cooking', 'https://chaldal.com/olio-orolio-olive-oil-1-ltr', NULL, NULL, NULL, NULL),
(84, 'Dihan Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/dihan-mustard-oil-500-ml', NULL, NULL, NULL, NULL),
(85, 'Olio Orolio Extra Virgin Olive Oil', 'Food', 'cooking', 'https://chaldal.com/olio-orolio-extra-virgin-olive-oil-500-ml', NULL, NULL, NULL, NULL),
(86, 'Olio Orolio Olive Oil', 'Food', 'cooking', 'https://chaldal.com/olio-orolio-olive-oil-500-ml', NULL, NULL, NULL, NULL),
(87, 'Olio Orolio Extra Virgin Olive Oil', 'Food', 'cooking', 'https://chaldal.com/olio-orolio-extra-virgin-olive-oil-750-ml', NULL, NULL, NULL, NULL),
(88, 'Olio Orolio Extra Virgin Olive Oil', 'Food', 'cooking', 'https://chaldal.com/olio-orolio-extra-virgin-olive-oil-3-ltr', NULL, NULL, NULL, NULL),
(89, 'Orkide Sunflower Oil', 'Food', 'cooking', 'https://chaldal.com/orkide-sunflower-oil-offer-5-ltr', NULL, NULL, NULL, NULL),
(90, 'Olio Orolio Massage Oil', 'Food', 'cooking', 'https://chaldal.com/olio-orolio-massage-oil-150-ml', NULL, NULL, NULL, NULL),
(91, 'Sunshine Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/sunshine-mustard-oil-1-ltr', NULL, NULL, NULL, NULL),
(92, 'Olio Orolio Olive Oil', 'Food', 'cooking', 'https://chaldal.com/olio-orolio-olive-oil-750-ml', NULL, NULL, NULL, NULL),
(93, 'Satej Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/satej-mustard-oil-1-ltr', NULL, NULL, NULL, NULL),
(94, 'Satej Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/satej-mustard-oil-500-ml', NULL, NULL, NULL, NULL),
(95, 'Satej Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/satej-mustard-oil-80-ml', NULL, NULL, NULL, NULL),
(96, 'Oillina Extra Virgin Olive Oil (Free 500 ml)', 'Food', 'cooking', 'https://chaldal.com/oillina-extra-virgin-olive-oil-free-500-ml-1-ltr', NULL, NULL, NULL, NULL),
(97, 'Tekka Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/tekka-mustard-oil-5-ltr', NULL, NULL, NULL, NULL),
(98, 'Tekka Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/tekka-mustard-oil-1-ltr', NULL, NULL, NULL, NULL),
(99, 'Tekka Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/tekka-mustard-oil-500-ml', NULL, NULL, NULL, NULL),
(100, 'Tekka Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/tekka-mustard-oil-200-ml', NULL, NULL, NULL, NULL),
(101, 'Ghani Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/ghani-mustard-oil-1-ltr', NULL, NULL, NULL, NULL),
(102, 'Ghani Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/ghani-mustard-oil-500-ml', NULL, NULL, NULL, NULL),
(103, 'Ghani Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/ghani-mustard-oil-200-ml', NULL, NULL, NULL, NULL),
(104, 'Ekata Sesame (Til) Oil', 'Food', 'cooking', 'https://chaldal.com/ekata-sesame-til-oil-100-gm', NULL, NULL, NULL, NULL),
(105, 'Buniyadi Pure Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/buniyadi-pure-mustard-oil-200-ml', NULL, NULL, NULL, NULL),
(106, 'Minerva Extra Virgin Olive Oil', 'Food', 'cooking', 'https://chaldal.com/minerva-extra-virgin-olive-oil-500-ml', NULL, NULL, NULL, NULL),
(107, 'Clariss Olive Oil Pomace Glass Bottle', 'Food', 'cooking', 'https://chaldal.com/clariss-olive-oil-pomace-glass-bottle-250-ml', NULL, NULL, NULL, NULL),
(108, 'Oro De Canava Extra Virgin Olive Oil', 'Food', 'cooking', 'https://chaldal.com/oro-de-canava-extra-virgin-olive-oil-1-ltr', NULL, NULL, NULL, NULL),
(109, 'Ceylon Organic Extra Virgin Coconut Oil', 'Food', 'cooking', 'https://chaldal.com/ceylon-organic-extra-virgin-coconut-oil-200-ml-2', NULL, NULL, NULL, NULL),
(110, 'Palermo Organic Extra Virgin Olive Oil', 'Food', 'cooking', 'https://chaldal.com/palermo-organic-extra-virgin-olive-oil-500-ml', NULL, NULL, NULL, NULL),
(111, 'Palermo Extra Virgin Olive Oil', 'Food', 'cooking', 'https://chaldal.com/palermo-extra-virgin-olive-oil-500-ml', NULL, NULL, NULL, NULL),
(112, 'Rose Garden Pomace Glass (Blinded With Extra Virgin Olive)', 'Food', 'cooking', 'https://chaldal.com/rose-garden-pomace-glass-blinded-with-extra-virgin-olive-500-ml', NULL, NULL, NULL, NULL),
(113, 'Rose Garden Extra Virgin Olive Oil Pet ( First Cold Press )', 'Food', 'cooking', 'https://chaldal.com/rose-garden-extra-virgin-olive-oil-pet-first-cold-press-1-ltr', NULL, NULL, NULL, NULL),
(114, 'Alianza Pomace Olive Oil', 'Food', 'cooking', 'https://chaldal.com/alianza-pomace-olive-oil-500-ml', NULL, NULL, NULL, NULL),
(115, 'Home Makers Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/home-makers-mustard-oil-500-ml', NULL, NULL, NULL, NULL),
(116, 'Spanisha Extra Virgin Oilve Oil', 'Food', 'cooking', 'https://chaldal.com/spanisha-extra-virgin-oilve-oil-1-ltr', NULL, NULL, NULL, NULL),
(117, 'Basso Extra Virgin Olive Oil', 'Food', 'cooking', 'https://chaldal.com/basso-extra-virgin-olive-oil-1-ltr', NULL, NULL, NULL, NULL),
(118, 'Desh Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/desh-mustard-oil-500-ml', NULL, NULL, NULL, NULL),
(119, 'Dhakaiya Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/dhakaiya-mustard-oil-500-ml', NULL, NULL, NULL, NULL),
(120, 'Pusti Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/pusti-mustard-oil-2-ltr', NULL, NULL, NULL, NULL),
(121, 'Luglio Sunflower Oil', 'Food', 'cooking', 'https://chaldal.com/luglio-sunflower-oil-5-ltr', NULL, NULL, NULL, NULL),
(122, 'Luglio Extra Virgin Olive Oil', 'Food', 'cooking', 'https://chaldal.com/luglio-extra-virgin-olive-oil-1-ltr', NULL, NULL, NULL, NULL),
(123, 'La Espanola Pomace Olive Oil', 'Food', 'cooking', 'https://chaldal.com/olive-oil-la-espanola-pomace-1-ltr', NULL, NULL, NULL, NULL),
(124, 'Oillina Extra Virgin Olive Oil', 'Food', 'cooking', 'https://chaldal.com/oillina-extra-virgin-olive-oil-250-ml', NULL, NULL, NULL, NULL),
(125, 'Oillina Extra Virgin Olive Oil', 'Food', 'cooking', 'https://chaldal.com/oillina-extra-virgin-olive-oil-1-ltr', NULL, NULL, NULL, NULL),
(126, 'Palermo Extra Virgin Olive Oil', 'Food', 'cooking', 'https://chaldal.com/palermo-extra-virgin-olive-oil-1-ltr', NULL, NULL, NULL, NULL),
(127, 'Palermo Avocado Oil', 'Food', 'cooking', 'https://chaldal.com/palermo-avocado-oil-500-ml', NULL, NULL, NULL, NULL),
(128, 'Farmroots Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/farmroots-mustard-oil-500-ml', NULL, NULL, NULL, NULL),
(129, 'Borges Classic Olive Oil', 'Food', 'cooking', 'https://chaldal.com/borges-classic-olive-oil-500-ml', NULL, NULL, NULL, NULL),
(130, 'Ceylon Organic Extra Virgin Coconut Oil', 'Food', 'cooking', 'https://chaldal.com/ceylon-organic-extra-virgin-coconut-oil-500-ml', NULL, NULL, NULL, NULL),
(131, 'Agrilife Organic Extra Virgin Olive Oil', 'Food', 'cooking', 'https://chaldal.com/agarilife-organic-extra-virgin-olive-oil-500-ml', NULL, NULL, NULL, NULL),
(132, 'Sabroso Extra Virgin Olive Oil', 'Food', 'cooking', 'https://chaldal.com/sabroso-extra-virgin-olive-oil-500-ml', NULL, NULL, NULL, NULL),
(133, 'Naturel Organic Extra Virgin Olive Oil', 'Food', 'cooking', 'https://chaldal.com/naturel-organic-extra-virgin-olive-oil-500-ml', NULL, NULL, NULL, NULL),
(134, 'La Espanola Extra Virgin Olive Oil', 'Food', 'cooking', 'https://chaldal.com/la-espanola-extra-virgin-olive-oil-500-ml', NULL, NULL, NULL, NULL),
(135, 'Arku Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/arku-mustard-oil-500-gm', NULL, NULL, NULL, NULL),
(136, 'Ifad Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/ifad-mustard-oil-500-ml', NULL, NULL, NULL, NULL),
(137, 'Pusti Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/pusti-mustard-oil-500-ml', NULL, NULL, NULL, NULL),
(138, 'Fresh Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/fresh-mustard-oil-500-ml-2', NULL, NULL, NULL, NULL),
(139, 'Clariss Olive Oil Pomace', 'Food', 'cooking', 'https://chaldal.com/clariss-olive-oil-pomace-175-ml', NULL, NULL, NULL, NULL),
(140, 'Sajeeb Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/sajeeb-mustard-oil-500-ml', NULL, NULL, NULL, NULL),
(141, 'Borges Pomace Olive Oil', 'Food', 'cooking', 'https://chaldal.com/borges-pomace-olive-oil-1-ltr', NULL, NULL, NULL, NULL),
(142, 'Borges Extra Light Olive Oil', 'Food', 'cooking', 'https://chaldal.com/borges-extra-light-olive-oil-500-ml', NULL, NULL, NULL, NULL),
(143, 'Pran Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/pran-mustard-oil-500-ml-2', NULL, NULL, NULL, NULL),
(144, 'YO WE Fragrance Sesame Oil', 'Food', 'cooking', 'https://chaldal.com/yo-we-fragrance-sesame-oil-630-ml', NULL, NULL, NULL, NULL),
(145, 'Pran Mustard Oil', 'Food', 'cooking', 'https://chaldal.com/pran-mustard-oil-500-ml', NULL, NULL, NULL, NULL),
(146, 'Olitalia Pomace Olive Oil', 'Food', 'cooking', 'https://chaldal.com/olitalia-pomace-olive-oil-500-ml', NULL, NULL, NULL, NULL);

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
(64, 'TIS Au Natural Eyelashes 3 Pair 1 set', 'Beauty & Makeup', 'eyes', '', 'TIS-Au-Natural-Eyelashes-3-Pair-1-set.jpg', 'somethingextra'),
(65, 'Satej Fortified Soyabean Oil', 'Food', 'cooking', '5 ltr', 'Satej-Fortified-Soyabean-Oil.jpg', 'somethingextra'),
(66, 'Teer Fortified Soyabean Oil', 'Food', 'cooking', '5 ltr', 'Teer-Fortified-Soyabean-Oil.jpg', 'somethingextra'),
(67, 'Fresh Fortified Soyabean Oil', 'Food', 'cooking', '5 ltr', 'Fresh-Fortified-Soyabean-Oil.jpg', 'somethingextra'),
(68, 'Teer Fortified Soyabean Oil', 'Food', 'cooking', '2 ltr', 'Teer-Fortified-Soyabean-Oil.jpg', 'somethingextra'),
(69, 'Fresh Fortified Soyabean Oil', 'Food', 'cooking', '2 ltr', 'Fresh-Fortified-Soyabean-Oil.jpg', 'somethingextra'),
(70, 'Rupchanda Fortified Soyabean Oil', 'Food', 'cooking', '5 ltr', 'Rupchanda-Fortified-Soyabean-Oil.jpg', 'somethingextra'),
(71, 'Radhuni Pure Mustard Oil', 'Food', 'cooking', '500 ml', 'Radhuni-Pure-Mustard-Oil.jpg', 'somethingextra'),
(72, 'Akij Essential Fortified Soybean Oil', 'Food', 'cooking', '1 ltr', 'Akij-Essential-Fortified-Soybean-Oil.jpg', 'somethingextra'),
(73, 'Rupchanda Fortified Soyabean Oil', 'Food', 'cooking', '2 ltr', 'Rupchanda-Fortified-Soyabean-Oil.jpg', 'somethingextra'),
(74, 'Teer Fortified Soyabean Oil (Poly)', 'Food', 'cooking', '1 ltr', 'Teer-Fortified-Soyabean-Oil-(Poly).jpg', 'somethingextra'),
(75, 'Radhuni Pure Mustard Oil', 'Food', 'cooking', '1 ltr', 'Radhuni-Pure-Mustard-Oil.jpg', 'somethingextra'),
(76, 'ACME Mustard Oil', 'Food', 'cooking', '200 ml', 'ACME-Mustard-Oil.jpg', 'somethingextra'),
(77, 'Fresh Fortified Soyabean Oil (Poly)', 'Food', 'cooking', '1 ltr', 'Fresh-Fortified-Soyabean-Oil-(Poly).jpg', 'somethingextra'),
(78, 'Pusti Fortified Soyabean Oil', 'Food', 'cooking', '5 ltr', 'Pusti-Fortified-Soyabean-Oil.jpg', 'somethingextra'),
(79, 'Akij Essential Fortified Soybean Oil', 'Food', 'cooking', '2 ltr', 'Akij-Essential-Fortified-Soybean-Oil.jpg', 'somethingextra'),
(80, 'Olitalia Fortified Sunflower Oil', 'Food', 'cooking', '2 ltr', 'Olitalia-Fortified-Sunflower-Oil.jpg', 'somethingextra'),
(81, 'Royal Chef Fortified Sunflower Oil', 'Food', 'cooking', '5 ltr', 'Royal-Chef-Fortified-Sunflower-Oil.jpg', 'somethingextra'),
(82, 'Saffola Active Plus Edible Oil', 'Food', 'cooking', '5 ltr', 'Saffola-Active-Plus-Edible-Oil.jpg', 'somethingextra'),
(83, 'Fresh Mustard Oil', 'Food', 'cooking', '1 ltr', 'Fresh-Mustard-Oil.jpg', 'somethingextra'),
(84, 'Olitalia Fortified Sunflower Oil', 'Food', 'cooking', '5 ltr', 'Olitalia-Fortified-Sunflower-Oil.jpg', 'somethingextra'),
(85, 'Italiano Pure Olive Oil', 'Food', 'cooking', '100 ml', 'Italiano-Pure-Olive-Oil.jpg', 'somethingextra'),
(86, 'Zaytoon Extra Virgin Olive Oil', 'Food', 'cooking', '100 ml', 'Zaytoon-Extra-Virgin-Olive-Oil.jpg', 'somethingextra'),
(87, 'Olio Orolio Olive Oil', 'Food', 'cooking', '1 ltr', 'Olio-Orolio-Olive-Oil.jpg', 'somethingextra'),
(88, 'Dihan Mustard Oil', 'Food', 'cooking', '500 ml', 'Dihan-Mustard-Oil.jpg', 'somethingextra'),
(89, 'Olio Orolio Extra Virgin Olive Oil', 'Food', 'cooking', '500 ml', 'Olio-Orolio-Extra-Virgin-Olive-Oil.jpg', 'somethingextra'),
(90, 'Olio Orolio Olive Oil', 'Food', 'cooking', '500 ml', 'Olio-Orolio-Olive-Oil.jpg', 'somethingextra'),
(91, 'Olio Orolio Extra Virgin Olive Oil', 'Food', 'cooking', '750 ml', 'Olio-Orolio-Extra-Virgin-Olive-Oil.jpg', 'somethingextra'),
(92, 'Olio Orolio Extra Virgin Olive Oil', 'Food', 'cooking', '3 ltr', 'Olio-Orolio-Extra-Virgin-Olive-Oil.jpg', 'somethingextra'),
(93, 'Orkide Sunflower Oil', 'Food', 'cooking', '5 ltr', 'Orkide-Sunflower-Oil.jpg', 'somethingextra'),
(94, 'Olio Orolio Massage Oil', 'Food', 'cooking', '150 ml', 'Olio-Orolio-Massage-Oil.jpg', 'somethingextra'),
(95, 'Sunshine Mustard Oil', 'Food', 'cooking', '1 ltr', 'Sunshine-Mustard-Oil.jpg', 'somethingextra'),
(96, 'Olio Orolio Olive Oil', 'Food', 'cooking', '750 ml', 'Olio-Orolio-Olive-Oil.jpg', 'somethingextra'),
(97, 'Satej Mustard Oil', 'Food', 'cooking', '1 ltr', 'Satej-Mustard-Oil.jpg', 'somethingextra'),
(98, 'Satej Mustard Oil', 'Food', 'cooking', '500 ml', 'Satej-Mustard-Oil.jpg', 'somethingextra'),
(99, 'Satej Mustard Oil', 'Food', 'cooking', '80 ml', 'Satej-Mustard-Oil.jpg', 'somethingextra'),
(100, 'Oillina Extra Virgin Olive Oil (Free 500 ml)', 'Food', 'cooking', '1 ltr', 'Oillina-Extra-Virgin-Olive-Oil-(Free-500-ml).jpg', 'somethingextra'),
(101, 'Tekka Mustard Oil', 'Food', 'cooking', '5 ltr', 'Tekka-Mustard-Oil.jpg', 'somethingextra'),
(102, 'Tekka Mustard Oil', 'Food', 'cooking', '1 ltr', 'Tekka-Mustard-Oil.jpg', 'somethingextra'),
(103, 'Tekka Mustard Oil', 'Food', 'cooking', '500 ml', 'Tekka-Mustard-Oil.jpg', 'somethingextra'),
(104, 'Tekka Mustard Oil', 'Food', 'cooking', '200 ml', 'Tekka-Mustard-Oil.jpg', 'somethingextra'),
(105, 'Ghani Mustard Oil', 'Food', 'cooking', '1 ltr', 'Ghani-Mustard-Oil.jpg', 'somethingextra'),
(106, 'Ghani Mustard Oil', 'Food', 'cooking', '500 ml', 'Ghani-Mustard-Oil.jpg', 'somethingextra'),
(107, 'Ghani Mustard Oil', 'Food', 'cooking', '200 ml', 'Ghani-Mustard-Oil.jpg', 'somethingextra'),
(108, 'Ekata Sesame (Til) Oil', 'Food', 'cooking', '100 gm', 'Ekata-Sesame-(Til)-Oil.jpg', 'somethingextra'),
(109, 'Buniyadi Pure Mustard Oil', 'Food', 'cooking', '200 ml', 'Buniyadi-Pure-Mustard-Oil.jpg', 'somethingextra'),
(110, 'Minerva Extra Virgin Olive Oil', 'Food', 'cooking', '500 ml', 'Minerva-Extra-Virgin-Olive-Oil.jpg', 'somethingextra'),
(111, 'Clariss Olive Oil Pomace Glass Bottle', 'Food', 'cooking', '250 ml', 'Clariss-Olive-Oil-Pomace-Glass-Bottle.jpg', 'somethingextra'),
(112, 'Oro De Canava Extra Virgin Olive Oil', 'Food', 'cooking', '1 ltr', 'Oro-De-Canava-Extra-Virgin-Olive-Oil.jpg', 'somethingextra'),
(113, 'Ceylon Organic Extra Virgin Coconut Oil', 'Food', 'cooking', '200 ml', 'Ceylon-Organic-Extra-Virgin-Coconut-Oil.jpg', 'somethingextra'),
(114, 'Palermo Organic Extra Virgin Olive Oil', 'Food', 'cooking', '500 ml', 'Palermo-Organic-Extra-Virgin-Olive-Oil.jpg', 'somethingextra'),
(115, 'Palermo Extra Virgin Olive Oil', 'Food', 'cooking', '500 ml', 'Palermo-Extra-Virgin-Olive-Oil.jpg', 'somethingextra'),
(116, 'Rose Garden Pomace Glass (Blinded With Extra Virgin Olive)', 'Food', 'cooking', '500 ml', 'Rose-Garden-Pomace-Glass-(Blinded-With-Extra-Virgin-Olive).jpg', 'somethingextra'),
(117, 'Rose Garden Extra Virgin Olive Oil Pet ( First Cold Press )', 'Food', 'cooking', '1 ltr', 'Rose-Garden-Extra-Virgin-Olive-Oil-Pet-(-First-Cold-Press-).jpg', 'somethingextra'),
(118, 'Alianza Pomace Olive Oil', 'Food', 'cooking', '500 ml', 'Alianza-Pomace-Olive-Oil.jpg', 'somethingextra'),
(119, 'Home Makers Mustard Oil', 'Food', 'cooking', '500 ml', 'Home-Makers-Mustard-Oil.jpg', 'somethingextra'),
(120, 'Spanisha Extra Virgin Oilve Oil', 'Food', 'cooking', '1 ltr', 'Spanisha-Extra-Virgin-Oilve-Oil.jpg', 'somethingextra'),
(121, 'Basso Extra Virgin Olive Oil', 'Food', 'cooking', '1 ltr', 'Basso-Extra-Virgin-Olive-Oil.jpg', 'somethingextra'),
(122, 'Desh Mustard Oil', 'Food', 'cooking', '500 ml', 'Desh-Mustard-Oil.jpg', 'somethingextra'),
(123, 'Dhakaiya Mustard Oil', 'Food', 'cooking', '500 ml', 'Dhakaiya-Mustard-Oil.jpg', 'somethingextra'),
(124, 'Pusti Mustard Oil', 'Food', 'cooking', '2 ltr', 'Pusti-Mustard-Oil.jpg', 'somethingextra'),
(125, 'Luglio Sunflower Oil', 'Food', 'cooking', '5 ltr', 'Luglio-Sunflower-Oil.jpg', 'somethingextra'),
(126, 'Luglio Extra Virgin Olive Oil', 'Food', 'cooking', '1 ltr', 'Luglio-Extra-Virgin-Olive-Oil.jpg', 'somethingextra'),
(127, 'La Espanola Pomace Olive Oil', 'Food', 'cooking', '1 ltr', 'La-Espanola-Pomace-Olive-Oil.jpg', 'somethingextra'),
(128, 'Oillina Extra Virgin Olive Oil', 'Food', 'cooking', '250 ml', 'Oillina-Extra-Virgin-Olive-Oil.jpg', 'somethingextra'),
(129, 'Oillina Extra Virgin Olive Oil', 'Food', 'cooking', '1 ltr', 'Oillina-Extra-Virgin-Olive-Oil.jpg', 'somethingextra'),
(130, 'Palermo Extra Virgin Olive Oil', 'Food', 'cooking', '1 ltr', 'Palermo-Extra-Virgin-Olive-Oil.jpg', 'somethingextra'),
(131, 'Palermo Avocado Oil', 'Food', 'cooking', '500 ml', 'Palermo-Avocado-Oil.jpg', 'somethingextra'),
(132, 'Farmroots Mustard Oil', 'Food', 'cooking', '500 ml', 'Farmroots-Mustard-Oil.jpg', 'somethingextra'),
(133, 'Borges Classic Olive Oil', 'Food', 'cooking', '500 ml', 'Borges-Classic-Olive-Oil.jpg', 'somethingextra'),
(134, 'Ceylon Organic Extra Virgin Coconut Oil', 'Food', 'cooking', '500 ml', 'Ceylon-Organic-Extra-Virgin-Coconut-Oil.jpg', 'somethingextra'),
(135, 'Agrilife Organic Extra Virgin Olive Oil', 'Food', 'cooking', '500 ml', 'Agrilife-Organic-Extra-Virgin-Olive-Oil.jpg', 'somethingextra'),
(136, 'Sabroso Extra Virgin Olive Oil', 'Food', 'cooking', '500 ml', 'Sabroso-Extra-Virgin-Olive-Oil.jpg', 'somethingextra'),
(137, 'Naturel Organic Extra Virgin Olive Oil', 'Food', 'cooking', '500 ml', 'Naturel-Organic-Extra-Virgin-Olive-Oil.jpg', 'somethingextra'),
(138, 'La Espanola Extra Virgin Olive Oil', 'Food', 'cooking', '500 ml', 'La-Espanola-Extra-Virgin-Olive-Oil.jpg', 'somethingextra'),
(139, 'Arku Mustard Oil', 'Food', 'cooking', '500 ml', 'Arku-Mustard-Oil.jpg', 'somethingextra'),
(140, 'Ifad Mustard Oil', 'Food', 'cooking', '500 ml', 'Ifad-Mustard-Oil.jpg', 'somethingextra'),
(141, 'Pusti Mustard Oil', 'Food', 'cooking', '500 ml', 'Pusti-Mustard-Oil.jpg', 'somethingextra'),
(142, 'Fresh Mustard Oil', 'Food', 'cooking', '500 ml', 'Fresh-Mustard-Oil.jpg', 'somethingextra'),
(143, 'Clariss Olive Oil Pomace', 'Food', 'cooking', '175 ml', 'Clariss-Olive-Oil-Pomace.jpg', 'somethingextra'),
(144, 'Sajeeb Mustard Oil', 'Food', 'cooking', '500 ml', 'Sajeeb-Mustard-Oil.jpg', 'somethingextra'),
(145, 'Borges Pomace Olive Oil', 'Food', 'cooking', '500 ml', 'Borges-Pomace-Olive-Oil.jpg', 'somethingextra'),
(146, 'Borges Extra Light Olive Oil', 'Food', 'cooking', '500 ml', 'Borges-Extra-Light-Olive-Oil.jpg', 'somethingextra'),
(147, 'Pran Mustard Oil', 'Food', 'cooking', '1 ltr', 'Pran-Mustard-Oil.jpg', 'somethingextra'),
(148, 'YO WE Fragrance Sesame Oil', 'Food', 'cooking', '630 ml', 'YO-WE-Fragrance-Sesame-Oil.jpg', 'somethingextra'),
(149, 'Pran Mustard Oil', 'Food', 'cooking', '500 ml', 'Pran-Mustard-Oil.jpg', 'somethingextra'),
(150, 'Olitalia Pomace Olive Oil', 'Food', 'cooking', '500 ml', 'Olitalia-Pomace-Olive-Oil.jpg', 'somethingextra');

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
(60, 'TIS Au Natural Eyelashes 3 Pair 1 set', 'Beauty & Makeup', 'eyes', ' 2,400', NULL, NULL, NULL, NULL),
(61, 'Satej Fortified Soyabean Oil', 'Food', 'cooking', ' 895', NULL, NULL, NULL, NULL),
(62, 'Teer Fortified Soyabean Oil', 'Food', 'cooking', ' 906', NULL, NULL, NULL, NULL),
(63, 'Fresh Fortified Soyabean Oil', 'Food', 'cooking', ' 906', NULL, NULL, NULL, NULL),
(64, 'Teer Fortified Soyabean Oil', 'Food', 'cooking', ' 374', NULL, NULL, NULL, NULL),
(65, 'Fresh Fortified Soyabean Oil', 'Food', 'cooking', ' 367', NULL, NULL, NULL, NULL),
(66, 'Rupchanda Fortified Soyabean Oil', 'Food', 'cooking', ' 906', NULL, NULL, NULL, NULL),
(67, 'Radhuni Pure Mustard Oil', 'Food', 'cooking', ' 185', NULL, NULL, NULL, NULL),
(68, 'Akij Essential Fortified Soybean Oil', 'Food', 'cooking', ' 187', NULL, NULL, NULL, NULL),
(69, 'Rupchanda Fortified Soyabean Oil', 'Food', 'cooking', ' 374', NULL, NULL, NULL, NULL),
(70, 'Teer Fortified Soyabean Oil (Poly)', 'Food', 'cooking', ' 185', NULL, NULL, NULL, NULL),
(71, 'Radhuni Pure Mustard Oil', 'Food', 'cooking', ' 360', NULL, NULL, NULL, NULL),
(72, 'ACME Mustard Oil', 'Food', 'cooking', ' 85', NULL, NULL, NULL, NULL),
(73, 'Fresh Fortified Soyabean Oil (Poly)', 'Food', 'cooking', ' 185', NULL, NULL, NULL, NULL),
(74, 'Pusti Fortified Soyabean Oil', 'Food', 'cooking', ' 906', NULL, NULL, NULL, NULL),
(75, 'Akij Essential Fortified Soybean Oil', 'Food', 'cooking', ' 374', NULL, NULL, NULL, NULL),
(76, 'Olitalia Fortified Sunflower Oil', 'Food', 'cooking', ' 995', NULL, NULL, NULL, NULL),
(77, 'Royal Chef Fortified Sunflower Oil', 'Food', 'cooking', ' 1,290', NULL, NULL, NULL, NULL),
(78, 'Saffola Active Plus Edible Oil', 'Food', 'cooking', ' 1,650', NULL, NULL, NULL, NULL),
(79, 'Fresh Mustard Oil', 'Food', 'cooking', ' 330', NULL, NULL, NULL, NULL),
(80, 'Olitalia Fortified Sunflower Oil', 'Food', 'cooking', ' 2,450', NULL, NULL, NULL, NULL),
(81, 'Italiano Pure Olive Oil', 'Food', 'cooking', ' 215', NULL, NULL, NULL, NULL),
(82, 'Zaytoon Extra Virgin Olive Oil', 'Food', 'cooking', ' 215', NULL, NULL, NULL, NULL),
(83, 'Olio Orolio Olive Oil', 'Food', 'cooking', ' 890', NULL, NULL, NULL, NULL),
(84, 'Dihan Mustard Oil', 'Food', 'cooking', ' 172', NULL, NULL, NULL, NULL),
(85, 'Olio Orolio Extra Virgin Olive Oil', 'Food', 'cooking', ' 667', NULL, NULL, NULL, NULL),
(86, 'Olio Orolio Olive Oil', 'Food', 'cooking', ' 548', NULL, NULL, NULL, NULL),
(87, 'Olio Orolio Extra Virgin Olive Oil', 'Food', 'cooking', ' 820', NULL, NULL, NULL, NULL),
(88, 'Olio Orolio Extra Virgin Olive Oil', 'Food', 'cooking', ' 3,235', NULL, NULL, NULL, NULL),
(89, 'Orkide Sunflower Oil', 'Food', 'cooking', ' 2,000', NULL, NULL, NULL, NULL),
(90, 'Olio Orolio Massage Oil', 'Food', 'cooking', ' 290', NULL, NULL, NULL, NULL),
(91, 'Sunshine Mustard Oil', 'Food', 'cooking', ' 360', NULL, NULL, NULL, NULL),
(92, 'Olio Orolio Olive Oil', 'Food', 'cooking', ' 750', NULL, NULL, NULL, NULL),
(93, 'Satej Mustard Oil', 'Food', 'cooking', ' 320', NULL, NULL, NULL, NULL),
(94, 'Satej Mustard Oil', 'Food', 'cooking', ' 180', NULL, NULL, NULL, NULL),
(95, 'Satej Mustard Oil', 'Food', 'cooking', ' 40', NULL, NULL, NULL, NULL),
(96, 'Oillina Extra Virgin Olive Oil (Free 500 ml)', 'Food', 'cooking', ' 1,290', NULL, NULL, NULL, NULL),
(97, 'Tekka Mustard Oil', 'Food', 'cooking', ' 1,700', NULL, NULL, NULL, NULL),
(98, 'Tekka Mustard Oil', 'Food', 'cooking', ' 350', NULL, NULL, NULL, NULL),
(99, 'Tekka Mustard Oil', 'Food', 'cooking', ' 180', NULL, NULL, NULL, NULL),
(100, 'Tekka Mustard Oil', 'Food', 'cooking', ' 75', NULL, NULL, NULL, NULL),
(101, 'Ghani Mustard Oil', 'Food', 'cooking', ' 360', NULL, NULL, NULL, NULL),
(102, 'Ghani Mustard Oil', 'Food', 'cooking', ' 185', NULL, NULL, NULL, NULL),
(103, 'Ghani Mustard Oil', 'Food', 'cooking', ' 85', NULL, NULL, NULL, NULL),
(104, 'Ekata Sesame (Til) Oil', 'Food', 'cooking', ' 80', NULL, NULL, NULL, NULL),
(105, 'Buniyadi Pure Mustard Oil', 'Food', 'cooking', ' 65', NULL, NULL, NULL, NULL),
(106, 'Minerva Extra Virgin Olive Oil', 'Food', 'cooking', ' 590', NULL, NULL, NULL, NULL),
(107, 'Clariss Olive Oil Pomace Glass Bottle', 'Food', 'cooking', ' 495', NULL, NULL, NULL, NULL),
(108, 'Oro De Canava Extra Virgin Olive Oil', 'Food', 'cooking', ' 1,250', NULL, NULL, NULL, NULL),
(109, 'Ceylon Organic Extra Virgin Coconut Oil', 'Food', 'cooking', ' 530', NULL, NULL, NULL, NULL),
(110, 'Palermo Organic Extra Virgin Olive Oil', 'Food', 'cooking', ' 689', NULL, NULL, NULL, NULL),
(111, 'Palermo Extra Virgin Olive Oil', 'Food', 'cooking', ' 575', NULL, NULL, NULL, NULL),
(112, 'Rose Garden Pomace Glass (Blinded With Extra Virgin Olive)', 'Food', 'cooking', ' 600', NULL, NULL, NULL, NULL),
(113, 'Rose Garden Extra Virgin Olive Oil Pet ( First Cold Press )', 'Food', 'cooking', ' 1,050', NULL, NULL, NULL, NULL),
(114, 'Alianza Pomace Olive Oil', 'Food', 'cooking', ' 550', NULL, NULL, NULL, NULL),
(115, 'Home Makers Mustard Oil', 'Food', 'cooking', ' 160', NULL, NULL, NULL, NULL),
(116, 'Spanisha Extra Virgin Oilve Oil', 'Food', 'cooking', ' 1,250', NULL, NULL, NULL, NULL),
(117, 'Basso Extra Virgin Olive Oil', 'Food', 'cooking', ' 1,159', NULL, NULL, NULL, NULL),
(118, 'Desh Mustard Oil', 'Food', 'cooking', ' 200', NULL, NULL, NULL, NULL),
(119, 'Dhakaiya Mustard Oil', 'Food', 'cooking', ' 185', NULL, NULL, NULL, NULL),
(120, 'Pusti Mustard Oil', 'Food', 'cooking', ' 700', NULL, NULL, NULL, NULL),
(121, 'Luglio Sunflower Oil', 'Food', 'cooking', ' 2,150', NULL, NULL, NULL, NULL),
(122, 'Luglio Extra Virgin Olive Oil', 'Food', 'cooking', ' 1,050', NULL, NULL, NULL, NULL),
(123, 'La Espanola Pomace Olive Oil', 'Food', 'cooking', ' 955', NULL, NULL, NULL, NULL),
(124, 'Oillina Extra Virgin Olive Oil', 'Food', 'cooking', ' 355', NULL, NULL, NULL, NULL),
(125, 'Oillina Extra Virgin Olive Oil', 'Food', 'cooking', ' 1,290', NULL, NULL, NULL, NULL),
(126, 'Palermo Extra Virgin Olive Oil', 'Food', 'cooking', ' 1,210', NULL, NULL, NULL, NULL),
(127, 'Palermo Avocado Oil', 'Food', 'cooking', ' 929', NULL, NULL, NULL, NULL),
(128, 'Farmroots Mustard Oil', 'Food', 'cooking', ' 225', NULL, NULL, NULL, NULL),
(129, 'Borges Classic Olive Oil', 'Food', 'cooking', ' 600', NULL, NULL, NULL, NULL),
(130, 'Ceylon Organic Extra Virgin Coconut Oil', 'Food', 'cooking', ' 1,170', NULL, NULL, NULL, NULL),
(131, 'Agrilife Organic Extra Virgin Olive Oil', 'Food', 'cooking', ' 1,085', NULL, NULL, NULL, NULL),
(132, 'Sabroso Extra Virgin Olive Oil', 'Food', 'cooking', ' 620', NULL, NULL, NULL, NULL),
(133, 'Naturel Organic Extra Virgin Olive Oil', 'Food', 'cooking', ' 1,079', NULL, NULL, NULL, NULL),
(134, 'La Espanola Extra Virgin Olive Oil', 'Food', 'cooking', ' 735', NULL, NULL, NULL, NULL),
(135, 'Arku Mustard Oil', 'Food', 'cooking', ' 185', NULL, NULL, NULL, NULL),
(136, 'Ifad Mustard Oil', 'Food', 'cooking', ' 180', NULL, NULL, NULL, NULL),
(137, 'Pusti Mustard Oil', 'Food', 'cooking', ' 185', NULL, NULL, NULL, NULL),
(138, 'Fresh Mustard Oil', 'Food', 'cooking', ' 180', NULL, NULL, NULL, NULL),
(139, 'Clariss Olive Oil Pomace', 'Food', 'cooking', ' 320', NULL, NULL, NULL, NULL),
(140, 'Sajeeb Mustard Oil', 'Food', 'cooking', ' 175', NULL, NULL, NULL, NULL),
(141, 'Borges Pomace Olive Oil', 'Food', 'cooking', ' 540', NULL, NULL, NULL, NULL),
(142, 'Borges Extra Light Olive Oil', 'Food', 'cooking', ' 600', NULL, NULL, NULL, NULL),
(143, 'Pran Mustard Oil', 'Food', 'cooking', ' 360', NULL, NULL, NULL, NULL),
(144, 'YO WE Fragrance Sesame Oil', 'Food', 'cooking', ' 995', NULL, NULL, NULL, NULL),
(145, 'Pran Mustard Oil', 'Food', 'cooking', ' 185', NULL, NULL, NULL, NULL),
(146, 'Olitalia Pomace Olive Oil', 'Food', 'cooking', ' 625', NULL, NULL, NULL, NULL);

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `main_table`
--
ALTER TABLE `main_table`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

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
