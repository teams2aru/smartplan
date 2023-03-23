-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2023 at 09:58 AM
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
-- Database: `finance`
--

-- --------------------------------------------------------

--
-- Table structure for table `producttable`
--

CREATE TABLE `producttable` (
  `id` int(11) NOT NULL,
  `productname` varchar(20) NOT NULL,
  `productprice` varchar(20) NOT NULL,
  `productquantity` varchar(20) NOT NULL,
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producttable`
--

INSERT INTO `producttable` (`id`, `productname`, `productprice`, `productquantity`, `remarks`) VALUES
(2, 'Mining', '300', '400', 'Some info about Mining investment '),
(3, 'Mining', '300', '400', 'gsgffg');

-- --------------------------------------------------------

--
-- Table structure for table `rmtable`
--

CREATE TABLE `rmtable` (
  `rmid` int(11) NOT NULL,
  `rmname` varchar(20) NOT NULL,
  `rmpassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `username` varchar(200) NOT NULL,
  `userpassword` varchar(200) NOT NULL,
  `userphone` varchar(50) NOT NULL,
  `useremail` varchar(200) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `fullName`, `username`, `userpassword`, `userphone`, `useremail`, `gender`, `address`, `role`) VALUES
(1, 'Daniel Ng\'ang\'a', 'danitonjoroge@gmail.com', '$2y$10$Kyp6j6WaL6EtD6QbpQLk5uiLad65DrqhsIU5uDWmmzxdqZC81iAHi', '0720819566', 'daniellenjoroge@gmail.com', 'Male', 'Githurai, Nairobi.', 'Investor'),
(2, 'Jane Fiyai', 'fiyaijane@gmail.com', '$2y$10$pIA4g3PInScD.rGwVgiVJOR6uFle1zz4EipTHnTjRCOl0AIxAJhAu', '0720819566', 'daniellenjoroge@gmail.com', 'Male', '14694 Nakuru', 'Investor'),
(4, 'Daniel Ng\'ang\'a', 'fiyaijane@gmail.com', '$2y$10$0xIwAPyZ/zjwQBMxTVEr7.bYvlUwmShzG7l9kwniDjSz4D1u7MX3q', '0720819566', 'fiyaijane@gmail.com', 'Male', 'Githurai, Nairobi.', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `producttable`
--
ALTER TABLE `producttable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtable`
--
ALTER TABLE `rmtable`
  ADD PRIMARY KEY (`rmid`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `producttable`
--
ALTER TABLE `producttable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rmtable`
--
ALTER TABLE `rmtable`
  MODIFY `rmid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
