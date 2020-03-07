-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2020 at 07:45 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rms1`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(20) NOT NULL,
  `email` varchar(44) NOT NULL,
  `message` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `email`, `message`) VALUES
(2, 'ds', '134'),
(3, 'firoz@gmail.com', 'hello admin ,\r\ncontact number plz\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`id`, `email`, `message`) VALUES
(5, 'saiedfoyez@gmail.com', 'sdsds'),
(6, 'tamimcse@gmail.com', 'tamimcse@gmail.com'),
(9, 'firozmahmud@gmail.com', 'jkkjcvbnm,mn');

-- --------------------------------------------------------

--
-- Table structure for table `food_experience`
--

CREATE TABLE `food_experience` (
  `f_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `f_about` text NOT NULL,
  `r_location` varchar(255) NOT NULL,
  `f_exp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_experience`
--

INSERT INTO `food_experience` (`f_id`, `u_id`, `u_name`, `f_about`, `r_location`, `f_exp`) VALUES
(4, 0, 'saiedfoyez', 'hallow', 'hai', 'bay'),
(5, 0, 'mahamud', '2-03-19', '2nd', 'sdf');

-- --------------------------------------------------------

--
-- Table structure for table `item_details`
--

CREATE TABLE `item_details` (
  `i_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `i_name` varchar(255) NOT NULL,
  `i_detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_details`
--

INSERT INTO `item_details` (`i_id`, `r_id`, `i_name`, `i_detail`) VALUES
(7, 4, 'Curry 2 xx', 'Curry 2 xx'),
(10, 5, 'Khichuri', 'Khichuri'),
(12, 1, 'kacchi', 'kacchi old dhaka'),
(13, 1, 'Beaf kabab', 'Beaf kabab');

-- --------------------------------------------------------

--
-- Table structure for table `pic`
--

CREATE TABLE `pic` (
  `p_id` int(33) NOT NULL,
  `u_id` int(11) NOT NULL,
  `username` varchar(33) NOT NULL,
  `filename` varchar(44) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pic`
--

INSERT INTO `pic` (`p_id`, `u_id`, `username`, `filename`) VALUES
(1, 23, 'mahamud', '1583521968553-IMG_20200228_180823.jpg'),
(2, 23, 'mahamud', '1583523469261-bird-s-eye-view-of-city-during');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_details`
--

CREATE TABLE `reservation_details` (
  `f_id` int(44) NOT NULL,
  `u_id` int(11) NOT NULL,
  `date` varchar(44) NOT NULL,
  `time` varchar(44) NOT NULL,
  `p_no` varchar(44) NOT NULL,
  `g_no` varchar(44) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation_details`
--

INSERT INTO `reservation_details` (`f_id`, `u_id`, `date`, `time`, `p_no`, `g_no`) VALUES
(18, 10, '29-3-20', '5:00pm', '88765435798435', '4'),
(19, 20, '4-5-20', '4:00pm', '234567', '5');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_info`
--

CREATE TABLE `restaurant_info` (
  `r_id` int(11) NOT NULL,
  `r_name` varchar(255) NOT NULL,
  `r_location` varchar(255) NOT NULL,
  `r_details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant_info`
--

INSERT INTO `restaurant_info` (`r_id`, `r_name`, `r_location`, `r_details`) VALUES
(1, 'Floor 6 ', 'Khilkhet', 'Great place to visit '),
(4, 'Cafe XX', 'Gulsan-1', 'It is established on 29 feb'),
(5, 'cafe khayer', 'Banani', 'Located at tejgaon..');

-- --------------------------------------------------------

--
-- Table structure for table `users_info`
--

CREATE TABLE `users_info` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `user_firstname` varchar(50) NOT NULL,
  `user_lastname` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_info`
--

INSERT INTO `users_info` (`id`, `username`, `user_firstname`, `user_lastname`, `user_email`, `user_type`, `user_password`, `user_gender`) VALUES
(14, 'saied', 'saied', 'Foyez', 'saiedfoyez@gmail.com', 'admin', '$2b$10$K.yvH/4p9uyyzW8Jk1EfyenOku/0LfzrA1vSp6Nh8JeSHgQd97Wa2', 'male'),
(15, 'eskenderail', 'eskender', 'ali', 'eskenderali@gmail.com', 'admin', '$2b$10$hZdPj1Yma62qeD0guCay0OMcXEBFYBwAZT1p3K/MfMW7GyBgXAVp.', 'male'),
(16, 'saied', 'saied', 'ahammed', 'ali@gmail.com', 'admin', '$2b$10$Al0nto6EvdNm1MUtPz64TOq672alTUG9bt7UFr2Y0R/uMQGHcYb3.', 'male'),
(17, 'shahnewaztamim', 'shahnewaz', 'tamim', 'shahnewaztamim@gmail.com', 'admin', '$2b$10$UtyVZK9bJ9d0ySCcsxaV7.1TzV/GEHaJAf0gGmEHtl0.sdOsZudCG', 'male'),
(21, 'firoz 123', 'Firoz', 'fm', 'fl123@gmail.com', 'member', 'firoz123', 'male'),
(22, 'tamim', 'tamim', 'sah', 'shahtamim@gmail.com', 'admin', '$2b$10$He8hiMmIjkZR060wWkQbOutfThGvgdUpQCAS1LntTgfAE0B4zEqx6', 'female'),
(23, 'mahamud', 'fm1', 'mahamud', 'fm@gmail.com', 'member', '$2b$10$2EFQ7WEkWLvsDfqkxKbV1.Hi3hbX5dH2gN7nAaBqkpIbNMfhhqG5e', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_experience`
--
ALTER TABLE `food_experience`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `item_details`
--
ALTER TABLE `item_details`
  ADD PRIMARY KEY (`i_id`);

--
-- Indexes for table `pic`
--
ALTER TABLE `pic`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `reservation_details`
--
ALTER TABLE `reservation_details`
  ADD PRIMARY KEY (`f_id`),
  ADD KEY `reservation_details_ibfk_1` (`u_id`);

--
-- Indexes for table `restaurant_info`
--
ALTER TABLE `restaurant_info`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `users_info`
--
ALTER TABLE `users_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `food_experience`
--
ALTER TABLE `food_experience`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `item_details`
--
ALTER TABLE `item_details`
  MODIFY `i_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pic`
--
ALTER TABLE `pic`
  MODIFY `p_id` int(33) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reservation_details`
--
ALTER TABLE `reservation_details`
  MODIFY `f_id` int(44) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `restaurant_info`
--
ALTER TABLE `restaurant_info`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users_info`
--
ALTER TABLE `users_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pic`
--
ALTER TABLE `pic`
  ADD CONSTRAINT `pic_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `users_info` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
