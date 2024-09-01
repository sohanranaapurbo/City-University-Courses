-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2023 at 02:15 AM
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
-- Database: `isap_itfarm`
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
(2115602015, 'Sohan', 'Nobinogor', 1874264850, '2022-07-23'),
(2115602016, 'Rana', 'Savar', 2147483647, '2021-01-07'),
(2115602017, 'Apurbo', 'Cantonment', 1634599744, '2020-02-10'),
(2115602018, 'Israt', 'Chandpur', 2147483647, '2022-07-10'),
(2115602019, 'Jahan', 'Cumilla', 1474264810, '2016-04-25'),
(2115602020, 'Santa', 'Ashulia', 1974264800, '2018-08-29');

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
(211560, 'Abdul', 'Tangail', '2001-07-23', 5000),
(211561, 'Kalam', 'Tangail', '1999-09-09', 10000),
(211562, 'Azad', 'Sirajganj', '1995-05-06', 15000),
(211563, 'Rofiq', 'Manikganj', '2002-04-20', 20000),
(211564, 'Shofiq', 'Dhaka', '2001-10-10', 25000),
(211565, 'Jobbar', 'Khulna', '1997-08-29', 55000);

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
  MODIFY `Dev_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2115602022;

--
-- AUTO_INCREMENT for table `web_developer`
--
ALTER TABLE `web_developer`
  MODIFY `Web_Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211567;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
