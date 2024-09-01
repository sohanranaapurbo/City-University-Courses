-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2023 at 02:31 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `isap_itfarm1`
--

-- --------------------------------------------------------

--
-- Table structure for table `software_developer`
--

CREATE TABLE `software_developer` (
  `Dev_id` int(30) NOT NULL,
  `Dev_Name` varchar(45) DEFAULT NULL,
  `Dev_Address` varchar(25) DEFAULT NULL,
  `Dev_Mobile` int(20) DEFAULT NULL,
  `Joining_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `software_developer`
--

INSERT INTO `software_developer` (`Dev_id`, `Dev_Name`, `Dev_Address`, `Dev_Mobile`, `Joining_Date`) VALUES
(2112015, 'Israt', 'Nobinogor', 1874264850, '2022-07-23'),
(2112016, 'Jahan', 'Savar', 142464850, '2020-01-07'),
(2112017, 'Santa', 'Chittagong', 14599744, '2021-02-10'),
(2112018, 'Sanjida', 'Chandpur', 2147483647, '2023-03-10'),
(2112019, 'Apurbo', 'Cumilla', 174264810, '2017-04-25'),
(2112020, 'Shamim', 'Ashulia', 197426400, '2016-08-29');

-- --------------------------------------------------------

--
-- Table structure for table `web_developer`
--

CREATE TABLE `web_developer` (
  `Web_Id` int(20) NOT NULL,
  `Web_Name` varchar(30) DEFAULT NULL,
  `Web_Address` varchar(45) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Salary` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `web_developer`
--

INSERT INTO `web_developer` (`Web_Id`, `Web_Name`, `Web_Address`, `DOB`, `Salary`) VALUES
(21120, 'Sadia', 'Tangail', '2001-07-23', 5000),
(21121, 'Aysha', 'Chandpur', '1999-09-09', 10000),
(21122, 'Rakib', 'Dhanmondi', '1995-05-06', 15000),
(21123, 'Somrat', 'Motijhil', '2002-04-20', 20000),
(21124, 'Shohidul', 'Dhaka', '2001-10-10', 25000),
(21125, 'Faria', 'Khulna', '1997-08-29', 55000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `software_developer`
--
ALTER TABLE `software_developer`
  ADD PRIMARY KEY (`Dev_id`);

--
-- Indexes for table `web_developer`
--
ALTER TABLE `web_developer`
  ADD PRIMARY KEY (`Web_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `software_developer`
--
ALTER TABLE `software_developer`
  MODIFY `Dev_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2112022;

--
-- AUTO_INCREMENT for table `web_developer`
--
ALTER TABLE `web_developer`
  MODIFY `Web_Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21127;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
