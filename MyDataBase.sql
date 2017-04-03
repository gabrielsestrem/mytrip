-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 14, 2017 at 02:18 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MyDataBase`
--

-- --------------------------------------------------------

--
-- Table structure for table `ForgotPassRequest`
--

CREATE TABLE `ForgotPassRequest` (
  `Id` int(11) NOT NULL,
  `Uid` int(11) DEFAULT NULL,
  `RequestDateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `usertype` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `username`, `password`, `email`, `name`, `usertype`) VALUES
(1, 'Gabriel', '123', 'gabriel@terra.com', 'Gabriel', 'U'),
(2, 'test', '123', 'lol@edenz.co.nz', 'Gabriel', 'U'),
(3, 'Juliana', '111', 'juliana@terra.com', 'JulianaG', 'U'),
(4, 'Jessica', '222', 'jessica@terra.com', 'Jessica', 'U'),
(5, 'Mauricio', '', 'msestrem@gmail.com', 'Mauricio Sestrem', 'U'),
(6, 'Bruno', 'Pentium4', 'brunobmx2@hotmail.com', 'Bruno Fischer', 'U'),
(7, 'profebeatriz', '12345', 'profebeatriz@gmail.com', 'Maria Beatriz', 'U'),
(8, 'jgruchinski', '12345', 'jujugru@bol.com.br', 'Juliana Gruchinski', 'U'),
(9, 'marcioleal', 'marcio123', 'marcioleal@terra.com.br', 'Marcio Leal', 'U'),
(10, 'paty', 'paty122', 'patyps@bol.com.br', 'Patricia Pereira da Silva', 'U'),
(11, 'patypaulo', '123', 'patypaulo@bol.com.br', 'Patricia Paulo Araújo', 'U'),
(12, 'Vinicius', '999', 'vin@bol.com.br', 'vinicius', 'U'),
(13, 'henrique', '888', 'henrique@gmail.com', 'henrique', 'U'),
(14, 'potenchip', '28665090', 'potenchip@potenchip.com.br', 'Carlos Emir Sestrem', 'U'),
(15, 'admin', 'admin', 'gabrielmmsestrem@hotmail.com', 'Administrator', 'A'),
(16, 'Michael', 'password', 'michael@ross.co.nz', 'Michael Ross', 'U'),
(17, 'forbici', 'JulioForbici', 'gabrielmmsestrem@gmail.com', 'Julio Forbici', 'U');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ForgotPassRequest`
--
ALTER TABLE `ForgotPassRequest`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Uid` (`Uid`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ForgotPassRequest`
--
ALTER TABLE `ForgotPassRequest`
  ADD CONSTRAINT `forgotpassrequest_ibfk_1` FOREIGN KEY (`Uid`) REFERENCES `Users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
