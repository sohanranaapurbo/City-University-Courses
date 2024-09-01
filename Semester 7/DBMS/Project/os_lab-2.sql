-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2023 at 04:26 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `os_lab`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `acc_type` varchar(20) NOT NULL,
  `person_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `acc_type`, `person_id`) VALUES
(1, 'super_admin', 1),
(2, 'admin', 2),
(3, 'sub_admin', 3);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `book_condition` varchar(50) DEFAULT NULL,
  `book_discount` decimal(5,2) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `writer` varchar(255) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `book_name`, `quantity`, `book_condition`, `book_discount`, `price`, `writer`, `category`) VALUES
(1, 'A Golden Age', 14, 'Used', '150.00', '1200.00', 'Tahmima Anama', 'Fiction'),
(2, 'The Storm', 5, 'Used', '120.00', '1400.00', 'Razia Rahman', 'Fiction'),
(3, 'Muktijuddher Itihash', 15, 'New', '180.00', '1300.00', 'Shamsul Alam', 'History'),
(4, 'Nishiddho Loban', 8, 'Used', '90.00', '1300.00', 'Humayun Ahmed', 'Fiction'),
(5, 'A Golden Age 2', 12, 'New', '160.00', '1500.00', 'Tahmima Anam', 'Fiction'),
(6, 'Bangladesh: A Legacy of Blood', 20, 'New', '200.00', '1100.00', 'Anthony Mascarenhas', 'History'),
(7, 'The Lowland', 10, 'New', '150.00', '1700.00', 'Jhumpa Lahiri', 'Fiction'),
(8, 'Meyetir Naam Narina', 15, 'Used', '120.00', '1400.00', 'Bibhutibhushan Bandopadhyay', 'Fiction'),
(9, 'Lalsalu', 8, 'New', '150.00', '1200.00', 'Syed Waliullah', 'Fiction'),
(10, 'Bangladesh: Reflections on the Water', 12, 'New', '180.00', '1500.00', 'James J. Novak', 'Travel'),
(11, 'The Hungry Tide', 10, 'Used', '90.00', '1600.00', 'Amitav Ghosh', 'Fiction'),
(12, 'Ekattorer Dinguli', 10, 'New', '160.00', '1100.00', 'Jahanara Imam', 'Memoir'),
(13, 'A Golden Age 3', 5, 'New', '150.00', '1300.00', 'Tahmima Anam', 'Fiction'),
(14, 'A River Runs Through It', 15, 'New', '160.00', '1500.00', 'Richard Evans Schultes', 'Nature'),
(15, 'Hajar Bochhor Dhore', 8, 'Used', '90.00', '1400.00', 'Zahir Raihan', 'Fiction'),
(16, 'The Glass Palace', 12, 'New', '150.00', '1300.00', 'Amitav Ghosh', 'Historical Fiction'),
(17, 'Megher Pore Rod', 10, 'New', '160.00', '1200.00', 'Humayun Azad', 'Fiction'),
(18, 'The Rickshaw Girl', 15, 'New', '180.00', '1500.00', 'Mitali Perkins', 'Children'),
(19, 'Gora', 8, 'Used', '150.00', '1400.00', 'Rabindranath Tagore', 'Fiction'),
(20, 'The Argumentative Indian', 12, 'New', '200.00', '1200.00', 'Amartya Sen', 'Philosophy'),
(21, 'Test Book 21', 50, 'new', '120.00', '780.00', 'tawmeed', 'fiction'),
(22, 'Test Book 22', 61, 'used', '140.00', '1200.00', 'Apurvo Jahan Ishrat', 'Drama'),
(23, 'Test Book 23', 18, 'used', '100.00', '1500.00', 'Tahmeedul Islam', 'romantic'),
(24, 'Test Book 24', 61, 'used', '120.00', '1200.00', 'Tahmeedul Islam', 'nonfiction'),
(25, 'Test Book 25', 61, 'new', '0.00', '1200.00', 'Tahmeedul Islam', 'romantic');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `cust_id`, `date`, `quantity`, `book_id`) VALUES
(1, 101, '2023-05-01', 6, 3),
(2, 102, '2023-05-02', 3, 2),
(3, 103, '2023-05-03', 2, 3),
(4, 104, '2023-05-04', 1, 4),
(5, 105, '2023-05-05', 4, 5),
(6, 106, '2023-05-06', 2, 6),
(7, 107, '2023-05-07', 3, 7),
(8, 108, '2023-05-08', 1, 8),
(9, 109, '2023-05-09', 5, 9),
(10, 110, '2023-05-10', 2, 10),
(11, 111, '2023-05-11', 3, 11),
(12, 112, '2023-05-12', 4, 12),
(13, 113, '2023-05-13', 2, 13),
(14, 114, '2023-05-14', 1, 14),
(15, 115, '2023-05-15', 5, 15),
(16, 116, '2023-05-16', 3, 16),
(17, 117, '2023-05-17', 4, 17),
(18, 118, '2023-05-18', 2, 18),
(19, 119, '2023-05-19', 1, 19),
(20, 120, '2023-05-20', 5, 20),
(21, 121, '2023-05-21', 3, 21),
(22, 122, '2023-05-22', 4, 22),
(23, 123, '2023-05-23', 2, 23),
(24, 124, '2023-05-24', 1, 24),
(25, 125, '2023-05-25', 5, 25),
(28, 99, '2023-05-20', 0, 99),
(29, 15, '2023-05-20', 99, 88),
(30, 15, '2023-05-20', 18, 21);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `person_id` int(11) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `mobile`, `gender`, `email`, `address`, `name`, `password`) VALUES
(1, '01700547406', 'Male', 'taahmeed.com.bd@gmail.com', 'Tangail, Dhaka', 'Tahmeedul Islam', 'adMin@314#'),
(2, '01587454125', 'Male', 'apurbobhai@gmail.com', 'Savar, Dhaka', 'AI Rahman', 'admin123'),
(3, '01698547412', 'Female', 'shanta-apu@gmail.com', 'Savar, Dhaka', 'Ishrat Jahan', 'admin123'),
(4, '01754874514', 'Male', 'another-apu@gmail.com', 'Savar, Dhaka', 'Mishrat Jahan', 'user123'),
(5, '01987654321', 'Female', 'example5@gmail.com', 'Rajshahi', 'Sarah Thompson', 'password5'),
(6, '01543216789', 'Male', 'example6@gmail.com', 'Khulna', 'Michael Davis', 'password6'),
(7, '01789065432', 'Female', 'example7@gmail.com', 'Barisal', 'Jessica Wilson', 'password7'),
(8, '01678954321', 'Male', 'example8@gmail.com', 'Dhaka', 'Christopher Lee', 'password8'),
(9, '01897654321', 'Female', 'example9@gmail.com', 'Sylhet', 'Emily Brown', 'password9'),
(10, '01765438902', 'Male', 'example10@gmail.com', 'Chittagong', 'Daniel Thomas', 'password10'),
(11, '01987651234', 'Female', 'example11@gmail.com', 'Rajshahi', 'Olivia Clark', 'password11'),
(12, '01543219876', 'Male', 'example12@gmail.com', 'Khulna', 'Matthew White', 'password12'),
(13, '01789054321', 'Female', 'example13@gmail.com', 'Barisal', 'Sophia Turner', 'password13'),
(14, '01678951234', 'Male', 'example14@gmail.com', 'Dhaka', 'Andrew Martin', 'password14'),
(15, '01897659876', 'Female', 'example15@gmail.com', 'Sylhet', 'Emma Anderson', 'password15');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `report_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`report_id`, `book_id`, `cust_id`, `quantity`, `date`) VALUES
(1, 1, 1, 1, '2023-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `review` varchar(200) NOT NULL,
  `book_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sallers`
--

CREATE TABLE `sallers` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `salary` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sallers`
--

INSERT INTO `sallers` (`id`, `person_id`, `salary`) VALUES
(5, 0, 2500),
(6, 0, 2500),
(7, 0, 2500),
(8, 0, 2500),
(9, 0, 2500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sallers`
--
ALTER TABLE `sallers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sallers`
--
ALTER TABLE `sallers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
