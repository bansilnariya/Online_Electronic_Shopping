-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2023 at 07:02 PM
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
-- Database: `bansil`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(32) NOT NULL,
  `pwd` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `pwd`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `con_id` int(10) NOT NULL,
  `con_fnm` varchar(32) NOT NULL,
  `con_email` varchar(32) NOT NULL,
  `con_sub` varchar(32) NOT NULL,
  `con_message` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`con_id`, `con_fnm`, `con_email`, `con_sub`, `con_message`) VALUES
(1, ' mkvlnal', 'njkslvbajkl', 'mksdlvmds', 'c ndsklackjl'),
(2, 'Mahendra Solanki', 'solankimahendra289@gmail.com', 'sndbakj', 'ascn'),
(3, 'Mahendra Solanki', 'solankimahendra289@gmail.com', 's m,cv.ns', 'mnksbvsjkl'),
(4, 'bn', 'bapu@gmail.com', 'super', 'duper'),
(5, 'bansil', 'bngraphics@gmail.com', 'suprb', 'super website'),
(6, 'bansilnariya', 'bngraphics@gmail.com', 'super', 'hii...\r\nthis site is superb'),
(7, 'bn graphics design', 'bngraphics@gmail.com', 'super web site', 'This Site is a Super And Most Us');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_id` int(11) NOT NULL,
  `c_username` varchar(32) NOT NULL,
  `c_pwd` varchar(64) NOT NULL,
  `c_email` varchar(32) NOT NULL,
  `c_phone` varchar(32) NOT NULL,
  `c_address` varchar(128) NOT NULL,
  `c_order` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `c_username`, `c_pwd`, `c_email`, `c_phone`, `c_address`, `c_order`) VALUES
(11, 'test', '123456789', 'test@test.com', '1234567890', 'abc def ghi', '');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `order_id` int(32) NOT NULL,
  `customer_id` int(32) NOT NULL,
  `product_id` int(32) NOT NULL,
  `order_qty` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`order_id`, `customer_id`, `product_id`, `order_qty`) VALUES
(1, 1, 1, 5),
(3, 1, 2, 1),
(4, 1, 3, 1),
(5, 5, 1, 2),
(6, 5, 2, 3),
(7, 5, 3, 3),
(8, 7, 35, 15),
(9, 7, 44, 5),
(10, 8, 50, 1),
(11, 8, 49, 1),
(12, 8, 55, 2),
(13, 9, 49, 1),
(14, 9, 52, 2),
(15, 7, 51, 1),
(16, 7, 54, 1),
(17, 7, 52, 1),
(18, 7, 64, 1),
(19, 10, 74, 1),
(20, 10, 75, 1),
(21, 10, 74, 1),
(22, 10, 75, 1),
(23, 11, 76, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(64) NOT NULL,
  `p_price` varchar(64) NOT NULL,
  `p_detail` varchar(64) NOT NULL,
  `p_cat` varchar(34) NOT NULL,
  `p_photo` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_name`, `p_price`, `p_detail`, `p_cat`, `p_photo`) VALUES
(74, 'Samsung Tv ', '20000', '', 'tv', 'Picsart_22-08-30_16-43-05-925.jpg'),
(75, 'Boat Buds', '9999', '', 'buds', 'sambuds.jpg'),
(76, 'Smart Watch', '2000', '', 'watch', 'Picsart_22-08-30_16-38-53-762.jpg'),
(77, 'tv samsang', '2222222', '', 'tv', 'sonytv.jpg'),
(78, 'smartwatch3-1-0', '2199', '', 'watch', 'watch.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `con_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
