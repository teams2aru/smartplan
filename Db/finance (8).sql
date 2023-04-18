-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2023 at 08:25 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

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
-- Table structure for table `investments`
--

CREATE TABLE `investments` (
  `inv_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `idea_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `meesage_id` int(11) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`meesage_id`, `sender`, `receiver`, `message`) VALUES
(1, '5', '2', 'Something'),
(2, '5', '1', 'Something'),
(3, '5', '5', 'mhhg'),
(4, '9', '9', 'xgsdfgsdfgsdfgsdfgsdfg');

-- --------------------------------------------------------

--
-- Table structure for table `producttable`
--

CREATE TABLE `producttable` (
  `id` int(11) NOT NULL,
  `productname` varchar(20) NOT NULL,
  `idea_type` varchar(255) NOT NULL,
  `idea_abstract` text NOT NULL,
  `idea_descr` text NOT NULL,
  `author` text NOT NULL,
  `idea_expiry` date NOT NULL,
  `idea_risk` varchar(200) NOT NULL,
  `idea_instruments` varchar(200) NOT NULL,
  `idea_currency` varchar(200) NOT NULL,
  `idea_major` varchar(200) NOT NULL,
  `idea_minor` varchar(200) NOT NULL,
  `idea_region` varchar(200) NOT NULL,
  `idea_country` varchar(200) NOT NULL,
  `idea_status` varchar(50) DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `taggedusers` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rmtable`
--

CREATE TABLE `rmtable` (
  `rmid` int(11) NOT NULL,
  `rmname` varchar(20) NOT NULL,
  `rmpassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `fullName`, `username`, `userpassword`, `userphone`, `useremail`, `gender`, `address`, `role`) VALUES
(1, 'Daniel Ng\'ang\'a', 'danitonjoroge@gmail.com', '$2y$10$Kyp6j6WaL6EtD6QbpQLk5uiLad65DrqhsIU5uDWmmzxdqZC81iAHi', '0720819566', 'daniellenjoroge@gmail.com', 'Male', 'Githurai, Nairobi.', 'Investor'),
(2, 'Jane Fiyai', 'fiyaijane@gmail.com', '$2y$10$pIA4g3PInScD.rGwVgiVJOR6uFle1zz4EipTHnTjRCOl0AIxAJhAu', '0720819566', 'daniellenjoroge@gmail.com', 'Male', '14694 Nakuru', 'Investor'),
(4, 'Daniel Ng\'ang\'a', 'fiyaijane@gmail.com', '$2y$10$0xIwAPyZ/zjwQBMxTVEr7.bYvlUwmShzG7l9kwniDjSz4D1u7MX3q', '0720819566', 'fiyaijane@gmail.com', 'Male', 'Githurai, Nairobi.', 'Relationship Manager'),
(5, 'James Njoroge', 'Jamjo', '$2y$10$4gs0yR3FFsPx8zZpqmrXau4EkziR9Vmzlnwq2BnHmsmQHwztdJ/ou', '0720819566', 'news24media@protonmail.com', 'Male', 'Githurai, Nairobi.', 'Admin'),
(6, 'John', 'news24media@protonmail.com', '$2y$10$EAat9cksPhHeNm/r.Cn5Ne5pXVGVkP4zkNQnTrRpCTVL1HrRXFvhy', '071212121212', 'johndoe@mail.com', 'Male', 'Nairobi', 'Relationship Manager'),
(7, 'Daniel Ng\'ang\'a', 'News 24', '$2y$10$eH4b064QoP9L7YaVtAKNnOaNG.t.49eNsO4rG/2OXfkmbiNQ6Z5yO', '0720819566', 'news24media1@protonmail.com', 'Male', 'Githurai, Nairobi.', 'Creator'),
(9, 'Akshaydewan', 'Akshaydewan', '$2y$10$4aXMSNaLn7WBz3pecpc3Le5KmhibCfBF/HUIkI6TjEDTvDKkizHHy', '0720819566', 'akshaydewan@mail.com', 'Male', 'Githurai, Nairobi.', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `investments`
--
ALTER TABLE `investments`
  ADD PRIMARY KEY (`inv_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `ideaid` (`idea_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`meesage_id`);

--
-- Indexes for table `producttable`
--
ALTER TABLE `producttable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`approved_by`);

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
-- AUTO_INCREMENT for table `investments`
--
ALTER TABLE `investments`
  MODIFY `inv_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `meesage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `producttable`
--
ALTER TABLE `producttable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rmtable`
--
ALTER TABLE `rmtable`
  MODIFY `rmid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `producttable`
--
ALTER TABLE `producttable`
  ADD CONSTRAINT `producttable_ibfk_1` FOREIGN KEY (`approved_by`) REFERENCES `usertable` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
