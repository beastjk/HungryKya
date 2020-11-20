-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 15, 2020 at 04:58 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id13685261_foodexploria1234`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('ds', 'dhruv shah', 'abc@gmail.com', '6546546548', '1/68', 'SE'),
('jayjk', 'Jay Patel', 'jay.p1@ahduni.edu.in', '8238609800', 'naranpura', 'Patel0077'),
('mannb', 'Mann Bilimoria', 'mann.bilimoria@gmail.com', '9033344682', 'Heliconia Apartments', 'mannb'),
('pratheek083', 'Pratheek Shiri', 'pratheek@gmail.com', '8779546521', 'Hyderabad', 'pratheek'),
('rakshithk00', 'Rakshith Kotian', 'rakshith@gmail.com', '9547123658', 'Gujarath', 'rakshith'),
('userjd', 'JD', 'abcd@gmail.com', '8888888888', 'Surat', '654321'),
('Vishal', 'Vishal Saha', 'vishal.s@ahduni.edu.in', '7874955900', 'A 189 Dwarkanagar society , Kotarpur', 'vishalsaha'),
('XYZ', 'XYZ', 'xyz@gmail.com', '1234567890', 'xyz', '123'),
('XYZ08', 'XYZ', 'xyz@gmail.com', '123456789', 'xyz', '123');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `id` int(30) NOT NULL,
  `order_ID` int(30) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `d_dist` double NOT NULL,
  `d_guy_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`) VALUES
(58, 'Juicy', 80, 'Juicy', 1, 'images/Masala_Paneer_Kathi_Roll.jpg'),
(59, 'Meurig Fish', 60, 'Try Meurig - A whole Pomfret fish grilled with tangy marination & served with grilled onions and tomatoes.', 2, 'images/Meurig.jpg'),
(60, 'Chocolate Hazelnut Truffle', 99, 'Lose all senses over this very delicious chocolate hazelnut truffle.', 3, 'images/Chocolate_Hazelnut_Truffle.jpg'),
(61, 'Happy Happy Choco Chip Shake', 80, 'Happy Happy Choco Chip Shake - a perfect party sweet treat.', 1, 'images/Happy_Happy_Choco_Chip_Shake.jpg'),
(62, 'Spring Rolls', 65, 'Delicious Spring Rolls by Dragon Hut, Delhi. Order now!!!', 2, 'images/Spring_Rolls.jpg'),
(63, 'Baahubali Thali', 75, 'Baahubali Thali is accompanied by Kattapa Biriyani, Devasena Paratha, Bhalladeva Patiala Lassi', 3, 'images/Baahubali_Thali.jpg'),
(64, 'Lightsaber', 1000, 'A specially baked cake in the form of a lightsaber!', 4, 'images/lightsaber.jpg'),
(69, 'Darth Vader', 750, 'Your favourite Darth Vader in the form of a cake! With a special feel of the dark side!', 4, 'images/darth_vader.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('aditi068', 'Aditi Naik', 'aditi@gmail.com', '8654751259', 'Goa', 'aditi'),
('aminnikhil073', 'Nikhil Amin', 'aminnikhil073@gmail.com', '9632587412', 'Karnataka', 'nikhil'),
('jdmodi', 'Jaydeep', 'jaydeepmodi25@gmail.com', '9999999999', 'abcdefg', '123456'),
('mannb1', 'Mann Bilimoria', 'mann.bilimoria@gmail.com', '9033344682', 'Heliconia Apartments', 'mannb1'),
('nigga god', 'dhruv shah', 'nigga@gmail.com', '5464654163', '69', 'se'),
('roshanraj07', 'Roshan Raj', 'roshan@gmail.com', '9541258761', 'Bihar', 'roshan'),
('Vishal', 'Vishal Saha', 'vishal.s@ahduni.edu.in', '7874955900', 'A 189 Dwarkanagar society , Kotarpur', 'vishalsaha');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(1, 64, 'Lightsaber', 500, 1, '2020-05-13', 'mannb', 4),
(2, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2020-05-13', 'mannb', 1),
(3, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2020-05-13', 'mannb', 1),
(4, 59, 'Meurig Fish', 60, 1, '2020-05-13', 'mannb', 2),
(5, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2020-05-14', 'Vishal', 1),
(6, 59, 'Meurig Fish', 60, 1, '2020-05-14', 'Vishal', 2),
(7, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2020-05-14', 'Vishal', 1),
(8, 58, 'Juicy Masala Paneer Kathi Roll', 40, 2, '2020-05-14', 'userjd', 1),
(9, 59, 'Meurig Fish', 60, 3, '2020-05-14', 'userjd', 2),
(10, 58, 'Juicy Masala Paneer Kathi Roll', 40, 2, '2020-05-14', 'userjd', 1),
(11, 59, 'Meurig Fish', 60, 3, '2020-05-14', 'userjd', 2),
(12, 59, 'Meurig Fish', 60, 1, '2020-05-14', 'jayjk', 2),
(13, 64, 'Lightsaber', 1000, 1, '2020-05-14', 'jayjk', 4),
(14, 59, 'Meurig Fish', 60, 1, '2020-05-14', 'jayjk', 2),
(15, 69, 'Darth Vader', 750, 1, '2020-05-14', 'jayjk', 4),
(16, 62, 'Spring Rolls', 65, 1, '2020-05-14', 'jayjk', 2),
(17, 59, 'Meurig Fish', 60, 1, '2020-05-14', 'jayjk', 2),
(18, 69, 'Darth Vader', 750, 1, '2020-05-14', 'jayjk', 4),
(19, 62, 'Spring Rolls', 65, 1, '2020-05-14', 'jayjk', 2),
(20, 69, 'Darth Vader', 750, 1, '2020-05-14', 'userjd', 4),
(21, 63, 'Baahubali Thali', 75, 1, '2020-05-14', 'userjd', 3),
(22, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2020-05-14', 'userjd', 1),
(23, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2020-05-14', 'userjd', 1),
(24, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2020-05-14', 'Vishal', 1),
(25, 59, 'Meurig Fish', 60, 1, '2020-05-14', 'Vishal', 2),
(26, 63, 'Baahubali Thali', 75, 1, '2020-05-14', 'Vishal', 3),
(27, 69, 'Darth Vader', 750, 2, '2020-05-14', 'Vishal', 4),
(28, 64, 'Lightsaber', 1000, 3, '2020-05-14', 'Vishal', 4),
(29, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2020-05-15', 'XYZ', 1),
(30, 62, 'Spring Rolls', 65, 1, '2020-05-15', 'XYZ', 2),
(31, 62, 'Spring Rolls', 65, 1, '2020-05-15', 'XYZ', 2);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(1, 'Nikhil\'s Restaurant', 'nikhil@restaurant.com', '7998562145', 'Karnataka', 'aminnikhil073'),
(2, 'Roshan\'s Restaurant', 'roshan@restaurant.com', '9887546821', 'Bihar', 'roshanraj07'),
(3, 'Aditi\'s Restaurant', 'aditi@restaurant.com', '7778564231', 'Goa', 'aditi068'),
(4, 'Hungry Lightsabers', 'hungrylightsabers@gmail.com', '9033344682', 'S.G. Highway', 'mannb1'),
(5, 'Vish', 'vishal.s@ahduni.edu.in', '7874955900', 'A 189 Dwarkanagar society , Kotarpur', 'Vishal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FOREIGN` (`order_ID`),
  ADD KEY `RESTAURANT` (`R_ID`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
