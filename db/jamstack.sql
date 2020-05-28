-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2020 at 06:10 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jamstack`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(50) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `price` int(50) NOT NULL,
  `oldprice` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `description`, `price`, `oldprice`) VALUES
(1, 'Bracelet.', 'Lorem ipsum dolor sit am, placerat ullamcorper mi. Mauris vel arcu imperdiet, iaculis dui at, lobortis diam. Integer auctor interdum diam sit amet mollis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris vel est eget tellus condimentum mollis vel sit amet odio. Phasellus vitae purus at velit placerat ', 670, 1200),
(2, 'Product 2', 'Test Prduct 2', 809, 988),
(3, 'Barrette.', 'Lorem ipsum dolor sit am, placerat ullamcorper mi. Mauris vel arcu imperdiet, iaculis dui at, lobortis diam. Integer auctor interdum diam sit amet mollis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris vel est eget tellus condimentum mollis vel sit amet odio. Phasellus vitae purus at velit placerat ', 500, 690),
(4, 'Belly chain.', 'test3', 670, 800),
(5, 'Belt buckle', 'Lorem ipsum dolor sit am, placerat ullamcorper mi. Mauris vel arcu imperdiet, iaculis dui at, lobortis diam. Integer auctor interdum diam sit amet mollis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris vel est eget tellus condimentum mollis vel sit amet odio. Phasellus vitae purus at velit placerat ', 300, 690);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
