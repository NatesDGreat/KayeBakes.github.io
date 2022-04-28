-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2022 at 10:12 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbphpsearch`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Category_ID` int(4) NOT NULL,
  `Category_Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Category_ID`, `Category_Name`) VALUES
(1, 'Cup Cakes'),
(2, 'Cakes'),
(3, 'Crinkles'),
(4, 'Cookies'),
(5, 'Bars');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `Delivery_ID` int(11) NOT NULL,
  `Order_number` int(11) DEFAULT NULL,
  `Payment_ID` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_id`
--

CREATE TABLE `order_id` (
  `Order_Number` int(11) NOT NULL,
  `User_ID` int(11) DEFAULT NULL,
  `Product_ID` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Total_Price` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_ID` int(20) NOT NULL,
  `User_ID` int(11) DEFAULT NULL,
  `Order_Number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Product_ID` int(11) NOT NULL,
  `Product_Name` varchar(45) NOT NULL,
  `Price` int(6) NOT NULL,
  `Category_ID` int(4) DEFAULT NULL,
  `product_Size` varchar(4) NOT NULL,
  `Product_Desc` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Product_ID`, `Product_Name`, `Price`, `Category_ID`, `product_Size`, `Product_Desc`) VALUES
(1, 'Red Velvet', 430, 1, '0', 'A dozen of soft, velvety cake with smooth cream cheese frosting and crushed oreo cookies on top.'),
(2, 'Dutch Chocolate', 310, 1, '0', 'a dozen of moist, chocolate sponge cake highlighted by lemon icing on top.'),
(3, 'Classic Crinkles', 200, 3, '0', '60 pieces of bite-sized crinkles loaded with chocolatey goodness.'),
(4, 'Red Velvet Crinkes', 265, 3, '0', '15 sandwiches of delightful, velvety crinkles filled with cream cheese frosting.'),
(5, 'Double Choco Cookies', 265, 4, '0', '15 chunky and chewy premium chocolate cookies loaded with chunks of dark chocolate.'),
(6, 'S\'mores Bars', 265, 5, '0', '15 s\'mores bars made with thick, tasty crust, premium chocolate, toasted mallows, and Hershey\'s Chocolate on top.'),
(7, 'New York Cheesecake', 490, 2, '6\"', 'The classic baked New York Cheesecake.'),
(8, 'New York Cheesecake', 980, 2, '9\"', 'The classic baked New York Cheesecake.'),
(9, 'Cookies & Cream Cheesecake', 500, 2, '6\"', 'New York Cheesecake with an Oreo cookie base, cake, and top.'),
(10, 'Cookies & Cream Cheesecake', 1000, 2, '9\"', 'New York Cheesecake with an Oreo cookie base, cake, and top.'),
(11, 'Strawberry Cheesecake', 1210, 2, '9\"', 'New York Cheesecake with a strawberry puree on top'),
(12, 'Blueberry Cheesecake', 1210, 2, '9\"', 'New York Cheesecake with a blueberry puree on top'),
(13, 'Oreo Cake', 650, 2, '6\"', '3 Layers of Oreo Chiffon vake covered with Oreo buttercream icing, drizled with melted chocolates and topped with Oreos.'),
(14, 'Oreo Cake', 1150, 2, '9\"', '3 Layers of Oreo Chiffon vake covered with Oreo buttercream icing, drizled with melted chocolates and topped with Oreos.'),
(15, 'Carrot Cake', 650, 2, '6\"', 'A chunky flavorful cake made with fresh carrots and real walnuts frosted with cream cheese icing.'),
(16, 'Carrot Cake', 1050, 2, '9\"', 'A chunky flavorful cake made with fresh carrots and real walnuts frosted with cream cheese icing.'),
(17, 'Strawberry Shortcake', 650, 2, '6\"', 'Layers of vanilla Chiffon filled with strawberry flavored buttercream, beautifully topped with fresh strawberries and florals.'),
(18, 'Strawberry Shortcake', 1200, 2, '9\"', 'Layers of vanilla Chiffon filled with strawberry flavored buttercream, beautifully topped with fresh strawberries and florals.'),
(19, 'Sans Rival', 650, 2, '6\"', 'Layers of yender cashew Gateu filled with French Buttercream and more toasted cashews.'),
(20, 'Sans Rival', 1350, 2, '9\"', 'Layers of yender cashew Gateu filled with French Buttercream and more toasted cashews.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_ID` int(11) NOT NULL,
  `Full_Name` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Zip_Code` int(4) NOT NULL,
  `Contact_Number` int(11) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Category_ID`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`Delivery_ID`),
  ADD KEY `Order_number` (`Order_number`),
  ADD KEY `Payment_ID` (`Payment_ID`);

--
-- Indexes for table `order_id`
--
ALTER TABLE `order_id`
  ADD PRIMARY KEY (`Order_Number`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Product_ID` (`Product_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Order_Number` (`Order_Number`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Product_ID`),
  ADD KEY `Category_ID` (`Category_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Category_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `Delivery_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_id`
--
ALTER TABLE `order_id`
  MODIFY `Order_Number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Payment_ID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Product_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `delivery_ibfk_1` FOREIGN KEY (`Order_number`) REFERENCES `order_id` (`Order_Number`),
  ADD CONSTRAINT `delivery_ibfk_2` FOREIGN KEY (`Payment_ID`) REFERENCES `payment` (`Payment_ID`);

--
-- Constraints for table `order_id`
--
ALTER TABLE `order_id`
  ADD CONSTRAINT `order_id_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_ID`),
  ADD CONSTRAINT `order_id_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_ID`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_ID`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`Order_Number`) REFERENCES `order_id` (`Order_Number`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`Category_ID`) REFERENCES `category` (`Category_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
