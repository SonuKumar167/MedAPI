-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 20, 2020 at 04:21 AM
-- Server version: 8.0.22
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medicine`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int NOT NULL,
  `item_id` int NOT NULL,
  `user__id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `item_id`, `user__id`) VALUES
(1, 3, 1),
(3, 3, 1),
(8, 3, 1),
(40, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dataset`
--

CREATE TABLE `dataset` (
  `id` int NOT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sno` int NOT NULL,
  `availableAt` int NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fasting` int NOT NULL,
  `itemId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `itemName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `labName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minPrice` int NOT NULL,
  `objectID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `popular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testCount` int NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dataset`
--

INSERT INTO `dataset` (`id`, `keyword`, `Sno`, `availableAt`, `category`, `fasting`, `itemId`, `itemName`, `labName`, `minPrice`, `objectID`, `popular`, `testCount`, `type`, `url`) VALUES
(1, 'covid-19-test', 0, 1, 'path', 0, 'DIANM11', 'COVID-19 Test', 'Metropolis', 4500, '6045500', 'TRUE', 1, 'Test', 'covid-19-test'),
(2, 'eye,test', 0, 1, 'path', 0, 'DIA2044', 'Eye Test- Vision Express', 'Vision Express', 49, '4562', 'TRUE', 1, 'Test', 'eye_test'),
(3, 'Yttrium,Therapy', 0, 2, 'radio', 0, 'DIAR894', 'Yttrium Therapy', '', 17500, '4461302', 'false', 1, 'Test', 'Yttrium-Therapy-test-cost'),
(4, 'X,Ray,Wrist,AP,and', 0, 2, 'radio', 0, 'DIAR891', 'X Ray Wrist AP and Lateral View', '', 240, '4461272', 'false', 1, 'Test', 'X-Ray-Wrist-AP-and-Lateral-View-test-cost'),
(5, 'X,Ray,Wrist,AP,View', 0, 2, 'radio', 0, 'DIAR892', 'X Ray Wrist AP View', '', 120, '4461282', 'false', 1, 'Test', 'X-Ray-Wrist-AP-View-test-cost'),
(6, 'X,Ray,Wrist,Lateral,View', 0, 2, 'radio', 0, 'DIAR893', 'X Ray Wrist Lateral View', '', 120, '4461292', 'false', 1, 'Test', 'X-Ray-Wrist-Lateral-View-test-cost'),
(7, 'X,Ray,Whole,Spine,Lateral', 0, 2, 'radio', 0, 'DIAR890', 'X Ray Whole Spine Lateral View', '', 320, '4461262', 'false', 1, 'Test', 'X-Ray-Whole-Spine-Lateral-View-test-cost'),
(8, 'X,Ray,Whole,Spine,Lateral', 0, 2, 'radio', 0, 'DIAR889', 'X Ray Whole Spine Lateral and AP View', '', 560, '4461252', 'false', 1, 'Test', 'X-Ray-Whole-Spine-Lateral-and-AP-View-test-cost'),
(9, 'X,Ray,Water,View,', 0, 2, 'radio', 0, 'DIAR887', 'X Ray Water View', '', 145, '4461232', 'false', 1, 'Test', 'X-Ray-Water-View-test-cost'),
(10, 'X,Ray,Whole,Spine,AP', 0, 2, 'radio', 0, 'DIAR888', 'X Ray Whole Spine AP View', '', 320, '4461242', 'false', 1, 'Test', 'X-Ray-Whole-Spine-AP-View-test-cost'),
(11, 'X,Ray,Tm,Joint,Lateral', 0, 2, 'radio', 0, 'DIAR886', 'X Ray Tm Joint Lateral View', '', 162, '4461222', 'false', 1, 'Test', 'X-Ray-Tm-Joint-Lateral-View-test-cost'),
(12, 'X,Ray,Tm,Joint,AP', 0, 2, 'radio', 0, 'DIAR885', 'X Ray Tm Joint AP View', '', 162, '4461212', 'false', 1, 'Test', 'X-Ray-Tm-Joint-AP-View-test-cost'),
(13, 'X,Ray,Tm,Joint,AP', 0, 2, 'radio', 0, 'DIAR884', 'X Ray Tm Joint AP and Lateral View', '', 280, '4461202', 'false', 1, 'Test', 'X-Ray-Tm-Joint-AP-and-Lateral-View-test-cost'),
(14, 'X,Ray,Thumb,Lateral,View', 0, 2, 'radio', 0, 'DIAR883', 'X Ray Thumb Lateral View', '', 120, '4461192', 'false', 1, 'Test', 'X-Ray-Thumb-Lateral-View-test-cost'),
(15, 'X,Ray,Thumb,Lateral,and', 0, 2, 'radio', 0, 'DIAR882', 'X Ray Thumb Lateral and AP View', '', 240, '4461182', 'false', 1, 'Test', 'X-Ray-Thumb-Lateral-and-AP-View-test-cost'),
(16, 'X,Ray,Thumb,AP,View', 0, 2, 'radio', 0, 'DIAR881', 'X Ray Thumb AP View', '', 120, '4461172', 'false', 1, 'Test', 'X-Ray-Thumb-AP-View-test-cost'),
(17, 'X,Ray,Thigh,Lateral,View', 0, 2, 'radio', 0, 'DIAR880', 'X Ray Thigh Lateral View', '', 120, '4461162', 'false', 1, 'Test', 'X-Ray-Thigh-Lateral-View-test-cost'),
(18, 'X,Ray,Thigh,AP,View', 0, 2, 'radio', 0, 'DIAR879', 'X Ray Thigh AP View', '', 120, '4461152', 'false', 1, 'Test', 'X-Ray-Thigh-AP-View-test-cost'),
(19, 'X,Ray,Thigh,AP,and', 0, 2, 'radio', 0, 'DIAR878', 'X Ray Thigh AP and Lateral View', '', 240, '4461142', 'false', 1, 'Test', 'X-Ray-Thigh-AP-and-Lateral-View-test-cost'),
(20, 'X,ray,Temp', 0, 2, 'radio', 0, 'DIAR877', 'X ray Temp', '', 0, '4461132', 'false', 1, 'Test', 'X-ray-Temp-test-cost'),
(21, 'X,ray,Temp', 0, 2, 'radio', 0, 'DIAR877', 'X ray Temp', '', 0, '4461132', 'false', 1, 'Test', 'X-ray-Temp-test-cost'),
(22, 'X,ray,Temp', 0, 2, 'radio', 0, 'DIAR877', 'X ray Temp', '', 0, '4461132', 'false', 1, 'Test', 'X-ray-Temp-test-cost'),
(23, 'X,ray,Temp', 0, 2, 'radio', 0, 'DIAR877', 'X ray Temp', '', 0, '4461132', 'false', 1, 'Test', 'X-ray-Temp-test-cost'),
(24, 'X,ray,Temp', 0, 2, 'radio', 0, 'DIAR877', 'X ray Temp', '', 0, '4461132', 'false', 1, 'Test', 'X-ray-Temp-test-cost');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `created_on`) VALUES
(1, 'Sonu', 'sonuprakash167@gmail.com', 'Sonu3299', '2020-12-17 23:08:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dataset`
--
ALTER TABLE `dataset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `dataset`
--
ALTER TABLE `dataset`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
