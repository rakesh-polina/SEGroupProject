-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 29, 2022 at 05:17 AM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `artworkmanagement`
--

DELIMITER $$
--
-- Procedures
--
DROP PROCEDURE IF EXISTS `categorysel`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `categorysel` (IN `cat` VARCHAR(20))  BEGIN
SELECT * FROM category where category=cat;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` varchar(10) NOT NULL,
  `admin_password` varchar(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_password`) VALUES
('root', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
CREATE TABLE IF NOT EXISTS `artist` (
  `artist_id` varchar(10) NOT NULL,
  `artist_name` varchar(20) NOT NULL,
  `artist_pswrd` varchar(8) NOT NULL,
  `artist_address` varchar(50) NOT NULL,
  PRIMARY KEY (`artist_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`artist_id`, `artist_name`, `artist_pswrd`, `artist_address`) VALUES
('1234', '1234', '1234', '1234'),
('Artist01', 'Sai', 'sai', 'stillwaterr'),
('Artist02', 'Meghana', 'meghana', 'Stillwater, OK'),
('Artist03', 'Joe', 'ArtistJo', 'Dallas, Texas, US');

-- --------------------------------------------------------

--
-- Table structure for table `artwork`
--

DROP TABLE IF EXISTS `artwork`;
CREATE TABLE IF NOT EXISTS `artwork` (
  `artwork_id` varchar(10) NOT NULL,
  `artwork_name` varchar(20) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  PRIMARY KEY (`artwork_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `artwork`
--

INSERT INTO `artwork` (`artwork_id`, `artwork_name`, `price`) VALUES
('A12', 'naturepainting', '1000'),
('A34', 'bird', '100000'),
('A04', 'Ithika', '4564'),
('A03', 'Rakesh', '1');

-- --------------------------------------------------------

--
-- Stand-in structure for view `artworkdesc`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `artworkdesc`;
CREATE TABLE IF NOT EXISTS `artworkdesc` (
`artwork_id` varchar(10)
,`artwork_name` varchar(20)
,`category` varchar(20)
,`price` decimal(10,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
CREATE TABLE IF NOT EXISTS `buyer` (
  `customer_id` varchar(10) NOT NULL,
  `artwork_id` varchar(10) NOT NULL,
  `order_id` varchar(10) NOT NULL,
  KEY `customer_id` (`customer_id`),
  KEY `artwork_id` (`artwork_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`customer_id`, `artwork_id`, `order_id`) VALUES
('qwe', 'A02', '10'),
('Meghana', 'A34', '13'),
('Meghana', 'A34', '14'),
('RakiRaj', 'A03', '15');

--
-- Triggers `buyer`
--
DROP TRIGGER IF EXISTS `custdeletion`;
DELIMITER $$
CREATE TRIGGER `custdeletion` AFTER DELETE ON `buyer` FOR EACH ROW BEGIN DELETE FROM buyer WHERE customer_id = customer_id; END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category` varchar(20) NOT NULL,
  `artwork_id` varchar(10) NOT NULL,
  KEY `artwork_id` (`artwork_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category`, `artwork_id`) VALUES
('painting', 'A235678'),
('oilpainting', 'A3245'),
('sculpture', 'A34'),
('painting', 'A112'),
('painting', 'A112'),
('painting', 'Art011'),
('painting', 'Art01111'),
('painting', 'Art019'),
('sculpture', 'A03'),
('oilpainting', 'A04');

--
-- Triggers `category`
--
DROP TRIGGER IF EXISTS `deletion`;
DELIMITER $$
CREATE TRIGGER `deletion` AFTER DELETE ON `category` FOR EACH ROW BEGIN
        DELETE FROM category WHERE artwork_id = artwork_id;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` varchar(10) NOT NULL,
  `customer_name` varchar(20) NOT NULL,
  `customer_pswrd` varchar(8) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_pswrd`, `customer_address`) VALUES
('c01', 'pranavi', '1234', 'oklahoma'),
('qwe', 'qwe', 'qwe', 'qwe'),
('meghana', 'meghana', 'meghana', 'ok'),
('abcd', 'abcd', 'abcd', 'abcd'),
('RakiRaj', 'Rakeshhh', 'Rakiraj', 'Chicago, US');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `status`) VALUES
(1, 'pending'),
(3, 'done'),
(5, 'success'),
(6, 'pending'),
(7, 'pending'),
(8, 'pending'),
(9, 'pending'),
(10, 'pending'),
(11, 'success'),
(12, 'success'),
(13, 'pending'),
(14, 'pending'),
(15, 'placed ord'),
(16, 'success');

--
-- Triggers `orders`
--
DROP TRIGGER IF EXISTS `insertion`;
DELIMITER $$
CREATE TRIGGER `insertion` BEFORE INSERT ON `orders` FOR EACH ROW SET NEW.order_id = (SELECT MAX(order_id) + 1 FROM orders)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `renter`
--

DROP TABLE IF EXISTS `renter`;
CREATE TABLE IF NOT EXISTS `renter` (
  `customer_id` varchar(10) NOT NULL,
  `order_id` varchar(10) NOT NULL,
  `artwork_id` varchar(10) NOT NULL,
  KEY `customer_id` (`customer_id`),
  KEY `artwork_id` (`artwork_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `renter`
--

INSERT INTO `renter` (`customer_id`, `order_id`, `artwork_id`) VALUES
('qwe', '11', 'A02'),
('RakiRaj', '12', 'Art01111'),
('RakiRaj', '16', 'A03');

--
-- Triggers `renter`
--
DROP TRIGGER IF EXISTS `custdeletion1`;
DELIMITER $$
CREATE TRIGGER `custdeletion1` AFTER DELETE ON `renter` FOR EACH ROW BEGIN DELETE FROM buyer WHERE customer_id = customer_id; END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure for view `artworkdesc`
--
DROP TABLE IF EXISTS `artworkdesc`;

DROP VIEW IF EXISTS `artworkdesc`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `artworkdesc`  AS SELECT `a`.`artwork_id` AS `artwork_id`, `a`.`artwork_name` AS `artwork_name`, `a`.`price` AS `price`, `b`.`category` AS `category` FROM (`artwork` `a` join `category` `b` on((`a`.`artwork_id` = `b`.`artwork_id`))) ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
