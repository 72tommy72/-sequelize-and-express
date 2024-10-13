-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 16, 2023 at 11:29 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment4-2`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `pName` varchar(255) NOT NULL,
  `pDescription` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `createdby` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `pName`, `pDescription`, `price`, `createdby`) VALUES
(1, 'iPhone', 'phone', '200.00', '3'),
(2, 'Samsung-TV\r\n', 'Tv', '3000.00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pName` varchar(255) NOT NULL,
  `pDescription` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `createdby` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pName`, `pDescription`, `price`, `createdby`) VALUES
(1, 'iPhone', 'Phone', '100.00', '2'),
(2, 'Samsung-TV\r\n', 'Tv', '3000.00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

  CREATE TABLE `users` (
    `id` int(11) NOT NULL,
    `name` varchar(255) NOT NULL,
    `email` varchar(255) NOT NULL,
    `password` varchar(255) NOT NULL,
    `age` int(11) DEFAULT NULL,
    `createdAt` datetime DEFAULT NULL,
    `updatedAt` datetime DEFAULT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `age`, `createdAt`, `updatedAt`) VALUES
(1, 'mo', 'mo@gmail.com', '333', 30, NULL, NULL),
(2, 'Mahmoued', 'Mahmoued@gmail.com', '139', 27, '2023-06-22 05:19:15', '2023-06-22 05:19:15'),
(5, 'ahmed', 'ahmedd@gmail.com', '136', 30, '2023-06-22 06:48:25', '2023-06-22 06:48:25'),
(6, 'ahmeddd', 'ahmeddd@gmail.com', '136', 25, '2023-06-22 06:50:07', '2023-06-22 06:50:07'),
(7, 'Mohameddde', 'Mohamedddk@gmail.com', '1388', 25, '2023-06-22 06:50:26', '2023-07-15 10:49:08'),
(8, 'alim', 'ali@gmail.com', '136', 27, '2023-06-22 13:52:14', '2023-06-22 13:52:14'),
(9, 'alim', 'ali@gmail.com', '136', 27, '2023-06-22 16:13:51', '2023-06-22 16:13:51'),
(10, 'alim', 'ali@gmail.com', '136', 27, '2023-06-22 16:20:18', '2023-06-22 16:20:18'),
(11, 'John Doe', 'john.doe@example.com', 'password123', 25, '2023-07-14 13:01:18', '2023-07-14 13:01:18'),
(12, 'sako Doe', 'sako.doe@example.com', 'password123', 25, '2023-07-15 10:48:59', '2023-07-15 10:48:59'),
(13, ' Doe', 'doe@example.com', 'password122', 25, '2023-07-16 23:14:59', '2023-07-16 23:14:59'),
(14, ' Doe', 'doe@example.com', 'password122', 25, '2023-07-16 23:22:43', '2023-07-16 23:22:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
