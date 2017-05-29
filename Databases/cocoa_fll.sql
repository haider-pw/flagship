/*
SQLyog Ultimate v12.14 (64 bit)
MySQL - 5.6.17 : Database - cocoa_fll
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cocoa_fll` /*!40100 DEFAULT CHARACTER SET latin1 */;

/*Table structure for table `fll_activity` */

DROP TABLE IF EXISTS `fll_activity`;

CREATE TABLE `fll_activity` (
  `id_activity` int(11) NOT NULL AUTO_INCREMENT,
  `log_user` varchar(255) NOT NULL,
  `user_action` varchar(255) NOT NULL,
  `log_time` varchar(255) NOT NULL,
  PRIMARY KEY (`id_activity`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=latin1;

/*Data for the table `fll_activity` */

insert  into `fll_activity`(`id_activity`,`log_user`,`user_action`,`log_time`) values 
(1,'ShavanarÃ© Oliver','add tour operator: Cruiseline - Star Clippers','2015-10-21 15:12:24'),
(2,'ShavanarÃ© Oliver','add flight time: 8:00 for flight AA1669','2015-10-21 15:31:05'),
(3,'ShavanarÃ© Oliver','add new reservation: Ms. Beth Schultz #ref:BGI-X7ZDPW79','2015-10-21 15:31:15'),
(4,'ShavanarÃ© Oliver','update reservation: Ms. Beth Schultz #ref:BGI-X7ZDPW79','2015-10-21 15:33:09'),
(5,'ShavanarÃ© Oliver','add new flight number: Vessel - Star Flyer','2015-10-21 15:34:12'),
(6,'ShavanarÃ© Oliver','add flight time: 6:00 for flight Vessel - Star Flyer','2015-10-21 15:35:15'),
(7,'ShavanarÃ© Oliver','update reservation: Ms. Beth Schultz #ref:BGI-X7ZDPW79','2015-10-21 15:35:30'),
(8,'ShavanarÃ© Oliver','update reservation: Ms. Beth Schultz #ref:BGI-X7ZDPW79','2015-10-21 15:38:37'),
(9,'ShavanarÃ© Oliver','update reservation: Ms. Beth Schultz #ref:BGI-X7ZDPW79','2015-10-21 15:39:36'),
(10,'Creative Tech','add new reservation: Mr. Haider Hassan #ref:FLL-V3HNRKJM','2016-08-31 16:22:41'),
(11,'Creative Tech','add new reservation: Mr. Haider Hassan #ref:FLL-WVP98BVX','2016-08-31 16:24:04'),
(12,'Creative Tech','add new reservation: Mr. Haider Hassan #ref:FLL-FK9VMC8Q','2016-08-31 16:24:55'),
(13,'Creative Tech','add new reservation: Mr. Haider Hassan #ref:FLL-TBD65BDZ','2016-08-31 16:30:12'),
(14,'Creative Tech','add new reservation: Mr. Haider Hassan #ref:FLL-HFKGTDR9','2016-08-31 16:43:02'),
(15,'Creative Tech','add new reservation: Mr. Syed Haider #ref:FLL-KHHSJPTR','2016-08-31 16:54:46'),
(16,'Creative Tech','add new reservation: Mr. Syed Haider #ref:FLL-GBQC7KFW','2016-08-31 16:59:14'),
(17,'Creative Tech','add new reservation: Mr. Syed Haider #ref:FLL-27WHD5H9','2016-08-31 17:19:57'),
(18,'Creative Tech','add new reservation: Mr. Syed Haider #ref:FLL-M5V78MN6','2016-08-31 17:24:03'),
(19,'Creative Tech','add new reservation: Mr. Syed Haider #ref:FLL-9HB8D539','2016-08-31 17:25:01'),
(20,'Creative Tech','add new reservation: . FIrst Haider #ref:FLL-24TVWFFQ','2016-08-31 17:29:09'),
(21,'Creative Tech','add new reservation: . FIrst Haider #ref:FLL-79SWJNDJ','2016-08-31 17:41:42'),
(22,'Creative Tech','update reservation: . FIrst Haider #ref:FLL-79SWJNDJ','2016-09-01 09:51:39'),
(23,'Creative Tech','add new reservation: . Akram Durrani #ref:FLL-39XP48T2','2016-09-01 09:54:16'),
(24,'Creative Tech','add new reservation: . First Last #ref:FLL-9ZJKM76R','2016-09-01 09:58:56'),
(25,'Creative Tech','add new reservation: . FIrst lAST #ref:FLL-JSSVCFRB','2016-09-01 09:59:48'),
(26,'Creative Tech','add new reservation: . ahsan Abbasi #ref:FLL-V73NM3N3','2016-09-01 10:02:01'),
(27,'Creative Tech','add new reservation: . ahsan Abbasi #ref:FLL-DCTDWGS8','2016-09-01 10:05:25'),
(28,'Creative Tech','add new reservation: . ahsan Abbasi #ref:FLL-RCK992S8','2016-09-01 10:08:00'),
(29,'Creative Tech','add new reservation: . ahsan Abbasi #ref:FLL-HVGQK2G4','2016-09-01 10:10:57'),
(30,'Creative Tech','add new reservation: . ahsan Abbasi #ref:FLL-8HKF2DKT','2016-09-01 10:31:42'),
(31,'Creative Tech','add new reservation: . ahsan Abbasi #ref:FLL-MBZ632NW','2016-09-01 10:33:49'),
(32,'Creative Tech','add new reservation: . ahsan Abbasi #ref:FLL-VD3HVJVJ','2016-09-01 10:34:10'),
(33,'Creative Tech','add new reservation: . ahsan Abbasi #ref:FLL-Y4KB7CSY','2016-09-01 10:34:31'),
(34,'Creative Tech','add new reservation: Mr. ahsan  DUrrani #ref:FLL-JZW46N3G','2016-09-01 10:48:59'),
(35,'Creative Tech','update reservation: . First Last #ref:FLL-9ZJKM76R','2016-09-01 12:38:31'),
(36,'Creative Tech','bug reported: Email Not working on Bug','2016-09-02 13:02:21'),
(37,'Creative Tech','update reservation: Ms. Beth Schultz #ref:BGI-X7ZDPW79','2016-09-02 14:43:06'),
(38,'Creative Tech','bug reported: but','2016-09-02 15:10:07'),
(39,'Creative Tech','bug reported: tet','2016-09-02 15:10:36'),
(40,'Creative Tech','bug reported: tet','2016-09-02 15:33:51'),
(41,'Creative Tech','bug reported: tet','2016-09-02 15:35:13'),
(42,'Creative Tech','bug reported: tet','2016-09-02 15:35:37'),
(43,'Creative Tech','bug reported: tet','2016-09-02 15:37:41'),
(44,'Creative Tech','bug reported: tet','2016-09-02 15:37:55'),
(45,'Creative Tech','bug reported: tet','2016-09-02 15:38:24'),
(46,'Creative Tech','bug reported: tet','2016-09-02 15:39:15'),
(47,'Creative Tech','bug reported: tet','2016-09-02 15:39:57'),
(48,'Creative Tech','bug reported: tet','2016-09-02 15:41:25'),
(49,'Creative Tech','bug reported: tet','2016-09-02 15:56:07'),
(50,'Creative Tech','bug reported: tet','2016-09-02 16:00:37'),
(51,'Creative Tech','bug reported: tet','2016-09-02 16:02:04'),
(52,'Creative Tech','bug reported: tet','2016-09-02 16:02:51'),
(53,'Creative Tech','bug reported: tet','2016-09-02 16:12:19'),
(54,'Creative Tech','bug reported: tet','2016-09-02 16:38:59'),
(55,'Creative Tech','bug reported: Bug Title','2016-09-02 16:39:33'),
(56,'Creative Tech','update reservation: . FIrst Haider #ref:FLL-79SWJNDJ','2016-09-05 15:51:13'),
(57,'Creative Tech','add new Inter-Hotel transfer: FLL-9ZJKM76R','2016-09-05 16:06:51'),
(58,'Creative Tech','update reservation: . First Last #ref:FLL-9ZJKM76R','2016-09-05 16:09:43'),
(59,'Creative Tech','update reservation: . FIrst lAST #ref:FLL-JSSVCFRB','2016-09-05 16:56:57'),
(60,'Creative Tech','update reservation: . FIrst lAST #ref:FLL-JSSVCFRB','2016-09-05 17:10:02'),
(61,'Creative Tech','add new arrival: #ref:FLL-JSSVCFRB','2016-09-05 17:11:34'),
(62,'Creative Tech','add new arrival: #ref:FLL-JSSVCFRB','2016-09-05 17:14:13'),
(63,'Creative Tech','add new arrival: #ref:FLL-JSSVCFRB','2016-09-05 17:17:18'),
(64,'Creative Tech','add new arrival: #ref:FLL-JSSVCFRB','2016-09-05 17:17:33'),
(65,'Creative Tech','add new arrival: #ref:FLL-JSSVCFRB','2016-09-05 17:19:00'),
(66,'Creative Tech','add new arrival: #ref:FLL-JSSVCFRB','2016-09-05 17:19:09'),
(67,'Creative Tech','add new arrival: #ref:FLL-JSSVCFRB','2016-09-05 17:21:21'),
(68,'Creative Tech','add new arrival: #ref:FLL-JSSVCFRB','2016-09-05 17:28:42'),
(69,'Creative Tech','add new fast track reservation:  Ms. Haider Hassan #ref:FLL-WNDV4T2N','2016-09-06 10:41:14'),
(70,'Creative Tech','update reservation: Dr. FIrst Haider #ref:FLL-79SWJNDJ','2016-09-06 11:00:01'),
(71,'Creative Tech','add new arrival: #ref:FLL-79SWJNDJ','2016-09-06 11:08:25'),
(72,'Creative Tech','add new reservation: Mr. Haider Hassan #ref:FLL-BMG9HD3G','2016-09-19 09:46:55'),
(73,'Creative Tech','add new reservation: Mr. Haider Hassan #ref:FLL-NG9DFG22','2016-09-20 14:20:11'),
(74,'Creative Tech','add new departure: #ref:FLL-79SWJNDJ','2016-09-20 16:00:31'),
(75,'Creative Tech','add new departure: #ref:FLL-79SWJNDJ','2016-09-20 16:02:54'),
(76,'Creative Tech','add new departure: #ref:FLL-79SWJNDJ','2016-09-20 16:06:31'),
(77,'Creative Tech','add new departure: #ref:FLL-79SWJNDJ','2016-09-20 16:11:42'),
(78,'Creative Tech','add guest: Mrs. Beenish Iqbal Afridi for Ref# FLL-79SWJNDJ','2016-09-20 16:12:43'),
(79,'Creative Tech','add new Inter-Hotel transfer: FLL-79SWJNDJ','2016-09-20 16:13:24'),
(80,'Creative Tech','add new Inter-Hotel transfer: FLL-79SWJNDJ','2016-09-20 16:23:27'),
(81,'Creative Tech','update reservation: Dr. FIrst Haider #ref:FLL-79SWJNDJ','2016-09-20 16:24:08'),
(82,'Creative Tech','add new arrival: #ref:FLL-39XP48T2','2016-09-20 16:42:49'),
(83,'Creative Tech','add new arrival: #ref:FLL-VD3HVJVJ','2016-09-20 17:10:52'),
(84,'Creative Tech','add guest: Ms. Maham Aftab for Ref# FLL-NG9DFG22','2016-09-21 12:21:57'),
(85,'Creative Tech','add new reservation: Ms. First Last #ref:FLL-KC8FTDZ4','2016-10-04 18:41:21'),
(86,'Creative Tech','add new reservation: Mr. Haider Hassan #ref:FLL-H4V375X3','2016-10-04 19:09:13'),
(87,'Creative Tech','add new reservation: Mr. Sajid Afridi #ref:FLL-6PD9PHPQ','2016-10-04 19:15:09'),
(88,'Creative Tech','add new reservation: Mr. 123 123 #ref:FLL-H3WPVNKS','2016-10-05 13:00:27'),
(89,'Creative Tech','Assign team Cheryl Sillivan / update reservation: .   #ref:FLL-H3WPVNKS','2016-10-05 13:02:29'),
(90,'Creative Tech','add new reservation: Mr. Haider Hassan #ref:FLL-W9Z8BT9V','2016-10-06 12:38:40'),
(91,'Creative Tech','add new reservation: Mr. Own Malik #ref:FLL-8B3MPJWW','2016-11-01 13:41:52'),
(92,'Creative Tech','add new fast track reservation:  Mr. Raza Malik #ref:FLL-BKHXR7XV','2016-11-01 16:16:52'),
(93,'Creative Tech','add new fast track reservation:  Select title. Haider Hassan #ref:FLL-QZBBKJQC','2016-11-01 16:25:45'),
(94,'Creative Tech','add new fast track reservation:  Select title. Haider Hassan #ref:FLL-DY8JZZZ9','2016-11-01 16:29:13'),
(95,'Creative Tech','add new fast track reservation:  Select title. Haider Hassan #ref:FLL-FBZDTH5F','2016-11-01 16:30:58'),
(96,'Creative Tech','add new fast track reservation:  Select title. Haider Hassan #ref:FLL-NZZ69N4D','2016-11-01 16:35:08'),
(97,'Creative Tech','add new fast track reservation:  Select title. Haider Hassan #ref:FLL-WDCFMYZF','2016-11-01 16:36:36'),
(98,'Creative Tech','add new fast track reservation:  Select title. Haider Hassan #ref:FLL-PKZWFTJQ','2016-11-01 16:38:14'),
(99,'Creative Tech','add new fast track reservation:  Select title. Haider Hassan #ref:FLL-FJDY5DQX','2016-11-01 16:40:45'),
(100,'Creative Tech','add new fast track reservation:  Select title. Haider Hassan #ref:FLL-K4YQ9RBQ','2016-11-01 16:43:02'),
(101,'Creative Tech','add new fast track reservation:  Select title. Haider Hassan #ref:FLL-RFPDV89T','2016-11-01 16:44:47'),
(102,'Creative Tech','add new fast track reservation:  Select title. Haider Hassan #ref:FLL-HG5Y39G5','2016-11-01 16:44:56'),
(103,'Creative Tech','add new fast track reservation:  Select title. Haider Hassan #ref:FLL-RZ2T4X3R','2016-11-01 16:45:38'),
(104,'Creative Tech','add new fast track reservation:  Select title. Guest Test #ref:FLL-W93H2HMF','2016-11-01 16:55:32'),
(105,'Creative Tech','add new fast track reservation:  Select title. Guest Test #ref:FLL-WXNRKNXY','2016-11-01 17:10:22'),
(106,'Creative Tech','add new fast track reservation:  Mr. Amjad Durrani #ref:FLL-NBKP33RJ','2016-11-17 11:13:32'),
(107,'Creative Tech','add new fast track reservation:  Ms. Anaar Kali #ref:FLL-SNZ7DSW3','2016-11-17 13:39:09'),
(108,'Creative Tech','add new reservation: Ms. Neela Begam #ref:FLL-R5JM29BV','2016-11-17 17:44:07'),
(109,'Creative Tech','add new reservation: Ms. Gul Khan #ref:FLL-KDKBWS7M','2016-11-17 17:45:02'),
(110,'Creative Tech','add new reservation: . ANeel Abid #ref:FLL-BMVFWZ49','2016-11-17 18:17:22'),
(111,'Creative Tech','add new reservation: Mr. Anil Kapoor #ref:FLL-F42GDJWZ','2016-11-18 10:14:01'),
(112,'Creative Tech','add new arrival: #ref:FLL-F42GDJWZ','2016-11-18 10:26:42'),
(113,'Creative Tech','add new reservation: Mr. Afreen Afreen #ref:FLL-4KNDQ9VY','2016-11-22 11:22:57'),
(114,'Creative Tech','add new arrival: #ref:FLL-4KNDQ9VY','2016-11-22 12:10:23'),
(115,'Creative Tech','add new arrival: #ref:FLL-4KNDQ9VY','2016-11-22 12:11:32'),
(116,'Creative Tech','add new arrival: #ref:FLL-4KNDQ9VY','2016-11-22 12:15:04'),
(117,'Creative Tech','add new arrival: #ref:FLL-4KNDQ9VY','2016-11-22 12:21:34'),
(118,'Creative Tech','add new arrival: #ref:FLL-4KNDQ9VY','2016-11-22 12:22:41'),
(119,'Creative Tech','add new reservation: Mr. Momina Afreen #ref:FLL-MVK5QV82','2016-11-23 10:26:14'),
(120,'Creative Tech','add new reservation: Mr. First Last #ref:FLL-TWDSX5SV','2016-11-23 10:39:16'),
(121,'Creative Tech','add new reservation: Mr. Momina MusteAhsan #ref:FLL-BMF9HD5T','2016-11-23 10:43:44'),
(122,'Creative Tech','add new reservation: Ms. Momina Ali #ref:FLL-RYJF7DJW','2016-11-23 10:49:06'),
(123,'Creative Tech','add new reservation: Ms. Momina Musteahsan #ref:FLL-FXX7GW4Q','2016-11-23 10:52:51'),
(124,'Creative Tech','add new reservation: Ms. First Name #ref:FLL-YM3G4CHG','2016-11-23 11:13:16'),
(125,'Creative Tech','add new reservation: Mr. Haider Hassan #ref:FLL-BGR5BF4V','2016-11-29 15:23:14'),
(126,'Creative Tech','add new reservation: Mr. Haider Hassan #ref:FLL-JY2T3DRD','2016-11-29 16:22:52'),
(127,'Creative Tech','add new reservation: Mr. Haider Hassan #ref:FLL-WBTZDGZ3','2016-11-29 16:26:40'),
(128,'Creative Tech','add new reservation: Mr. Haider Hassan #ref:FLL-5P3MY3YQ','2016-11-29 16:33:36'),
(129,'Creative Tech','add new reservation: Mr. Haider Hassan #ref:FLL-JTQJSWG8','2016-11-29 17:00:01'),
(130,'Creative Tech','add new reservation: Mr. Haider Hassan #ref:FLL-QD9GBCZM','2016-11-29 17:02:28'),
(131,'Creative Tech','add new reservation: Mr. Haider Hassan #ref:FLL-27N25QGY','2016-11-30 10:22:07'),
(132,'Creative Tech','add new reservation: Mr. haider hassan #ref:FLL-9XD2ZCG5','2016-11-30 10:28:20'),
(133,'Creative Tech','add new fast track reservation:  Mr. First Last #ref:FLL-D22V2B6V','2016-11-30 15:47:34'),
(134,'Creative Tech','add new fast track reservation:  Ms. Momina  Haider #ref:FLL-CBX3JB72','2016-11-30 16:00:30'),
(135,'Creative Tech','add new reservation: Mr. Haider Hassan #ref:FLL-P4BQDSGM','2016-12-01 09:56:09'),
(136,'Creative Tech','add new reservation: Mrs. akram Durrani #ref:FLL-9MRD2B8R','2016-12-01 10:02:05'),
(137,'Creative Tech','add new reservation: Mrs. Adnan Sami #ref:FLL-MQVX5CQC','2016-12-01 10:05:34'),
(138,'Creative Tech','add new reservation: Mrs. another test #ref:FLL-N3SHD2Y4','2016-12-01 10:07:24'),
(139,'Creative Tech','add new reservation: Mrs. dd d #ref:FLL-WMN4P79X','2016-12-01 10:08:12'),
(140,'Creative Tech','Assign team Jenny Banfield / update reservation: .   #ref:FLL-W9Z8BT9V','2016-12-01 12:18:04'),
(141,'Creative Tech','add new reservation: Mr. Haider Hassan #ref:FLL-56WBGXWZ','2016-12-06 13:37:04'),
(142,'Creative Tech','add new reservation: Mr. Haider Hassan #ref:FLL-88GCSZPD','2016-12-06 14:15:07'),
(143,'Creative Tech','add new reservation: Mr. Haider Hassan #ref:FLL-3MHSFTRK','2016-12-06 14:19:19'),
(144,'Creative Tech','add new reservation: Mr. Haider Hassan #ref:FLL-CWX36F54','2016-12-06 16:34:16'),
(145,'Creative Tech','add new reservation: Mr. Haider HassAN #ref:FLL-VDQYNHZW','2016-12-06 17:23:16'),
(146,'Creative Tech','add new fast track reservation:  Ms. Haider Hassan #ref:FLL-G23HY4RZ','2016-12-07 18:06:58');

/*Table structure for table `fll_additional_transfer` */

DROP TABLE IF EXISTS `fll_additional_transfer`;

CREATE TABLE `fll_additional_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_no_sys` varchar(255) NOT NULL,
  `pickup` varchar(80) DEFAULT NULL,
  `pickup_date` date DEFAULT NULL,
  `pickup_time` varchar(255) DEFAULT NULL,
  `dropoff` varchar(255) DEFAULT NULL,
  `transport` varchar(255) DEFAULT NULL,
  `vehicle` int(11) DEFAULT NULL,
  `driver` int(11) DEFAULT NULL,
  `transfer_notes` varchar(255) DEFAULT NULL,
  `total_guests` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fll_additional_transfer` */

/*Table structure for table `fll_arrivals` */

DROP TABLE IF EXISTS `fll_arrivals`;

CREATE TABLE `fll_arrivals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `excursion_date` datetime DEFAULT NULL,
  `excursion_pickup` varchar(5) DEFAULT NULL,
  `excursion_confirm_by` varchar(200) DEFAULT NULL,
  `excursion_confirm_date` date DEFAULT NULL,
  `excursion_guests` decimal(3,0) DEFAULT NULL,
  `arr_rooms` varchar(10) DEFAULT NULL,
  `room_last_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

/*Data for the table `fll_arrivals` */

insert  into `fll_arrivals`(`id`,`ref_no_sys`,`arr_date`,`arr_time`,`arr_flight_no`,`flight_class`,`arr_transport`,`arr_driver`,`arr_vehicle`,`arr_pickup`,`arr_dropoff`,`room_type`,`rep_type`,`client_reqs`,`arr_transport_notes`,`arr_hotel_notes`,`infant_seats`,`child_seats`,`booster_seats`,`vouchers`,`cold_towel`,`bottled_water`,`rooms`,`room_no`,`arr_main`,`luggage_vehicle`,`fast_track`,`excursion_name`,`excursion_date`,`excursion_pickup`,`excursion_confirm_by`,`excursion_confirm_date`,`excursion_guests`,`arr_rooms`,`room_last_name`) values 
(1,'FLL-JSSVCFRB','0000-00-00','00:00:03','4','2','Limousine','17','35','7','56','0','2','Additional Requirements','Arrival &amp; Transport notes','Hotel notes',0,0,0,0,0,0,2,'22',NULL,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(2,'FLL-WNDV4T2N','2016-09-08','00:00:17','12','1','Limousine','23','49','56','56','0','2','Additional Requirements','Arrival &amp; Transport notes','Hotel notesHotel notesHotel notesHotel notesHotel notesHotel notesHotel notes',0,0,0,0,0,0,1,'54564',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(3,'FLL-79SWJNDJ','0000-00-00','00:00:00','0','Select flight class','','0','','Pickup Location','47','242','0','Additional Requirements','','',0,0,0,0,0,0,0,'',NULL,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(4,'FLL-BMG9HD3G','0000-00-00','00:00:00','0','Select flight class','','0','','0','0','','0','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(5,'FLL-NG9DFG22','2016-09-28','00:00:03','4','1','Private Car','61','101','57','7','','0','Additional Requirements','Arr and transport Notes','Hotel notes',0,0,0,0,0,0,1,'3234',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(6,'FLL-39XP48T2','0000-00-00','00:00:00','0','Select flight class','','0','','Pickup Location','0','','0','Additional Requirements','','',0,0,0,2,2,3,0,'',NULL,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(7,'FLL-VD3HVJVJ','2016-09-16','00:01:03','6','1','Limousine','54','93','Pickup Location','7','0','4','Pre booked excursion','Arrival &amp; Transport notes','Hotel notes',0,0,0,0,2,0,1,'322',NULL,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(8,'FLL-KC8FTDZ4','0000-00-00','00:00:00','0','Select flight class','','0','','0','0','','0','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(9,'FLL-H4V375X3','0000-00-00','00:00:00','0','Select flight class','','0','','0','0','','0','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(10,'FLL-6PD9PHPQ','0000-00-00','00:00:00','0','Select flight class','','0','','0','0','','0','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(11,'FLL-H3WPVNKS','2017-01-27','00:00:17','12','6','Limousine','54','0','56','9','','2','Additional Requirements','Arrival &amp; Transport notes','Hotel notes',0,0,0,0,0,0,1,'Room3343',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(12,'FLL-W9Z8BT9V','2016-12-16','00:00:03','4','2','Private Car','10','25','56','56','','0','Additional Requirements','','',0,0,0,0,0,0,4,'#3432d',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(13,'FLL-8B3MPJWW','2016-11-03','00:00:06','6','3','Private Van','61','101','56','4','150','1','Additional Requirements','Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes','Hotel notes',0,0,0,0,0,0,11,'321',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(14,'FLL-BKHXR7XV','2016-11-04','00:00:06','6','1','Coach (BT), Hydrolic Vehicle','27','54','56','5','20','2','Additional Requirements','Arrival &amp; Transport notes\r\nArrival &amp; Transport notes\r\nArrival &amp; Transport notes\r\nArrival &amp; Transport notes','Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes Hotel notesHotel notes Hotel notesHotel notes Hotel notes  Hotel notes Hotel notes ',0,0,0,0,0,0,6,'#RoomNo',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(15,'FLL-QZBBKJQC','0000-00-00','00:00:00','0','Select flight class','','0','','0','0','','0','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(16,'FLL-DY8JZZZ9','0000-00-00','00:00:00','0','Select flight class','','0','','0','0','','0','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(17,'FLL-FBZDTH5F','0000-00-00','00:00:00','0','Select flight class','','0','','0','0','','0','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(18,'FLL-NZZ69N4D','0000-00-00','00:00:00','0','Select flight class','','0','','0','0','','0','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(19,'FLL-WDCFMYZF','0000-00-00','00:00:00','0','Select flight class','','0','','0','','','0','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(20,'FLL-PKZWFTJQ','0000-00-00','00:00:00','0','Select flight class','','0','','0','','','0','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(21,'FLL-FJDY5DQX','0000-00-00','00:00:00','0','Select flight class','','0','','0','','','0','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(22,'FLL-K4YQ9RBQ','0000-00-00','00:00:00','0','Select flight class','','0','','0','0','','0','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(23,'FLL-RFPDV89T','0000-00-00','00:00:00','0','Select flight class','','0','','0','0','','0','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(24,'FLL-HG5Y39G5','0000-00-00','00:00:00','0','Select flight class','','0','','0','0','','0','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(25,'FLL-RZ2T4X3R','0000-00-00','00:00:00','0','Select flight class','','0','','0','0','','0','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(26,'FLL-W93H2HMF','0000-00-00','00:00:00','0','Select flight class','','0','','0','0','','0','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(27,'FLL-WXNRKNXY','0000-00-00','00:00:00','0','Select flight class','','0','','0','0','','0','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(28,'FLL-NBKP33RJ','2016-11-11','00:00:01','3','1','Limousine','30','58','56','20','88','0','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(29,'FLL-SNZ7DSW3','2016-11-13','00:00:01','3','1','Arrival Transport mode, Limousine, Coach (BT), Private Van','61','101','56','0','','Representation','','Arrival &amp; Transport notes','Hotel notes',0,0,0,0,0,0,2,'#342',NULL,'Yes',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(30,'FLL-SNZ7DSW3','2016-11-29','00:00:00','0','Select flight class','Arrival Transport mode','0','','0','0','','2','Additional Requirements','','',0,0,0,0,0,0,0,'',NULL,'Yes',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(31,'FLL-SNZ7DSW3','2016-11-18','00:00:00','0','Select flight class','Arrival Transport mode','0','','0','0','','Representation','Additional Requirements, Additional Requirements','','',0,0,0,0,0,0,0,'',NULL,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(32,'FLL-R5JM29BV','0000-00-00','00:00:00','0','Select flight class','Group Transfers','0','','0','0','','6','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(33,'FLL-KDKBWS7M','0000-00-00','00:00:00','0','Select flight class','Group Transfers','0','','0','0','','','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(34,'FLL-BMVFWZ49','0000-00-00','00:00:00','0','Select flight class','Group Transfers','0','','0','0','','','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(35,'FLL-F42GDJWZ','0000-00-00','00:00:00','0','Select flight class','Group Transfers','0','','0','0','','1, 2, 3, 4, 5, 6','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'Yes',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(36,'FLL-F42GDJWZ','2016-11-11','00:00:06','6','2','Private Car','54','93','Pickup Location','56','0','1, 2, 3, 4, 5, 6','Additional Requirements','Arrival &amp; Transport notes','Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes',0,0,0,0,0,0,0,'',NULL,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(37,'FLL-4KNDQ9VY','2016-11-02','00:00:00','0','5','Mercedes','31','60','56','16','','1, 2, 3, 4, 6','Additional Requirements','Arrival &amp; Transport notes','Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes',0,0,0,0,0,0,3,'#3432d',1,'Yes',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(38,'FLL-4KNDQ9VY','2016-11-15','00:00:00','0','Select flight class','','0','','56','16','0','2, 4','','Arrival &amp; Transport notes','Hotel Notes.',0,0,0,0,0,0,2,'Room#343',NULL,'Yes',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(39,'FLL-4KNDQ9VY','2016-11-16','00:00:00','0','Select flight class','','0','','0','0','','','','','',0,0,0,0,0,0,0,'',NULL,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(40,'FLL-4KNDQ9VY','2016-11-19','00:00:03','4','1','Mercedes/BMW','54','93','5','14','55','','Additional Requirements','Arrival &amp; Transport notes','Hotel notes, Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes',0,0,0,0,0,0,2,'#ddd',NULL,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(41,'FLL-4KNDQ9VY','2016-11-03','00:01:03','6','2','Private Car','54','93','4','5','20','','Additional Requirements','','',0,0,0,0,0,0,0,'',NULL,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(42,'FLL-4KNDQ9VY','2016-11-10','00:00:17','12','2','Mercedes/BMW','11','26','56','15','62','','Additional Requirements','Arrival &amp; Transport notes','Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes',0,0,0,0,0,0,1,'#ddd',NULL,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(43,'FLL-4KNDQ9VY','2016-11-03','00:00:00','7','Select flight class','Group Transfers','0','','Pickup Location','0','','','Additional Requirements','','',0,0,0,0,0,0,0,'',NULL,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(44,'FLL-4KNDQ9VY','2016-11-25','00:00:03','4','Select flight class','Group Transfers','0','','Pickup Location','0','','','Additional Requirements','Arrival &amp; Transport notes','Hotel notes',0,0,0,0,0,0,0,'',NULL,'No',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(46,'FLL-FXX7GW4Q','2016-11-23','00:00:00','0','Select flight class','Group Transfers','0','','0','0','','0, 2','Lounge voucher, Flowers/Chocolate','','',0,0,0,0,0,0,0,'',1,'No',1,'Excursion Name','0000-00-00 00:00:00','00:00','Confirmed By Haider','0000-00-00','4',NULL,''),
(47,'FLL-YM3G4CHG','0000-00-00','00:00:00','0','Select flight class','Group Transfers','0','','0','0','','','Car hire','','',0,0,0,0,0,0,0,'',1,'No',0,'Excursion Name','2016-11-18 00:00:00','00:00','Haider','2016-11-18','0',NULL,''),
(48,'FLL-BGR5BF4V','2016-11-10','00:00:00','0','Select flight class','Group Transfers','54','93','56','21','93','','Additional Requirements','Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes','',0,0,0,0,0,0,0,'#room3',1,'No',0,'','0000-00-00 00:00:00','','','0000-00-00','0',NULL,'Khan'),
(49,'FLL-JY2T3DRD','2016-11-11','00:00:00','42','4','Coach (BT)','27','54','56','17','72','1, 2, 3, 5','Additional Requirements','Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes','Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes',0,0,0,0,0,0,0,'Room#1',1,'No',0,'','0000-00-00 00:00:00','','','0000-00-00','0',NULL,'Last#1'),
(50,'FLL-WBTZDGZ3','2016-11-11','00:00:00','42','4','Coach (BT)','27','54','56','17','72','1, 2, 3, 5','Additional Requirements','Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes','Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes',0,0,0,0,0,0,0,'Room#1',1,'No',0,'','0000-00-00 00:00:00','','','0000-00-00','0',NULL,'Last#1'),
(51,'FLL-5P3MY3YQ','2016-11-11','00:00:00','42','4','Coach (BT)','27','54','56','17','72','1, 2, 3, 5','Additional Requirements','Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes','Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes',0,0,0,0,0,0,0,'Room#1',1,'No',0,'','0000-00-00 00:00:00','','','0000-00-00','0',NULL,'Last#1'),
(52,'FLL-JTQJSWG8','2016-11-11','00:00:00','42','4','Coach (BT)','27','54','56','17','72','1, 2, 3, 5','Additional Requirements','Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes','Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes',0,0,0,0,0,0,0,'Room#1',1,'No',0,'','0000-00-00 00:00:00','','','0000-00-00','0',NULL,'Last#1'),
(53,'FLL-QD9GBCZM','2016-11-11','00:00:00','42','4','Coach (BT)','27','54','56','17','72','1, 2, 3, 5','Additional Requirements','Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes','Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes',0,0,0,0,0,0,0,'Room#1',1,'No',0,'','0000-00-00 00:00:00','','','0000-00-00','0',NULL,'Last#1'),
(54,'FLL-27N25QGY','0000-00-00','00:00:00','0','Select flight class','Group Transfers','0','','0','0','','','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,'','0000-00-00 00:00:00','','','0000-00-00','0',NULL,''),
(55,'FLL-9XD2ZCG5','0000-00-00','00:00:00','0','Select flight class','Group Transfers','0','','0','0','','','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,'','0000-00-00 00:00:00','','','0000-00-00','0',NULL,''),
(56,'FLL-D22V2B6V','0000-00-00','00:00:00','0','Select flight class','Group Transfers','0','','0','18','','','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'Yes',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
(57,'FLL-CBX3JB72','2016-11-10','00:00:00','0','Select flight class','Group Transfers','0','','0','14','','2, 4','Additional Requirements','','Hotel notes Hotel notesHotel notes Hotel notes Hotel notes Hotel notes Hotel notes',0,0,0,0,0,0,0,'',1,'Yes',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Haider'),
(58,'FLL-P4BQDSGM','0000-00-00','00:00:00','0','Select flight class','Group Transfers','0','','0','0','','','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,'','0000-00-00 00:00:00','','','0000-00-00','0',NULL,''),
(59,'FLL-9MRD2B8R','0000-00-00','00:00:00','0','Select flight class','Group Transfers','0','','0','0','','','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,'','0000-00-00 00:00:00','','','0000-00-00','0',NULL,''),
(60,'FLL-MQVX5CQC','0000-00-00','00:00:00','0','Select flight class','Group Transfers','0','','0','0','','','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,'','0000-00-00 00:00:00','','','0000-00-00','0',NULL,''),
(61,'FLL-N3SHD2Y4','0000-00-00','00:00:00','0','Select flight class','Group Transfers','0','','0','0','','','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,'','0000-00-00 00:00:00','','','0000-00-00','0',NULL,''),
(62,'FLL-WMN4P79X','0000-00-00','00:00:00','0','Select flight class','Group Transfers','0','','0','0','','','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,'','0000-00-00 00:00:00','','','0000-00-00','0',NULL,''),
(63,'FLL-56WBGXWZ','2016-12-23','00:00:00','0','Select flight class','Private Van, Mercedes, Mercedes, Hydrolic Vehicle','Array','Array','0','0','','','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,'','0000-00-00 00:00:00','','','0000-00-00','0',NULL,''),
(64,'FLL-88GCSZPD','0000-00-00','00:00:00','0','Select flight class','Mercedes, Hydrolic Vehicle, Hydrolic Vehicle, Mercedes','Array','Array','0','0','','','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,'','0000-00-00 00:00:00','','','0000-00-00','0',NULL,''),
(65,'FLL-3MHSFTRK','2016-12-17','00:00:00','0','Select flight class','Mercedes, Hydrolic Vehicle, Mercedes','Array','Array','0','0','','','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,'','0000-00-00 00:00:00','','','0000-00-00','0',NULL,''),
(66,'FLL-CWX36F54','2016-12-09','00:00:00','0','Select flight class','Mercedes, Hydrolic Vehicle, Hydrolic Vehicle, Private Van','Array','Array','0','0','','','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,'','0000-00-00 00:00:00','','','0000-00-00','0',NULL,''),
(67,'FLL-VDQYNHZW','2016-12-08','00:00:00','0','Select flight class','Hydrolic Vehicle, Mercedes/BMW, Private Car, Own transport','Array','Array','0','0','','','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,'','0000-00-00 00:00:00','','','0000-00-00','0',NULL,''),
(68,'FLL-VDQYNHZW','2016-12-31','00:00:00','0','Select flight class','Limousine, Private Van, Coach (BT), Mercedes/BMW, Hotel transfer','10','25','0','0','','','','','',0,0,0,0,0,0,0,'',NULL,'No',0,'','0000-00-00 00:00:00','','','0000-00-00','0',NULL,''),
(69,'FLL-VDQYNHZW','2016-12-21','00:00:00','0','Select flight class','Private Car, Mercedes, Hotel transfer, Mercedes, Mercedes','8','21','56','0','Room Type','','','','',0,0,0,0,0,0,0,'',NULL,'No',0,'','0000-00-00 00:00:00','','','0000-00-00','0',NULL,''),
(70,'FLL-VDQYNHZW','2016-12-22','00:00:00','0','Select flight class','Limousine, Coach (BT), Coach (BT), No Transfer, Mercedes','29','56','0','0','','','','','',0,0,0,0,0,0,0,'',NULL,'No',0,'','0000-00-00 00:00:00','','','0000-00-00','0',NULL,''),
(71,'FLL-G23HY4RZ','2016-12-09','00:00:17','12','1','','54','93','0','0','','','Additional Requirements','','',0,0,0,0,0,0,0,'',1,'No',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'');

/*Table structure for table `fll_arrivals_drivers` */

DROP TABLE IF EXISTS `fll_arrivals_drivers`;

CREATE TABLE `fll_arrivals_drivers` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `arr_transport` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fll_arrivals_drivers` */

/*Table structure for table `fll_arrivals_rooms` */

DROP TABLE IF EXISTS `fll_arrivals_rooms`;

CREATE TABLE `fll_arrivals_rooms` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `arrival_id` int(8) NOT NULL,
  `room_type` int(3) NOT NULL,
  `room_number` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

/*Data for the table `fll_arrivals_rooms` */

insert  into `fll_arrivals_rooms`(`id`,`arrival_id`,`room_type`,`room_number`,`last_name`) values 
(1,48,93,'#room3','Khan'),
(2,48,93,'#room5','Jillani'),
(3,49,72,'Room#1','Last#1'),
(4,49,72,'Room#2','Last#2'),
(5,50,72,'Room#1','Last#1'),
(6,50,72,'Room#2','Last#2'),
(7,50,72,'Room#3','Last#3'),
(8,50,73,'Room#4','Last#4'),
(9,50,71,'Room#5','Last#5'),
(10,51,72,'Room#1','Last#1'),
(11,51,72,'Room#2','Last#2'),
(12,51,72,'Room#3','Last#3'),
(13,51,73,'Room#4','Last#4'),
(14,51,71,'Room#5','Last#5'),
(15,52,72,'Room#1','Last#1'),
(16,52,72,'Room#2','Last#2'),
(17,52,72,'Room#3','Last#3'),
(18,52,73,'Room#4','Last#4'),
(19,52,71,'Room#5','Last#5'),
(20,53,72,'Room#1','Last#1'),
(21,53,72,'Room#2','Last#2'),
(22,53,72,'Room#3','Last#3'),
(23,53,73,'Room#4','Last#4'),
(24,53,71,'Room#5','Last#5'),
(25,54,0,'',''),
(26,55,0,'',''),
(27,56,79,'Room@1',''),
(28,56,76,'Room@2',''),
(29,56,75,'Room@3',''),
(30,57,55,'Room#32343','Haider'),
(31,58,0,'',''),
(32,59,0,'',''),
(33,60,0,'',''),
(34,61,0,'',''),
(35,62,0,'',''),
(36,63,0,'',''),
(37,64,0,'',''),
(38,65,0,'',''),
(39,66,0,'',''),
(40,67,0,'',''),
(41,68,0,'',''),
(42,69,0,'',''),
(43,70,0,'',''),
(44,71,0,'','');

/*Table structure for table `fll_arrivals_transports` */

DROP TABLE IF EXISTS `fll_arrivals_transports`;

CREATE TABLE `fll_arrivals_transports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arrival_id` int(10) unsigned NOT NULL,
  `transport_mode` varchar(100) NOT NULL,
  `vehicle` int(8) unsigned DEFAULT NULL,
  `driver` int(8) unsigned DEFAULT NULL,
  `luggage_vehicle` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `fll_arrivals_transports` */

insert  into `fll_arrivals_transports`(`id`,`arrival_id`,`transport_mode`,`vehicle`,`driver`,`luggage_vehicle`) values 
(1,63,'0',25,10,0),
(2,63,'0',0,19,0),
(3,63,'0',0,29,0),
(4,63,'0',0,45,0),
(5,64,'0',26,0,0),
(6,64,'0',23,11,0),
(7,64,'0',20,8,0),
(8,64,'0',56,8,0),
(9,65,'Mercedes',25,10,0),
(10,65,'Hydrolic Vehicle',93,54,0),
(11,65,'Mercedes',93,54,0),
(12,66,'Mercedes',23,8,0),
(13,66,'Hydrolic Vehicle',73,41,0),
(14,66,'Hydrolic Vehicle',25,10,0),
(15,66,'Private Van',56,29,0),
(16,67,'Hydrolic Vehicle',26,11,1),
(17,67,'Mercedes/BMW',23,8,0),
(18,67,'Private Car',59,31,0),
(19,67,'Own transport',73,41,0),
(20,68,'Limousine',56,29,0),
(21,68,'Private Van',58,30,0),
(22,68,'Coach (BT)',58,30,0),
(23,68,'Mercedes/BMW',21,8,0),
(24,68,'Hotel transfer',0,0,0);

/*Table structure for table `fll_bugs` */

DROP TABLE IF EXISTS `fll_bugs`;

CREATE TABLE `fll_bugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bug_title` varchar(255) NOT NULL,
  `page` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `reporter` varchar(255) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `fll_bugs` */

insert  into `fll_bugs`(`id`,`bug_title`,`page`,`details`,`reporter`,`active`) values 
(1,'Email Not working on Bug','http://localhost/flights_project/bumblebee-fll/bug-report.php','When we report a bug, it should be emailed.','Creative Tech',1),
(2,'but','url','detail','Creative Tech',1),
(3,'tet','url','details','Creative Tech',1),
(4,'tet','url','details','Creative Tech',1),
(5,'tet','url','details','Creative Tech',1),
(6,'tet','url','details','Creative Tech',1),
(7,'tet','url','details','Creative Tech',1),
(8,'tet','url','details','Creative Tech',1),
(9,'tet','url','details','Creative Tech',1),
(10,'tet','url','details','Creative Tech',1),
(11,'tet','url','details','Creative Tech',1),
(12,'tet','url','details','Creative Tech',1),
(13,'tet','url','details','Creative Tech',1),
(14,'tet','url','details','Creative Tech',1),
(15,'tet','url','details','Creative Tech',1),
(16,'tet','url','details','Creative Tech',1),
(17,'tet','url','details','Creative Tech',1),
(18,'tet','url','details','Creative Tech',1),
(19,'Bug Title','URL','bug details','Creative Tech',1);

/*Table structure for table `fll_clientreqs` */

DROP TABLE IF EXISTS `fll_clientreqs`;

CREATE TABLE `fll_clientreqs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reqs` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `fll_clientreqs` */

insert  into `fll_clientreqs`(`id`,`reqs`) values 
(1,'Lounge voucher'),
(2,'Car hire'),
(3,'Pre booked excursion'),
(4,'Flowers/Chocolate'),
(5,'Rum punch kit/Spice Kit'),
(6,'Wine/Champange');

/*Table structure for table `fll_departures` */

DROP TABLE IF EXISTS `fll_departures`;

CREATE TABLE `fll_departures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

/*Data for the table `fll_departures` */

insert  into `fll_departures`(`id`,`ref_no_sys`,`dpt_date`,`dpt_time`,`dpt_flight_no`,`flight_class`,`dpt_transport`,`dpt_driver`,`dpt_vehicle`,`dpt_pickup`,`dpt_dropoff`,`dpt_pickup_time`,`dpt_notes`,`dpt_transport_notes`,`dpt_main`,`dpt_jet_center`) values 
(1,'FLL-79SWJNDJ','2016-09-09',103,'6','2','Private Car','10','25','56','4','16:10','','Departure &amp; Transport notes',0,0),
(2,'FLL-KC8FTDZ4','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','18:30','','',1,0),
(3,'FLL-H4V375X3','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','18:55','','',1,0),
(4,'FLL-H4V375X3','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','18:55','','',0,0),
(5,'FLL-6PD9PHPQ','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','19:15','','',1,0),
(6,'FLL-H3WPVNKS','2016-10-08',6,'6','2','Hotel transfer','17','35','12','Dropoff Location','13:00','','Departure &amp; Transport notes',1,0),
(7,'FLL-W9Z8BT9V','2016-11-10',0,'0','Select flight class','','0','','5','12','12:35','','',1,0),
(8,'FLL-8B3MPJWW','2016-11-05',17,'12','5','Hotel transfer','17','35','8','9','13:20','','Departure &amp; Transport notes',1,0),
(9,'FLL-BKHXR7XV','2016-11-07',77,'49','1','Group Transfers, Coach (BT)','27','54','4','56','16:30','','Departure &amp; Transport notes Departure &amp; Transport notes Departure &amp; Transport notes Departure &amp; Transport notes Departure &amp; Transport notes ',1,0),
(10,'FLL-QZBBKJQC','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','16:25','','',1,0),
(11,'FLL-DY8JZZZ9','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','16:25','','',1,0),
(12,'FLL-FBZDTH5F','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','16:25','','',1,0),
(13,'FLL-NZZ69N4D','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','16:25','','',1,0),
(14,'FLL-WDCFMYZF','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','16:25','','',1,0),
(15,'FLL-PKZWFTJQ','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','16:25','','',1,0),
(16,'FLL-FJDY5DQX','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','16:25','','',1,0),
(17,'FLL-K4YQ9RBQ','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','16:25','','',1,0),
(18,'FLL-RFPDV89T','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','16:25','','',1,0),
(19,'FLL-HG5Y39G5','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','16:25','','',1,0),
(20,'FLL-RZ2T4X3R','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','16:25','','',1,0),
(21,'FLL-W93H2HMF','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','16:55','','',1,0),
(22,'FLL-WXNRKNXY','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','16:55','','',1,0),
(23,'FLL-NBKP33RJ','2016-11-29',22,'15','1','Group Transfers','17','35','4','Dropoff Location','11:10','','',1,0),
(24,'FLL-SNZ7DSW3','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','13:20','','',1,0),
(25,'FLL-R5JM29BV','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','17:45','','',1,0),
(26,'FLL-KDKBWS7M','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','17:45','','',1,0),
(27,'FLL-BMVFWZ49','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','18:20','','',1,0),
(28,'FLL-F42GDJWZ','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','10:10','','',1,0),
(29,'FLL-4KNDQ9VY','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','10:45','','',1,0),
(30,'FLL-MVK5QV82','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','10:25','','',1,0),
(31,'FLL-TWDSX5SV','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','10:40','','',1,0),
(32,'FLL-BMF9HD5T','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','10:40','','',1,0),
(33,'FLL-RYJF7DJW','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','10:45','','',1,0),
(34,'FLL-FXX7GW4Q','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','10:50','','',1,0),
(35,'FLL-YM3G4CHG','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','11:10','','',1,0),
(36,'FLL-BGR5BF4V','2016-11-10',0,'0','2','Private Car','61','101','Pickup Location','Dropoff Location','15:20','','',1,0),
(37,'FLL-JY2T3DRD','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','16:20','','',1,0),
(38,'FLL-WBTZDGZ3','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','16:20','','',1,0),
(39,'FLL-5P3MY3YQ','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','16:20','','',1,0),
(40,'FLL-JTQJSWG8','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','16:20','','',1,0),
(41,'FLL-QD9GBCZM','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','16:20','','',1,0),
(42,'FLL-27N25QGY','2016-11-12',17,'12','2','Coach (BT), Private Van, Hydrolic Vehicle','31','60','Pickup Location','9','10:20','','',1,1),
(43,'FLL-27N25QGY','2016-11-25',6,'6','2','Hydrolic Vehicle','69','109','Pickup Location','17','10:20','','',0,1),
(44,'FLL-9XD2ZCG5','2016-11-17',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','10:25','','',1,0),
(45,'FLL-9XD2ZCG5','2016-11-11',0,'0','Select flight class','','54','93','11','12','10:25','','',0,1),
(46,'FLL-9MRD2B8R','2016-12-16',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','10:05','','',1,0),
(47,'FLL-9MRD2B8R','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','10:05','','',0,0),
(48,'FLL-56WBGXWZ','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','13:35','','',1,0),
(49,'FLL-3MHSFTRK','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','14:20','','',1,0),
(50,'FLL-CWX36F54','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','16:30','','',1,0),
(51,'FLL-VDQYNHZW','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','17:10','','',1,0),
(52,'FLL-G23HY4RZ','0000-00-00',0,'0','Select flight class','','0','','Pickup Location','Dropoff Location','18:10','','',1,0);

/*Table structure for table `fll_departures_old` */

DROP TABLE IF EXISTS `fll_departures_old`;

CREATE TABLE `fll_departures_old` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `dpt_transport_notes` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fll_departures_old` */

/*Table structure for table `fll_flightclass` */

DROP TABLE IF EXISTS `fll_flightclass`;

CREATE TABLE `fll_flightclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `fll_flightclass` */

insert  into `fll_flightclass`(`id`,`class`) values 
(1,'First Class'),
(2,'Club Class'),
(3,'Business Class'),
(4,'Upper Class'),
(5,'Premium Economy'),
(6,'Economy'),
(7,'World Traveler'),
(8,'World Traveller Plus');

/*Table structure for table `fll_flights` */

DROP TABLE IF EXISTS `fll_flights`;

CREATE TABLE `fll_flights` (
  `id_flight` int(11) NOT NULL AUTO_INCREMENT,
  `flight_number` varchar(255) NOT NULL,
  PRIMARY KEY (`id_flight`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

/*Data for the table `fll_flights` */

insert  into `fll_flights`(`id_flight`,`flight_number`) values 
(1,'VS29'),
(2,'BA2155'),
(3,'AA1089'),
(4,'AA2393'),
(6,'AA1669'),
(7,'B6 1561'),
(8,'BW412'),
(9,'B6 661'),
(10,'LI772'),
(11,'LI390'),
(12,'AC966'),
(13,'WS2512'),
(14,'LI756'),
(15,'BW415'),
(16,'LI512'),
(17,'LI726'),
(18,'VS77'),
(19,'DE1258'),
(20,'LI523'),
(21,'LI769'),
(22,'BW466'),
(23,'LI738'),
(24,'LI560'),
(25,'LI362'),
(26,'LI771'),
(27,'LI391'),
(28,'BW414'),
(29,'LI371'),
(30,'LI760'),
(31,'LI521'),
(32,'BW457'),
(33,'DL483'),
(34,'DL697'),
(35,'BW458'),
(36,'BW459'),
(37,'BW456'),
(38,'TCX146P'),
(39,'US817'),
(40,'G3 7640'),
(41,'G3 7641'),
(42,'B6 1562'),
(43,'BW413'),
(44,'LI361'),
(45,'LI727'),
(46,'LI364'),
(47,'B6 662'),
(48,'LI755'),
(49,'AC967'),
(50,'VS30'),
(51,'WS2513'),
(52,'BA2154'),
(53,'LI768'),
(54,'LI513'),
(55,'VS78'),
(56,'DE1259'),
(57,'BW447'),
(58,'LI370'),
(59,'DL688'),
(60,'DL742'),
(61,'TCX147P'),
(62,'Vessel - Star Flyer');

/*Table structure for table `fll_flighttime` */

DROP TABLE IF EXISTS `fll_flighttime`;

CREATE TABLE `fll_flighttime` (
  `id_fltime` int(11) NOT NULL AUTO_INCREMENT,
  `id_flight` int(11) NOT NULL,
  `flight_time` varchar(255) NOT NULL,
  PRIMARY KEY (`id_fltime`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

/*Data for the table `fll_flighttime` */

insert  into `fll_flighttime`(`id_fltime`,`id_flight`,`flight_time`) values 
(1,3,'13:31'),
(2,3,'14:40'),
(3,4,'20:46'),
(6,6,'19:10'),
(7,1,'14:30'),
(8,2,'14:55'),
(9,7,'1:28'),
(10,7,'2:38'),
(12,8,'6:45'),
(13,9,'13:05'),
(14,10,'13:15'),
(15,11,'13:20'),
(16,11,'13:50'),
(17,12,'13:45'),
(18,13,'14:47'),
(19,13,'14:52'),
(20,13,'14:55'),
(21,14,'15:40'),
(22,15,'16:50'),
(23,15,'17:25'),
(24,16,'16:50'),
(25,16,'17:30'),
(26,17,'17:00'),
(27,18,'17:30'),
(28,19,'19:15'),
(29,20,'19:15'),
(30,20,'20:05'),
(31,20,'20:00'),
(32,20,'20:50'),
(33,21,'19:40'),
(34,21,'20:30'),
(35,22,'20:35'),
(36,22,'20:55'),
(37,23,'23:15'),
(38,24,'7:00'),
(39,24,'8:00'),
(40,25,'7:30'),
(41,26,'19:45'),
(42,26,'20:35'),
(43,27,'20:00'),
(44,27,'20:50'),
(45,28,'8:50'),
(46,28,'9:30'),
(47,29,'11:05'),
(48,30,'11:20'),
(49,31,'11:35'),
(50,31,'12:20'),
(51,32,'20:15'),
(52,32,'20:50'),
(53,33,'13:44'),
(54,34,'14:17'),
(55,35,'8:55'),
(56,35,'8:30'),
(57,36,'19:35'),
(58,36,'20:10'),
(59,37,'8:55'),
(60,37,'9:30'),
(61,38,'18:25'),
(62,39,'14:40'),
(63,39,'15:30'),
(64,40,'16:35'),
(65,40,'17:35'),
(66,41,'9:25'),
(67,41,'10:25'),
(68,42,'2:24'),
(69,42,'3:34'),
(70,42,'3:40'),
(71,43,'7:15'),
(72,44,'8:30'),
(73,45,'12:10'),
(74,46,'14:05'),
(75,47,'14:10'),
(76,48,'13:55'),
(77,49,'14:45'),
(78,50,'17:00'),
(79,51,'15:34'),
(80,51,'15:45'),
(81,52,'17:15'),
(82,53,'17:50'),
(83,54,'17:40'),
(84,55,'19:55'),
(85,56,'21:15'),
(86,57,'21:05'),
(87,57,'21:30'),
(88,58,'8:15'),
(89,59,'14:34'),
(90,60,'15:12'),
(91,61,'20:10'),
(92,7,'15:20'),
(93,9,'3:20'),
(94,42,'3:20'),
(96,7,'20:40'),
(97,7,'20:35'),
(98,7,'1:34'),
(99,42,'2:30'),
(100,42,'2:25'),
(101,42,'7:45'),
(102,42,'7:40'),
(103,6,'8:00'),
(104,62,'6:00');

/*Table structure for table `fll_fsft_touroperator` */

DROP TABLE IF EXISTS `fll_fsft_touroperator`;

CREATE TABLE `fll_fsft_touroperator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tour_operator` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=latin1 COMMENT='Tour Operators table';

/*Data for the table `fll_fsft_touroperator` */

insert  into `fll_fsft_touroperator`(`id`,`tour_operator`) values 
(1,'A & Kent'),
(2,'Abreu'),
(3,'Agaxtur BR'),
(4,'Alidays'),
(5,'Aspire'),
(6,'Aviva Group'),
(7,'Azure'),
(8,'British Airways'),
(9,'BAHolidays'),
(10,'Bailey Robinson'),
(11,'BeCuriou'),
(12,'Berge & Meer'),
(13,'Best Tours Italia'),
(14,'Blue Sky Luxury'),
(15,'Bookit'),
(16,'Caribbean Dest'),
(17,'Caribbean Island'),
(18,'CTS Horizons'),
(19,'CV Travel'),
(20,'Caribtours'),
(21,'City Discovery'),
(22,'Classic Collection'),
(23,'Classic Resorts'),
(24,'Colletts Resorts'),
(25,'Cox & Kings'),
(26,'Culsen Travel'),
(27,'Curitiba Tours'),
(28,'Designer Tours BR'),
(29,'Destinology'),
(30,'Diamond Air'),
(31,'Direct Bookings'),
(32,'EFR Travel'),
(33,'Eden Collection'),
(34,'Escapade Caribbean'),
(35,'Eso Travel'),
(36,'Eurasia HWT'),
(37,'Expressions'),
(38,'Exsus Travel'),
(39,'Fischer'),
(40,'Friendship Travel'),
(41,'Global Travel/Dest 2'),
(42,'Gold Medal'),
(43,'Golden Caribbean'),
(44,'Harlequin'),
(45,'Hays Travel'),
(46,'Holiday Place'),
(47,'Holiday Services'),
(48,'HolidayBeds (Ireland)'),
(49,'Individual Holidays'),
(50,'Intimate Caribbean Holidays'),
(51,'Key2Holidays'),
(52,'Kuoni Zurich'),
(53,'Kuoni France'),
(54,'Kuoni Netherlands'),
(55,'Kuoni Spain (Madrid)'),
(56,'Kuoni UK'),
(57,'Kuoni UK (WCC)'),
(58,'La Fabbrica'),
(59,'Latino Travel'),
(60,'Latitude'),
(61,'Lusso Travel'),
(62,'Luxury Holiday Tours'),
(63,'Luxurytrips'),
(64,'MLT Vacations'),
(65,'MotMot Travel'),
(66,'Mundy Cruising'),
(67,'Naar Tours'),
(68,'Noks Film'),
(69,'North American Travel'),
(70,'Online Travel'),
(71,'Only Exclusive'),
(72,'Owners Syndicate'),
(73,'Pelikan Rejser'),
(74,'Pink Pearl'),
(75,'Pleasant Holidays'),
(76,'Presona Travel'),
(77,'Prestbury WW'),
(78,'Pure Luxury'),
(79,'Quadrante'),
(80,'Real Holidays'),
(81,'Rockwell'),
(82,'St James Travel & Tours'),
(83,'Scott Dunn'),
(84,'Seasons in Style'),
(85,'Simpson Exclusive'),
(86,'Slattery Travel'),
(87,'Sunburst Vacations'),
(88,'Sunlinc'),
(89,'Sunmaster'),
(90,'Sunny Holidays'),
(91,'Sunset Travel Ltd'),
(92,'Sunway Holidays'),
(93,'Sunwing'),
(94,'TC Germany'),
(95,'TC Group'),
(96,'TC Signature'),
(97,'TC Sport'),
(98,'Team America'),
(99,'Thomas WW'),
(100,'Titan Travel Ltd'),
(101,'Tourist Club'),
(102,'Trailfinders'),
(103,'Travco LLP'),
(104,'Travel 2/4'),
(105,'Travel City'),
(106,'Travel Factory'),
(107,'Travel Trend'),
(108,'Travel Value'),
(109,'Travel2'),
(110,'Tropic Breeze'),
(111,'Tropic Sky'),
(112,'Tropical Dest'),
(113,'Tropical Locations'),
(114,'Tropical Tours'),
(115,'Tropicalement'),
(116,'Turquoise Holidays'),
(117,'Travel Counsellors'),
(118,'Ultimate Travel'),
(119,'Value Added Travel'),
(120,'Viator'),
(121,'Vicino E Lontano'),
(122,'Voyageurs Du Monde'),
(123,'W & O'),
(124,'WT Vacations'),
(125,'WeTravel2'),
(126,'Wedd in Paradise'),
(127,'West Jet'),
(128,'White sand weddings'),
(129,'Wilderness Explorers'),
(130,'Virtuoso'),
(131,'ITC'),
(132,'Carrier'),
(133,'World Travel Holdings'),
(134,'Island Villas'),
(135,'Blue Anglia'),
(136,'Altman'),
(137,'London Life & Casualty'),
(138,'London Life IRC'),
(139,'Soutterham Bank'),
(140,'Accra Beach Hotel'),
(141,'B Away'),
(142,'Cruiseline - Star Clippers');

/*Table structure for table `fll_guest` */

DROP TABLE IF EXISTS `fll_guest`;

CREATE TABLE `fll_guest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_name` varchar(255) NOT NULL,
  `ref_no_sys` varchar(12) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `adult` int(11) NOT NULL,
  `child_age` int(11) NOT NULL,
  `infant_age` int(11) NOT NULL,
  `pnr` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1 COMMENT='Guest table';

/*Data for the table `fll_guest` */

insert  into `fll_guest`(`id`,`title_name`,`ref_no_sys`,`first_name`,`last_name`,`adult`,`child_age`,`infant_age`,`pnr`) values 
(1,'','FLL-V3HNRKJM','','',0,0,0,''),
(2,'','FLL-WVP98BVX','','',0,0,0,''),
(3,'','FLL-FK9VMC8Q','','',0,0,0,''),
(4,'','FLL-TBD65BDZ','','',0,0,0,''),
(5,'','FLL-HFKGTDR9','','',0,0,0,''),
(6,'','FLL-KHHSJPTR','First','Last',0,2,12,'PNR'),
(7,'','FLL-GBQC7KFW','First','Last',0,2,12,'PNR'),
(8,'','FLL-27WHD5H9','First','Last',0,2,12,'PNR'),
(9,'','FLL-M5V78MN6','First','Last',0,2,12,'PNR'),
(10,'','FLL-9HB8D539','First','Last',0,2,12,'PNR'),
(11,'Ms','FLL-WNDV4T2N','Beenish','Iqbal',1,1,1,'3432234'),
(12,'Mrs','FLL-WNDV4T2N','First','Last',0,1,1,'332234'),
(13,'Mrs','FLL-WNDV4T2N','Maham','Aftab',0,1,1,''),
(14,'','FLL-WNDV4T2N','Akeeba','Khan',0,0,0,''),
(15,'Mr','FLL-BMG9HD3G','Beenish','Iqbal Afridi',0,0,0,'323'),
(16,'Ms','FLL-NG9DFG22','Beenish','Iqbal Afridi',0,1,1,'#2342'),
(17,'Mrs','FLL-79SWJNDJ','Beenish','Iqbal Afridi',1,1,1,'#2342'),
(18,'Ms','FLL-NG9DFG22','Maham','Aftab',1,0,0,'#3332'),
(19,'Nauman','FLL-6PD9PHPQ','Nauman','Khan',1,1,0,'#f342'),
(20,'Afaq','FLL-6PD9PHPQ','Afaq','Asim',0,2,1,'#PNR243'),
(21,'Iqbal','FLL-6PD9PHPQ','Iqbal','Shahid',0,0,0,'#PNR456'),
(22,'Mrs','FLL-H3WPVNKS','First','Last',0,0,0,'PNR'),
(23,'Miss','FLL-H3WPVNKS','','',0,0,0,''),
(24,'','FLL-W9Z8BT9V','','',0,0,0,''),
(25,'Ms','FLL-8B3MPJWW','Shumaila','Malik',1,0,0,'PNR#001'),
(26,'Mr','FLL-8B3MPJWW','Abul','Malik',1,0,0,'PNR#002'),
(27,'Mr','FLL-8B3MPJWW','Zain','ul Abidin',0,0,0,'PNR#101'),
(28,'Ms','FLL-8B3MPJWW','Zaina','Malik',0,0,0,'PNR#102'),
(29,'Mr','FLL-BKHXR7XV','Zaina','Malik',1,0,0,'#102'),
(30,'','FLL-QZBBKJQC','First2','Last2',0,0,0,'PNR2'),
(31,'','FLL-QZBBKJQC','Zaina','Malik',0,0,0,'#102'),
(32,'','FLL-DY8JZZZ9','First2','Last2',0,0,0,'PNR2'),
(33,'','FLL-DY8JZZZ9','Zaina','Malik',0,0,0,'#102'),
(34,'','FLL-FBZDTH5F','First2','Last2',0,0,0,'PNR2'),
(35,'','FLL-FBZDTH5F','Zaina','Malik',0,0,0,'#102'),
(36,'','FLL-NZZ69N4D','First2','Last2',0,0,0,'PNR2'),
(37,'','FLL-NZZ69N4D','Zaina','Malik',0,0,0,'#102'),
(38,'','FLL-WDCFMYZF','First2','Last2',0,0,0,'PNR2'),
(39,'','FLL-WDCFMYZF','Zaina','Malik',0,0,0,'#102'),
(40,'','FLL-PKZWFTJQ','First2','Last2',0,0,0,'PNR2'),
(41,'','FLL-PKZWFTJQ','Zaina','Malik',0,0,0,'#102'),
(42,'','FLL-FJDY5DQX','First2','Last2',0,0,0,'PNR2'),
(43,'','FLL-FJDY5DQX','Zaina','Malik',0,0,0,'#102'),
(44,'','FLL-K4YQ9RBQ','First2','Last2',0,0,0,'PNR2'),
(45,'','FLL-K4YQ9RBQ','Zaina','Malik',0,0,0,'#102'),
(46,'','FLL-RFPDV89T','First2','Last2',0,0,0,'PNR2'),
(47,'','FLL-RFPDV89T','Zaina','Malik',0,0,0,'#102'),
(48,'','FLL-HG5Y39G5','First2','Last2',0,0,0,'PNR2'),
(49,'','FLL-HG5Y39G5','Zaina','Malik',0,0,0,'#102'),
(50,'','FLL-RZ2T4X3R','First2','Last2',0,0,0,'PNR2'),
(51,'','FLL-RZ2T4X3R','Zaina','Malik',0,0,0,'#102'),
(52,'Mr','FLL-W93H2HMF','Zaina1','Malik',0,0,0,'#102'),
(53,'Ms','FLL-W93H2HMF','Zaina2','Malik',0,0,0,'#102'),
(54,'Ms','FLL-W93H2HMF','Zaina3','Malik',0,0,0,'#102'),
(55,'Mr','FLL-WXNRKNXY','Zaina1','Malik',0,0,0,'#102'),
(56,'Ms','FLL-WXNRKNXY','Zaina2','Malik',0,0,0,'#102'),
(57,'Ms','FLL-WXNRKNXY','Zaina3','Malik',0,0,0,'#102'),
(58,'Mr','FLL-NBKP33RJ','First','Last',0,0,0,'Guest PNR'),
(59,'Mr','FLL-NBKP33RJ','Second','Last',0,0,0,'Guest PNR'),
(60,'Mr','FLL-NBKP33RJ','Third','Last',0,0,0,'Guest PNR'),
(61,'','FLL-SNZ7DSW3','','',0,0,0,''),
(62,'','FLL-R5JM29BV','','',0,0,0,''),
(63,'','FLL-KDKBWS7M','','',0,0,0,''),
(64,'','FLL-BMVFWZ49','','',0,0,0,''),
(65,'Mr','FLL-F42GDJWZ','','',0,0,0,''),
(66,'Mr','FLL-4KNDQ9VY','','',0,0,0,''),
(67,'','FLL-MVK5QV82','','',0,0,0,''),
(68,'','FLL-TWDSX5SV','','',0,0,0,''),
(69,'Mr','FLL-SJ7WKRDQ','','',0,0,0,''),
(70,'Mr','FLL-BMF9HD5T','','',0,0,0,''),
(71,'','FLL-X7KPGJTY','','',0,0,0,''),
(72,'','FLL-RYJF7DJW','','',0,0,0,''),
(73,'Mr','FLL-FXX7GW4Q','','',0,3,0,''),
(74,'','FLL-YM3G4CHG','','',0,0,0,''),
(75,'','FLL-BGR5BF4V','','',0,0,0,''),
(76,'','FLL-JY2T3DRD','','',0,0,0,''),
(77,'','FLL-WBTZDGZ3','','',0,0,0,''),
(78,'','FLL-5P3MY3YQ','','',0,0,0,''),
(79,'','FLL-JTQJSWG8','','',0,0,0,''),
(80,'','FLL-QD9GBCZM','','',0,0,0,''),
(81,'','FLL-27N25QGY','','',0,0,0,''),
(82,'','FLL-9XD2ZCG5','','',0,0,0,''),
(83,'','FLL-D22V2B6V','','',0,0,0,''),
(84,'Ms','FLL-CBX3JB72','Beenish','Haider',0,0,0,''),
(85,'','FLL-P4BQDSGM','','',0,0,0,''),
(86,'','FLL-9MRD2B8R','','',0,0,0,''),
(87,'','FLL-MQVX5CQC','','',0,0,0,''),
(88,'','FLL-N3SHD2Y4','','',0,0,0,''),
(89,'','FLL-WMN4P79X','','',0,0,0,''),
(90,'','FLL-56WBGXWZ','','',0,0,0,''),
(91,'','FLL-88GCSZPD','','',0,0,0,''),
(92,'','FLL-3MHSFTRK','','',0,0,0,''),
(93,'','FLL-CWX36F54','','',0,0,0,''),
(94,'','FLL-VDQYNHZW','','',0,0,0,''),
(95,'','FLL-G23HY4RZ','','',0,0,0,'');

/*Table structure for table `fll_loc_coast` */

DROP TABLE IF EXISTS `fll_loc_coast`;

CREATE TABLE `fll_loc_coast` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `coast` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `fll_loc_coast` */

insert  into `fll_loc_coast`(`id`,`coast`) values 
(1,'East Coast'),
(2,'West Coast'),
(3,'North Coast'),
(4,'South Coast');

/*Table structure for table `fll_location` */

DROP TABLE IF EXISTS `fll_location`;

CREATE TABLE `fll_location` (
  `id_location` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `zone` int(4) NOT NULL DEFAULT '0',
  `sorting_order` varchar(255) NOT NULL,
  PRIMARY KEY (`id_location`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=latin1;

/*Data for the table `fll_location` */

insert  into `fll_location`(`id_location`,`name`,`zone`,`sorting_order`) values 
(1,'Fairmont Royal Pavilion',2,''),
(2,'Sandals Barbados',4,''),
(3,'Tamarind - Elegant',2,''),
(4,'Accra Beach Hotel',4,''),
(5,'All Seasons Resorts',2,''),
(7,'Amaryllis Beach Resorts',4,''),
(8,'Aquatica',4,''),
(9,'Atlanits Hotel',1,''),
(10,'Barbados Beach Club',4,''),
(11,'Beach View',2,''),
(12,'Blue Orchid Beach Hotel',4,''),
(13,'Bougainvillea Beach Resorts',4,''),
(14,'Butterfly Beach Hotel',4,''),
(15,'Cobblers Cove',3,''),
(16,'Coconut Court',4,''),
(17,'Colony Club Hotel - Elegant',2,''),
(18,'Coral Mist Beach Hotel',4,''),
(19,'Coral Reef Club',2,''),
(20,'Coral Sands Beach Resort',4,''),
(21,'Crystal Cove Hotel - Elegant',2,''),
(22,'Discovery Bay Hotel',2,''),
(23,'Divi Southwinds Beach Resorts',4,''),
(24,'Hilton Barbados',4,''),
(25,'Little Arches Hotel',4,''),
(26,'Little Good Harbour',2,''),
(27,'Mango Bay Hotel &amp; Beach Club',2,''),
(28,'Marriott Courtyard',4,''),
(29,'Ocean Two Resort &amp; Residences',4,''),
(30,'Pirates Inn',4,''),
(31,'Port St. Charles',3,''),
(32,'Rostrevor Apartments Hotel',4,''),
(33,'Royal Westmoreland',2,''),
(34,'Sandy Lane Hotel',2,''),
(35,'Savannah Hotel',4,''),
(36,'Sea Breeze Beach Hotel',4,''),
(37,'Settlers Beach',2,''),
(38,'Silver Point Hotel',4,''),
(39,'South Beach Resort &amp; Vacation Club',4,''),
(40,'South Gap Hotel',4,''),
(41,'Southern Palms Beach Club',4,''),
(42,'Sugar Cane Club Hotel &amp; Spa',3,''),
(43,'The Club Barbados ',2,''),
(44,'The Crane Beach',1,''),
(45,'The House - Elegant',2,''),
(46,'The Sandpiper Hotel',2,''),
(47,'Time Out At The Gap',4,''),
(48,'Treasure Beach Hotel',2,''),
(49,'Turtle Beach hotel - Elegant',4,''),
(50,'Waves Hotel &amp; Spa',2,''),
(51,'Worthing Court Apartment Hotel',4,''),
(52,'Yellow Bird Hotel',4,''),
(55,'Dover Beach Hotel',4,''),
(56,'Airport',4,''),
(57,'Seaport',0,''),
(59,'Z - Cove Spring',2,''),
(60,'Z - Dene Court Villa',2,''),
(61,'Z - Villa Elsewhere',2,''),
(62,'Z - Land Fall Villa',2,''),
(63,'Z - Mon Caprice',2,''),
(64,'Z - Porters Great House',3,''),
(65,'Z - Saramanda',3,''),
(66,'Z - Jane&#039;s Harbour',2,''),
(67,'Z - Trade Winds',2,''),
(69,'Port Ferdinand',3,''),
(70,'St. Peters Bay',3,''),
(71,'Z - Alan Bay Cottage',0,''),
(72,'Z - Bluff House',0,''),
(73,'Z - Alleyne Aguilar &amp; Altman Ltd',0,''),
(75,'Z - Land Mark Cottage',0,''),
(76,'Z - Lascelles House',0,''),
(77,'Z - Leamington Cottage',0,''),
(78,'Z - Leamington House',0,''),
(79,'Z - Mahogany House',0,''),
(80,'Z - Merlin Bay #1',0,''),
(81,'Z - Milord',0,''),
(82,'Z - Moon Reach Villa',0,''),
(83,'Z - Mullins Hill',0,''),
(84,'Z - Mullins View',0,''),
(85,'Z - Nelson Gay',0,''),
(86,'Z - Nirvana',0,''),
(87,'Z - Nutmeg',0,''),
(88,'Z - Oceans Edge',0,''),
(89,'Z - Overlook',3,''),
(90,'Z - Osyter Bay ',2,''),
(91,'Z - Pink Cottage',0,''),
(92,'Z - Port St.Charles Villas',3,''),
(93,'Z - Reed House',0,''),
(94,'Z - Penthouse',0,''),
(95,'Z - Ground Floor Unit',0,''),
(96,'Z - Sandbox Villa',0,''),
(98,'Z - Sara Moon',0,''),
(99,'Z - Sea Horse Villa',0,''),
(100,'Z - Sea Isle Villa',0,''),
(101,'Z - Sea Scape House',0,''),
(102,'Z - Secret Garden',0,''),
(103,'Z - Senderlea',0,''),
(104,'Z - Spring Head',0,''),
(105,'Z - Sundown',0,''),
(106,'Z - Tara',0,''),
(107,'Z- Tamarind Cottage',0,''),
(108,'Z - Turtle Nest',0,''),
(109,'Z - Turtle Reach',0,''),
(110,'Z - Valial',0,''),
(112,'Z - Villa Lagoon',0,''),
(113,'Z - Villa Melissa',0,''),
(114,'Z - Villas on the Beach',0,''),
(115,'Z - Villa St. Lucy',0,''),
(116,'Z - Vistamar',0,''),
(117,'Z - Wales End',0,''),
(118,'Z - Waverly Villa #1',0,''),
(119,'Z - Westshore',0,''),
(120,'Z - Westhaven',0,''),
(121,'Z - White Caps',0,''),
(122,'Z - White gates',0,''),
(123,'Z - Windward',0,''),
(124,'Z - Y Not',0,''),
(125,'Z - Jacaranda',0,''),
(126,'Z - The Dream',0,''),
(127,'Z - Summerland Villas',0,''),
(128,'Z - Villa Bonavista',0,''),
(129,'Z - High Trees',0,'');

/*Table structure for table `fll_luggage_vehicle` */

DROP TABLE IF EXISTS `fll_luggage_vehicle`;

CREATE TABLE `fll_luggage_vehicle` (
  `id` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `fll_luggage_vehicle` */

insert  into `fll_luggage_vehicle`(`id`,`vehicle`) values 
(1,'Luggage Car'),
(2,'Luggage Van'),
(3,'Luggage Truck');

/*Table structure for table `fll_rep_services` */

DROP TABLE IF EXISTS `fll_rep_services`;

CREATE TABLE `fll_rep_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `fll_rep_services` */

insert  into `fll_rep_services`(`id`,`service`) values 
(1,'Meet & Greet Service'),
(2,'Full Rep Service'),
(3,'No Rep Service'),
(4,'Telephone Service'),
(5,'Intrasit Service');

/*Table structure for table `fll_reps` */

DROP TABLE IF EXISTS `fll_reps`;

CREATE TABLE `fll_reps` (
  `id_rep` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_rep`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `fll_reps` */

insert  into `fll_reps`(`id_rep`,`name`) values 
(1,'Allan Grannum'),
(2,'Nikki Grannum'),
(3,'Rhema Daisley'),
(4,'Shavanare Oliver'),
(5,'Autumn Crichlow'),
(6,'Sandra Cheeseman'),
(7,'Gloria Garnes'),
(8,'Janet Armstrong'),
(9,'Carroll Hooper'),
(10,'Rosaline Francis'),
(11,'Susan Parris'),
(12,'Natalia Nunes'),
(13,'Qwayne Ifill'),
(14,'Sylvia Boxhill'),
(15,'Francisca Deane'),
(16,'Carolyn Blackman'),
(17,'Cheryl Sillivan'),
(18,'Rose Millington'),
(19,'Marion Clarke'),
(20,'Berit Jordan'),
(21,'Jenny Banfield'),
(22,'Roslyn Sardine'),
(23,'Shanad Snagg'),
(24,'Antoinette John');

/*Table structure for table `fll_reptype` */

DROP TABLE IF EXISTS `fll_reptype`;

CREATE TABLE `fll_reptype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rep_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `fll_reptype` */

insert  into `fll_reptype`(`id`,`rep_type`) values 
(1,'Meet & Greet'),
(2,'Full Rep'),
(3,'No Rep'),
(4,'Italian Rep'),
(5,'German Rep'),
(6,'Spanish Rep'),
(7,'French Rep'),
(8,'Russian Rep'),
(9,'Intransit'),
(10,'Telephone Service');

/*Table structure for table `fll_resdrivers` */

DROP TABLE IF EXISTS `fll_resdrivers`;

CREATE TABLE `fll_resdrivers` (
  `id_driver` int(11) NOT NULL AUTO_INCREMENT,
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
  `res_type` int(11) NOT NULL,
  PRIMARY KEY (`id_driver`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

/*Data for the table `fll_resdrivers` */

insert  into `fll_resdrivers`(`id_driver`,`transport`,`vehicle`,`ref_no_sys`,`adult`,`child`,`infant`,`tour_operator`,`location`,`pickup_time`,`comments`,`rate`,`flight_time`,`flight_no`,`infant_seats`,`child_seats`,`booster_seats`,`title_name`,`first_name`,`last_name`,`transport_date`,`res_type`) values 
(1,61,101,'FLL-V3HNRKJM',2,2,2,2,0,'93','Transport here..','25%','93','9',0,0,0,'Mr','Haider','Hassan','2016-08-27',1),
(2,61,101,'FLL-WVP98BVX',2,2,2,2,0,'93','Transport here..','25%','93','9',0,0,0,'Mr','Haider','Hassan','2016-08-27',1),
(3,61,101,'FLL-FK9VMC8Q',2,2,2,2,0,'93','Transport here..','25%','93','9',0,0,0,'Mr','Haider','Hassan','2016-08-27',1),
(4,61,101,'FLL-TBD65BDZ',2,2,2,2,0,'93','Transport here..','25%','93','9',0,0,0,'Mr','Haider','Hassan','2016-08-27',1),
(5,61,101,'FLL-HFKGTDR9',2,2,2,2,0,'93','Transport here..','25%','93','9',0,0,0,'Mr','Haider','Hassan','2016-08-27',1),
(6,61,101,'FLL-KHHSJPTR',33,33,3,3,56,'3','arrival and tranport notes','25%','3','4',0,0,0,'Mr','Syed','Haider','2016-08-12',1),
(7,12,27,'FLL-KHHSJPTR',33,33,3,3,11,'16:45','Departure &amp; Transport notes','25%','17','12',0,0,0,'Mr','Syed','Haider','2016-08-18',2),
(8,61,101,'FLL-GBQC7KFW',33,33,3,3,56,'3','arrival and tranport notes','25%','3','4',0,0,0,'Mr','Syed','Haider','2016-08-12',1),
(9,12,27,'FLL-GBQC7KFW',33,33,3,3,11,'16:45','Departure &amp; Transport notes','25%','17','12',0,0,0,'Mr','Syed','Haider','2016-08-18',2),
(10,61,101,'FLL-27WHD5H9',33,33,3,3,56,'3','arrival and tranport notes','25%','3','4',0,0,0,'Mr','Syed','Haider','2016-08-12',1),
(11,12,27,'FLL-27WHD5H9',33,33,3,3,11,'16:45','Departure &amp; Transport notes','25%','17','12',0,0,0,'Mr','Syed','Haider','2016-08-18',2),
(12,61,101,'FLL-M5V78MN6',33,33,3,3,56,'3','arrival and tranport notes','25%','3','4',0,0,0,'Mr','Syed','Haider','2016-08-12',1),
(13,12,27,'FLL-M5V78MN6',33,33,3,3,11,'16:45','Departure &amp; Transport notes','25%','17','12',0,0,0,'Mr','Syed','Haider','2016-08-18',2),
(14,61,101,'FLL-9HB8D539',33,33,3,3,56,'3','arrival and tranport notes','25%','3','4',0,0,0,'Mr','Syed','Haider','2016-08-12',1),
(15,12,27,'FLL-9HB8D539',33,33,3,3,11,'16:45','Departure &amp; Transport notes','25%','17','12',0,0,0,'Mr','Syed','Haider','2016-08-18',2),
(16,10,25,'FLL-39XP48T2',0,0,0,0,57,'','','25%','','0',0,0,0,'','Akram','Durrani','',1),
(17,18,36,'FLL-39XP48T2',0,0,0,0,0,'09:50','','25%','6','6',0,0,0,'','Akram','Durrani','',2),
(18,10,25,'FLL-JZW46N3G',2,3,1,3,56,'17','Arrival &amp; Transport notes','25%','17','12',0,0,0,'Mr','ahsan ','DUrrani','2016-09-07',1),
(19,27,54,'FLL-JZW46N3G',2,3,1,3,5,'10:50','','25%','77','49',0,0,0,'Mr','ahsan ','DUrrani','2016-09-09',2),
(20,23,49,'FLL-WNDV4T2N',1,1,0,0,56,'17','Arrival &amp; Transport notes','25%','17','12',0,0,0,'Ms','Haider','Hassan','2016-09-08',1),
(21,10,25,'FLL-WNDV4T2N',1,1,0,0,4,'10:40','Departure &amp; Transport notes','25%','77','49',0,0,0,'Ms','Haider','Hassan','2016-09-15',2),
(22,61,101,'FLL-NG9DFG22',2,1,1,1,57,'3','Arr and transport Notes','25%','3','4',0,0,0,'Mr','Haider','Hassan','2016-09-28',1),
(23,61,101,'FLL-NG9DFG22',2,1,1,1,56,'13:30','departure and transport notes','25%','3','4',0,0,0,'Mr','Haider','Hassan','2016-09-20',2),
(24,54,0,'FLL-H3WPVNKS',1,1,1,1,56,'17','Arrival &amp; Transport notes','25%','17','12',0,0,0,'Mr','123','123','2017-01-27',1),
(25,17,35,'FLL-H3WPVNKS',1,1,1,1,12,'13:00','Departure &amp; Transport notes','25%','6','6',0,0,0,'Mr','123','123','2016-10-08',2),
(26,10,25,'FLL-W9Z8BT9V',0,0,0,1,56,'3','','25%','3','4',0,0,0,'Mr','Haider','Hassan','2016-12-16',1),
(27,61,101,'FLL-8B3MPJWW',2,2,2,2,56,'6','Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes','25%','6','6',0,0,0,'Mr','Own','Malik','2016-11-03',1),
(28,17,35,'FLL-8B3MPJWW',2,2,2,2,8,'13:20','Departure &amp; Transport notes','25%','17','12',0,0,0,'Mr','Own','Malik','2016-11-05',2),
(29,27,54,'FLL-BKHXR7XV',2,2,1,1,56,'6','Arrival &amp; Transport notes\r\nArrival &amp; Transport notes\r\nArrival &amp; Transport notes\r\nArrival &amp; Transport notes','25%','6','6',0,0,0,'Mr','Raza','Malik','2016-11-04',1),
(30,27,54,'FLL-BKHXR7XV',2,2,1,1,4,'16:30','Departure &amp; Transport notes Departure &amp; Transport notes Departure &amp; Transport notes Departure &amp; Transport notes Departure &amp; Transport notes ','25%','77','49',0,0,0,'Mr','Raza','Malik','2016-11-07',2),
(31,30,58,'FLL-NBKP33RJ',1,2,1,1,56,'1','','25%','1','3',0,0,0,'Mr','Amjad','Durrani','2016-11-11',1),
(32,17,35,'FLL-NBKP33RJ',1,2,1,1,4,'11:10','','25%','22','15',0,0,0,'Mr','Amjad','Durrani','2016-11-29',2),
(33,27,54,'FLL-SNZ7DSW3',0,0,0,1,57,'6','Arrival &amp; Transport notes\r\nArrival &amp; Transport notes\r\nArrival &amp; Transport notes\r\nArrival &amp; Transport notes','25%','6','6',0,0,0,'Ms','Anaar','Kali','2016-11-17',1),
(34,31,60,'FLL-4KNDQ9VY',0,0,0,1,56,'','Arrival &amp; Transport notes','25%','','0',0,0,0,'Mr','Afreen','Afreen','2016-11-02',1),
(35,8,23,'FLL-MVK5QV82',1,0,0,1,56,'77','Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; T','25%','77','49',0,0,0,'Mr','Momina','Afreen','2016-11-03',1),
(36,17,35,'FLL-BMF9HD5T',0,0,0,1,0,'103','Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes','25%','103','6',0,0,0,'Mr','Momina','MusteAhsan','2016-11-17',1),
(37,27,0,'FLL-RYJF7DJW',1,0,0,1,0,'59','Arrival &amp; Transport notes','25%','59','37',0,0,0,'Ms','Momina','Ali','2016-11-09',1),
(38,54,93,'FLL-BGR5BF4V',3,1,0,1,56,'','Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes','25%','','0',0,0,0,'Mr','Haider','Hassan','2016-11-10',1),
(39,61,101,'FLL-BGR5BF4V',3,1,0,1,0,'15:20','','25%','','0',0,0,0,'Mr','Haider','Hassan','2016-11-10',2),
(40,27,54,'FLL-JY2T3DRD',0,0,0,1,56,'69','Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes','25%','69','42',0,0,0,'Mr','Haider','Hassan','2016-11-11',1),
(41,27,54,'FLL-WBTZDGZ3',0,0,0,1,56,'69','Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes','25%','69','42',0,0,0,'Mr','Haider','Hassan','2016-11-11',1),
(42,27,54,'FLL-5P3MY3YQ',0,0,0,1,56,'69','Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes','25%','69','42',0,0,0,'Mr','Haider','Hassan','2016-11-11',1),
(43,27,54,'FLL-JTQJSWG8',0,0,0,1,56,'69','Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes','25%','69','42',0,0,0,'Mr','Haider','Hassan','2016-11-11',1),
(44,27,54,'FLL-QD9GBCZM',0,0,0,1,56,'69','Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes','25%','69','42',0,0,0,'Mr','Haider','Hassan','2016-11-11',1),
(45,31,60,'FLL-27N25QGY',0,0,0,1,0,'10:20','','25%','17','12',0,0,0,'Mr','Haider','Hassan','2016-11-12',2),
(46,0,0,'FLL-56WBGXWZ',0,0,0,0,0,'','','25%','','0',0,0,0,'Mr','Haider','Hassan','2016-12-23',1),
(47,0,0,'FLL-88GCSZPD',0,0,0,0,0,'','','25%','','0',0,0,0,'Mr','Haider','Hassan','',1),
(48,0,0,'FLL-3MHSFTRK',0,0,0,0,0,'','','25%','','0',0,0,0,'Mr','Haider','Hassan','2016-12-17',1),
(49,0,0,'FLL-CWX36F54',0,0,0,0,0,'','','25%','','0',0,0,0,'Mr','Haider','Hassan','2016-12-09',1),
(50,0,0,'FLL-VDQYNHZW',0,0,0,0,0,'','','25%','','0',0,0,0,'Mr','Haider','HassAN','2016-12-08',1),
(51,54,93,'FLL-G23HY4RZ',0,0,0,0,0,'17','','25%','17','12',0,0,0,'Ms','Haider','Hassan','2016-12-09',1);

/*Table structure for table `fll_reservations` */

DROP TABLE IF EXISTS `fll_reservations`;

CREATE TABLE `fll_reservations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

/*Data for the table `fll_reservations` */

insert  into `fll_reservations`(`id`,`title_name`,`first_name`,`last_name`,`pnr`,`tour_operator`,`operator_code`,`tour_ref_no`,`adult`,`child`,`infant`,`tour_notes`,`fast_track`,`affiliates`,`arr_date`,`arr_time`,`arr_flight_no`,`flight_class`,`arr_transport`,`arr_driver`,`arr_vehicle`,`arr_pickup`,`arr_dropoff`,`room_type`,`rep_type`,`client_reqs`,`dpt_date`,`dpt_time`,`dpt_flight_no`,`dpt_transport`,`dpt_driver`,`dpt_vehicle`,`dpt_pickup`,`dpt_dropoff`,`dpt_pickup_time`,`dpt_notes`,`creation_date`,`created_by`,`modified_date`,`modified_by`,`ref_no_sys`,`assigned`,`rep`,`status`,`arr_transport_notes`,`dpt_transport_notes`,`arr_hotel_notes`,`ftnotify`,`infant_seats`,`child_seats`,`booster_seats`,`vouchers`,`assignment`,`cold_towel`,`bottled_water`,`dpt_flight_class`,`rooms`,`room_no`,`date_reconfirmed`,`reconf_with`,`total_guests`,`luggage_vehicle`,`fast_ref_no_sys`,`payment_type`,`payment_amount`) values 
(1,'Ms','Beth','Schultz','','142','Star Flyer','1423143',2,0,0,'Rep Notes Rep Notes Rep Notes Rep NotesRep Notes vv  Rep NotesRep NotesRep NotesRep NotesRep NotesRep NotesRep NotesRep NotesRep NotesRep NotesRep NotesRep NotesRep NotesRep NotesRep Notes',0,'','2015-11-08','104','62','Select flight class','Transport mode','','','57','4','','Representation','Additional Requirements','2015-11-11','103','6','Private Car','','','4','56','5:30','','2015-10-21 15:31:15','ShavanarÃ© Oliver','2016-09-02 14:43:06','Creative Tech','BGI-X7ZDPW79',0,'',1,'','','',0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'dfsds',0,'No',NULL,0,NULL),
(2,'Dr','FIrst','Haider','PNR443346','1','OperatorC3335','Ref#2343',1,2,1,'Rep Notes Rep Notes are awesome Rep Notes Rep Notes are awesome Rep Notes Rep Notes are awesome Rep Notes Rep Notes are awesome Rep Notes Rep Notes are awesome',0,'','2014-11-08','','0','Select flight class','','0','','0','0','','Representation','Additional Requirements','2014-11-11','','0','','4','','Pickup Location','Dropoff Location','17:30','','2016-08-31 17:41:42','Creative Tech','2017-01-06 14:03:40','Creative Tech','FLL-79SWJNDJ',0,'5',1,'','','',0,0,0,0,0,0,0,0,0,'','','2016-09-16 00:00:00','test',0,'No',NULL,0,NULL),
(3,'','Akram','Durrani','','Select tour operator','','',0,0,0,'',0,'','2013-11-08','','0','Select flight class','','10','25','57','4','150','Representation','Additional Requirements','2013-11-11','6','6','Mercedes/BMW','18','36','Pickup Location','Dropoff Location','09:50','','2016-09-01 09:54:16','Creative Tech','2016-09-20 16:42:49','Creative Tech','FLL-39XP48T2',0,'',1,'','','222',0,0,0,0,0,0,0,0,3,'2','22',NULL,NULL,0,'No',NULL,0,NULL),
(4,'','First','Last','','1','','',0,0,0,'Rep Notes Need to be viewedRep Notes Need to be viewedRep Notes Need to be viewedRep Notes Need to be viewedRep Notes Need to be viewedRep Notes Need to be viewedRep Notes Need to be viewedRep Notes Need to be viewedRep Notes Need to be viewed',0,'','0000-00-00','','0','Select flight class','','0','','0','0','','Representation','Additional Requirements','0000-00-00','','0','','5','','Pickup Location','56','09:55','ANotherDPT NOTESANotherDPT NOTESANotherDPT NOTESANotherDPT NOTESANotherDPT NOTESANotherDPT NOTESANotherDPT NOTESANotherDPT NOTES','2016-09-01 09:58:56','Creative Tech','2016-09-05 16:09:43','Creative Tech','FLL-9ZJKM76R',0,'',2,'arr transport Notesarr transport Notesarr transport Notesarr transport Notesarr transport Notesarr transport Notesarr transport Notesarr transport Notesarr transport Notesarr transport Notesarr transport Notesarr transport Notesarr transport Notes','dpt Transport Notes Dummydpt Transport Notes Dummydpt Transport Notes Dummydpt Transport Notes Dummydpt Transport Notes Dummydpt Transport Notes Dummy','Hotes Notes SHould be hereHotes Notes SHould be hereHotes Notes SHould be hereHotes Notes SHould be hereHotes Notes SHould be hereHotes Notes SHould be hereHotes Notes SHould be here',0,0,0,0,0,0,2,0,0,'','',NULL,NULL,0,'No',NULL,0,NULL),
(5,'Dr','FIrst','lAST','','1','#CodeBrandHere','#RefNumberHere',0,0,0,'Rep Notes',0,'','0000-00-00','','0','Select flight class','','0','','0','0','','Representation','Additional Requirements','0000-00-00','','0','','7','','Pickup Location','Dropoff Location','10:00','(dpt_notes = acc_notes) (dpt_notes = acc_notes) (dpt_notes = acc_notes) (dpt_notes = acc_notes) (dpt_notes = acc_notes) (dpt_notes = acc_notes) (dpt_notes = acc_notes) (dpt_notes = acc_notes) (dpt_notes = acc_notes) (dpt_notes = acc_notes) (dpt_notes = ac','2016-09-01 09:59:48','Creative Tech','2016-09-05 17:28:42','Creative Tech','FLL-JSSVCFRB',0,'test',1,'transport Notes transport Notes transport Notes transport Notes transport Notes transport Notes transport Notes transport Notes transport Notes transport Notes transport Notes transport Notes ','Dpt Notes','hotes Notes',0,0,0,0,0,0,2,2,0,'','',NULL,'test',0,'No',NULL,0,NULL),
(6,'','ahsan','Abbasi','','Select tour operator','','',0,0,0,'',0,'','0000-00-00','','0','Select flight class','','0','','0','0','','0','Additional Requirements','0000-00-00','','0','','4','','Pickup Location','56','10:05','','2016-09-01 10:02:01','Creative Tech','','','FLL-V73NM3N3',0,'',1,'','','',0,0,0,0,0,0,1,2,0,'','',NULL,'Another Name',0,'No',NULL,0,NULL),
(7,'','ahsan','Abbasi','','Select tour operator','','',0,0,0,'',0,'','0000-00-00','','0','Select flight class','','0','','0','0','','0','Additional Requirements','0000-00-00','','0','','4','','Pickup Location','Dropoff Location','10:05','','2016-09-01 10:05:25','Creative Tech','','','FLL-DCTDWGS8',0,'',1,'','','',0,0,0,0,0,0,1,2,0,'','','2016-09-16 00:00:00',NULL,0,'No',NULL,0,NULL),
(8,'','ahsan','Abbasi','','Select tour operator','','',0,0,0,'',0,'','0000-00-00','','0','Select flight class','','0','','0','0','','0','Additional Requirements','0000-00-00','','0','','4','','Pickup Location','Dropoff Location','10:05','','2016-09-01 10:08:00','Creative Tech','','','FLL-RCK992S8',0,'',1,'','','',0,0,0,0,0,0,2,3,0,'','','2016-09-09 00:00:00',NULL,0,'No',NULL,0,NULL),
(9,'','ahsan','Abbasi','','Select tour operator','','',0,0,0,'',0,'','0000-00-00','','0','Select flight class','','0','','0','0','','0','Additional Requirements','0000-00-00','','0','','4','','Pickup Location','Dropoff Location','10:05','','2016-09-01 10:10:57','Creative Tech','','','FLL-HVGQK2G4',0,'',1,'','','',0,0,0,0,0,0,2,2,0,'','','2014-10-07 00:00:00',NULL,0,'No',NULL,0,NULL),
(10,'','ahsan','Abbasi','','Select tour operator','','',0,0,0,'',0,'','0000-00-00','','0','Select flight class','','0','','0','0','','0','Additional Requirements','0000-00-00','','0','','4','','Pickup Location','56','10:05','','2016-09-01 10:31:42','Creative Tech','','','FLL-8HKF2DKT',0,'',1,'','','',0,0,0,0,0,0,1,2,0,'','',NULL,'Just Another Reconf With',0,'No',NULL,0,NULL),
(11,'','ahsan','Abbasi','','Select tour operator','','',0,0,0,'',0,'','0000-00-00','','0','Select flight class','','0','','0','0','','0','Additional Requirements','0000-00-00','','0','','4','','Pickup Location','Dropoff Location','10:05','','2016-09-01 10:33:49','Creative Tech','','','FLL-MBZ632NW',0,'',1,'','','',0,0,0,0,0,0,2,3,0,'','',NULL,NULL,0,'No',NULL,0,NULL),
(12,'','ahsan','Abbasi','','Select tour operator','','',0,0,0,'',0,'','0000-00-00','','0','Select flight class','','0','','0','0','','0','Additional Requirements','0000-00-00','','0','','4','','Pickup Location','57','10:05','','2016-09-01 10:34:10','Creative Tech','2017-01-06 14:24:53','Creative Tech','FLL-VD3HVJVJ',1,'11',1,'','','',0,0,0,0,0,0,1,2,0,'','',NULL,NULL,0,'No',NULL,0,NULL),
(13,'','ahsan','Abbasi','','Select tour operator','','',0,0,0,'',0,'','0000-00-00','','0','Select flight class','','0','','0','0','','0','Additional Requirements','0000-00-00','','0','','4','','Pickup Location','Dropoff Location','10:05','','2016-09-01 10:34:31','Creative Tech','','','FLL-Y4KB7CSY',0,'',1,'','','',0,0,0,0,0,0,2,0,0,'','',NULL,NULL,0,'No',NULL,0,NULL),
(14,'Mr','ahsan ','DUrrani','Passenger','3','#CodeBrandHere','#RefNumberHere',2,3,1,'Rep Notes',1,'','2016-09-07','17','12','6','Limousine, Mercedes/BMW','10','25','56','7','','1','Additional Requirements','2016-09-09','77','49','Private Car','27','54','5','5','10:50','','2016-09-01 10:48:58','Creative Tech','','','FLL-JZW46N3G',0,'',1,'Arrival &amp; Transport notes','','',1,0,0,0,0,0,0,0,2,'3','23',NULL,NULL,0,'No',NULL,0,NULL),
(15,'Ms','Haider','Hassan','PNR','Select tour operator','#CodeBrandHere','#RefNumberHere',1,1,0,'Rep NotesRep NotesRep NotesRep NotesRep NotesRep NotesRep NotesRep NotesRep Notes',1,'Affiliates','2016-09-08','17','12','1','Limousine','23','49','56','56','0','2','Additional Requirements','2016-09-15','77','49','Limousine','10','25','4','56','10:40','Accounting notesAccounting notesAccounting notesAccounting notesAccounting notesAccounting notesAccounting notesAccounting notesAccounting notes','2016-09-06 10:41:14','Creative Tech','2016-12-09 13:28:34','Creative Tech','FLL-WNDV4T2N',0,'5',1,'Arrival &amp; Transport notes','Departure &amp; Transport notes','Hotel notesHotel notesHotel notesHotel notesHotel notesHotel notesHotel notes',0,0,0,0,0,0,0,0,3,'1','54564',NULL,NULL,0,'No',NULL,0,NULL),
(16,'Mr','Haider','Hassan','23211321','2','#34322342','#3243243222',1,1,1,'Rep',0,'','0000-00-00','','0','Select flight class','','0','','0','0','','0','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','09:45','','2016-09-19 09:46:55','Creative Tech','','','FLL-BMG9HD3G',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,0,'No',NULL,0,NULL),
(17,'Mr','Haider','Hassan','PNR443345','1','OperatorC3334','Ref#2342',3,1,1,'Rep Notes',1,'','2016-09-28','3','4','1','Private Car','61','101','57','7','','0','Additional Requirements','2016-09-20','3','4','Hotel transfer','61','101','56','56','13:30','accounting notes','2016-09-20 14:20:11','Creative Tech','2017-01-06 10:45:38','Creative Tech','FLL-NG9DFG22',0,'1',1,'Arr and transport Notes','departure and transport notes','Hotel notes',1,0,0,0,0,0,0,0,4,'1','3234',NULL,NULL,0,'No',NULL,0,NULL),
(18,'Ms','First','Last','','Select tour operator','','',0,0,0,'',0,'','0000-00-00','','0','Select flight class','','0','','0','0','','0','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','18:30','','2016-10-04 18:41:21','Creative Tech','','','FLL-KC8FTDZ4',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,0,'No',NULL,0,NULL),
(19,'Mr','Haider','Hassan','','Select tour operator','','',0,0,0,'',0,'','0000-00-00','','0','Select flight class','','0','','0','0','','0','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','18:55','','2016-10-04 19:09:13','Creative Tech','','','FLL-H4V375X3',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,0,'No',NULL,0,NULL),
(20,'Mr','Sajid','Afridi','','1','#2321123','#RefNo',2,0,0,'',0,'','0000-00-00','','0','Select flight class','','0','','0','0','','0','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','19:15','','2016-10-04 19:15:09','Creative Tech','','','FLL-6PD9PHPQ',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,0,'No',NULL,0,NULL),
(21,'Mr','123','123','Syed Haider Hassan','1','#2321123','#RefNo',1,1,1,'Rep Notes',0,'','2017-01-27','17','12','6','Limousine','54','0','56','9','','2','Additional Requirements','2016-10-08','6','6','Hotel transfer','17','35','12','Dropoff Location','13:00','Accounting notes','2016-10-05 13:00:27','Creative Tech','2016-10-05 13:02:29','Creative Tech','FLL-H3WPVNKS',0,'17',1,'Arrival &amp; Transport notes','Departure &amp; Transport notes','Hotel notes',0,0,0,0,0,1,0,0,2,'1','Room3343',NULL,NULL,0,'No',NULL,0,NULL),
(22,'Mr','Haider','Hassan','#234','1','#33232','',0,0,0,'',1,'','2016-12-16','3','4','2','Private Car','10','25','56','56','','0','Additional Requirements','2016-11-10','','0','','0','','5','12','12:35','','2016-10-06 12:38:40','Creative Tech','2016-12-01 12:18:03','Creative Tech','FLL-W9Z8BT9V',0,'21',1,'','','',1,0,0,0,0,2,0,0,0,'4','#3432d',NULL,NULL,0,'No',NULL,0,NULL),
(23,'Mr','Own','Malik','PNR#001','2','#334','#334',2,2,2,'Rep Notes.',0,'','2016-11-03','6','6','3','Private Van','61','101','56','4','150','1','Additional Requirements','2016-11-05','17','12','Hotel transfer','17','35','8','9','13:20','Accounting notes','2016-11-01 13:41:52','Creative Tech','2017-01-06 14:30:32','Creative Tech','FLL-8B3MPJWW',1,'20',1,'Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes','Departure &amp; Transport notes','Hotel notes',0,0,0,0,0,0,0,0,5,'11','321',NULL,NULL,0,'No',NULL,0,NULL),
(24,'Mr','Raza','Malik','#PNR006','1','#Code231','Ref#3432',2,2,1,'Rep NotesRep Notes Rep NotesRep Notes Rep Notes Rep NotesRep NotesRep NotesRep NotesRep Notesv Rep Notes Rep NotesRep NotesRep NotesRep NotesRep NotesRep NotesRep NotesRep NotesRep NotesRep NotesRep NotesRep NotesRep NotesRep NotesRep NotesRep NotesRep No',1,'Affiliates','2016-11-04','6','6','1','Coach (BT), Hydrolic Vehicle','27','54','56','5','20','2','Additional Requirements','2016-11-07','77','49','Group Transfers, Coach (BT)','27','54','4','56','16:30','Accounting notes\r\nAccounting notes\r\nAccounting notes\r\nAccounting notes\r\nAccounting notes\r\nAccounting notes\r\n','2016-11-01 16:16:52','Creative Tech','2017-01-06 10:47:44','Creative Tech','FLL-BKHXR7XV',0,'14',1,'Arrival &amp; Transport notes\r\nArrival &amp; Transport notes\r\nArrival &amp; Transport notes\r\nArrival &amp; Transport notes','Departure &amp; Transport notes Departure &amp; Transport notes Departure &amp; Transport notes Departure &amp; Transport notes Departure &amp; Transport notes ','Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes Hotel notesHotel notes Hotel notesHotel notes Hotel notes  Hotel notes Hotel notes ',0,0,0,0,0,0,0,0,1,'6','#RoomNo',NULL,NULL,0,'No',NULL,0,NULL),
(25,'Select title','Haider','Hassan','','Select tour operator','','',0,0,0,'',1,'','0000-00-00','','0','Select flight class','','0','','0','0','','0','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','16:25','','2016-11-01 16:25:44','Creative Tech','','','FLL-QZBBKJQC',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,0,'No',NULL,0,NULL),
(26,'Select title','Haider','Hassan','','Select tour operator','','',0,0,0,'',1,'','0000-00-00','','0','Select flight class','','0','','0','0','','0','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','16:25','','2016-11-01 16:29:13','Creative Tech','','','FLL-DY8JZZZ9',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,0,'No',NULL,0,NULL),
(27,'Select title','Haider','Hassan','','Select tour operator','','',0,0,0,'',1,'','0000-00-00','','0','Select flight class','','0','','0','0','','0','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','16:25','','2016-11-01 16:30:58','Creative Tech','','','FLL-FBZDTH5F',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,0,'No',NULL,0,NULL),
(28,'Select title','Haider','Hassan','','Select tour operator','','',0,0,0,'',1,'','0000-00-00','','0','Select flight class','','0','','0','0','','0','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','16:25','','2016-11-01 16:35:08','Creative Tech','','','FLL-NZZ69N4D',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,0,'No',NULL,0,NULL),
(29,'Select title','Haider','Hassan','','Select tour operator','','',0,0,0,'',1,'','0000-00-00','','0','Select flight class','','0','','0','','','0','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','16:25','','2016-11-01 16:36:36','Creative Tech','','','FLL-WDCFMYZF',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,0,'No',NULL,0,NULL),
(30,'Select title','Haider','Hassan','','Select tour operator','','',0,0,0,'',1,'','0000-00-00','','0','Select flight class','','0','','0','','','0','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','16:25','','2016-11-01 16:38:14','Creative Tech','','','FLL-PKZWFTJQ',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,0,'No',NULL,0,NULL),
(31,'Select title','Haider','Hassan','','Select tour operator','','',0,0,0,'',1,'','0000-00-00','','0','Select flight class','','0','','0','','','0','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','16:25','','2016-11-01 16:40:45','Creative Tech','','','FLL-FJDY5DQX',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,0,'No',NULL,0,NULL),
(32,'Select title','Haider','Hassan','','Select tour operator','','',0,0,0,'',1,'','0000-00-00','','0','Select flight class','','0','','0','0','','0','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','16:25','','2016-11-01 16:43:02','Creative Tech','','','FLL-K4YQ9RBQ',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,0,'No',NULL,0,NULL),
(33,'Select title','Haider','Hassan','','Select tour operator','','',0,0,0,'',1,'','0000-00-00','','0','Select flight class','','0','','0','0','','0','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','16:25','','2016-11-01 16:44:47','Creative Tech','','','FLL-RFPDV89T',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,0,'No',NULL,0,NULL),
(34,'Select title','Haider','Hassan','','Select tour operator','','',0,0,0,'',1,'','0000-00-00','','0','Select flight class','','0','','0','0','','0','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','16:25','','2016-11-01 16:44:56','Creative Tech','','','FLL-HG5Y39G5',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,0,'No',NULL,0,NULL),
(35,'Select title','Haider','Hassan','','Select tour operator','','',0,0,0,'',1,'','0000-00-00','','0','Select flight class','','0','','0','0','','0','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','16:25','','2016-11-01 16:45:38','Creative Tech','','','FLL-RZ2T4X3R',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,0,'No',NULL,0,NULL),
(36,'Select title','Guest','Test','','Select tour operator','','',0,0,0,'',1,'','0000-00-00','','0','Select flight class','','0','','0','0','','0','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','16:55','','2016-11-01 16:55:32','Creative Tech','','','FLL-W93H2HMF',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,0,'No',NULL,0,NULL),
(37,'Select title','Guest','Test','','Select tour operator','','',0,0,0,'',1,'','0000-00-00','','0','Select flight class','','0','','0','0','','0','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','16:55','','2016-11-01 17:10:22','Creative Tech','','','FLL-WXNRKNXY',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,0,'No',NULL,0,NULL),
(38,'Mr','Amjad','Durrani','#haider','1','Operator Code/Brand','#RefNo3343',1,2,1,'Rep Notes',1,'#Affiliates222','2016-11-11','1','3','1','Limousine','30','58','56','20','88','0','Additional Requirements','2016-11-29','22','15','Group Transfers','17','35','4','Dropoff Location','11:10','\r\nAdd Fast track Reservation\r\nTour Details\r\nFirst name Last name\r\nPassenger name record (PNR)\r\nTour Operator\r\nDeprecated: mysql_connect(): The mysql extension is deprecated and will be removed in the future: use mysqli or PDO instead in D:\\wamp\\www\\flight','2016-11-17 11:13:32','Creative Tech','2017-01-06 14:12:12','Creative Tech','FLL-NBKP33RJ',1,'1',1,'','','',0,0,0,0,0,0,0,0,1,'','',NULL,NULL,3,'No',NULL,0,NULL),
(39,'Ms','Anaar','Kali','PNR#007','1','#003','Ref#9211',0,0,0,'',1,'420','2016-11-17','6','6','2','Private Car','27','54','57','5','20','0','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','13:20','','2016-11-17 13:39:09','Creative Tech','2017-01-06 10:49:55','Creative Tech','FLL-SNZ7DSW3',0,'14',1,'Arrival &amp; Transport notes\r\nArrival &amp; Transport notes\r\nArrival &amp; Transport notes\r\nArrival &amp; Transport notes','','Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes ',0,0,0,0,0,0,0,0,0,'12','#22',NULL,NULL,1,'No',NULL,0,NULL),
(40,'Ms','Neela','Begam','','Select tour operator','','',0,0,0,'',0,'','0000-00-00','','0','Select flight class','Group Transfers','0','','0','0','','6','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','17:45','','2016-11-17 17:44:06','Creative Tech','','','FLL-R5JM29BV',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,1,'No',NULL,0,NULL),
(41,'Ms','Gul','Khan','','Select tour operator','','',0,0,0,'',0,'','0000-00-00','','0','Select flight class','Group Transfers','0','','0','0','','','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','17:45','','2016-11-17 17:45:02','Creative Tech','','','FLL-KDKBWS7M',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,1,'No',NULL,0,NULL),
(42,'','ANeel','Abid','','Select tour operator','','',0,0,0,'',0,'','0000-00-00','','0','Select flight class','Group Transfers','0','','0','0','','','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','18:20','','2016-11-17 18:17:22','Creative Tech','','','FLL-BMVFWZ49',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,1,'No',NULL,0,NULL),
(43,'Mr','Anil','Kapoor','#321','1','OC#3433','Ref#3234',0,0,0,'Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes',0,'','0000-00-00','','0','Select flight class','Group Transfers','0','','0','0','','1, 2, 3, 4, 5, 6','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','10:10','','2016-11-18 10:14:01','Creative Tech','2017-01-06 14:12:12','Creative Tech','FLL-F42GDJWZ',1,'1',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,1,'Yes',NULL,0,NULL),
(44,'Mr','Afreen','Afreen','PNR#349','1','#CodeBrand','Reference',0,0,0,'Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes ',1,'','2016-11-02','','0','5','Mercedes','31','60','56','16','','1, 2, 3, 4, 6','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','10:45','','2016-11-22 11:22:57','Creative Tech','2017-01-06 14:30:32','Creative Tech','FLL-4KNDQ9VY',1,'20',1,'Arrival &amp; Transport notes','','Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes',1,0,0,0,0,0,0,0,0,'3','#3432d',NULL,NULL,1,'Yes',NULL,0,NULL),
(45,'Mr','Momina','Afreen','PNR#3432','1','CODE#LHV332','Ref#3323',1,0,0,'',1,'','2016-11-03','77','49','6','Mercedes/BMW','8','23','56','12','43','1, 3, 6','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','10:25','','2016-11-23 10:26:14','Creative Tech','','','FLL-MVK5QV82',0,'',1,'Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; T','','Hotel notes Hotel notes Hotel notes',1,0,0,0,0,0,0,0,0,'1','#3432d',NULL,NULL,1,'No',NULL,0,NULL),
(46,'Mr','First','Last','','Select tour operator','','',0,0,0,'',0,'','2016-11-24','70','42','Select flight class','Group Transfers','0','','0','0','','','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','10:40','','2016-11-23 10:39:16','Creative Tech','','','FLL-TWDSX5SV',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,1,'No',NULL,0,NULL),
(47,'Mr','Momina','MusteAhsan','PNR#3343','1','code#3343','Ref#3343',0,0,0,'Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes ',1,'','2016-11-17','103','6','1','Hydrolic Vehicle','17','35','0','0','','2','Additional Requirements, Pre booked excursion','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','10:40','','2016-11-23 10:43:44','Creative Tech','','','FLL-BMF9HD5T',0,'',1,'Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes','','',1,0,0,0,0,0,0,0,0,'4','#3432d',NULL,NULL,1,'No',NULL,0,NULL),
(48,'Ms','Momina','Ali','PNR#3453','1','code#3343','Ref#4444',1,0,0,'Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes',1,'','2016-11-09','59','37','6','Group Transfers','27','0','0','0','','1, 3','Pre booked excursion','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','10:45','','2016-11-23 10:49:06','Creative Tech','','','FLL-RYJF7DJW',0,'',1,'Arrival &amp; Transport notes','','',1,0,0,0,0,0,0,0,0,'','',NULL,NULL,1,'No',NULL,0,NULL),
(49,'Ms','Momina','Musteahsan','PNR#3433','1','Code#33343','Ref#444',1,0,0,'Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes',1,'','2016-11-23','','0','Select flight class','Group Transfers','0','','0','0','','0, 2','Lounge voucher, Flowers/Chocolate','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','10:50','','2016-11-23 10:52:51','Creative Tech','','','FLL-FXX7GW4Q',0,'',1,'','','',1,0,0,0,0,0,0,0,0,'','',NULL,NULL,1,'No',NULL,0,NULL),
(50,'Ms','First','Name','PNR#3343','1','Code#3343','Ref#3433',0,0,0,'',0,'','0000-00-00','','0','Select flight class','Group Transfers','0','','0','0','','','Car hire','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','11:10','','2016-11-23 11:13:16','Creative Tech','','','FLL-YM3G4CHG',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,1,'No',NULL,0,NULL),
(51,'Mr','Haider','Hassan','PNR#332','1','Code#3432','Ref#43454',3,1,0,'Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes',0,'','2016-11-10','','0','Select flight class','Group Transfers','54','93','56','21','','','Additional Requirements','2016-11-10','','0','Private Car','61','101','Pickup Location','Dropoff Location','15:20','','2016-11-29 15:23:14','Creative Tech','','','FLL-BGR5BF4V',0,'',1,'Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes','','',0,0,0,0,0,0,0,0,2,'','',NULL,NULL,1,'No',NULL,0,NULL),
(52,'Mr','Haider','Hassan','PNR#3432','1','Code#e343','Ref#3432',0,0,0,'Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes',0,'','2016-11-11','69','42','4','Coach (BT)','27','54','56','17','','1, 2, 3, 5','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','16:20','Accounting notes Accounting notesAccounting notes Accounting notes','2016-11-29 16:22:52','Creative Tech','2017-01-06 14:12:12','Creative Tech','FLL-JY2T3DRD',1,'1',1,'Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes','','Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,1,'No',NULL,0,NULL),
(53,'Mr','Haider','Hassan','PNR#3432','1','Code#e343','Ref#3432',0,0,0,'Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes',0,'','2016-11-11','69','42','4','Coach (BT)','27','54','56','17','','1, 2, 3, 5','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','16:20','Accounting notes Accounting notesAccounting notes Accounting notes','2016-11-29 16:26:40','Creative Tech','2017-01-06 14:12:12','Creative Tech','FLL-WBTZDGZ3',1,'1',1,'Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes','','Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,1,'No',NULL,0,NULL),
(54,'Mr','Haider','Hassan','PNR#3432','1','Code#e343','Ref#3432',0,0,0,'Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes',0,'','2016-11-11','69','42','4','Coach (BT)','27','54','56','17','','1, 2, 3, 5','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','16:20','Accounting notes Accounting notesAccounting notes Accounting notes','2016-11-29 16:33:36','Creative Tech','2017-01-06 14:12:12','Creative Tech','FLL-5P3MY3YQ',1,'1',1,'Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes','','Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,1,'No',NULL,0,NULL),
(55,'Mr','Haider','Hassan','PNR#3432','1','Code#e343','Ref#3432',0,0,0,'Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes',0,'','2016-11-11','69','42','4','Coach (BT)','27','54','56','17','','1, 2, 3, 5','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','16:20','Accounting notes Accounting notesAccounting notes Accounting notes','2016-11-29 17:00:01','Creative Tech','2017-01-06 14:12:12','Creative Tech','FLL-JTQJSWG8',1,'1',1,'Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes','','Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,1,'No',NULL,0,NULL),
(56,'Mr','Haider','Hassan','PNR#3432','1','Code#e343','Ref#3432',0,0,0,'Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes',0,'','2016-11-11','69','42','4','Coach (BT)','27','54','56','17','','1, 2, 3, 5','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','16:20','Accounting notes Accounting notesAccounting notes Accounting notes','2016-11-29 17:02:28','Creative Tech','2017-01-06 14:12:12','Creative Tech','FLL-QD9GBCZM',1,'1',1,'Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes Arrival &amp; Transport notes','','Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes Hotel notes',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,1,'No',NULL,0,NULL),
(57,'Mr','Haider','Hassan','PNR#23232','1','','',0,0,0,'',0,'','0000-00-00','','0','Select flight class','Group Transfers','0','','0','0','','','Additional Requirements','2016-11-12','17','12','Coach (BT), Private Van, Hydrolic Vehicle','31','60','Pickup Location','9','10:20','','2016-11-30 10:22:07','Creative Tech','2017-01-06 14:31:56','Creative Tech','FLL-27N25QGY',1,'7',1,'','','',0,0,0,0,0,0,0,0,2,'','',NULL,NULL,1,'No',NULL,0,NULL),
(58,'Mr','haider','hassan','','Select tour operator','','',0,0,0,'',0,'','0000-00-00','','0','Select flight class','Group Transfers','0','','0','0','','','Additional Requirements','2016-11-17','','0','','0','','Pickup Location','Dropoff Location','10:25','','2016-11-30 10:28:20','Creative Tech','','','FLL-9XD2ZCG5',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,1,'No',NULL,0,NULL),
(59,'Mr','First','Last','Passenger','1','Code#3432','Ref#3422',3,0,0,'Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes',1,'','0000-00-00','','0','Select flight class','Group Transfers','0','','0','18','','','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','15:45','','2016-11-30 15:47:34','Creative Tech','','','FLL-D22V2B6V',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,1,'Yes','FLL-',0,NULL),
(60,'Ms','Momina ','Haider','PNR#3432','1','Code#3243','Ref#33432',4,0,0,'Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes Rep Notes',1,'Affiliates','2016-11-10','','0','Select flight class','Group Transfers','0','','0','14','','2, 4','Additional Requirements',NULL,NULL,NULL,NULL,NULL,NULL,'Pickup Location','Dropoff Location','16:00','','2016-11-30 16:00:30','Creative Tech','','','FLL-CBX3JB72',0,'',1,'','','Hotel notes Hotel notesHotel notes Hotel notes Hotel notes Hotel notes Hotel notes',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,1,'Yes','FLL-5XDQBBZ4',0,NULL),
(61,'Mr','Haider','Hassan','PNR#3432','1','','',0,0,0,'',0,'','0000-00-00','','0','Select flight class','Group Transfers','0','','0','0','','','Additional Requirements','0000-00-00','NULL','','','','','','','NULL','','2016-12-01 09:56:09','Creative Tech','','','FLL-P4BQDSGM',0,'',1,'','','',0,0,0,0,0,0,0,0,2,'','',NULL,NULL,1,'No',NULL,0,NULL),
(62,'','','','','','','',0,NULL,NULL,'',0,'','0000-00-00','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','',0,'',1,'','','',0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'No',NULL,0,NULL),
(63,'Mrs','akram','Durrani','PNR#21232','1','','',0,0,0,'',0,'','0000-00-00','','0','Select flight class','Group Transfers','0','','0','0','','','Additional Requirements','2016-12-16','','0','','0','','Pickup Location','Dropoff Location','10:05','','2016-12-01 10:02:05','Creative Tech','','','FLL-9MRD2B8R',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,1,'No',NULL,0,NULL),
(64,'Mrs','Adnan','Sami','','1','','',0,0,0,'',0,'','0000-00-00','','0','Select flight class','Group Transfers','0','','0','0','','','Additional Requirements','0000-00-00','(NULL)','','(NULL)','(NULL)','(NULL)','(NULL)','(NULL)','(NULL)','(NULL)','2016-12-01 10:05:34','Creative Tech','','','FLL-MQVX5CQC',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,1,'No',NULL,0,NULL),
(65,'Mrs','another','test','','Select tour operator','','',0,0,0,'',0,'','0000-00-00','','0','Select flight class','Group Transfers','0','','0','0','','','Additional Requirements','0000-00-00','NULL','NULL','NULL','NULL','(NULL)','(NULL)','(NULL)','(NULL)','(NULL)','2016-12-01 10:07:24','Creative Tech','','','FLL-N3SHD2Y4',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,1,'No',NULL,0,NULL),
(66,'Mrs','dd','d','','Select tour operator','','',0,0,0,'',0,'','0000-00-00','','0','Select flight class','Group Transfers','0','','0','0','','','Additional Requirements','0000-00-00','NULL','NULL','NULL','NULL','(NULL)','(NULL)','(NULL)','(NULL)','(NULL)','2016-12-01 10:08:12','Creative Tech','','','FLL-WMN4P79X',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,1,'No',NULL,0,NULL),
(67,'Mr','Haider','Hassan','','Select tour operator','','',0,0,0,'',0,'','2016-12-23','','0','Select flight class','Private Van, Mercedes, Mercedes, Hydrolic Vehicle','Array','Array','0','0','','','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','13:35','','2016-12-06 13:37:04','Creative Tech','','','FLL-56WBGXWZ',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,1,'No',NULL,0,'0.00'),
(68,'Mr','Haider','Hassan','','Select tour operator','','',0,0,0,'',0,'','0000-00-00','','0','Select flight class','Mercedes, Hydrolic Vehicle, Hydrolic Vehicle, Mercedes','Array','Array','0','0','','','Additional Requirements','0000-00-00','','','','','','','','','','2016-12-06 14:15:07','Creative Tech','','','FLL-88GCSZPD',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,1,'No',NULL,0,'0.00'),
(69,'Mr','Haider','Hassan','','Select tour operator','','',0,0,0,'',0,'','2016-12-17','','0','Select flight class','Mercedes, Hydrolic Vehicle, Mercedes','Array','Array','0','0','','','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','14:20','','2016-12-06 14:19:19','Creative Tech','','','FLL-3MHSFTRK',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,1,'No',NULL,0,'0.00'),
(70,'Mr','Haider','Hassan','','Select tour operator','','',0,0,0,'',0,'','2016-12-09','','0','Select flight class','Mercedes, Hydrolic Vehicle, Hydrolic Vehicle, Private Van','Array','Array','0','0','','','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','16:30','','2016-12-06 16:34:16','Creative Tech','','','FLL-CWX36F54',0,'',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,1,'No',NULL,0,'0.00'),
(71,'Mr','Haider','HassAN','','Select tour operator','','',0,0,0,'',0,'','2016-12-08','','0','Select flight class','Hydrolic Vehicle, Mercedes/BMW, Private Car, Own transport','Array','Array','0','0','','','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','17:10','','2016-12-06 17:23:16','Creative Tech','2016-12-22 10:56:44','Creative Tech','FLL-VDQYNHZW',0,'20',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,1,'No',NULL,0,'0.00'),
(72,'Ms','Haider','Hassan','','Select tour Operator','','',0,0,0,'',1,'','2016-12-09','17','12','1','','54','93','0','0','','','Additional Requirements','0000-00-00','','0','','0','','Pickup Location','Dropoff Location','18:10','','2016-12-07 18:06:58','Creative Tech','2017-01-06 14:03:33','Creative Tech','FLL-G23HY4RZ',0,'20',1,'','','',0,0,0,0,0,0,0,0,0,'','',NULL,NULL,1,'No','FLL-P686TKMH',0,'0.00');

/*Table structure for table `fll_roomtypes` */

DROP TABLE IF EXISTS `fll_roomtypes`;

CREATE TABLE `fll_roomtypes` (
  `id_room` int(11) NOT NULL AUTO_INCREMENT,
  `id_location` int(11) NOT NULL,
  `room_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id_room`)
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=latin1;

/*Data for the table `fll_roomtypes` */

insert  into `fll_roomtypes`(`id_room`,`id_location`,`room_type`) values 
(1,1,'Ocean Front Deluxe Room'),
(2,2,'Crystal Lagoon Luxury'),
(3,3,'Ocean Front Deluxe '),
(20,5,'Superior Garden Suite'),
(21,5,'Superior Poolside Suite'),
(22,8,'Beach View Room'),
(23,8,'Beachfront Deluxe Room'),
(24,8,'The Business Class Room'),
(25,8,'Family Room'),
(26,8,'Ocean View Room'),
(27,8,'Superior Room'),
(28,8,'Carlisle Suite'),
(29,8,'Grand Pier One-bedroom Suite'),
(30,8,'Pier Junior Suite'),
(31,10,'Super Deluxe'),
(32,10,'Deluxe'),
(33,10,'Superior'),
(34,10,'Honeymoon'),
(35,10,'Penthouse'),
(36,11,'One Bedroom Suite'),
(37,11,'Two Bedroom Suite'),
(38,11,'Three Bedroom Suite'),
(39,12,'Deluxe Studio Apartments'),
(40,12,'Deluxe 1 Bedroom'),
(41,12,'Deluxe 2 Bedroom'),
(42,12,'1 Bedroom Ocean View'),
(43,12,'3 Bedroom Pool Garden'),
(44,12,'2 Bedroom Standard Apartment'),
(45,13,'Deluxe Studio'),
(46,13,'Superior Studio'),
(47,13,'Junior Suite'),
(48,13,'Honeymoon Suite'),
(49,13,'1 Bedroom Suite'),
(50,13,'Deluxe 1 Bedroom Suite'),
(51,13,'1 Bedroom Penthouse'),
(52,13,'Deluxe 2 Bedroom Suite'),
(53,13,'2 Bedroom Beachfront'),
(54,14,'1 Bedroom Island View Apartment'),
(55,14,'2 Bedroom Island View Apartment'),
(56,14,'2 Bedroom Ocean View Apartment'),
(57,14,'Penthouse Apartment'),
(58,15,'Cobblers Garden Suite'),
(59,15,'Ocean View Suite'),
(60,15,'Ocean Front Suite'),
(61,15,'2 Bedroom Suite'),
(62,15,'Camelot at the Great House'),
(63,15,'Colleton at the Great House'),
(64,16,'Superior Ocean Front Room'),
(65,16,'Ocean View Studio'),
(66,16,'Ocean Front Room'),
(67,16,'Standard Room'),
(68,16,'Island View Apartment'),
(69,17,'Pool/Garden View'),
(70,17,'Ocean View'),
(71,17,'Luxury Poolside'),
(72,17,'Junior Suite Pool/Garden View'),
(73,17,'Luxury Ocean View'),
(74,17,'1 bedroom Suite - Ocean View'),
(75,18,'Deluxe Studio '),
(76,18,'Deluxe 1 Bedroom'),
(77,18,'Deluxe 2 Bedroom'),
(78,18,'1 Bedroom Penthouse'),
(79,18,'1 Bedroom Suite'),
(80,19,'Garden Room/Cottage'),
(81,19,'Superior or Luxury Junior Suite'),
(82,19,'Luxury Cottage/Suite'),
(83,19,'2 Bedroom Combination'),
(84,19,'Luxury Plantation Suite'),
(85,19,'Tamarind Villa'),
(86,19,'Ixora Villa'),
(87,20,'Studio Suites'),
(88,20,'3 Bedroom Penthouse'),
(89,21,'Pool/Garden View'),
(90,21,'Ocean View'),
(91,21,'Junior Suite Pool/Garden View'),
(92,21,'Junior Suite Ocean View'),
(93,21,'1 bedroom Suite Pool/Garden View'),
(94,21,'1 bedroom Suite Ocean View'),
(95,23,'1 Bedroom Pool &amp; Garden View Suite'),
(96,23,'1 Bedroom Beach Villa Suite'),
(97,23,'2 Bedroom Suite'),
(98,55,'Garden View - Studio'),
(99,55,'Family - Studio'),
(100,55,'Pool View - Studio'),
(101,55,'Ocean View - Studio'),
(102,55,'Island View - Studio'),
(103,55,'Garden View - 1 Bedroom'),
(104,1,'Beach Front Junior Suite '),
(105,1,'Villa'),
(106,24,'Bay view room - King bed'),
(107,24,'Ocean view room - King bed'),
(108,24,'Bay view room - 2 double beds'),
(109,24,'Ocean view room - 2 double beds'),
(110,24,'Ocean View Suite'),
(111,24,'Prime Minister Suite with Ocean View'),
(112,24,'Bay View Suite'),
(113,24,'Panoramic View Executive Room - King bed'),
(114,24,'Panoramic View Executive Room - 2 double beds'),
(115,24,'Accessible Panoramic View Executive Room'),
(116,24,'Accessible Ocean View Room'),
(117,25,'Luxury Ocean Suite with private plunge pool'),
(118,25,'Garden Jr. Suite with Whirpool'),
(119,25,'Ocean deluxe'),
(120,25,'Poolside deluxe with partial ocean view'),
(121,25,'Garden standard'),
(122,26,'1 Bedroom - Garden Suite'),
(123,26,'2 Bedroom - Split Level Garden Suite'),
(124,26,'2 Bedroom - Garden Suite'),
(125,26,'2 Bedroom - Ocean Front fort suite'),
(126,26,'3 Bedroom - Ocean Front fort suite'),
(127,26,'3 Bedroom - Vineyard suite'),
(128,27,'Standard room'),
(129,27,'Standard 1 Bedroom'),
(130,27,'Superior Room'),
(131,27,'Deluxe Room'),
(132,27,'Ocean Front Room'),
(133,27,'Penthouse Suite'),
(134,28,'Spacious Guest Room'),
(135,28,'Superior with Balcony'),
(136,28,'Suite with Balcony'),
(137,29,'1 Bedroom Ocean Front Suite'),
(138,29,'2 Bedroom Ocean Front Suite'),
(139,29,'2 Bedroom Bay View Suite'),
(141,30,'Studio'),
(142,30,' 1 Bedroom Apartment'),
(145,4,'Island View Room'),
(148,4,'Ocean View Room'),
(149,4,'Ocean Front Room'),
(150,4,'Deluxe Ocean View Suite'),
(151,4,'Ocean View Penthouse Suite'),
(152,4,'Deluxe Ocean View Junior Suite'),
(154,4,'Island View Junior Suite'),
(155,4,'Pool View Room'),
(156,4,'Pool View Suites (2 Bedroom)'),
(159,4,'State Room'),
(160,4,'2 Bedroom Ocean Front Luxury Suite'),
(161,32,'Pool Deck Studio'),
(162,32,'Ocean Front Studio'),
(163,32,'1 Bedroom Ocean Front'),
(164,32,'2 Bedroom Ocean Front'),
(165,32,'Superior Ocean Front Studio'),
(166,32,'Deluxe Ocean Front Studio'),
(167,32,'1 Bedroom Island View'),
(168,32,'Ocean Front Penthouse Suite'),
(169,34,'Orchid Room'),
(170,34,'Ocean Room'),
(171,34,'Luxury Ocean Room'),
(172,34,'Luxury Orchid Suite'),
(173,34,'Dolphin Suite'),
(174,34,'Luxury Dolphin Suite'),
(175,34,'Penthouse'),
(176,34,'Sandy Lane Suite'),
(177,34,'The Villa at Sandy Lane'),
(178,35,'Plantation Room'),
(179,35,'Deluxe Courtyard Room'),
(180,35,'Deluxe Pool Access Room'),
(181,36,'Standard Room'),
(182,36,'Pool / Garden View'),
(183,36,'Ocean View'),
(184,36,'Oceanfront Superior Room'),
(185,36,'Two Bedroom Apartment'),
(186,37,'Bungalow'),
(187,37,'Townhouse'),
(188,37,'Villa'),
(189,38,'Two Bedroom Ocean front Suite'),
(190,38,'One Bedroom Ocean Front Suite'),
(191,38,'Ocean Studio'),
(192,38,'Partial Ocean View Room'),
(193,38,'Partial Ocean Veiw Loft'),
(194,38,'Ocean View Suite'),
(196,39,'Studio'),
(197,39,'One Bedroom Suite'),
(198,39,'Two Bedroom Suite'),
(199,39,'Penthouse Suite'),
(200,40,'Superior Studio'),
(201,40,'Junior Suite'),
(202,40,'One Bedroom Suite'),
(203,41,'OceanView'),
(204,41,'Garden &amp; Pool View Rooms'),
(205,41,'Luxury Suites'),
(206,41,'Duplex Suites'),
(207,42,'One Bedroom Suite'),
(208,42,'Two Bedroom Suite'),
(209,42,'The Penthouse'),
(210,3,'Pool/ Garden View'),
(211,3,'Ocean Front'),
(212,3,'Ocean Front with Sleeper Chair'),
(213,3,'Junior Suite - Pool / Garden View'),
(214,3,'Junior Suite - Ocean View'),
(215,3,'One Bedroom Suite - Pool/ Garden View'),
(216,3,'One Bedroom Suite - Ocean View'),
(217,3,'One Bedroom Suite - Ocean View'),
(218,43,'Garden View'),
(219,43,'Ocean Loft'),
(220,43,'Superior Ocean Loft'),
(221,43,'Superior Garden View'),
(222,43,'1 Bedroom Garden View Suite'),
(223,43,'1 Bedroom Oceanfront Suite'),
(224,44,'Junior Garden View'),
(225,44,'One Bedroom Ocean View'),
(226,44,'One Bedroom Ocean View with Plunge Pool'),
(227,44,'One Bedroom Ocean View with 28&#039; Pool'),
(228,44,'Two Bedroom Ocean View Penthouse'),
(229,44,'Three Bedroom OceanView Penthouse'),
(230,45,'Pool / Garden View One Bedroom Suite'),
(231,45,'Ocean View'),
(232,45,'Junior Suite Pool / Garden View'),
(233,45,'Ocean View One Bedroom Suite'),
(234,46,'Garden Room'),
(235,46,'One Bedroom Suite'),
(236,46,'Two Bedroom Suite'),
(237,46,'Tree Top Suite'),
(238,46,'The Beach House'),
(239,47,'Standard Rooms'),
(240,47,'Superior Rooms'),
(241,47,'Pool View Rooms'),
(242,47,'Deluxe Rooms'),
(243,48,'The Hemingway'),
(244,48,'The Hibiscus'),
(245,48,'The Hummingbird'),
(246,48,'Ocean View Suite'),
(247,48,'Pool and Garden View Suites'),
(248,49,'Junior Suite Pool / Garden View'),
(249,49,'Junior Suite Ocean View'),
(250,49,'Junior Suite Deluxe OceanView '),
(251,49,'Junior Suite Ocean Front'),
(252,49,'One Bedroom Suite Pool / Garden View'),
(253,49,'One Bedroom Suite Ocean View'),
(254,50,'Deluxe Oceanfront'),
(255,50,'Ocean Front Duplex'),
(256,50,'Oceanfront Room'),
(257,50,'Duplex Island View'),
(258,50,'Island View'),
(259,50,'Spa Rooms'),
(260,51,'Standard Hotel Room'),
(261,51,'Superior Hotel Room'),
(262,51,'Junior One Bedroom'),
(263,51,'Deluxe One Bedroom '),
(264,52,'Superior Studio'),
(265,52,'Deluxe Studio'),
(266,52,'Two Bedroom Penthouse Suite'),
(267,52,'Deluxe Ground Floor Two Bedroom Suite'),
(268,52,'Deluxe Top floor Two Bedroom Suite');

/*Table structure for table `fll_touroperator` */

DROP TABLE IF EXISTS `fll_touroperator`;

CREATE TABLE `fll_touroperator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tour_operator` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=latin1 COMMENT='Tour Operators table';

/*Data for the table `fll_touroperator` */

insert  into `fll_touroperator`(`id`,`tour_operator`) values 
(1,'A & Kent'),
(2,'Abreu'),
(3,'Agaxtur BR'),
(4,'Alidays'),
(5,'Aspire'),
(6,'Aviva Group'),
(7,'Azure'),
(8,'British Airways'),
(9,'BAHolidays'),
(10,'Bailey Robinson'),
(11,'BeCuriou'),
(12,'Berge & Meer'),
(13,'Best Tours Italia'),
(14,'Blue Sky Luxury'),
(15,'Bookit'),
(16,'Caribbean Dest'),
(17,'Caribbean Island'),
(18,'CTS Horizons'),
(19,'CV Travel'),
(20,'Caribtours'),
(21,'City Discovery'),
(22,'Classic Collection'),
(23,'Classic Resorts'),
(24,'Colletts Resorts'),
(25,'Cox & Kings'),
(26,'Culsen Travel'),
(27,'Curitiba Tours'),
(28,'Designer Tours BR'),
(29,'Destinology'),
(30,'Diamond Air'),
(31,'Direct Bookings'),
(32,'EFR Travel'),
(33,'Eden Collection'),
(34,'Escapade Caribbean'),
(35,'Eso Travel'),
(36,'Eurasia HWT'),
(37,'Expressions'),
(38,'Exsus Travel'),
(39,'Fischer'),
(40,'Friendship Travel'),
(41,'Global Travel/Dest 2'),
(42,'Gold Medal'),
(43,'Golden Caribbean'),
(44,'Harlequin'),
(45,'Hays Travel'),
(46,'Holiday Place'),
(47,'Holiday Services'),
(48,'HolidayBeds (Ireland)'),
(49,'Individual Holidays'),
(50,'Intimate Caribbean Holidays'),
(51,'Key2Holidays'),
(52,'Kuoni Zurich'),
(53,'Kuoni France'),
(54,'Kuoni Netherlands'),
(55,'Kuoni Spain (Madrid)'),
(56,'Kuoni UK'),
(57,'Kuoni UK (WCC)'),
(58,'La Fabbrica'),
(59,'Latino Travel'),
(60,'Latitude'),
(61,'Lusso Travel'),
(62,'Luxury Holiday Tours'),
(63,'Luxurytrips'),
(64,'MLT Vacations'),
(65,'MotMot Travel'),
(66,'Mundy Cruising'),
(67,'Naar Tours'),
(68,'Noks Film'),
(69,'North American Travel'),
(70,'Online Travel'),
(71,'Only Exclusive'),
(72,'Owners Syndicate'),
(73,'Pelikan Rejser'),
(74,'Pink Pearl'),
(75,'Pleasant Holidays'),
(76,'Presona Travel'),
(77,'Prestbury WW'),
(78,'Pure Luxury'),
(79,'Quadrante'),
(80,'Real Holidays'),
(81,'Rockwell'),
(82,'St James Travel & Tours'),
(83,'Scott Dunn'),
(84,'Seasons in Style'),
(85,'Simpson Exclusive'),
(86,'Slattery Travel'),
(87,'Sunburst Vacations'),
(88,'Sunlinc'),
(89,'Sunmaster'),
(90,'Sunny Holidays'),
(91,'Sunset Travel Ltd'),
(92,'Sunway Holidays'),
(93,'Sunwing'),
(94,'TC Germany'),
(95,'TC Group'),
(96,'TC Signature'),
(97,'TC Sport'),
(98,'Team America'),
(99,'Thomas WW'),
(100,'Titan Travel Ltd'),
(101,'Tourist Club'),
(102,'Trailfinders'),
(103,'Travco LLP'),
(104,'Travel 2/4'),
(105,'Travel City'),
(106,'Travel Factory'),
(107,'Travel Trend'),
(108,'Travel Value'),
(109,'Travel2'),
(110,'Tropic Breeze'),
(111,'Tropic Sky'),
(112,'Tropical Dest'),
(113,'Tropical Locations'),
(114,'Tropical Tours'),
(115,'Tropicalement'),
(116,'Turquoise Holidays'),
(117,'Travel Counsellors'),
(118,'Ultimate Travel'),
(119,'Value Added Travel'),
(120,'Viator'),
(121,'Vicino E Lontano'),
(122,'Voyageurs Du Monde'),
(123,'W & O'),
(124,'WT Vacations'),
(125,'WeTravel2'),
(126,'Wedd in Paradise'),
(127,'West Jet'),
(128,'White sand weddings'),
(129,'Wilderness Explorers'),
(130,'Virtuoso'),
(131,'ITC'),
(132,'Carrier'),
(133,'World Travel Holdings'),
(134,'Island Villas'),
(135,'Blue Anglia'),
(136,'Altman'),
(137,'London Life & Casualty'),
(138,'London Life IRC'),
(139,'Soutterham Bank'),
(140,'Accra Beach Hotel'),
(141,'B Away'),
(142,'Cruiseline - Star Clippers');

/*Table structure for table `fll_transfer` */

DROP TABLE IF EXISTS `fll_transfer`;

CREATE TABLE `fll_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_no_sys` varchar(255) NOT NULL,
  `pickup` int(11) NOT NULL,
  `pickup_date` date NOT NULL,
  `pickup_time` varchar(255) NOT NULL,
  `dropoff` int(11) NOT NULL,
  `transport` varchar(255) NOT NULL,
  `vehicle` int(11) NOT NULL,
  `driver` int(11) NOT NULL,
  `transfer_notes` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `fll_transfer` */

insert  into `fll_transfer`(`id`,`ref_no_sys`,`pickup`,`pickup_date`,`pickup_time`,`dropoff`,`transport`,`vehicle`,`driver`,`transfer_notes`) values 
(9,'FLL-79SWJNDJ',0,'2016-09-09','16:15',56,'',25,10,'Transfer &amp; Transport notes'),
(10,'FLL-W9Z8BT9V',0,'0000-00-00','12:35',0,'',0,0,''),
(11,'FLL-8B3MPJWW',0,'0000-00-00','13:20',0,'',101,61,'Transfer &amp; Transport notes');

/*Table structure for table `fll_transport` */

DROP TABLE IF EXISTS `fll_transport`;

CREATE TABLE `fll_transport` (
  `id_transport` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_transport`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

/*Data for the table `fll_transport` */

insert  into `fll_transport`(`id_transport`,`name`) values 
(4,'David Abraham'),
(6,'Ronald Adams'),
(8,'Ash Investment Inc'),
(10,'Anthony Adams'),
(11,'Barbados Ruje Wonder Tours'),
(12,'Carson Bailey'),
(13,'Grantley Beckles'),
(14,'Ian Tyrone Belgrave'),
(15,'Tyrone Best'),
(16,'Hugh Blackman'),
(17,'Anderson Brandford'),
(18,'Adrian Brathwaite'),
(19,'Derek Brathwaite'),
(20,'Fabian Brathwaite'),
(21,'Keisha Broomes'),
(22,'Ronald Browne'),
(23,'Cain &amp; Son Tours'),
(24,'Kenneth Callender'),
(25,'Winfield Catwell'),
(26,'Keith Chase'),
(27,'Anthony Clarke'),
(28,'Jamar Clarke'),
(29,'Courtney Corbin'),
(30,'Cummins Freight Service'),
(31,'D &amp; N Rentals and Taxi Service Inc'),
(32,'Victor Drakes'),
(33,'William Drayton'),
(34,'Robert Duke'),
(35,'Winston Edgehill'),
(36,'Yvette Edgehill'),
(37,'Grantley Forde'),
(38,'Joan Gibson'),
(39,'Stafford Gooding'),
(40,'Goodwill Transport Inc'),
(41,'Colin Harvey'),
(42,'Emmerson Herbert'),
(43,'Junior Harewood'),
(44,'Ron Hinds'),
(45,'Charles Holders'),
(46,'Michael Holder'),
(47,'Michael Hunte'),
(48,'Esline Johnson'),
(49,'Elvis King'),
(50,'Eric Lashley'),
(51,'Elvene Morris'),
(52,'Victor Murray'),
(53,'Paradise Limousine Service Inc'),
(54,'Andre Phillips'),
(55,'John Prescott'),
(56,'Quintours Taxi Inc / Johnson'),
(57,'Rehoboth Transport Service /  Caleb Drayton'),
(58,'Trevor Rochester'),
(59,'Lionel Russell'),
(60,'Hamilton Scantlebury'),
(61,'Adrian Snagg'),
(62,'Jason Springer'),
(63,'St. James Taxi and Services'),
(64,'Trevor Stuart'),
(65,'Edwin Tappin'),
(66,'Trevor Toppin'),
(67,'Sheryl-Ann Tudor'),
(68,'Vere King Transport Services Ltd'),
(69,'Curtis Walker'),
(70,'West Coast Taxi Service'),
(71,'Sherwin Williams'),
(72,'Neville Wiltshire'),
(73,'Dionna Wong'),
(74,'Barry Durrant');

/*Table structure for table `fll_transporttype` */

DROP TABLE IF EXISTS `fll_transporttype`;

CREATE TABLE `fll_transporttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transport_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `fll_transporttype` */

insert  into `fll_transporttype`(`id`,`transport_type`) values 
(1,'Group Transfers'),
(2,'Limousine'),
(3,'Private Car'),
(4,'Coach (BT)'),
(5,'Mercedes/BMW'),
(6,'Mercedes'),
(7,'Private Van'),
(8,'Hotel transfer'),
(9,'Hydrolic Vehicle'),
(10,'No Transfer'),
(11,'Own transport');

/*Table structure for table `fll_vehicles` */

DROP TABLE IF EXISTS `fll_vehicles`;

CREATE TABLE `fll_vehicles` (
  `id_vehicle` int(11) NOT NULL AUTO_INCREMENT,
  `id_transport` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_vehicle`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;

/*Data for the table `fll_vehicles` */

insert  into `fll_vehicles`(`id_vehicle`,`id_transport`,`name`) values 
(16,4,'Z1911'),
(18,6,'ZM316'),
(20,8,'Z1149'),
(21,8,'Z1229'),
(23,8,'ZM755'),
(25,10,'Z1081'),
(26,11,'ZM321'),
(27,12,'Z1988'),
(28,13,'HL19'),
(31,14,'ZM524'),
(32,15,'ZM140'),
(33,15,'ZM326'),
(34,16,'Z229'),
(35,17,'ZM744'),
(36,18,'ZM389'),
(37,19,'Z17'),
(38,19,'Z1890'),
(39,19,'Z543'),
(40,19,'Z569'),
(41,19,'ZM311'),
(42,19,'ZM796'),
(43,19,'ZM797'),
(44,19,'BT95'),
(45,20,'Z1356'),
(46,21,'Z1702'),
(47,22,'ZM280'),
(48,23,'BT33'),
(49,23,'BT96'),
(50,24,'Z1003'),
(51,25,'HL28'),
(52,25,'HL29'),
(53,26,'ZM440'),
(54,27,'ZM802'),
(55,28,'Z923'),
(56,29,'ZM683'),
(57,29,'Z624'),
(58,30,'XA460'),
(59,31,'ZM255'),
(60,31,'ZM256'),
(61,32,'Z286'),
(62,33,'BT105'),
(63,33,'BT78'),
(64,34,'ZM15'),
(65,35,'Z1200'),
(66,36,'ZM426'),
(67,37,'Z564'),
(68,37,'Z964'),
(69,38,'Z346'),
(70,39,'ZM90'),
(71,40,'Z59'),
(72,40,'Z772'),
(73,41,'ZM125'),
(74,42,'Z1098'),
(75,42,'Z576'),
(76,43,'Z582'),
(77,43,'Z1252'),
(78,44,'Z177'),
(79,45,'Z1091'),
(80,46,'ZM595'),
(81,47,'ZM687'),
(82,48,'BT41'),
(83,49,'ZM390'),
(84,49,'ZM290'),
(85,49,'Z916'),
(86,49,'Z871'),
(87,50,'ZM575'),
(88,51,'ZM512'),
(89,52,'Z868'),
(90,53,'ZM41'),
(91,53,'HL23'),
(92,53,'HL62'),
(93,54,'Z1986'),
(94,55,'Z1585'),
(95,56,'ZM609'),
(96,57,'ZM351'),
(97,57,'ZM57'),
(98,58,'HL58'),
(99,59,'Z926'),
(100,60,'Z1420'),
(101,61,'Z43'),
(102,62,'Z1904'),
(103,63,'ZM403'),
(104,64,'Z412'),
(105,65,'ZM338'),
(106,66,'Z997'),
(107,67,'Z45'),
(108,68,'BT56'),
(109,69,'BT17'),
(110,70,'Z982'),
(111,70,'Z1554'),
(112,71,'Z1210'),
(113,72,'BT9'),
(114,72,'BT26'),
(115,73,'Z441'),
(116,74,'ZM684');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
