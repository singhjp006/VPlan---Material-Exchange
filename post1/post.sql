-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2017 at 01:52 PM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `post`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `hash` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `hash`) VALUES
(1, '', ''),
(2, 'saddam', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(4, 'ziaa', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');

-- --------------------------------------------------------

--
-- Table structure for table `freead`
--

DROP TABLE IF EXISTS `freead`;
CREATE TABLE IF NOT EXISTS `freead` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cat_id` int(10) UNSIGNED NOT NULL,
  `ad_title` varchar(45) NOT NULL,
  `photo_name` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `contact_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `m_number` int(10) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`id`,`cat_id`),
  KEY `FK_freead_1` (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `freead`
--

INSERT INTO `freead` (`id`, `cat_id`, `ad_title`, `photo_name`, `description`, `price`, `contact_name`, `email`, `m_number`, `address`) VALUES
(13, 6, 'fasfdkljas;kjfl;jk', '(2).jpg', ' asdflkjasd;jkfjkasd', 545646554, 'fasfdasdf', 'asad@yahoo.com', 66656545, 'asdfasdf');

-- --------------------------------------------------------

--
-- Table structure for table `heading`
--

DROP TABLE IF EXISTS `heading`;
CREATE TABLE IF NOT EXISTS `heading` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `visible` tinyint(1) UNSIGNED NOT NULL,
  `extension` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `heading`
--

INSERT INTO `heading` (`id`, `title`, `visible`, `extension`) VALUES
(1, 'For Sale', 1, 'for_sale');

-- --------------------------------------------------------

--
-- Table structure for table `sub_heading`
--

DROP TABLE IF EXISTS `sub_heading`;
CREATE TABLE IF NOT EXISTS `sub_heading` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sub_id` int(10) UNSIGNED NOT NULL,
  `sub_title` varchar(45) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`sub_id`),
  KEY `FK_sub_heading_1` (`sub_id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sub_heading`
--

INSERT INTO `sub_heading` (`id`, `sub_id`, `sub_title`, `position`) VALUES
(1, 1, 'Art Supplies', 1),
(2, 1, 'Textiles, Fabric and Leather', 2),
(3, 1, 'Building and Construction Material', 3),
(4, 1, 'Tools and Manufacturing Equipment', 4),
(5, 1, 'Chemicals and cleaners', 5),
(6, 1, 'Wood', 6),
(7, 1, 'Classroom Supplies and Fixtures', 7),
(8, 1, 'Commercial Appliances', 8),
(9, 1, 'Computers and Office Equipment', 9),
(10, 1, 'Fixtures and Parts', 10),
(11, 1, 'Furniture', 11),
(23, 1, 'Recycling and Waste Containers', 23),
(22, 1, 'Plastics, Rubber and Composites', 22),
(21, 1, 'Paper', 21),
(18, 1, 'Motors, Pumps', 18),
(17, 1, 'Misc. Raw Materials', 17),
(16, 1, 'Misc. Goods', 16),
(25, 1, 'Sporting Goods', 25),
(24, 1, 'Shipping and Packaging Material', 24),
(12, 1, 'Glass', 12),
(20, 1, 'Paints, Coatings and Stain', 20),
(19, 1, 'Office Supplies', 19),
(15, 1, 'Metals', 15),
(14, 1, 'Medical/Laboratory Equipment', 14),
(13, 1, 'Industrial and Agricultural By-products', 13);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `f_name` varchar(45) NOT NULL,
  `l_name` varchar(45) NOT NULL,
  `u_email` varchar(45) NOT NULL,
  `u_hash` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `f_name`, `l_name`, `u_email`, `u_hash`, `username`) VALUES
(0, '', '', '', '', ''),
(1, '', '', '', '', ''),
(3, '', '', '', '', ''),
(4, '', '', '', '', ''),
(5, '', '', '', '', ''),
(6, 'zidan', 'syed', 'zidansyed@yahoo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'zidansyed'),
(12, 'aasd', 'asda', 'itg.npc@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'prod'),
(8, 'asad', 'khan', 'asadkhan@yahoo.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'asad'),
(9, 'jashan preet', 'singh', 'jashanpreet@khalsa.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'jpsingh'),
(11, 'Jashan Preet', 'Singh', 'jpsingh@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'jashan23'),
(13, 'Anurag', 'Sidana', 'anuragsidana22@gmail.com', '878371adf1e3c699464082e0ccb7387b100668c5', 'anurag');

-- --------------------------------------------------------

--
-- Table structure for table `userad`
--

DROP TABLE IF EXISTS `userad`;
CREATE TABLE IF NOT EXISTS `userad` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cat_id` int(10) UNSIGNED NOT NULL,
  `ad_title` varchar(45) NOT NULL,
  `photo_name` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `contact_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `m_number` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `u_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`,`cat_id`,`u_name`) USING BTREE,
  KEY `FK_userad_1` (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `userad`
--

INSERT INTO `userad` (`id`, `cat_id`, `ad_title`, `photo_name`, `description`, `price`, `contact_name`, `email`, `m_number`, `address`, `u_name`) VALUES
(19, 4, 'skin care', 'use-mens-skincare-products.jpg', ' skin care  skin care  skin care  skin care  skin care ', 118, 'jashan', 'anuragsidana23@gmail.com', '9876543210', 'B 60 j', 'zidansyed'),
(18, 3, 'ayurvedic', 'ayurveda.jpg', ' ayurvedic  ayurvedic  ayurvedic  ayurvedic  ayurvedic  ayurvedic ', 250, 'Anurag Sidana', 'anuragsidana22@gmail.com', '9990481748', 'B 60 Third Floor, Hari Nagar 110064', 'anurag'),
(17, 1, 'Zifi 100 DT Tablet', 'Zifi-Cefixime-200mg-10-Tablets-2.jpg', ' efsdsads', 20, 'jashan', 'jashanpreet@khalsa.com', '9787455774', 'B 60 Third Floor, Hari Nagar 110064', 'zidansyed'),
(14, 2, 'Sell by jashan', 'Screenshot (21).png', 'Sell by jashanSell by jashanSell by jashanSell by jashan', 7, 'jashan', 'jashanpreet@khalsa.com', '9876543210', 'B 60', 'zidansyed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `freead`
--
ALTER TABLE `freead` ADD FULLTEXT KEY `ad_title` (`ad_title`,`description`,`address`);

--
-- Indexes for table `userad`
--
ALTER TABLE `userad` ADD FULLTEXT KEY `ad_title` (`ad_title`,`description`,`address`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
