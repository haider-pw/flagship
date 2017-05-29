-- phpMyAdmin SQL Dump
-- version 4.3.8deb0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 12, 2017 at 01:30 AM
-- Server version: 5.6.28-0ubuntu0.15.04.1-log
-- PHP Version: 5.6.4-4ubuntu6.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cocoa_gnd`
--

-- --------------------------------------------------------

--
-- Table structure for table `gnd_activity`
--

CREATE TABLE IF NOT EXISTS `gnd_activity` (
  `id_activity` int(11) NOT NULL,
  `log_user` varchar(255) NOT NULL,
  `user_action` varchar(255) NOT NULL,
  `log_time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gnd_arrivals`
--

CREATE TABLE IF NOT EXISTS `gnd_arrivals` (
  `id` int(11) NOT NULL,
  `ref_no_sys` varchar(12) NOT NULL,
  `arr_date` date NOT NULL,
  `arr_time` time NOT NULL,
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
  `arr_hotel_notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gnd_bugs`
--

CREATE TABLE IF NOT EXISTS `gnd_bugs` (
  `id` int(11) NOT NULL,
  `bug_title` varchar(255) NOT NULL,
  `page` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `reporter` varchar(255) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gnd_departures`
--

CREATE TABLE IF NOT EXISTS `gnd_departures` (
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
-- Table structure for table `gnd_flightclass`
--

CREATE TABLE IF NOT EXISTS `gnd_flightclass` (
  `id` int(11) NOT NULL,
  `class` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gnd_flightclass`
--

INSERT INTO `gnd_flightclass` (`id`, `class`) VALUES
(9, 'World Traveller Plus'),
(10, 'World Traveler'),
(11, 'Economy'),
(12, 'Premium Economy'),
(13, 'Upper Class'),
(14, 'Business Class'),
(15, 'Club Class'),
(16, 'First Class');

-- --------------------------------------------------------

--
-- Table structure for table `gnd_flights`
--

CREATE TABLE IF NOT EXISTS `gnd_flights` (
  `id_flight` int(11) NOT NULL,
  `flight_number` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gnd_flights`
--

INSERT INTO `gnd_flights` (`id_flight`, `flight_number`) VALUES
(88, 'AA1546'),
(89, 'AA982'),
(90, 'DL725'),
(91, 'DL796'),
(92, 'B6949'),
(93, 'B6950'),
(94, 'AC1786'),
(95, 'AC1787'),
(96, 'DE2254'),
(97, 'BW438'),
(98, 'BW439'),
(99, 'BW441'),
(100, 'BW440'),
(101, 'BA2159'),
(102, 'BA2158'),
(103, 'VS89'),
(104, 'VS90'),
(105, 'LI727'),
(106, 'LI772'),
(107, 'LI523'),
(108, 'LI523'),
(109, 'SVG190'),
(110, '07:45');

-- --------------------------------------------------------

--
-- Table structure for table `gnd_flighttime`
--

CREATE TABLE IF NOT EXISTS `gnd_flighttime` (
  `id_fltime` int(11) NOT NULL,
  `id_flight` int(11) NOT NULL,
  `flight_time` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gnd_flighttime`
--

INSERT INTO `gnd_flighttime` (`id_fltime`, `id_flight`, `flight_time`) VALUES
(92, 62, '20:35'),
(93, 63, '8:25'),
(94, 64, '17:20'),
(95, 65, '11:55'),
(96, 65, '12:20'),
(97, 66, '13:05'),
(98, 66, '13:30'),
(99, 67, '9:20'),
(100, 67, '16:45'),
(101, 68, '9:20'),
(102, 68, '9:50'),
(103, 69, '14:55'),
(104, 70, '7:10'),
(105, 71, '19:45'),
(106, 72, '16:55'),
(107, 73, '15:30'),
(108, 73, '18:50'),
(109, 75, '18:20'),
(111, 77, '20:15'),
(112, 78, '6:40'),
(113, 78, '8:00'),
(114, 79, '20:30'),
(115, 79, '7:45'),
(116, 80, '13:30'),
(117, 80, '18:20'),
(118, 81, '12:35'),
(119, 81, '14:35'),
(120, 82, '15:35'),
(121, 83, '17:00'),
(122, 84, '6:10'),
(123, 84, '7:30'),
(124, 85, '20:00'),
(125, 85, '21:00'),
(126, 86, '19:20'),
(127, 86, '20:00'),
(128, 74, '7:40'),
(129, 88, '14:23'),
(130, 89, '15:13'),
(131, 90, '14:28'),
(132, 91, '15:29'),
(133, 92, '12:11'),
(134, 93, '13:11'),
(135, 93, '14:11'),
(136, 94, '16:55'),
(137, 95, '17:50'),
(138, 94, '13:00'),
(139, 95, '14:00'),
(140, 96, '15:05'),
(141, 96, '16:10'),
(142, 97, '21:45'),
(143, 98, '06:00'),
(144, 99, '09:00'),
(145, 100, '08:30'),
(146, 101, '15:15'),
(147, 102, '17:05'),
(148, 103, '15:40'),
(149, 104, '17:40'),
(150, 105, '13:30'),
(151, 105, '13:55'),
(152, 106, '12:50'),
(153, 106, '12:25'),
(154, 107, '21:10'),
(155, 107, '21:35'),
(156, 108, '21:55'),
(157, 108, '10:20'),
(158, 109, '09:00');

-- --------------------------------------------------------

--
-- Table structure for table `gnd_fsft_touroperator`
--

CREATE TABLE IF NOT EXISTS `gnd_fsft_touroperator` (
  `id` int(11) NOT NULL,
  `tour_operator` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=latin1 COMMENT='Tour Operators table';

-- --------------------------------------------------------

--
-- Table structure for table `gnd_guest`
--

CREATE TABLE IF NOT EXISTS `gnd_guest` (
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
-- Table structure for table `gnd_location`
--

CREATE TABLE IF NOT EXISTS `gnd_location` (
  `id_location` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zone` int(4) NOT NULL DEFAULT '0',
  `loc_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gnd_loc_coast`
--

CREATE TABLE IF NOT EXISTS `gnd_loc_coast` (
  `id` int(8) unsigned NOT NULL,
  `coast` varchar(80) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gnd_loc_coast`
--

INSERT INTO `gnd_loc_coast` (`id`, `coast`) VALUES
(1, 'East Coast'),
(2, 'West Coast'),
(3, 'North Coast'),
(4, 'South Coast');

-- --------------------------------------------------------

--
-- Table structure for table `gnd_reps`
--

CREATE TABLE IF NOT EXISTS `gnd_reps` (
  `id_rep` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gnd_reps`
--

INSERT INTO `gnd_reps` (`id_rep`, `name`) VALUES
(1, 'Winston Bowen'),
(2, 'Janelle James'),
(3, 'Andrea Felix'),
(4, 'Chelsea Martin'),
(5, 'Katisha Collins');

-- --------------------------------------------------------

--
-- Table structure for table `gnd_resdrivers`
--

CREATE TABLE IF NOT EXISTS `gnd_resdrivers` (
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
-- Table structure for table `gnd_reservations`
--

CREATE TABLE IF NOT EXISTS `gnd_reservations` (
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
  `dpt_date` date NOT NULL,
  `dpt_time` varchar(255) NOT NULL,
  `dpt_flight_no` varchar(255) NOT NULL,
  `dpt_transport` varchar(255) NOT NULL,
  `dpt_driver` varchar(255) NOT NULL,
  `dpt_vehicle` varchar(255) NOT NULL,
  `dpt_pickup` varchar(255) NOT NULL,
  `dpt_dropoff` varchar(255) NOT NULL,
  `dpt_pickup_time` varchar(255) NOT NULL,
  `dpt_notes` varchar(255) NOT NULL,
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
  `infant_seats` int(11) NOT NULL,
  `child_seats` int(11) NOT NULL,
  `booster_seats` int(11) NOT NULL,
  `vouchers` int(11) NOT NULL,
  `assignment` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gnd_roomtypes`
--

CREATE TABLE IF NOT EXISTS `gnd_roomtypes` (
  `id_room` int(11) NOT NULL,
  `id_location` int(11) NOT NULL,
  `room_type` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gnd_roomtypes`
--

INSERT INTO `gnd_roomtypes` (`id_room`, `id_location`, `room_type`) VALUES
(181, 71, 'Italian Oceanview Pent House'),
(182, 71, 'Italian Oceanview 1 Bedroom'),
(183, 71, 'South Seas One Bedroom Butler Suite'),
(184, 71, 'South Seas Grande Rondoval Butler Suite'),
(185, 71, 'South Seas Honeymoon One Bedroom Butler Suite'),
(186, 71, 'Italian Swimup Bi-level 1 Bedroom Butler Suite'),
(187, 71, 'Italian Bi-level Bedroom Suite'),
(188, 71, 'Pink Gin Beachfront Honeymoon Club'),
(189, 71, 'Pink Gin Oceanview Club Level Suite - OS'),
(190, 71, 'Pink Gin Beachfront Room - BR'),
(191, 71, 'Pink  Gin Oceanveiw Room- PO'),
(192, 71, 'Pink Gin Hideaway Room'),
(193, 71, 'South Seas Waterfall River Pool Walkout'),
(194, 71, 'Junior Suite'),
(195, 71, 'South Seas Waterfall River Pool Walkout  Junior Suite'),
(196, 71, 'South Seas Waterfall River Junior Suite'),
(197, 71, 'South Seas Hideaway Junior Suite'),
(198, 71, 'Pink Gin Grade Luxe - LO'),
(199, 71, 'South Seas Premium Room'),
(200, 72, 'Paw Paw'),
(201, 72, 'Rock Fig'),
(202, 72, 'Cherry'),
(203, 72, 'Avocado'),
(204, 72, 'Mango'),
(205, 72, 'Pineapple'),
(206, 72, 'Coconut'),
(207, 73, 'Seaview Room'),
(208, 73, 'Hillside'),
(209, 73, 'Beachfront Room'),
(210, 73, 'Executive Suite- Premier Room'),
(211, 73, 'Executive Suite - Premier Suites'),
(212, 73, 'Deluxe Suite'),
(213, 74, 'True Blue Rooms'),
(214, 74, 'Tree Top Rooms'),
(215, 74, 'Indigo Rooms'),
(216, 74, 'Bay View Rooms'),
(217, 74, 'Waterfront Suite'),
(218, 74, 'Tower Suites'),
(219, 74, 'Villas'),
(220, 74, 'Honeymoon Suite'),
(221, 75, 'Junior Suite'),
(222, 75, 'One Bedroom Westside Suites'),
(223, 75, 'One Bedroom Superior Suite'),
(224, 75, 'One Bedroom Pool Suite'),
(225, 75, 'Thorneycroft Suite'),
(226, 75, 'CariBali Villa'),
(227, 75, 'Hummingbird Villa'),
(228, 75, 'The Pool House Villa'),
(229, 75, 'Treefrog Villa'),
(230, 75, 'Swallow Villa'),
(231, 76, 'Garden Veiw Room'),
(232, 76, 'Beachfront room'),
(233, 76, 'Executive Beachfront Rooms'),
(234, 76, 'Executive Beachfront Suites'),
(235, 78, 'Deluxe Two Bedroom Suite'),
(236, 78, 'Deluxe One Bedroom Suite'),
(237, 78, 'Deluxe Hotel Room'),
(238, 78, 'Deluxe Studio'),
(239, 78, 'Standard Hotel Room'),
(240, 78, 'Superior Two Bedroom Suite'),
(241, 78, 'Superior One Bedroom Suite'),
(242, 78, 'Superior Suite'),
(243, 79, 'Luxury One Bedroom Hacienda Suite'),
(244, 79, 'One Bedroom Villa'),
(245, 79, 'Two Bedroom Garden Suite'),
(246, 79, 'Two Bedroom Villa'),
(247, 79, 'Three Bedroom Villa'),
(248, 79, 'Cinnamon Heights'),
(249, 80, 'One bedroom Cinnamon/ Saffron Suites'),
(250, 80, 'Royal Collection Pool Suites'),
(251, 80, 'Luxury Almond Pool Suites'),
(252, 80, 'Anthurium Pool Suites'),
(253, 80, 'Seagrape Beach Suites'),
(254, 80, 'Oleander Superior/ Garden Suites'),
(255, 81, 'Beach Cottage Deluxe'),
(256, 81, 'Deluxe Cottage'),
(257, 81, 'Cottage Suite'),
(258, 81, 'Indigo Villa'),
(259, 81, 'Seascape Villa');

-- --------------------------------------------------------

--
-- Table structure for table `gnd_room_loc`
--

CREATE TABLE IF NOT EXISTS `gnd_room_loc` (
  `id_room_loc` int(11) NOT NULL,
  `id_location` int(11) NOT NULL,
  `id_roomtype` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gnd_room_loc`
--

INSERT INTO `gnd_room_loc` (`id_room_loc`, `id_location`, `id_roomtype`) VALUES
(1, 71, 181),
(2, 71, 182),
(3, 71, 183),
(4, 71, 184),
(5, 71, 185),
(6, 71, 186),
(7, 71, 187),
(8, 71, 188),
(9, 71, 189),
(10, 71, 190),
(11, 71, 191),
(12, 71, 192),
(13, 71, 193),
(14, 71, 194),
(15, 71, 195),
(16, 71, 196),
(17, 71, 197),
(18, 71, 198),
(19, 71, 199),
(20, 72, 200),
(21, 72, 201),
(22, 72, 202),
(23, 72, 203),
(24, 72, 204),
(25, 72, 205),
(26, 72, 206),
(27, 73, 207),
(28, 73, 208),
(29, 73, 209),
(30, 73, 210),
(31, 73, 211),
(32, 73, 212),
(33, 74, 213),
(34, 74, 214),
(35, 74, 215),
(36, 74, 216),
(37, 74, 217),
(38, 74, 218),
(39, 74, 219),
(40, 74, 220),
(41, 75, 221),
(42, 75, 222),
(43, 75, 223),
(44, 75, 224),
(45, 75, 225),
(46, 75, 226),
(47, 75, 227),
(48, 75, 228),
(49, 75, 229),
(50, 75, 230),
(51, 76, 231),
(52, 76, 232),
(53, 76, 233),
(54, 76, 234),
(55, 78, 235),
(56, 78, 236),
(57, 78, 237),
(58, 78, 238),
(59, 78, 239),
(60, 78, 240),
(61, 78, 241),
(62, 78, 242),
(63, 79, 243),
(64, 79, 244),
(65, 79, 245),
(66, 79, 246),
(67, 79, 247),
(68, 79, 248),
(69, 80, 249),
(70, 80, 250),
(71, 80, 251),
(72, 80, 252),
(73, 80, 253),
(74, 80, 254),
(75, 81, 255),
(76, 81, 256),
(77, 81, 257),
(78, 81, 258),
(79, 81, 259);

-- --------------------------------------------------------

--
-- Table structure for table `gnd_touroperator`
--

CREATE TABLE IF NOT EXISTS `gnd_touroperator` (
  `id` int(11) NOT NULL,
  `tour_operator` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1 COMMENT='Tour Operators table';

--
-- Dumping data for table `gnd_touroperator`
--

INSERT INTO `gnd_touroperator` (`id`, `tour_operator`) VALUES
(1, 'Air Canada Vacations'),
(2, 'Audley Travel'),
(3, 'Azure Luxury Hotel Collection'),
(4, 'British Airways Holidays'),
(5, 'Caribtours'),
(6, 'Carrier'),
(7, 'City Discovery / World Airport Transfers'),
(8, 'Classic Vacations'),
(9, 'Cox &amp;Kings'),
(10, 'Destinology'),
(11, 'Delta Travel Ukraine'),
(12, 'ES Travel'),
(13, 'Europ Assistance'),
(14, 'Expedia'),
(15, 'Exsus Travel'),
(16, 'Gold Medal Travel / Netflights / Pure Luxury'),
(17, 'Hays Transfer'),
(18, 'Holidays Services'),
(19, 'Holiday Taxis'),
(20, 'Hotelbeds'),
(21, 'Indiviual Holidays'),
(22, 'Intimate Holidays'),
(23, 'ITC Classics / Complete Caribbean / Caribbean Connection'),
(24, 'JetBlue'),
(25, 'Just Resorts'),
(26, 'Kuoni Travel Ltd'),
(27, 'Kuoni Switzerland '),
(28, 'Kuoni Italy'),
(29, 'Kuoni France'),
(30, 'Kuoni Spain'),
(31, 'Kuoni Netherlands'),
(32, 'La Fabbrica'),
(33, 'Latino Travel'),
(34, 'Lusso Travel'),
(35, 'Luxury Travel To'),
(36, 'Luxury Trips'),
(37, 'MLT Vacations'),
(38, 'Oxford Private Travel'),
(39, 'Pleasant  Holidays'),
(40, 'Press Tours Spa'),
(41, 'Prestbury  Worldwide Resorts'),
(42, 'Q Holidays / Sackville Travel'),
(43, 'Scott Dunn'),
(44, 'Simply Caribbean Luxury Holidays'),
(45, 'Six Star Holidays'),
(46, 'Sunset Faraway Holidays'),
(47, 'Suntransfers.com'),
(48, 'Stella Travel Services '),
(49, 'The Global Travel Group'),
(50, 'Triton Rooms'),
(51, 'Travel2'),
(52, 'TravelBag'),
(53, 'Simply Luxury'),
(54, 'Team America'),
(55, 'The Holiday Place'),
(56, 'Thomas Cook Uk'),
(57, 'Thomas Cook Germany'),
(58, 'Trailfinders'),
(59, 'Transfers4travel'),
(60, 'Travel Counsellors'),
(61, 'Travel Suitcase'),
(62, 'Tropic Breeze'),
(63, 'Turquoise Holidays'),
(64, 'Viator'),
(65, 'Vicino e Lontano'),
(66, 'Wedding in Paradise'),
(67, 'Western &amp; Oriental'),
(70, 'We Travel / Topflight'),
(71, 'Wilderness Explorers');

-- --------------------------------------------------------

--
-- Table structure for table `gnd_transport`
--

CREATE TABLE IF NOT EXISTS `gnd_transport` (
  `id_transport` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gnd_transport`
--

INSERT INTO `gnd_transport` (`id_transport`, `name`) VALUES
(1, 'Terrance Louison'),
(2, 'Ralph Alexander'),
(3, 'Celestine Morian'),
(4, 'Augustine Morian'),
(5, 'Patrick Thomas'),
(6, 'Henrys Safari Tours '),
(8, 'Michael Scott'),
(9, 'Selwyn Coutain'),
(10, 'Carl David'),
(11, 'Chris Buckmire'),
(12, 'Dave Thomas'),
(13, 'Denis Neptune'),
(14, 'Desmond Dumont'),
(15, 'Elwin James'),
(16, 'Kalvin Baker'),
(17, 'Ruben Japal'),
(18, 'Ryan Hopkin');

-- --------------------------------------------------------

--
-- Table structure for table `gnd_vehicles`
--

CREATE TABLE IF NOT EXISTS `gnd_vehicles` (
  `id_vehicle` int(11) NOT NULL,
  `id_transport` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gnd_vehicles`
--

INSERT INTO `gnd_vehicles` (`id_vehicle`, `id_transport`, `name`) VALUES
(14, 4, 'HAB790'),
(15, 10, 'HAE153'),
(16, 3, 'HAM111'),
(17, 11, 'HAL199'),
(18, 12, 'HAE311'),
(19, 13, 'HAK867'),
(20, 14, 'HU308'),
(21, 15, 'HAC686'),
(22, 6, 'HAF425'),
(23, 6, 'HB942'),
(24, 6, 'HAD940'),
(25, 6, 'HO625'),
(26, 6, 'HN365'),
(27, 16, 'HAE622'),
(28, 8, 'HAD133'),
(29, 5, 'HAJ359'),
(30, 2, 'HZ822'),
(31, 17, 'HN589'),
(32, 18, 'PB55'),
(33, 9, 'H5035'),
(34, 1, 'HAD573');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gnd_activity`
--
ALTER TABLE `gnd_activity`
  ADD PRIMARY KEY (`id_activity`);

--
-- Indexes for table `gnd_arrivals`
--
ALTER TABLE `gnd_arrivals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gnd_bugs`
--
ALTER TABLE `gnd_bugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gnd_departures`
--
ALTER TABLE `gnd_departures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gnd_flightclass`
--
ALTER TABLE `gnd_flightclass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gnd_flights`
--
ALTER TABLE `gnd_flights`
  ADD PRIMARY KEY (`id_flight`);

--
-- Indexes for table `gnd_flighttime`
--
ALTER TABLE `gnd_flighttime`
  ADD PRIMARY KEY (`id_fltime`);

--
-- Indexes for table `gnd_fsft_touroperator`
--
ALTER TABLE `gnd_fsft_touroperator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gnd_guest`
--
ALTER TABLE `gnd_guest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gnd_location`
--
ALTER TABLE `gnd_location`
  ADD PRIMARY KEY (`id_location`);

--
-- Indexes for table `gnd_loc_coast`
--
ALTER TABLE `gnd_loc_coast`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gnd_reps`
--
ALTER TABLE `gnd_reps`
  ADD PRIMARY KEY (`id_rep`);

--
-- Indexes for table `gnd_resdrivers`
--
ALTER TABLE `gnd_resdrivers`
  ADD PRIMARY KEY (`id_driver`);

--
-- Indexes for table `gnd_reservations`
--
ALTER TABLE `gnd_reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gnd_roomtypes`
--
ALTER TABLE `gnd_roomtypes`
  ADD PRIMARY KEY (`id_room`);

--
-- Indexes for table `gnd_room_loc`
--
ALTER TABLE `gnd_room_loc`
  ADD PRIMARY KEY (`id_room_loc`);

--
-- Indexes for table `gnd_touroperator`
--
ALTER TABLE `gnd_touroperator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gnd_transport`
--
ALTER TABLE `gnd_transport`
  ADD PRIMARY KEY (`id_transport`);

--
-- Indexes for table `gnd_vehicles`
--
ALTER TABLE `gnd_vehicles`
  ADD PRIMARY KEY (`id_vehicle`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gnd_activity`
--
ALTER TABLE `gnd_activity`
  MODIFY `id_activity` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gnd_arrivals`
--
ALTER TABLE `gnd_arrivals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gnd_bugs`
--
ALTER TABLE `gnd_bugs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gnd_departures`
--
ALTER TABLE `gnd_departures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gnd_flightclass`
--
ALTER TABLE `gnd_flightclass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `gnd_flights`
--
ALTER TABLE `gnd_flights`
  MODIFY `id_flight` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `gnd_flighttime`
--
ALTER TABLE `gnd_flighttime`
  MODIFY `id_fltime` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT for table `gnd_fsft_touroperator`
--
ALTER TABLE `gnd_fsft_touroperator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT for table `gnd_guest`
--
ALTER TABLE `gnd_guest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gnd_location`
--
ALTER TABLE `gnd_location`
  MODIFY `id_location` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gnd_loc_coast`
--
ALTER TABLE `gnd_loc_coast`
  MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `gnd_reps`
--
ALTER TABLE `gnd_reps`
  MODIFY `id_rep` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `gnd_resdrivers`
--
ALTER TABLE `gnd_resdrivers`
  MODIFY `id_driver` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gnd_reservations`
--
ALTER TABLE `gnd_reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gnd_roomtypes`
--
ALTER TABLE `gnd_roomtypes`
  MODIFY `id_room` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=260;
--
-- AUTO_INCREMENT for table `gnd_room_loc`
--
ALTER TABLE `gnd_room_loc`
  MODIFY `id_room_loc` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `gnd_touroperator`
--
ALTER TABLE `gnd_touroperator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `gnd_transport`
--
ALTER TABLE `gnd_transport`
  MODIFY `id_transport` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `gnd_vehicles`
--
ALTER TABLE `gnd_vehicles`
  MODIFY `id_vehicle` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
