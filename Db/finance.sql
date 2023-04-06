-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2023 at 12:04 PM
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
  `idea_country` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producttable`
--

INSERT INTO `producttable` (`id`, `productname`, `idea_type`, `idea_abstract`, `idea_descr`, `author`, `idea_expiry`, `idea_risk`, `idea_instruments`, `idea_currency`, `idea_major`, `idea_minor`, `idea_region`, `idea_country`) VALUES
(3, 'Lorem ipsum dolor si', '3', 'Lorem ipsum dolor sit amet consectetur adipiscing elit, consequat integer nec turpis placerat fames. Varius sapien bibendum sem ullamcorper praesent at porta tempus pharetra, et risus habitasse nisl tincidunt condimentum cum odio commodo, laoreet tristique tortor litora ut eros netus libero. Dapibus dui placerat nisi ad eros potenti fermentum malesuada porta in, leo egestas tristique viverra erat hendrerit ornare magna fringilla. In mauris facilisis feugiat integer congue pretium ad consequat montes, mollis praesent ligula id ultrices nibh dictumst per natoque, fringilla maecenas fusce venenatis donec sapien lacinia arcu.', 'Lorem ipsum dolor sit amet consectetur adipiscing elit potenti metus pharetra natoque, laoreet eleifend senectus quis nibh urna in fringilla euismod sodales scelerisque mus, pretium tortor turpis phasellus fusce at porttitor pulvinar facilisi auctor. Torquent velit blandit conubia ante ac diam mattis, malesuada proin ultrices nunc habitasse id dignissim, pharetra mus sapien feugiat tristique tempor. Inceptos taciti proin ut nisi turpis aliquam potenti aliquet rutrum, himenaeos phasellus pellentesque pharetra sagittis posuere conubia eros, volutpat at ridiculus feugiat tortor vehicula in class. Odio netus et dui nec nam egestas aliquet aliquam rhoncus nisi velit gravida cras eros, fames morbi nascetur fusce ac diam enim in dictumst ridiculus sed tortor. Nibh viverra fringilla habitasse faucibus vulputate luctus nostra pulvinar vehicula varius duis, ullamcorper laoreet magnis risus quam sodales dis taciti volutpat. Imperdiet ligula ut vitae eu in dictumst lobortis turpis, per sapien sem mauris eros ante elementum pretium, phasellus et sed massa interdum porta morbi.\r\n\r\nDignissim hendrerit convallis vel quis curabitur pellentesque ac viverra bibendum pretium nascetur dictum, nisi at diam per purus elementum condimentum mattis arcu habitasse venenatis vitae, congue hac ante etiam id primis senectus leo sapien phasellus sem. Parturient justo et convallis nec laoreet ultrices, luctus cubilia ultricies magnis congue ante faucibus, platea diam blandit rutrum augue. Nullam fringilla sociosqu phasellus ut eleifend tortor suscipit senectus suspendisse molestie, curae sollicitudin placerat etiam euismod mollis a mattis massa vulputate, nisi rhoncus litora et pulvinar in vehicula class leo. Laoreet vivamus placerat nulla ac praesent ante molestie, tellus porttitor nisi erat platea enim, est lacinia class ad eu fusce. Sapien mattis ut faucibus suscipit viverra auctor duis primis curae, class penatibus sollicitudin eros nec nascetur est semper scelerisque, habitasse sed maecenas nibh varius augue tempor cubilia. Lobortis venenatis id semper felis eget massa sodales aenean curabitur, aptent congue at molestie elementum ullamcorper neque suspendisse, fusce vulputate maecenas diam consequat mollis gravida porttitor.\r\n\r\nHabitant penatibus metus nam luctus malesuada integer nec ridiculus euismod lacus, in habitasse primis feugiat ante pellentesque cubilia phasellus tellus, risus vel leo lectus dictumst magna rhoncus commodo quis. Sociosqu proin parturient penatibus varius tincidunt class congue interdum duis montes tempus vehicula ligula, mollis cras turpis sollicitudin sodales quam tristique eu ridiculus tempor ac. Per velit cursus mauris proin pellentesque potenti consequat platea, interdum conubia torquent vel aliquet curae justo, dictum primis mattis sollicitudin blandit venenatis eleifend. Sapien tempus non sodales odio augue in accumsan, sem sociis cras integer mollis quisque interdum, posuere eros aliquam vehicula inceptos morbi. Litora enim pharetra ornare habitant morbi auctor pellentesque porttitor, congue himenaeos penatibus montes curabitur sodales arcu ultricies quis, est suspendisse rhoncus imperdiet leo tortor per. Commodo at penatibus consequat proin curae purus litora porta leo, ullamcorper justo aliquam massa rutrum volutpat erat faucibus quisque in, vivamus bibendum praesent fames neque turpis enim vestibulum. Commodo libero praesent turpis quisque neque ut vitae id ligula maecenas, bibendum et diam scelerisque massa eleifend viverra sociosqu mus pellentesque dictum, proin inceptos hac ultrices lacinia nulla vivamus porta nibh.\r\n\r\nCras imperdiet magnis vehicula consequat id risus potenti interdum lobortis, natoque turpis fusce montes rhoncus pellentesque sociosqu pretium, praesent neque dignissim aliquet egestas litora nostra curabitur. Mauris tellus magnis ridiculus praesent eleifend vivamus vehicula enim ultrices nisi, himenaeos dapibus id in senectus faucibus sociosqu porta dis curae fringilla, leo tincidunt vestibulum euismod sodales eu sem lobortis convallis. Quis velit gravida scelerisque hac faucibus vehicula, mauris nascetur id cum bibendum conubia sociis, feugiat imperdiet semper felis et. Sollicitudin ante lobortis metus senectus molestie dapibus cras convallis vel blandit non, dis ullamcorper conubia etiam congue nisl ridiculus dictum mauris auctor, malesuada facilisi risus nec himenaeos justo montes sed porttitor faucibus. Nam tempus felis ullamcorper dis proin potenti ultricies, accumsan primis auctor dapibus mauris lectus mattis urna, turpis semper ridiculus pulvinar torquent ut. Ridiculus nisi gravida vitae ad orci sociis pharetra ultrices varius, eget mattis litora aenean odio phasellus tristique quisque, mus convallis dapibus rhoncus nulla semper erat est. Eros euismod accumsan etiam nisi lacinia fusce odio massa, suscipit platea aenean purus in parturient mauris tellus urna, id luctus mattis nullam rutrum natoque sem. Maecenas conubia eros diam urna eu auctor hendrerit sollicitudin nascetur elementum neque, penatibus suscipit purus quis gravida posuere sagittis volutpat dignissim.\r\n\r\nPurus ultricies curae cum litora nibh pharetra sed nisi, ullamcorper penatibus facilisi sodales praesent ridiculus fermentum, sagittis dictumst integer et gravida class scelerisque. Vel suspendisse etiam ut lacinia at fames lacus mollis vivamus eget, habitasse justo turpis praesent pharetra scelerisque sapien magnis duis. Senectus nullam litora habitasse erat suscipit lectus mollis vestibulum, pulvinar arcu nulla libero congue natoque cursus. Semper cursus dapibus erat placerat sem vehicula, accumsan aliquet ullamcorper lacinia lobortis rhoncus, facilisis fermentum tortor vitae natoque. Placerat fusce ligula ultrices faucibus neque facilisis cum ullamcorper eros, in orci tellus vitae curabitur viverra lectus parturient facilisi purus, ac ut feugiat consequat ante penatibus dictum nibh.\r\n\r\nAliquet ut mollis donec natoque dictum conubia feugiat in quam phasellus rhoncus nec laoreet, vivamus ridiculus integer lacus urna elementum taciti nisi vel pharetra molestie. Pellentesque duis accumsan cum pretium tempus egestas orci potenti, condimentum sagittis vulputate imperdiet eget magna libero dictumst, ridiculus sapien placerat montes congue erat ornare. Auctor sociis eu tincidunt dis aliquam velit in ut, metus nascetur fringilla faucibus luctus mauris donec lobortis, sodales viverra urna leo ad ullamcorper habitasse. Diam penatibus habitasse mus mi proin nunc, per facilisis dui volutpat interdum. Et velit semper pellentesque aliquet aliquam urna venenatis porta ultrices condimentum nostra, taciti lectus lacus dis posuere euismod torquent rhoncus viverra consequat elementum, purus sociosqu senectus augue tristique nibh eget in volutpat neque. Mus ad justo conubia vitae tincidunt nostra penatibus nullam, feugiat fringilla ridiculus dapibus varius at primis venenatis, scelerisque tellus consequat porta pellentesque placerat tortor. Montes curae condimentum cubilia facilisis sociis suscipit dui vivamus erat platea, proin justo laoreet nisi dis netus mus velit aenean. Pellentesque urna himenaeos placerat rutrum phasellus class dui nostra, a lobortis potenti vel est ac lacus.', '5', '2027-10-07', '2', 'Dollar', 'USD', 'ICT', 'Cybersecurity', 'North America', 'Kenya');

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
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `fullName`, `username`, `userpassword`, `userphone`, `useremail`, `gender`, `address`, `role`) VALUES
(1, 'Daniel Ng\'ang\'a', 'danitonjoroge@gmail.com', '$2y$10$Kyp6j6WaL6EtD6QbpQLk5uiLad65DrqhsIU5uDWmmzxdqZC81iAHi', '0720819566', 'daniellenjoroge@gmail.com', 'Male', 'Githurai, Nairobi.', 'Investor'),
(2, 'Jane Fiyai', 'fiyaijane@gmail.com', '$2y$10$pIA4g3PInScD.rGwVgiVJOR6uFle1zz4EipTHnTjRCOl0AIxAJhAu', '0720819566', 'daniellenjoroge@gmail.com', 'Male', '14694 Nakuru', 'Investor'),
(4, 'Daniel Ng\'ang\'a', 'fiyaijane@gmail.com', '$2y$10$0xIwAPyZ/zjwQBMxTVEr7.bYvlUwmShzG7l9kwniDjSz4D1u7MX3q', '0720819566', 'fiyaijane@gmail.com', 'Male', 'Githurai, Nairobi.', 'Admin'),
(5, 'James Njoroge', 'Jamjo', '$2y$10$4gs0yR3FFsPx8zZpqmrXau4EkziR9Vmzlnwq2BnHmsmQHwztdJ/ou', '0720819566', 'news24media@protonmail.com', 'Male', 'Githurai, Nairobi.', 'Relationship Manager'),
(6, 'John', 'news24media@protonmail.com', '$2y$10$EAat9cksPhHeNm/r.Cn5Ne5pXVGVkP4zkNQnTrRpCTVL1HrRXFvhy', '071212121212', 'johndoe@mail.com', 'Male', 'Nairobi', 'Relationship Manager');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
