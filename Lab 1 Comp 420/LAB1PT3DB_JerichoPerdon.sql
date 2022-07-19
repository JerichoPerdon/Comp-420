-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 30, 2021 at 03:35 AM
-- Server version: 10.2.38-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `LAB1PT3DB`
--

-- --------------------------------------------------------

--
-- Table structure for table `PRODUCTS`
--

CREATE TABLE `PRODUCTS` (
  `Brand` varchar(25) NOT NULL,
  `Seller` varchar(25) NOT NULL,
  `Casual` varchar(25) NOT NULL,
  `Color` varchar(25) NOT NULL,
  `Availability` varchar(25) NOT NULL,
  `Used` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PRODUCTS`
--

INSERT INTO `PRODUCTS` (`Brand`, `Seller`, `Casual`, `Color`, `Availability`, `Used`) VALUES
('Adidas', 'Amazon Export Sales LLC.', 'Yes', 'Black', 'Yes', 'Yes'),
('Asics', 'Amazon Export Sales LLC.', 'Yes', 'Blue', 'Yes', 'Yes'),
('Cole Haan', 'Amazon.com', 'No', 'Black', 'Yes', 'Yes'),
('Nike', 'Sucream', 'Yes', 'White', 'Yes', 'Yes'),
('Sperry', 'Amazon Export Sales LLC.', 'Yes', 'Brown', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `PURCHASES`
--

CREATE TABLE `PURCHASES` (
  `Receiver` varchar(30) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Quantity` varchar(30) NOT NULL,
  `Price` varchar(30) NOT NULL,
  `Used` varchar(30) NOT NULL,
  `Brand` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PURCHASES`
--

INSERT INTO `PURCHASES` (`Receiver`, `Address`, `Quantity`, `Price`, `Used`, `Brand`) VALUES
('Ternel', '123 Terry Way', '1', '$30.00', 'No', 'Adidas'),
('Daniel', '123 Danny St', '5', '$25.00', 'No', 'Asics'),
('Jeffery', '123 Jeffery St', '2', '$40.00', 'No', 'Cole Haan'),
('Jerry', '123 Jerry Pl', '1', '$1500.00', 'No', 'Nike'),
('Glenny', '123 Glenny Way', '1', '$20.00', 'No', 'Sperry');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `PRODUCTS`
--
ALTER TABLE `PRODUCTS`
  ADD PRIMARY KEY (`Brand`);

--
-- Indexes for table `PURCHASES`
--
ALTER TABLE `PURCHASES`
  ADD PRIMARY KEY (`Brand`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `PURCHASES`
--
ALTER TABLE `PURCHASES`
  ADD CONSTRAINT `PURCHASES_ibfk_1` FOREIGN KEY (`Brand`) REFERENCES `PRODUCTS` (`Brand`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
