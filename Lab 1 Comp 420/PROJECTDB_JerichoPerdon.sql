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
-- Database: `PROJECTDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `PROJECT`
--

CREATE TABLE `PROJECT` (
  `PROJECT_CODE` varchar(5) DEFAULT NULL,
  `PROJECT_MANAGER_ID` smallint(6) DEFAULT NULL,
  `PROJECT_MANAGER` varchar(15) DEFAULT NULL,
  `MANAGER_PHONE` varchar(12) DEFAULT NULL,
  `MANAGER_ADDRESS` varchar(37) DEFAULT NULL,
  `PROJECT_BID_PRICE` int(11) DEFAULT NULL,
  `START_DATE` varchar(19) DEFAULT NULL,
  `END_DATE` varchar(19) DEFAULT NULL,
  `COMPLETED` varchar(5) DEFAULT NULL,
  `HIRE_DATE` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PROJECT`
--

INSERT INTO `PROJECT` (`PROJECT_CODE`, `PROJECT_MANAGER_ID`, `PROJECT_MANAGER`, `MANAGER_PHONE`, `MANAGER_ADDRESS`, `PROJECT_BID_PRICE`, `START_DATE`, `END_DATE`, `COMPLETED`, `HIRE_DATE`) VALUES
('21-5Z', 2, 'Holly B. Parker', '904-338-3416', '3335 Lee Rd., Gainesville, FL  37123', 16833460, '2016-04-01 00:00:00', '2017-02-10 00:00:00', 'True', '2012-04-10 00:00:00'),
('25-2D', 3, 'Jane D. Grant', '615-898-9909', '218 Clark Blvd., Nashville, TN  36362', 12500000, '2016-05-03 00:00:00', '2016-09-07 00:00:00', 'True', '2010-02-16 00:00:00'),
('25-5A', 4, 'George F. Dorts', '615-227-1245', '124 River Dr., Franklin, TN  29185', 32512420, '2016-06-22 00:00:00', '2017-07-12 00:00:00', 'True', '2008-09-02 00:00:00'),
('25-9T', 2, 'Holly B. Parker', '904-338-3416', '3334 Lee Rd., Gainesville, FL  37123', 21563234, '2016-08-29 00:00:00', '2017-09-25 00:00:00', 'True', '2012-04-10 00:00:00'),
('27-4Q', 4, 'George F. Dorts', '615-227-1245', '124 River Dr., Franklin, TN  29185', 10314545, '2016-09-13 00:00:00', '2017-07-29 00:00:00', 'True', '2008-09-02 00:00:00'),
('29-2D', 2, 'Holly B. Parker', '904-338-3416', '3334 Lee Rd., Gainesville, FL  37123', 25559999, '2016-10-31 00:00:00', '2017-03-16 00:00:00', 'True', '2012-04-10 00:00:00'),
('31-7P', 5, 'William K. Moor', '904-445-2719', '216 Morton Rd., Stetson, FL  30155', 56850000, '2016-11-17 00:00:00', '2017-12-31 00:00:00', 'True', '2011-06-06 00:00:00'),
('41-8C', 3, 'Jane D. Grant', '615-898-9909', '218 Clark Blvd., Nashville, TN  36362', 11643525, '2017-12-30 00:00:00', '2018-05-23 00:00:00', 'True', '2010-02-16 00:00:00'),
('42-9C', 5, 'William K. Moor', '904-445-2719', '212 Morton Rd., Stetson, FL  30155', 23350000, '2017-06-16 00:00:00', '2018-03-02 00:00:00', 'True', '2011-06-06 00:00:00'),
('50-1B', 3, 'Jane D. Grant', '615-898-9909', '28 Clark Blvd., Nashville, TN  36362', 14223500, '2017-06-18 00:00:00', '2018-01-12 00:00:00', 'True', '2010-02-16 00:00:00'),
('52-9C', 4, 'George F. Dorts', '615-227-1245', '124 River Dr., Franklin, TN  29185', 11232100, '2017-04-01 00:00:00', '2018-03-11 00:00:00', 'True', '2008-09-02 00:00:00'),
('53-1A', 2, 'Holly B. Parker', '904-338-3416', '3334 Lee Rd., Gainesville, FL  37123', 12258500, '2018-05-14 00:00:00', '', 'True', '2012-04-10 00:00:00'),
('54-2D', 4, 'George Dorts', '615-227-1245', '124 River Dr., Franklin, TN  29185', 10563500, '2018-06-12 00:00:00', '', 'False', '2008-09-02 00:00:00'),
('65-9C', 5, 'William K. Moor', '904-445-2719', '216 Morton Rd., Stetson, FL  30155', 23166100, '2018-06-15 00:00:00', '', 'False', '2011-06-06 00:00:00'),
('67-3B', 3, 'Jane D. Grant', '615-898-9909', '218 Clark Blvd., Nashville, TN  36362', 19350300, '2018-07-21 00:00:00', '', 'False', '2010-02-16 00:00:00'),
('68-8A', 2, 'Holly B. Parker', '904-338-3416', '3334 Lee Rd., Gainesville, FL  37123', 12412652, '2018-09-25 00:00:00', '', 'False', '2012-04-10 00:00:00'),
('70-4D', 4, 'George F.Dorts', '615-227-1246', '124 River Dr., Franklin,TN 29185', 12983911, '2018-10-15 00:00:00', '', 'False', '2008-09-02 00:00:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
