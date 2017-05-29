/*
SQLyog Ultimate v12.14 (64 bit)
MySQL - 5.6.17 : Database - cocoa_anu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cocoa_anu` /*!40100 DEFAULT CHARACTER SET latin1 */;

/*Table structure for table `anu_activity` */

DROP TABLE IF EXISTS `anu_activity`;

CREATE TABLE `anu_activity` (
  `id_activity` int(11) NOT NULL AUTO_INCREMENT,
  `log_user` varchar(255) NOT NULL,
  `user_action` varchar(255) NOT NULL,
  `log_time` varchar(255) NOT NULL,
  PRIMARY KEY (`id_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `anu_activity` */

/*Table structure for table `anu_arrivals` */

DROP TABLE IF EXISTS `anu_arrivals`;

CREATE TABLE `anu_arrivals` (
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `anu_arrivals` */

/*Table structure for table `anu_bugs` */

DROP TABLE IF EXISTS `anu_bugs`;

CREATE TABLE `anu_bugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bug_title` varchar(255) NOT NULL,
  `page` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `reporter` varchar(255) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `anu_bugs` */

/*Table structure for table `anu_departures` */

DROP TABLE IF EXISTS `anu_departures`;

CREATE TABLE `anu_departures` (
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

/*Data for the table `anu_departures` */

/*Table structure for table `anu_flights` */

DROP TABLE IF EXISTS `anu_flights`;

CREATE TABLE `anu_flights` (
  `id_flight` int(11) NOT NULL AUTO_INCREMENT,
  `flight_number` varchar(255) NOT NULL,
  PRIMARY KEY (`id_flight`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

/*Data for the table `anu_flights` */

insert  into `anu_flights`(`id_flight`,`flight_number`) values 
(1,'BA2157'),
(2,'BA2156'),
(3,'BA2256'),
(4,'LI312'),
(5,'LI550'),
(7,'AA978'),
(8,'AA2405'),
(9,'LI309'),
(10,'LI512'),
(11,'LI771'),
(12,'LI310'),
(13,'LI331'),
(14,'UA1414'),
(15,'UA1409'),
(16,'LI508'),
(17,'VS87'),
(18,'VS88'),
(19,'VS33'),
(20,'VS34'),
(21,'BW459'),
(22,'BW458'),
(23,'WJ2738'),
(24,'WJ2739'),
(25,'AC960'),
(26,'DL652'),
(27,'DL653'),
(29,'LI362');

/*Table structure for table `anu_flighttime` */

DROP TABLE IF EXISTS `anu_flighttime`;

CREATE TABLE `anu_flighttime` (
  `id_fltime` int(11) NOT NULL AUTO_INCREMENT,
  `id_flight` int(11) NOT NULL,
  `flight_time` varchar(255) NOT NULL,
  PRIMARY KEY (`id_fltime`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

/*Data for the table `anu_flighttime` */

insert  into `anu_flighttime`(`id_fltime`,`id_flight`,`flight_time`) values 
(1,1,'14:10'),
(2,1,'15:10'),
(3,3,'19:35'),
(4,3,'20:45'),
(5,3,'19:40'),
(6,3,'20:50'),
(7,2,'14:30'),
(8,2,'19:00'),
(9,3,'17:40'),
(10,3,'18:50'),
(11,3,'21:40'),
(12,2,'20:30'),
(13,4,'13:25'),
(14,4,'10:15'),
(15,5,'10:35'),
(17,2,'19:35'),
(18,7,'11:15'),
(19,7,'12:10'),
(20,8,'13:10'),
(21,8,'14:15'),
(22,9,'17:20'),
(23,9,'18:25'),
(24,10,'19:30'),
(25,11,'5:30'),
(26,12,'10:25'),
(27,13,'10:00'),
(28,13,'12:05'),
(29,14,'12:45'),
(30,14,'13:00'),
(31,15,'13:55'),
(32,15,'13:35'),
(33,16,'17:45'),
(34,17,'14:55'),
(35,2,'20:10'),
(36,18,'16:55'),
(37,19,'13:45'),
(38,20,'16:45'),
(39,21,'17:45'),
(40,21,'18:30'),
(42,22,'10:35'),
(43,22,'11:20'),
(44,23,'14:10'),
(45,24,'15:05'),
(46,25,'13:00'),
(47,25,'14:00'),
(48,26,'15:05'),
(49,27,'14:05'),
(52,5,'15:40'),
(53,5,'11:05'),
(54,5,'12:00'),
(55,5,'15:30'),
(56,16,'17:25'),
(57,16,'19:30'),
(58,10,'20:00'),
(59,10,'20:55'),
(60,10,'21:55'),
(61,11,'6:35'),
(62,11,'9:15'),
(63,4,'10:35'),
(64,4,'12:00'),
(65,12,'11:05'),
(66,12,'12:05'),
(67,29,'10:15'),
(68,29,'13:25'),
(69,4,'13:30'),
(70,4,'11:05');

/*Table structure for table `anu_guest` */

DROP TABLE IF EXISTS `anu_guest`;

CREATE TABLE `anu_guest` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Guest table';

/*Data for the table `anu_guest` */

/*Table structure for table `anu_location` */

DROP TABLE IF EXISTS `anu_location`;

CREATE TABLE `anu_location` (
  `id_location` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `zone` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_location`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

/*Data for the table `anu_location` */

insert  into `anu_location`(`id_location`,`name`,`zone`) values 
(1,'Blue Waters',0),
(2,'Rex Halcycon',0),
(3,'Hawksbill',0),
(4,'Galley Bay',0),
(5,'Royal Antiguan',0),
(6,'Coconut Beach',0),
(7,'Jolly Beach',0),
(8,'Verandah',0),
(9,'Grand Pineapple Beach',0),
(10,'Coco Bay',0),
(11,'The Inn',0),
(12,'St.James Club',0),
(13,'Carlise Bay',0),
(14,'Curtain Bluff',0),
(15,'Galleon Beach',0),
(16,'Cocos',0),
(17,'Sugar Ridge',0),
(18,'Hermitage Bay',0),
(19,'Z- Jacaranda',0),
(20,'Z - Aujourd&#039;hui',0),
(21,'Z - Aquamarine',0),
(22,'Z - Alang Alang',0),
(23,'Z - Alhambra',0),
(24,'Z - Battaley&#039;s Mews',0),
(25,'Z - Bali Hai',0),
(26,'Z - Birds Rock Villa',0),
(27,'Z - Bluff House',0),
(28,'Z - Bohemia',0),
(29,'Z - Buttsbury',0),
(30,'Z - Calimba',0),
(31,'Z - Caprice',0),
(32,'Z - Casa Bella',0),
(33,'Z - Church Point Two',0),
(34,'Colina Del Mar',0),
(35,'Z - Coco',0),
(36,'Z - Coral Breeze',0),
(37,'Z - Coral Sundown ',0),
(38,'Z - Croese',0),
(39,'Z - Easy Reach',0),
(40,'Z - Eden on Sea',0),
(41,'Z - Emerald Beach',0),
(42,'Z - Evergreen',0),
(43,'Z - Fire Fly',0),
(44,'Z - Gibbs House',0),
(45,'Z - Gibbs Lodge',0),
(46,'Z - Glitter Bay',0),
(47,'Z - Hibicus',0),
(48,'Z - Hig Constantia',0),
(49,'Z - Hi Five',0),
(50,'Z - High Tide',0),
(51,'Z - Java BAY',0),
(52,'Z - James Bay (Lower)',0),
(53,'Z - James Bay (Upper)',0),
(54,'Z - Jessamine',0),
(55,'Z - La Palama',0),
(56,'Z - Alila',0),
(57,'Z - Solanda',0),
(58,'Z - Rose of Sharon',0),
(59,'Z - Todmordan',0),
(60,'Z - Pandora',0),
(61,'Z - Standford',0),
(62,'Z - Villa Horizon',0),
(63,'Z - Foster House',0),
(64,'Z - Aliseo',0),
(65,'Z - Amberley House',0),
(66,'Z - Amberley Cottage',0),
(67,'Z - Blue Lagoon',0),
(68,'Z - Cassie',0),
(69,'Z - Coral Cove',0),
(70,'Z - Coconut Grove',0),
(71,'Z - Forest Hills',0),
(72,'Z - Heaven Sent',0),
(73,'Z - Old Trees',0),
(74,'Z - Porters Court',0),
(75,'Z - Ridgecot House',0);

/*Table structure for table `anu_reps` */

DROP TABLE IF EXISTS `anu_reps`;

CREATE TABLE `anu_reps` (
  `id_rep` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_rep`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `anu_reps` */

insert  into `anu_reps`(`id_rep`,`name`) values 
(1,'Carol Silverster'),
(2,'Jason Mannix'),
(3,'Laurie Laville'),
(4,'Lornette Lawrence'),
(5,'Ulrike  Markgraf'),
(6,'Olivette Francis'),
(7,'Samantha Hazlewood');

/*Table structure for table `anu_resdrivers` */

DROP TABLE IF EXISTS `anu_resdrivers`;

CREATE TABLE `anu_resdrivers` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `anu_resdrivers` */

/*Table structure for table `anu_reservations` */

DROP TABLE IF EXISTS `anu_reservations`;

CREATE TABLE `anu_reservations` (
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
  `assignment` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `anu_reservations` */

/*Table structure for table `anu_roomtypes` */

DROP TABLE IF EXISTS `anu_roomtypes`;

CREATE TABLE `anu_roomtypes` (
  `id_room` int(11) NOT NULL AUTO_INCREMENT,
  `id_location` int(11) NOT NULL,
  `room_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id_room`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

/*Data for the table `anu_roomtypes` */

insert  into `anu_roomtypes`(`id_room`,`id_location`,`room_type`) values 
(1,1,'Superior Hillside Room'),
(2,1,'Deluxe Ocean View Rooms'),
(3,1,'Luxury Suite'),
(4,1,'Cove Suite'),
(5,1,'The Cove Penthouse'),
(6,1,'Rock Cottage'),
(7,1,'Turtle Cottage'),
(8,1,'Pelican House'),
(9,2,'Garden Room'),
(10,2,'Sea Veiw Room'),
(11,2,'Beachfront'),
(12,2,'Family Room'),
(13,3,'Garden Bungalow'),
(14,3,'Superior Seaveiw Room'),
(15,3,'Superior Seaveiw Bungalow'),
(16,3,'Beachfront Club Cottage'),
(17,3,'The Great House'),
(18,4,'Premium Beachfront Suite'),
(19,4,'Superior Beachfront Room'),
(20,4,'Deluxe Beachfront Room'),
(21,4,'Gaugin Cottages'),
(22,5,'Mountain Veiw Room'),
(23,5,'Lagoon Veiw Room'),
(24,5,'Ocean Veiw'),
(25,5,'Cottage'),
(26,6,'Deluxe Room'),
(27,6,'Junior Suite'),
(28,6,'Deluxe Suite (Top Floor)'),
(29,6,'Deluxe Suite ( Ground Floor)'),
(30,7,'Supersaver Room'),
(31,7,'Standard Room'),
(32,7,'Queen Superior Room'),
(33,7,'King Superior Room'),
(34,7,'Junior Suite'),
(35,7,'Antigua Cottage'),
(36,8,'Waterfront Suite'),
(37,8,'Waterview Suite'),
(38,8,'Hillside Suite'),
(39,8,'Two Bedroom Villa'),
(40,9,'Tropical Waterfront Room'),
(41,9,'Beachfront Room'),
(42,9,'Ocean Veiw Room'),
(43,9,'Gardenview Room'),
(44,9,'Standard Room'),
(45,10,'Standard Cottage'),
(46,10,'Deluxe Cottage'),
(47,10,'Deluxe Pool Cottage'),
(48,10,'Plantation House'),
(49,10,'Premium Waterfront Suite'),
(50,10,'Chattel House Suite'),
(51,11,'Junior Suite'),
(52,11,'Deluxe Suite'),
(53,11,'The Beach Cabana'),
(54,12,'Club Room'),
(55,12,'Premium Room'),
(56,12,'Beachfront'),
(57,12,'Royal Suites'),
(58,12,'2 Bedroom Villa'),
(59,12,'3 Bedroom Villa'),
(60,12,'Villa Pax'),
(61,13,'Garden Suite'),
(62,13,'Ocean Suite'),
(63,13,'Bay Suite'),
(64,13,'Beach Balcony Suite'),
(65,13,'Beach Terrace Suite'),
(66,13,'Carlisle Suite'),
(67,14,'Deluxe Room'),
(68,14,'Junior Suite'),
(69,14,'Bluff Room'),
(70,14,'One Bedroom Bluff Suite'),
(71,14,'Terrace Room'),
(72,14,'Cliff Suite'),
(73,14,'Grace &amp; Morris Bay Suite'),
(74,15,'1 Bedroom Cottage '),
(75,15,'2 Bedroom Cottage'),
(76,15,'1 Bedroom Garden Duplex'),
(77,15,'2 Bedroom Garden Duplex'),
(78,15,'Countess 3 Bedroom Villa'),
(79,15,'Sirius 3 Bed Villa'),
(80,15,'Lime Hill 4 Bed Villa'),
(81,15,'Babylon 4 Bed Villa'),
(82,15,'Standard Cottage'),
(83,15,'Premium Cottage'),
(84,15,'Sunset Cottage'),
(85,17,'Standard'),
(86,18,'Hillside Pool'),
(87,18,'Beachfront'),
(88,18,'Garden');

/*Table structure for table `anu_touroperator` */

DROP TABLE IF EXISTS `anu_touroperator`;

CREATE TABLE `anu_touroperator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tour_operator` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1 COMMENT='Tour Operators table';

/*Data for the table `anu_touroperator` */

insert  into `anu_touroperator`(`id`,`tour_operator`) values 
(1,'Abreu'),
(2,'Apple Vacations'),
(3,'Avista Travel'),
(4,'Azure'),
(5,'BA Holidays'),
(6,'Bailey Robinson'),
(7,'Best Travel'),
(8,'Bookit.com ( Destination Experience)'),
(9,'Caribbean World ( Berg &amp; Meer, Tropical Tours)'),
(10,'Caribtours'),
(11,'City Discovery&#039;'),
(12,'Classic Resorts'),
(13,'Cox &amp;Kings'),
(14,'Cv Travel'),
(15,'Destinology'),
(16,'Diamond Air International'),
(17,'EFR Travel (SJB Travel)'),
(18,'Expressions'),
(19,'Gold Medal '),
(20,'Golden Holidays'),
(21,'Hays'),
(23,'Holiday Services'),
(24,'Individual Holidays'),
(25,'Intimate Caribbean Holidays'),
(26,'ITC Classics / Complete Caribbean / Caribbean Connection'),
(27,'Kuoni France'),
(28,'Kuoni Belguim'),
(29,'Kuoni Italy ( Best Tours Italia)'),
(30,'Kuoni Netherlands'),
(31,'Kuoni Spain'),
(32,'Kuoni Switzerland (Sun Tours)'),
(33,'Kuoni UK'),
(34,'Kuoni USA'),
(35,'La Fabbrica'),
(36,'Luxury Holidays To &amp; Value Added Travel'),
(38,'MLT'),
(39,'Oxford Private Travel'),
(40,'Page &amp; Moy Travel Group ( Just You Holidays)'),
(41,'Pink Pearl'),
(42,'Pleasant  Holidays'),
(43,'Prestbury  Worldwide Resorts'),
(44,'Q Holidays'),
(45,'Scott Dunn'),
(46,'Stella Travel Services'),
(47,'The Global Travel Group'),
(48,'Travel 2/4'),
(49,'TravelBag'),
(50,'Triton Rooms'),
(51,'Team America'),
(52,'The Lotus Group'),
(53,'Thomas Cook AG'),
(54,'Thomas Cook Signature'),
(56,'Transfers 4 Travel'),
(57,'Travel Counsellors'),
(58,'Tropic Breeze'),
(59,'Turquoise Holidays'),
(60,'Western &amp; Oriental '),
(61,'Key 2 Holidays'),
(62,'Tropical Locations'),
(63,'Wando Travel'),
(64,'We Travel / Topflight'),
(65,'WestJet'),
(66,'Wilderness Explorers');

/*Table structure for table `anu_transport` */

DROP TABLE IF EXISTS `anu_transport`;

CREATE TABLE `anu_transport` (
  `id_transport` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_transport`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;

/*Data for the table `anu_transport` */

insert  into `anu_transport`(`id_transport`,`name`) values 
(1,'Anthony Phillip'),
(2,'Arthur George'),
(3,'Gene Mason'),
(21,'Tyron Herbert'),
(22,'Edlawn Lewis'),
(23,'Mervin Thomas'),
(24,'Daniel Ponde'),
(25,'Egbert Roberts'),
(27,'Otis Matthew'),
(28,'Conroy Lewis'),
(29,'Auckland Lewis'),
(30,'Gerald Johnson'),
(31,'Charlie Browne'),
(32,'Samuel Thomas'),
(33,'Kareem Henry'),
(34,'Lindon Steele'),
(35,'Delroy Henry'),
(36,'Steadroy Holder'),
(37,'Carlton Bedminister'),
(38,'Samuel Williams'),
(39,'Dudley Browne'),
(40,'Dwane Francis'),
(41,'Kevin Hunte'),
(42,'Radley Baptiste'),
(43,'Augustine Isaac'),
(44,'Lester Byers'),
(45,'Joan Viera'),
(46,'Rodney Francis'),
(47,'Artneil  Charles'),
(48,'Randolph Phillip'),
(49,'Oakland Richards'),
(50,'Lenhart Martin'),
(51,'Rachel Joyce'),
(52,'Gary Roberts'),
(53,'Gersham Richards'),
(54,'Conroy Chiddick'),
(55,'Lucy Horsford'),
(56,'Steadman Colbourne'),
(57,'Leopold James'),
(58,'Marlon Francis'),
(59,'Roderick Nicholas'),
(60,'James Henry'),
(61,'Colin Scholar'),
(62,'Calmore Simon'),
(63,'Pauline Watson '),
(64,'Makesha Techiera'),
(65,'Anthony Pierre'),
(66,'Derrick Phillp'),
(67,'Jamie Valentine'),
(68,'Alpheus Jacobs Sr.'),
(69,'Jerome Emmanuel'),
(70,'David Joseph'),
(71,'Samuel Cannoneir'),
(72,'Winston Jackson'),
(73,'Valentine Silcott'),
(74,'Rodney Baltimore'),
(75,'Johann Whenner '),
(76,'Henley Daniel'),
(77,'Anderson Jacobs'),
(78,'Llewllyn Willcock'),
(79,'Dale Merchant'),
(80,'Dion Harrigan'),
(81,'Malcom Nelson'),
(82,'Solen Joseph'),
(83,'Patrick Valentine'),
(84,'Ira Jonas'),
(85,'Steadroy Frederick'),
(86,'Ashton Gregory'),
(87,'Livingstone Otto'),
(88,'Stephen Bowen'),
(89,'George Carr'),
(90,'Manley Colbourne'),
(91,'Alpheus Jacobs Jr.'),
(92,'David Leadette'),
(93,'Rodney Gregory'),
(94,'Dale Joseph'),
(95,'Lauchland Charles'),
(96,'Ian Joseph'),
(97,'Greg Isaac'),
(98,'Doyle Carter'),
(99,'Alan Richards'),
(100,'Leon Joseph'),
(101,'Mario Lobby'),
(102,'Rowan Richards'),
(103,'Hilroy Carr'),
(104,'Elton Williams'),
(106,'Charles Brown'),
(107,'Alton Roberts'),
(108,'Kurt Francis'),
(109,'Alfonse Greene'),
(110,'Andy Henry'),
(111,'Josette Simmons'),
(112,'Emelda Frank'),
(113,'Leroy Jimmie'),
(114,'Ogliver Jacobs'),
(115,'Aukland Lewis');

/*Table structure for table `anu_vehicles` */

DROP TABLE IF EXISTS `anu_vehicles`;

CREATE TABLE `anu_vehicles` (
  `id_vehicle` int(11) NOT NULL AUTO_INCREMENT,
  `id_transport` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_vehicle`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

/*Data for the table `anu_vehicles` */

insert  into `anu_vehicles`(`id_vehicle`,`id_transport`,`name`) values 
(1,1,'TX1238'),
(2,2,'TX274'),
(3,3,'TX131'),
(4,21,'TX1243'),
(5,22,'TX979'),
(6,23,'TX44'),
(7,24,'TX386'),
(8,25,'TX470'),
(9,113,'TX726'),
(10,114,'TX99'),
(11,27,'TX478'),
(12,28,'TX248'),
(13,115,'TX922'),
(14,30,'TX893'),
(15,31,'TX21'),
(16,32,'TX500'),
(17,33,'TX1149'),
(18,34,'TX1119'),
(19,35,'TX535'),
(20,36,'TX400'),
(21,37,'TX982'),
(22,38,'TX247'),
(23,39,'TX912'),
(24,40,'TX1090'),
(25,41,'TX227'),
(26,42,'TX1329'),
(27,43,'TX84'),
(28,44,'TX605'),
(29,45,'TX1121'),
(30,46,'TX315'),
(31,47,'TX144'),
(32,48,'TX345'),
(33,49,'TX230'),
(34,50,'TX878'),
(35,51,'TX96'),
(36,52,'TX1064'),
(37,53,'TX71'),
(38,54,'TX808'),
(39,55,'TX51'),
(40,56,'TX250'),
(41,57,'TX396'),
(42,58,'TX398'),
(43,59,'TX540'),
(44,60,'TX175'),
(45,61,'TX24'),
(46,62,'TX23'),
(47,63,'TX1167'),
(48,64,'TX1289'),
(49,65,'TX218'),
(50,66,'TX635'),
(51,67,'TX1106'),
(52,68,'TX1101'),
(53,69,'TX999'),
(54,70,'TX1027'),
(55,71,'TX58'),
(56,72,'TX130'),
(57,73,'TX1104'),
(58,74,'TX166'),
(59,75,'TX1152'),
(60,76,'TX1139'),
(61,77,'TX1048'),
(62,78,'TX444'),
(63,79,'TX618'),
(64,80,'TX966'),
(65,81,'TX511'),
(66,82,'TX1094'),
(67,83,'TX187'),
(68,84,'TX121'),
(69,85,'TX451'),
(70,86,'TX615'),
(71,87,'TX1076'),
(72,88,'TX52'),
(73,89,'TX214'),
(74,90,'TX366'),
(75,91,'TX1078'),
(76,92,'TX437'),
(77,93,'TX976'),
(78,94,'TX688'),
(79,95,'TX1248');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
