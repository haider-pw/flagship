-- phpMyAdmin SQL Dump
-- version 4.3.8deb0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 28, 2017 at 02:05 AM
-- Server version: 5.6.28-0ubuntu0.15.04.1-log
-- PHP Version: 5.6.4-4ubuntu6.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cocoa_fll`
--

-- --------------------------------------------------------

--
-- Table structure for table `fll_activity`
--

CREATE TABLE IF NOT EXISTS `fll_activity` (
  `id_activity` int(11) NOT NULL,
  `log_user` varchar(255) NOT NULL,
  `user_action` varchar(255) NOT NULL,
  `log_time` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fll_activity`
--

INSERT INTO `fll_activity` (`id_activity`, `log_user`, `user_action`, `log_time`) VALUES
(1, 'ShavanarÃ© Oliver', 'add tour operator: Cruiseline - Star Clippers', '2015-10-21 15:12:24'),
(2, 'ShavanarÃ© Oliver', 'add flight time: 8:00 for flight AA1669', '2015-10-21 15:31:05'),
(3, 'ShavanarÃ© Oliver', 'add new reservation: Ms. Beth Schultz #ref:BGI-X7ZDPW79', '2015-10-21 15:31:15'),
(4, 'ShavanarÃ© Oliver', 'update reservation: Ms. Beth Schultz #ref:BGI-X7ZDPW79', '2015-10-21 15:33:09'),
(5, 'ShavanarÃ© Oliver', 'add new flight number: Vessel - Star Flyer', '2015-10-21 15:34:12'),
(6, 'ShavanarÃ© Oliver', 'add flight time: 6:00 for flight Vessel - Star Flyer', '2015-10-21 15:35:15'),
(7, 'ShavanarÃ© Oliver', 'update reservation: Ms. Beth Schultz #ref:BGI-X7ZDPW79', '2015-10-21 15:35:30'),
(8, 'ShavanarÃ© Oliver', 'update reservation: Ms. Beth Schultz #ref:BGI-X7ZDPW79', '2015-10-21 15:38:37'),
(9, 'ShavanarÃ© Oliver', 'update reservation: Ms. Beth Schultz #ref:BGI-X7ZDPW79', '2015-10-21 15:39:36'),
(10, 'Creative Tech', 'add new reservation: Mr. Haider Hassan #ref:FLL-V3HNRKJM', '2016-08-31 16:22:41'),
(11, 'Creative Tech', 'add new reservation: Mr. Haider Hassan #ref:FLL-WVP98BVX', '2016-08-31 16:24:04'),
(12, 'Creative Tech', 'add new reservation: Mr. Haider Hassan #ref:FLL-FK9VMC8Q', '2016-08-31 16:24:55'),
(13, 'Creative Tech', 'add new reservation: Mr. Haider Hassan #ref:FLL-TBD65BDZ', '2016-08-31 16:30:12'),
(14, 'Creative Tech', 'add new reservation: Mr. Haider Hassan #ref:FLL-HFKGTDR9', '2016-08-31 16:43:02'),
(15, 'Creative Tech', 'add new reservation: Mr. Syed Haider #ref:FLL-KHHSJPTR', '2016-08-31 16:54:46'),
(16, 'Creative Tech', 'add new reservation: Mr. Syed Haider #ref:FLL-GBQC7KFW', '2016-08-31 16:59:14'),
(17, 'Creative Tech', 'add new reservation: Mr. Syed Haider #ref:FLL-27WHD5H9', '2016-08-31 17:19:57'),
(18, 'Creative Tech', 'add new reservation: Mr. Syed Haider #ref:FLL-M5V78MN6', '2016-08-31 17:24:03'),
(19, 'Creative Tech', 'add new reservation: Mr. Syed Haider #ref:FLL-9HB8D539', '2016-08-31 17:25:01'),
(20, 'Creative Tech', 'add new reservation: . FIrst Haider #ref:FLL-24TVWFFQ', '2016-08-31 17:29:09'),
(21, 'Creative Tech', 'add new reservation: . FIrst Haider #ref:FLL-79SWJNDJ', '2016-08-31 17:41:42'),
(22, 'Creative Tech', 'update reservation: . FIrst Haider #ref:FLL-79SWJNDJ', '2016-09-01 09:51:39'),
(23, 'Creative Tech', 'add new reservation: . Akram Durrani #ref:FLL-39XP48T2', '2016-09-01 09:54:16'),
(24, 'Creative Tech', 'add new reservation: . First Last #ref:FLL-9ZJKM76R', '2016-09-01 09:58:56'),
(25, 'Creative Tech', 'add new reservation: . FIrst lAST #ref:FLL-JSSVCFRB', '2016-09-01 09:59:48'),
(26, 'Creative Tech', 'add new reservation: . ahsan Abbasi #ref:FLL-V73NM3N3', '2016-09-01 10:02:01'),
(27, 'Creative Tech', 'add new reservation: . ahsan Abbasi #ref:FLL-DCTDWGS8', '2016-09-01 10:05:25'),
(28, 'Creative Tech', 'add new reservation: . ahsan Abbasi #ref:FLL-RCK992S8', '2016-09-01 10:08:00'),
(29, 'Creative Tech', 'add new reservation: . ahsan Abbasi #ref:FLL-HVGQK2G4', '2016-09-01 10:10:57'),
(30, 'Creative Tech', 'add new reservation: . ahsan Abbasi #ref:FLL-8HKF2DKT', '2016-09-01 10:31:42'),
(31, 'Creative Tech', 'add new reservation: . ahsan Abbasi #ref:FLL-MBZ632NW', '2016-09-01 10:33:49'),
(32, 'Creative Tech', 'add new reservation: . ahsan Abbasi #ref:FLL-VD3HVJVJ', '2016-09-01 10:34:10'),
(33, 'Creative Tech', 'add new reservation: . ahsan Abbasi #ref:FLL-Y4KB7CSY', '2016-09-01 10:34:31'),
(34, 'Creative Tech', 'add new reservation: Mr. ahsan  DUrrani #ref:FLL-JZW46N3G', '2016-09-01 10:48:59'),
(35, 'Creative Tech', 'update reservation: . First Last #ref:FLL-9ZJKM76R', '2016-09-01 12:38:31'),
(36, 'Creative Tech', 'bug reported: Email Not working on Bug', '2016-09-02 13:02:21'),
(37, 'Creative Tech', 'update reservation: Ms. Beth Schultz #ref:BGI-X7ZDPW79', '2016-09-02 14:43:06'),
(38, 'Creative Tech', 'bug reported: but', '2016-09-02 15:10:07'),
(39, 'Creative Tech', 'bug reported: tet', '2016-09-02 15:10:36'),
(40, 'Creative Tech', 'bug reported: tet', '2016-09-02 15:33:51'),
(41, 'Creative Tech', 'bug reported: tet', '2016-09-02 15:35:13'),
(42, 'Creative Tech', 'bug reported: tet', '2016-09-02 15:35:37'),
(43, 'Creative Tech', 'bug reported: tet', '2016-09-02 15:37:41'),
(44, 'Creative Tech', 'bug reported: tet', '2016-09-02 15:37:55'),
(45, 'Creative Tech', 'bug reported: tet', '2016-09-02 15:38:24'),
(46, 'Creative Tech', 'bug reported: tet', '2016-09-02 15:39:15'),
(47, 'Creative Tech', 'bug reported: tet', '2016-09-02 15:39:57'),
(48, 'Creative Tech', 'bug reported: tet', '2016-09-02 15:41:25'),
(49, 'Creative Tech', 'bug reported: tet', '2016-09-02 15:56:07'),
(50, 'Creative Tech', 'bug reported: tet', '2016-09-02 16:00:37'),
(51, 'Creative Tech', 'bug reported: tet', '2016-09-02 16:02:04'),
(52, 'Creative Tech', 'bug reported: tet', '2016-09-02 16:02:51'),
(53, 'Creative Tech', 'bug reported: tet', '2016-09-02 16:12:19'),
(54, 'Creative Tech', 'bug reported: tet', '2016-09-02 16:38:59'),
(55, 'Creative Tech', 'bug reported: Bug Title', '2016-09-02 16:39:33'),
(56, 'Creative Tech', 'update reservation: . FIrst Haider #ref:FLL-79SWJNDJ', '2016-09-05 15:51:13'),
(57, 'Creative Tech', 'add new Inter-Hotel transfer: FLL-9ZJKM76R', '2016-09-05 16:06:51'),
(58, 'Creative Tech', 'update reservation: . First Last #ref:FLL-9ZJKM76R', '2016-09-05 16:09:43'),
(59, 'Creative Tech', 'update reservation: . FIrst lAST #ref:FLL-JSSVCFRB', '2016-09-05 16:56:57'),
(60, 'Creative Tech', 'update reservation: . FIrst lAST #ref:FLL-JSSVCFRB', '2016-09-05 17:10:02'),
(61, 'Creative Tech', 'add new arrival: #ref:FLL-JSSVCFRB', '2016-09-05 17:11:34'),
(62, 'Creative Tech', 'add new arrival: #ref:FLL-JSSVCFRB', '2016-09-05 17:14:13'),
(63, 'Creative Tech', 'add new arrival: #ref:FLL-JSSVCFRB', '2016-09-05 17:17:18'),
(64, 'Creative Tech', 'add new arrival: #ref:FLL-JSSVCFRB', '2016-09-05 17:17:33'),
(65, 'Creative Tech', 'add new arrival: #ref:FLL-JSSVCFRB', '2016-09-05 17:19:00'),
(66, 'Creative Tech', 'add new arrival: #ref:FLL-JSSVCFRB', '2016-09-05 17:19:09'),
(67, 'Creative Tech', 'add new arrival: #ref:FLL-JSSVCFRB', '2016-09-05 17:21:21'),
(68, 'Creative Tech', 'add new arrival: #ref:FLL-JSSVCFRB', '2016-09-05 17:28:42'),
(69, 'Creative Tech', 'add new fast track reservation:  Ms. Haider Hassan #ref:FLL-WNDV4T2N', '2016-09-06 10:41:14'),
(70, 'Creative Tech', 'update reservation: Dr. FIrst Haider #ref:FLL-79SWJNDJ', '2016-09-06 11:00:01'),
(71, 'Creative Tech', 'add new arrival: #ref:FLL-79SWJNDJ', '2016-09-06 11:08:25'),
(72, 'Creative Tech', 'add new reservation: Mr. Haider Hassan #ref:FLL-BMG9HD3G', '2016-09-19 09:46:55'),
(73, 'Creative Tech', 'add new reservation: Mr. Haider Hassan #ref:FLL-NG9DFG22', '2016-09-20 14:20:11'),
(74, 'Creative Tech', 'add new departure: #ref:FLL-79SWJNDJ', '2016-09-20 16:00:31'),
(75, 'Creative Tech', 'add new departure: #ref:FLL-79SWJNDJ', '2016-09-20 16:02:54'),
(76, 'Creative Tech', 'add new departure: #ref:FLL-79SWJNDJ', '2016-09-20 16:06:31'),
(77, 'Creative Tech', 'add new departure: #ref:FLL-79SWJNDJ', '2016-09-20 16:11:42'),
(78, 'Creative Tech', 'add guest: Mrs. Beenish Iqbal Afridi for Ref# FLL-79SWJNDJ', '2016-09-20 16:12:43'),
(79, 'Creative Tech', 'add new Inter-Hotel transfer: FLL-79SWJNDJ', '2016-09-20 16:13:24'),
(80, 'Creative Tech', 'add new Inter-Hotel transfer: FLL-79SWJNDJ', '2016-09-20 16:23:27'),
(81, 'Creative Tech', 'update reservation: Dr. FIrst Haider #ref:FLL-79SWJNDJ', '2016-09-20 16:24:08'),
(82, 'Creative Tech', 'add new arrival: #ref:FLL-39XP48T2', '2016-09-20 16:42:49'),
(83, 'Creative Tech', 'add new arrival: #ref:FLL-VD3HVJVJ', '2016-09-20 17:10:52'),
(84, 'Creative Tech', 'add guest: Ms. Maham Aftab for Ref# FLL-NG9DFG22', '2016-09-21 12:21:57'),
(85, 'Creative Tech', 'add new reservation: Ms. First Last #ref:FLL-KC8FTDZ4', '2016-10-04 18:41:21'),
(86, 'Creative Tech', 'add new reservation: Mr. Haider Hassan #ref:FLL-H4V375X3', '2016-10-04 19:09:13'),
(87, 'Creative Tech', 'add new reservation: Mr. Sajid Afridi #ref:FLL-6PD9PHPQ', '2016-10-04 19:15:09'),
(88, 'Creative Tech', 'add new reservation: Mr. 123 123 #ref:FLL-H3WPVNKS', '2016-10-05 13:00:27'),
(89, 'Creative Tech', 'Assign team Cheryl Sillivan / update reservation: .   #ref:FLL-H3WPVNKS', '2016-10-05 13:02:29'),
(90, 'Creative Tech', 'add new reservation: Mr. Haider Hassan #ref:FLL-W9Z8BT9V', '2016-10-06 12:38:40'),
(91, 'Creative Tech', 'add new reservation: Mr. Own Malik #ref:FLL-8B3MPJWW', '2016-11-01 13:41:52'),
(92, 'Creative Tech', 'add new fast track reservation:  Mr. Raza Malik #ref:FLL-BKHXR7XV', '2016-11-01 16:16:52'),
(93, 'Creative Tech', 'add new fast track reservation:  Select title. Haider Hassan #ref:FLL-QZBBKJQC', '2016-11-01 16:25:45'),
(94, 'Creative Tech', 'add new fast track reservation:  Select title. Haider Hassan #ref:FLL-DY8JZZZ9', '2016-11-01 16:29:13'),
(95, 'Creative Tech', 'add new fast track reservation:  Select title. Haider Hassan #ref:FLL-FBZDTH5F', '2016-11-01 16:30:58'),
(96, 'Creative Tech', 'add new fast track reservation:  Select title. Haider Hassan #ref:FLL-NZZ69N4D', '2016-11-01 16:35:08'),
(97, 'Creative Tech', 'add new fast track reservation:  Select title. Haider Hassan #ref:FLL-WDCFMYZF', '2016-11-01 16:36:36'),
(98, 'Creative Tech', 'add new fast track reservation:  Select title. Haider Hassan #ref:FLL-PKZWFTJQ', '2016-11-01 16:38:14'),
(99, 'Creative Tech', 'add new fast track reservation:  Select title. Haider Hassan #ref:FLL-FJDY5DQX', '2016-11-01 16:40:45'),
(100, 'Creative Tech', 'add new fast track reservation:  Select title. Haider Hassan #ref:FLL-K4YQ9RBQ', '2016-11-01 16:43:02'),
(101, 'Creative Tech', 'add new fast track reservation:  Select title. Haider Hassan #ref:FLL-RFPDV89T', '2016-11-01 16:44:47'),
(102, 'Creative Tech', 'add new fast track reservation:  Select title. Haider Hassan #ref:FLL-HG5Y39G5', '2016-11-01 16:44:56'),
(103, 'Creative Tech', 'add new fast track reservation:  Select title. Haider Hassan #ref:FLL-RZ2T4X3R', '2016-11-01 16:45:38'),
(104, 'Creative Tech', 'add new fast track reservation:  Select title. Guest Test #ref:FLL-W93H2HMF', '2016-11-01 16:55:32'),
(105, 'Creative Tech', 'add new fast track reservation:  Select title. Guest Test #ref:FLL-WXNRKNXY', '2016-11-01 17:10:22'),
(106, 'Creative Tech', 'add new fast track reservation:  Mr. Amjad Durrani #ref:FLL-NBKP33RJ', '2016-11-17 11:13:32'),
(107, 'Creative Tech', 'add new fast track reservation:  Ms. Anaar Kali #ref:FLL-SNZ7DSW3', '2016-11-17 13:39:09'),
(108, 'Creative Tech', 'add new reservation: Ms. Neela Begam #ref:FLL-R5JM29BV', '2016-11-17 17:44:07'),
(109, 'Creative Tech', 'add new reservation: Ms. Gul Khan #ref:FLL-KDKBWS7M', '2016-11-17 17:45:02'),
(110, 'Creative Tech', 'add new reservation: . ANeel Abid #ref:FLL-BMVFWZ49', '2016-11-17 18:17:22'),
(111, 'Creative Tech', 'add new reservation: Mr. Anil Kapoor #ref:FLL-F42GDJWZ', '2016-11-18 10:14:01'),
(112, 'Creative Tech', 'add new arrival: #ref:FLL-F42GDJWZ', '2016-11-18 10:26:42'),
(113, 'Creative Tech', 'add new reservation: Mr. Afreen Afreen #ref:FLL-4KNDQ9VY', '2016-11-22 11:22:57'),
(114, 'Creative Tech', 'add new arrival: #ref:FLL-4KNDQ9VY', '2016-11-22 12:10:23'),
(115, 'Creative Tech', 'add new arrival: #ref:FLL-4KNDQ9VY', '2016-11-22 12:11:32'),
(116, 'Creative Tech', 'add new arrival: #ref:FLL-4KNDQ9VY', '2016-11-22 12:15:04'),
(117, 'Creative Tech', 'add new arrival: #ref:FLL-4KNDQ9VY', '2016-11-22 12:21:34'),
(118, 'Creative Tech', 'add new arrival: #ref:FLL-4KNDQ9VY', '2016-11-22 12:22:41'),
(119, 'Creative Tech', 'add new reservation: Mr. Momina Afreen #ref:FLL-MVK5QV82', '2016-11-23 10:26:14'),
(120, 'Creative Tech', 'add new reservation: Mr. First Last #ref:FLL-TWDSX5SV', '2016-11-23 10:39:16'),
(121, 'Creative Tech', 'add new reservation: Mr. Momina MusteAhsan #ref:FLL-BMF9HD5T', '2016-11-23 10:43:44'),
(122, 'Creative Tech', 'add new reservation: Ms. Momina Ali #ref:FLL-RYJF7DJW', '2016-11-23 10:49:06'),
(123, 'Creative Tech', 'add new reservation: Ms. Momina Musteahsan #ref:FLL-FXX7GW4Q', '2016-11-23 10:52:51'),
(124, 'Creative Tech', 'add new reservation: Ms. First Name #ref:FLL-YM3G4CHG', '2016-11-23 11:13:16'),
(125, 'Creative Tech', 'add new reservation: Mr. Haider Hassan #ref:FLL-BGR5BF4V', '2016-11-29 15:23:14'),
(126, 'Creative Tech', 'add new reservation: Mr. Haider Hassan #ref:FLL-JY2T3DRD', '2016-11-29 16:22:52'),
(127, 'Creative Tech', 'add new reservation: Mr. Haider Hassan #ref:FLL-WBTZDGZ3', '2016-11-29 16:26:40'),
(128, 'Creative Tech', 'add new reservation: Mr. Haider Hassan #ref:FLL-5P3MY3YQ', '2016-11-29 16:33:36'),
(129, 'Creative Tech', 'add new reservation: Mr. Haider Hassan #ref:FLL-JTQJSWG8', '2016-11-29 17:00:01'),
(130, 'Creative Tech', 'add new reservation: Mr. Haider Hassan #ref:FLL-QD9GBCZM', '2016-11-29 17:02:28'),
(131, 'Creative Tech', 'add new reservation: Mr. Haider Hassan #ref:FLL-27N25QGY', '2016-11-30 10:22:07'),
(132, 'Creative Tech', 'add new reservation: Mr. haider hassan #ref:FLL-9XD2ZCG5', '2016-11-30 10:28:20'),
(133, 'Creative Tech', 'add new fast track reservation:  Mr. First Last #ref:FLL-D22V2B6V', '2016-11-30 15:47:34'),
(134, 'Creative Tech', 'add new fast track reservation:  Ms. Momina  Haider #ref:FLL-CBX3JB72', '2016-11-30 16:00:30'),
(135, 'Creative Tech', 'add new reservation: Mr. Haider Hassan #ref:FLL-P4BQDSGM', '2016-12-01 09:56:09'),
(136, 'Creative Tech', 'add new reservation: Mrs. akram Durrani #ref:FLL-9MRD2B8R', '2016-12-01 10:02:05'),
(137, 'Creative Tech', 'add new reservation: Mrs. Adnan Sami #ref:FLL-MQVX5CQC', '2016-12-01 10:05:34'),
(138, 'Creative Tech', 'add new reservation: Mrs. another test #ref:FLL-N3SHD2Y4', '2016-12-01 10:07:24'),
(139, 'Creative Tech', 'add new reservation: Mrs. dd d #ref:FLL-WMN4P79X', '2016-12-01 10:08:12'),
(140, 'Creative Tech', 'Assign team Jenny Banfield / update reservation: .   #ref:FLL-W9Z8BT9V', '2016-12-01 12:18:04'),
(141, 'Creative Tech', 'add new reservation: Mr. Haider Hassan #ref:FLL-56WBGXWZ', '2016-12-06 13:37:04'),
(142, 'Creative Tech', 'add new reservation: Mr. Haider Hassan #ref:FLL-88GCSZPD', '2016-12-06 14:15:07'),
(143, 'Creative Tech', 'add new reservation: Mr. Haider Hassan #ref:FLL-3MHSFTRK', '2016-12-06 14:19:19'),
(144, 'Creative Tech', 'add new reservation: Mr. Haider Hassan #ref:FLL-CWX36F54', '2016-12-06 16:34:16'),
(145, 'Creative Tech', 'add new reservation: Mr. Haider HassAN #ref:FLL-VDQYNHZW', '2016-12-06 17:23:16'),
(146, 'Creative Tech', 'add new fast track reservation:  Ms. Haider Hassan #ref:FLL-G23HY4RZ', '2016-12-07 18:06:58'),
(147, 'Kavita Sandiford', 'add new reservation: Mrs. Nikita Sandiford #ref:FLL-TJ4V5Q2W', '2017-03-22 15:05:44'),
(148, 'Kavita Sandiford', 'update reservation: Mrs. Nikita Sandiford #ref:FLL-TJ4V5Q2W', '2017-03-22 15:07:56'),
(149, 'Nicole Moody', 'delete location item: Fairmont Royal Pavilion', '2017-05-25 12:57:33'),
(150, 'Lekeisha Straker', 'add new reservation: Mr. Steve Frank #ref:FLL-5QFWC54G', '2017-05-25 13:12:46'),
(151, 'Lekeisha Straker', 'add guest: Miss. Jane Franks for Ref# FLL-5QFWC54G', '2017-05-25 13:15:52'),
(152, 'Lekeisha Straker', 'add new reservation: Mr. Ian Small #ref:FLL-34WZ5R55', '2017-05-25 14:17:46'),
(153, 'Creative Tech', 'add new fast track reservation:  Mr. ahsan khan #ref:FLL-DFH6YKWZ', '2017-06-02 18:44:17'),
(154, 'Nicole Moody', 'add new fast track reservation:  Mr. Testing Testing Last #ref:FLL-4STB59Y9', '2017-06-06 17:53:52'),
(155, 'Creative Tech', 'add new fast track reservation:  Mr. Amount Test Amount Test #ref:FLL-TDTHYH97', '2017-06-06 19:20:52'),
(156, 'Nicole Moody', 'add new fast track reservation:  Select title. FSFT Price Test FSFT Price TEst Last #ref:FLL-DXNH952S', '2017-06-08 12:35:10'),
(157, 'Nicole Moody', 'add new fast track reservation:  Select title. FSFT ntm price test FSFT ntm price test Last #ref:FLL-P74XYNRY', '2017-06-08 12:40:48'),
(158, 'Creative Tech', 'add new fast track reservation:  Mr. Test User #ref:FLL-ZG7BN6H4', '2017-06-08 13:15:15'),
(159, 'Creative Tech', 'add new fast track reservation:  Mr. Abc xyz #ref:FLL-YF39VR47', '2017-06-08 13:22:59'),
(160, 'Nicole Moody', 'add new fast track reservation:  Select title. FSFT Fist Name FSFT Last Name #ref:FLL-44C2Z7RX', '2017-06-09 14:41:04'),
(161, 'Nicole Moody', 'add new fast track reservation:  Sir. Another Test First Another Test Last #ref:FLL-Q3D6XWV4', '2017-06-09 14:52:48'),
(162, 'Creative Tech', 'add new fast track reservation:  Select title. Arslan Testing2 #ref:FLL-RDDV2KB6', '2017-06-14 16:02:36'),
(163, 'Nicole Moody', 'add new fast track reservation:  Mr. Testing Testing #ref:FLL-WGT8CZ9N', '2017-06-19 11:36:54'),
(164, 'Nicole Moody', 'update arrival details: #ref:FLL-WGT8CZ9N', '2017-06-19 11:38:13'),
(165, 'Nicole Moody', 'add new reservation: Mr. Nicole Testing Last #ref:FLL-38BTM48H', '2017-06-19 12:09:04'),
(166, 'Nicole Moody', 'Assign team Allan Grannum / update reservation: .   #ref:FLL-38BTM48H', '2017-06-19 12:22:12'),
(167, 'Creative Tech', 'add new reservation: Mr. Abc15 xyz15 #ref:FLL-C8RK49PG', '2017-06-19 20:15:18'),
(168, 'Creative Tech', 'update arrival details: #ref:FLL-RDDV2KB6', '2017-06-19 20:45:55'),
(169, 'Nicole Moody', 'update reservation: Mr. Nicole Testing Last #ref:FLL-38BTM48H', '2017-06-20 12:32:52'),
(170, 'Creative Tech', 'add new reservation: Mr. abc17 xyz17 #ref:FLL-5VDZX22R', '2017-06-20 14:19:28'),
(171, 'Creative Tech', 'add new fast track reservation:  Select title. abc20 xyz20 #ref:FLL-2BNYPZ8R', '2017-06-20 15:00:45'),
(172, 'Creative Tech', 'add new reservation: Mr. first Last #ref:FLL-H4M882X2', '2017-06-20 15:41:29'),
(173, 'Nicole Moody', 'add new reservation: Mr. Tess 1 Tess 1 #ref:FLL-TFB26QDX', '2017-06-20 21:11:03'),
(174, 'Nicole Moody', 'update arrival details: #ref:FLL-TFB26QDX', '2017-06-20 21:20:24'),
(175, 'Nicole Moody', 'add new fast track reservation:  Sir. FSFT First FSFT Last #ref:FLL-GX9TTB9Y', '2017-06-20 21:25:37'),
(176, 'Nicole Moody', 'add guest: Dr. add guest testing First add guest testing Last for Ref# FLL-GX9TTB9Y', '2017-06-20 21:35:23'),
(177, 'Creative Tech', 'add new reservation: Mr. abc xyz #ref:FLL-8C94DBDD', '2017-06-21 15:22:55'),
(178, 'Creative Tech', 'add new fast track reservation:  Select title. abc2 xyz2 #ref:FLL-P7SHFQFG', '2017-06-21 15:24:23'),
(179, 'Creative Tech', 'update arrival details: #ref:FLL-H4M882X2', '2017-06-21 16:01:02'),
(180, 'Creative Tech', 'update arrival details: #ref:FLL-P7SHFQFG', '2017-06-21 18:13:00'),
(181, 'Creative Tech', 'add new reservation: . Abc19 xyz19 #ref:FLL-B9JPRFTS', '2017-06-21 18:27:34'),
(182, 'Creative Tech', 'update arrival details: #ref:FLL-B9JPRFTS', '2017-06-21 18:31:02'),
(183, 'Creative Tech', 'update arrival details: #ref:FLL-B9JPRFTS', '2017-06-21 18:31:31'),
(184, 'Creative Tech', 'update arrival details: #ref:FLL-8C94DBDD', '2017-06-21 18:34:47'),
(185, 'Creative Tech', 'add new fast track reservation:  Select title. fSFT Test #ref:FLL-2YJJ5GQD', '2017-06-21 18:48:45'),
(186, 'Creative Tech', 'add new reservation: . Abc22 xyz22 #ref:FLL-F7Z73C9K', '2017-06-21 18:49:45'),
(187, 'Creative Tech', 'update arrival details: #ref:FLL-F7Z73C9K', '2017-06-21 18:50:16'),
(188, 'Creative Tech', 'update arrival details: #ref:FLL-F7Z73C9K', '2017-06-21 18:50:59'),
(189, 'Nicole Moody', 'update reservation: . fSFT Test #ref:FLL-2YJJ5GQD', '2017-06-22 18:44:58'),
(190, 'Nicole Moody', 'update reservation: . Abc19 xyz19 #ref:FLL-B9JPRFTS', '2017-06-22 18:45:09'),
(191, 'Nicole Moody', 'update reservation: Sir. FSFT First 2 FSFT Last #ref:FLL-GX9TTB9Y', '2017-06-22 18:45:52'),
(192, 'Nicole Moody', 'add new reservation: Mr. John Taylor #ref:FLL-JQ296ZRB', '2017-06-22 18:47:45'),
(193, 'Nicole Moody', 'update arrival details: #ref:FLL-JQ296ZRB', '2017-06-22 18:54:13'),
(194, 'Nicole Moody', 'add new reservation: Mr. George Smith #ref:FLL-DPHXV7G5', '2017-06-29 09:06:06'),
(195, 'Nicole Moody', 'add new reservation: Mrs. Another Test First Another Test First #ref:FLL-P8P7HW4V', '2017-06-29 12:09:09'),
(196, 'Nicole Moody', 'Assign team Shanad Snagg / update reservation: .   #ref:FLL-P7SHFQFG', '2017-06-29 12:38:01'),
(197, 'Nicole Moody', 'update reservation: . Abc22 xyz22 #ref:FLL-F7Z73C9K', '2017-06-29 15:56:08'),
(198, 'Nicole Moody', 'add new reservation: Sir. James Carlton #ref:FLL-QNM5HCPC', '2017-06-29 16:16:04'),
(199, 'Creative Tech', 'add new fast track reservation:  Mr. abc xyz #ref:FLL-36BTK784', '2017-07-04 04:51:29'),
(200, 'Creative Tech', 'add new reservation: . abc2 xyz2 #ref:FLL-J9PGTQYS', '2017-07-04 06:08:40'),
(201, 'Creative Tech', 'update arrival details: #ref:FLL-J9PGTQYS', '2017-07-04 06:13:00'),
(202, 'Creative Tech', 'update arrival details: #ref:FLL-DPHXV7G5', '2017-07-04 06:14:08'),
(203, 'Creative Tech', 'update arrival details: #ref:FLL-36BTK784', '2017-07-04 06:17:59'),
(204, 'Nicole Moody', 'add new reservation: Mr. FlagshipTest Test Last Name #ref:FLL-4NY87Q4M', '2017-07-05 13:24:06'),
(205, 'Nicole Moody', 'update arrival details: #ref:FLL-JQ296ZRB', '2017-07-05 13:30:40'),
(206, 'Nicole Moody', 'add new reservation: Mrs. Santa Clause #ref:FLL-69R27BRJ', '2017-07-05 15:39:18'),
(207, 'Creative Tech', 'add new reservation: Caption. abcTest XyzTest #ref:FLL-GZ5TVM9S', '2017-07-06 03:55:22'),
(208, 'Creative Tech', 'update arrival details: #ref:FLL-H4M882X2', '2017-07-06 04:13:02'),
(209, 'Creative Tech', 'update arrival details: #ref:FLL-H4M882X2', '2017-07-06 04:13:15'),
(210, 'Creative Tech', 'update arrival details: #ref:FLL-H4M882X2', '2017-07-06 04:21:00'),
(211, 'Creative Tech', 'update arrival details: #ref:FLL-H4M882X2', '2017-07-06 04:21:11'),
(212, 'Creative Tech', 'update arrival details: #ref:FLL-H4M882X2', '2017-07-06 04:21:27'),
(213, 'Creative Tech', 'update arrival details: #ref:FLL-H4M882X2', '2017-07-06 04:21:53'),
(214, 'Creative Tech', 'update arrival details: #ref:FLL-H4M882X2', '2017-07-06 04:26:10'),
(215, 'Creative Tech', 'update arrival details: #ref:FLL-H4M882X2', '2017-07-06 04:26:20'),
(216, 'Creative Tech', 'update arrival details: #ref:FLL-H4M882X2', '2017-07-06 04:26:38'),
(217, 'Creative Tech', 'update arrival details: #ref:FLL-H4M882X2', '2017-07-06 04:31:01'),
(218, 'Creative Tech', 'update arrival details: #ref:FLL-H4M882X2', '2017-07-06 04:31:11'),
(219, 'Creative Tech', 'add new reservation: Caption. abc333 xyz333 #ref:FLL-9226BSTP', '2017-07-07 07:08:54'),
(220, 'Nicole Moody', 'add new reservation: Caption. Nate The Great #ref:FLL-HHCCCHR4', '2017-07-07 15:42:41'),
(221, 'Nicole Moody', 'add new reservation: Mrs. Excursion Master #ref:FLL-X9CQG3CV', '2017-07-07 15:48:19'),
(222, 'Nicole Moody', 'add new reservation: Dr. Chad Ford #ref:FLL-NGG2MCRQ', '2017-07-07 16:39:03'),
(223, 'Nicole Moody', 'add new reservation: Lady. Jenna Ford #ref:FLL-SZ6GG96Y', '2017-07-07 16:40:27'),
(224, 'Nicole Moody', 'add new reservation: Dr. Jason Ford #ref:FLL-XNHDPQTD', '2017-07-07 16:41:16'),
(225, 'Nicole Moody', 'add new reservation: Dr. FSFT Arr Test FSFT Arr Test #ref:FLL-MYJ7VM2Z', '2017-07-07 16:54:04'),
(226, 'Nicole Moody', 'add new reservation: Sir. FSFT Dept Test FSFT Dept Test #ref:FLL-PV8WVMJ5', '2017-07-07 16:57:41'),
(227, 'Creative Tech', 'add new reservation: Mr. abc444 xyz444 #ref:FLL-K793TJ6P', '2017-07-11 02:34:52'),
(228, 'Nicole Moody', 'add new reservation: Ms. Shirley Temple #ref:FLL-VJCZ2MNT', '2017-07-13 14:14:51'),
(229, 'Nicole Moody', 'update arrival details: #ref:FLL-VJCZ2MNT', '2017-07-13 14:15:18'),
(230, 'Nicole Moody', 'add new reservation: Ms. Frosty The Snowman #ref:FLL-MKNZRY5J', '2017-07-13 14:18:37'),
(231, 'Nicole Moody', 'add new reservation: Dr. Misfit Toys #ref:FLL-QHW6D8VF', '2017-07-13 14:22:20'),
(232, 'Creative Tech', 'update arrival details: #ref:FLL-H4M882X2', '2017-07-14 02:42:59'),
(233, 'Creative Tech', 'update arrival details: #ref:FLL-P8P7HW4V', '2017-07-14 02:44:56'),
(234, 'Creative Tech', 'update arrival details: #ref:FLL-P8P7HW4V', '2017-07-14 02:59:34'),
(235, 'Creative Tech', 'update arrival details: #ref:FLL-P8P7HW4V', '2017-07-14 02:59:56'),
(236, 'Creative Tech', 'update arrival details: #ref:FLL-P8P7HW4V', '2017-07-14 03:08:45'),
(237, 'Creative Tech', 'update arrival details: #ref:FLL-P8P7HW4V', '2017-07-14 03:19:52'),
(238, 'Creative Tech', 'update arrival details: #ref:FLL-P8P7HW4V', '2017-07-14 03:28:34'),
(239, 'Creative Tech', 'update arrival details: #ref:FLL-P8P7HW4V', '2017-07-14 05:22:09'),
(240, 'Creative Tech', 'update arrival details: #ref:FLL-K793TJ6P', '2017-07-14 08:55:31'),
(241, 'Creative Tech', 'add new reservation: Mr. abc112 xyz112 #ref:FLL-87SDXM8Z', '2017-07-14 08:58:07'),
(242, 'Creative Tech', 'update arrival details: #ref:FLL-87SDXM8Z', '2017-07-14 09:02:22'),
(243, 'Creative Tech', 'update arrival details: #ref:FLL-87SDXM8Z', '2017-07-14 09:02:39'),
(244, 'Creative Tech', 'update arrival details: #ref:FLL-87SDXM8Z', '2017-07-14 09:02:58'),
(245, 'Creative Tech', 'update arrival details: #ref:FLL-87SDXM8Z', '2017-07-14 09:03:36'),
(246, 'Creative Tech', 'update arrival details: #ref:FLL-J9PGTQYS', '2017-07-14 09:18:14'),
(247, 'Creative Tech', 'update arrival details: #ref:FLL-P8P7HW4V', '2017-07-14 09:43:46'),
(248, 'Creative Tech', 'update arrival details: #ref:FLL-P8P7HW4V', '2017-07-14 09:49:16'),
(249, 'Creative Tech', 'update arrival details: #ref:FLL-P8P7HW4V', '2017-07-14 09:50:55'),
(250, 'Creative Tech', 'update arrival details: #ref:FLL-P8P7HW4V', '2017-07-14 09:52:52'),
(251, 'Nicole Moody', 'add new reservation: Lady. Laurie Plorry #ref:FLL-84YS9P8T', '2017-07-14 10:59:59'),
(252, 'Nicole Moody', 'update arrival details: #ref:FLL-84YS9P8T', '2017-07-14 11:16:12'),
(253, 'Creative Tech', 'update arrival details: #ref:FLL-8C94DBDD', '2017-07-19 02:16:18'),
(254, 'Creative Tech', 'add new fast track reservation:  Mr. fname lname #ref:FLL-42B6SPQM', '2017-07-25 05:50:31'),
(255, 'Creative Tech', 'add new fast track reservation:  Mr. fname lname #ref:FLL-5TN923VG', '2017-07-25 06:20:43'),
(256, 'Creative Tech', 'add new fast track reservation:  Select title. abc zyz #ref:FLL-KVC5ZW3T', '2017-07-25 06:55:51'),
(257, 'Creative Tech', 'add new fast track reservation:  Mrs. fname2 lname2 #ref:FLL-RTZKFGJ8', '2017-07-25 07:03:22'),
(258, 'Creative Tech', 'add new fast track reservation:  Select title. abc2 xyz2 #ref:FLL-7VDM8FJQ', '2017-07-25 07:14:36'),
(259, 'Creative Tech', 'add new reservation: . abc22 xyz44 #ref:FLL-N4BR65R8', '2017-07-25 07:56:26'),
(260, 'Creative Tech', 'add new reservation: . abc12 xtz12 #ref:FLL-MNSKCBSM', '2017-07-25 07:58:59'),
(261, 'Creative Tech', 'add new reservation: . test log #ref:FLL-PWVQTQZX', '2017-07-25 08:30:30'),
(262, 'Creative Tech', 'add new reservation: . abc44 xyz44 #ref:FLL-KM8FXRPP', '2017-07-25 09:20:54'),
(263, 'Creative Tech', 'add new reservation: Mr. fname lname #ref:FLL-Q4Y8FRY4', '2017-07-26 01:08:38'),
(264, 'Creative Tech', 'add new reservation: Mr. fname lname #ref:FLL-QNGHM4PN', '2017-07-26 01:52:32'),
(265, 'Creative Tech', 'add new reservation: . fnam2 lname2 #ref:FLL-FZ5B8C6C', '2017-07-26 01:53:59'),
(266, 'Creative Tech', 'add new reservation: Mr. fname2 lname2 #ref:FLL-HWQWRZRF', '2017-07-26 02:10:43'),
(267, 'Creative Tech', 'add new reservation: Mr. fnam3 lname3 #ref:FLL-KPSVBYVG', '2017-07-26 02:17:14'),
(268, 'Creative Tech', 'add new reservation: Mr. fname4 lname4 #ref:FLL-CGRZ2CYX', '2017-07-26 02:29:06'),
(269, 'Creative Tech', 'add new reservation: Mr. fname5 lname5 #ref:FLL-3JXKYW2K', '2017-07-26 02:31:33'),
(270, 'Creative Tech', 'add new reservation: Mr. fname8 lname8 #ref:FLL-BQNFNMVG', '2017-07-26 02:49:51'),
(271, 'Creative Tech', 'add new reservation: Mr. fname lname #ref:FLL-25P6V3HB', '2017-07-26 03:34:30'),
(272, 'Creative Tech', 'add new reservation: Mr. fname2 lnam2 #ref:FLL-FBZR35FC', '2017-07-26 03:37:46'),
(273, 'Creative Tech', 'add new reservation: Mr. fname3 lname3 #ref:FLL-DDZBNGPD', '2017-07-26 03:40:09'),
(274, 'Creative Tech', 'add new reservation: Mr. fname4 lname4 #ref:FLL-5T4QDZRG', '2017-07-26 03:44:01');

-- --------------------------------------------------------

--
-- Table structure for table `fll_additional_transfer`
--

CREATE TABLE IF NOT EXISTS `fll_additional_transfer` (
  `id` int(11) NOT NULL,
  `ref_no_sys` varchar(255) NOT NULL,
  `pickup` varchar(80) DEFAULT NULL,
  `pickup_date` date DEFAULT NULL,
  `pickup_time` varchar(255) DEFAULT NULL,
  `dropoff` varchar(255) DEFAULT NULL,
  `transport` varchar(255) DEFAULT NULL,
  `vehicle` int(11) DEFAULT NULL,
  `driver` int(11) DEFAULT NULL,
  `transfer_notes` varchar(255) DEFAULT NULL,
  `total_guests` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fll_arrivals`
--

CREATE TABLE IF NOT EXISTS `fll_arrivals` (
  `id` int(11) NOT NULL,
  `ref_no_sys` varchar(12) NOT NULL,
  `arr_date` date NOT NULL,
  `arr_time` varchar(255) NOT NULL,
  `arr_flight_no` varchar(255) NOT NULL,
  `flight_class` varchar(255) NOT NULL,
  `arr_transport` varchar(255) NOT NULL,
  `arr_driver` varchar(255) NOT NULL,
  `arr_vehicle` varchar(255) NOT NULL,
  `arr_pickup` varchar(255) NOT NULL,
  `arr_dropoff` varchar(255) NOT NULL,
  `room_type` varchar(255) NOT NULL,
  `rep_type` varchar(255) NOT NULL,
  `client_reqs` varchar(255) NOT NULL,
  `arr_transport_notes` varchar(255) NOT NULL,
  `arr_hotel_notes` varchar(255) NOT NULL,
  `infant_seats` int(11) DEFAULT NULL,
  `child_seats` int(11) DEFAULT NULL,
  `booster_seats` int(11) DEFAULT NULL,
  `vouchers` int(11) DEFAULT NULL,
  `cold_towel` int(11) DEFAULT NULL,
  `bottled_water` int(11) DEFAULT NULL,
  `rooms` int(6) DEFAULT NULL,
  `room_no` varchar(30) DEFAULT NULL,
  `arr_main` int(11) DEFAULT NULL,
  `luggage_vehicle` varchar(9) NOT NULL DEFAULT 'No',
  `fast_track` tinyint(1) NOT NULL DEFAULT '0',
  `excursion_name` varchar(100) DEFAULT NULL,
  `excursion_date` date DEFAULT NULL,
  `excursion_pickup` varchar(5) DEFAULT NULL,
  `excursion_confirm_by` varchar(200) DEFAULT NULL,
  `excursion_confirm_date` date DEFAULT NULL,
  `excursion_guests` decimal(3,0) DEFAULT NULL,
  `arr_rooms` varchar(10) DEFAULT NULL,
  `room_last_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fll_arrivals_drivers`
--

CREATE TABLE IF NOT EXISTS `fll_arrivals_drivers` (
  `id` int(9) unsigned NOT NULL,
  `arr_transport` int(3) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fll_arrivals_rooms`
--

CREATE TABLE IF NOT EXISTS `fll_arrivals_rooms` (
  `id` int(9) unsigned NOT NULL,
  `arrival_id` int(8) NOT NULL,
  `room_type` int(3) NOT NULL,
  `room_number` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fll_arrivals_transports`
--

CREATE TABLE IF NOT EXISTS `fll_arrivals_transports` (
  `id` int(10) unsigned NOT NULL,
  `arrival_id` int(10) unsigned NOT NULL,
  `transport_mode` varchar(100) NOT NULL,
  `vehicle` int(8) unsigned DEFAULT NULL,
  `driver` int(8) unsigned DEFAULT NULL,
  `luggage_vehicle` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fll_bugs`
--

CREATE TABLE IF NOT EXISTS `fll_bugs` (
  `id` int(11) NOT NULL,
  `bug_title` varchar(255) NOT NULL,
  `page` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `reporter` varchar(255) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fll_bugs`
--

INSERT INTO `fll_bugs` (`id`, `bug_title`, `page`, `details`, `reporter`, `active`) VALUES
(1, 'Email Not working on Bug', 'http://localhost/flights_project/bumblebee-fll/bug-report.php', 'When we report a bug, it should be emailed.', 'Creative Tech', 1),
(2, 'but', 'url', 'detail', 'Creative Tech', 1),
(3, 'tet', 'url', 'details', 'Creative Tech', 1),
(4, 'tet', 'url', 'details', 'Creative Tech', 1),
(5, 'tet', 'url', 'details', 'Creative Tech', 1),
(6, 'tet', 'url', 'details', 'Creative Tech', 1),
(7, 'tet', 'url', 'details', 'Creative Tech', 1),
(8, 'tet', 'url', 'details', 'Creative Tech', 1),
(9, 'tet', 'url', 'details', 'Creative Tech', 1),
(10, 'tet', 'url', 'details', 'Creative Tech', 1),
(11, 'tet', 'url', 'details', 'Creative Tech', 1),
(12, 'tet', 'url', 'details', 'Creative Tech', 1),
(13, 'tet', 'url', 'details', 'Creative Tech', 1),
(14, 'tet', 'url', 'details', 'Creative Tech', 1),
(15, 'tet', 'url', 'details', 'Creative Tech', 1),
(16, 'tet', 'url', 'details', 'Creative Tech', 1),
(17, 'tet', 'url', 'details', 'Creative Tech', 1),
(18, 'tet', 'url', 'details', 'Creative Tech', 1),
(19, 'Bug Title', 'URL', 'bug details', 'Creative Tech', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fll_clientreqs`
--

CREATE TABLE IF NOT EXISTS `fll_clientreqs` (
  `id` int(11) NOT NULL,
  `reqs` varchar(255) NOT NULL,
  `section` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fll_clientreqs`
--

INSERT INTO `fll_clientreqs` (`id`, `reqs`, `section`) VALUES
(1, 'Lounge voucher', 1),
(2, 'Car hire', 2),
(3, 'Pre booked excursion', 1),
(4, 'Flowers/Chocolate', 2),
(5, 'Rum punch kit/Spice Kit', 2),
(6, 'Wine/Champange', 2);

-- --------------------------------------------------------

--
-- Table structure for table `fll_departures`
--

CREATE TABLE IF NOT EXISTS `fll_departures` (
  `id` int(11) NOT NULL,
  `ref_no_sys` varchar(12) NOT NULL,
  `dpt_date` date NOT NULL,
  `dpt_time` int(11) NOT NULL,
  `dpt_flight_no` varchar(255) NOT NULL,
  `flight_class` varchar(255) NOT NULL,
  `dpt_transport` varchar(255) NOT NULL,
  `dpt_driver` varchar(255) NOT NULL,
  `dpt_vehicle` varchar(255) NOT NULL,
  `dpt_pickup` varchar(255) NOT NULL,
  `dpt_dropoff` varchar(255) NOT NULL,
  `dpt_pickup_time` varchar(5) NOT NULL,
  `dpt_notes` varchar(255) NOT NULL,
  `dpt_transport_notes` varchar(255) NOT NULL,
  `dpt_main` int(11) NOT NULL,
  `dpt_jet_center` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1 = on, 0 = off',
  `fast_track` int(2) NOT NULL,
  `dpt_vouchers` int(11) NOT NULL,
  `dpt_cold_towel` int(11) NOT NULL,
  `dpt_bottled_water` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fll_departures_old`
--

CREATE TABLE IF NOT EXISTS `fll_departures_old` (
  `id` int(11) NOT NULL,
  `ref_no_sys` varchar(12) NOT NULL,
  `dpt_date` date NOT NULL,
  `dpt_time` time NOT NULL,
  `dpt_flight_no` varchar(255) NOT NULL,
  `dpt_transport` varchar(255) NOT NULL,
  `dpt_driver` varchar(255) NOT NULL,
  `dpt_vehicle` varchar(255) NOT NULL,
  `dpt_pickup` varchar(255) NOT NULL,
  `dpt_dropoff` varchar(255) NOT NULL,
  `dpt_pickup_time` time NOT NULL,
  `dpt_notes` varchar(255) NOT NULL,
  `dpt_transport_notes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fll_flightclass`
--

CREATE TABLE IF NOT EXISTS `fll_flightclass` (
  `id` int(11) NOT NULL,
  `class` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fll_flightclass`
--

INSERT INTO `fll_flightclass` (`id`, `class`) VALUES
(1, 'First Class'),
(2, 'Club Class'),
(3, 'Business Class'),
(4, 'Upper Class'),
(5, 'Premium Economy'),
(6, 'Economy'),
(7, 'World Traveler'),
(8, 'World Traveller Plus');

-- --------------------------------------------------------

--
-- Table structure for table `fll_flights`
--

CREATE TABLE IF NOT EXISTS `fll_flights` (
  `id_flight` int(11) NOT NULL,
  `flight_number` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fll_flights`
--

INSERT INTO `fll_flights` (`id_flight`, `flight_number`) VALUES
(1, 'VS29'),
(2, 'BA2155'),
(3, 'AA1089'),
(4, 'AA2393'),
(6, 'AA1669'),
(7, 'B6 1561'),
(8, 'BW412'),
(9, 'B6 661'),
(10, 'LI772'),
(11, 'LI390'),
(12, 'AC966'),
(13, 'WS2512'),
(14, 'LI756'),
(15, 'BW415'),
(16, 'LI512'),
(17, 'LI726'),
(18, 'VS77'),
(19, 'DE1258'),
(20, 'LI523'),
(21, 'LI769'),
(22, 'BW466'),
(23, 'LI738'),
(24, 'LI560'),
(25, 'LI362'),
(26, 'LI771'),
(27, 'LI391'),
(28, 'BW414'),
(29, 'LI371'),
(30, 'LI760'),
(31, 'LI521'),
(32, 'BW457'),
(33, 'DL483'),
(34, 'DL697'),
(35, 'BW458'),
(36, 'BW459'),
(37, 'BW456'),
(38, 'TCX146P'),
(39, 'US817'),
(40, 'G3 7640'),
(41, 'G3 7641'),
(42, 'B6 1562'),
(43, 'BW413'),
(44, 'LI361'),
(45, 'LI727'),
(46, 'LI364'),
(47, 'B6 662'),
(48, 'LI755'),
(49, 'AC967'),
(50, 'VS30'),
(51, 'WS2513'),
(52, 'BA2154'),
(53, 'LI768'),
(54, 'LI513'),
(55, 'VS78'),
(56, 'DE1259'),
(57, 'BW447'),
(58, 'LI370'),
(59, 'DL688'),
(60, 'DL742'),
(61, 'TCX147P'),
(62, 'Vessel - Star Flyer');

-- --------------------------------------------------------

--
-- Table structure for table `fll_flighttime`
--

CREATE TABLE IF NOT EXISTS `fll_flighttime` (
  `id_fltime` int(11) NOT NULL,
  `id_flight` int(11) NOT NULL,
  `flight_time` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fll_flighttime`
--

INSERT INTO `fll_flighttime` (`id_fltime`, `id_flight`, `flight_time`) VALUES
(1, 3, '13:31'),
(2, 3, '14:40'),
(3, 4, '20:46'),
(6, 6, '19:10'),
(7, 1, '14:30'),
(8, 2, '14:55'),
(9, 7, '1:28'),
(10, 7, '2:38'),
(12, 8, '6:45'),
(13, 9, '13:05'),
(14, 10, '13:15'),
(15, 11, '13:20'),
(16, 11, '13:50'),
(17, 12, '13:45'),
(18, 13, '14:47'),
(19, 13, '14:52'),
(20, 13, '14:55'),
(21, 14, '15:40'),
(22, 15, '16:50'),
(23, 15, '17:25'),
(24, 16, '16:50'),
(25, 16, '17:30'),
(26, 17, '17:00'),
(27, 18, '17:30'),
(28, 19, '19:15'),
(29, 20, '19:15'),
(30, 20, '20:05'),
(31, 20, '20:00'),
(32, 20, '20:50'),
(33, 21, '19:40'),
(34, 21, '20:30'),
(35, 22, '20:35'),
(36, 22, '20:55'),
(37, 23, '23:15'),
(38, 24, '7:00'),
(39, 24, '8:00'),
(40, 25, '7:30'),
(41, 26, '19:45'),
(42, 26, '20:35'),
(43, 27, '20:00'),
(44, 27, '20:50'),
(45, 28, '8:50'),
(46, 28, '9:30'),
(47, 29, '11:05'),
(48, 30, '11:20'),
(49, 31, '11:35'),
(50, 31, '12:20'),
(51, 32, '20:15'),
(52, 32, '20:50'),
(53, 33, '13:44'),
(54, 34, '14:17'),
(55, 35, '8:55'),
(56, 35, '8:30'),
(57, 36, '19:35'),
(58, 36, '20:10'),
(59, 37, '8:55'),
(60, 37, '9:30'),
(61, 38, '18:25'),
(62, 39, '14:40'),
(63, 39, '15:30'),
(64, 40, '16:35'),
(65, 40, '17:35'),
(66, 41, '9:25'),
(67, 41, '10:25'),
(68, 42, '2:24'),
(69, 42, '3:34'),
(70, 42, '3:40'),
(71, 43, '7:15'),
(72, 44, '8:30'),
(73, 45, '12:10'),
(74, 46, '14:05'),
(75, 47, '14:10'),
(76, 48, '13:55'),
(77, 49, '14:45'),
(78, 50, '17:00'),
(79, 51, '15:34'),
(80, 51, '15:45'),
(81, 52, '17:15'),
(82, 53, '17:50'),
(83, 54, '17:40'),
(84, 55, '19:55'),
(85, 56, '21:15'),
(86, 57, '21:05'),
(87, 57, '21:30'),
(88, 58, '8:15'),
(89, 59, '14:34'),
(90, 60, '15:12'),
(91, 61, '20:10'),
(92, 7, '15:20'),
(93, 9, '3:20'),
(94, 42, '3:20'),
(96, 7, '20:40'),
(97, 7, '20:35'),
(98, 7, '1:34'),
(99, 42, '2:30'),
(100, 42, '2:25'),
(101, 42, '7:45'),
(102, 42, '7:40'),
(103, 6, '8:00'),
(104, 62, '6:00'),
(105, 63, '01:30'),
(106, 63, '04:30'),
(107, 62, '09:00');

-- --------------------------------------------------------

--
-- Table structure for table `fll_fsft_touroperator`
--

CREATE TABLE IF NOT EXISTS `fll_fsft_touroperator` (
  `id` int(11) NOT NULL,
  `tour_operator` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=latin1 COMMENT='Tour Operators table';

--
-- Dumping data for table `fll_fsft_touroperator`
--

INSERT INTO `fll_fsft_touroperator` (`id`, `tour_operator`, `amount`) VALUES
(1, 'A & Kent', 0.00),
(2, 'Abreu', 0.00),
(3, 'Agaxtur BR', 0.00),
(4, 'Alidays', 0.00),
(5, 'Aspire', 0.00),
(6, 'Aviva Group', 0.00),
(7, 'Azure', 0.00),
(8, 'British Airways', 0.00),
(9, 'BAHolidays', 0.00),
(10, 'Bailey Robinson', 0.00),
(11, 'BeCuriou', 0.00),
(12, 'Berge & Meer', 0.00),
(13, 'Best Tours Italia', 0.00),
(14, 'Blue Sky Luxury', 0.00),
(15, 'Bookit', 0.00),
(16, 'Caribbean Dest', 0.00),
(17, 'Caribbean Island', 0.00),
(18, 'CTS Horizons', 0.00),
(19, 'CV Travel', 0.00),
(20, 'Caribtours', 0.00),
(21, 'City Discovery', 0.00),
(22, 'Classic Collection', 40.00),
(23, 'Classic Resorts', 0.00),
(24, 'Colletts Resorts', 0.00),
(25, 'Cox & Kings', 0.00),
(26, 'Culsen Travel', 0.00),
(27, 'Curitiba Tours', 0.00),
(28, 'Designer Tours BR', 0.00),
(29, 'Destinology', 0.00),
(30, 'Diamond Air', 0.00),
(31, 'Direct Booking', 0.00),
(32, 'EFR Travel', 0.00),
(33, 'Eden Collection', 0.00),
(34, 'Escapade Caribbean', 0.00),
(35, 'Eso Travel', 0.00),
(36, 'Eurasia HWT', 0.00),
(37, 'Expressions', 0.00),
(38, 'Exsus Travel', 0.00),
(39, 'Fischer', 0.00),
(40, 'Friendship Travel', 0.00),
(41, 'Global Travel/Dest 2', 0.00),
(42, 'Gold Medal', 0.00),
(43, 'Golden Caribbean', 0.00),
(44, 'Harlequin', 0.00),
(45, 'Hays Travel', 0.00),
(46, 'Holiday Place', 0.00),
(47, 'Holiday Services', 0.00),
(48, 'HolidayBeds (Ireland)', 0.00),
(49, 'Individual Holidays', 0.00),
(50, 'Intimate Caribbean Holidays', 0.00),
(51, 'Key2Holidays', 0.00),
(52, 'Kuoni Zurich', 0.00),
(53, 'Kuoni France', 0.00),
(54, 'Kuoni Netherlands', 0.00),
(55, 'Kuoni Spain (Madrid)', 0.00),
(56, 'Kuoni UK', 0.00),
(57, 'Kuoni UK (WCC)', 0.00),
(58, 'La Fabbrica', 0.00),
(59, 'Latino Travel', 0.00),
(60, 'Latitude', 0.00),
(61, 'Lusso Travel', 0.00),
(62, 'Luxury Holiday Tours', 0.00),
(63, 'Luxurytrips', 0.00),
(64, 'MLT Vacations', 0.00),
(65, 'MotMot Travel', 0.00),
(66, 'Mundy Cruising', 0.00),
(67, 'Naar Tours', 0.00),
(68, 'Noks Film', 0.00),
(69, 'North American Travel', 0.00),
(70, 'Online Travel', 0.00),
(71, 'Only Exclusive', 0.00),
(72, 'Owners Syndicate', 0.00),
(73, 'Pelikan Rejser', 0.00),
(74, 'Pink Pearl', 0.00),
(75, 'Pleasant Holidays', 0.00),
(76, 'Presona Travel', 0.00),
(77, 'Prestbury WW', 0.00),
(78, 'Pure Luxury', 0.00),
(79, 'Quadrante', 0.00),
(80, 'Real Holidays', 0.00),
(81, 'Rockwell', 0.00),
(82, 'St James Travel & Tours', 0.00),
(83, 'Scott Dunn', 0.00),
(84, 'Seasons in Style', 0.00),
(85, 'Simpson Exclusive', 0.00),
(86, 'Slattery Travel', 0.00),
(87, 'Sunburst Vacations', 0.00),
(88, 'Sunlinc', 0.00),
(89, 'Sunmaster', 0.00),
(90, 'Sunny Holidays', 0.00),
(91, 'Sunset Travel Ltd', 0.00),
(92, 'Sunway Holidays', 0.00),
(93, 'Sunwing', 0.00),
(94, 'TC Germany', 0.00),
(95, 'TC Group', 0.00),
(96, 'TC Signature', 0.00),
(97, 'TC Sport', 0.00),
(98, 'Team America', 0.00),
(99, 'Thomas WW', 0.00),
(100, 'Titan Travel Ltd', 0.00),
(101, 'Tourist Club', 0.00),
(102, 'Trailfinders', 0.00),
(103, 'Travco LLP', 0.00),
(104, 'Travel 2/4', 0.00),
(105, 'Travel City', 0.00),
(106, 'Travel Factory', 0.00),
(107, 'Travel Trend', 0.00),
(108, 'Travel Value', 0.00),
(109, 'Travel2', 0.00),
(110, 'Tropic Breeze', 0.00),
(111, 'Tropic Sky', 0.00),
(112, 'Tropical Dest', 0.00),
(113, 'Tropical Locations', 0.00),
(114, 'Tropical Tours', 0.00),
(115, 'Tropicalement', 0.00),
(116, 'Turquoise Holidays', 0.00),
(117, 'Travel Counsellors', 0.00),
(118, 'Ultimate Travel', 0.00),
(119, 'Value Added Travel', 0.00),
(120, 'Viator', 0.00),
(121, 'Vicino E Lontano', 0.00),
(122, 'Voyageurs Du Monde', 0.00),
(123, 'W & O', 0.00),
(124, 'WT Vacations', 0.00),
(125, 'WeTravel2', 0.00),
(126, 'Wedd in Paradise', 0.00),
(127, 'West Jet', 0.00),
(128, 'White sand weddings', 0.00),
(129, 'Wilderness Explorers', 0.00),
(130, 'Virtuoso', 0.00),
(131, 'ITC', 0.00),
(132, 'Carrier', 0.00),
(133, 'World Travel Holdings', 0.00),
(134, 'Island Villas', 0.00),
(135, 'Blue Anglia', 0.00),
(136, 'Altman', 30.00),
(137, 'London Life & Casualty', 0.00),
(138, 'London Life IRC', 0.00),
(139, 'Soutterham Bank', 0.00),
(140, 'Accra Beach Hotel', 40.00),
(141, 'B Away', 0.00),
(142, 'Cruiseline - Star Clippers', 0.00),
(144, 'Web Booking', 0.00),
(145, 'Sandy Bay Hotel', 30.00),
(146, 'Audley Travel', 35.00);

-- --------------------------------------------------------

--
-- Table structure for table `fll_guest`
--

CREATE TABLE IF NOT EXISTS `fll_guest` (
  `id` int(11) NOT NULL,
  `title_name` varchar(255) NOT NULL,
  `ref_no_sys` varchar(12) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `adult` int(11) NOT NULL,
  `child_age` int(11) NOT NULL,
  `infant_age` int(11) NOT NULL,
  `pnr` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Guest table';

-- --------------------------------------------------------

--
-- Table structure for table `fll_location`
--

CREATE TABLE IF NOT EXISTS `fll_location` (
  `id_location` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zone` int(4) NOT NULL DEFAULT '0',
  `sorting_order` varchar(255) NOT NULL,
  `loc_code` varchar(6) NOT NULL DEFAULT '000'
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fll_location`
--

INSERT INTO `fll_location` (`id_location`, `name`, `zone`, `sorting_order`, `loc_code`) VALUES
(2, 'Sandals Barbados', 4, '', '0'),
(3, 'Tamarind - Elegant', 2, '', '0'),
(4, 'Accra Beach Hotel', 4, '', '0'),
(5, 'All Seasons Resorts', 2, '', '0'),
(7, 'Amaryllis Beach Resorts', 4, '', '0'),
(8, 'Aquatica', 4, '', '0'),
(9, 'Atlanits Hotel', 1, '', '0'),
(10, 'Barbados Beach Club', 4, '', '0'),
(11, 'Beach View', 2, '', '0'),
(12, 'Blue Orchid Beach Hotel', 4, '', '0'),
(13, 'Bougainvillea Beach Resorts', 4, '', '0'),
(14, 'Butterfly Beach Hotel', 4, '', '0'),
(15, 'Cobblers Cove', 3, '', '0'),
(16, 'Coconut Court', 4, '', '0'),
(17, 'Colony Club Hotel - Elegant', 2, '', '0'),
(18, 'Coral Mist Beach Hotel', 4, '', '0'),
(19, 'Coral Reef Club', 2, '', '0'),
(20, 'Coral Sands Beach Resort', 4, '', '0'),
(21, 'Crystal Cove Hotel - Elegant', 2, '', '0'),
(22, 'Discovery Bay Hotel', 2, '', '0'),
(23, 'Divi Southwinds Beach Resorts', 4, '', '0'),
(24, 'Hilton Barbados', 4, '', '0'),
(25, 'Little Arches Hotel', 4, '', '0'),
(26, 'Little Good Harbour', 2, '', '0'),
(27, 'Mango Bay Hotel &amp; Beach Club', 2, '', '0'),
(28, 'Marriott Courtyard', 4, '', '0'),
(29, 'Ocean Two Resort &amp; Residences', 4, '', '0'),
(30, 'Pirates Inn', 4, '', '0'),
(31, 'Port St. Charles', 3, '', '0'),
(32, 'Rostrevor Apartments Hotel', 4, '', '0'),
(33, 'Royal Westmoreland', 2, '', '0'),
(34, 'Sandy Lane Hotel', 2, '', '0'),
(35, 'Savannah Hotel', 4, '', '0'),
(36, 'Sea Breeze Beach Hotel', 4, '', '0'),
(37, 'Settlers Beach', 2, '', '0'),
(38, 'Silver Point Hotel', 4, '', '0'),
(39, 'South Beach Resort &amp; Vacation Club', 4, '', '0'),
(40, 'South Gap Hotel', 4, '', '0'),
(41, 'Southern Palms Beach Club', 4, '', '0'),
(42, 'Sugar Cane Club Hotel &amp; Spa', 3, '', '0'),
(43, 'The Club Barbados ', 2, '', '0'),
(44, 'The Crane Beach', 1, '', '0'),
(45, 'The House - Elegant', 2, '', '0'),
(46, 'The Sandpiper Hotel', 2, '', '0'),
(47, 'Time Out At The Gap', 4, '', '0'),
(48, 'Treasure Beach Hotel', 2, '', '0'),
(49, 'Turtle Beach hotel - Elegant', 4, '', '0'),
(50, 'Waves Hotel &amp; Spa', 2, '', '0'),
(51, 'Worthing Court Apartment Hotel', 4, '', '0'),
(52, 'Yellow Bird Hotel', 4, '', '0'),
(55, 'Dover Beach Hotel', 4, '', '0'),
(56, 'Airport', 4, '', '0'),
(57, 'Seaport', 0, '', '0'),
(59, 'Z - Cove Spring', 2, '', '0'),
(60, 'Z - Dene Court Villa', 2, '', '0'),
(61, 'Z - Villa Elsewhere', 2, '', '0'),
(62, 'Z - Land Fall Villa', 2, '', '0'),
(63, 'Z - Mon Caprice', 2, '', '0'),
(64, 'Z - Porters Great House', 3, '', '0'),
(65, 'Z - Saramanda', 3, '', '0'),
(66, 'Z - Jane&#039;s Harbour', 2, '', '0'),
(67, 'Z - Trade Winds', 2, '', '0'),
(69, 'Port Ferdinand', 3, '', '0'),
(70, 'St. Peters Bay', 3, '', '0'),
(71, 'Z - Alan Bay Cottage', 0, '', '0'),
(72, 'Z - Bluff House', 0, '', '0'),
(73, 'Z - Alleyne Aguilar &amp; Altman Ltd', 0, '', '0'),
(75, 'Z - Land Mark Cottage', 0, '', '0'),
(76, 'Z - Lascelles House', 0, '', '0'),
(77, 'Z - Leamington Cottage', 0, '', '0'),
(78, 'Z - Leamington House', 0, '', '0'),
(79, 'Z - Mahogany House', 0, '', '0'),
(80, 'Z - Merlin Bay #1', 0, '', '0'),
(81, 'Z - Milord', 0, '', '0'),
(82, 'Z - Moon Reach Villa', 0, '', '0'),
(83, 'Z - Mullins Hill', 0, '', '0'),
(84, 'Z - Mullins View', 0, '', '0'),
(85, 'Z - Nelson Gay', 0, '', '0'),
(86, 'Z - Nirvana', 0, '', '0'),
(87, 'Z - Nutmeg', 0, '', '0'),
(88, 'Z - Oceans Edge', 0, '', '0'),
(89, 'Z - Overlook', 3, '', '0'),
(90, 'Z - Osyter Bay ', 2, '', '0'),
(91, 'Z - Pink Cottage', 0, '', '0'),
(92, 'Z - Port St.Charles Villas', 3, '', '0'),
(93, 'Z - Reed House', 0, '', '0'),
(94, 'Z - Penthouse', 0, '', '0'),
(95, 'Z - Ground Floor Unit', 0, '', '0'),
(96, 'Z - Sandbox Villa', 0, '', '0'),
(98, 'Z - Sara Moon', 0, '', '0'),
(99, 'Z - Sea Horse Villa', 0, '', '0'),
(100, 'Z - Sea Isle Villa', 0, '', '0'),
(101, 'Z - Sea Scape House', 0, '', '0'),
(102, 'Z - Secret Garden', 0, '', '0'),
(103, 'Z - Senderlea', 0, '', '0'),
(104, 'Z - Spring Head', 0, '', '0'),
(105, 'Z - Sundown', 0, '', '0'),
(106, 'Z - Tara', 0, '', '0'),
(107, 'Z- Tamarind Cottage', 0, '', '0'),
(108, 'Z - Turtle Nest', 0, '', '0'),
(109, 'Z - Turtle Reach', 0, '', '0'),
(110, 'Z - Valial', 0, '', '0'),
(112, 'Z - Villa Lagoon', 0, '', '0'),
(113, 'Z - Villa Melissa', 0, '', '0'),
(114, 'Z - Villas on the Beach', 0, '', '0'),
(115, 'Z - Villa St. Lucy', 0, '', '0'),
(116, 'Z - Vistamar', 0, '', '0'),
(117, 'Z - Wales End', 0, '', '0'),
(118, 'Z - Waverly Villa #1', 0, '', '0'),
(119, 'Z - Westshore', 0, '', '0'),
(120, 'Z - Westhaven', 0, '', '0'),
(121, 'Z - White Caps', 0, '', '0'),
(122, 'Z - White gates', 0, '', '0'),
(123, 'Z - Windward', 0, '', '0'),
(124, 'Z - Y Not', 0, '', '0'),
(125, 'Z - Jacaranda', 0, '', '0'),
(126, 'Z - The Dream', 0, '', '0'),
(127, 'Z - Summerland Villas', 0, '', '0'),
(128, 'Z - Villa Bonavista', 0, '', '0'),
(129, 'Z - High Trees', 0, '', '0'),
(130, 'Testing Hotel', 3, '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `fll_loc_coast`
--

CREATE TABLE IF NOT EXISTS `fll_loc_coast` (
  `id` int(8) unsigned NOT NULL,
  `coast` varchar(80) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fll_loc_coast`
--

INSERT INTO `fll_loc_coast` (`id`, `coast`) VALUES
(1, 'East Coast'),
(2, 'West Coast'),
(3, 'North Coast'),
(4, 'South Coast');

-- --------------------------------------------------------

--
-- Table structure for table `fll_luggage_vehicle`
--

CREATE TABLE IF NOT EXISTS `fll_luggage_vehicle` (
  `id` int(2) unsigned NOT NULL,
  `vehicle` varchar(80) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fll_luggage_vehicle`
--

INSERT INTO `fll_luggage_vehicle` (`id`, `vehicle`) VALUES
(1, 'Luggage Car'),
(2, 'Luggage Van'),
(3, 'Luggage Truck');

-- --------------------------------------------------------

--
-- Table structure for table `fll_payment_type`
--

CREATE TABLE IF NOT EXISTS `fll_payment_type` (
  `id` int(11) NOT NULL,
  `payment_type` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fll_payment_type`
--

INSERT INTO `fll_payment_type` (`id`, `payment_type`) VALUES
(1, 'Payment Received – Credit Card'),
(2, 'Payment Received – Cash'),
(3, 'To Be Invoiced');

-- --------------------------------------------------------

--
-- Table structure for table `fll_reports`
--

CREATE TABLE IF NOT EXISTS `fll_reports` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `setting` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `fsft` int(2) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fll_reports`
--

INSERT INTO `fll_reports` (`id`, `name`, `setting`, `user_id`, `fsft`, `created_date`) VALUES
(6, 'Test report', '[{"name":"reportName","value":"Test report"},{"name":"reportId","value":"6"},{"name":"R.id::Id","value":"1"},{"name":"R.title_name::Title_Name","value":"1"},{"name":"R.first_name::First_Name","value":"1"},{"name":"R.last_name::Last_Name","value":"1"},{"name":"R.pnr::PNR","value":"1"},{"name":"R.G.title_name::Guest_Title_Name","value":"1"}]', 19, 0, '0000-00-00 00:00:00'),
(17, 'Testing', '[{"name":"reportName","value":"Testing"},{"name":"reportId","value":"17"},{"name":"R.id::Id","value":"1"},{"name":"R.title_name::Title_Name","value":"1"},{"name":"R.first_name::First_Name","value":"1"},{"name":"R.last_name::Last_Name","value":"1"},{"name":"R.pnr::PNR","value":"1"}]', 19, 1, '2017-06-05 15:26:58'),
(20, 'FSFT Full Test', '[{"name":"reportName","value":"FSFT Full Test"},{"name":"reportId","value":""},{"name":"R.id::Id","value":"1"},{"name":"R.title_name::Title_Name","value":"1"},{"name":"R.first_name::First_Name","value":"1"},{"name":"R.last_name::Last_Name","value":"1"},{"name":"R.pnr::PNR","value":"1"},{"name":"R.sup_total_amount::Total_Supplier_Amount","value":"1"},{"name":"R.G.title_name::Guest_Title_Name","value":"1"},{"name":"R.G.first_name::Guest_First_Name","value":"1"},{"name":"R.G.last_name::Guest_Last_Name","value":"1"},{"name":"R.G.adult::Guest_Adult","value":"1"},{"name":"R.G.child_age::Guest_Child_Age","value":"1"},{"name":"R.G.infant_age::Guest_Infant_Age","value":"1"},{"name":"R.G.pnr::Guest_PNR","value":"1"},{"name":"R.A.arr_date::Arr_Date","value":"1"},{"name":"R.A.arr_time::Arr_Time","value":"1"},{"name":"R.A.arr_flight_no::Arr_Flight","value":"1"},{"name":"R.A.flight_class::Arr_Flight_Class","value":"1"},{"name":"R.A.arr_transport::Arr_Transport","value":"1"},{"name":"R.A.arr_driver::Arr_Driver","value":"1"},{"name":"R.A.arr_vehicle::Arr_Vehicle","value":"1"},{"name":"R.A.arr_pickup::Arr_Pickup","value":"1"},{"name":"R.A.arr_dropoff::Arr_Dropoff","value":"1"},{"name":"R.A.room_type::Arr_Room_Type","value":"1"},{"name":"R.A.rep_type::Arr_Rep_Type","value":"1"},{"name":"R.A.client_reqs::Arr_Client_Reqs","value":"1"},{"name":"R.A.arr_transport_notes::Arr_Transport_Notes","value":"1"},{"name":"R.A.arr_hotel_notes::Arr_Hotel_Notes","value":"1"},{"name":"R.A.infant_seats::Arr_Infant_Seats","value":"1"},{"name":"R.A.child_seats::Arr_Child_Seats","value":"1"},{"name":"R.A.booster_seats::Arr_Booster_Seats","value":"1"},{"name":"R.A.vouchers::Arr_Vouchers","value":"1"},{"name":"R.A.cold_towel::Arr_Cold_Towel","value":"1"},{"name":"R.A.bottled_water::Arr_Bottled_Water","value":"1"},{"name":"R.A.rooms::Arr_Rooms","value":"1"},{"name":"R.A.room_no::Arr_Room","value":"1"},{"name":"R.A.arr_main::Arr_Main","value":"1"},{"name":"R.A.luggage_vehicle::Arr_Lagguage_Vehicle","value":"1"},{"name":"R.A.excursion_name::Arr_Excursion_Name","value":"1"},{"name":"R.A.excursion_date::Arr_Excursion_Date","value":"1"},{"name":"R.A.excursion_pickup::Arr_Excursion_Pickup","value":"1"},{"name":"R.A.excursion_confirm_by::Arr_Excursion_Confirm_By","value":"1"},{"name":"R.A.excursion_confirm_date::Arr_Confirm_Date","value":"1"},{"name":"R.A.excursion_guests::Arr_Excursion_Guests","value":"1"},{"name":"R.A.arr_rooms::Arr_Rooms","value":"1"},{"name":"R.A.room_last_name::Arr_Room_Last_Name","value":"1"},{"name":"R.D.dpt_date::Dept_Date","value":"1"},{"name":"R.D.dpt_time::Dept_Time","value":"1"},{"name":"R.D.dpt_flight_no::Dept_Flight","value":"1"},{"name":"R.D.flight_class::Dept_Flight_Class","value":"1"},{"name":"R.D.dpt_transport::Dept_Transport","value":"1"},{"name":"R.D.dpt_driver::Dept_Driver","value":"1"},{"name":"R.D.dpt_vehicle::Dept_Vehicle","value":"1"},{"name":"R.D.dpt_pickup::Dept_Pickup","value":"1"},{"name":"R.D.dpt_dropoff::Dept_Dropoff","value":"1"},{"name":"R.D.dpt_pickup_time::Dept_Pickup_Time","value":"1"},{"name":"R.D.dpt_notes::Dept_Notes","value":"1"},{"name":"R.D.dpt_transport_notes::Dept_Transport_Notes","value":"1"},{"name":"R.D.dpt_main::Dept_Main","value":"1"},{"name":"R.D.dpt_jet_center::Dept_Jet_Center","value":"1"}]', 9, 1, '2017-06-09 15:12:55'),
(23, 'Arrival Test Report', '[{"name":"reportName","value":"Arrival Test Report"},{"name":"reportId","value":""},{"name":"R.id::Id","value":"1"},{"name":"R.title_name::Title_Name","value":"1"},{"name":"R.first_name::First_Name","value":"1"},{"name":"R.last_name::Last_Name","value":"1"},{"name":"R.pnr::PNR","value":"1"},{"name":"R.T.tour_operator::Tour_Operator","value":"1"},{"name":"R.operator_code::Operator_Code","value":"1"},{"name":"R.tour_ref_no::Reference_No","value":"1"},{"name":"R.adult::Adult","value":"1"},{"name":"R.child::Child","value":"1"},{"name":"R.infant::Infant","value":"1"},{"name":"R.id::A_C_I","value":"1"},{"name":"R.tour_notes::Tour_Notes","value":"1"},{"name":"R.G.title_name::Guest_Title_Name","value":"1"},{"name":"R.G.first_name::Guest_First_Name","value":"1"},{"name":"R.G.last_name::Guest_Last_Name","value":"1"},{"name":"R.G.pnr::Guest_PNR","value":"1"},{"name":"R.G.adult::Guest_Adult","value":"1"},{"name":"R.G.child_age::Guest_Child_Age","value":"1"},{"name":"R.G.infant_age::Guest_Infant_Age","value":"1"},{"name":"R.A.arr_date::Arr_Date","value":"1"},{"name":"R.A.fast_track::Fast_Track","value":"1"},{"name":"R.FAR.flight_number::Arr_Flight","value":"1"},{"name":"R.A.arr_time::Arr_Time","value":"1"},{"name":"R.FCA.class::Arr_Flight_Class","value":"1"},{"name":"R.A.arr_transport::Arr_Transport","value":"1"},{"name":"R.DDA.name::Arr_Driver","value":"1"},{"name":"R.AV.name::Arr_Vehicle","value":"1"},{"name":"R.A.arr_transport_notes::Arr_and_Transport_Notes","value":"1"},{"name":"R.AL.name::Arr_Pickup","value":"1"},{"name":"R.ADL.name::Arr_Dropoff","value":"1"},{"name":"R.RP.rep_type::Arr_Rep_Type","value":"1"},{"name":"R.A.client_reqs::Arr_Client_Reqs","value":"1"},{"name":"R.A.infant_seats::Arr_Infant_Seats","value":"1"},{"name":"R.A.child_seats::Arr_Child_Seats","value":"1"},{"name":"R.A.booster_seats::Arr_Booster_Seats","value":"1"},{"name":"R.A.vouchers::Arr_Vouchers","value":"1"},{"name":"R.A.cold_towel::Arr_Cold_Towel","value":"1"},{"name":"R.A.bottled_water::Arr_Bottled_Water","value":"1"},{"name":"R.A.luggage_vehicle::Arr_Lagguage_Vehicle","value":"1"},{"name":"R.A.excursion_name::Arr_Excursion_Name","value":"1"},{"name":"R.A.excursion_date::Arr_Excursion_Date","value":"1"},{"name":"R.A.excursion_pickup::Arr_Excursion_Pickup","value":"1"},{"name":"R.A.excursion_confirm_by::Arr_Excursion_Confirm_By","value":"1"},{"name":"R.A.excursion_confirm_date::Arr_Confirm_Date","value":"1"},{"name":"R.A.excursion_guests::Arr_Excursion_Guests","value":"1"},{"name":"R.ADL.name::Hotel_Arr_Dropoff","value":"1"},{"name":"R.RA.room_type::Arr_Room_Type","value":"1"},{"name":"R.A.rooms::Arr_No_of_Rooms","value":"1"},{"name":"R.A.room_no::Arr_Room","value":"1"},{"name":"R.A.room_last_name::Arr_Room_Last_Name","value":"1"},{"name":"R.LC.coast::Zone","value":"1"},{"name":"R.ADL.loc_code::Code","value":"1"},{"name":"R.A.arr_hotel_notes::Arr_Hotel_Notes","value":"1"},{"name":"R.RAR.room_type::Additional_Room_Type","value":"1"},{"name":"R.AR.room_number::Additional_Room_Number","value":"1"},{"name":"R.AR.last_name::Additional_Last_Name","value":"1"},{"name":"R.AT.transport_mode::Additional_Transport_Mode","value":"1"},{"name":"R.ATD.name::Additional_Transport_Supplier","value":"1"},{"name":"R.ATV.name::Additional_Vehicle","value":"1"}]', 9, 0, '2017-06-28 16:34:53');

-- --------------------------------------------------------

--
-- Table structure for table `fll_reps`
--

CREATE TABLE IF NOT EXISTS `fll_reps` (
  `id_rep` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fll_reps`
--

INSERT INTO `fll_reps` (`id_rep`, `name`) VALUES
(1, 'Allan Grannum'),
(2, 'Nikki Grannum'),
(3, 'Rhema Daisley'),
(4, 'Shavanare Oliver'),
(5, 'Autumn Crichlow'),
(6, 'Sandra Cheeseman'),
(7, 'Gloria Garnes'),
(8, 'Janet Armstrong'),
(9, 'Carroll Hooper'),
(10, 'Rosaline Francis'),
(11, 'Susan Parris'),
(12, 'Natalia Nunes'),
(13, 'Qwayne Ifill'),
(14, 'Sylvia Boxhill'),
(15, 'Francisca Deane'),
(16, 'Carolyn Blackman'),
(17, 'Cheryl Sillivan'),
(18, 'Rose Millington'),
(19, 'Marion Clarke'),
(20, 'Berit Jordan'),
(21, 'Jenny Banfield'),
(22, 'Roslyn Sardine'),
(23, 'Shanad Snagg'),
(24, 'Antoinette John');

-- --------------------------------------------------------

--
-- Table structure for table `fll_reptype`
--

CREATE TABLE IF NOT EXISTS `fll_reptype` (
  `id` int(11) NOT NULL,
  `rep_type` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fll_reptype`
--

INSERT INTO `fll_reptype` (`id`, `rep_type`) VALUES
(1, 'Meet & Greet'),
(2, 'Full Rep'),
(3, 'No Rep'),
(4, 'Italian Rep'),
(5, 'German Rep'),
(6, 'Spanish Rep'),
(7, 'French Rep'),
(8, 'Russian Rep'),
(9, 'Intransit'),
(10, 'Telephone Service');

-- --------------------------------------------------------

--
-- Table structure for table `fll_rep_services`
--

CREATE TABLE IF NOT EXISTS `fll_rep_services` (
  `id` int(10) unsigned NOT NULL,
  `service` varchar(80) NOT NULL,
  `section` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fll_rep_services`
--

INSERT INTO `fll_rep_services` (`id`, `service`, `section`) VALUES
(1, 'Meet & Greet Service', 0),
(2, 'Full Rep Service', 0),
(3, 'No Rep Service', 0),
(4, 'Telephone Service', 0),
(5, 'Intrasit Service', 2),
(6, 'Arrival FSFT Service', 1),
(7, 'Departure FSFT Service', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fll_resdrivers`
--

CREATE TABLE IF NOT EXISTS `fll_resdrivers` (
  `id_driver` int(11) NOT NULL,
  `transport` int(11) NOT NULL,
  `vehicle` int(11) NOT NULL,
  `ref_no_sys` varchar(12) NOT NULL,
  `adult` int(11) NOT NULL DEFAULT '0',
  `child` int(11) NOT NULL DEFAULT '0',
  `infant` int(11) NOT NULL DEFAULT '0',
  `tour_operator` int(11) NOT NULL,
  `location` int(11) NOT NULL,
  `pickup_time` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `rate` varchar(3) NOT NULL DEFAULT '25%',
  `flight_time` varchar(255) NOT NULL,
  `flight_no` varchar(255) NOT NULL,
  `infant_seats` int(11) NOT NULL DEFAULT '0',
  `child_seats` int(11) NOT NULL DEFAULT '0',
  `booster_seats` int(11) NOT NULL DEFAULT '0',
  `title_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `transport_date` varchar(255) NOT NULL,
  `res_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fll_reservations`
--

CREATE TABLE IF NOT EXISTS `fll_reservations` (
  `id` int(11) NOT NULL,
  `title_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `pnr` varchar(255) NOT NULL,
  `tour_operator` varchar(255) NOT NULL,
  `operator_code` varchar(255) NOT NULL,
  `tour_ref_no` varchar(255) NOT NULL,
  `adult` int(1) NOT NULL DEFAULT '0',
  `child` int(11) DEFAULT NULL,
  `infant` int(11) DEFAULT NULL,
  `tour_notes` varchar(255) NOT NULL,
  `fast_track` int(1) NOT NULL DEFAULT '0',
  `affiliates` varchar(255) NOT NULL,
  `arr_date` date NOT NULL,
  `arr_time` varchar(255) NOT NULL,
  `arr_flight_no` varchar(255) NOT NULL,
  `flight_class` varchar(255) NOT NULL,
  `arr_transport` varchar(255) NOT NULL,
  `arr_driver` varchar(255) NOT NULL,
  `arr_vehicle` varchar(255) NOT NULL,
  `arr_pickup` varchar(255) NOT NULL,
  `arr_dropoff` varchar(255) NOT NULL,
  `room_type` varchar(255) NOT NULL,
  `rep_type` varchar(255) NOT NULL,
  `client_reqs` varchar(255) NOT NULL,
  `dpt_date` date DEFAULT NULL,
  `dpt_time` varchar(255) DEFAULT NULL,
  `dpt_flight_no` varchar(255) DEFAULT NULL,
  `dpt_transport` varchar(255) DEFAULT NULL,
  `dpt_driver` varchar(255) DEFAULT NULL,
  `dpt_vehicle` varchar(255) DEFAULT NULL,
  `dpt_pickup` varchar(255) DEFAULT NULL,
  `dpt_dropoff` varchar(255) DEFAULT NULL,
  `dpt_pickup_time` varchar(255) DEFAULT NULL,
  `dpt_notes` varchar(255) DEFAULT NULL,
  `creation_date` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  `ref_no_sys` varchar(12) NOT NULL,
  `assigned` int(11) NOT NULL DEFAULT '0',
  `rep` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `arr_transport_notes` varchar(255) NOT NULL,
  `dpt_transport_notes` varchar(255) NOT NULL,
  `arr_hotel_notes` varchar(255) NOT NULL,
  `ftnotify` int(11) NOT NULL DEFAULT '0',
  `infant_seats` int(11) NOT NULL DEFAULT '0',
  `child_seats` int(11) NOT NULL DEFAULT '0',
  `booster_seats` int(11) NOT NULL DEFAULT '0',
  `vouchers` int(11) NOT NULL DEFAULT '0',
  `assignment` int(1) NOT NULL,
  `cold_towel` int(11) DEFAULT NULL,
  `bottled_water` int(11) DEFAULT NULL,
  `dpt_flight_class` int(11) DEFAULT NULL,
  `rooms` varchar(255) DEFAULT NULL,
  `room_no` varchar(255) DEFAULT NULL,
  `date_reconfirmed` datetime DEFAULT NULL,
  `reconf_with` varchar(200) DEFAULT NULL,
  `total_guests` int(3) NOT NULL DEFAULT '0',
  `luggage_vehicle` varchar(9) NOT NULL DEFAULT 'No',
  `fast_ref_no_sys` varchar(12) DEFAULT NULL,
  `payment_type` tinyint(1) NOT NULL DEFAULT '0',
  `payment_amount` decimal(10,2) DEFAULT '0.00',
  `sup_total_amount` decimal(10,2) NOT NULL,
  `dpt_vouchers` int(11) NOT NULL,
  `dpt_cold_towel` int(11) NOT NULL,
  `dpt_bottled_water` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fll_roomtypes`
--

CREATE TABLE IF NOT EXISTS `fll_roomtypes` (
  `id_room` int(11) NOT NULL,
  `id_location` int(11) NOT NULL,
  `room_type` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fll_roomtypes`
--

INSERT INTO `fll_roomtypes` (`id_room`, `id_location`, `room_type`) VALUES
(2, 2, 'Crystal Lagoon Luxury'),
(3, 3, 'Ocean Front Deluxe '),
(20, 5, 'Superior Garden Suite'),
(21, 5, 'Superior Poolside Suite'),
(22, 8, 'Beach View Room'),
(23, 8, 'Beachfront Deluxe Room'),
(24, 8, 'The Business Class Room'),
(25, 8, 'Family Room'),
(26, 8, 'Ocean View Room'),
(27, 8, 'Superior Room'),
(28, 8, 'Carlisle Suite'),
(29, 8, 'Grand Pier One-bedroom Suite'),
(30, 8, 'Pier Junior Suite'),
(31, 10, 'Super Deluxe'),
(32, 10, 'Deluxe'),
(33, 10, 'Superior'),
(34, 10, 'Honeymoon'),
(35, 10, 'Penthouse'),
(36, 11, 'One Bedroom Suite'),
(37, 11, 'Two Bedroom Suite'),
(38, 11, 'Three Bedroom Suite'),
(39, 12, 'Deluxe Studio Apartments'),
(40, 12, 'Deluxe 1 Bedroom'),
(41, 12, 'Deluxe 2 Bedroom'),
(42, 12, '1 Bedroom Ocean View'),
(43, 12, '3 Bedroom Pool Garden'),
(44, 12, '2 Bedroom Standard Apartment'),
(45, 13, 'Deluxe Studio'),
(46, 13, 'Superior Studio'),
(47, 13, 'Junior Suite'),
(48, 13, 'Honeymoon Suite'),
(49, 13, '1 Bedroom Suite'),
(50, 13, 'Deluxe 1 Bedroom Suite'),
(51, 13, '1 Bedroom Penthouse'),
(52, 13, 'Deluxe 2 Bedroom Suite'),
(53, 13, '2 Bedroom Beachfront'),
(54, 14, '1 Bedroom Island View Apartment'),
(55, 14, '2 Bedroom Island View Apartment'),
(56, 14, '2 Bedroom Ocean View Apartment'),
(57, 14, 'Penthouse Apartment'),
(58, 15, 'Cobblers Garden Suite'),
(59, 15, 'Ocean View Suite'),
(60, 15, 'Ocean Front Suite'),
(61, 15, '2 Bedroom Suite'),
(62, 15, 'Camelot at the Great House'),
(63, 15, 'Colleton at the Great House'),
(64, 16, 'Superior Ocean Front Room'),
(65, 16, 'Ocean View Studio'),
(66, 16, 'Ocean Front Room'),
(67, 16, 'Standard Room'),
(68, 16, 'Island View Apartment'),
(69, 17, 'Pool/Garden View'),
(70, 17, 'Ocean View'),
(71, 17, 'Luxury Poolside'),
(72, 17, 'Junior Suite Pool/Garden View'),
(73, 17, 'Luxury Ocean View'),
(74, 17, '1 bedroom Suite - Ocean View'),
(75, 18, 'Deluxe Studio '),
(76, 18, 'Deluxe 1 Bedroom'),
(77, 18, 'Deluxe 2 Bedroom'),
(78, 18, '1 Bedroom Penthouse'),
(79, 18, '1 Bedroom Suite'),
(80, 19, 'Garden Room/Cottage'),
(81, 19, 'Superior or Luxury Junior Suite'),
(82, 19, 'Luxury Cottage/Suite'),
(83, 19, '2 Bedroom Combination'),
(84, 19, 'Luxury Plantation Suite'),
(85, 19, 'Tamarind Villa'),
(86, 19, 'Ixora Villa'),
(87, 20, 'Studio Suites'),
(88, 20, '3 Bedroom Penthouse'),
(89, 21, 'Pool/Garden View'),
(90, 21, 'Ocean View'),
(91, 21, 'Junior Suite Pool/Garden View'),
(92, 21, 'Junior Suite Ocean View'),
(93, 21, '1 bedroom Suite Pool/Garden View'),
(94, 21, '1 bedroom Suite Ocean View'),
(95, 23, '1 Bedroom Pool &amp; Garden View Suite'),
(96, 23, '1 Bedroom Beach Villa Suite'),
(97, 23, '2 Bedroom Suite'),
(98, 55, 'Garden View - Studio'),
(99, 55, 'Family - Studio'),
(100, 55, 'Pool View - Studio'),
(101, 55, 'Ocean View - Studio'),
(102, 55, 'Island View - Studio'),
(103, 55, 'Garden View - 1 Bedroom'),
(106, 24, 'Bay view room - King bed'),
(107, 24, 'Ocean view room - King bed'),
(108, 24, 'Bay view room - 2 double beds'),
(109, 24, 'Ocean view room - 2 double beds'),
(110, 24, 'Ocean View Suite'),
(111, 24, 'Prime Minister Suite with Ocean View'),
(112, 24, 'Bay View Suite'),
(113, 24, 'Panoramic View Executive Room - King bed'),
(114, 24, 'Panoramic View Executive Room - 2 double beds'),
(115, 24, 'Accessible Panoramic View Executive Room'),
(116, 24, 'Accessible Ocean View Room'),
(117, 25, 'Luxury Ocean Suite with private plunge pool'),
(118, 25, 'Garden Jr. Suite with Whirpool'),
(119, 25, 'Ocean deluxe'),
(120, 25, 'Poolside deluxe with partial ocean view'),
(121, 25, 'Garden standard'),
(122, 26, '1 Bedroom - Garden Suite'),
(123, 26, '2 Bedroom - Split Level Garden Suite'),
(124, 26, '2 Bedroom - Garden Suite'),
(125, 26, '2 Bedroom - Ocean Front fort suite'),
(126, 26, '3 Bedroom - Ocean Front fort suite'),
(127, 26, '3 Bedroom - Vineyard suite'),
(128, 27, 'Standard room'),
(129, 27, 'Standard 1 Bedroom'),
(130, 27, 'Superior Room'),
(131, 27, 'Deluxe Room'),
(132, 27, 'Ocean Front Room'),
(133, 27, 'Penthouse Suite'),
(134, 28, 'Spacious Guest Room'),
(135, 28, 'Superior with Balcony'),
(136, 28, 'Suite with Balcony'),
(137, 29, '1 Bedroom Ocean Front Suite'),
(138, 29, '2 Bedroom Ocean Front Suite'),
(139, 29, '2 Bedroom Bay View Suite'),
(141, 30, 'Studio'),
(142, 30, ' 1 Bedroom Apartment'),
(145, 4, 'Island View Room'),
(148, 4, 'Ocean View Room'),
(149, 4, 'Ocean Front Room'),
(150, 4, 'Deluxe Ocean View Suite'),
(151, 4, 'Ocean View Penthouse Suite'),
(152, 4, 'Deluxe Ocean View Junior Suite'),
(154, 4, 'Island View Junior Suite'),
(155, 4, 'Pool View Room'),
(156, 4, 'Pool View Suites (2 Bedroom)'),
(159, 4, 'State Room'),
(160, 4, '2 Bedroom Ocean Front Luxury Suite'),
(161, 32, 'Pool Deck Studio'),
(162, 32, 'Ocean Front Studio'),
(163, 32, '1 Bedroom Ocean Front'),
(164, 32, '2 Bedroom Ocean Front'),
(165, 32, 'Superior Ocean Front Studio'),
(166, 32, 'Deluxe Ocean Front Studio'),
(167, 32, '1 Bedroom Island View'),
(168, 32, 'Ocean Front Penthouse Suite'),
(169, 34, 'Orchid Room'),
(170, 34, 'Ocean Room'),
(171, 34, 'Luxury Ocean Room'),
(172, 34, 'Luxury Orchid Suite'),
(173, 34, 'Dolphin Suite'),
(174, 34, 'Luxury Dolphin Suite'),
(175, 34, 'Penthouse'),
(176, 34, 'Sandy Lane Suite'),
(177, 34, 'The Villa at Sandy Lane'),
(178, 35, 'Plantation Room'),
(179, 35, 'Deluxe Courtyard Room'),
(180, 35, 'Deluxe Pool Access Room'),
(181, 36, 'Standard Room'),
(182, 36, 'Pool / Garden View'),
(183, 36, 'Ocean View'),
(184, 36, 'Oceanfront Superior Room'),
(185, 36, 'Two Bedroom Apartment'),
(186, 37, 'Bungalow'),
(187, 37, 'Townhouse'),
(188, 37, 'Villa'),
(189, 38, 'Two Bedroom Ocean front Suite'),
(190, 38, 'One Bedroom Ocean Front Suite'),
(191, 38, 'Ocean Studio'),
(192, 38, 'Partial Ocean View Room'),
(193, 38, 'Partial Ocean Veiw Loft'),
(194, 38, 'Ocean View Suite'),
(196, 39, 'Studio'),
(197, 39, 'One Bedroom Suite'),
(198, 39, 'Two Bedroom Suite'),
(199, 39, 'Penthouse Suite'),
(200, 40, 'Superior Studio'),
(201, 40, 'Junior Suite'),
(202, 40, 'One Bedroom Suite'),
(203, 41, 'OceanView'),
(204, 41, 'Garden &amp; Pool View Rooms'),
(205, 41, 'Luxury Suites'),
(206, 41, 'Duplex Suites'),
(207, 42, 'One Bedroom Suite'),
(208, 42, 'Two Bedroom Suite'),
(209, 42, 'The Penthouse'),
(210, 3, 'Pool/ Garden View'),
(211, 3, 'Ocean Front'),
(212, 3, 'Ocean Front with Sleeper Chair'),
(213, 3, 'Junior Suite - Pool / Garden View'),
(214, 3, 'Junior Suite - Ocean View'),
(215, 3, 'One Bedroom Suite - Pool/ Garden View'),
(216, 3, 'One Bedroom Suite - Ocean View'),
(217, 3, 'One Bedroom Suite - Ocean View'),
(218, 43, 'Garden View'),
(219, 43, 'Ocean Loft'),
(220, 43, 'Superior Ocean Loft'),
(221, 43, 'Superior Garden View'),
(222, 43, '1 Bedroom Garden View Suite'),
(223, 43, '1 Bedroom Oceanfront Suite'),
(224, 44, 'Junior Garden View'),
(225, 44, 'One Bedroom Ocean View'),
(226, 44, 'One Bedroom Ocean View with Plunge Pool'),
(227, 44, 'One Bedroom Ocean View with 28&#039; Pool'),
(228, 44, 'Two Bedroom Ocean View Penthouse'),
(229, 44, 'Three Bedroom OceanView Penthouse'),
(230, 45, 'Pool / Garden View One Bedroom Suite'),
(231, 45, 'Ocean View'),
(232, 45, 'Junior Suite Pool / Garden View'),
(233, 45, 'Ocean View One Bedroom Suite'),
(234, 46, 'Garden Room'),
(235, 46, 'One Bedroom Suite'),
(236, 46, 'Two Bedroom Suite'),
(237, 46, 'Tree Top Suite'),
(238, 46, 'The Beach House'),
(239, 47, 'Standard Rooms'),
(240, 47, 'Superior Rooms'),
(241, 47, 'Pool View Rooms'),
(242, 47, 'Deluxe Rooms'),
(243, 48, 'The Hemingway'),
(244, 48, 'The Hibiscus'),
(245, 48, 'The Hummingbird'),
(246, 48, 'Ocean View Suite'),
(247, 48, 'Pool and Garden View Suites'),
(248, 49, 'Junior Suite Pool / Garden View'),
(249, 49, 'Junior Suite Ocean View'),
(250, 49, 'Junior Suite Deluxe OceanView '),
(251, 49, 'Junior Suite Ocean Front'),
(252, 49, 'One Bedroom Suite Pool / Garden View'),
(253, 49, 'One Bedroom Suite Ocean View'),
(254, 50, 'Deluxe Oceanfront'),
(255, 50, 'Ocean Front Duplex'),
(256, 50, 'Oceanfront Room'),
(257, 50, 'Duplex Island View'),
(258, 50, 'Island View'),
(259, 50, 'Spa Rooms'),
(260, 51, 'Standard Hotel Room'),
(261, 51, 'Superior Hotel Room'),
(262, 51, 'Junior One Bedroom'),
(263, 51, 'Deluxe One Bedroom '),
(264, 52, 'Superior Studio'),
(265, 52, 'Deluxe Studio'),
(266, 52, 'Two Bedroom Penthouse Suite'),
(267, 52, 'Deluxe Ground Floor Two Bedroom Suite'),
(268, 52, 'Deluxe Top floor Two Bedroom Suite'),
(270, 0, 'Testing Room Type');

-- --------------------------------------------------------

--
-- Table structure for table `fll_room_loc`
--

CREATE TABLE IF NOT EXISTS `fll_room_loc` (
  `id_room_loc` int(11) NOT NULL,
  `id_location` int(11) NOT NULL,
  `id_roomtype` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fll_room_loc`
--

INSERT INTO `fll_room_loc` (`id_room_loc`, `id_location`, `id_roomtype`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 5, 20),
(5, 5, 21),
(6, 8, 22),
(7, 8, 23),
(8, 8, 24),
(9, 8, 25),
(10, 8, 26),
(11, 8, 27),
(12, 8, 28),
(13, 8, 29),
(14, 8, 30),
(15, 10, 31),
(16, 10, 32),
(17, 10, 33),
(18, 10, 34),
(19, 10, 35),
(20, 11, 36),
(21, 11, 37),
(22, 11, 38),
(23, 12, 39),
(24, 12, 40),
(25, 12, 41),
(26, 12, 42),
(27, 12, 43),
(28, 12, 44),
(29, 13, 45),
(30, 13, 46),
(31, 13, 47),
(32, 13, 48),
(33, 13, 49),
(34, 13, 50),
(35, 13, 51),
(36, 13, 52),
(37, 13, 53),
(38, 14, 54),
(39, 14, 55),
(40, 14, 56),
(41, 14, 57),
(42, 15, 58),
(43, 15, 59),
(44, 15, 60),
(45, 15, 61),
(46, 15, 62),
(47, 15, 63),
(48, 16, 64),
(49, 16, 65),
(50, 16, 66),
(51, 16, 67),
(52, 16, 68),
(53, 17, 69),
(54, 17, 70),
(55, 17, 71),
(56, 17, 72),
(57, 17, 73),
(58, 17, 74),
(59, 18, 75),
(60, 18, 76),
(61, 18, 77),
(62, 18, 78),
(63, 18, 79),
(64, 19, 80),
(65, 19, 81),
(66, 19, 82),
(67, 19, 83),
(68, 19, 84),
(69, 19, 85),
(70, 19, 86),
(71, 20, 87),
(72, 20, 88),
(73, 21, 89),
(74, 21, 90),
(75, 21, 91),
(76, 21, 92),
(77, 21, 93),
(78, 21, 94),
(79, 23, 95),
(80, 23, 96),
(81, 23, 97),
(82, 55, 98),
(83, 55, 99),
(84, 55, 100),
(85, 55, 101),
(86, 55, 102),
(87, 55, 103),
(88, 1, 104),
(90, 24, 106),
(91, 24, 107),
(92, 24, 108),
(93, 24, 109),
(94, 24, 110),
(95, 24, 111),
(96, 24, 112),
(97, 24, 113),
(98, 24, 114),
(99, 24, 115),
(100, 24, 116),
(101, 25, 117),
(102, 25, 118),
(103, 25, 119),
(104, 25, 120),
(105, 25, 121),
(106, 26, 122),
(107, 26, 123),
(108, 26, 124),
(109, 26, 125),
(110, 26, 126),
(111, 26, 127),
(112, 27, 128),
(113, 27, 129),
(114, 27, 130),
(115, 27, 131),
(116, 27, 132),
(117, 27, 133),
(118, 28, 134),
(119, 28, 135),
(120, 28, 136),
(121, 29, 137),
(122, 29, 138),
(123, 29, 139),
(124, 30, 141),
(125, 30, 142),
(126, 4, 145),
(127, 4, 148),
(128, 4, 149),
(129, 4, 150),
(130, 4, 151),
(131, 4, 152),
(132, 4, 154),
(133, 4, 155),
(134, 4, 156),
(135, 4, 159),
(136, 4, 160),
(137, 32, 161),
(138, 32, 162),
(139, 32, 163),
(140, 32, 164),
(141, 32, 165),
(142, 32, 166),
(143, 32, 167),
(144, 32, 168),
(145, 34, 169),
(146, 34, 170),
(147, 34, 171),
(148, 34, 172),
(149, 34, 173),
(150, 34, 174),
(151, 34, 175),
(152, 34, 176),
(153, 34, 177),
(154, 35, 178),
(155, 35, 179),
(156, 35, 180),
(157, 36, 181),
(158, 36, 182),
(159, 36, 183),
(160, 36, 184),
(161, 36, 185),
(162, 37, 186),
(163, 37, 187),
(164, 37, 188),
(165, 38, 189),
(166, 38, 190),
(167, 38, 191),
(168, 38, 192),
(169, 38, 193),
(170, 38, 194),
(171, 39, 196),
(172, 39, 197),
(173, 39, 198),
(174, 39, 199),
(175, 40, 200),
(176, 40, 201),
(177, 40, 202),
(178, 41, 203),
(179, 41, 204),
(180, 41, 205),
(181, 41, 206),
(182, 42, 207),
(183, 42, 208),
(184, 42, 209),
(185, 3, 210),
(186, 3, 211),
(187, 3, 212),
(188, 3, 213),
(189, 3, 214),
(190, 3, 215),
(191, 3, 216),
(192, 3, 217),
(193, 43, 218),
(194, 43, 219),
(195, 43, 220),
(196, 43, 221),
(197, 43, 222),
(198, 43, 223),
(199, 44, 224),
(200, 44, 225),
(201, 44, 226),
(202, 44, 227),
(203, 44, 228),
(204, 44, 229),
(205, 45, 230),
(206, 45, 231),
(207, 45, 232),
(208, 45, 233),
(209, 46, 234),
(210, 46, 235),
(211, 46, 236),
(212, 46, 237),
(213, 46, 238),
(214, 47, 239),
(215, 47, 240),
(216, 47, 241),
(217, 47, 242),
(218, 48, 243),
(219, 48, 244),
(220, 48, 245),
(221, 48, 246),
(222, 48, 247),
(223, 49, 248),
(224, 49, 249),
(225, 49, 250),
(226, 49, 251),
(227, 49, 252),
(228, 49, 253),
(229, 50, 254),
(230, 50, 255),
(231, 50, 256),
(232, 50, 257),
(233, 50, 258),
(234, 50, 259),
(235, 51, 260),
(236, 51, 261),
(237, 51, 262),
(238, 51, 263),
(239, 52, 264),
(240, 52, 265),
(241, 52, 266),
(242, 52, 267),
(243, 52, 268),
(251, 1, 105);

-- --------------------------------------------------------

--
-- Table structure for table `fll_touroperator`
--

CREATE TABLE IF NOT EXISTS `fll_touroperator` (
  `id` int(11) NOT NULL,
  `tour_operator` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=latin1 COMMENT='Tour Operators table';

--
-- Dumping data for table `fll_touroperator`
--

INSERT INTO `fll_touroperator` (`id`, `tour_operator`) VALUES
(1, 'A & Kent'),
(2, 'Abreu'),
(3, 'Agaxtur BR'),
(4, 'Alidays'),
(5, 'Aspire'),
(6, 'Aviva Group'),
(7, 'Azure'),
(8, 'British Airways'),
(9, 'BAHolidays'),
(10, 'Bailey Robinson'),
(11, 'BeCuriou'),
(12, 'Berge & Meer'),
(13, 'Best Tours Italia'),
(14, 'Blue Sky Luxury'),
(15, 'Bookit'),
(16, 'Caribbean Dest'),
(17, 'Caribbean Island'),
(18, 'CTS Horizons'),
(19, 'CV Travel'),
(20, 'Caribtours'),
(21, 'City Discovery'),
(22, 'Classic Collection'),
(23, 'Classic Resorts'),
(24, 'Colletts Resorts'),
(25, 'Cox & Kings'),
(26, 'Culsen Travel'),
(27, 'Curitiba Tours'),
(28, 'Designer Tours BR'),
(29, 'Destinology'),
(30, 'Diamond Air'),
(31, 'Direct Bookings'),
(32, 'EFR Travel'),
(33, 'Eden Collection'),
(34, 'Escapade Caribbean'),
(35, 'Eso Travel'),
(36, 'Eurasia HWT'),
(37, 'Expressions'),
(38, 'Exsus Travel'),
(39, 'Fischer'),
(40, 'Friendship Travel'),
(41, 'Global Travel/Dest 2'),
(42, 'Gold Medal'),
(43, 'Golden Caribbean'),
(44, 'Harlequin'),
(45, 'Hays Travel'),
(46, 'Holiday Place'),
(47, 'Holiday Services'),
(48, 'HolidayBeds (Ireland)'),
(49, 'Individual Holidays'),
(50, 'Intimate Caribbean Holidays'),
(51, 'Key2Holidays'),
(52, 'Kuoni Zurich'),
(53, 'Kuoni France'),
(54, 'Kuoni Netherlands'),
(55, 'Kuoni Spain (Madrid)'),
(56, 'Kuoni UK'),
(57, 'Kuoni UK (WCC)'),
(58, 'La Fabbrica'),
(59, 'Latino Travel'),
(60, 'Latitude'),
(61, 'Lusso Travel'),
(62, 'Luxury Holiday Tours'),
(63, 'Luxurytrips'),
(64, 'MLT Vacations'),
(65, 'MotMot Travel'),
(66, 'Mundy Cruising'),
(67, 'Naar Tours'),
(68, 'Noks Film'),
(69, 'North American Travel'),
(70, 'Online Travel'),
(71, 'Only Exclusive'),
(72, 'Owners Syndicate'),
(73, 'Pelikan Rejser'),
(74, 'Pink Pearl'),
(75, 'Pleasant Holidays'),
(76, 'Presona Travel'),
(77, 'Prestbury WW'),
(78, 'Pure Luxury'),
(79, 'Quadrante'),
(80, 'Real Holidays'),
(81, 'Rockwell'),
(82, 'St James Travel & Tours'),
(83, 'Scott Dunn'),
(84, 'Seasons in Style'),
(85, 'Simpson Exclusive'),
(86, 'Slattery Travel'),
(87, 'Sunburst Vacations'),
(88, 'Sunlinc'),
(89, 'Sunmaster'),
(90, 'Sunny Holidays'),
(91, 'Sunset Travel Ltd'),
(92, 'Sunway Holidays'),
(93, 'Sunwing'),
(94, 'TC Germany'),
(95, 'TC Group'),
(96, 'TC Signature'),
(97, 'TC Sport'),
(98, 'Team America'),
(99, 'Thomas WW'),
(100, 'Titan Travel Ltd'),
(101, 'Tourist Club'),
(102, 'Trailfinders'),
(103, 'Travco LLP'),
(104, 'Travel 2/4'),
(105, 'Travel City'),
(106, 'Travel Factory'),
(107, 'Travel Trend'),
(108, 'Travel Value'),
(109, 'Travel2'),
(110, 'Tropic Breeze'),
(111, 'Tropic Sky'),
(112, 'Tropical Dest'),
(113, 'Tropical Locations'),
(114, 'Tropical Tours'),
(115, 'Tropicalement'),
(116, 'Turquoise Holidays'),
(117, 'Travel Counsellors'),
(118, 'Ultimate Travel'),
(119, 'Value Added Travel'),
(120, 'Viator'),
(121, 'Vicino E Lontano'),
(122, 'Voyageurs Du Monde'),
(123, 'W & O'),
(124, 'WT Vacations'),
(125, 'WeTravel2'),
(126, 'Wedd in Paradise'),
(127, 'West Jet'),
(128, 'White sand weddings'),
(129, 'Wilderness Explorers'),
(130, 'Virtuoso'),
(131, 'ITC'),
(132, 'Carrier'),
(133, 'World Travel Holdings'),
(134, 'Island Villas'),
(135, 'Blue Anglia'),
(136, 'Altman'),
(137, 'London Life & Casualty'),
(138, 'London Life IRC'),
(139, 'Soutterham Bank'),
(140, 'Accra Beach Hotel'),
(141, 'B Away'),
(142, 'Cruiseline - Star Clippers');

-- --------------------------------------------------------

--
-- Table structure for table `fll_transfer`
--

CREATE TABLE IF NOT EXISTS `fll_transfer` (
  `id` int(11) NOT NULL,
  `ref_no_sys` varchar(255) NOT NULL,
  `pickup` int(11) NOT NULL,
  `pickup_date` date NOT NULL,
  `pickup_time` varchar(255) NOT NULL,
  `dropoff` int(11) NOT NULL,
  `transport` varchar(255) NOT NULL,
  `vehicle` int(11) NOT NULL,
  `driver` int(11) NOT NULL,
  `transfer_notes` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fll_transfer`
--

INSERT INTO `fll_transfer` (`id`, `ref_no_sys`, `pickup`, `pickup_date`, `pickup_time`, `dropoff`, `transport`, `vehicle`, `driver`, `transfer_notes`) VALUES
(9, 'FLL-79SWJNDJ', 0, '2016-09-09', '16:15', 56, '', 25, 10, 'Transfer &amp; Transport notes'),
(10, 'FLL-W9Z8BT9V', 0, '0000-00-00', '12:35', 0, '', 0, 0, ''),
(11, 'FLL-8B3MPJWW', 0, '0000-00-00', '13:20', 0, '', 101, 61, 'Transfer &amp; Transport notes'),
(12, 'FLL-TJ4V5Q2W', 21, '2017-04-10', '12:00', 49, 'Private Car', 0, 0, ''),
(13, 'FLL-38BTM48H', 10, '2017-06-29', '11:55', 2, 'Mercedes/BMW', 56, 29, 'Inter Hotel transfer notes'),
(14, 'FLL-TFB26QDX', 20, '2017-06-13', '21:00', 34, 'Coach (BT)', 61, 32, 'inter hotel transfer notes test'),
(15, 'FLL-DPHXV7G5', 0, '0000-00-00', '09:00', 0, '', 0, 0, ''),
(16, 'FLL-P8P7HW4V', 2, '2017-06-17', '00:00', 4, 'Mercedes', 73, 41, 'knfadlkfjdslkjf ');

-- --------------------------------------------------------

--
-- Table structure for table `fll_transport`
--

CREATE TABLE IF NOT EXISTS `fll_transport` (
  `id_transport` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fll_transport`
--

INSERT INTO `fll_transport` (`id_transport`, `name`) VALUES
(4, 'David Abraham'),
(6, 'Ronald Adams'),
(8, 'Ash Investment Inc'),
(10, 'Anthony Adams'),
(11, 'Barbados Ruje Wonder Tours'),
(12, 'Carson Bailey'),
(13, 'Grantley Beckles'),
(14, 'Ian Tyrone Belgrave'),
(15, 'Tyrone Best'),
(16, 'Hugh Blackman'),
(17, 'Anderson Brandford'),
(18, 'Adrian Brathwaite'),
(19, 'Derek Brathwaite'),
(20, 'Fabian Brathwaite'),
(21, 'Keisha Broomes'),
(22, 'Ronald Browne'),
(23, 'Cain &amp; Son Tours'),
(24, 'Kenneth Callender'),
(25, 'Winfield Catwell'),
(26, 'Keith Chase'),
(27, 'Anthony Clarke'),
(28, 'Jamar Clarke'),
(29, 'Courtney Corbin'),
(30, 'Cummins Freight Service'),
(31, 'D &amp; N Rentals and Taxi Service Inc'),
(32, 'Victor Drakes'),
(33, 'William Drayton'),
(34, 'Robert Duke'),
(35, 'Winston Edgehill'),
(36, 'Yvette Edgehill'),
(37, 'Grantley Forde'),
(38, 'Joan Gibson'),
(39, 'Stafford Gooding'),
(40, 'Goodwill Transport Inc'),
(41, 'Colin Harvey'),
(42, 'Emmerson Herbert'),
(43, 'Junior Harewood'),
(44, 'Ron Hinds'),
(45, 'Charles Holders'),
(46, 'Michael Holder'),
(47, 'Michael Hunte'),
(48, 'Esline Johnson'),
(49, 'Elvis King'),
(50, 'Eric Lashley'),
(51, 'Elvene Morris'),
(52, 'Victor Murray'),
(53, 'Paradise Limousine Service Inc'),
(54, 'Andre Phillips'),
(55, 'John Prescott'),
(56, 'Quintours Taxi Inc / Johnson'),
(57, 'Rehoboth Transport Service /  Caleb Drayton'),
(58, 'Trevor Rochester'),
(59, 'Lionel Russell'),
(60, 'Hamilton Scantlebury'),
(61, 'Adrian Snagg'),
(62, 'Jason Springer'),
(63, 'St. James Taxi and Services'),
(64, 'Trevor Stuart'),
(65, 'Edwin Tappin'),
(66, 'Trevor Toppin'),
(67, 'Sheryl-Ann Tudor'),
(68, 'Vere King Transport Services Ltd'),
(69, 'Curtis Walker'),
(70, 'West Coast Taxi Service'),
(71, 'Sherwin Williams'),
(72, 'Neville Wiltshire'),
(73, 'Dionna Wong'),
(74, 'Barry Durrant'),
(76, 'Mickey Mouse');

-- --------------------------------------------------------

--
-- Table structure for table `fll_transporttype`
--

CREATE TABLE IF NOT EXISTS `fll_transporttype` (
  `id` int(11) NOT NULL,
  `transport_type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fll_transporttype`
--

INSERT INTO `fll_transporttype` (`id`, `transport_type`, `order`) VALUES
(1, 'Group Transfers', 1),
(2, 'Limousine', 2),
(3, 'Private Car', 3),
(4, 'Coach (BT)', 4),
(5, 'Mercedes/BMW', 5),
(6, 'Mercedes', 6),
(7, 'Private Van', 7),
(8, 'Hotel transfer', 8),
(9, 'Hydrolic Vehicle', 9),
(10, 'No Transfer', 11),
(11, 'Own transport', 12),
(12, 'SUV\n', 10),
(18, 'Testing Transport Mode', 999),
(19, 'Test Mode Tport', 999);

-- --------------------------------------------------------

--
-- Table structure for table `fll_vehicles`
--

CREATE TABLE IF NOT EXISTS `fll_vehicles` (
  `id_vehicle` int(11) NOT NULL,
  `id_transport` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fll_vehicles`
--

INSERT INTO `fll_vehicles` (`id_vehicle`, `id_transport`, `name`) VALUES
(16, 4, 'Z1911'),
(18, 6, 'ZM316'),
(20, 8, 'Z1149'),
(21, 8, 'Z1229'),
(23, 8, 'ZM755'),
(25, 10, 'Z1081'),
(26, 11, 'ZM321'),
(27, 12, 'Z1988'),
(28, 13, 'HL19'),
(31, 14, 'ZM524'),
(32, 15, 'ZM140'),
(33, 15, 'ZM326'),
(34, 16, 'Z229'),
(35, 17, 'ZM744'),
(36, 18, 'ZM389'),
(37, 19, 'Z17'),
(38, 19, 'Z1890'),
(39, 19, 'Z543'),
(40, 19, 'Z569'),
(41, 19, 'ZM311'),
(42, 19, 'ZM796'),
(43, 19, 'ZM797'),
(44, 19, 'BT95'),
(45, 20, 'Z1356'),
(46, 21, 'Z1702'),
(47, 22, 'ZM280'),
(48, 23, 'BT33'),
(49, 23, 'BT96'),
(50, 24, 'Z1003'),
(51, 25, 'HL28'),
(52, 25, 'HL29'),
(53, 26, 'ZM440'),
(54, 27, 'ZM802'),
(55, 28, 'Z923'),
(56, 29, 'ZM683'),
(57, 29, 'Z624'),
(58, 30, 'XA460'),
(59, 31, 'ZM255'),
(60, 31, 'ZM256'),
(61, 32, 'Z286'),
(62, 33, 'BT105'),
(63, 33, 'BT78'),
(64, 34, 'ZM15'),
(65, 35, 'Z1200'),
(66, 36, 'ZM426'),
(67, 37, 'Z564'),
(68, 37, 'Z964'),
(69, 38, 'Z346'),
(70, 39, 'ZM90'),
(71, 40, 'Z59'),
(72, 40, 'Z772'),
(73, 41, 'ZM125'),
(74, 42, 'Z1098'),
(75, 42, 'Z576'),
(76, 43, 'Z582'),
(77, 43, 'Z1252'),
(78, 44, 'Z177'),
(79, 45, 'Z1091'),
(80, 46, 'ZM595'),
(81, 47, 'ZM687'),
(82, 48, 'BT41'),
(83, 49, 'ZM390'),
(84, 49, 'ZM290'),
(85, 49, 'Z916'),
(86, 49, 'Z871'),
(87, 50, 'ZM575'),
(88, 51, 'ZM512'),
(89, 52, 'Z868'),
(90, 53, 'ZM41'),
(91, 53, 'HL23'),
(92, 53, 'HL62'),
(93, 54, 'Z1986'),
(94, 55, 'Z1585'),
(95, 56, 'ZM609'),
(96, 57, 'ZM351'),
(97, 57, 'ZM57'),
(98, 58, 'HL58'),
(99, 59, 'Z926'),
(100, 60, 'Z1420'),
(101, 61, 'Z43'),
(103, 63, 'ZM403'),
(104, 64, 'Z412'),
(105, 65, 'ZM338'),
(106, 66, 'Z997'),
(107, 67, 'Z45'),
(108, 68, 'BT56'),
(109, 69, 'BT17'),
(110, 70, 'Z982'),
(111, 70, 'Z1554'),
(112, 71, 'Z1210'),
(113, 72, 'BT9'),
(114, 72, 'BT26'),
(115, 73, 'Z441'),
(116, 74, 'ZM684'),
(117, 76, 'TEST123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fll_activity`
--
ALTER TABLE `fll_activity`
  ADD PRIMARY KEY (`id_activity`);

--
-- Indexes for table `fll_additional_transfer`
--
ALTER TABLE `fll_additional_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fll_arrivals`
--
ALTER TABLE `fll_arrivals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fll_arrivals_drivers`
--
ALTER TABLE `fll_arrivals_drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fll_arrivals_rooms`
--
ALTER TABLE `fll_arrivals_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fll_arrivals_transports`
--
ALTER TABLE `fll_arrivals_transports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fll_bugs`
--
ALTER TABLE `fll_bugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fll_clientreqs`
--
ALTER TABLE `fll_clientreqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fll_departures`
--
ALTER TABLE `fll_departures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fll_departures_old`
--
ALTER TABLE `fll_departures_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fll_flightclass`
--
ALTER TABLE `fll_flightclass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fll_flights`
--
ALTER TABLE `fll_flights`
  ADD PRIMARY KEY (`id_flight`);

--
-- Indexes for table `fll_flighttime`
--
ALTER TABLE `fll_flighttime`
  ADD PRIMARY KEY (`id_fltime`);

--
-- Indexes for table `fll_fsft_touroperator`
--
ALTER TABLE `fll_fsft_touroperator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fll_guest`
--
ALTER TABLE `fll_guest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fll_location`
--
ALTER TABLE `fll_location`
  ADD PRIMARY KEY (`id_location`);

--
-- Indexes for table `fll_loc_coast`
--
ALTER TABLE `fll_loc_coast`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fll_luggage_vehicle`
--
ALTER TABLE `fll_luggage_vehicle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fll_payment_type`
--
ALTER TABLE `fll_payment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fll_reports`
--
ALTER TABLE `fll_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fll_reps`
--
ALTER TABLE `fll_reps`
  ADD PRIMARY KEY (`id_rep`);

--
-- Indexes for table `fll_reptype`
--
ALTER TABLE `fll_reptype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fll_rep_services`
--
ALTER TABLE `fll_rep_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fll_resdrivers`
--
ALTER TABLE `fll_resdrivers`
  ADD PRIMARY KEY (`id_driver`);

--
-- Indexes for table `fll_reservations`
--
ALTER TABLE `fll_reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fll_roomtypes`
--
ALTER TABLE `fll_roomtypes`
  ADD PRIMARY KEY (`id_room`);

--
-- Indexes for table `fll_room_loc`
--
ALTER TABLE `fll_room_loc`
  ADD PRIMARY KEY (`id_room_loc`);

--
-- Indexes for table `fll_touroperator`
--
ALTER TABLE `fll_touroperator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fll_transfer`
--
ALTER TABLE `fll_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fll_transport`
--
ALTER TABLE `fll_transport`
  ADD PRIMARY KEY (`id_transport`);

--
-- Indexes for table `fll_transporttype`
--
ALTER TABLE `fll_transporttype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fll_vehicles`
--
ALTER TABLE `fll_vehicles`
  ADD PRIMARY KEY (`id_vehicle`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fll_activity`
--
ALTER TABLE `fll_activity`
  MODIFY `id_activity` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=275;
--
-- AUTO_INCREMENT for table `fll_additional_transfer`
--
ALTER TABLE `fll_additional_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fll_arrivals`
--
ALTER TABLE `fll_arrivals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fll_arrivals_drivers`
--
ALTER TABLE `fll_arrivals_drivers`
  MODIFY `id` int(9) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fll_arrivals_rooms`
--
ALTER TABLE `fll_arrivals_rooms`
  MODIFY `id` int(9) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fll_arrivals_transports`
--
ALTER TABLE `fll_arrivals_transports`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fll_bugs`
--
ALTER TABLE `fll_bugs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `fll_clientreqs`
--
ALTER TABLE `fll_clientreqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `fll_departures`
--
ALTER TABLE `fll_departures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fll_departures_old`
--
ALTER TABLE `fll_departures_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fll_flightclass`
--
ALTER TABLE `fll_flightclass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `fll_flights`
--
ALTER TABLE `fll_flights`
  MODIFY `id_flight` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `fll_flighttime`
--
ALTER TABLE `fll_flighttime`
  MODIFY `id_fltime` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `fll_fsft_touroperator`
--
ALTER TABLE `fll_fsft_touroperator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=147;
--
-- AUTO_INCREMENT for table `fll_guest`
--
ALTER TABLE `fll_guest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fll_location`
--
ALTER TABLE `fll_location`
  MODIFY `id_location` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `fll_loc_coast`
--
ALTER TABLE `fll_loc_coast`
  MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `fll_luggage_vehicle`
--
ALTER TABLE `fll_luggage_vehicle`
  MODIFY `id` int(2) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `fll_payment_type`
--
ALTER TABLE `fll_payment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `fll_reports`
--
ALTER TABLE `fll_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `fll_reps`
--
ALTER TABLE `fll_reps`
  MODIFY `id_rep` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `fll_reptype`
--
ALTER TABLE `fll_reptype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `fll_rep_services`
--
ALTER TABLE `fll_rep_services`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `fll_resdrivers`
--
ALTER TABLE `fll_resdrivers`
  MODIFY `id_driver` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fll_reservations`
--
ALTER TABLE `fll_reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fll_roomtypes`
--
ALTER TABLE `fll_roomtypes`
  MODIFY `id_room` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=271;
--
-- AUTO_INCREMENT for table `fll_room_loc`
--
ALTER TABLE `fll_room_loc`
  MODIFY `id_room_loc` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=252;
--
-- AUTO_INCREMENT for table `fll_touroperator`
--
ALTER TABLE `fll_touroperator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=143;
--
-- AUTO_INCREMENT for table `fll_transfer`
--
ALTER TABLE `fll_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `fll_transport`
--
ALTER TABLE `fll_transport`
  MODIFY `id_transport` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `fll_transporttype`
--
ALTER TABLE `fll_transporttype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `fll_vehicles`
--
ALTER TABLE `fll_vehicles`
  MODIFY `id_vehicle` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=118;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
