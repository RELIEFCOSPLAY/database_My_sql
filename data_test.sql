-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2024 at 06:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_list`
--

CREATE TABLE `bank_list` (
  `bank_ID` int(10) NOT NULL,
  `bank_List` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_list`
--

INSERT INTO `bank_list` (`bank_ID`, `bank_List`) VALUES
(1, 'KRUNG THAI BANK'),
(2, 'BANGKOK BANK'),
(3, 'KASIKORNBANK'),
(4, 'SIAM COMMERCIAL BANK'),
(5, 'TMB BANK'),
(6, 'GOVERNMENT SAVINGS BANK'),
(7, 'THANACHART BANK');

-- --------------------------------------------------------

--
-- Table structure for table `location_list`
--

CREATE TABLE `location_list` (
  `LocationID` int(10) NOT NULL,
  `LocationList` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location_list`
--

INSERT INTO `location_list` (`LocationID`, `LocationList`) VALUES
(1, 'Central'),
(2, 'Airport'),
(3, 'Station'),
(4, 'Mall'),
(5, 'Park'),
(6, 'University'),
(7, 'Downtown'),
(8, 'Hotel'),
(9, 'Restaurant'),
(10, 'Mae Fah Luang'),
(11, 'Lotus Fah Thai');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(10) NOT NULL,
  `pick_up` varchar(60) NOT NULL,
  `comment_pick` varchar(60) NOT NULL,
  `at_drop` varchar(60) NOT NULL,
  `comment_drop` varchar(60) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `price` int(10) NOT NULL,
  `status_helmet` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `rider_id` int(10) NOT NULL,
  `check_status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `pick_up`, `comment_pick`, `at_drop`, `comment_drop`, `date`, `time`, `price`, `status_helmet`, `customer_id`, `rider_id`, `check_status`) VALUES
(37, 'Mae Fah Luang(D1)', 'les go', 'Lotus Fah Thai', 'hooo', '2024-10-07', '02:16:00', 50, 0, 2, 1, 1),
(38, 'Lotus Fah Thai', 'uuww', 'Mae Fah Luang(D1)', 'wwwww', '2024-10-07', '03:09:00', 88, 1, 2, 1, 1),
(39, 'Select Location', '6ttt', 'Mae Fah Luang(D1)', 'gyuyhj', '2024-10-07', '03:11:00', 77, 1, 2, 1, 1),
(44, 'Lotus Fah Thai', 'fht', 'Select Location', ',uhjmu', '2024-10-07', '23:43:00', 11, 1, 2, 1, 1),
(45, 'Lotus Fah Thai', 'vgmj', 'Lotus Fah Thai', ',hkh,', '2024-10-08', '01:59:00', 120, 1, 2, 2, 1),
(46, 'Mae Fah Luang(D1)', 'rrr', 'Lotus Fah Thai', 'ffff', '2024-10-08', '02:02:00', 78, 1, 2, 2, 1),
(47, 'Mae Fah Luang(D1)', 'ghgjku', 'Lotus Fah Thai', 'il8', '2024-10-09', '17:29:00', 444, 1, 1, 2, 1),
(48, 'Mae Fah Luang(D1)', 'ttt', 'Lotus Fah Thai', 'uuu', '2024-10-14', '01:39:00', 1, 1, 2, 3, 0),
(49, 'Mae Fah Luang(D1)', 'yupo', 'Lotus Fah Thai', 'opo', '2024-11-04', '23:59:00', 41, 1, 1, 4, 0),
(50, 'Lotus Fah Thai', 'dfgr', 'Select Location', 'oopop', '2024-11-05', '00:03:00', 74, 1, 1, 4, 0),
(51, 'Mae Fah Luang(D1)', 'opo', 'Mae Fah Luang(D1)', 'ojj', '2024-11-19', '15:26:00', 71, 1, 9, 2, 0),
(55, 'Mae Fah Luang(D1)', 'rrrt', 'Lotus Fah Thai', 'trt', '2024-11-22', '02:29:00', 67, 1, 9, 6, 1),
(56, 'Airport', 'trrr', 'Park', 'goteo', '2024-11-22', '03:27:00', 7, 1, 1, 6, 0),
(57, 'Central', 'go', 'Station', 'toe', '2024-11-22', '03:38:00', 85, 0, 1, 6, 0),
(58, 'Park', 'lest go', 'Downtown', 'E7', '2024-11-26', '22:53:00', 50, 1, 12, 21, 1),
(59, 'University', 'Nani', 'Hotel', 'OMG', '2024-11-26', '23:53:00', 80, 1, 12, 21, 1),
(60, 'Airport', 'ไปที่', 'Station', 'ไปสิ', '2024-11-28', '16:56:00', 20, 0, 12, 21, 1),
(61, 'Station', 'EE', 'Airport', 'RR', '2024-11-30', '00:53:00', 78, 1, 12, 22, 1),
(62, 'Park', 'WE', 'Mall', 'Go', '2024-11-30', '02:37:00', 50, 1, 12, 22, 1),
(63, 'Downtown', 'EW', 'University', 'RRR', '2024-11-30', '03:04:00', 70, 1, 12, 22, 1),
(64, 'Mall', 'ER', 'Hotel', 'SS', '2024-12-01', '04:22:00', 80, 1, 12, 22, 1),
(65, 'Hotel', 'Go to lono', 'Downtown', 'Peck', '2024-12-02', '03:20:00', 70, 1, 1, 22, 0),
(66, 'University', 'มารับที่D1', 'Restaurant', 'จอดหน้าฟ้าไทย', '2024-12-02', '03:39:00', 70, 1, 12, 22, 1),
(67, 'Mall', 'ฏฏก', 'Hotel', 'กว่นำ่', '2024-12-04', '15:25:00', 80, 1, 12, 21, 1),
(68, 'Downtown', 'DEDR', 'University', 'SS', '2024-12-05', '03:34:00', 40, 1, 14, 21, 1),
(69, 'Mall', 'SD', 'Downtown', 'WW', '2024-12-05', '03:47:00', 50, 1, 1, 21, 0),
(70, 'Park', 'พา', 'University', 'กก', '2024-12-05', '23:24:00', 30, 1, 14, 21, 1),
(71, 'Airport', '30', 'Park', '10', '2024-12-05', '23:24:00', 40, 1, 14, 21, 1),
(72, 'Mall', 'QW', 'Hotel', 'QQ', '2024-12-06', '02:11:00', 20, 1, 14, 21, 1),
(73, 'University', '', 'Central', '', '2024-12-06', '12:30:00', 60, 1, 15, 23, 1),
(74, 'Station', 'ไปกันเลย', 'Restaurant', 'รับที่หน้ามอ', '2024-12-06', '06:37:00', 80, 1, 15, 23, 1),
(75, 'Mall', 'We go', 'Downtown', 'mario', '2024-12-06', '07:20:00', 60, 1, 15, 23, 1),
(76, 'Station', 'ไปสถานี้', 'Airport', 'จอดที่น้าสนามบิน', '2024-12-06', '12:00:00', 20, 1, 16, 24, 1),
(77, 'Station', '', 'Downtown', '', '2024-12-06', '14:28:00', 50, 1, 16, 24, 0),
(78, 'University', '', 'Downtown', '', '2024-12-06', '14:29:00', 80, 0, 1, 24, 0),
(79, 'Mall', 'WE', 'Downtown', 'tb', '2024-12-07', '16:20:00', 90, 1, 15, 21, 1),
(80, 'Station', '', 'Downtown', '', '2024-12-08', '00:03:00', 20, 1, 16, 25, 0);

-- --------------------------------------------------------

--
-- Table structure for table `status_post`
--

CREATE TABLE `status_post` (
  `status_post_id` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `post_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `pay` int(10) NOT NULL,
  `review` int(10) NOT NULL,
  `comment` varchar(60) NOT NULL,
  `rider_id` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `img_qr_admin` varchar(100) NOT NULL,
  `travel_img` varchar(100) NOT NULL,
  `success_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status_post`
--

INSERT INTO `status_post` (`status_post_id`, `status`, `reason`, `post_id`, `customer_id`, `pay`, `review`, `comment`, `rider_id`, `image`, `img_qr_admin`, `travel_img`, `success_img`) VALUES
(22, 4, 'wait to long', 37, 2, 4, 1, '', 1, 'gotwo/uploads/GRU_1732632148903.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733082098474.jpg', 'gotwo/uploads/GUSUCC_1733082122033.png'),
(23, 5, 'wait to long', 38, 2, 4, 0, '', 1, 'gotwo/uploads/GRU_1732632148903.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733082098474.jpg', 'gotwo/uploads/GUSUCC_1733082122033.png'),
(24, 5, 'wait to long', 39, 2, 2, 0, 'fgfgf', 1, 'gotwo/uploads/GRU_1732632148903.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733082098474.jpg', 'gotwo/uploads/GUSUCC_1733082122033.png'),
(39, 4, 'wait to long', 45, 2, 3, 3, '', 2, 'gotwo/uploads/GRU_1732632148903.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733082098474.jpg', 'gotwo/uploads/GUSUCC_1733082122033.png'),
(40, 5, 'wait to long', 46, 1, 2, 0, 'fj', 2, 'gotwo/uploads/GRU_1732632148903.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733082098474.jpg', 'gotwo/uploads/GUSUCC_1733082122033.png'),
(41, 5, 'wait to long', 46, 1, 2, 0, 'bno', 2, 'gotwo/uploads/GRU_1732632148903.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733082098474.jpg', 'gotwo/uploads/GUSUCC_1733082122033.png'),
(42, 4, 'wait to long', 47, 1, 5, 4, 'cgmjhy', 2, 'gotwo/uploads/GRU_1732632148903.jpg', 'gotwo/uploads/qr_admin_1733580747.jpg', 'gotwo/uploads/GRTOTRA_1733082098474.jpg', 'gotwo/uploads/GUSUCC_1733082122033.png'),
(43, 5, 'wait to long', 46, 1, 4, 0, 'jkyu', 2, 'gotwo/uploads/GRU_1732632148903.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733082098474.jpg', 'gotwo/uploads/GUSUCC_1733082122033.png'),
(44, 5, 'wait to long', 46, 1, 2, 0, 'fvhjtf', 2, 'gotwo/uploads/GRU_1732632148903.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733082098474.jpg', 'gotwo/uploads/GUSUCC_1733082122033.png'),
(45, 5, 'wait to long', 46, 1, 4, 0, '', 2, 'gotwo/uploads/GRU_1732632148903.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733082098474.jpg', 'gotwo/uploads/GUSUCC_1733082122033.png'),
(46, 5, 'wait to long', 46, 1, 2, 0, 'gg', 2, 'gotwo/uploads/GRU_1732632148903.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733082098474.jpg', 'gotwo/uploads/GUSUCC_1733082122033.png'),
(47, 5, 'wait to long', 48, 2, 2, 0, '', 3, 'gotwo/uploads/GRU_1732632148903.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733082098474.jpg', 'gotwo/uploads/GUSUCC_1733082122033.png'),
(48, 2, 'wait to long', 46, 2, 0, 0, 'No comment', 2, 'gotwo/uploads/GRU_1732632148903.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733082098474.jpg', 'gotwo/uploads/GUSUCC_1733082122033.png'),
(53, 5, 'wait to long', 51, 9, 4, 0, '', 2, 'gotwo/uploads/GRU_1732632148903.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733082098474.jpg', 'gotwo/uploads/GUSUCC_1733082122033.png'),
(54, 5, 'wait to long', 55, 9, 4, 0, '', 6, 'gotwo/uploads/GRU_1732632148903.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733082098474.jpg', 'gotwo/uploads/GUSUCC_1733082122033.png'),
(55, 4, 'wait to long', 55, 9, 5, 1, '', 6, 'gotwo/uploads/GRU_1732632148903.jpg', 'gotwo/uploads/qr_admin_1733580202.jpg', 'gotwo/uploads/GRTOTRA_1733082098474.jpg', 'gotwo/uploads/GUSUCC_1733082122033.png'),
(56, 4, 'wait to long', 58, 12, 3, 1, '', 21, 'gotwo/uploads/GRU_1732632148903.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733082098474.jpg', 'gotwo/uploads/GUSUCC_1733082122033.png'),
(57, 4, 'wait to long', 59, 12, 3, 1, '', 21, 'gotwo/uploads/GRU_1732632148903.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733082098474.jpg', 'gotwo/uploads/GUSUCC_1733082122033.png'),
(58, 5, 'wait to long', 60, 12, 1, 5, 'ddddd', 21, 'gotwo/uploads/GRU_1732632148903.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733082098474.jpg', 'gotwo/uploads/GUSUCC_1733082122033.png'),
(59, 3, 'wait to long', 60, 12, 1, 5, 'No comment', 21, 'gotwo/uploads/GRU_1732632148903.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733340370784.jpg', 'gotwo/uploads/GUSUCC_1733082122033.png'),
(60, 6, 'wait to long', 61, 12, 4, 5, '', 22, 'gotwo/uploads/GUQRP_1732902649819.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733082098474.jpg', 'gotwo/uploads/GUSUCC_1733082122033.png'),
(61, 3, 'wait to long', 62, 12, 1, 0, 'No comment', 22, 'gotwo/uploads/GUQRP_1732906439214.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733082098474.jpg', 'gotwo/uploads/GUSUCC_1733082122033.png'),
(62, 6, 'wait to long', 63, 12, 4, 1, '', 22, 'gotwo/uploads/GUQRP_1732991271446.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GUSUCC_1732998021983.jpg', 'gotwo/uploads/GUSUCC_1733082122033.png'),
(63, 6, 'wait to long', 64, 12, 4, 1, '', 22, 'gotwo/uploads/GUQRP_1732998217482.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1732998226080.jpg', 'gotwo/uploads/GUSUCC_1732998258023.png'),
(64, 6, 'wait to long', 66, 12, 4, 5, '', 22, 'gotwo/uploads/GUQRP_1733082042668.png', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733082098474.jpg', 'gotwo/uploads/GUSUCC_1733082122033.png'),
(65, 6, 'wait to long', 67, 12, 4, 5, '', 21, 'gotwo/uploads/GUQRP_1733297498691.png', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733297543612.jpg', 'gotwo/uploads/GUSUCC_1733297570861.png'),
(66, 2, 'wait to long', 68, 14, 0, 0, 'No comment', 21, 'gotwo/uploads/GUQRP_1733466596928.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733297543612.jpg', 'gotwo/uploads/GUSUCC_1733466379009.png'),
(67, 5, 'wait to long', 70, 14, 4, 0, 'cght', 21, 'gotwo/uploads/GUQRP_1733466596928.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733297543612.jpg', 'gotwo/uploads/GUSUCC_1733466379009.png'),
(68, 4, 'wait to long', 72, 14, 5, 4, 'D', 21, 'gotwo/uploads/GUQRP_1733431903982.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733431960402.jpg', 'gotwo/uploads/GUSUCC_1733431989367.jpg'),
(69, 5, 'wait to long', 71, 14, 6, 0, 'EEEEEEE', 21, 'gotwo/uploads/GUQRP_1733466596928.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733297543612.jpg', 'gotwo/uploads/GUSUCC_1733466379009.png'),
(70, 5, 'wait to long', 71, 14, 4, 0, 'fg', 21, 'gotwo/uploads/GUQRP_1733432141342.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733297543612.jpg', 'gotwo/uploads/GUSUCC_1733466379009.png'),
(71, 4, 'wait to long', 73, 15, 5, 4, 'rider handsome but he has lady boy', 23, 'gotwo/uploads/GUQRP_1733435897482.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733436179687.jpg', 'gotwo/uploads/GUSUCC_1733436351415.jpg'),
(72, 4, 'wait to long', 74, 15, 5, 5, 'hg', 23, 'gotwo/uploads/GUQRP_1733442733435.jpg', 'gotwo/uploads/qr_admin_1733580175.jpg', 'gotwo/uploads/GRTOTRA_1733442767818.jpg', 'gotwo/uploads/GUSUCC_1733442863842.jpg'),
(73, 5, 'wait to long', 75, 15, 6, 0, 'DE', 23, 'gotwo/uploads/GUQRP_1733466596928.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733297543612.jpg', 'gotwo/uploads/GUSUCC_1733466379009.png'),
(74, 4, 'wait to long', 75, 15, 5, 5, 'Qw', 23, 'gotwo/uploads/GUQRP_1733443688581.png', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733443790191.jpg', 'gotwo/uploads/GUSUCC_1733458855053.png'),
(75, 4, 'wait to long', 76, 16, 5, 5, 'ดีมาก', 24, 'gotwo/uploads/GUQRP_1733466191374.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733466319664.png', 'gotwo/uploads/GUSUCC_1733466379009.png'),
(76, 5, 'wait to long', 77, 16, 6, 0, 'แำืแำส', 24, 'gotwo/uploads/GUQRP_1733466596928.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733297543612.jpg', 'gotwo/uploads/GUSUCC_1733466379009.png'),
(77, 5, 'wait to long', 77, 16, 6, 0, 'cencel', 24, 'gotwo/uploads/GUQRP_1733466596928.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733297543612.jpg', 'gotwo/uploads/GUSUCC_1733466379009.png'),
(78, 2, 'wait to long', 79, 15, 0, 0, 'No comment', 21, 'gotwo/uploads/GUQRP_1733466596928.jpg', 'gotwo/uploads/qr_admin_1733466651.jpg', 'gotwo/uploads/GRTOTRA_1733297543612.jpg', 'gotwo/uploads/GUSUCC_1733466379009.png'),
(79, 5, 'wait to long', 80, 16, 4, 0, '', 25, 'gotwo/uploads/GUQRP_1733587570153.jpg', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `table_admin`
--

CREATE TABLE `table_admin` (
  `id` int(10) NOT NULL,
  `username` varchar(60) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `img_profile` varchar(255) NOT NULL,
  `tel` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_admin`
--

INSERT INTO `table_admin` (`id`, `username`, `name`, `password`, `img_profile`, `tel`) VALUES
(1, 'admin@gmail.com', 'Waraphorn Hungsabo', '$2y$10$NjMbqN66ZDvb94r9H8X1EeKXval8g0R2Ejph289t4Ma.ka3YUH0ve', '', 651111111);

-- --------------------------------------------------------

--
-- Table structure for table `table_customer`
--

CREATE TABLE `table_customer` (
  `regis_customer_id` int(10) NOT NULL,
  `img_profile` varchar(100) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `img_id_card` varchar(100) NOT NULL,
  `bank` varchar(20) NOT NULL,
  `name_account` varchar(30) NOT NULL,
  `number_bank` bigint(30) NOT NULL,
  `status_customer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_customer`
--

INSERT INTO `table_customer` (`regis_customer_id`, `img_profile`, `name`, `email`, `tel`, `gender`, `password`, `img_id_card`, `bank`, `name_account`, `number_bank`, `status_customer`) VALUES
(1, 'gotwo/uploads/GRU_1732632148903.jpg', 'test', 'test@lamduan.mfu.ac.th', '0651111111', 'male', '$2y$10$0YH7FnW3ku71jz2fRlvPCeBfysxOygNBdOe7n07QswwE5sW23czAm', 'gotwo/uploads/GRU_1732632148903.jpg', '1', '1', 1, 1),
(2, 'gotwo/uploads/GRU_1732632148903.jpg', 'Mod', 'mod@gmali.com', '0900000000', 'female', '$2y$10$0YH7FnW3ku71jz2fRlvPCeBfysxOygNBdOe7n07QswwE5sW23czAm', 'gotwo/uploads/GRU_1732632148903.jpg', 'gop', 'Fou', 45000000, 1),
(9, 'gotwo/uploads/GRU_1732632148903.jpg', 'Jen Doe', 'jendoe@gmail.com', '0923198198', 'female', '$2y$10$0YH7FnW3ku71jz2fRlvPCeBfysxOygNBdOe7n07QswwE5sW23czAm', 'gotwo/uploads/GRU_1732632148903.jpg', 'Bank 1', 'Jendoe', 2147483647, 0),
(10, 'gotwo/uploads/GRU_1732632148903.jpg', 'Rayo', 'Rayo@gmail.com', '0923198198', 'female', '$2y$10$0YH7FnW3ku71jz2fRlvPCeBfysxOygNBdOe7n07QswwE5sW23czAm', 'gotwo/uploads/GRU_1732632148903.jpg', 'TMB BANK', 'Ryoy', 12345678911104, 0),
(12, 'gotwo/uploads/GRU_1732632148903.jpg', 'Cusbocchi', 'Cusbocchi@gmail.com', '0923198198', 'female', '$2y$10$0YH7FnW3ku71jz2fRlvPCeBfysxOygNBdOe7n07QswwE5sW23czAm', 'gotwo/uploads/GRU_1732632148903.jpg', 'SIAM COMMERCIAL BANK', 'CusBocchi', 12345678910114, 0),
(13, 'gotwo/uploads/GP_1732304722444.png', 'ER', 'ER@gmail.com', '0923198198', 'female', '$2y$10$Hn3IYW4dezcU53V2VwJPDO96Atw/BFmz5lRuGctULJCoVzE6SvDZ6', 'gotwo/uploads/GP_1732901429852.jpg', 'KRUNG THAI BANK', 'ER', 1234567890114, 0),
(14, 'gotwo/uploads/GP_1733324657326.jpg', 'ศอ', 'So@gmail.com', '0914586007', 'female', '$2y$10$innVDbV4O2LpHlUnc6U4T.VgWivtsUpQLoxidCWsRrDbs56KVwyRm', 'gotwo/uploads/GP_1733324708799.jpg', 'BANGKOK BANK', 'So', 1236547891588, 1),
(15, 'gotwo/uploads/GP_1733435127328.jpg', 'sakura ujiha', 'sasakurasan@gmail.com', '0981031644', 'female', '$2y$10$P3QlhvUD5CTL2HEyiIMwOOMTNp2/TQl9XlcjwYwg/gNAeawKqcyzi', 'gotwo/uploads/GP_1733435260856.jpg', 'KRUNG THAI BANK', 'sakura', 142557413369, 1),
(16, 'gotwo/uploads/GP_1733465858608.jpg', 'Cus', 'Cus@gmail.com', '0923198198', 'female', '$2y$10$/bT7bkjrNiLvoU6kh/xDXex/YJlAuBj9pththBaXovVlPUzQBEfMu', 'gotwo/uploads/GP_1733465902877.jpg', 'BANGKOK BANK', 'Cus', 1458600012494, 1),
(17, 'gotwo/uploads/GP_1733570761985.png', 'TestR', 'TestR', '0923198198', 'female', '$2y$10$ocVMA8igmu6TMQFSB8GnGut.QptdpjakOIJ4mjL8PawZEBBbstpVm', 'gotwo/uploads/GP_1733570808154.jpg', 'KRUNG THAI BANK', 'Testd', 1414, 1);

-- --------------------------------------------------------

--
-- Table structure for table `table_rider`
--

CREATE TABLE `table_rider` (
  `regis_rider_id` int(10) NOT NULL,
  `img_profile` varchar(2000) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `img_id_card` varchar(2000) NOT NULL,
  `img_driver_license` varchar(2000) NOT NULL,
  `img_car_picture` varchar(2000) NOT NULL,
  `img_car_registration` varchar(2000) NOT NULL,
  `img_act` varchar(2000) NOT NULL,
  `expiration_date` date NOT NULL,
  `car_rigistration` varchar(30) NOT NULL,
  `car_brand` varchar(30) NOT NULL,
  `bank` varchar(20) NOT NULL,
  `name_account` varchar(50) NOT NULL,
  `number_bank` bigint(30) NOT NULL,
  `status_rider` int(10) NOT NULL,
  `reason` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_rider`
--

INSERT INTO `table_rider` (`regis_rider_id`, `img_profile`, `name`, `email`, `tel`, `gender`, `password`, `img_id_card`, `img_driver_license`, `img_car_picture`, `img_car_registration`, `img_act`, `expiration_date`, `car_rigistration`, `car_brand`, `bank`, `name_account`, `number_bank`, `status_rider`, `reason`) VALUES
(1, 'gotwo/uploads/GRU_1732632148903.jpg', 'Shikanoko', 'test2@lamduan.mfu.ac.th', '0651111111', 'male', '$2y$10$bYHwCCqpycexXAzptcJtveKkd1G8YxkG2IJobNdJJlCJfITTUkJ/S', 'gotwo/uploads/GRID_1732897192281.png', 'gotwo/uploads/GRLIC_1732897194829.png', 'gotwo/uploads/GRCAR_1732897197232.png', 'gotwo/uploads/GRREG_1732897201938.jpg', 'gotwo/uploads/GRATC_1732897208399.jpg', '2024-07-02', '1111', 'NIGA', 'TMB BANK', '111', 111, 1, '1'),
(2, 'gotwo/uploads/GRU_1732632148903.jpg', 'Waraphorn Hungsaboot', 'test@lamduan.mfu.ac.th', '0651111111', 'female', '$2y$10$bYHwCCqpycexXAzptcJtveKkd1G8YxkG2IJobNdJJlCJfITTUkJ/S', 'gotwo/uploads/GRID_1732897192281.png', 'gotwo/uploads/GRLIC_1732897194829.png', 'gotwo/uploads/GRCAR_1732897197232.png', 'gotwo/uploads/GRREG_1732897201938.jpg', 'gotwo/uploads/GRATC_1732897208399.jpg', '2024-08-05', '2345', 'MG', 'TMB BANK', 'www', 1234567890, 1, '1'),
(3, 'gotwo/uploads/GRU_1732632148903.jpg', 'gg', 'gg@gmail.com', '0900000000', 'male', '$2y$10$bYHwCCqpycexXAzptcJtveKkd1G8YxkG2IJobNdJJlCJfITTUkJ/S', 'gotwo/uploads/GRID_1732897192281.png', 'gotwo/uploads/GRLIC_1732897194829.png', 'gotwo/uploads/GRCAR_1732897197232.png', 'gotwo/uploads/GRREG_1732897201938.jpg', 'gotwo/uploads/GRATC_1732897208399.jpg', '2024-08-05', '8080', 'toyota', 'TMB BANK', 'ggb', 4500000, 1, ''),
(4, 'gotwo/uploads/GRU_1732632148903.jpg', 'DD', 'dd@gmail.com', '0911111111', 'male', '$2y$10$bYHwCCqpycexXAzptcJtveKkd1G8YxkG2IJobNdJJlCJfITTUkJ/S', 'gotwo/uploads/GRID_1732897192281.png', 'gotwo/uploads/GRLIC_1732897194829.png', 'gotwo/uploads/GRCAR_1732897197232.png', 'gotwo/uploads/GRREG_1732897201938.jpg', 'gotwo/uploads/GRATC_1732897208399.jpg', '2024-08-05', 'TU410', 'Toyota', 'TMB BANK', 'DD', 2147483647, 0, 'no'),
(5, 'gotwo/uploads/GRU_1732632148903.jpg', 're', 're@gmail.com', '0923198198', 'female', '$2y$10$bYHwCCqpycexXAzptcJtveKkd1G8YxkG2IJobNdJJlCJfITTUkJ/S', 'gotwo/uploads/GRID_1732897192281.png', 'gotwo/uploads/GRLIC_1732897194829.png', 'gotwo/uploads/GRCAR_1732897197232.png', 'gotwo/uploads/GRREG_1732897201938.jpg', 'gotwo/uploads/GRATC_1732897208399.jpg', '2024-08-05', '789', 'WV', 'TMB BANK', 'ioio', 12346, 3, 'DDDD'),
(6, 'gotwo/uploads/GRU_1732632148903.jpg', 'Hok', 'hok@gmail.com', '0923198198', 'male', '$2y$10$bYHwCCqpycexXAzptcJtveKkd1G8YxkG2IJobNdJJlCJfITTUkJ/S', 'gotwo/uploads/GRID_1732897192281.png', 'gotwo/uploads/GRLIC_1732897194829.png', 'gotwo/uploads/GRCAR_1732897197232.png', 'gotwo/uploads/GRREG_1732897201938.jpg', 'gotwo/uploads/GRATC_1732897208399.jpg', '2024-08-05', '5050', 'Honda', 'TMB BANK', 'Hok', 1234567890, 1, ''),
(21, 'gotwo/uploads/GRU_1732632148903.jpg', 'RiderBocchi', 'RiderBocchi@gmail.com', '0923198198', 'female', '$2y$10$bYHwCCqpycexXAzptcJtveKkd1G8YxkG2IJobNdJJlCJfITTUkJ/S', 'gotwo/uploads/GRID_1732897192281.png', 'gotwo/uploads/GRLIC_1732897194829.png', 'gotwo/uploads/GRCAR_1732897197232.png', 'gotwo/uploads/GRREG_1732897201938.jpg', 'gotwo/uploads/GRATC_1732897208399.jpg', '2024-11-26', 'RE 8080', 'Toyota', 'TMB BANK', 'RiderBocchi', 12345678910114, 1, 'no'),
(22, 'gotwo/uploads/GRU_1732897156721.png', 'Tori', 'Tori@gmail.com', '0923198198', 'male', '$2y$10$vILawE2CVapaHKW21URk6.P/seGPbMhydFfR8q9zlqhk0gmnbnS8a', 'gotwo/uploads/GRID_1732897192281.png', 'gotwo/uploads/GRLIC_1732897194829.png', 'gotwo/uploads/GRCAR_1732897197232.png', 'gotwo/uploads/GRREG_1732897201938.jpg', 'gotwo/uploads/GRATC_1732897208399.jpg', '2024-11-30', 'RT 8080', 'Yamaha', 'THANACHART BANK', 'Tori', 12345678910114, 1, 'no'),
(23, 'gotwo/uploads/GRU_1733435339907.jpg', 'Riderhandsome', 'AHEAHEAHE@gmail.com', '0254789144', 'male', '$2y$10$qoWK30Yava17rP61rxknPuRICru1gYkGlhw4xgRiChX/HKk/bxt3e', 'gotwo/uploads/GRID_1733435392545.jpg', 'gotwo/uploads/GRLIC_1733435396065.jpg', 'gotwo/uploads/GRCAR_1733435399576.jpg', 'gotwo/uploads/GRREG_1733435403528.jpg', 'gotwo/uploads/GRATC_1733435407700.jpg', '2031-12-04', 'กขค 122 นครศรีธรรมราช', 'ninja susuki 654', 'KRUNG THAI BANK', 'riderhandsome', 123147744885, 1, 'no'),
(24, 'gotwo/uploads/GRU_1733465375320.jpg', 'Rider', 'Rider@gmail.com', '0923198198', 'male', '$2y$10$96X8DjTKSTmdx2NjZquaSu/8NNekZXNKmhA/n/bsAALSa6U1A/5O6', 'gotwo/uploads/GRID_1733465419222.jpg', 'gotwo/uploads/GRLIC_1733465474473.jpg', 'gotwo/uploads/GRCAR_1733465470858.jpg', 'gotwo/uploads/GRREG_1733465498416.jpg', 'gotwo/uploads/GRATC_1733465440145.jpg', '2024-12-06', '4กช69', 'Honda', 'TMB BANK', 'Rider', 1458600012494, 1, ''),
(25, 'gotwo/uploads/GRU_1733571046276.jpg', 'TesrR', 'TesrR2gali.com', '0923198198', 'male', '$2y$10$2Kq3Q5Lrzvpakvw8BTk1eOJw8Ux.W3NxRGZooJFajProceDvP2htq', 'gotwo/uploads/GRID_1733571196313.jpg', 'gotwo/uploads/GRLIC_1733571212101.jpg', 'gotwo/uploads/GRCAR_1733571221089.jpg', 'gotwo/uploads/GRREG_1733571230393.png', 'gotwo/uploads/GRATC_1733571235331.jpg', '2024-12-07', 'RE 8888', 'toyota', 'TMB BANK', 'TesrR', 123456789, 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_list`
--
ALTER TABLE `bank_list`
  ADD PRIMARY KEY (`bank_ID`);

--
-- Indexes for table `location_list`
--
ALTER TABLE `location_list`
  ADD PRIMARY KEY (`LocationID`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `rider_id` (`rider_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `status_post`
--
ALTER TABLE `status_post`
  ADD PRIMARY KEY (`status_post_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `customer` (`customer_id`),
  ADD KEY `rider_id` (`rider_id`);

--
-- Indexes for table `table_admin`
--
ALTER TABLE `table_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_customer`
--
ALTER TABLE `table_customer`
  ADD PRIMARY KEY (`regis_customer_id`);

--
-- Indexes for table `table_rider`
--
ALTER TABLE `table_rider`
  ADD PRIMARY KEY (`regis_rider_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_list`
--
ALTER TABLE `bank_list`
  MODIFY `bank_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `location_list`
--
ALTER TABLE `location_list`
  MODIFY `LocationID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `status_post`
--
ALTER TABLE `status_post`
  MODIFY `status_post_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `table_admin`
--
ALTER TABLE `table_admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_customer`
--
ALTER TABLE `table_customer`
  MODIFY `regis_customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `table_rider`
--
ALTER TABLE `table_rider`
  MODIFY `regis_rider_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `table_customer` (`regis_customer_id`),
  ADD CONSTRAINT `rider_id` FOREIGN KEY (`rider_id`) REFERENCES `table_rider` (`regis_rider_id`);

--
-- Constraints for table `status_post`
--
ALTER TABLE `status_post`
  ADD CONSTRAINT `customer` FOREIGN KEY (`customer_id`) REFERENCES `table_customer` (`regis_customer_id`),
  ADD CONSTRAINT `post_id` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
  ADD CONSTRAINT `status_post_ibfk_1` FOREIGN KEY (`rider_id`) REFERENCES `table_rider` (`regis_rider_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
