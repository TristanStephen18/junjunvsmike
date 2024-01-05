-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2024 at 12:56 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agrisense_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `inputs`
--

CREATE TABLE `inputs` (
  `inputID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `nitrogen` double NOT NULL,
  `phosphorus` double NOT NULL,
  `potassium` double NOT NULL,
  `rainfall` double NOT NULL,
  `temperature` double NOT NULL,
  `humidity` double NOT NULL,
  `pH` double NOT NULL,
  `location` varchar(250) NOT NULL,
  `dateTime` datetime NOT NULL,
  `predictedResult` varchar(50) NOT NULL,
  `certaintyLevel` double NOT NULL,
  `season` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inputs`
--

INSERT INTO `inputs` (`inputID`, `userID`, `nitrogen`, `phosphorus`, `potassium`, `rainfall`, `temperature`, `humidity`, `pH`, `location`, `dateTime`, `predictedResult`, `certaintyLevel`, `season`) VALUES
(58, 4, 77.4, 67.2, 15.5, 230.5, 27, 64, 5.6, 'Bisal, Manaoag, Pangasinan', '0000-00-00 00:00:00', 'Maize', 0.45, ' Dry Season & Wet Season\n'),
(59, 4, 59.9, 60, 14.2, 166.6, 25, 41, 5.7, 'Baritao, Manaoag, Pangasinan', '0000-00-00 00:00:00', 'Maize', 0.34, ' Dry Season & Wet Season\n'),
(60, 4, 83.6, 63, 15.8, 309.3, 12, 50, 7.8, 'Pao, Manaoag, Pangasinan', '0000-00-00 00:00:00', 'Coffee', 0.36, ' Wet Season\n'),
(61, 4, 66.7, 87.1, 14, 109.1, 25, 49, 7.2, 'Babasit, Manaoag, Pangasinan', '0000-00-00 00:00:00', 'Maize', 0.46, ' Dry Season & Wet Season\n'),
(62, 4, 71.2, 86.8, 14.2, 306.4, 26, 66, 5.5, 'Babasit, Manaoag, Pangasinan', '0000-00-00 00:00:00', 'Maize', 0.4, ' Dry Season & Wet Season\n'),
(63, 4, 52, 82.4, 17.8, 372.2, 11, 68, 7.9, 'Inamotan, Manaoag, Pangasinan', '0000-00-00 00:00:00', 'Pigeonpeas', 0.55, ' Dry Season & Wet Season\n'),
(64, 4, 78.2, 87.3, 13.2, 237.2, 28, 40, 5.5, 'Inamotan, Manaoag, Pangasinan', '0000-00-00 00:00:00', 'Maize', 0.28, ' Dry Season & Wet Season\n'),
(65, 4, 91.7, 62.3, 21.2, 292, 10, 44, 6.3, 'Pugaro, Manaoag, Pangasinan', '0000-00-00 00:00:00', 'Maize', 0.46, ' Dry Season & Wet Season\n'),
(66, 4, 105.9, 71.8, 17.9, 355.9, 28, 49, 8.4, 'Inamotan, Manaoag, Pangasinan', '0000-00-00 00:00:00', 'Coffee', 0.38, ' Wet Season\n'),
(67, 4, 105.5, 66.2, 14, 498.7, 13, 76, 8, 'Sapang, Manaoag, Pangasinan', '0000-00-00 00:00:00', 'Cotton', 0.36, ' Dry Season\n'),
(68, 4, 54.1, 77.6, 14.8, 236.6, 14, 50, 8.2, 'Pugaro, Manaoag, Pangasinan', '0000-00-00 00:00:00', 'Pigeonpeas', 0.64, ' Dry Season & Wet Season\n'),
(69, 4, 75, 46.2, 26, 123.1, 13, 48, 5.9, 'Babasit, Manaoag, Pangasinan', '0000-00-00 00:00:00', 'Coffee', 0.5, ' Wet Season\n'),
(70, 4, 58.1, 73.5, 25.3, 438.1, 25, 71, 8.3, 'Pao, Manaoag, Pangasinan', '2023-12-14 08:42:51', 'Pigeonpeas', 0.42, ' Dry Season & Wet Season\n'),
(71, 4, 75.2, 70.4, 16, 288.3, 24, 49, 5.5, 'Pao, Manaoag, Pangasinan', '2023-12-14 08:42:55', 'Maize', 0.36, ' Dry Season & Wet Season\n'),
(72, 4, 103.3, 92.4, 13.1, 354.3, 24, 65, 7.6, 'Pao, Manaoag, Pangasinan', '2023-12-14 08:42:57', 'Coffee', 0.35, ' Wet Season\n'),
(73, 4, 64.4, 46.7, 25.3, 347.6, 15, 54, 7.5, 'Bucao, Manaoag, Pangasinan', '2023-12-14 08:42:59', 'Coffee', 0.4, ' Wet Season\n'),
(74, 4, 82.9, 82.5, 26.9, 138.3, 30, 55, 5.5, 'Sapang, Manaoag, Pangasinan', '2023-12-14 08:43:01', 'Coffee', 0.43, ' Wet Season\n'),
(75, 4, 60.8, 93.6, 18, 351.8, 11, 50, 5.7, 'Babasit, Manaoag, Pangasinan', '2023-12-14 08:43:02', 'Maize', 0.36, ' Dry Season & Wet Season\n'),
(76, 4, 75.1, 92.9, 13.9, 368.4, 22, 63, 5.6, 'Babasit, Manaoag, Pangasinan', '2023-12-14 08:43:04', 'Maize', 0.43, ' Dry Season & Wet Season\n'),
(77, 4, 103.8, 78.1, 22.5, 104.7, 14, 67, 8.3, 'Inamotan, Manaoag, Pangasinan', '2023-12-14 08:43:06', 'Maize', 0.37, ' Dry Season & Wet Season\n'),
(78, 4, 71.9, 57, 15, 291.6, 25, 46, 5.9, 'Baritao, Manaoag, Pangasinan', '2023-12-14 08:43:07', 'Maize', 0.4, ' Dry Season & Wet Season\n'),
(79, 4, 72.7, 62.6, 21, 373.2, 20, 45, 5, 'Bucao, Manaoag, Pangasinan', '2023-12-14 08:43:09', 'Maize', 0.42, ' Dry Season & Wet Season\n'),
(80, 4, 81.3, 48.9, 26.7, 179.6, 25, 70, 8.3, 'Cabanbanan, Manaoag, Pangasinan', '2023-12-14 08:43:11', 'Coffee', 0.59, ' Wet Season\n'),
(81, 4, 54.6, 86.5, 20.2, 86.4, 15, 80, 7.3, 'Cabanbanan, Manaoag, Pangasinan', '2023-12-14 08:43:12', 'Mungbean', 0.14, ' Dry Season\n'),
(82, 4, 68.9, 93.9, 25, 316.8, 17, 47, 8.1, 'Bucao, Manaoag, Pangasinan', '2023-12-14 08:43:14', 'Coffee', 0.3, ' Wet Season\n'),
(83, 4, 80.9, 62, 25.5, 326.2, 25, 77, 6, 'Pugaro, Manaoag, Pangasinan', '2023-12-14 08:43:15', 'Maize', 0.29, ' Dry Season & Wet Season\n'),
(84, 4, 89, 62.7, 23.9, 198.5, 23, 57, 7.8, 'Cabanbanan, Manaoag, Pangasinan', '2023-12-14 08:43:17', 'Maize', 0.35, ' Dry Season & Wet Season\n'),
(85, 4, 65.1, 62.1, 13.3, 426.2, 13, 60, 6.1, 'Bisal, Manaoag, Pangasinan', '2023-12-14 08:43:18', 'Maize', 0.5, ' Dry Season & Wet Season\n'),
(86, 4, 109.3, 61.1, 14.4, 357.5, 29, 63, 6.4, 'Bucao, Manaoag, Pangasinan', '2023-12-14 08:43:20', 'Coffee', 0.32, ' Wet Season\n'),
(87, 4, 59.4, 56.6, 18.7, 165.6, 30, 69, 7.7, 'Babasit, Manaoag, Pangasinan', '2023-12-14 08:43:21', 'Pigeonpeas', 0.53, ' Dry Season & Wet Season\n'),
(88, 4, 104.4, 79, 26.4, 102.4, 24, 71, 6.1, 'Sapang, Manaoag, Pangasinan', '2023-12-14 08:43:23', 'Banana', 0.34, ' Wet Season\n'),
(89, 4, 104.7, 71.2, 15.4, 469.6, 23, 56, 5.3, 'Pugaro, Manaoag, Pangasinan', '2023-12-14 08:43:27', 'Coffee', 0.29, ' Wet Season\n'),
(90, 4, 87.7, 82.3, 23.3, 90.9, 11, 42, 5, 'Baritao, Manaoag, Pangasinan', '2023-12-14 08:43:29', 'Maize', 0.66, ' Dry Season & Wet Season\n'),
(91, 4, 62.7, 61.9, 20.3, 411.7, 16, 80, 5.2, 'Babasit, Manaoag, Pangasinan', '2023-12-14 08:43:30', 'Maize', 0.33, ' Dry Season & Wet Season\n'),
(92, 4, 96.7, 53.6, 20.4, 185.1, 22, 49, 6.2, 'Cabanbanan, Manaoag, Pangasinan', '2023-12-14 08:43:32', 'Maize', 0.47, ' Dry Season & Wet Season\n'),
(93, 4, 80.1, 70.7, 20.8, 372.2, 14, 64, 7.3, 'Pao, Manaoag, Pangasinan', '2023-12-14 08:43:33', 'Maize', 0.35, ' Dry Season & Wet Season\n'),
(94, 4, 79, 83.7, 22.4, 83.9, 20, 77, 5.2, 'Bisal, Manaoag, Pangasinan', '2023-12-14 08:43:34', 'Maize', 0.4, ' Dry Season & Wet Season\n'),
(95, 4, 90.7, 70.9, 25.7, 304.8, 21, 74, 6.8, 'Sapang, Manaoag, Pangasinan', '2023-12-14 08:43:36', 'Rice', 0.3, ' Wet Season\n'),
(96, 4, 86.8, 93.7, 25.1, 261.2, 29, 68, 7, 'Pugaro, Manaoag, Pangasinan', '2023-12-14 08:43:37', 'Maize', 0.29, ' Dry Season & Wet Season\n'),
(97, 4, 104.8, 92.7, 15.2, 171.9, 21, 74, 6, 'Pao, Manaoag, Pangasinan', '2023-12-14 08:43:39', 'Cotton', 0.3, ' Dry Season\n'),
(98, 4, 73.6, 40.3, 15.9, 479.5, 25, 67, 8.3, 'Bucao, Manaoag, Pangasinan', '2023-12-14 08:43:40', 'Coffee', 0.39, ' Wet Season\n'),
(99, 4, 54.9, 64.2, 23.1, 191.1, 13, 61, 8, 'Cabanbanan, Manaoag, Pangasinan', '2023-12-14 08:43:42', 'Pigeonpeas', 0.5, ' Dry Season & Wet Season\n'),
(100, 4, 89.7, 74.1, 20.7, 208.4, 13, 59, 6.4, 'Inamotan, Manaoag, Pangasinan', '2023-12-14 08:43:43', 'Maize', 0.46, ' Dry Season & Wet Season\n'),
(101, 4, 66.4, 54.6, 22.1, 399.8, 27, 63, 8, 'Bisal, Manaoag, Pangasinan', '2023-12-14 08:43:45', 'Maize', 0.27, ' Dry Season & Wet Season\n'),
(102, 4, 52, 61.3, 20.9, 203.5, 16, 56, 7.9, 'Bisal, Manaoag, Pangasinan', '2023-12-14 08:43:48', 'Pigeonpeas', 0.64, ' Dry Season & Wet Season\n'),
(103, 4, 61.4, 92.3, 17.1, 419.9, 14, 54, 8.1, 'Baritao, Manaoag, Pangasinan', '2023-12-14 08:43:53', 'Coffee', 0.28, ' Wet Season\n'),
(104, 4, 52, 64, 13.5, 303.1, 14, 43, 7.8, 'Babasit, Manaoag, Pangasinan', '2023-12-14 08:43:56', 'Pigeonpeas', 0.56, ' Dry Season & Wet Season\n'),
(105, 4, 104.2, 62.1, 13.7, 391.2, 14, 66, 7.8, 'Bisal, Manaoag, Pangasinan', '2023-12-14 08:43:58', 'Coffee', 0.35, ' Wet Season\n'),
(106, 4, 107.1, 53.7, 14.4, 168.5, 30, 48, 5, 'Baritao, Manaoag, Pangasinan', '2023-12-14 08:44:00', 'Coffee', 0.37, ' Wet Season\n'),
(107, 4, 103.4, 71.6, 20.7, 269.1, 22, 50, 8.4, 'Pugaro, Manaoag, Pangasinan', '2023-12-14 08:44:02', 'Coffee', 0.37, ' Wet Season\n'),
(108, 4, 56.5, 42.9, 21.7, 402.5, 21, 44, 8.7, 'Inamotan, Manaoag, Pangasinan', '2023-12-14 08:44:04', 'Pigeonpeas', 0.48, ' Dry Season & Wet Season\n'),
(109, 4, 71, 86.2, 20.2, 118, 26, 44, 7, 'Cabanbanan, Manaoag, Pangasinan', '2023-12-14 08:44:05', 'Maize', 0.37, ' Dry Season & Wet Season\n'),
(110, 4, 105.9, 80.1, 24.5, 104, 18, 72, 7, 'Sapang, Manaoag, Pangasinan', '2023-12-14 08:44:08', 'Maize', 0.41, ' Dry Season & Wet Season\n'),
(111, 4, 63.2, 43.7, 21.3, 431.9, 23, 61, 5, 'Inamotan, Manaoag, Pangasinan', '2023-12-14 08:44:10', 'Maize', 0.52, ' Dry Season & Wet Season\n'),
(112, 4, 68.6, 41.2, 14.3, 93.6, 18, 67, 8.9, 'Bucao, Manaoag, Pangasinan', '2023-12-14 08:44:12', 'Maize', 0.67, ' Dry Season & Wet Season\n'),
(113, 4, 88.1, 80.4, 26.3, 326, 18, 78, 8.4, 'Baritao, Manaoag, Pangasinan', '2023-12-14 08:44:13', 'Rice', 0.31, ' Wet Season\n'),
(114, 4, 64.2, 83.2, 13.3, 237.5, 26, 53, 6.1, 'Sapang, Manaoag, Pangasinan', '2023-12-14 08:44:15', 'Maize', 0.32, ' Dry Season & Wet Season\n'),
(115, 4, 75, 67, 25.4, 258.9, 20, 53, 6.4, 'Sapang, Manaoag, Pangasinan', '2023-12-14 08:44:16', 'Maize', 0.42, ' Dry Season & Wet Season\n'),
(116, 4, 55.5, 77.7, 17.6, 154.9, 27, 73, 5.1, 'Sapang, Manaoag, Pangasinan', '2023-12-14 08:44:17', 'Pigeonpeas', 0.68, ' Dry Season & Wet Season\n'),
(117, 4, 108.7, 56.5, 13.8, 292.1, 25, 54, 7.5, 'Pugaro, Manaoag, Pangasinan', '2023-12-14 08:44:19', 'Coffee', 0.43, ' Wet Season\n'),
(118, 4, 95.9, 77.5, 14.9, 425.1, 25, 48, 5.4, 'Babasit, Manaoag, Pangasinan', '2023-12-14 08:44:20', 'Maize', 0.35, ' Dry Season & Wet Season\n'),
(119, 4, 61.5, 68.5, 20.1, 289.2, 16, 49, 6.6, 'Pugaro, Manaoag, Pangasinan', '2023-12-14 08:44:22', 'Maize', 0.42, ' Dry Season & Wet Season\n'),
(120, 7, 83.5, 40.6, 14.6, 175.5, 26, 52, 6, 'Babasit, Manaoag, Pangasinan', '2023-12-14 08:48:39', 'Maize', 0.42, ' Dry Season & Wet Season\n'),
(121, 7, 102.8, 91.7, 13.9, 474.3, 10, 49, 7.6, 'Inamotan, Manaoag, Pangasinan', '2023-12-14 08:48:44', 'Coffee', 0.33, ' Wet Season\n'),
(122, 7, 84.5, 65.1, 22.7, 108.6, 19, 66, 7, 'Baritao, Manaoag, Pangasinan', '2023-12-14 08:48:46', 'Maize', 0.78, ' Dry Season & Wet Season\n'),
(123, 7, 108.6, 74.8, 20.6, 162.6, 16, 71, 6.6, 'Pao, Manaoag, Pangasinan', '2023-12-14 08:48:47', 'Maize', 0.28, ' Dry Season & Wet Season\n'),
(124, 7, 62.8, 46.7, 19.4, 199.4, 19, 58, 8.8, 'Bisal, Manaoag, Pangasinan', '2023-12-14 08:48:49', 'Maize', 0.38, ' Dry Season & Wet Season\n'),
(125, 7, 95.6, 83.2, 13.9, 361.4, 22, 61, 5.2, 'Cabanbanan, Manaoag, Pangasinan', '2023-12-14 08:48:50', 'Maize', 0.41, ' Dry Season & Wet Season\n'),
(126, 7, 82.6, 75.2, 26, 365.1, 21, 55, 8.2, 'Pao, Manaoag, Pangasinan', '2023-12-14 08:48:53', 'Coffee', 0.37, ' Wet Season\n'),
(127, 7, 94.8, 84.3, 18.5, 432.5, 13, 45, 6.3, 'Babasit, Manaoag, Pangasinan', '2023-12-14 08:48:57', 'Maize', 0.4, ' Dry Season & Wet Season\n'),
(128, 7, 90.4, 78.3, 14.2, 410.2, 23, 78, 8, 'Baritao, Manaoag, Pangasinan', '2023-12-14 08:48:59', 'Maize', 0.19, ' Dry Season & Wet Season\n'),
(129, 7, 96, 92.2, 17.7, 158.3, 10, 46, 7.2, 'Inamotan, Manaoag, Pangasinan', '2023-12-14 08:49:00', 'Coffee', 0.37, ' Wet Season\n'),
(130, 7, 66.9, 40.8, 20.6, 351.6, 19, 48, 8.2, 'Inamotan, Manaoag, Pangasinan', '2023-12-14 08:49:02', 'Coffee', 0.34, ' Wet Season\n'),
(131, 7, 53.4, 86, 14.8, 474.9, 27, 57, 7.7, 'Bucao, Manaoag, Pangasinan', '2023-12-14 08:49:03', 'Pigeonpeas', 0.74, ' Dry Season & Wet Season\n'),
(132, 7, 79.6, 44.7, 24.5, 480.9, 22, 50, 7, 'Bucao, Manaoag, Pangasinan', '2023-12-14 08:49:05', 'Maize', 0.4, ' Dry Season & Wet Season\n'),
(133, 7, 102.4, 94, 19.6, 359.9, 13, 47, 5.3, 'Baritao, Manaoag, Pangasinan', '2023-12-14 08:49:07', 'Coffee', 0.28, ' Wet Season\n'),
(134, 7, 70, 82.7, 22.9, 411.9, 13, 75, 6.2, 'Pao, Manaoag, Pangasinan', '2023-12-14 08:49:08', 'Maize', 0.31, ' Dry Season & Wet Season\n'),
(135, 7, 66.3, 61, 17.4, 433.9, 16, 59, 5.1, 'Sapang, Manaoag, Pangasinan', '2023-12-14 08:49:10', 'Maize', 0.48, ' Dry Season & Wet Season\n'),
(136, 7, 107.4, 81.5, 21.1, 380.2, 10, 41, 7.7, 'Sapang, Manaoag, Pangasinan', '2023-12-14 08:49:11', 'Coffee', 0.37, ' Wet Season\n'),
(137, 7, 94.6, 57.4, 19.8, 130.1, 16, 75, 7.1, 'Babasit, Manaoag, Pangasinan', '2023-12-14 08:49:13', 'Maize', 0.33, ' Dry Season & Wet Season\n'),
(138, 7, 52.1, 71.6, 18.9, 484.8, 19, 53, 5.8, 'Inamotan, Manaoag, Pangasinan', '2023-12-14 08:49:15', 'Pigeonpeas', 0.8, ' Dry Season & Wet Season\n'),
(139, 7, 58.5, 58.6, 16.1, 121.8, 29, 50, 5.3, 'Sapang, Manaoag, Pangasinan', '2023-12-14 08:49:16', 'Pigeonpeas', 0.78, ' Dry Season & Wet Season\n'),
(140, 7, 90.8, 46.7, 20.6, 188.3, 17, 67, 5.3, 'Pugaro, Manaoag, Pangasinan', '2023-12-14 08:49:18', 'Maize', 0.55, ' Dry Season & Wet Season\n'),
(141, 7, 50.5, 45.5, 24, 351, 11, 69, 7.8, 'Cabanbanan, Manaoag, Pangasinan', '2023-12-14 08:49:19', 'Pigeonpeas', 0.47, ' Dry Season & Wet Season\n'),
(142, 7, 90.4, 74.4, 25.5, 316.6, 10, 47, 6.5, 'Pao, Manaoag, Pangasinan', '2023-12-14 08:49:21', 'Maize', 0.38, ' Dry Season & Wet Season\n'),
(143, 7, 97.2, 63.4, 14.2, 327.4, 10, 59, 5.3, 'Baritao, Manaoag, Pangasinan', '2023-12-14 08:49:22', 'Maize', 0.48, ' Dry Season & Wet Season\n'),
(144, 7, 105.9, 90, 26.1, 113, 20, 75, 5.5, 'Pugaro, Manaoag, Pangasinan', '2023-12-14 08:49:24', 'Banana', 0.47, ' Wet Season\n'),
(145, 7, 66.6, 69, 20.4, 277.6, 10, 57, 8.6, 'Baritao, Manaoag, Pangasinan', '2023-12-14 08:49:25', 'Maize', 0.35, ' Dry Season & Wet Season\n'),
(146, 7, 91.1, 82.1, 13.6, 291.5, 14, 70, 6.6, 'Inamotan, Manaoag, Pangasinan', '2023-12-14 08:49:27', 'Maize', 0.44, ' Dry Season & Wet Season\n'),
(147, 7, 61.8, 40.7, 16.6, 77.4, 29, 79, 6.1, 'Pao, Manaoag, Pangasinan', '2023-12-14 08:49:28', 'Maize', 0.42, ' Dry Season & Wet Season\n'),
(148, 7, 56.7, 51.2, 21.2, 233.6, 25, 42, 7.9, 'Bisal, Manaoag, Pangasinan', '2023-12-14 08:49:30', 'Pigeonpeas', 0.57, ' Dry Season & Wet Season\n'),
(149, 7, 50.3, 76.4, 26, 238.4, 14, 50, 5.5, 'Baritao, Manaoag, Pangasinan', '2023-12-14 08:49:31', 'Pigeonpeas', 0.51, ' Dry Season & Wet Season\n'),
(150, 7, 60.4, 71.4, 25.6, 228.8, 13, 77, 7.9, 'Inamotan, Manaoag, Pangasinan', '2023-12-14 08:49:32', 'Rice', 0.3, ' Wet Season\n'),
(151, 7, 69.9, 90.1, 13.9, 299.9, 27, 68, 8.3, 'Bisal, Manaoag, Pangasinan', '2023-12-14 08:49:34', 'Maize', 0.23, ' Dry Season & Wet Season\n'),
(152, 7, 67.4, 45.3, 22.6, 275.6, 25, 52, 6.8, 'Sapang, Manaoag, Pangasinan', '2023-12-14 08:49:35', 'Maize', 0.41, ' Dry Season & Wet Season\n'),
(153, 7, 82.2, 41.3, 24.6, 329.8, 30, 55, 6.2, 'Baritao, Manaoag, Pangasinan', '2023-12-14 08:49:37', 'Coffee', 0.39, ' Wet Season\n'),
(154, 7, 58, 42.8, 19.4, 278.2, 17, 78, 5.4, 'Cabanbanan, Manaoag, Pangasinan', '2023-12-14 08:49:38', 'Pigeonpeas', 0.25, ' Dry Season & Wet Season\n'),
(155, 7, 79.3, 94.2, 16.3, 186, 27, 75, 8.7, 'Bucao, Manaoag, Pangasinan', '2023-12-14 08:49:40', 'Banana', 0.24, ' Wet Season\n'),
(156, 7, 102.7, 88.9, 17.8, 413.9, 29, 43, 8.4, 'Baritao, Manaoag, Pangasinan', '2023-12-14 08:49:41', 'Coffee', 0.38, ' Wet Season\n'),
(157, 7, 93.9, 54.2, 16.3, 100.9, 28, 55, 8.6, 'Sapang, Manaoag, Pangasinan', '2023-12-14 08:49:43', 'Maize', 0.49, ' Dry Season & Wet Season\n'),
(158, 7, 63.8, 86.1, 26.5, 441.4, 14, 60, 6.2, 'Babasit, Manaoag, Pangasinan', '2023-12-14 08:49:44', 'Coffee', 0.3, ' Wet Season\n'),
(159, 7, 91.3, 52.4, 24.5, 387.3, 18, 78, 7.4, 'Pugaro, Manaoag, Pangasinan', '2023-12-14 08:49:45', 'Cotton', 0.27, ' Dry Season\n'),
(160, 7, 106, 42.7, 18.9, 212.1, 18, 41, 8.2, 'Inamotan, Manaoag, Pangasinan', '2023-12-14 08:49:47', 'Coffee', 0.45, ' Wet Season\n'),
(161, 7, 50, 42.9, 16.5, 144.8, 11, 60, 8.2, 'Bucao, Manaoag, Pangasinan', '2023-12-14 08:49:48', 'Pigeonpeas', 0.5, ' Dry Season & Wet Season\n'),
(162, 7, 94.1, 71.4, 20, 124.1, 28, 71, 5.9, 'Inamotan, Manaoag, Pangasinan', '2023-12-14 08:49:50', 'Maize', 0.45, ' Dry Season & Wet Season\n'),
(163, 7, 62.7, 56.9, 21.2, 304.3, 25, 78, 6.3, 'Babasit, Manaoag, Pangasinan', '2023-12-14 08:49:51', 'Maize', 0.32, ' Dry Season & Wet Season\n'),
(164, 7, 67.8, 86.7, 25.1, 190.6, 28, 48, 5.5, 'Bisal, Manaoag, Pangasinan', '2023-12-14 08:49:53', 'Pigeonpeas', 0.29, ' Dry Season & Wet Season\n'),
(165, 7, 92.8, 64.2, 22.2, 199.2, 15, 45, 8.1, 'Babasit, Manaoag, Pangasinan', '2023-12-14 08:49:54', 'Coffee', 0.38, ' Wet Season\n'),
(166, 7, 89.1, 75.8, 26.4, 131.5, 20, 70, 6.6, 'Pugaro, Manaoag, Pangasinan', '2023-12-14 08:49:56', 'Coffee', 0.42, ' Wet Season\n'),
(167, 7, 59.4, 82.2, 26.2, 274.9, 12, 75, 5.4, 'Pugaro, Manaoag, Pangasinan', '2023-12-14 08:49:57', 'Pigeonpeas', 0.23, ' Dry Season & Wet Season\n'),
(168, 7, 90.9, 60.9, 19.7, 234.3, 27, 50, 8.4, 'Pao, Manaoag, Pangasinan', '2023-12-14 08:49:59', 'Coffee', 0.37, ' Wet Season\n'),
(169, 7, 83.6, 78.7, 14.8, 433.4, 10, 66, 5.9, 'Inamotan, Manaoag, Pangasinan', '2023-12-14 08:50:00', 'Maize', 0.48, ' Dry Season & Wet Season\n'),
(170, 7, 75.1, 87.1, 26.8, 160.9, 10, 77, 8.7, 'Baritao, Manaoag, Pangasinan', '2023-12-14 08:51:44', 'Banana', 0.22, ' Wet Season\n'),
(171, 7, 92.2, 62, 15.7, 115.2, 11, 75, 6.4, 'Bisal, Manaoag, Pangasinan', '2023-12-14 08:51:47', 'Maize', 0.53, ' Dry Season & Wet Season\n'),
(172, 7, 60.9, 41, 22, 144, 30, 59, 8.8, 'Baritao, Manaoag, Pangasinan', '2023-12-14 08:51:49', 'Coffee', 0.34, ' Wet Season\n'),
(173, 7, 95.1, 71.9, 23.6, 177.7, 11, 54, 7.7, 'Bucao, Manaoag, Pangasinan', '2023-12-14 08:51:51', 'Coffee', 0.37, ' Wet Season\n'),
(174, 7, 92.4, 54.8, 22.7, 256.4, 18, 72, 7.3, 'Bisal, Manaoag, Pangasinan', '2023-12-14 08:51:53', 'Maize', 0.41, ' Dry Season & Wet Season\n'),
(175, 7, 103.6, 88.9, 17.3, 401.2, 17, 49, 6.8, 'Babasit, Manaoag, Pangasinan', '2023-12-14 08:51:55', 'Maize', 0.29, ' Dry Season & Wet Season\n'),
(176, 7, 78.6, 82.7, 25.6, 269.7, 15, 61, 8.6, 'Sapang, Manaoag, Pangasinan', '2023-12-14 08:51:57', 'Coffee', 0.35, ' Wet Season\n'),
(177, 7, 88.5, 71, 18.2, 72.4, 24, 40, 5.4, 'Inamotan, Manaoag, Pangasinan', '2023-12-14 08:51:59', 'Maize', 0.67, ' Dry Season & Wet Season\n'),
(178, 7, 57.5, 79.3, 17.3, 81.9, 19, 74, 5.9, 'Sapang, Manaoag, Pangasinan', '2023-12-14 08:52:01', 'Pigeonpeas', 0.27, ' Dry Season & Wet Season\n'),
(179, 7, 99.9, 83.9, 13, 361, 26, 68, 6.8, 'Babasit, Manaoag, Pangasinan', '2023-12-14 08:52:04', 'Maize', 0.26, ' Dry Season & Wet Season\n'),
(180, 7, 91.8, 75.7, 20.3, 218.4, 14, 45, 8.5, 'Sapang, Manaoag, Pangasinan', '2023-12-14 08:52:07', 'Coffee', 0.33, ' Wet Season\n'),
(181, 7, 104.2, 78.6, 22.6, 252.9, 17, 58, 8.8, 'Babasit, Manaoag, Pangasinan', '2023-12-14 08:52:09', 'Coffee', 0.36, ' Wet Season\n'),
(182, 7, 91.2, 75.6, 25.4, 330.9, 19, 58, 8.6, 'Pao, Manaoag, Pangasinan', '2023-12-14 08:52:11', 'Maize', 0.32, ' Dry Season & Wet Season\n'),
(183, 7, 50.9, 65.6, 20.9, 133, 29, 43, 6.8, 'Pugaro, Manaoag, Pangasinan', '2023-12-14 08:52:12', 'Pigeonpeas', 0.87, ' Dry Season & Wet Season\n'),
(184, 7, 92.4, 86.6, 16.2, 196.8, 10, 57, 8.6, 'Pao, Manaoag, Pangasinan', '2023-12-14 08:52:14', 'Maize', 0.33, ' Dry Season & Wet Season\n'),
(185, 7, 105.4, 40.4, 19.1, 356.3, 22, 66, 5.7, 'Bisal, Manaoag, Pangasinan', '2023-12-14 08:52:16', 'Coffee', 0.41, ' Wet Season\n'),
(186, 7, 87.5, 67.1, 18.5, 303.6, 18, 59, 8.6, 'Pao, Manaoag, Pangasinan', '2023-12-14 08:52:18', 'Maize', 0.36, ' Dry Season & Wet Season\n'),
(187, 7, 104.2, 85.7, 19.6, 489.2, 17, 47, 5.9, 'Inamotan, Manaoag, Pangasinan', '2023-12-14 08:52:19', 'Maize', 0.29, ' Dry Season & Wet Season\n'),
(188, 7, 55.3, 69.8, 17.8, 98.7, 21, 40, 6.1, 'Inamotan, Manaoag, Pangasinan', '2023-12-14 08:52:21', 'Pigeonpeas', 0.68, ' Dry Season & Wet Season\n'),
(189, 7, 63.5, 48, 18.6, 151.1, 21, 43, 5.6, 'Babasit, Manaoag, Pangasinan', '2023-12-14 08:52:23', 'Maize', 0.48, ' Dry Season & Wet Season\n'),
(190, 7, 104.7, 81.3, 13.5, 196.2, 24, 79, 5.9, 'Inamotan, Manaoag, Pangasinan', '2023-12-14 08:52:25', 'Cotton', 0.38, ' Dry Season\n'),
(191, 7, 105.2, 71.7, 13.5, 200.1, 14, 66, 6.2, 'Pugaro, Manaoag, Pangasinan', '2023-12-14 08:52:26', 'Maize', 0.31, ' Dry Season & Wet Season\n'),
(192, 7, 70.1, 61.9, 26.7, 390.5, 23, 53, 8.8, 'Baritao, Manaoag, Pangasinan', '2023-12-14 08:52:28', 'Coffee', 0.42, ' Wet Season\n'),
(193, 7, 108, 47.5, 17.6, 344.6, 10, 51, 8.7, 'Cabanbanan, Manaoag, Pangasinan', '2023-12-14 08:52:30', 'Coffee', 0.43, ' Wet Season\n'),
(194, 7, 75.3, 76.3, 19.9, 105.8, 18, 40, 6.6, 'Cabanbanan, Manaoag, Pangasinan', '2023-12-14 08:52:32', 'Maize', 0.69, ' Dry Season & Wet Season\n'),
(195, 7, 61.2, 83.1, 15.6, 290.7, 17, 65, 5.7, 'Inamotan, Manaoag, Pangasinan', '2023-12-14 08:52:33', 'Maize', 0.46, ' Dry Season & Wet Season\n'),
(196, 7, 89.6, 79.2, 17.4, 313.5, 30, 47, 7.7, 'Pao, Manaoag, Pangasinan', '2023-12-14 08:52:35', 'Coffee', 0.35, ' Wet Season\n'),
(197, 7, 62.7, 94.4, 24.6, 181.3, 20, 66, 5.9, 'Sapang, Manaoag, Pangasinan', '2023-12-14 08:52:36', 'Maize', 0.46, ' Dry Season & Wet Season\n'),
(198, 7, 95.3, 94, 25.6, 342.3, 29, 46, 8.7, 'Pugaro, Manaoag, Pangasinan', '2023-12-14 08:52:38', 'Coffee', 0.38, ' Wet Season\n'),
(199, 7, 86.8, 90.9, 22.7, 488.1, 16, 71, 5.9, 'Baritao, Manaoag, Pangasinan', '2023-12-14 08:52:39', 'Maize', 0.45, ' Dry Season & Wet Season\n'),
(200, 7, 64.3, 45.3, 19.7, 102.2, 24, 75, 5.7, 'Pao, Manaoag, Pangasinan', '2023-12-14 08:52:41', 'Maize', 0.65, ' Dry Season & Wet Season\n'),
(201, 7, 55.1, 49.8, 24.8, 465.9, 21, 73, 6.2, 'Babasit, Manaoag, Pangasinan', '2023-12-14 08:52:42', 'Pigeonpeas', 0.49, ' Dry Season & Wet Season\n'),
(202, 7, 108.6, 58.6, 20.8, 296, 21, 40, 7.9, 'Inamotan, Manaoag, Pangasinan', '2023-12-14 08:52:44', 'Coffee', 0.42, ' Wet Season\n'),
(203, 7, 85, 41.4, 26.8, 185.2, 12, 67, 5.8, 'Inamotan, Manaoag, Pangasinan', '2023-12-14 08:52:45', 'Coffee', 0.56, ' Wet Season\n'),
(204, 7, 65.8, 44.1, 25.8, 324.7, 18, 80, 6, 'Bisal, Manaoag, Pangasinan', '2023-12-14 08:52:47', 'Rice', 0.52, ' Wet Season\n'),
(205, 7, 76.8, 64.3, 18.1, 418.8, 21, 43, 8.9, 'Inamotan, Manaoag, Pangasinan', '2023-12-14 08:52:49', 'Maize', 0.32, ' Dry Season & Wet Season\n'),
(206, 7, 73.3, 64.1, 15.8, 228.2, 30, 53, 7.8, 'Sapang, Manaoag, Pangasinan', '2023-12-14 08:52:50', 'Coffee', 0.33, ' Wet Season\n'),
(207, 7, 53.7, 77.3, 18.5, 482.3, 16, 51, 6.9, 'Pao, Manaoag, Pangasinan', '2023-12-14 08:52:52', 'Pigeonpeas', 0.73, ' Dry Season & Wet Season\n'),
(208, 7, 50.8, 45.7, 19.1, 407.9, 29, 50, 6.7, 'Sapang, Manaoag, Pangasinan', '2023-12-14 08:52:53', 'Pigeonpeas', 0.69, ' Dry Season & Wet Season\n'),
(209, 7, 53.8, 66.1, 21, 381.7, 25, 57, 8.5, 'Bucao, Manaoag, Pangasinan', '2023-12-14 08:52:55', 'Pigeonpeas', 0.64, ' Dry Season & Wet Season\n'),
(210, 7, 67.9, 93.7, 27, 276.4, 29, 71, 8.8, 'Pugaro, Manaoag, Pangasinan', '2023-12-14 08:52:56', 'Jute', 0.23, ' Wet Season\n'),
(211, 7, 73.5, 56.5, 15.4, 103.3, 19, 60, 5.5, 'Sapang, Manaoag, Pangasinan', '2023-12-14 08:52:58', 'Maize', 0.98, ' Dry Season & Wet Season\n'),
(212, 7, 79.5, 41.3, 21.5, 90.1, 10, 53, 7, 'Sapang, Manaoag, Pangasinan', '2023-12-14 08:52:59', 'Maize', 0.85, ' Dry Season & Wet Season\n'),
(213, 7, 54.1, 44.1, 25.4, 445.9, 11, 44, 8.6, 'Baritao, Manaoag, Pangasinan', '2023-12-14 08:53:00', 'Pigeonpeas', 0.45, ' Dry Season & Wet Season\n'),
(214, 7, 76.6, 67.8, 16, 435.4, 28, 53, 5.1, 'Baritao, Manaoag, Pangasinan', '2023-12-14 08:53:02', 'Maize', 0.34, ' Dry Season & Wet Season\n'),
(215, 7, 109.5, 65.8, 26.7, 271.8, 20, 55, 7, 'Bisal, Manaoag, Pangasinan', '2023-12-14 08:53:03', 'Coffee', 0.44, ' Wet Season\n'),
(216, 7, 61.4, 64, 19.9, 133.2, 16, 43, 6.7, 'Bisal, Manaoag, Pangasinan', '2023-12-14 08:53:05', 'Maize', 0.46, ' Dry Season & Wet Season\n'),
(217, 7, 98.7, 69.2, 20.6, 268.5, 12, 80, 6.3, 'Bucao, Manaoag, Pangasinan', '2023-12-14 08:53:06', 'Maize', 0.27, ' Dry Season & Wet Season\n'),
(218, 7, 106.8, 77.3, 23.5, 264.5, 15, 70, 8.9, 'Sapang, Manaoag, Pangasinan', '2023-12-14 08:53:08', 'Coffee', 0.34, ' Wet Season\n'),
(219, 7, 78.5, 63.3, 23.9, 113.3, 18, 57, 5.9, 'Baritao, Manaoag, Pangasinan', '2023-12-14 08:53:09', 'Maize', 0.69, ' Dry Season & Wet Season\n'),
(220, 4, 50.908, 59, 22, 130, 34, 70, 8.9, 'Poblacion, Manaoag, Pangasinan', '2023-12-14 10:48:05', 'Pigeonpeas', 0.49, ' Dry Season & Wet Season\n'),
(221, 8, 90.3, 88.4, 13.6, 229.2, 28, 71, 8.5, 'Bucao, Manaoag, Pangasinan', '2023-12-14 18:16:03', 'Maize', 0.2, ' Dry Season & Wet Season\n'),
(222, 8, 94.1, 43.1, 23.7, 483.3, 30, 50, 8, 'Sapang, Manaoag, Pangasinan', '2023-12-14 18:16:13', 'Coffee', 0.48, ' Wet Season\n'),
(223, 8, 82.9, 44.5, 13.3, 436.7, 19, 67, 7.9, 'Cabanbanan, Manaoag, Pangasinan', '2023-12-14 18:16:16', 'Maize', 0.36, ' Dry Season & Wet Season\n'),
(224, 8, 97.6, 74.8, 15.5, 99.2, 19, 69, 7.2, 'Bucao, Manaoag, Pangasinan', '2023-12-14 18:16:19', 'Maize', 0.63, ' Dry Season & Wet Season\n'),
(225, 8, 108, 88.7, 26.6, 95.7, 17, 55, 5.6, 'Bucao, Manaoag, Pangasinan', '2023-12-14 18:16:20', 'Maize', 0.26, ' Dry Season & Wet Season\n'),
(226, 8, 93, 82.6, 13.6, 170.6, 30, 45, 7, 'Pugaro, Manaoag, Pangasinan', '2023-12-14 18:16:22', 'Coffee', 0.25, ' Wet Season\n'),
(227, 8, 100.9, 62.3, 14.9, 79.7, 18, 78, 8.1, 'Inamotan, Manaoag, Pangasinan', '2023-12-14 18:16:26', 'Cotton', 0.81, ' Dry Season\n'),
(228, 8, 65.3, 42.6, 22.2, 205.4, 24, 47, 7.6, 'Cabanbanan, Manaoag, Pangasinan', '2023-12-14 18:16:31', 'Coffee', 0.39, ' Wet Season\n'),
(229, 8, 63.1, 90.3, 21.5, 242.5, 14, 64, 8.2, 'Pao, Manaoag, Pangasinan', '2023-12-14 18:16:32', 'Maize', 0.32, ' Dry Season & Wet Season\n'),
(230, 8, 68, 56.8, 16.4, 84.5, 27, 74, 7.4, 'Pao, Manaoag, Pangasinan', '2023-12-14 18:16:35', 'Maize', 0.49, ' Dry Season & Wet Season\n'),
(231, 8, 72.6, 55.5, 19.3, 102.5, 15, 49, 7.3, 'Bisal, Manaoag, Pangasinan', '2023-12-14 18:16:37', 'Maize', 0.69, ' Dry Season & Wet Season\n'),
(232, 8, 90.6, 68, 19.1, 146.1, 11, 76, 8.1, 'Pao, Manaoag, Pangasinan', '2023-12-14 18:16:39', 'Cotton', 0.25, ' Dry Season\n'),
(233, 8, 108.3, 67, 21, 100.1, 25, 69, 5.1, 'Pao, Manaoag, Pangasinan', '2023-12-14 18:16:44', 'Maize', 0.5, ' Dry Season & Wet Season\n'),
(234, 8, 80.1, 54.2, 26.4, 307.5, 16, 40, 6.1, 'Pugaro, Manaoag, Pangasinan', '2023-12-14 18:16:49', 'Coffee', 0.43, ' Wet Season\n'),
(235, 8, 98.8, 73.6, 17.6, 214.4, 10, 71, 6.2, 'Baritao, Manaoag, Pangasinan', '2023-12-14 18:16:52', 'Maize', 0.46, ' Dry Season & Wet Season\n'),
(236, 8, 94.1, 92.6, 20.6, 189.6, 22, 69, 5.9, 'Cabanbanan, Manaoag, Pangasinan', '2023-12-14 18:16:54', 'Maize', 0.51, ' Dry Season & Wet Season\n'),
(237, 8, 72, 82.1, 21.2, 272.9, 30, 41, 6.1, 'Cabanbanan, Manaoag, Pangasinan', '2023-12-14 18:16:56', 'Pigeonpeas', 0.27, ' Dry Season & Wet Season\n'),
(238, 8, 93.6, 92.6, 13.7, 474.2, 13, 59, 7.9, 'Pao, Manaoag, Pangasinan', '2023-12-14 18:16:58', 'Maize', 0.32, ' Dry Season & Wet Season\n'),
(239, 8, 93, 78.4, 21.7, 369.8, 26, 57, 6.3, 'Bisal, Manaoag, Pangasinan', '2023-12-14 18:16:59', 'Maize', 0.43, ' Dry Season & Wet Season\n'),
(240, 8, 84.8, 90.8, 14, 222.7, 29, 63, 7.1, 'Bisal, Manaoag, Pangasinan', '2023-12-14 18:17:01', 'Coffee', 0.25, ' Wet Season\n'),
(241, 8, 102.5, 62.6, 26, 236, 29, 79, 8.2, 'Pugaro, Manaoag, Pangasinan', '2023-12-14 18:17:04', 'Rice', 0.22, ' Wet Season\n'),
(242, 8, 100.7, 68.1, 19.7, 121, 16, 77, 6.4, 'Babasit, Manaoag, Pangasinan', '2023-12-14 18:17:07', 'Cotton', 0.56, ' Dry Season\n'),
(243, 8, 100.1, 92, 14.4, 418.4, 10, 57, 8.4, 'Bisal, Manaoag, Pangasinan', '2023-12-14 18:17:08', 'Coffee', 0.3, ' Wet Season\n'),
(244, 8, 74, 50.9, 26.2, 414.2, 19, 80, 8.1, 'Bucao, Manaoag, Pangasinan', '2023-12-14 18:17:10', 'Rice', 0.47, ' Wet Season\n'),
(245, 8, 63, 61.9, 23.7, 110.4, 10, 57, 5.2, 'Bucao, Manaoag, Pangasinan', '2023-12-14 18:17:11', 'Maize', 0.8, ' Dry Season & Wet Season\n'),
(246, 8, 93.7, 41.8, 16.4, 321.1, 10, 42, 7, 'Baritao, Manaoag, Pangasinan', '2023-12-14 18:17:14', 'Maize', 0.42, ' Dry Season & Wet Season\n'),
(247, 8, 51.5, 88.5, 23, 165.9, 21, 53, 6.6, 'Pugaro, Manaoag, Pangasinan', '2023-12-14 18:17:15', 'Pigeonpeas', 0.82, ' Dry Season & Wet Season\n'),
(248, 8, 99.1, 40.5, 24.5, 256.1, 15, 70, 5.9, 'Pugaro, Manaoag, Pangasinan', '2023-12-14 18:17:17', 'Maize', 0.53, ' Dry Season & Wet Season\n'),
(249, 8, 85.6, 75, 22.7, 396.3, 23, 42, 5.7, 'Sapang, Manaoag, Pangasinan', '2023-12-14 18:17:19', 'Maize', 0.38, ' Dry Season & Wet Season\n'),
(250, 8, 85, 69.4, 26, 466.7, 14, 55, 5.7, 'Sapang, Manaoag, Pangasinan', '2023-12-14 18:17:21', 'Coffee', 0.41, ' Wet Season\n'),
(251, 8, 71.4, 88, 20.4, 180.8, 18, 52, 7.4, 'Bisal, Manaoag, Pangasinan', '2023-12-14 18:17:23', 'Coffee', 0.33, ' Wet Season\n'),
(252, 8, 105.1, 61, 24.9, 466.6, 14, 78, 5.8, 'Pao, Manaoag, Pangasinan', '2023-12-14 18:17:25', 'Cotton', 0.48, ' Dry Season\n'),
(253, 8, 98.5, 92.7, 26.8, 425.8, 21, 64, 8, 'Inamotan, Manaoag, Pangasinan', '2023-12-14 18:17:27', 'Coffee', 0.36, ' Wet Season\n'),
(254, 8, 103.1, 42.4, 19.2, 474.8, 13, 57, 8.2, 'Sapang, Manaoag, Pangasinan', '2023-12-14 18:17:29', 'Coffee', 0.43, ' Wet Season\n'),
(255, 8, 79.4, 74.8, 21.6, 194.5, 26, 64, 7.5, 'Pao, Manaoag, Pangasinan', '2023-12-14 18:17:31', 'Coffee', 0.35, ' Wet Season\n'),
(256, 8, 76.1, 79.5, 24.2, 418.6, 20, 65, 7.2, 'Bucao, Manaoag, Pangasinan', '2023-12-14 18:17:33', 'Maize', 0.37, ' Dry Season & Wet Season\n'),
(257, 8, 61.2, 88.5, 27, 348.6, 28, 70, 6.5, 'Bisal, Manaoag, Pangasinan', '2023-12-14 18:17:35', 'Coffee', 0.28, ' Wet Season\n'),
(258, 8, 106.9, 57.8, 17.1, 488, 19, 41, 7.9, 'Baritao, Manaoag, Pangasinan', '2023-12-14 18:17:36', 'Coffee', 0.42, ' Wet Season\n'),
(259, 8, 62.3, 42.2, 22.4, 330.8, 13, 73, 6.7, 'Baritao, Manaoag, Pangasinan', '2023-12-14 18:17:39', 'Maize', 0.55, ' Dry Season & Wet Season\n'),
(260, 8, 88.1, 57, 26.6, 452.2, 18, 79, 8.1, 'Sapang, Manaoag, Pangasinan', '2023-12-14 18:17:41', 'Rice', 0.43, ' Wet Season\n'),
(261, 8, 59.4, 47.4, 14.1, 302.1, 25, 76, 8.2, 'Sapang, Manaoag, Pangasinan', '2023-12-14 18:17:43', 'Orange', 0.31, ' Wet Season\n'),
(262, 8, 66.9, 74.3, 17.2, 220.3, 25, 69, 6.8, 'Bisal, Manaoag, Pangasinan', '2023-12-14 18:17:45', 'Maize', 0.46, ' Dry Season & Wet Season\n'),
(263, 8, 52.7, 45.3, 23.9, 244.2, 25, 48, 5.8, 'Bucao, Manaoag, Pangasinan', '2023-12-14 18:17:47', 'Pigeonpeas', 0.62, ' Dry Season & Wet Season\n'),
(264, 8, 77.4, 52.2, 23.1, 239.9, 30, 50, 6.8, 'Inamotan, Manaoag, Pangasinan', '2023-12-14 18:17:49', 'Maize', 0.33, ' Dry Season & Wet Season\n'),
(265, 8, 55.7, 87.9, 22.7, 300.4, 21, 67, 7, 'Sapang, Manaoag, Pangasinan', '2023-12-14 18:17:50', 'Pigeonpeas', 0.55, ' Dry Season & Wet Season\n'),
(266, 8, 55.6, 88.9, 26.5, 274.4, 20, 72, 7.7, 'Bisal, Manaoag, Pangasinan', '2023-12-14 18:17:52', 'Pigeonpeas', 0.33, ' Dry Season & Wet Season\n'),
(267, 8, 87.8, 67.8, 26.7, 105, 14, 72, 7.9, 'Bucao, Manaoag, Pangasinan', '2023-12-14 18:17:53', 'Maize', 0.32, ' Dry Season & Wet Season\n'),
(268, 8, 71.3, 59.5, 19.6, 142.9, 14, 42, 5.8, 'Bucao, Manaoag, Pangasinan', '2023-12-14 18:17:55', 'Maize', 0.48, ' Dry Season & Wet Season\n'),
(269, 8, 108.4, 78.7, 25.3, 429.8, 29, 62, 7.1, 'Baritao, Manaoag, Pangasinan', '2023-12-14 18:17:56', 'Coffee', 0.4, ' Wet Season\n'),
(270, 8, 99.4, 49.3, 18.4, 400.8, 13, 60, 7.1, 'Sapang, Manaoag, Pangasinan', '2023-12-14 18:17:58', 'Maize', 0.41, ' Dry Season & Wet Season\n'),
(271, 4, 50.905, 59, 22, 130, 34, 70, 8.9, 'Poblacion, Manaoag, Pangasinan', '2023-12-15 01:45:31', 'Pigeonpeas', 0.49, ' Dry Season & Wet Season\n'),
(272, 8, 123.3, 235, 2341, 32, 3242, 23512, 432, 'Babasit, Pangasinan', '2023-12-15 02:45:31', 'Grapes', 0.39, ' Dry Season & Wet Season\n'),
(274, 8, 42, 45, 90.3, 250, 25, 324.3, 7, 'Baritao, Manaoag, Pangasinan', '2023-12-15 15:21:15', 'Papaya', 0.77, ' Wet Season\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` int(50) NOT NULL,
  `request` tinyint(1) NOT NULL,
  `accType` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `username`, `password`, `email`, `number`, `request`, `accType`) VALUES
(1, 'jannFin', 'qwerty123', 'voldy@gmail.com', 3383, 0, 'Premium'),
(2, 'cessBonak', 'bonakbonak', 'bonak@gmail.com', 348348, 0, 'Premium');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inputs`
--
ALTER TABLE `inputs`
  ADD PRIMARY KEY (`inputID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inputs`
--
ALTER TABLE `inputs`
  MODIFY `inputID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
