-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2020 at 04:09 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `steps`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `address` varchar(200) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `city` varchar(60) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`, `address`, `gender`, `city`, `date`) VALUES
(2, 'Ragini 20', 'gour.ragini@gmail.com', 'nagkldcnoquev', 'kjcgskwbc ', 'on', 'nagpur', '2018-10-20 00:00:00'),
(3, 'ASIMA', 'nandeshwarasima22@gmail.com', '3a029f04d76d32e79367c4b3255dda4d', 'nagpur', 'on', 'nagpur', '2018-10-20 00:00:00'),
(5, 'kashmira thul', 'kashmirathul2809@gmail.com', '78bf4f00f81a36b57950e239f1df91c1', 'scSCscACac', 'on', 'pune', '2018-10-20 00:00:00'),
(6, 'shalini gour987', 'shalinigour93@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'nagpur', 'on', 'pune', '2018-11-01 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
