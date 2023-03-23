-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 22, 2023 at 07:09 AM
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
-- Database: `clothing_company`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `username` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `username`, `address`) VALUES
(1, 'Fatai Salaudeen', 'Fatai01', '12, Ita Waya'),
(2, 'Ramon Rasheed', 'razzy', 'No. 1, Pahayi'),
(3, 'Eriwayo Samuel', 'sam', 'Seutronomy Ilaro');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(5) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `product_size` varchar(10) NOT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `category_name` varchar(30) NOT NULL,
  `category_id` int(4) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `price`, `product_size`, `product_image`, `category_name`, `category_id`, `created_at`) VALUES
(1, 'Flare Gown', 2000, 'M', NULL, 'Gown', 1, '2023-02-28 04:36:16'),
(2, 'Straight Gown', 1200, 'L', NULL, 'Gown', 1, '2023-02-28 04:36:16'),
(3, 'Sleeveless Blouse', 700, 'M', NULL, 'Blouse', 2, '2023-02-28 04:40:14'),
(4, 'Long Sleeve Blouse', 3700, 'XL', NULL, 'Blouse', 2, '2023-02-28 04:40:14'),
(5, 'Jean Trouser', 20000, 'L', NULL, 'Trouser', 3, '2023-02-28 04:42:27'),
(6, 'Pant Trouser', 1000, 'XXL', NULL, 'Trouser', 3, '2023-02-28 04:42:27'),
(7, 'Short Sleeve Blouse', 2500, 'L', NULL, 'Blouse', 2, '2023-02-28 04:47:14'),
(8, 'Long Sleeve Shirt', 5000, 'M', NULL, 'Shirt', 4, '2023-02-28 04:48:06'),
(9, 'Short Sleeve Shirt', 4000, 'XL', NULL, 'Shirt', 4, '2023-02-28 04:48:06'),
(10, 'T-shirt', 3000, 'XXL', NULL, 'Shirt', 4, '2023-02-28 04:49:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_name` (`customer_name`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
