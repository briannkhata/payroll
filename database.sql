/*
SQLyog Community v12.2.4 (32 bit)
MySQL - 5.7.19 : Database - payroll
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`payroll` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `payroll`;

/*Table structure for table `arrears` */

DROP TABLE IF EXISTS `arrears`;

CREATE TABLE `arrears` (
  `arrear_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `month` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `update` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`arrear_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

/*Data for the table `arrears` */

insert  into `arrears`(`arrear_id`,`employee_id`,`month`,`year`,`amount`,`description`,`date`,`update`) values 
(1,88,'April','2016',15000,'','2017-06-26','2017-06-26 11:17:20'),
(2,1,'April','2016',15000,'','2017-06-26','2017-06-26 11:17:35'),
(3,40,'April','2016',42000,'','2017-06-26',NULL),
(4,113,'April','2016',15000,'','2017-06-26',NULL),
(5,116,'April','2016',15000,'','2017-06-26',NULL),
(6,99,'April','2016',15000,'','2017-06-26',NULL),
(7,107,'April','2016',15000,'','2017-06-26',NULL),
(8,108,'April','2016',15000,'','2017-06-26',NULL),
(9,89,'April','2016',15000,'','2017-06-26',NULL),
(10,90,'April','2016',15000,'','2017-06-26',NULL),
(11,118,'April','2016',15000,'','2017-06-26',NULL),
(12,147,'April','2016',15000,'','2017-06-26',NULL),
(13,119,'April','2016',15000,'','2017-06-26',NULL),
(14,120,'April','2016',15000,'','2017-06-26',NULL),
(15,121,'April','2016',15000,'','2017-06-26',NULL),
(16,111,'April','2016',15000,'','2017-06-26',NULL),
(17,100,'April','2016',15000,'','2017-06-26',NULL),
(18,122,'April','2016',15000,'','2017-06-26',NULL),
(19,101,'April','2016',15000,'','2017-06-26',NULL),
(20,126,'April','2016',15000,'','2017-06-26',NULL),
(21,103,'April','2016',15000,'','2017-06-26',NULL),
(22,127,'April','2016',15000,'','2017-06-26',NULL),
(23,104,'April','2016',15000,'','2017-06-26',NULL),
(24,114,'April','2016',15000,'','2017-06-26',NULL),
(25,129,'April','2016',15000,'','2017-06-26',NULL),
(26,151,'April','2016',15000,'','2017-06-26',NULL),
(27,22,'March','2017',18500,'back pay','2017-06-26','2017-07-19 18:47:58'),
(28,123,'April','2016',15000,'','2017-06-26',NULL),
(29,112,'April','2016',15000,'','2017-06-26',NULL),
(30,94,'April','2016',15000,'','2017-06-26',NULL),
(31,39,'April','2016',15000,'','2017-06-26',NULL),
(32,131,'April','2016',15000,'','2017-06-26',NULL),
(33,152,'April','2016',15000,'','2017-06-26',NULL),
(34,105,'April','2016',15000,'','2017-06-26',NULL),
(35,128,'April','2016',15000,'','2017-06-26',NULL),
(36,132,'April','2016',15000,'','2017-06-26',NULL),
(37,102,'April','2016',15000,'','2017-06-26',NULL),
(38,115,'April','2016',15000,'','2017-06-27',NULL),
(39,22,'July','2017',18500,'','2017-07-22',NULL),
(40,107,'October','2017',48000,'','2017-09-24',NULL),
(41,111,'October','2017',49000,'','2017-09-24',NULL),
(42,111,'October','2017',0,'Reallocation Allowance','2017-09-24',NULL),
(43,107,'October','2017',0,'Reallocation Allowance','2017-09-24',NULL),
(44,188,'November','2017',5000,'','2017-11-24',NULL);

/*Table structure for table `bank` */

DROP TABLE IF EXISTS `bank`;

CREATE TABLE `bank` (
  `bank_id` int(11) NOT NULL AUTO_INCREMENT,
  `bank` varchar(100) NOT NULL,
  `bank_code` varchar(200) DEFAULT NULL,
  `abbrev` varchar(100) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bank_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `bank` */

insert  into `bank`(`bank_id`,`bank`,`bank_code`,`abbrev`,`deleted`) values 
(1,'CDH','12','CDHccccccckkkkkkkkkkkkkkkkkk',1),
(2,'CDH','12','CDHccccccc',0),
(3,'CDH','12','CDHccccccc',0),
(4,'CDH','12','CDHccccccc',0),
(5,'CDH','12','CDHccccccc',0),
(6,'CDH','12','CDHccccccc',0),
(7,'CDH','12','CDHccccccc',0),
(8,'CDH','12','CDHccccccc',0),
(9,'CDH','12','CDHccccccc',0),
(10,'CDH','12','CDHccccccc',0);

/*Table structure for table `bank_details` */

DROP TABLE IF EXISTS `bank_details`;

CREATE TABLE `bank_details` (
  `bank_details_id` int(100) NOT NULL AUTO_INCREMENT,
  `bank_id` int(11) NOT NULL,
  `branch` varchar(100) CHARACTER SET latin1 NOT NULL,
  `employee_id` int(11) NOT NULL,
  `account_number` varchar(100) CHARACTER SET latin1 NOT NULL,
  `account_type` varchar(100) CHARACTER SET latin1 NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bank_details_id`),
  KEY `bank_name` (`bank_id`),
  KEY `emp_id` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;

/*Data for the table `bank_details` */

insert  into `bank_details`(`bank_details_id`,`bank_id`,`branch`,`employee_id`,`account_number`,`account_type`,`city`) values 
(1,6,'BLANTYRE',1,'10925298','10925298','BT'),
(2,4,'SUCOMA',2,'205013','SAVINGS','BT'),
(3,4,'BLANTYRE',3,'001341311','SAVINGS','BT'),
(4,9,'DWANGWA',4,'0012121103','SAVINGS','DWANGWA'),
(5,9,'DWANGWA',5,'012121103','SAVINGS','DWANGWA'),
(6,9,'DWANGWA',6,'00121211062','SAVINGS','DWANGWA'),
(7,9,'DWANGWA',7,'0121211062','SAVINGS','DWANGWA'),
(8,9,'DWANGWA',8,'01212545','SAVINGS','DWANGWA'),
(9,6,'DWANGWA',9,'21254','SAVINGS','DWANGWA'),
(10,4,'SUCOMA',10,'TBA','SAVINGS','SUCOMA'),
(11,4,'Victoria',11,'0013411833','SAVINGS','BT'),
(12,6,'DWANGWA',12,'5421421','SAVINGS','BT'),
(13,6,'SUCOMA',13,'5487542','SAVINGS','SUCOMA'),
(14,6,'SUCOMA',14,'546874','SAVINGS','SUCOMA'),
(15,9,'SUCOMA',15,'6584245','SAVINGS','SUCOMA'),
(16,9,'SUCOMA',16,'32542156','SAVINGS','SUCOMA'),
(17,6,'SUCOMA',17,'65423897','SAVINGS','SUCOMA'),
(18,6,'SUCOMA',18,'378126549','SAVINGS','SUCOMA'),
(19,6,'SUCOMA',19,'TAB','SAVINGS','SUCOMA'),
(20,4,'LILO',20,'325645655','SAVINGS','LILONGWE'),
(21,6,'SUCOMA',22,'10984947','SAVINGS','SUCOMA'),
(23,4,'BLANTYRE',23,'TBA','SAVINGS','BT'),
(24,6,'BLANTYRE',70,'17128531','17128531','BT'),
(25,6,'BLANTYRE',71,'17264907','SAVINGS','BT'),
(26,1,'DWANGWA',0,'0013503013833','SAVINGS',NULL),
(27,6,'DWANGWA',39,'11273335','SAVINGS','DWANGWA'),
(28,1,'BLANTYRE',63,'12185502','SAVINGS','BT'),
(29,6,'DWANGWA',84,'16893013','16893013','DWANGWA'),
(30,6,'LILO',74,'17704297','SAVINGS',NULL),
(32,6,'Blantyre',75,'TBA','SAVINGS','BT'),
(33,6,'Blantyre',77,'TBA','SAVINGS','BT'),
(34,6,'BLANTYRE',78,'TBA','SAVINGS','BT'),
(35,4,'Henderson',76,'1004051118','SAVINGS',NULL),
(37,6,'Blantyre',95,'14196315','SAVINGS','BT'),
(39,6,'Blantyre',96,'12604173','SAVINGS','BT'),
(40,6,'LILO',97,'12747063','12747063','LILONGWE'),
(42,4,'Blantyre',34,'TBA','SAVINGS','BT'),
(44,6,'SUCOMA',98,'12390386','12390386','SUCOMA'),
(45,6,'LILO',82,'13243824','SAVINGS','LILONGWE'),
(46,6,'BLANTYRE',85,'12725477','12725477','BT'),
(47,6,'NCHALO',87,'12725256','12725256','SUCOMA'),
(48,6,'SUCOMA',88,'13951338','13951338','SUCOMA'),
(49,6,'SUCOMA',89,'10982065','10982065','SUCOMA'),
(50,6,'BLANTYRE',92,'12185502','12185502','BT'),
(51,6,'BLANTYRE',93,'13668078','13668078','SUCOMA'),
(52,6,'SUCOMA',94,'13809429','13809429','SUCOMA'),
(53,6,'DWANGWA',99,'13276684','13276684','DWANGWA'),
(54,6,'DWANGWA',100,'16852837','16852837','DWANGWA'),
(55,1,'DWANGWA',0,'0013503015516','SAVINGS',NULL),
(57,6,'DWANGWA',103,'13023174','13023174','DWANGWA'),
(58,6,'DWANGWA',104,'13906718','13906718','DWANGWA'),
(59,6,'DWANGWA',105,'13700524','13700524','DWANGWA'),
(60,4,'BLANTYRE',107,'986763','986763','BT'),
(61,6,'DWANGWA',108,'11678904','11678904','DWANGWA'),
(62,6,'BLANTYRE',109,'12923667','20827110017',NULL),
(63,6,'Blantyre',110,'10618134','10618134','BT'),
(64,6,'NCHALO',111,'16786567','16786567','BT'),
(65,6,'SUCOMA',112,'12687273','12687273','SUCOMA'),
(66,6,'Blantyre',113,'10919851','10919851','BT'),
(67,6,'BLANTYRE',114,'11878008','11878008','BT'),
(68,6,'BLANTYRE',115,'10190967','10190967','BT'),
(69,6,'SUCOMA',116,'11340218','11340218','SUCOMA'),
(70,6,'SUCOMA',117,'16847321','16847321','SUCOMA'),
(71,6,'SUCOMA',118,'12344317','12344317','SUCOMA'),
(72,6,'SUCOMA',119,'12535686','12535686','SUCOMA'),
(74,4,'SUCOMA',121,'1002029665','SAVINGS',NULL),
(75,6,'SUCOMA',122,'13009708','SAVINGS','SUCOMA'),
(76,6,'SUCOMA',123,'10749042','SAVINGS','SUCOMA'),
(77,6,'SUCOMA',124,'TBA','SAVINGS','SUCOMA'),
(78,6,'BLANTYRE',126,'12800975','SAVINGS','BT'),
(79,6,'SUCOMA',127,'13810419','SAVINGS','SUCOMA'),
(80,6,'SUCOMA',128,'13935823','SAVINGS','SUCOMA'),
(81,6,'SUCOMA',129,'12485573','SAVINGS','SUCOMA'),
(82,6,'SUCOMA',130,'17626299','SAVINGS',NULL),
(83,6,'SUCOMA',131,'12563914','SAVINGS','SUCOMA'),
(84,6,'SUCOMA',132,'13222207','SAVINGS','SUCOMA'),
(85,6,'Blantyre',133,'10531462','SAVINGS','BT'),
(86,6,'Blantyre',134,'10703212','SAVINGS','BT'),
(87,8,'DWANGWA',135,'1016374246213','SAVINGS',NULL),
(88,8,'DWANGWA',136,'1016332806219','SAVINGS',NULL),
(89,6,'BLANTYRE',137,'20675807017','SAVINGS','BT'),
(90,6,'LILO',138,'17744763','SAVINGS',NULL),
(91,6,'LILO',139,'16924148','SAVINGS',NULL),
(92,8,'DWANGWA',140,'1037291746227','SAVINGS','DWANGWA'),
(93,6,'SUCOMA',141,'TBA','SAVINGS','SUCOMA'),
(94,6,'SUCOMA',90,'12390386','SAVINGS','SUCOMA'),
(96,9,'BLANTYRE',143,'TBA','SAVINGS','BT'),
(97,8,'BLANTYRE',144,'1036009776212','SAVINGS',NULL),
(98,1,'DWANGWA',0,'0013503013062','SAVINGS',NULL),
(99,6,'DWANGWA',83,'16394847','SAVINGS','DWANGWA'),
(100,6,'DWANGWA',106,'16716472','SAVINGS','DWANGWA'),
(101,6,'BLANTYRE',145,'12726098','SAVINGS','BT'),
(102,4,'LILO',146,'1000243414','SAVINGS','LILONGWE'),
(103,3,'DWANGWA',102,'0013503015066','SAVINGS',NULL),
(104,3,'DWANGWA',101,'0013503015516','SAVINGS',NULL),
(105,3,'DWANGWA',79,'0013507013833','SAVINGS',NULL),
(106,3,'DWANGWA',80,'0013503013062','SAVINGS',NULL),
(107,6,'SUCOMA',147,'13668078','SAVINGS',NULL),
(108,6,'DWANGWA',152,'0070875238017','SAVINGS',NULL),
(109,6,'DWANGWA',151,'0070768573016','SAVINGS',NULL),
(110,8,'DWANGWA',40,'1037026616225','SAVINGS',NULL),
(111,6,'limbe',155,'10898552','SAVINGS',NULL),
(112,6,'LIMBE',156,'10753236','SAVINGS',NULL),
(113,6,'LIMBE',157,'17598635','SAVINGS',NULL),
(114,6,'LIMBE',158,'11641978','SAVINGS',NULL),
(115,6,'Ginnery Corner',159,'17724371','SAVINGS',NULL),
(116,4,'VICTORIA',160,'1540661','SAVINGS',NULL),
(117,6,'LIMBE',161,'17599453','SAVINGS',NULL),
(118,6,'LIMBE',162,'17594486','SAVINGS',NULL),
(119,6,'NKHATA BAY',163,'13187975','SAVINGS',NULL),
(120,6,'LILONGWE',164,'11498809','SAVINGS',NULL),
(121,4,'Customs Road',165,'1001546526','SAVINGS',NULL),
(122,4,'LIMBE',166,'1004236684','SAVINGS',NULL),
(123,6,'LIMBE',167,'17597752','SAVINGS',NULL),
(124,6,'LIMBE',168,'17592758','SAVINGS',NULL),
(125,2,'Blantyre',188,'8500000243328','SAVINGS',NULL),
(126,6,'',189,'TBA','SAVINGS',NULL),
(127,6,'BLANTYRE',190,'17600117','SAVINGS',NULL),
(128,6,'BLANTYRE',191,'17596748','SAVINGS',NULL),
(129,6,'Blantyre',187,'17237926','SAVINGS',NULL),
(130,6,'SUCOMA',185,'17029436','SAVINGS',NULL),
(131,6,'Blantyre',186,'17448398','SAVINGS',NULL),
(132,6,'Blantyre',192,'17435639','SAVINGS',NULL),
(133,3,'DWANGWA',194,'0013503013833','SAVINGS',NULL),
(134,6,'limbe',196,'17596748','SAVINGS',NULL),
(135,6,'limbe',197,'17600117','SAVINGS',NULL),
(136,6,'limbe',195,'17598686','SAVINGS',NULL),
(137,2,'BLANTYRE',199,'1070000098363','SAVINGS',NULL),
(138,3,'BLANTYRE',198,'0028503019240','SAVINGS',NULL),
(139,6,'LILO',200,'17748758','SAVINGS',NULL),
(140,6,'LILO',201,'17746375','SAVINGS',NULL),
(142,6,'SUCOMA',203,'17450727','SAVINGS',NULL),
(143,6,'SUCOMA',193,'16836516','SAVINGS',NULL),
(144,6,'NCHALO',204,'17017737','SAVINGS',NULL),
(145,6,'SUCOMA',205,'13222207','SAVINGS',NULL),
(146,6,'BLANTYRE',206,'17434818','SAVINGS',NULL),
(147,2,'NCHALO',207,'1590000040504','SAVINGS',NULL),
(148,4,'NCHALO',208,'3859584','SAVINGS',NULL),
(149,4,'Capital City Branch',210,'1001416045','savings',NULL),
(150,4,'Capital City',209,'1001416045','Savings',NULL),
(151,6,'MZZ',211,'13468467','Savings',NULL),
(152,6,'MZZ',212,'TBA','Savings',NULL),
(153,4,'Nchalo',213,'TBA','Savings',NULL),
(154,4,'Victoria Avenue',217,'1002393944','savings',NULL),
(155,9,'Blantyre',218,'9100002241177','savings',NULL),
(156,6,'NCHALO',214,'TBA','SAVINGS',NULL),
(157,7,'Limbe',219,'5020113695003','Savings',NULL),
(158,4,'bLANTYRE',220,'TBA','Savings',NULL),
(159,4,'Mzuzu',221,'1004299748','Savings',NULL),
(160,1,'Mzuzu',223,'1004299748','savings',NULL);

/*Table structure for table `bonus` */

DROP TABLE IF EXISTS `bonus`;

CREATE TABLE `bonus` (
  `bonus_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `month` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `update` timestamp NULL DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`bonus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

/*Data for the table `bonus` */

insert  into `bonus`(`bonus_id`,`employee_id`,`amount`,`month`,`year`,`date`,`update`,`description`) values 
(2,22,45000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(3,39,40000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(4,79,5000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(5,80,6250,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(6,83,5000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(7,84,5000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(8,85,51200,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(9,87,30000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(10,88,30000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(11,89,35000,'December','2016','2017-06-17',NULL,''),
(12,90,35000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(13,92,46000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(14,94,35000,'December','2016','2017-06-17',NULL,''),
(15,99,35000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(16,100,35000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(17,101,35000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(18,102,35000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(19,103,40000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(20,104,25000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(21,105,29000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(22,106,5000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(23,107,45000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(24,108,45000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(26,111,45000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(27,112,45000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(28,113,32000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(29,114,35000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(30,115,36000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(31,88,30000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(32,118,35000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(33,119,35000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(34,120,30000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(35,121,35000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(36,122,35000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(37,126,36000,'December','2016','2017-06-17',NULL,''),
(38,127,35000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(39,128,35000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(40,129,38000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(41,131,38000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(42,132,35000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(43,117,30000,'December','2016','2017-06-17',NULL,'thirteenth cheque'),
(44,147,33000,'December','2016','2017-06-18',NULL,'thirteenth cheque'),
(45,148,29000,'December','2016','2017-06-18',NULL,'Dec year end  bonus'),
(46,116,25000,'December','2016','2017-06-18',NULL,''),
(47,123,35000,'December','2016','2017-06-19',NULL,'dec bonus'),
(48,99,24000,'December','2015','2017-06-26',NULL,''),
(49,160,-25600,'August','2017','2017-08-14',NULL,'two weeks suspension without pay'),
(50,99,39,'December','2017','2017-12-11',NULL,'Year end Bonuse'),
(51,22,53,'December','2017','2017-12-11',NULL,'Dec.2017  Bonus'),
(52,39,48,'December','2017','2017-12-11',NULL,'Dec.2017 bonus'),
(53,70,60,'December','2017','2017-12-11',NULL,'Dec.2017 bonus'),
(54,71,60000,'December','2017','2017-12-11',NULL,'Year End Bonus'),
(55,76,30000,'December','2017','2017-12-19',NULL,'2017 bonus'),
(56,80,28000,'December','2017','2017-12-19',NULL,'2017 bonuses'),
(57,82,35000,'December','2017','2017-12-19',NULL,'2017 bonuses'),
(58,83,25000,'December','2017','2017-12-19',NULL,'2017 bonuses'),
(59,84,25000,'December','2017','2017-12-19',NULL,'2017 bonuses'),
(60,85,25000,'December','2017','2017-12-19',NULL,'2017 bonuses'),
(61,88,33000,'December','2017','2017-12-19',NULL,'2017 bonuses'),
(62,89,42000,'December','2017','2017-12-19',NULL,'2017 year end bonuses'),
(63,90,42500,'December','2017','2017-12-19',NULL,'2017 bonuses'),
(64,94,39500,'December','2017','2017-12-19',NULL,'2017 bonuses'),
(65,92,1e39,'December','2017','2017-12-19','2017-12-19 00:07:29',''),
(66,95,100000,'December','2017','2017-12-19','2017-12-19 00:11:29','ok'),
(67,96,1,'December','2017','2017-12-19',NULL,''),
(68,97,1,'December','2017','2017-12-19',NULL,''),
(69,100,41000,'December','2017','2017-12-19',NULL,'2017 bonuses'),
(70,101,42500,'December','2017','2017-12-19',NULL,'2017 bonuses'),
(71,102,44000,'December','2017','2017-12-19',NULL,''),
(72,103,46000,'December','2017','2017-12-19',NULL,'2017 bonuse'),
(73,104,28000,'December','2017','2017-12-19',NULL,'2017 bonuse'),
(74,105,33500,'December','2017','2017-12-19',NULL,'2017 bonuse'),
(75,106,25000,'December','2017','2017-12-19',NULL,'2017 bonuse'),
(76,107,48000,'December','2017','2017-12-19',NULL,'2017 bonuse'),
(77,108,51000,'December','2017','2017-12-19',NULL,'2017 bonuses'),
(78,109,51200,'December','2017','2017-12-19',NULL,'2017 bonuse'),
(79,110,51200,'December','2017','2017-12-19',NULL,'2017 bonuse'),
(80,111,49000,'December','2017','2017-12-19',NULL,'2017 bonuse'),
(81,112,52000,'December','2017','2017-12-19',NULL,'2017 bonuse'),
(82,113,30000,'December','2017','2017-12-19',NULL,'2017 bonuse'),
(83,114,30000,'December','2017','2017-12-19',NULL,'2017 bonuse'),
(84,115,44000,'December','2017','2017-12-19',NULL,'2017 bonuse'),
(85,117,33000,'December','2017','2017-12-19',NULL,'2017 bonuse'),
(86,118,42500,'December','2017','2017-12-19',NULL,'2017 bonuse'),
(87,119,42500,'December','2017','2017-12-19',NULL,'2017 bonue'),
(88,121,41000,'December','2017','2017-12-19',NULL,'2017 bonuse'),
(89,122,38500,'December','2017','2017-12-19',NULL,'2017 bonuse'),
(90,127,39500,'December','2017','2017-12-19',NULL,'2017 bonuse'),
(91,128,39500,'December','2017','2017-12-19',NULL,'2017 bonuse'),
(92,130,30000,'December','2017','2017-12-19',NULL,'2017 bonuse'),
(93,131,45500,'December','2017','2017-12-19',NULL,'2017 bonuse'),
(94,133,35000,'December','2017','2017-12-19',NULL,'2017 bonuse'),
(95,134,30000,'December','2017','2017-12-19',NULL,'2017 bonuse'),
(96,135,25000,'December','2017','2017-12-19',NULL,'2017 bonuse'),
(97,136,25000,'December','2017','2017-12-19',NULL,'2017 bonuse');

/*Table structure for table `company_details` */

DROP TABLE IF EXISTS `company_details`;

CREATE TABLE `company_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `company_details` */

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `department` varchar(100) NOT NULL,
  `description` text,
  `depot_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `department` */

insert  into `department`(`department_id`,`department`,`description`,`depot_id`) values 
(12,'SMS H/O,s','BLANTYRE',NULL),
(13,'CLEANING  OFFICES','ALL OFFICES',NULL),
(14,'Fuel Attendant','Gasoline',NULL),
(15,'General Cleaning','seasonal',NULL),
(16,'Total H/O','Offices ',NULL);

/*Table structure for table `depot` */

DROP TABLE IF EXISTS `depot`;

CREATE TABLE `depot` (
  `depot_id` int(11) NOT NULL AUTO_INCREMENT,
  `depot` varchar(100) NOT NULL,
  `description` text,
  `address` text,
  PRIMARY KEY (`depot_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `depot` */

insert  into `depot`(`depot_id`,`depot`,`description`,`address`) values 
(9,'SUCOMA','NCHALO',NULL),
(10,'LIMBE DEPOT','BLANTYRE',NULL),
(11,'ZAGAF DEPOT','INDUSTRIAL SITE',NULL),
(12,'MAKATA DEPOT','NDIRANDE SITE',NULL),
(13,'TOTAL H/O','MASELEMA',NULL),
(14,'DWANGWA DEPOT','DWANGWA',NULL),
(15,'KANENGO DEPOT','LILONGWE',NULL),
(16,'KAMBUKU DEPOT','CITY CENTRE',NULL),
(17,'MZUZU DEPOT','MZUZU',NULL),
(18,'D H L hq','Cleaning dept',NULL),
(19,'DHL Bt','Cleaning department',NULL),
(20,'SMS HHead Office','Administration',NULL),
(21,' Head Office','Ad',NULL),
(22,'MDs House','House Servants',NULL),
(23,'Tsiranana Filling Station','Retail Section','Machinjiri Turn Off'),
(24,'TSIRANANA FILLING STATION','COCO','MACHINJIRI TURN OFF'),
(25,'KAONDO S HOUSE','','P O Box 70143  Blantyre');

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `gender` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `nextofkin` text CHARACTER SET latin1,
  `homeaddress` text,
  `contactaddress` text CHARACTER SET latin1,
  `qualification_id` int(11) DEFAULT NULL,
  `email` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `birthdate` varchar(100) DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `bsalary` float DEFAULT '0',
  `startdate` varchar(100) DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  `date_added` date DEFAULT NULL,
  `depot_id` int(11) DEFAULT NULL,
  `tea_allowance` float DEFAULT '0',
  `salary_date` varchar(100) DEFAULT 'September 2016',
  `on_pension` int(1) DEFAULT '1',
  `job_id` int(11) DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8;

/*Data for the table `employees` */

insert  into `employees`(`employee_id`,`name`,`gender`,`status`,`nextofkin`,`homeaddress`,`contactaddress`,`qualification_id`,`email`,`birthdate`,`phone`,`department_id`,`bsalary`,`startdate`,`active`,`date_added`,`depot_id`,`tea_allowance`,`salary_date`,`on_pension`,`job_id`,`date_updated`,`photo`) values 
(1,'Crevrand Kaondo','Male','Married','mwenda','P O Box 70144 Blatntyre','',1,'crevrandkaondo@yahoo.com','1956-10-01','0995548992',15,30000,'2007-01-01',0,'2016-12-26',20,0,'August 2017',0,1,'2017-07-23 21:48:36','jlWCJ.jpg'),
(2,'Balakasi',NULL,'Married','adams','BT','bt',NULL,'crevrandkaondo@yahoo.com','1986-01-01','0995548992',14,16000,'2007-01-01',0,'2017-01-12',21,800,'November 2009',0,NULL,NULL,NULL),
(3,'Chiza Gondwe',NULL,'Married','tatal','Mzimba','Zagaf',NULL,'crevrandkaondo@yahoo.com','1985-07-05','0995548992',15,11440,'2007-05-01',1,'2017-01-26',21,800,'January 2010',0,NULL,NULL,NULL),
(4,'Abdul Jafali','Male','Married','banda','Zomba','dwasco',NULL,'crevrandkaondo@yahoo.com','1998-06-02','0995548992',14,11300,'2007-01-01',0,'2017-01-12',14,800,'November 2009',1,NULL,NULL,NULL),
(5,'Sefu Kangulero',NULL,'Married','nhkhoma','BT','chirwa',NULL,'crevrandkaondo@yahoo.com','1986-10-25','0995548992',15,9316.53,'2007-01-01',0,'2017-01-05',21,0,'February 2008',0,NULL,NULL,NULL),
(6,'Peter LAPOZO',NULL,'Married','patrick','Rumphi','sucoma',NULL,'crevrandkaondo@yahoo.com','1987-05-23','0995548992',14,7920.5,'2007-01-01',0,'2016-12-27',9,0,'February 2008',1,NULL,NULL,NULL),
(7,'Chandiwira Kayira',NULL,'Married','makeres','Rumphi','dwasco',NULL,'crevrandkaondo@yahoo.com','1979-05-27','0995548992',15,7584.76,'2007-01-01',0,'2017-01-05',21,0,'February 2008',0,NULL,NULL,NULL),
(8,'Isack Salima','Male','Married','sefu','Salima','dwasco',NULL,'crevrandkaondo@yahoo.com','1987-10-30','0995548992',14,10300,'2007-01-01',0,'2017-01-12',14,800,'November 2009',1,NULL,NULL,NULL),
(9,'Levison Malulu',NULL,'Married','SAME','nsanje','dwasco',NULL,'crevrandkaondo@yahoo.com','1985-04-06','0995548992',15,9700.51,'2007-01-01',0,'2017-01-05',21,0,'February 2009',0,NULL,NULL,NULL),
(10,'mOSES kAMBEWA',NULL,'Married','Robert','Mlanje','sucoma',NULL,'crevrandkaondo@yahoo.com','1990-10-25','0995548992',15,114091,'2007-01-01',0,'2017-01-05',21,0,'February 2008',0,NULL,NULL,NULL),
(11,'Levi Chirombo',NULL,'Married','Robert','Balaka','adda',NULL,'crevrandkaondo@yahoo.com','1988-12-30','0995548992',15,14855.8,'2007-01-01',0,'2017-01-05',21,0,'February 2009',0,NULL,NULL,NULL),
(12,'Fleya Noil','Male','Married','dada','Zomba','sucoma',NULL,'crevrandkaondo@yahoo.com','1998-05-10','0995548992',14,7820.5,'2007-01-01',0,'2016-12-27',9,0,'February 2008',1,NULL,NULL,NULL),
(13,'Peter Dziwani',NULL,'Married','all','Rumphi','sucoma',NULL,'crevrandkaondo@yahoo.com','1995-09-15','0995548992',15,9316.53,'2007-01-01',0,'2017-01-05',21,0,'February 2008',0,NULL,NULL,NULL),
(14,'Victor Kateketsa','Male','Married','mwenda','Rumphi','sucoma',NULL,'crevrandkaondo@yahoo.com','1988-05-22','0995548992',14,7150,'2007-01-01',0,'2016-12-27',9,0,'July 2007',1,NULL,NULL,NULL),
(15,'Justine Same',NULL,'Married','Joseph Chipala','Zomba','sucoma',NULL,'crevrandkaondo@yahoo.com','1998-05-31','0995548992',14,7223,'2007-01-01',0,'2016-12-27',9,0,'February 2008',0,NULL,NULL,NULL),
(16,'Kuliyani Martin','Male','Married','banda','Mzimba','sucoma',NULL,'crevrandkaondo@yahoo.com','1988-05-28','0995548992',14,7150,'1978-01-01',0,'2016-12-27',9,0,'February 2008',1,NULL,NULL,NULL),
(17,'Jalazi Bestone','Male','Single','brown','Mzuzu','sucoma',NULL,'crevrandkaondo@yahoo.com','1985-12-25','0995548992',14,7150,'2007-01-01',0,'2016-12-28',9,0,'February 2008',1,NULL,NULL,NULL),
(18,'Mtitima Aubrey','Male','Married','Robert','Zomba','bt',NULL,'crevrandkaondo@yahoo.com','1987-12-31','0995548992',14,8507,'2007-01-01',0,'2017-01-09',9,0,'January 2009',1,NULL,NULL,NULL),
(19,'Pinfolo Francis',NULL,'Married','Robert','Zomba','bt',NULL,'crevrandkaondo@yahoo.com','1987-12-31','0995548992',15,8316.53,'2007-01-01',0,'2017-01-05',21,0,'February 2008',0,NULL,NULL,NULL),
(20,'Hosea Khombedza','Male','Married','tatal','Lilongwe','LL',NULL,'crevrandkaondo@yahoo.com','1986-08-24','0995548992',14,15262.7,'2007-01-01',0,'2017-01-09',21,0,'February 2008',1,NULL,NULL,NULL),
(21,'Patrick Matewere',NULL,'Married','Joseph ','Lilongwe','adda',NULL,'crevrandkaondo@yahoo.com','1987-12-15','0995548992',15,11824.6,'2007-01-01',0,'2017-01-09',21,0,'January 2009',0,NULL,NULL,NULL),
(22,'Moses Chimdzakadzi','Male','Married','kaondo','Nchalo','sucoma',7,'crevrandkaondo@yahoo.com','1978-07-02','0995548992',16,1000000000000,'2007-01-01',1,'2017-03-26',9,1500,'February 2018',1,11,'2017-09-12 03:25:40','BlWB8.jpg'),
(23,'Chrissy Chiwambo','Female','Married','Chirwa','Mzimba','bt',NULL,'crevrandkaondo@yahoo.com','1979-12-23','09954548',15,32900,'2007-05-01',0,'2017-01-09',21,0,'September 2009',1,NULL,NULL,NULL),
(24,'Frank Mangani',NULL,'Married','Robert','BT','dwasco',NULL,'crevrandkaondo@yahoo.com','1997-07-07','0997618290',15,9880,'2007-09-10',0,'2017-01-26',21,800,'January 2010',0,NULL,NULL,NULL),
(25,'Rashid Meza','Male','Single','Joseph Chipala','Zomba','dwasco',NULL,'crevrandkaondo@yahoo.com','1994-05-01','0997618290',14,6000,'2007-09-01',0,'2017-01-05',14,1500,'January 2008',1,NULL,NULL,NULL),
(26,'Patrick Chindebvu',NULL,'Married','mwenda','Lilongwe','sucoma',NULL,'dwangwa@yahoo.com','1992-01-05','0995482241',15,6000,'2007-09-07',0,'2017-01-05',21,1500,'January 2008',0,NULL,NULL,NULL),
(27,'Mike P Chikafa','Male','Married','mwenda','Mzimba','Zagaf',NULL,'dwangwa@yahoo.com','1991-03-01','0995482241',15,11880,'2007-09-02',0,'2017-01-27',21,800,'January 2010',1,NULL,NULL,NULL),
(28,'Bernard Dissi','Male','Married','Robert','Mzimba','sucoma',NULL,'crevrandkaondo@yahoo.com','1990-07-01','0997618290',14,6000,'2007-09-02',0,'2017-01-05',14,1500,'October 2007',1,NULL,NULL,NULL),
(29,'Davie Chiziwa',NULL,'Married','Robert','Mzimba','sucoma',NULL,'crevrandkaondo@yahoo.com','1991-05-02','0881403408',15,7000,'2007-03-02',0,'2017-01-05',21,1500,'June 2009',0,NULL,NULL,NULL),
(30,'Jack Phiri','Male','Married','mwenda','Rumphi','sucoma',1,'dwangwa@yahoo.com','1988-07-05','0995482241',15,45000,'2008-01-01',0,'2017-01-27',21,800,'June 2017',1,1,'2017-06-25 14:13:40','YGKGH.jpg'),
(31,'Wilson Gawaza','Male','Married','Robert','Rumphi','bt',NULL,'crevrandkaondo@yahoo.com','1988-08-12','0997618290',14,6000,'2008-01-01',0,'2017-01-05',10,1500,'September 2016',1,NULL,NULL,NULL),
(32,'David Banda','Male','Married','Robert','Rumphi','dwasco',NULL,'crevrandkaondo@yahoo.com','1985-05-22','0997618290',14,6000,'2008-01-01',0,'2017-01-05',10,1500,'January 2008',1,NULL,NULL,NULL),
(33,'Ira Ngwira',NULL,'Married','Robert','Rumphi','sucoma',NULL,'crevrandkaondo@yahoo.com','1991-08-05','0995548992',15,7000,'2008-01-01',0,'2017-01-05',21,0,'September 2016',0,NULL,NULL,NULL),
(34,'Gevison Mazombwe','Male','Married','tatal','Ncheu','NCHEU',1,'dwangwa@yahoo.com','1976-05-02','0881403408',15,25000,'2008-04-01',0,'2017-02-26',21,800,'December 2015',1,1,'2017-06-25 00:29:50','BEGFK.jpg'),
(35,'Suwedi Mahommadi','Male','Married','tatal','Mangocho','sucoma',NULL,'dwangwa@yahoo.com','1977-12-24','0991185747',14,6000,'2009-01-01',0,'2017-01-09',14,0,'January 2009',0,NULL,NULL,NULL),
(36,'Hana Ndawala','Female','Married','tatal','BT','Zagaf',NULL,'crevrandkaondo@yahoo.com','1978-05-01','0991185747',14,7000,'2009-09-01',0,'2017-01-12',11,0,'October 2009',1,NULL,NULL,NULL),
(37,'James Labeka','Male','Single','tatal','BT','sucoma',NULL,'crevrandkaondo@yahoo.com','1977-08-20','0888613741',14,6000,'2009-09-01',0,'2017-01-12',9,0,'December 2010',1,NULL,NULL,NULL),
(38,'Miriam Nkhoma','Female','Married','tatal','BT','Zagaf',NULL,'crevrandkaondo@yahoo.com','1970-05-21','0995482241',15,9280,'2009-09-01',0,'2017-01-27',21,800,'January 2010',1,NULL,NULL,NULL),
(39,'Phenious Kamthunzi','Male','Married','tatal','Mzimba','dwasco',7,'crevrandkaondo@yahoo.com','1972-05-24','0881403408',14,48000,'2009-09-01',1,'2017-03-28',14,1500,'February 2018',1,1,'2017-08-26 02:15:20','9L3T5.jpg'),
(40,'Alapeyine Chimbende','Male','Married','Chimbende','Mwanza','Makata',1,'crevrandkaondo@yahoo.com','1978-05-01','0995548992',16,119000,'2009-10-19',0,'2017-01-26',21,0,'July 2016',1,1,'2017-06-26 11:10:57','vOWbq.jpg'),
(41,'B.Chumbi','Male','Married','banda','Mzimba','sucoma',NULL,'crevrandkaondo@yahoo.com','1978-12-05','0995482241',14,25000,'2009-08-01',0,'2017-01-19',9,800,'December 2009',1,NULL,NULL,NULL),
(42,'Bornwell Pammawa',NULL,'Married','Joseph Chipala','Zomba','sucoma',NULL,'crevrandkaondo@yahoo.com','1978-05-23','0995482241',15,7280,'2009-11-01',0,'2017-01-26',21,800,'January 2010',0,NULL,NULL,NULL),
(43,'James Labeka','Male','Married','tatal','BT','sucoma',NULL,'crevrandkaondo@yahoo.com','1978-05-23','0997618290',15,7280,'2009-11-01',0,'2017-01-26',21,800,'January 2010',1,NULL,NULL,NULL),
(44,'Noil Khanyanga','Male','Married','tatal','Zomba','sucoma',NULL,'crevrandkaondo@yahoo.com','1978-08-24','0881403408',15,7280,'2009-11-01',0,'2017-01-26',21,800,'February 2011',1,NULL,NULL,NULL),
(45,'Alick Manda','Male','Married','tatal','Rumphi','dwasco',NULL,'dwangwa@yahoo.com','1992-03-31','0997618290',15,9280,'2011-01-01',0,'2017-01-27',21,800,'January 2010',1,NULL,NULL,NULL),
(46,'Suwedi Mahommadi','Male','Married','Robert','Lilongwe','dwasco',NULL,'dwangwa@yahoo.com','1980-02-02','0995482241',15,9280,'2011-01-01',0,'2017-01-27',21,800,'January 2010',1,NULL,NULL,NULL),
(47,'Maxwel Chikaliso','Male','Married','mwenda','Zomba','Zagaf',NULL,'dwangwa@yahoo.com','1992-02-01','0991185747',15,9880,'2011-01-26',0,'2017-01-26',21,800,'February 2011',1,NULL,NULL,NULL),
(48,'Richard Chikwatu','Male','Married','tatal','Zomba','adda',NULL,'dwangwa@yahoo.com','1991-06-22','0881403408',15,6240,'2011-01-01',0,'2017-01-26',21,800,'February 2011',1,NULL,NULL,NULL),
(49,'Victor Phiri','Male','Married','adams','Mzimba','dwasco',NULL,'dwangwa@yahoo.com','1988-12-01','0881403408',15,9360,'2011-01-01',0,'2017-01-26',21,800,'January 2010',1,NULL,NULL,NULL),
(50,'Rabeca Dalitso Chokani','Female','Married','banda','Rumphi','Zagaf',NULL,'dwangwa@yahoo.com','1990-01-22','0888613741',15,26000,'2011-01-01',0,'2017-01-26',21,800,'January 2010',1,NULL,NULL,NULL),
(51,'Alexander Jumphani','Male','Married','adams','Zomba','Zagaf',NULL,'dwangwa@yahoo.com','1980-12-02','0991185747',15,7280,'2011-01-01',0,'2017-01-26',21,800,'February 2011',1,NULL,NULL,NULL),
(52,'Elisa dzinkambani','Male','Married','mwenda','Mzimba','Zagaf',NULL,'dwangwa@yahoo.com','1992-12-12','0995482241',15,7280,'2011-01-01',0,'2017-01-26',21,800,'February 2011',1,NULL,NULL,NULL),
(53,'Justice Ntambila','Male','Married','Robert','Mzimba','sucoma',NULL,'crevrandkaondo@yahoo.com','1981-05-22','0997618290',15,9280,'2011-01-01',0,'2017-01-27',21,800,'February 2011',1,NULL,NULL,NULL),
(54,'Rodney  Madeya','Male','Married','Robert','BT','Zagaf',NULL,'dwangwa@yahoo.com','1990-12-01','0995548992',15,7280,'2011-01-01',0,'2017-01-26',21,800,'January 2011',1,NULL,NULL,NULL),
(55,'Yohani Nkhata','Male','Married','Robert','Mzimba','dwasco',NULL,'dwangwa@yahoo.com','1991-02-02','0997618290',15,7280,'2011-01-01',0,'2017-01-26',21,800,'January 2011',1,NULL,NULL,NULL),
(56,'Edwin Maxwel Manda','Male','Married','tatal','Mzimba','dwasco',NULL,'dwangwa@yahoo.com','1990-12-25','0881403408',15,7000,'2011-02-02',0,'2017-01-26',21,800,'September 2016',0,NULL,NULL,NULL),
(57,'Eunice Chimpeni',NULL,'Married','mwenda','Zomba','Zagaf',NULL,'dwangwa@yahoo.com','1990-09-25','0881403408',15,9000,'2011-02-02',0,'2017-01-27',21,800,'February 2011',0,NULL,NULL,NULL),
(58,'Hariss Lupiya','Male','Married','Robert','Rumphi','bt',NULL,'dwangwa@yahoo.com','1990-11-01','0995482241',15,9000,'2011-02-02',0,'2017-01-27',21,800,'February 2011',0,NULL,NULL,NULL),
(59,'Wanangwa Lungu','Male','Married','tatal','Zomba','sucoma',NULL,'crevrandkaondo@yahoo.com','1988-11-01','0995548992',15,22500,'2011-02-02',0,'2017-01-26',21,800,'February 2011',0,NULL,NULL,NULL),
(60,'Breastings chumbu','Male','Married','tatal','Mzimba','sucoma',NULL,'crevrandkaondo@yahoo.com','1988-12-20','0997618290',15,7000,'2011-02-02',0,'2017-01-26',21,800,'January 2010',0,NULL,NULL,NULL),
(61,'davie Barnet','Male','Married','tatal','Zomba','dwasco',NULL,'crevrandkaondo@yahoo.com','1980-11-02','0997618290',15,6000,'2011-02-02',0,'2017-01-26',21,800,'February 2011',0,NULL,NULL,NULL),
(62,'Dickson Makhuludzo','Male','Married','mwenda','Zomba','sucoma',NULL,'dwangwa@yahoo.com','1992-10-25','0995548992',15,6000,'2011-02-02',0,'2017-01-26',21,800,'February 2011',0,NULL,NULL,NULL),
(63,'edson Chiwambano','Male','Married','tatal','Mzimba','sucoma',NULL,'crevrandkaondo@yahoo.com','1990-05-22','0995548992',15,7000,'2011-02-02',0,'2017-01-26',21,800,'February 2011',0,NULL,NULL,NULL),
(64,'Gift Msyani','Male','Married','tatal','BT','dwasco',NULL,'dwangwa@yahoo.com','1990-06-26','0995548992',15,6000,'2011-02-02',0,'2017-01-26',21,800,'February 2011',0,NULL,NULL,NULL),
(65,'peter folly','Male','Married','tatal','Zomba','sucoma',NULL,'crevrandkaondo@yahoo.com','1988-05-26','0995548992',15,7280,'2011-02-02',0,'2017-01-26',21,800,'February 2011',0,NULL,NULL,NULL),
(66,'samuel welemu','Male','Married','Robert','Mzimba','sucoma',NULL,'dwangwa@yahoo.com','1992-01-02','0995548992',15,7280,'2011-02-02',0,'2017-01-26',21,800,'February 2011',0,NULL,NULL,NULL),
(67,'Samuel Maferano','Male','Married','Robert','Zomba','',NULL,'crevrandkaondo@yahoo.com','1991-01-21','0997618290',15,6000,'2011-02-02',0,'2017-01-26',21,800,'February 2011',0,NULL,NULL,NULL),
(68,'Zatha Chitseko','Male','Married','tatal','Zomba','dwasco',NULL,'crevrandkaondo@yahoo.com','1992-12-22','0997618290',15,6000,'2011-02-02',0,'2017-01-26',21,800,'February 2011',0,NULL,NULL,NULL),
(69,'gift misheki','Male','Married','Robert','Mzimba','dwasco',NULL,'crevrandkaondo@yahoo.com','1990-02-25','0995548992',15,7280,'2011-02-02',0,'2017-01-26',21,800,'February 2011',0,NULL,NULL,NULL),
(70,'Gladys Ng\'oma','Female','Married','Phyllip Ngoma',' P O Box 466, Blantyre','PM Ngoma',10,'pmsasu@yahoo.com','1996-06-20','0881091303',16,60000,'2017-01-01',1,'2017-03-24',21,0,'February 2018',1,1,'2017-10-23 22:41:34','MRzzt.jpg'),
(71,'Lonjezo Kagwira','Male','Single','kagwira','P O Box 430 Blatntyre','B.Kagwira',NULL,'lonekagwira@gmail.com','1993-06-09','0997705156',12,60000,'2017-01-01',1,'2017-01-27',21,0,'March 2018',1,NULL,NULL,NULL),
(72,'Angelia Phiri','Female','Married','tatal','Mzimba','Zagaf',NULL,'crevrandkaondo@yahoo.com','1990-02-22','0995548992',15,8500,'2011-04-01',0,'2017-01-27',21,800,'September 2016',0,NULL,NULL,NULL),
(73,'Levison S Phiri','Male','Married','Robert','Mzimba','dwasco',NULL,'dwangwa@yahoo.com','1993-02-03','0997618290',15,8500,'2011-04-02',0,'2017-01-27',21,800,'September 2016',1,NULL,NULL,NULL),
(74,'Marther Kaunda','Female','Married','CHIKAIKO MANJAWIRA','0881006496   LILONGWE','CHIKAIKO 0884598957MANJAWIRA    ',NULL,'martherkaunda@yahoo.com','1990-08-27','0884598957',15,35000,'2017-02-10',1,'2017-03-02',18,0,'March 2018',1,NULL,NULL,NULL),
(75,'Yohani Limited','Male','Single','tatal','Thyolo','Makata',NULL,'makatadepot@yahoo.com','1997-10-09','0881403408',15,15000,'2017-02-01',0,'2017-02-13',12,0,'February 2017',0,NULL,NULL,NULL),
(76,'Grace Masanga','Female','Married','Rodney Masanga','Kuntaja   Lunzu','Chilomoni Rodney Masanga',1,'makata@yahoo.com','1987-05-27','0996612576',15,30000,'2017-02-01',1,'2017-02-13',12,0,'February 2018',0,1,'2017-05-28 09:06:39','hAbFZ.jpg'),
(77,'Petro Mawindo','Male','Single','tatal','Ndirande','Makata',NULL,'crevrandkaondo@yahoo.com','1993-11-10','0995482241',15,15000,'0017-12-10',0,'2017-02-13',12,0,'March 2017',0,NULL,NULL,NULL),
(78,'Siman Ngwira','Male','Married','Ngwira A','Nkhata Bay','Anderson Ngwira',NULL,'crevrandkaondo@yahoo.com','1978-02-28','0999467796/0881212057',15,20000,'2016-04-03',0,'2017-02-13',12,0,'February 2017',0,NULL,NULL,NULL),
(79,'Mary  Mwalija','Male','Married','Elena Mwalija','Dwangwa  P O Box 46, Dwangwa','Jacj Phiri',7,'dwangwa@yahoo.com','1997-05-26','0881768493',14,23000,'2016-10-01',0,'2017-03-27',14,1500,'October 2016',0,1,'2017-06-28 10:14:22','DlIBu.jpg'),
(80,'Juliana Nyimbiri','Male','Married','Francis Zebron Mhango','Dwangwa  P O Box 46, Dwangwa','dwasco',1,'dwangwa@yahoo.com','1992-01-29','0882565899',14,28000,'2016-10-01',1,'2017-03-21',14,1500,'February 2018',1,1,'2017-08-24 20:44:16','V1lKU.jpg'),
(81,'Nkhoma Tryson Austne',NULL,'Married','Austine Nkhoma','Mzimba','dwasco',10,'dwangwa@yahoo.com','1994-12-12','0881077535',16,23000,'2016-10-01',0,'2017-03-26',22,1500,'May 2017',0,NULL,NULL,NULL),
(82,'Phylis Manda','Female','Married','tatal','Nkhata Bay','total Kambuku',1,'crevrandkaondo@yahoo.com','1994-10-06','0885643073',15,35000,'2017-01-01',1,'2017-02-13',16,0,'February 2018',0,1,'2017-10-22 17:23:48','JH7fq.jpg'),
(83,'Blessing Dishes Mwale','Male','Married','Mr Dishes','Nkhota kota','Mr Dishes',7,'dwangwa@yahoo.com','1994-05-07','0884257749',14,25000,'0016-02-11',1,'2017-03-21',14,1500,'March 2018',1,1,'2017-08-24 20:42:40','Ze0kE.jpg'),
(84,'Cecilia Sichale','Female','Single','Patricia Sichale','Karonga','Patricia Sichale',7,'dwangwa@yahoo.com','1994-05-16','082146158',16,25000,'2016-10-01',1,'2017-03-27',14,1500,'March 2018',1,1,'2017-08-24 20:43:32','hs7wm.jpg'),
(85,'Meria Ngalawa','Female','Married','KCK','BT','',10,'crevrandkaondo@yahoo.com','1997-12-01','0881550',16,54700,'2015-11-01',1,'2017-03-27',22,0,'February 2018',0,1,'2017-07-21 19:30:14','ILaPZ.jpg'),
(86,'Billy Tobious','Male','Married','tatal','Mwanza','Limbe Depot',NULL,'crevrandkaondo@yahoo.com','1994-12-01','0999488298',15,51200,'2015-11-01',0,'2017-02-13',10,0,'December 2015',1,NULL,NULL,NULL),
(87,'Madalitso Seyani','Male','Single','tatal','BT','sucoma',7,'sucoma@yahoo.com','1988-11-01','TBA',14,33000,'2016-05-01',0,'2017-03-27',9,1500,'July 2017',1,1,'2017-06-28 18:19:01','v6Mc9.jpg'),
(88,'Bizwick Thipiwa','Male','Single','FRANCISCO tHIPIWA','Nchalo','Box 430. BT ',7,'sucoma@yahoo.com','1990-04-11','0888429756',14,33000,'2015-01-07',1,'2017-03-27',9,1500,'March 2018',1,1,'2017-06-28 18:17:47','YmitV.jpg'),
(89,'Charity Kadzombe','Female','Married','tatal','Nchalo','TBA',1,'sucoma@yahoo.com','1982-03-19','0884213788',14,42500,'2012-11-01',1,'2017-02-27',9,1500,'February 2018',1,1,'2017-06-28 18:18:16','Nb1aX.jpg'),
(90,'Charles Jimu','Male','Married','tatal','Nchalo','sucoma',10,'sucoma@yahoo.com','1985-02-01','088234400',16,42500,'2012-02-01',1,'2017-03-27',9,1500,'February 2018',1,1,'2017-06-28 18:18:40','Aroa0.jpg'),
(91,'Chisomo Kachepa','Male','Single','Robert','BT','sucoma',1,'sucoma@yahoo.com','1991-12-21','0882443046',14,29000,'2013-11-17',0,'2017-02-15',21,800,'December 2015',1,1,'2017-06-26 09:38:50','F28CH.jpg'),
(92,'Edson Chiwambano','Male','Married','tatal','BT','bt',1,'sucoma@yahoo.com','','088419743',14,53500,'2011-02-02',1,'2017-03-21',12,0,'February 2018',1,1,'2017-08-26 02:14:04','zhC6N.jpg'),
(93,'Eliza Chiwoko','Female','Married','tatal','Chiradzulu','Vrinda Chagunda',10,'sucoma@yahoo.com','1989-12-16','',16,37500,'2014-06-15',0,'2017-03-27',22,1500,'May 2017',1,NULL,NULL,NULL),
(94,'Patricia Malimbwana','Female','Married','tatal','Nchalo','sucoma',1,'sucoma@yahoo.com','1988-07-11','0997234401',14,39500,'2014-10-15',1,'2017-03-21',9,1500,'February 2018',1,1,'2017-06-28 18:31:37','W5Fgf.jpg'),
(95,'Richard Maron','Male','Married','Virginia Maron','BT','Box 70143 BT',1,'crevrandkaondo@yahoo.com','2015-01-15','0884503547',15,35000,'',1,'2017-02-26',19,0,'February 2018',1,1,'2017-08-26 02:28:59','p84kH.jpg'),
(96,'Tikhale Sambani','Male','Married','Makunganya','BT','Chileka',NULL,'crevrandkaondo@yahoo.com','1988-12-12','0888926498',15,30000,'2015-08-01',1,'2017-02-23',19,0,'February 2018',1,NULL,NULL,NULL),
(97,'Christopher Bicktone','Male','Married','KIA','Lilongwe','Chikanda Lumbadzi',NULL,'christopher@gmail.com','1983-03-28','0991482504',15,35000,'2015-01-01',1,'2017-02-23',18,0,'February 2018',1,NULL,NULL,NULL),
(98,'Charles Jimu','Male','Single','Allan','Ngabu','sucoma',NULL,'sucoma@yahoo.com','1985-01-01','0881187986',14,8000,'2012-02-01',0,'2017-02-27',9,800,'September 2016',1,NULL,NULL,NULL),
(99,'Annastanzia Bandah','Female','Single','kaondo','Mazembe NkhataBay','Auteka',1,'crevrandkaondo@yahoo.com','1985-03-20','0884969796',14,39500,'2014-01-08',1,'2017-03-21',14,1500,'March 2018',1,1,'2017-06-28 10:08:42','nBCzr.jpg'),
(100,'Ganizani Kayiwala','Male','Married','Jack Phiri','Dwangwa  P O Box 46, Dwangwa','dwasco',1,'dwangwa@yahoo.com','1989-10-25','TBA',14,41000,'2013-05-29',1,'2017-03-21',14,1500,'February 2018',1,1,'2017-06-28 10:10:15','0kWeD.jpg'),
(101,'Grace Zaoneka','Female','Married','tatal','Dwangwa  P O Box 46, Dwangwa','dwasco',1,'dwangwa@yahoo.com','31989-10-01','TBA',14,42500,'2012-12-01',1,'2017-03-21',14,1500,'February 2018',1,1,'2017-06-28 10:11:52','TRcze.jpg'),
(102,' Hajira Chimeza','Female','Married','tatal','Dwangwa  P O Box 46, Dwangwa','dwasco',7,'dwangwa@yahoo.com','1990-05-15','TBA',14,50000,'2013-08-23',1,'2017-04-21',14,1500,'March 2018',1,1,'2017-08-26 02:07:08','e8ooO.jpg'),
(103,'Hodges Chikwela','Male','Married','tatal','Dwangwa  P O Box 46, Dwangwa','dwasco',1,'dwangwa@yahoo.com','1994-03-01','TBA',14,46000,'2013-03-08',1,'2017-03-21',14,1500,'February 2018',1,1,'2017-06-28 10:12:46','uCRSq.jpg'),
(104,'Jay Jeke','Male','Married','tatal','Dwangwa  P O Box 46, Dwangwa','dwasco',1,'dwangwa@yahoo.com','1988-04-15','0881077535',14,28000,'2015-09-20',1,'2017-03-21',14,1500,'February 2018',1,1,'2017-08-26 02:03:57','Hwyu8.jpg'),
(105,'Sella Kondowe','Female','Single','tatal','NKHATABAY','dwasco',1,'dwangwa@yahoo.com','1990-05-02','0881235416',14,33500,'2014-05-01',1,'2017-03-21',14,1500,'February 2018',1,1,'2017-08-24 20:52:05','bG6Qr.jpg'),
(106,'Tryson Austine Nkhoma','Male','Single','tatal','Dwangwa  P O Box 46, Dwangwa','dwasco',7,'dwangwa@yahoo.com','1994-12-12','0881077535',14,25000,'2016-10-01',1,'2017-03-21',14,1500,'February 2018',1,1,'2017-07-21 17:32:09','mapbh.jpg'),
(107,'Aubrey Wilson Kambanizithe','Male','Married','tatal','BT','BT',1,'crevrandkaondo@yahoo.com','1990-03-08','0995548992',14,48000,'2016-04-01',1,'2017-03-21',15,0,'March 2018',1,1,'2017-11-23 21:42:09','bqm4m.jpg'),
(108,'Berther Zimba','Female','Single','','Kasitu DWANGWA',' P O Box  40 Kasitu Dwangwa',1,'bertherzimber@gmail.com','2013-05-29','0999164510/0881280455',14,51000,'1982-03-24',1,'2017-03-21',10,0,'March 2018',1,1,'2017-08-24 03:26:16','Jr5w5.jpg'),
(109,'Timson Chinkhwangwa','Male','Single','MAI Vitumbiko','Mzimba','Chilomoni  Zambi',10,'crevrandkaondo@yahoo.com','1981-03-28','0997316422',16,51200,'2017-02-01',1,'2017-03-26',22,0,'February 2018',1,1,'2017-10-10 19:29:26','dUho5.jpg'),
(110,'Mercy Kondowe','Female','Single','Kondowe','NKHATABAY','MDs Resident',1,'crevrandkaondo@yahoo.com','1990-03-08','0888613741',16,50000,'2015/03/1',1,'2017-03-21',13,0,'February 2018',1,4,'2017-11-09 02:54:32','25NkA.jpg'),
(111,'Francis Malongwe Gondwe','Male','Married','tatal','Mzimba','bt',1,'crevrandkaondo@yahoo.com','2014-04-02','0882546904',14,49000,'1980-01-01',1,'2017-03-21',17,0,'February 2018',1,1,'2017-11-23 21:44:27','dHAAg.jpg'),
(112,'Nelson Kapolo','Male','Married','tatal','BT','bt',1,'crevrandkaondo@yahoo.com','2014-02-01','0884736755',14,52000,'1990-01-01',1,'2017-03-21',10,0,'November 2017',1,1,'2017-06-28 10:23:12','cA2Zl.jpg'),
(113,'Alifonsina Chibondo','Female','Married','Chibondo','BT','Chibondo',1,'crevrandkaondo@yahoo.com','1980-12-24','0888883670',14,35500,'2014-04-01',1,'2017-03-21',11,1500,'November 2017',1,1,'2017-08-23 22:46:29','4QsVw.jpg'),
(114,'Linda Meza','Female','Single','Meza','BT','Zagaf',1,'crevrandkaondo@yahoo.com','1988-06-23','0888638822',14,42000,'2014-04-01',1,'2017-03-21',11,1500,'November 2017',1,1,'2017-06-28 10:24:59','YJzsd.jpg'),
(115,'George Nthupa','Male','Married','tatal','BT','Zagaf',1,'crevrandkaondo@yahoo.com','1987-01-01','0888301816',14,44000,'2014-01-01',1,'2017-03-21',11,1500,'November 2017',1,1,'2017-06-28 10:25:25','3jpgJ.jpg'),
(116,'Andrew Kampira','Male','Married','tatal','SUCOMA','sucoma',1,'sucoma@yahoo.com','1993-01-01','0888357992',15,25000,'2015-03-25',0,'2017-03-21',22,1500,'June 2017',1,1,'2017-06-26 10:57:46','I7fP7.jpg'),
(117,'Billy Kulupanga','Male','Married','tatal','BT','sucoma',10,'sucoma@yahoo.com','1980-07-28','TBA',15,33000,'2016-08-01',1,'2017-03-23',9,1500,'November 2017',1,1,'2017-08-26 02:05:39','zzs7w.jpg'),
(118,'Deborah Zeka','Female','Married','tatal','SUCOMA','sucoma',1,'sucoma@yahoo.com','1987-11-25','TBA',14,42500,'2014-04-10',1,'2017-03-21',9,1500,'November 2017',1,1,'2017-06-28 18:19:27','82jOb.jpg'),
(119,'Eliza Kacholola','Female','Married','tatal','SUCOMA','sucoma',1,'sucoma@yahoo.com','1989-09-21','0884461947',14,42500,'2012-01-01',1,'2017-03-21',9,1500,'November 2017',1,1,'2017-06-28 18:19:51','tkwwA.jpg'),
(120,'Ester Mbulo','Female','Single','Chibondo','Zomba','sucoma',1,'sucoma@yahoo.com','1988-11-01','0888621194',14,33000,'2016-03-01',0,'2017-03-21',9,1500,'June 2017',1,1,'2017-06-28 18:23:40','Tz8mL.jpg'),
(121,'Flora Mazika','Female','Married','tatal','SUCOMA','sucoma',1,'sucoma@yahoo.com','1986-01-01','TBA',14,41000,'2014-04-01',1,'2017-03-21',9,1500,'November 2017',1,1,'2017-06-28 18:24:04','ANStd.jpg'),
(122,'Gloria Mwape','Female','Married','tatal','SUCOMA','sucoma',1,'sucoma@yahoo.com','1988-01-01','0995441279',14,38500,'2015-04-15',1,'2017-03-21',9,1500,'November 2017',1,1,'2017-06-28 18:24:35','YvfgK.jpg'),
(123,'Ndiuzayani Malola','Female','Married','CATHRINE MALOLA -','SUCOMA','sucoma',7,'sucoma@yahoo.com','1979-06-15','0999616195',16,29000,'2012-11-01',0,'2017-03-27',9,1500,'December 2016',1,1,'2017-06-26 11:06:44','RiPGE.jpg'),
(124,'Lawrence Bande',NULL,'Single','mr bande   0882228419','Nsanje','',NULL,'crevrandkaondo@yahoo.com','1997-11-20','0880308163',14,25000,'2017-03-01',0,'2017-03-21',9,1500,'October 2016',0,NULL,NULL,NULL),
(125,'Gloria Mwape','Female','Married','tatal','SUCOMA','sucoma',NULL,'sucoma@yahoo.com','1980-01-01','TBA',14,38500,'2015-05-15',0,'2017-03-21',9,1500,'September 2016',1,NULL,NULL,NULL),
(126,'Hary Chipala','Male','Married','Joseph Chipala','SUCOMA','sucoma',1,'sucoma@yahoo.com','1988-03-31','TBA',14,43500,'2012-09-01',0,'2017-03-21',9,1500,'July 2017',1,1,'2017-06-28 18:25:14','ahvfE.jpg'),
(127,'Jannette Kachere','Female','Single','Kaliati Kachere','BT','sucoma',1,'sucoma@yahoo.com','1994-05-14','0999123027',14,39500,'2014-10-28',1,'2017-03-21',9,1500,'November 2017',1,1,'2017-06-28 18:26:10','rfBI1.jpg'),
(128,'Thocco Kalilombe','Female','Single','tatal','BT','sucoma',1,'sucoma@yahoo.com','1990-03-23','TBA',14,39500,'2014-10-28',1,'2017-03-21',9,1500,'November 2017',1,1,'2017-06-28 18:26:34','1u60B.jpg'),
(129,'Lyton Mwenda','Female','Married','Aron Mwenda','NKHATABAY','sucoma',1,'sucoma@yahoo.com','1993-06-06','0888082854',14,44000,'2015-08-01',0,'2017-03-21',9,1500,'October 2017',1,1,'2017-06-28 18:26:58','uuTT0.jpg'),
(130,'Kenneth Simonje','Male','Single','SIMONJE','BT','sucoma',1,'sucoma@yahoo.com','1998-01-01','TBA',14,30000,'2017-03-01',1,'2017-03-21',9,1500,'November 2017',1,1,'2017-08-25 01:30:18','fwa6V.jpg'),
(131,'Robert Magoli','Male','Married','tatal','SUCOMA','sucoma',1,'sucoma@yahoo.com','1986-01-01','TBA',14,45500,'2012-02-01',1,'2017-03-21',9,1500,'November 2017',1,1,'2017-06-28 18:32:06','glSG7.jpg'),
(132,'Thokozani Junior Nakhaya','Male','Married','tatal','SUCOMA','sucoma',1,'sucoma@yahoo.com','1986-01-01','TBA',14,41000,'2013-11-04',0,'2017-03-21',9,1500,'June 2017',1,1,'2017-06-28 18:32:46','nUh58.jpg'),
(133,'William Mtambalika','Male','Married','tatal','BT','Head Office',1,'crevrandkaondo@yahoo.com','1989-02-01','0888258239',15,35000,'2017-03-01',1,'2017-03-21',13,0,'November 2017',0,1,'2017-08-25 01:44:33','pk9rA.jpg'),
(134,'Tadala Sulumba','Male','Married','tatal','BT','bt',NULL,'crevrandkaondo@yahoo.com','1989-04-05','0881708262',15,25000,'2017-03-01',1,'2017-03-21',10,0,'November 2017',0,NULL,NULL,NULL),
(135,'Selina Ngoma','Female','Single','ngoma','Mzuzu','Mzuzu',NULL,'crevrandkaondo@yahoo.com','','0881774564',15,25000,'2017-01-01',1,'2017-03-21',17,0,'November 2017',0,NULL,NULL,NULL),
(136,'Gift Edwin','Male','Married','Selina Ngoma','Mzuzu','Mzuzu',NULL,'crevrandkaondo@yahoo.com','1996-05-01','TBA',15,25000,'2017-01-01',1,'2017-03-21',17,0,'November 2017',0,NULL,NULL,NULL),
(137,'Veronica Chitonya',NULL,'Single','dhl','BT','bt',5,'crevrandkaondo@yahoo.com','1997-06-05','',16,30000,'2017-01-01',0,'2017-03-30',21,0,'August 2017',0,NULL,NULL,NULL),
(138,'Alinafe Bwanali','Male','Married','JANE CHIKAFA','Lilongwe','LL',1,'crevrandkaondo@yahoo.com','1991-06-06','0991088855',15,25000,'2017-03-01',1,'2017-03-21',15,0,'November 2017',0,1,'2017-08-26 02:06:25','R2UUp.jpg'),
(139,'Chifundo  Moffat','Male','Married','tatal','','',8,'crevrandkaondo@yahoo.com','1991-06-06','0991088855',15,30000,'2017-03-01',1,'2017-03-21',15,0,'November 2017',0,1,'2017-10-23 01:08:59','uEzOZ.jpg'),
(140,'Innocent Masi','Male','Single','Hodges','Dwangwa  P O Box 46, Dwangwa','Hohges Chikwera',5,'dwangwa@yahoo.com','1999-05-01','TBA',15,25000,'2017-03-01',1,'2017-03-23',14,0,'November 2017',0,1,'2017-08-25 01:49:29','OM0rc.jpg'),
(141,'SUCOMA CLEANER','Male','Single','Allan','SUCOMA','KAMBUDZI',10,'sucoma@yahoo.com','1998-08-05','TBA',15,20000,'2017-03-01',0,'2017-03-23',9,0,'March 2017',0,NULL,NULL,NULL),
(142,'Dwangwa Cleaner','Male','Single','Jacl Phiori','Dwangwa  P O Box 46, Dwangwa','dwasco',10,'dwangwa@yahoo.com','1998-12-31','TBA',15,20000,'2017-03-01',0,'2017-03-24',14,0,'June 2017',0,NULL,NULL,NULL),
(143,'Tempory Labourers','Male','Married','kaondo','LIMBE -MAKATA-LL-MZ-MD','Kaondo C',10,'crevrandkaondo@yahoo.com','1990-01-01','0995548992',15,200000,'2017-01-01',0,'2017-03-24',22,0,'March 2017',0,NULL,NULL,NULL),
(144,'Mary  Nchona','Female','Married','Maron Richards','BT','Maron',10,'crevrandkaondo@yahoo.com','1997-05-23','',15,35000,'2017-02-01',1,'2017-03-24',21,20000,'November 2017',0,1,'2017-10-10 02:54:59','6f8hP.jpg'),
(145,'Chrissy Kayongolo','Female','Married','tatal','Thyolo','TBA',10,'crevrandkaondo@yahoo.com','1988-11-01','TBA',16,30000,'2015-11-01',1,'2017-04-02',21,0,'November 2017',0,NULL,NULL,NULL),
(146,'Annice Mwenda','Female','Single','kaondo','NKHATABAY','',10,'crevrandkaondo@yahoo.com','1983-12-05','',13,65000,'2017-01-01',1,'2017-04-02',20,0,'November 2017',0,1,'2017-10-13 13:44:03','7XGKh.jpg'),
(147,'Eliza Chiwoko','Female','Single',' Allan','','',1,'','16121989','0884018148',14,37500,'15/06/2014',0,'2017-06-18',9,1500,'June 2017',1,1,'2017-06-28 18:20:17','LcraK.jpg'),
(148,'Austine Maulana','Male','Single','','','',1,'sucoma@yahoo.com','19/12/1992','0881319456',14,24000,'17/07/2014',0,'2017-06-18',9,1500,'February 2015',1,1,'2017-06-19 18:35:59','HNNdD.jpg'),
(149,'Kondwani Njikho','Male','Single','allan','','',1,'','01/12/1989','',14,35000,'01/11/2010',0,'2017-06-18',9,0,'January 2016',1,1,NULL,'is6jL.jpg'),
(150,'Jairos Nthala','Male','Married','','','',1,'','01051954','',14,125636,'01/07/2015',0,'2017-06-19',10,0,'December 2015',1,1,'2017-06-25 21:13:10','nndeK.jpg'),
(151,'Marita Mwenda','Male','Single','','','',1,'','20121978','',12,25000,'01/08/2015',0,'2017-06-19',9,1500,'September 2016',0,1,'2017-06-26 11:05:46','MO8uJ.jpg'),
(152,'Samuel Ngwira','Male','Single','','','',1,'','01/03/1978','',12,29000,'01/02/2014',0,'2017-06-19',14,1500,'August 2016',1,1,'2017-06-28 23:23:13','NZ10a.jpg'),
(153,'Petros Mbewe','Male','Single','','','',1,'','02/05/1978','',12,25000,'05/01/2014',0,'2017-06-19',9,1500,'December 2015',1,1,'2017-06-26 09:57:09','l4FSK.jpg'),
(154,'Julious Bristone Kanthonga','Male','Single','','','',1,'sucoma@yahoo.com','28/09/1985','0884318612',12,24000,'05/04/2013',0,'2017-06-20',9,1500,'April 2015',1,1,'2017-06-19 18:43:26','9u7vy.jpg'),
(155,'Blessings Vinkhumbo','Male','Married','','','',7,'','','',14,220450,'01/06/2017',1,'2017-06-24',23,0,'November 2017',1,2,'2017-07-06 09:45:43','6luuT.jpg'),
(156,'John Bwande','Female','Married','Cynthia  HWJESI /0991640150','','',1,'','07/09/1985','0991640150',14,66600,'01/06/2017',1,'2017-06-24',24,0,'November 2017',1,1,'2017-06-28 23:15:21','Ariqu.jpg'),
(157,'Ken Nyamatcherenga','Male','Single','Kettie Nyamatchrenga      0888592039','Chikwawa /box  524  Chichiri bt3','',7,'','27/11/1977','',14,51200,'01/06/2017',1,'2017-06-24',24,0,'November 2017',1,1,'2017-06-28 22:47:09','OWo1d.jpg'),
(158,'Steve Maliot','Male','Single','BENNADETTA/0888321872/0995602052','','',7,'','18/01/1978','0999700401/08884275661',14,51200,'01/06/2017',1,'2017-06-24',24,0,'November 2017',1,1,'2017-06-28 23:20:26','p9twB.jpg'),
(159,'Isaac Mikwanda','Male','Single','MRS A J MAINJENI/ 0888345121','','',7,'','07/09/1985','0999299935',14,51200,'01/06/2017',1,'2017-06-24',24,0,'November 2017',1,1,'2017-06-28 23:16:53','y8mY0.jpg'),
(160,'Samuel  Dzekezeke','Male','Married','IAN DZEKEDZEKE','NTCHEU /0888944600','',7,'','06/08/1976','',14,51200,'01/06/2017',1,'2017-06-24',24,0,'November 2017',1,1,'2017-07-23 22:42:30','JuCWD.jpg'),
(161,'MacDonald Chomboto','Male','Single','EDINA CHOMBOTO 0881593853','ZOMBA /0888138611','',7,'','15/11/1987','',14,51200,'01/06/2017',1,'2017-06-24',24,0,'November 2017',1,1,'2017-06-28 23:29:26','d1QcA.jpg'),
(162,'Evans Nanepa','Male','Single','','','',1,'','','',14,51200,'01/06/2017',1,'2017-06-24',24,0,'November 2017',1,1,NULL,'Bqhk3.jpg'),
(163,'George Khembo','Male','Single','Michael M cHAMANGA','Chimanga ,Chikwawa','bOX 3039 bT',7,'','27/11/1991','0888229904',14,51200,'01/06/2017',1,'2017-06-24',24,0,'November 2017',1,1,'2017-06-28 22:44:05','vD3FZ.jpg'),
(164,'Chima Towera Beauty','Female','Married','KESTA CHIMA/0999286017','MZIMBA 0881937149','',7,'','28/02/1988','0881937149',14,51200,'01/06/2017',1,'2017-06-24',24,0,'November 2017',1,1,'2017-06-29 20:36:56','3lPsD.jpg'),
(165,'Ruth Malemba','Female','Single','Precious Masiano  ( son)\r\n0888312342','Nlobvu Nsamala  Balaka\r\n c/o P O Box 70143 Bt','0884068218',7,'','04/04/1991','0884068218',14,51200,'01/06/2017',1,'2017-06-24',24,0,'November 2017',1,1,'2017-06-28 21:18:24','DydUh.jpg'),
(166,'Angela Saukira','Female','Single','WONGANI STELLA/\r\n0884008655/0999599112','MACHINGA / 0995399652/0882436092','',7,'','27/11/1986','0995399652/0882436092',14,51200,'01/06/2017',1,'2017-06-24',24,0,'November 2017',1,1,'2017-06-28 23:35:47','RTCYJ.jpg'),
(167,'Charles Goodson Chipiliro','Male','Single','ROSEMARK GONDWE /0999414322','ZOMBA','',7,'','15/07/1991','0885595574',14,51200,'01/06/2017',0,'2017-06-24',24,0,'September 2017',1,1,'2017-06-29 03:49:55','k9eoJ.jpg'),
(168,'Emmanuel Mkandawire','Male','Single','Olive Vinkhumbo/ 0999515160','Rumphi','',5,'','28/03/1990','0882282986',15,35800,'01/06/2017',1,'2017-06-24',24,0,'November 2017',1,1,'2017-06-28 22:52:34','VYd18.jpg'),
(169,'Allan Yatha','Male','Single','','','',1,'','','',14,45000,'',0,'2017-06-25',9,800,'October 2015',1,1,'2017-06-25 14:22:39','U2tc9.jpg'),
(170,'Allan Yatha','Male','Single','','','',1,'','','',14,40000,'',0,'2017-06-25',9,800,'January 2015',1,1,NULL,'rDoe1.jpg'),
(171,'Austine Maulana','Male','Single','','','',1,'','','',12,29000,'',0,'2017-06-25',9,800,'December 2015',1,1,'2017-06-26 09:59:23','OlGuE.jpg'),
(172,'Julious Bristone Kanthonga','Male','Single','','','',1,'','','',12,29000,'',0,'2017-06-25',9,800,'June 2017',1,1,'2017-06-26 10:00:27','DgzZS.jpg'),
(173,'Yohani Nkhata','Male','Single','','','',1,'','','',12,25000,'',0,'2017-06-25',9,800,'February 2015',1,1,NULL,'N53FF.jpg'),
(174,'Yohani Mwafungo','Male','Single','','','',1,'','','',12,39000,'',0,'2017-06-25',9,0,'June 2015',1,1,'2017-06-25 14:19:06','K6q7y.jpg'),
(175,'Prtros Mwangonde','Male','Single','','','',1,'','','',12,39000,'',0,'2017-06-25',9,0,'May 2015',1,1,'2017-06-25 14:18:40','VNkTp.jpg'),
(176,'Mangochi James','Male','Single','','','',1,'','','',14,39000,'',0,'2017-06-25',9,0,'June 2015',1,1,'2017-06-25 14:17:22','ou9U8.jpg'),
(177,'Misozi Samuti','Male','Single','','','',1,'','','',16,130000,'',0,'2017-06-25',9,0,'January 2015',0,1,NULL,'bxkaW.jpg'),
(178,'Kondwani Chokani Chisi','Male','Single','','','',1,'','','',12,24000,'',0,'2017-06-25',9,800,'October 2015',1,1,'2017-06-25 14:14:10','UPmZP.jpg'),
(179,'Thomas Mwandira Katema','Male','Single','','','',1,'','','',12,35000,'',0,'2017-06-25',9,800,'June 2015',1,1,'2017-06-25 14:18:17','oiL3A.jpg'),
(180,'Gift Kamala','Male','Single','','','',1,'','','',12,40200,'',0,'2017-06-25',18,0,'April 2015',1,1,NULL,'GW5LC.jpg'),
(181,'James BYSON','Male','Single','','','',1,'','','',13,58200,'',0,'2017-06-25',18,0,'April 2015',1,1,NULL,'cVINA.jpg'),
(182,'dENIS eElliot Kamala','Male','Single','','','',1,'','','',12,62400,'',0,'2017-06-25',18,0,'April 2015',1,1,NULL,'roMiT.jpg'),
(183,'Janet Chalimba','Male','Single','','','',1,'','','',14,15000,'',0,'2017-06-26',9,0,'December 2015',1,1,NULL,'JW8vD.jpg'),
(184,'Rodrick Mtemangombe','Male','Single','','','',1,'','01/05/1988','',12,36000,'',0,'2017-06-28',13,0,'June 2017',0,1,NULL,'UOLiU.jpg'),
(185,'Ellen Mafungo','Female','Single','Alln','','SUCOMA',7,'','','',14,30000,'01/10/2017',1,'2017-06-29',9,1500,'November 2017',1,1,'2017-10-19 02:21:44','EEEgy.jpg'),
(186,'Davie Festone','Male','Single','','','',7,'','','',14,30000,'01/06/2017',1,'2017-06-29',9,1500,'November 2017',1,1,'2017-07-03 02:41:10','nUSom.jpg'),
(187,'Esnart  L. Chaima ','Female','Single','Maida','CHIRADZULU','',7,'','06/12/1986','0991723185',14,30000,'01/07/2017',1,'2017-06-29',9,1500,'November 2017',1,1,NULL,'He6zT.jpg'),
(188,'Felix Polinyo','Male','Single','','','tadala',1,'','','',13,25000,'01/07/2017',1,'2017-07-03',10,0,'November 2017',0,1,'2017-08-25 01:46:28','GcvBq.jpg'),
(189,'Black Sipriyano','Male','Single','','','tadala',1,'','','',13,20000,'01072017',0,'2017-07-03',10,0,'September 2016',0,1,NULL,'ZFjhc.jpg'),
(190,'Black Mayamiko','Male','Single','','','tadala',5,'','','',13,25000,'01/07/2017',1,'2017-07-03',10,0,'November 2017',0,1,'2017-08-25 01:41:13','MihP6.jpg'),
(191,'Thonke Kaliati','Male','Single','','','tadala',1,'','','',13,25000,'01/07/2017',1,'2017-07-03',10,0,'November 2017',0,1,'2017-08-25 01:45:43','YabLJ.jpg'),
(192,' Dickson Phillimon','Male','Single','','','',5,'','','',13,25000,'',0,'2017-07-03',22,0,'September 2017',0,1,'2017-08-26 02:26:13','qnFFx.jpg'),
(193,'Steven Mkwanda','Male','Single','Geraid Mkwanda/0882033377/0999239710','Mangochi','Allan',7,'','03/03/0991','',14,30000,'01/07/2017',1,'2017-07-03',9,1500,'November 2017',1,1,'2017-07-16 21:34:45','urFOq.jpg'),
(194,'Mary Mwalija','Male','Single','','','',7,'','','0880863621',14,25000,'01/11/2016',1,'2017-07-04',14,1500,'November 2017',1,1,'2017-07-21 17:31:04','cpybG.jpg'),
(195,'Spriano Black','Male','Single','tadala','','Tadala',8,'','','',13,25000,'01/07/2017',1,'2017-07-06',10,0,'November 2017',0,1,'2017-08-25 18:14:58','cxjYl.jpg'),
(196,'Tonki Kaliati','Male','Single','Tadala','','Tadala',8,'','','',13,20000,'01/07/2017',0,'2017-07-06',10,0,'September 2016',0,1,NULL,'oXbpy.jpg'),
(197,'Mayamiko Black','Male','Single','Spriano Black','','Tadala',8,'','','',13,20000,'01/07/2017',0,'2017-07-06',10,0,'September 2016',0,1,NULL,'Ud3Lk.jpg'),
(198,'Symon  Ngwira','Male','Married','tiwonge','','tiwonge',8,'','','',15,30000,'01/01/2017',1,'2017-07-06',12,0,'November 2017',0,1,'2017-07-25 14:46:32','sarTP.jpg'),
(199,'Rodrick  Mtembangombe','Male','Single','','','',8,'','','',12,36000,'01/04/2017',1,'2017-07-06',22,0,'November 2017',0,1,'2017-08-26 02:25:06','0jxD1.jpg'),
(200,'White Madalitso','Male','Single','Sumani','','',8,'','','',15,25000,'01/07/2017',1,'2017-07-09',15,0,'November 2017',0,1,'2017-08-25 01:47:49','sAfUX.jpg'),
(201,'Cosmas Chiwanda','Male','Single','','','',8,'','','',15,25000,'01/07/2017',1,'2017-07-09',15,0,'November 2017',0,1,'2017-08-25 01:47:16','PWM7H.jpg'),
(202,'Isaack Msukwa','Male','Single','Selina','mzuzu','',8,'','','',15,15000,'01/07/2017',0,'2017-07-09',17,0,'September 2016',0,1,'2017-07-09 02:20:15','MqlXJ.jpg'),
(203,'Donnex Lesita','Male','Single','Allan','Nsanje','',5,'','23/04/1987','',15,25000,'01/07/2017',0,'2017-07-13',9,0,'August 2017',0,1,'2017-07-16 21:35:30','1rNaw.jpg'),
(204,'Rome Kapange','Male','Single','Kapange L  \r\n0888683620','Nyambila Village','sucoma',7,'','01/02/1992','0881550909',14,30000,'01/07/2017',0,'2017-07-14',9,1500,'September 2017',1,1,'2017-08-25 01:34:29','VNxuR.jpg'),
(205,'Thokozani Junior Nakhaya','Male','Single','Mrs  Chirwa   0999150234','','Mrs  Chirwa   0999150234',7,'sucoma@yahoo.com','01/01/1986','',14,41000,'04/11/2014',1,'2017-07-22',9,1500,'November 2017',1,1,'2017-07-25 14:44:49','7nN7o.jpg'),
(206,'James George','Male','Single','','','',8,'','','',12,25000,'',0,'2017-08-03',22,0,'September 2017',0,1,'2017-08-25 01:48:53','Lvp2p.jpg'),
(207,'DYSON DUNCAN','Male','Married','','Chinthumbwi=Mwanza','Food Masters',7,'','18/02/1989','0880250577',14,30000,'15/08/2017',1,'2017-08-19',9,1500,'November 2017',1,2,'2017-08-24 03:46:29','XTXfP.jpg'),
(208,'CHIMWEMWE CHISI','Male','Single','','',' P O Box 50 Blantyre',7,'','16','',14,30000,'15/08/2017',1,'2017-08-19',9,1500,'November 2017',1,1,'2017-08-25 01:09:49','jVJiw.jpg'),
(209,'Hannah Nangantani Banda','Female','Single','','','',1,'','','',12,60000,'01/08/2017',0,'2017-08-19',13,0,'August 2017',0,1,'2017-08-26 02:11:46','7Auwv.jpg'),
(210,'Caro Naura','','','','','',7,'','','',16,60000,'',0,'2017-08-24',0,0,'August 2017',0,0,NULL,'wLcy7.jpg'),
(211,'Isaac Msukwa','Male','Single','','Mzuzu','Selina',5,'','','0881564397',15,15000,'01/08/2017',0,'2017-09-01',17,0,'November 2017',0,1,NULL,'zpZbG.jpg'),
(212,'Taona Kuwali','','','','','',5,'','','nil',15,15000,'01/08/2017',0,'2017-09-01',0,0,'September 2016',0,1,NULL,'r6DkU.jpg'),
(213,'Enock Khonyole','','','','','',0,'','','',0,25000,'',0,'2017-09-12',0,0,'September 2016',0,0,NULL,'cAPNB.jpg'),
(214,'Enock Khonyole','Male','Single','','','',5,'','','',15,25000,'09/11/2017',1,'2017-09-12',9,0,'November 2017',0,1,NULL,'8zhkK.jpg'),
(215,'Lusi Weletoni','','Single','Mother-- Florence Edward      Malumi -Mr Mbeta    Brother- Edward Welletoni','Lirangwe-T/A Chigalu---Vge Masulani','BROTHERS PHONE',0,'','03/06/1992','',15,15000,'19/09/2017',0,'2017-09-22',0,0,'September 2016',0,4,NULL,'m0kWe.jpg'),
(216,'Felix Chikola','Male','Married','','','',5,'','','',16,100000,'',0,'2017-09-27',0,0,'September 2016',1,0,NULL,'lFGmA.jpg'),
(217,'Allan Natan Chitsukwa','Male','','Masanika Total','Mwanza  ','P O Box 1098 Blantyre ',0,'cnathan@gmail.com','17/09/1986','0888209733/0997237033',14,40000,'9/10/2017',1,'2017-10-09',9,1500,'November 2017',0,11,NULL,'vrKXD.jpg'),
(218,'Felix Chikola','Male','Married','','Zomba','',1,'','25/03/1979','0888759700',16,100000,'01/10/2017',1,'2017-10-24',13,0,'November 2017',1,12,'2017-10-23 23:01:51','vrXy5.jpg'),
(219,'Rabecca Kasenda','Female','','Magret Kasenda','Mulanje','',5,'','20/12/1987','0881451596',16,30000,'01/09/2017',1,'2017-10-24',13,0,'November 2017',0,2,NULL,'OuXP1.jpg'),
(220,'James Masika','Male','Married','Zamadunga','Zomba','0884239421',0,'','','0884239421',0,25000,'28/10/2017',1,'2017-10-30',22,0,'November 2017',0,0,NULL,'Mjo4K.jpg'),
(221,'Lucy Phiri','Female','Single','Zonga','Kawalazi .NKHATA BAY','Mzuzu',7,'','06/03/1993','0886222',15,25000,'16/11/2017',0,'2017-11-16',17,0,'September 2016',0,6,'2017-11-21 16:34:25','iDAx8.jpg'),
(222,'','','Single','zonga','','mzuzu depot',0,'','0603/1993','',15,25000,'16/11/2017',0,'2017-11-16',17,0,'September 2016',0,0,NULL,'7DdWc.jpg'),
(223,'Lucy Phiri','Female','Single','Solomon','Mthyaka','Mzuzu Depot',7,'crevrandkaondo@yahoo.com','06/03/1993','0886288221',15,25000,'16/11/2017',1,'2017-11-22',17,0,'November 2017',0,2,NULL,'oAO4s.jpg');

/*Table structure for table `extra` */

DROP TABLE IF EXISTS `extra`;

CREATE TABLE `extra` (
  `extra_id` int(100) NOT NULL AUTO_INCREMENT,
  `leave_days` int(11) NOT NULL DEFAULT '0',
  `days_used` int(11) NOT NULL DEFAULT '0',
  `days_remaining` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `leave_grant` float NOT NULL DEFAULT '0',
  `month` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `leave1_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`extra_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `extra` */

insert  into `extra`(`extra_id`,`leave_days`,`days_used`,`days_remaining`,`employee_id`,`leave_grant`,`month`,`year`,`date_added`,`leave1_type`) values 
(1,21,0,21,1,0,'January','2017','2017-02-23 22:09:31',NULL),
(2,15,0,15,22,0,'January','2017','2017-02-23 22:10:12',NULL),
(3,15,0,15,39,0,'January','2017','2017-02-23 22:10:59',NULL),
(4,15,15,0,85,0,'February','2017','2017-02-23 22:12:17',NULL),
(5,15,0,15,97,0,'January','2017','2017-02-23 22:13:08',NULL),
(6,15,0,15,96,0,'January','2017','2017-02-23 22:13:36',NULL),
(7,15,0,15,94,0,'January','2017','2017-02-23 22:14:34',NULL);

/*Table structure for table `health_scheme` */

DROP TABLE IF EXISTS `health_scheme`;

CREATE TABLE `health_scheme` (
  `health_scheme_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(100) NOT NULL,
  `scheme_id` int(11) NOT NULL,
  `membership_number` varchar(100) DEFAULT NULL,
  `membership_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `other_members` int(11) NOT NULL DEFAULT '0',
  `total_bill` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`health_scheme_id`),
  KEY `emp_id` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

/*Data for the table `health_scheme` */

insert  into `health_scheme`(`health_scheme_id`,`employee_id`,`scheme_id`,`membership_number`,`membership_id`,`description`,`other_members`,`total_bill`) values 
(3,'4',1,'128307U',1,'THANDIZO',0,0),
(4,'5',1,'25421',1,'THANDIZO',0,0),
(5,'6',1,'TBA',1,'THANDIZO',0,0),
(6,'7',1,'TBA',1,'THANDIZO',0,0),
(7,'8',1,'TBA',1,'THANDIZO',0,0),
(10,'10',1,'TBA',1,'THANDIZO',0,0),
(12,'12',1,'TBA',1,'THANDIZO',0,0),
(13,'13',1,'TBA',1,'THANDIZO',0,0),
(14,'14',1,'TBA',1,'',0,0),
(15,'15',1,'0012840',1,'THANDIZO',0,0),
(16,'16',1,'0012832',1,'THANDIZO',0,0),
(17,'17',1,'12830UP',1,'THANDIZO',0,0),
(18,'18',1,'128420UP',1,'THANDIZO',0,0),
(19,'19',1,'TBA',1,'THANDIZO',0,0),
(20,'20',1,'TBA',1,'THANDIZO',0,0),
(21,'22',1,'TH01765.00',1,'THANDIZO',0,0),
(22,'70',1,'TH01765.00',2,'',0,0),
(23,'71',1,'pio',2,'',0,0),
(25,'85',1,'UF-8202-00',2,'UFULU',0,0),
(26,'84',1,'TBA',1,'THANDIZO',0,0),
(27,'83',1,'TBA',1,'THANDIZO',0,0),
(28,'81',1,'TBA',1,'THANDIZO',0,0),
(29,'80',1,'TBA',1,'THANDIZO',0,0),
(30,'79',1,'TBA',1,'THANDIZO',0,0),
(32,'39',1,'TH-2746-00',1,'THANDIZO',0,0),
(33,'95',1,'TBA',1,'THANDIZO',0,0),
(34,'74',1,'TBA',1,'THANDIZO',0,0),
(35,'89',1,'TBA',1,'THANDIZO',0,0),
(36,'87',1,'TBA',1,'THANDIZO',0,0),
(37,'88',1,'TBA',1,'THANDIZO',0,0),
(38,'90',1,'TBA',1,'THANDIZO',0,0),
(39,'92',1,'TBA',2,'UFULU',0,0),
(40,'93',1,'TBA',1,'THANDIZO',0,0),
(41,'94',1,'TBA',1,'THANDIZO',0,0),
(42,'96',1,'TBA',1,'THANDIZO',0,0),
(43,'97',1,'TBA',1,'THANDIZO',0,0),
(45,'',1,'17014892702',1,'Eco',0,0),
(46,'101',1,'hhhhhhhhhhhhhh',1,'THANDIZO',1,13000),
(47,'102',1,'TBA',1,'THANDIZO',1,9500),
(48,'103',1,'TBA',1,'THANDIZO',0,0),
(49,'104',1,'TBA',1,'THANDIZO',0,0),
(50,'105',1,'TBA',1,'THANDIZO',0,0),
(51,'107',1,'TBA',2,'UFULU',0,0),
(52,'108',1,'TBA',2,'UFULU',0,0),
(53,'109',1,'TBA',2,'UFULU',0,0),
(54,'111',1,'TBA',2,'UFULU',0,0),
(55,'112',1,'TBA',2,'UFULU',0,0),
(57,'114',1,'TBA',1,'THANDIZO',0,0),
(58,'115',1,'TBA',1,'THANDIZO',0,0),
(59,'116',1,'TBA',1,'THANDIZO',0,0),
(60,'117',1,'TBA',1,'THANDIZO',0,0),
(61,'118',1,'TBA',1,'THANDIZO',0,0),
(62,'119',1,'TBA',1,'THANDIZO',0,0),
(63,'1',1,'TBA',2,'UFULU',0,0),
(65,'121',1,'TBA',1,'THANDIZO',0,0),
(66,'122',1,'TBA',1,'THANDIZO',0,0),
(67,'126',1,'TBA',1,'THANDIZO',0,0),
(68,'127',1,'TBA',1,'THANDIZO',0,0),
(69,'82',1,'TBA',1,'THANDIZO',0,0),
(70,'129',1,'TBA',1,'THANDIZO',0,0),
(71,'130',1,'TBA',1,'THANDIZO',0,0),
(72,'131',1,'TBA',1,'THANDIZO',0,0),
(73,'132',1,'TBA',1,'THANDIZO',0,0),
(74,'146',1,'TBA',3,'UMOYO',0,0),
(75,'156',1,'1714892701',2,'',0,0),
(76,'76',1,'1701482703',1,'',0,0);

/*Table structure for table `jobs` */

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job` varchar(100) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `jobs` */

insert  into `jobs`(`job_id`,`job`,`status`) values 
(1,'Gardener',1),
(2,'Cleaner',1),
(3,'Depot Operator',1),
(4,'House Maid',1),
(5,'Garden Boy',1),
(6,'General Depot Cleaner',1),
(7,'Filling Station Attendants',1),
(8,'Receptionist Temp',1),
(9,'On the Screen Eyes',1),
(10,'Office Attendants',1),
(11,'Depot Attendant',1),
(12,'MD Driver',1),
(13,'Secretary',0),
(14,'Clerk',1);

/*Table structure for table `labo` */

DROP TABLE IF EXISTS `labo`;

CREATE TABLE `labo` (
  `labo_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` text,
  `telphone` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `post_box` varchar(100) DEFAULT NULL,
  `street_address` varchar(100) DEFAULT NULL,
  `building_name` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`labo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `labo` */

insert  into `labo`(`labo_id`,`name`,`address`,`telphone`,`phone`,`logo`,`email`,`location`,`post_box`,`street_address`,`building_name`,`city`,`country`) values 
(2,'Stations Management Services Ltd. ','P.O BOX 701437, BLANTYRE 7','','0995548992 / 0885240093','zR7Dd.jpg','crevrandkaondo@yahoo.com','Blantyre 7','P.O Box 70143','Lower Sclater Road','Dossani Building','Blantyre','Malawi');

/*Table structure for table `loans` */

DROP TABLE IF EXISTS `loans`;

CREATE TABLE `loans` (
  `loan_id` int(100) NOT NULL AUTO_INCREMENT,
  `amount` float NOT NULL DEFAULT '0',
  `date_taken` varchar(100) DEFAULT NULL,
  `date_paid` varchar(100) DEFAULT NULL,
  `period` int(100) DEFAULT NULL,
  `balance` float NOT NULL DEFAULT '0' COMMENT 'amount remaining',
  `amount_returned` float NOT NULL DEFAULT '0',
  `payrate` float NOT NULL DEFAULT '0',
  `description` text,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1=not completed returning',
  `employee_id` int(11) DEFAULT NULL,
  `visible` int(11) DEFAULT '1',
  PRIMARY KEY (`loan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `loans` */

insert  into `loans`(`loan_id`,`amount`,`date_taken`,`date_paid`,`period`,`balance`,`amount_returned`,`payrate`,`description`,`status`,`employee_id`,`visible`) values 
(1,81250,'2017-02-23 22:02:47','2018-02-25 05:50:19',13,31250,43750,6250,'took K150000.00 in Feb.2016 and balance is K81250.00',1,85,1),
(5,26000,'2017-06-09 00:55:18','2017-08-20 19:01:22',2,26000,20800,15600,'purchase of solar lamps',1,137,1),
(11,41000,'2017-08-25 09:42:11','2017-11-22 02:19:37',10,32800,4100,4100,'',1,114,1),
(13,35000,'2017-10-23 02:25:37','2018-02-25 05:50:09',12,26249.9,5833.4,2916.67,'',1,82,1),
(14,50000,'2017-10-23 02:26:43','2018-02-25 05:50:48',12,37499.9,8333.4,4166.67,'',1,95,1),
(15,30000,'2017-10-24 05:25:12','2017-11-22 02:07:45',6,25000,0,5000,'loan for school fees',1,145,1),
(16,35000,'2017-10-31 11:55:02','2017-11-22 04:11:41',7,25000,5000,5000,'loans',1,133,1),
(17,5000,'2017-11-09 13:46:16','2017-11-22 02:27:36',2,2500,0,2500,'salary advance',1,200,1),
(18,10000,'2017-11-22 05:30:20','2017-11-22 05:31:14',2,10000,0,5000,'',1,220,1),
(19,5000,'2017-11-24 04:45:30',NULL,0,5000,0,0,'',1,200,1),
(20,5000,'2017-11-24 04:45:52',NULL,1,5000,0,5000,'',1,200,1),
(21,10000,'2017-12-01 15:03:17',NULL,2,10000,0,5000,'advanced on 1/12/2017',1,194,1);

/*Table structure for table `membership` */

DROP TABLE IF EXISTS `membership`;

CREATE TABLE `membership` (
  `membership_id` int(11) NOT NULL AUTO_INCREMENT,
  `membership` varchar(100) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `charge` int(11) DEFAULT NULL,
  PRIMARY KEY (`membership_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `membership` */

insert  into `membership`(`membership_id`,`membership`,`deleted`,`charge`) values 
(1,'Econo Plan',0,7500),
(2,'Executive',0,NULL),
(3,'VIP',0,NULL);

/*Table structure for table `month` */

DROP TABLE IF EXISTS `month`;

CREATE TABLE `month` (
  `month_id` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(100) NOT NULL,
  PRIMARY KEY (`month_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `month` */

insert  into `month`(`month_id`,`month`) values 
(1,'January'),
(2,'February'),
(3,'March'),
(4,'April'),
(5,'May'),
(6,'June'),
(7,'July'),
(8,'August'),
(9,'September'),
(10,'October'),
(11,'November'),
(12,'December');

/*Table structure for table `other_members` */

DROP TABLE IF EXISTS `other_members`;

CREATE TABLE `other_members` (
  `other_members_id` int(11) NOT NULL AUTO_INCREMENT,
  `other_members` varchar(100) DEFAULT NULL,
  `health_scheme_id` int(11) DEFAULT NULL,
  `deduct` int(11) NOT NULL DEFAULT '0',
  `d_amount` int(11) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `month` varchar(100) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`other_members_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `other_members` */

insert  into `other_members`(`other_members_id`,`other_members`,`health_scheme_id`,`deduct`,`d_amount`,`deleted`,`month`,`year`,`total`) values 
(21,'Man',47,1,2000,0,NULL,NULL,NULL),
(20,'Chisomo',46,1,500,0,NULL,NULL,NULL),
(19,'Brian Nkhata',46,1,5000,0,NULL,NULL,NULL);

/*Table structure for table `overtime` */

DROP TABLE IF EXISTS `overtime`;

CREATE TABLE `overtime` (
  `overtime_id` int(11) NOT NULL AUTO_INCREMENT,
  `hourly_rate` float NOT NULL DEFAULT '0',
  `public_hours` int(11) NOT NULL DEFAULT '0',
  `normal_hours` int(11) NOT NULL DEFAULT '0',
  `public_amount` float NOT NULL DEFAULT '0',
  `normal_amount` float NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `total_overtime` float NOT NULL DEFAULT '0',
  `month` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL,
  `visible` int(11) DEFAULT '1',
  `salary_date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`overtime_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1298 DEFAULT CHARSET=latin1;

/*Data for the table `overtime` */

insert  into `overtime`(`overtime_id`,`hourly_rate`,`public_hours`,`normal_hours`,`public_amount`,`normal_amount`,`employee_id`,`date`,`total_overtime`,`month`,`year`,`visible`,`salary_date`) values 
(1,113.636,0,0,0,0,1,'2016-12-30 11:16:20',0,NULL,NULL,1,' '),
(2,76.4386,16,0,2446.04,0,2,'2016-12-30 11:16:55',2446.04,NULL,NULL,1,' '),
(3,44.4347,16,0,1421.91,0,3,'2016-12-30 11:17:26',1421.91,NULL,NULL,1,' '),
(4,44.4347,0,0,0,0,4,'2016-12-30 11:17:50',0,NULL,NULL,1,' '),
(5,44.4347,0,0,0,0,5,'2016-12-30 11:18:11',0,NULL,NULL,1,' '),
(6,45.0028,0,0,0,0,6,'2016-12-30 11:18:40',0,NULL,NULL,1,' '),
(7,41.0432,0,0,0,0,7,'2016-12-30 11:19:07',0,NULL,NULL,1,' '),
(8,41.0432,8,0,656.691,0,8,'2016-12-30 11:19:33',656.691,NULL,NULL,1,' '),
(9,47.0807,8,0,753.291,0,9,'2016-12-30 11:19:59',753.291,NULL,NULL,1,' '),
(10,71.3807,5,0,713.807,0,10,'2016-12-30 11:20:33',713.807,NULL,NULL,1,' '),
(11,76.0597,0,0,0,0,11,'2016-12-30 11:21:21',0,NULL,NULL,1,' '),
(12,44.4347,5,0,444.347,0,12,'2016-12-30 11:21:48',444.347,NULL,NULL,1,' '),
(13,40.625,5,0,406.25,0,13,'2016-12-30 11:22:14',406.25,NULL,NULL,1,' '),
(14,40.625,5,0,406.25,0,14,'2016-12-30 11:22:52',406.25,NULL,NULL,1,' '),
(15,41.0398,5,0,410.398,0,15,'2016-12-30 11:23:25',410.398,NULL,NULL,1,' '),
(16,40.625,5,0,406.25,0,16,'2016-12-30 11:24:02',406.25,NULL,NULL,1,' '),
(17,40.625,5,0,406.25,0,17,'2016-12-30 11:25:46',406.25,NULL,NULL,1,' '),
(18,40.625,5,0,406.25,0,18,'2016-12-30 11:26:17',406.25,NULL,NULL,1,' '),
(19,40.625,5,5,406.25,304.688,19,'2016-12-30 11:26:46',710.938,NULL,NULL,1,' '),
(20,78.2614,16,0,2504.36,0,20,'2016-12-30 11:27:12',2504.36,NULL,NULL,1,' '),
(21,57.2727,16,0,1832.73,0,21,'2016-12-30 11:27:44',1832.73,NULL,NULL,1,' '),
(22,40.625,5,0,406.25,0,22,'2016-12-30 11:31:04',406.25,NULL,NULL,1,' '),
(23,113.636,0,0,0,0,1,'2016-12-30 18:33:36',0,NULL,NULL,1,' '),
(24,76.4386,32,0,4892.07,0,2,'2017-01-01 03:00:22',4892.07,NULL,NULL,1,' '),
(25,113.636,0,0,0,0,1,'2017-01-01 03:02:00',0,NULL,NULL,1,' '),
(26,76.4386,32,0,4892.07,0,2,'2017-01-01 03:02:26',4892.07,NULL,NULL,1,' '),
(27,44.4347,62,40,5509.9,2666.08,3,'2017-01-01 03:03:14',8175.98,NULL,NULL,1,' '),
(28,44.4347,7,0,622.085,0,4,'2017-01-01 03:03:50',622.085,NULL,NULL,1,' '),
(29,44.4347,7,72,622.085,4798.94,5,'2017-01-01 03:04:32',5421.03,NULL,NULL,1,' '),
(30,45.0028,5,0,450.028,0,6,'2017-01-01 03:05:21',450.028,NULL,NULL,1,' '),
(31,41.0432,7,0,574.605,0,7,'2017-01-01 03:05:51',574.605,NULL,NULL,1,' '),
(32,41.0432,5,0,410.432,0,8,'2017-01-01 03:06:23',410.432,NULL,NULL,1,' '),
(33,113.636,7,0,1590.91,0,1,'2017-01-01 03:06:46',1590.91,NULL,NULL,1,' '),
(34,71.3807,5,0,713.807,0,10,'2017-01-01 03:07:31',713.807,NULL,NULL,1,' '),
(35,76.0597,5,0,760.597,0,11,'2017-01-01 03:08:03',760.597,NULL,NULL,1,' '),
(36,44.4347,5,0,444.347,0,12,'2017-01-01 03:08:43',444.347,NULL,NULL,1,' '),
(37,40.625,5,0,406.25,0,13,'2017-01-01 03:09:16',406.25,NULL,NULL,1,' '),
(38,40.625,0,0,0,0,14,'2017-01-01 03:10:21',0,NULL,NULL,1,' '),
(39,41.0398,5,0,410.398,0,15,'2017-01-01 03:10:51',410.398,NULL,NULL,1,' '),
(40,40.625,5,0,406.25,0,16,'2017-01-01 03:11:31',406.25,NULL,NULL,1,' '),
(41,40.625,5,0,406.25,0,22,'2017-01-01 03:12:06',406.25,NULL,NULL,1,' '),
(42,40.625,5,0,406.25,0,17,'2017-01-01 03:12:40',406.25,NULL,NULL,1,' '),
(43,40.625,5,0,406.25,0,18,'2017-01-01 03:13:14',406.25,NULL,NULL,1,' '),
(44,40.625,5,0,406.25,0,18,'2017-01-01 03:13:57',406.25,NULL,NULL,1,' '),
(45,78.2614,8,0,1252.18,0,20,'2017-01-01 03:14:37',1252.18,NULL,NULL,1,' '),
(46,57.2727,8,0,916.364,0,21,'2017-01-01 03:15:18',916.364,NULL,NULL,1,' '),
(47,76.4386,32,0,4892.07,0,2,'2017-01-01 03:31:35',4892.07,NULL,NULL,1,' '),
(48,76.4386,32,0,4892.07,0,2,'2017-01-01 19:15:01',4892.07,NULL,NULL,1,' '),
(49,113.636,5,5,1136.36,852.273,1,'2017-01-01 19:22:17',1988.64,NULL,NULL,1,' '),
(50,113.636,4,4,909.091,681.818,1,'2017-01-02 03:19:51',1590.91,NULL,NULL,1,' '),
(51,113.636,4,4,909.091,681.818,1,'2017-01-03 02:09:01',1590.91,'March','2007',1,'March 2007'),
(52,0,32,0,0,0,0,'2017-01-03 02:16:32',0,NULL,NULL,1,' '),
(53,44.4347,24,0,2132.86,0,3,'2017-01-03 02:17:12',2132.86,'April','2007',1,'April 2007'),
(54,44.4347,7,0,622.085,0,4,'2017-01-03 02:17:43',622.085,'April','2007',1,'April 2007'),
(55,44.4347,10,0,888.693,0,5,'2017-01-03 02:18:14',888.693,'April','2007',1,'April 2007'),
(56,45.0028,10,0,900.057,0,6,'2017-01-03 02:18:52',900.057,'April','2007',1,'April 2007'),
(57,41.0432,10,0,820.864,0,7,'2017-01-03 02:19:28',820.864,'April','2007',1,'April 2007'),
(58,41.0432,7,0,574.605,0,8,'2017-01-03 02:20:05',574.605,'April','2007',1,'April 2007'),
(59,47.0807,7,0,659.13,0,9,'2017-01-03 02:20:31',659.13,'April','2007',1,'April 2007'),
(60,71.3807,27,10,3854.56,1070.71,10,'2017-01-03 02:21:28',4925.27,'April','2007',1,'April 2007'),
(61,76.0597,2,17,304.239,1939.52,11,'2017-01-03 02:22:41',2243.76,'April','2007',1,'April 2007'),
(62,44.4347,5,20,444.347,1333.04,12,'2017-01-03 02:23:18',1777.39,'April','2007',1,'April 2007'),
(63,40.625,16,0,1300,0,13,'2017-01-03 02:23:59',1300,'April','2007',1,'April 2007'),
(64,40.625,10,0,812.5,0,14,'2017-01-03 02:24:33',812.5,'April','2007',1,'April 2007'),
(65,41.0398,10,0,820.795,0,15,'2017-01-03 02:25:01',820.795,'April','2007',1,'April 2007'),
(66,40.625,10,0,812.5,0,16,'2017-01-03 02:25:37',812.5,'April','2007',1,'April 2007'),
(67,40.625,15,0,1218.75,0,22,'2017-01-03 02:26:11',1218.75,'April','2007',1,'April 2007'),
(68,40.625,10,0,812.5,0,17,'2017-01-03 02:26:38',812.5,'April','2007',1,'April 2007'),
(69,40.625,10,0,812.5,0,18,'2017-01-03 02:27:12',812.5,'April','2007',1,'April 2007'),
(70,40.625,15,0,1218.75,0,19,'2017-01-03 02:27:42',1218.75,'April','2007',1,'April 2007'),
(71,78.2614,24,0,3756.55,0,20,'2017-01-03 02:28:17',3756.55,'April','2007',1,'April 2007'),
(72,57.2727,24,0,2749.09,0,21,'2017-01-03 02:28:48',2749.09,'April','2007',1,'April 2007'),
(73,76.4386,24,0,3669.05,0,2,'2017-01-03 02:33:43',3669.05,'April','2007',1,'April 2007'),
(74,42.6136,4,0,340.909,0,30,'2017-01-09 03:00:59',340.909,'January','2009',1,'January 2009'),
(75,48.7772,4,0,390.217,0,8,'2017-01-09 03:01:29',390.217,'January','2009',1,'January 2009'),
(76,55.1165,4,0,440.932,0,9,'2017-01-09 03:01:53',440.932,'January','2009',1,'January 2009'),
(77,52.9348,46,36,4870,2858.48,3,'2017-01-11 03:00:19',7728.49,'July','2009',1,'July 2009'),
(78,39.7727,36,8,2863.64,477.273,34,'2017-01-11 03:01:01',3340.91,'July','2009',1,'July 2009'),
(79,84.8057,16,0,2713.78,0,2,'2017-01-11 03:01:32',2713.78,'July','2009',1,'July 2009'),
(80,42.6136,16,16,1363.64,1022.73,27,'2017-01-11 03:02:32',2386.36,'July','2009',1,'July 2009'),
(81,48.3352,132,48,12760.5,3480.14,22,'2017-01-11 03:03:14',16240.6,'July','2009',1,'July 2009'),
(82,52.9348,8,0,846.957,0,4,'2017-01-11 03:03:54',846.957,'July','2009',1,'July 2009'),
(83,42.6136,8,0,681.818,0,24,'2017-01-11 03:04:33',681.818,'July','2009',1,'July 2009'),
(84,48.7772,45,0,4389.94,0,8,'2017-01-11 03:05:03',4389.94,'July','2009',1,'July 2009'),
(85,52.9348,16,16,1693.91,1270.44,3,'2017-01-12 23:01:37',2964.35,'September','2009',1,'September 2009'),
(86,84.8057,16,16,2713.78,2035.34,2,'2017-01-12 23:02:06',4749.12,'September','2009',1,'September 2009'),
(87,39.7727,16,16,1272.73,954.545,38,'2017-01-12 23:02:42',2227.27,'September','2009',1,'September 2009'),
(88,39.7727,16,0,1272.73,0,36,'2017-01-12 23:03:38',1272.73,'September','2009',1,'September 2009'),
(89,39.7727,32,32,2545.45,1909.09,39,'2017-01-12 23:04:16',4454.55,'September','2009',1,'September 2009'),
(90,48.3352,48,48,4640.18,3480.14,22,'2017-01-12 23:04:49',8120.32,'September','2009',1,'September 2009'),
(91,64.2045,0,32,0,3081.82,4,'2017-01-12 23:27:28',3081.82,'September','2009',1,'September 2009'),
(92,53.9773,0,32,0,2590.91,24,'2017-01-12 23:28:00',2590.91,'September','2009',1,'September 2009'),
(93,58.5227,0,32,0,2809.09,8,'2017-01-12 23:28:30',2809.09,'September','2009',1,'September 2009'),
(94,90.9091,8,0,1454.55,0,2,'2017-01-12 23:45:55',1454.55,'October','2009',1,'October 2009'),
(95,62.5,8,0,1000,0,3,'2017-01-12 23:46:15',1000,'October','2009',1,'October 2009'),
(96,64.2045,8,0,1027.27,0,4,'2017-01-12 23:46:50',1027.27,'October','2009',1,'October 2009'),
(97,58.5227,8,0,936.364,0,8,'2017-01-12 23:47:22',936.364,'October','2009',1,'October 2009'),
(98,58.5227,0,0,0,0,22,'2017-01-12 23:47:43',0,'October','2009',1,'October 2009'),
(99,53.9773,8,0,863.636,0,24,'2017-01-12 23:48:06',863.636,'October','2009',1,'October 2009'),
(100,42.6136,8,0,681.818,0,27,'2017-01-12 23:48:31',681.818,'October','2009',1,'October 2009'),
(101,42.6136,8,0,681.818,0,27,'2017-01-12 23:49:13',681.818,'October','2009',1,'October 2009'),
(102,53.9773,8,0,863.636,0,30,'2017-01-12 23:49:35',863.636,'October','2009',1,'October 2009'),
(103,51.1364,8,0,818.182,0,34,'2017-01-12 23:49:57',818.182,'October','2009',1,'October 2009'),
(104,39.7727,8,0,636.364,0,36,'2017-01-12 23:50:20',636.364,'October','2009',1,'October 2009'),
(105,34.0909,8,0,545.455,0,37,'2017-01-12 23:50:42',545.455,'October','2009',1,'October 2009'),
(106,39.7727,8,0,636.364,0,38,'2017-01-12 23:51:05',636.364,'October','2009',1,'October 2009'),
(107,39.7727,8,0,636.364,0,39,'2017-01-12 23:51:24',636.364,'October','2009',1,'October 2009'),
(108,142.045,0,40,0,8522.73,41,'2017-01-19 01:00:13',8522.73,'August','2009',1,'August 2009'),
(109,142.045,16,0,4545.45,0,41,'2017-01-19 01:00:54',4545.45,'September','2009',1,'September 2009'),
(110,142.045,8,0,2272.73,0,41,'2017-01-19 01:01:48',2272.73,'October','2009',1,'October 2009'),
(111,62.5,32,0,4000,0,3,'2017-01-19 01:04:28',4000,'November','2009',1,'November 2009'),
(112,51.1364,0,48,0,3681.82,34,'2017-01-19 01:04:55',3681.82,'November','2009',1,'November 2009'),
(113,142.045,8,66,2272.73,14062.5,41,'2017-01-19 01:05:28',16335.2,'November','2009',1,'November 2009'),
(114,39.7727,0,50,0,2982.95,42,'2017-01-19 01:10:29',2982.95,'November','2009',1,'November 2009'),
(115,34.0909,8,136,545.455,6954.55,37,'2017-01-19 01:11:20',7500,'November','2009',1,'November 2009'),
(116,58.5227,72,132,8427.27,11587.5,22,'2017-01-19 01:12:08',20014.8,'November','2009',1,'November 2009'),
(117,39.7727,40,32,3181.82,1909.09,39,'2017-01-19 01:12:59',5090.91,'November','2009',1,'November 2009'),
(118,39.7727,0,124,0,7397.73,44,'2017-01-19 01:15:59',7397.73,'November','2009',1,'November 2009'),
(119,64.2045,16,0,2054.55,0,4,'2017-01-19 01:20:16',2054.55,'November','2009',1,'November 2009'),
(120,53.9773,16,0,1727.27,0,24,'2017-01-19 01:20:41',1727.27,'November','2009',1,'November 2009'),
(121,58.5227,16,0,1872.73,0,8,'2017-01-19 01:21:18',1872.73,'November','2009',1,'November 2009'),
(122,62.5,32,0,4000,0,3,'2017-01-26 12:21:33',4000,'December','2009',1,'December 2009'),
(123,142.045,0,128,0,27272.7,41,'2017-01-26 12:22:36',27272.7,'December','2009',1,'December 2009'),
(124,34.0909,0,24,0,1227.27,43,'2017-01-26 12:26:31',1227.27,'December','2009',1,'December 2009'),
(125,53.9773,16,0,1727.27,0,30,'2017-01-26 12:32:49',1727.27,'December','2009',1,'December 2009'),
(126,42.6136,18,0,1534.09,0,27,'2017-01-26 12:35:55',1534.09,'December','2009',1,'December 2009'),
(127,39.7727,8,0,636.364,0,38,'2017-01-26 12:36:51',636.364,'December','2009',1,'December 2009'),
(128,58.5227,0,138,0,12114.2,22,'2017-01-26 12:38:21',12114.2,'December','2009',1,'December 2009'),
(129,39.7727,0,108,0,6443.18,44,'2017-01-26 12:39:13',6443.18,'December','2009',1,'December 2009'),
(130,39.7727,16,0,1272.73,0,39,'2017-01-26 12:40:02',1272.73,'December','2009',1,'December 2009'),
(131,41.3636,20,0,1654.55,0,45,'2017-01-26 14:32:18',1654.55,'January','2011',1,'January 2011'),
(132,56.1364,28,8,3143.64,673.636,24,'2017-01-26 14:33:41',3817.27,'January','2011',1,'January 2011'),
(133,41.3636,22,0,1820,0,46,'2017-01-26 14:34:16',1820,'January','2011',1,'January 2011'),
(134,56.1364,20,0,2245.45,0,30,'2017-01-26 14:35:12',2245.45,'January','2011',1,'January 2011'),
(135,56.1364,18,0,2020.91,0,47,'2017-01-26 14:36:07',2020.91,'January','2011',1,'January 2011'),
(136,41.3636,24,0,1985.45,0,38,'2017-01-26 14:36:42',1985.45,'January','2011',1,'January 2011'),
(137,113.636,0,0,0,0,1,'2017-01-26 14:37:10',0,'January','2011',1,'January 2011'),
(138,53.2955,18,0,1918.64,0,34,'2017-01-26 14:38:16',1918.64,'January','2011',1,'January 2011'),
(139,41.3636,32,0,2647.27,0,39,'2017-01-26 14:38:57',2647.27,'January','2011',1,'January 2011'),
(140,65,24,0,3120,0,3,'2017-01-26 14:39:28',3120,'January','2011',1,'January 2011'),
(141,41.3636,73,0,6039.09,0,42,'2017-01-26 14:43:08',6039.09,'January','2011',1,'January 2011'),
(142,41.3636,0,164,0,10175.5,42,'2017-01-26 14:44:12',10175.5,'January','2011',1,'January 2011'),
(143,41.3636,0,8,0,496.364,51,'2017-01-26 14:44:46',496.364,'January','2011',1,'January 2011'),
(144,41.3636,0,8,0,496.364,43,'2017-01-26 14:45:30',496.364,'January','2011',1,'January 2011'),
(145,41.3636,0,24,0,1489.09,53,'2017-01-26 14:46:54',1489.09,'January','2016',1,'January 2016'),
(146,60.8636,24,0,2921.45,0,22,'2017-01-26 14:48:00',2921.45,'January','2011',1,'January 2011'),
(147,41.3636,60,184,4963.64,11416.4,44,'2017-01-26 14:49:23',16380,'January','2011',1,'January 2011'),
(148,41.3636,0,168,0,10423.6,54,'2017-01-26 14:51:44',10423.6,'January','2011',1,'January 2011'),
(149,41.3636,78,0,6452.73,0,55,'2017-01-26 14:53:56',6452.73,'January','2011',1,'January 2011'),
(150,56.1364,0,36,0,3031.36,30,'2017-01-26 16:16:59',3031.36,'February','2011',1,'February 2011'),
(151,41.3636,12,24,992.727,1489.09,46,'2017-01-26 16:18:28',2481.82,'February','2011',1,'February 2011'),
(152,41.3636,24,24,1985.45,1489.09,39,'2017-01-26 16:19:11',3474.55,'February','2011',1,'February 2011'),
(153,65,0,8,0,780,3,'2017-01-26 16:19:39',780,'February','2011',1,'February 2011'),
(154,41.3636,0,8,0,496.364,69,'2017-01-26 16:23:04',496.364,'February','2011',1,'February 2011'),
(155,41.3636,48,96,3970.91,5956.36,42,'2017-01-26 16:24:20',9927.27,'February','2011',1,'February 2011'),
(156,34.0909,0,32,0,1636.36,64,'2017-01-26 16:24:57',1636.36,'February','2011',1,'February 2011'),
(157,41.3636,54,68,4467.27,4219.09,44,'2017-01-26 16:25:45',8686.36,'February','2011',1,'February 2011'),
(158,41.3636,0,226,0,14022.3,54,'2017-01-26 16:26:47',14022.3,'February','2011',1,'February 2011'),
(159,39.7727,0,8,0,477.273,57,'2017-01-27 10:09:45',477.273,'April','2011',1,'April 2011'),
(160,39.7727,0,16,0,954.545,58,'2017-01-27 10:12:42',954.545,'April','2011',1,'April 2011'),
(161,56.1364,0,8,0,673.636,30,'2017-01-27 10:13:22',673.636,'April','2011',1,'April 2011'),
(162,41.3636,0,86,0,5335.91,46,'2017-01-27 10:14:04',5335.91,'April','2011',1,'April 2011'),
(163,41.3636,32,0,2647.27,0,39,'2017-01-27 10:14:37',2647.27,'April','2011',1,'April 2011'),
(164,65,16,0,2080,0,3,'2017-01-27 10:15:53',2080,'April','2011',1,'April 2011'),
(165,41.3636,16,0,1323.64,0,69,'2017-01-27 10:16:44',1323.64,'April','2011',1,'April 2011'),
(166,41.3636,0,20,0,1240.91,52,'2017-01-27 10:18:08',1240.91,'April','2011',1,'April 2011'),
(167,41.3636,16,16,1323.64,992.727,53,'2017-01-27 10:19:12',2316.36,'April','2011',1,'April 2011'),
(168,41.3636,0,36,0,2233.64,55,'2017-01-27 10:20:21',2233.64,'April','2011',1,'April 2011'),
(169,0,5,5,0,0,0,'2017-02-13 14:54:23',0,NULL,NULL,1,' '),
(170,0,0,8,0,0,0,'2017-02-13 14:55:09',0,NULL,NULL,1,' '),
(171,0,0,8,0,0,0,'2017-02-13 14:55:39',0,NULL,NULL,1,' '),
(172,65,0,8,0,780,3,'2017-02-15 00:20:15',780,'January','2010',1,'January 2010'),
(173,53.2955,0,8,0,639.545,34,'2017-02-15 00:20:44',639.545,'January','2010',1,'January 2010'),
(174,39.7727,48,37,3818.18,2207.39,60,'2017-02-15 00:21:48',6025.57,'January','2010',1,'January 2010'),
(175,67.5,0,8,0,810,30,'2017-02-15 00:23:15',810,'January','2010',1,'January 2010'),
(176,67.5,8,0,1080,0,27,'2017-02-15 00:24:25',1080,'January','2010',1,'January 2010'),
(177,60.8636,49,63,5964.64,5751.61,22,'2017-02-15 00:25:03',11716.2,'January','2010',1,'January 2010'),
(178,53.1818,0,8,0,638.182,49,'2017-02-15 00:25:49',638.182,'January','2010',1,'January 2010'),
(179,56.1364,0,8,0,673.636,24,'2017-02-15 00:27:22',673.636,'January','2010',1,'January 2010'),
(180,52.7273,0,8,0,632.727,46,'2017-02-15 00:27:48',632.727,'January','2010',1,'January 2010'),
(181,52.7273,0,8,0,632.727,45,'2017-02-15 00:29:12',632.727,'January','2010',1,'January 2010'),
(182,35.4545,0,8,0,425.455,48,'2017-02-15 00:29:47',425.455,'January','2010',1,'January 2010'),
(183,52.7273,0,8,0,632.727,38,'2017-02-15 00:30:17',632.727,'January','2010',1,'January 2010'),
(184,65,16,16,2080,1560,3,'2017-02-15 01:34:03',3640,'February','2010',1,'February 2010'),
(185,53.2955,16,0,1705.45,0,34,'2017-02-15 01:34:31',1705.45,'February','2010',1,'February 2010'),
(186,198.864,0,41,0,12230.1,95,'2017-02-23 01:16:49',12230.1,'February','2017',1,'February 2017'),
(187,198.864,0,15,0,4474.43,74,'2017-02-23 01:25:35',4474.43,'February','2017',1,'February 2017'),
(188,0,0,24,0,0,0,'2017-02-23 01:38:08',0,NULL,NULL,1,' '),
(189,198.864,0,27,0,8053.98,97,'2017-02-23 01:49:43',8053.98,'February','2017',1,'February 2017'),
(190,170.455,0,25,0,6264.2,96,'2017-02-26 03:50:56',6264.2,'February','2017',1,'February 2017'),
(191,340.909,0,0,0,0,70,'2017-03-21 14:04:48',0,'March','2017',1,'March 2017'),
(192,340.909,0,0,0,0,71,'2017-03-21 14:05:15',0,'March','2017',1,'March 2017'),
(193,198.864,22,0,8750,0,74,'2017-03-21 14:06:19',8750,'March','2017',1,'March 2017'),
(194,142.045,0,0,0,0,76,'2017-03-21 14:06:51',0,'March','2017',1,'March 2017'),
(195,113.636,8,0,1818.18,0,79,'2017-03-21 14:07:15',1818.18,'March','2017',1,'March 2017'),
(196,159.091,8,0,2545.45,0,80,'2017-03-21 14:07:33',2545.45,'March','2017',1,'March 2017'),
(197,113.636,8,0,1818.18,0,81,'2017-03-21 14:07:53',1818.18,'March','2017',1,'March 2017'),
(198,198.864,0,0,0,0,82,'2017-03-21 14:08:13',0,'March','2017',1,'March 2017'),
(199,130.682,8,0,2090.91,0,83,'2017-03-21 14:08:31',2090.91,'March','2017',1,'March 2017'),
(200,113.636,8,0,1818.18,0,84,'2017-03-21 14:08:48',1818.18,'March','2017',1,'March 2017'),
(201,290.909,0,0,0,0,85,'2017-03-21 14:09:08',0,'March','2017',1,'March 2017'),
(202,187.5,5,0,1875,0,87,'2017-03-21 14:10:00',1875,'March','2017',1,'March 2017'),
(203,187.5,0,0,0,0,88,'2017-03-21 14:12:38',0,'March','2017',1,'March 2017'),
(204,198.864,0,22,0,6562.5,89,'2017-03-21 14:14:17',6562.5,'March','2017',1,'March 2017'),
(205,241.477,5,5,2414.77,1811.08,90,'2017-03-21 14:14:56',4225.85,'March','2017',1,'March 2017'),
(206,303.977,9,0,5471.59,0,92,'2017-03-21 14:16:34',5471.59,'March','2017',1,'March 2017'),
(207,213.068,5,0,2130.68,0,93,'2017-03-21 14:19:06',2130.68,'March','2017',1,'March 2017'),
(208,224.432,0,0,0,0,94,'2017-03-21 14:19:40',0,'March','2017',1,'March 2017'),
(209,198.864,32,0,12727.3,0,95,'2017-03-21 14:20:33',12727.3,'March','2017',1,'March 2017'),
(210,170.455,20,0,6818.18,0,96,'2017-03-21 14:21:00',6818.18,'March','2017',1,'March 2017'),
(211,198.864,17,0,6761.36,0,97,'2017-03-21 14:21:38',6761.36,'March','2017',1,'March 2017'),
(212,224.432,8,0,3590.91,0,99,'2017-03-21 14:22:18',3590.91,'March','2017',1,'March 2017'),
(213,232.955,8,0,3727.27,0,100,'2017-03-21 14:22:46',3727.27,'March','2017',1,'March 2017'),
(214,241.477,8,0,3863.64,0,101,'2017-03-21 14:23:05',3863.64,'March','2017',1,'March 2017'),
(215,232.955,8,0,3727.27,0,102,'2017-03-21 14:23:23',3727.27,'March','2017',1,'March 2017'),
(216,261.364,8,0,4181.82,0,103,'2017-03-21 14:23:55',4181.82,'March','2017',1,'March 2017'),
(217,159.091,8,0,2545.45,0,104,'2017-03-21 14:24:15',2545.45,'March','2017',1,'March 2017'),
(218,190.341,8,0,3045.45,0,105,'2017-03-21 14:24:33',3045.45,'March','2017',1,'March 2017'),
(219,130.682,8,0,2090.91,0,106,'2017-03-21 14:24:57',2090.91,'March','2017',1,'March 2017'),
(220,272.727,0,0,0,0,107,'2017-03-21 14:25:16',0,'March','2017',1,'March 2017'),
(221,289.773,0,0,0,0,108,'2017-03-21 14:25:36',0,'March','2017',1,'March 2017'),
(222,201.705,0,37,0,11194.6,113,'2017-03-21 14:26:07',11194.6,'March','2017',1,'March 2017'),
(223,238.636,0,37,0,13244.3,114,'2017-03-21 14:26:31',13244.3,'March','2017',1,'March 2017'),
(224,250,0,39,0,14625,115,'2017-03-21 14:26:56',14625,'March','2017',1,'March 2017'),
(225,159.091,10,0,3181.82,0,116,'2017-03-21 14:27:39',3181.82,'March','2017',1,'March 2017'),
(226,187.5,5,4,1875,1125,117,'2017-03-21 14:28:36',3000,'March','2017',1,'March 2017'),
(227,241.477,0,0,0,0,118,'2017-03-21 14:29:29',0,'March','2017',1,'March 2017'),
(228,187.5,0,22,0,6187.5,88,'2017-03-21 14:30:03',6187.5,'March','2017',1,'March 2017'),
(229,232.955,14,14,6522.73,4892.05,121,'2017-03-21 14:30:58',11414.8,'March','2017',1,'March 2017'),
(230,218.75,15,0,6562.5,0,122,'2017-03-21 14:31:26',6562.5,'March','2017',1,'March 2017'),
(231,250,66,28,33000,10500,129,'2017-03-21 14:32:08',43500,'March','2017',1,'March 2017'),
(232,224.432,10,0,4488.64,0,128,'2017-03-21 14:32:51',4488.64,'March','2017',1,'March 2017'),
(233,142.045,10,0,2840.91,0,124,'2017-03-21 14:33:30',2840.91,'March','2017',1,'March 2017'),
(234,142.045,10,0,2840.91,0,130,'2017-03-21 14:34:19',2840.91,'March','2017',1,'March 2017'),
(235,301.136,20,15,12045.5,6775.57,22,'2017-03-21 14:35:26',18821,'March','2017',1,'March 2017'),
(236,247.159,5,0,2471.59,0,123,'2017-03-21 14:35:58',2471.59,'March','2017',1,'March 2017'),
(237,258.523,0,66,0,25593.8,131,'2017-03-21 14:36:38',25593.8,'March','2017',1,'March 2017'),
(238,113.636,0,0,0,0,1,'2017-03-27 13:08:08',0,'January','2017',1,'January 2017'),
(239,255.682,15,10,7670.45,3835.23,22,'2017-06-17 10:53:13',11505.7,'January','2017',1,'January 2017'),
(240,159.091,36,0,11454.5,0,80,'2017-03-27 13:12:27',11454.5,'January','2017',1,'January 2017'),
(241,130.682,36,0,9409.09,0,81,'2017-03-27 13:12:53',9409.09,'January','2017',1,'January 2017'),
(242,130.682,40,0,10454.5,0,83,'2017-03-27 13:13:25',10454.5,'January','2017',1,'January 2017'),
(243,130.682,36,0,9409.09,0,84,'2017-03-27 13:13:54',9409.09,'January','2017',1,'January 2017'),
(244,187.5,25,12,9375,3375,87,'2017-03-27 13:15:06',12750,'January','2017',1,'January 2017'),
(245,187.5,25,4,9375,1125,88,'2017-03-27 13:17:50',10500,'January','2017',1,'January 2017'),
(246,198.864,24,24,9545.45,7159.09,89,'2017-03-27 13:18:22',16704.5,'January','2017',1,'January 2017'),
(247,241.477,16,22,7727.27,7968.75,90,'2017-03-27 13:18:50',15696,'January','2017',1,'January 2017'),
(248,213.068,5,3,2130.68,958.807,93,'2017-03-27 13:19:40',3089.49,'January','2017',1,'January 2017'),
(249,224.432,10,2,4488.64,673.295,94,'2017-03-27 13:20:28',5161.93,'January','2017',1,'January 2017'),
(250,258.523,36,24,18613.6,9306.82,131,'2017-03-27 13:21:16',27920.5,'January','2017',1,'January 2017'),
(251,232.955,30,12,13977.3,4193.18,132,'2017-03-27 13:21:44',18170.5,'January','2017',1,'January 2017'),
(252,241.477,5,3,2414.77,1086.65,119,'2017-03-27 13:22:24',3501.42,'January','2017',1,'January 2017'),
(253,241.477,10,0,4829.55,0,118,'2017-03-27 13:23:08',4829.55,'January','2017',1,'January 2017'),
(254,187.5,20,3,7500,843.75,120,'2017-03-27 13:24:29',8343.75,'January','2017',1,'January 2017'),
(255,232.955,63,52,29352.3,18170.5,121,'2017-03-27 13:29:20',47522.7,'January','2017',1,'January 2017'),
(256,218.75,15,0,6562.5,0,122,'2017-03-27 13:30:19',6562.5,'January','2017',1,'January 2017'),
(257,247.159,33,11,16312.5,4078.12,126,'2017-03-27 13:31:21',20390.6,'January','2017',1,'January 2017'),
(258,224.432,15,3,6732.95,1009.94,127,'2017-03-27 13:32:11',7742.9,'January','2017',1,'January 2017'),
(259,224.432,17,35,7630.68,11782.7,128,'2017-03-27 13:32:47',19413.4,'January','2017',1,'January 2017'),
(260,250,7,19,3500,7125,129,'2017-06-17 05:06:24',10625,'January','2017',1,'January 2017'),
(261,159.091,20,20,6363.64,4772.73,116,'2017-03-27 13:34:35',11136.4,'January','2017',1,'January 2017'),
(263,187.5,28,10,10500,2812.5,117,'2017-06-17 05:10:10',13312.5,'January','2017',1,'January 2017'),
(264,201.705,0,53,0,16035.5,113,'2017-03-27 13:36:57',16035.5,'January','2017',1,'January 2017'),
(265,238.636,0,21,0,7517.05,114,'2017-03-27 13:37:19',7517.05,'January','2017',1,'January 2017'),
(266,250,0,38,0,14250,115,'2017-03-27 13:37:39',14250,'January','2017',1,'January 2017'),
(267,295.455,15,0,8863.64,0,112,'2017-03-27 13:39:21',8863.64,'January','2017',1,'January 2017'),
(268,278.409,14,0,7795.45,0,111,'2017-03-27 13:40:02',7795.45,'January','2017',1,'January 2017'),
(269,289.773,4,0,2318.18,0,108,'2017-03-27 13:42:16',2318.18,'January','2017',1,'January 2017'),
(270,272.727,6,0,3272.73,0,107,'2017-03-27 13:42:58',3272.73,'January','2017',1,'January 2017'),
(271,190.341,36,0,13704.5,0,105,'2017-03-27 13:45:35',13704.5,'January','2017',1,'January 2017'),
(272,224.432,36,0,16159.1,0,99,'2017-03-27 13:46:23',16159.1,'January','2017',1,'January 2017'),
(273,232.955,36,0,16772.7,0,100,'2017-03-27 13:47:13',16772.7,'January','2017',1,'January 2017'),
(274,241.477,36,0,17386.4,0,101,'2017-03-27 13:47:55',17386.4,'January','2017',1,'January 2017'),
(275,232.955,40,0,18636.4,0,102,'2017-03-27 13:48:25',18636.4,'January','2017',1,'January 2017'),
(276,261.364,36,0,18818.2,0,103,'2017-03-27 13:49:00',18818.2,'January','2017',1,'January 2017'),
(277,159.091,36,0,11454.5,0,104,'2017-03-27 13:49:35',11454.5,'January','2017',1,'January 2017'),
(278,130.682,36,0,9409.09,0,79,'2017-03-27 13:49:57',9409.09,'January','2017',1,'January 2017'),
(279,227.273,36,0,16363.6,0,39,'2017-03-27 14:08:16',16363.6,'January','2017',1,'January 2017'),
(280,272.727,8,0,4363.64,0,39,'2017-03-28 08:12:20',4363.64,'March','2017',1,'March 2017'),
(281,113.636,5,0,1136.36,0,1,'2017-04-21 08:51:05',1136.36,'April','2017',1,'April 2017'),
(282,232.955,5,6,2329.55,2096.59,132,'2017-04-21 08:52:03',4426.14,'April','2017',1,'April 2017'),
(283,301.136,17,10,10238.6,4517.05,22,'2017-04-21 08:52:48',14755.7,'April','2017',1,'April 2017'),
(284,218.75,7,6,3062.5,1968.75,122,'2017-04-21 08:55:53',5031.25,'April','2017',1,'April 2017'),
(285,187.5,10,0,3750,0,88,'2017-04-21 08:56:13',3750,'April','2017',1,'April 2017'),
(286,142.045,5,0,1420.45,0,124,'2017-04-21 08:56:53',1420.45,'April','2017',1,'April 2017'),
(287,224.432,10,0,4488.64,0,94,'2017-04-21 08:57:24',4488.64,'April','2017',1,'April 2017'),
(288,213.068,5,3,2130.68,958.807,93,'2017-04-21 08:57:55',3089.49,'April','2017',1,'April 2017'),
(289,224.432,10,0,4488.64,0,128,'2017-04-21 08:58:20',4488.64,'April','2017',1,'April 2017'),
(290,142.045,10,0,2840.91,0,130,'2017-04-21 08:58:44',2840.91,'April','2017',1,'April 2017'),
(291,187.5,5,0,1875,0,120,'2017-04-21 08:59:11',1875,'April','2017',1,'April 2017'),
(292,187.5,10,0,3750,0,87,'2017-04-21 09:03:59',3750,'April','2017',1,'April 2017'),
(293,241.477,5,0,2414.77,0,119,'2017-04-21 09:04:22',2414.77,'April','2017',1,'April 2017'),
(294,250,38,38,19000,14250,129,'2017-04-21 09:04:56',33250,'April','2017',1,'April 2017'),
(295,232.955,21,28,9784.09,9784.09,121,'2017-04-21 09:05:27',19568.2,'April','2017',1,'April 2017'),
(296,241.477,15,10,7244.32,3622.16,90,'2017-04-21 09:05:52',10866.5,'April','2017',1,'April 2017'),
(297,258.523,8,24,4136.36,9306.82,131,'2017-04-21 09:06:16',13443.2,'April','2017',1,'April 2017'),
(298,198.864,8,36,3181.82,10738.6,89,'2017-04-21 09:06:38',13920.5,'April','2017',1,'April 2017'),
(299,247.159,0,12,0,4448.86,126,'2017-04-21 09:07:30',4448.86,'April','2017',1,'April 2017'),
(300,198.864,0,46,0,13721.6,95,'2017-04-21 09:08:45',13721.6,'April','2017',1,'April 2017'),
(301,198.864,0,20,0,5965.91,97,'2017-04-21 09:09:06',5965.91,'April','2017',1,'April 2017'),
(302,170.455,0,27,0,6903.41,96,'2017-04-21 09:10:13',6903.41,'April','2017',1,'April 2017'),
(303,272.727,16,0,8727.27,0,39,'2017-04-21 09:10:54',8727.27,'April','2017',1,'April 2017'),
(304,198.864,0,36,0,10738.6,74,'2017-04-21 09:11:18',10738.6,'April','2017',1,'April 2017'),
(305,130.682,16,0,4181.82,0,79,'2017-04-21 09:11:39',4181.82,'April','2017',1,'April 2017'),
(306,159.091,16,0,5090.91,0,80,'2017-04-21 09:11:55',5090.91,'April','2017',1,'April 2017'),
(307,130.682,16,0,4181.82,0,81,'2017-04-21 09:12:11',4181.82,'April','2017',1,'April 2017'),
(308,130.682,16,0,4181.82,0,83,'2017-04-21 09:12:27',4181.82,'April','2017',1,'April 2017'),
(309,130.682,16,0,4181.82,0,84,'2017-04-21 09:12:46',4181.82,'April','2017',1,'April 2017'),
(310,224.432,16,0,7181.82,0,99,'2017-04-21 09:13:03',7181.82,'April','2017',1,'April 2017'),
(311,250,16,0,8000,0,102,'2017-04-21 09:15:35',8000,'April','2017',1,'April 2017'),
(312,232.955,16,0,7454.55,0,100,'2017-04-21 09:15:56',7454.55,'April','2017',1,'April 2017'),
(313,241.477,16,0,7727.27,0,101,'2017-04-21 09:16:13',7727.27,'April','2017',1,'April 2017'),
(314,261.364,16,0,8363.64,0,103,'2017-04-21 09:16:28',8363.64,'April','2017',1,'April 2017'),
(315,159.091,16,0,5090.91,0,104,'2017-04-21 09:16:46',5090.91,'April','2017',1,'April 2017'),
(316,190.341,16,0,6090.91,0,105,'2017-04-21 09:17:04',6090.91,'April','2017',1,'April 2017'),
(317,130.682,16,0,4181.82,0,106,'2017-04-21 09:17:28',4181.82,'April','2017',1,'April 2017'),
(318,201.705,16,12,6454.55,3630.68,113,'2017-04-21 09:20:32',10085.2,'April','2017',1,'April 2017'),
(319,238.636,16,7,7636.36,2505.68,114,'2017-04-21 09:21:18',10142,'April','2017',1,'April 2017'),
(320,250,16,14,8000,5250,115,'2017-04-21 09:21:47',13250,'April','2017',1,'April 2017'),
(321,187.5,5,0,1875,0,117,'2017-04-21 09:23:23',1875,'April','2017',1,'April 2017'),
(322,250,36,0,18000,0,115,'2017-05-19 16:46:23',18000,'May','2017',1,'May 2017'),
(323,238.636,36,0,17181.8,0,114,'2017-05-19 18:52:47',17181.8,'May','2017',1,'May 2017'),
(324,201.705,30,0,12102.3,0,113,'2017-05-19 18:53:20',12102.3,'May','2017',1,'May 2017'),
(325,218.75,14,0,6125,0,122,'2017-05-19 18:59:02',6125,'May','2017',1,'May 2017'),
(326,224.432,24,16,10772.7,5386.36,128,'2017-05-19 18:59:43',16159.1,'May','2017',1,'May 2017'),
(327,187.5,16,8,6000,2250,120,'2017-05-19 19:00:25',8250,'May','2017',1,'May 2017'),
(328,224.432,16,0,7181.82,0,94,'2017-05-19 19:00:57',7181.82,'May','2017',1,'May 2017'),
(329,142.045,24,0,6818.18,0,130,'2017-05-19 19:01:41',6818.18,'May','2017',1,'May 2017'),
(330,241.477,24,0,11590.9,0,119,'2017-05-19 19:02:12',11590.9,'May','2017',1,'May 2017'),
(331,187.5,16,16,6000,4500,87,'2017-05-19 19:02:45',10500,'May','2017',1,'May 2017'),
(332,142.045,16,0,4545.45,0,124,'2017-05-19 19:03:11',4545.45,'May','2017',1,'May 2017'),
(333,187.5,16,16,6000,4500,88,'2017-05-19 19:03:49',10500,'May','2017',1,'May 2017'),
(334,187.5,22,0,8250,0,117,'2017-05-19 19:04:19',8250,'May','2017',1,'May 2017'),
(335,224.432,14,0,6284.09,0,127,'2017-05-19 19:05:01',6284.09,'May','2017',1,'May 2017'),
(336,0,0,0,0,0,0,'2017-05-19 19:10:33',0,'January','2016',1,'January 2016'),
(337,113.636,0,0,0,0,1,'2017-05-19 19:10:57',0,'January','2016',1,'January 2016'),
(338,241.477,16,0,7727.27,0,118,'2017-05-19 19:11:33',7727.27,'May','2017',1,'May 2017'),
(339,232.955,22,21,10250,7338.07,132,'2017-05-19 19:12:12',17588.1,'May','2017',1,'May 2017'),
(340,250,48,36,24000,13500,129,'2017-05-19 19:12:46',37500,'May','2017',1,'May 2017'),
(341,232.955,36,31,16772.7,10832.4,121,'2017-05-19 19:13:23',27605.1,'May','2017',1,'May 2017'),
(342,198.864,21,16,8352.27,4772.73,89,'2017-05-19 19:13:56',13125,'May','2017',1,'May 2017'),
(343,258.523,8,21,4136.36,8143.47,131,'2017-05-19 19:14:36',12279.8,'May','2017',1,'May 2017'),
(344,247.159,44,40,21750,14829.5,126,'2017-05-19 19:15:07',36579.5,'May','2017',1,'May 2017'),
(345,241.477,24,16,11590.9,5795.45,90,'2017-05-19 19:15:44',17386.4,'May','2017',1,'May 2017'),
(346,301.136,24,16,14454.5,7227.27,22,'2017-05-19 19:16:29',21681.8,'May','2017',1,'May 2017'),
(347,0,16,8,0,0,0,'2017-05-20 17:52:14',0,'May','2017',1,'May 2017'),
(348,130.682,16,0,4181.82,0,83,'2017-05-20 17:53:26',4181.82,'May','2016',1,'May 2016'),
(349,130.682,16,8,4181.82,1568.18,84,'2017-05-20 17:54:04',5750,'May','2017',1,'May 2017'),
(350,113.636,16,0,3636.36,0,1,'2017-05-20 17:55:11',3636.36,'May','2017',1,'May 2017'),
(351,272.727,16,0,8727.27,0,39,'2017-05-20 17:55:41',8727.27,'May','2017',1,'May 2017'),
(352,241.477,16,0,7727.27,0,101,'2017-05-20 17:56:41',7727.27,'May','2017',1,'May 2017'),
(354,261.364,16,16,8363.64,6272.73,103,'2017-05-20 17:58:48',14636.4,'May','2017',1,'May 2017'),
(355,159.091,16,0,5090.91,0,104,'2017-05-20 17:59:22',5090.91,'May','2017',1,'May 2017'),
(356,159.091,8,0,2545.45,0,80,'2017-05-20 18:00:31',2545.45,'May','2017',1,'May 2017'),
(357,130.682,16,32,4181.82,6272.73,79,'2017-05-20 18:01:12',10454.5,'May','2017',1,'May 2017'),
(358,190.341,16,0,6090.91,0,105,'2017-05-20 18:01:43',6090.91,'May','2017',1,'May 2017'),
(359,130.682,8,0,2090.91,0,106,'2017-05-20 18:02:38',2090.91,'May','2017',1,'May 2017'),
(360,198.864,42,0,16704.5,0,95,'2017-05-20 18:08:19',16704.5,'May','2017',1,'May 2017'),
(361,170.455,27,0,9204.55,0,96,'2017-05-20 18:08:47',9204.55,'May','2017',1,'May 2017'),
(362,198.864,14,0,5568.18,0,97,'2017-05-20 18:09:15',5568.18,'May','2017',1,'May 2017'),
(364,303.977,12,0,7295.45,0,92,'2017-05-21 08:38:48',7295.45,'May','2017',1,'May 2017'),
(365,224.432,16,8,7181.82,2693.18,99,'2017-05-21 08:40:57',9875,'May','2017',1,'May 2017'),
(366,130.682,16,0,4181.82,0,81,'2017-05-21 15:54:25',4181.82,'May','2017',1,'May 2017'),
(367,250,16,16,8000,6000,102,'2017-05-21 16:12:16',14000,'May','2017',1,'May 2017'),
(368,130.682,16,0,4181.82,0,83,'2017-05-21 16:20:32',4181.82,'May','2017',1,'May 2017'),
(369,198.864,30,0,11931.8,0,74,'2017-05-28 10:06:36',11931.8,'May','2017',1,'May 2017'),
(370,232.955,16,0,7454.55,0,100,'2017-05-28 17:56:17',7454.55,'May','2017',1,'May 2017'),
(371,198.864,0,20,0,5965.91,133,'2017-05-28 18:29:37',5965.91,'January','2016',1,'January 2016'),
(372,198.864,0,20,0,5965.91,133,'2017-05-28 18:32:58',5965.91,'May','2017',1,'May 2017'),
(373,261.364,0,8,0,3136.36,103,'2017-06-08 11:43:05',3136.36,'December','2016',1,'December 2016'),
(374,113.636,0,30,0,5113.64,1,'2017-06-08 11:44:10',5113.64,'December','2016',1,'December 2016'),
(376,170.455,35,20,11931.8,5113.64,22,'2017-06-09 14:40:09',17045.5,'January','2016',1,'January 2016'),
(377,113.636,10,0,2272.73,0,88,'2017-06-09 19:15:49',2272.73,'January','2016',1,'January 2016'),
(378,303.977,0,4,0,1823.86,92,'2017-06-16 07:55:40',1823.86,'February','2017',1,'February 2017'),
(379,201.705,0,40,0,12102.3,113,'2017-06-16 07:56:22',12102.3,'February','2017',1,'February 2017'),
(380,238.636,0,34,0,12170.5,114,'2017-06-16 07:56:54',12170.5,'February','2017',1,'February 2017'),
(381,250,0,27,0,10125,115,'2017-06-16 07:57:26',10125,'February','2017',1,'February 2017'),
(382,241.477,18,22,8693.18,7968.75,90,'2017-06-16 07:59:21',16661.9,'February','2017',1,'February 2017'),
(383,241.477,3,0,1448.86,0,118,'2017-06-16 07:59:51',1448.86,'February','2017',1,'February 2017'),
(384,232.955,49,7,22829.5,2446.02,121,'2017-06-16 08:00:36',25275.6,'February','2017',1,'February 2017'),
(385,250,28,41,14000,15375,129,'2017-06-16 08:01:32',29375,'February','2017',1,'February 2017'),
(386,113.636,7,0,1590.91,0,1,'2017-06-16 08:02:04',1590.91,'February','2017',1,'February 2017'),
(387,224.432,10,16,4488.64,5386.36,94,'2017-06-16 08:03:08',9875,'February','2017',1,'February 2017'),
(388,258.523,0,26,0,10082.4,131,'2017-06-16 08:03:34',10082.4,'February','2017',1,'February 2017'),
(389,232.955,5,15,2329.55,5241.48,132,'2017-06-16 08:04:07',7571.02,'February','2017',1,'February 2017'),
(391,136.364,36,0,9818.18,0,39,'2017-06-16 10:39:03',9818.18,'January','2017',1,'January 2017'),
(393,159.091,36,0,11454.5,0,80,'2017-06-17 11:04:06',11454.5,'January','2017',1,'January 2017'),
(401,198.864,0,38,0,11335.2,95,'2017-06-16 10:50:46',11335.2,'January','2017',1,'January 2017'),
(402,170.455,0,28,0,7159.09,96,'2017-06-16 10:51:20',7159.09,'January','2017',1,'January 2017'),
(403,198.864,0,25,0,7457.39,97,'2017-06-16 10:52:05',7457.39,'January','2017',1,'January 2017'),
(426,261.364,0,8,0,3136.36,103,'2017-06-17 13:07:41',3136.36,'December','2016',1,'December 2016'),
(427,201.705,0,30,0,9076.7,113,'2017-06-17 13:08:28',9076.7,'December','2016',1,'December 2016'),
(428,238.636,18,0,8590.91,0,114,'2017-06-17 13:08:56',8590.91,'December','2016',1,'December 2016'),
(429,250,26,0,13000,0,115,'2017-06-17 13:09:22',13000,'December','2016',1,'December 2016'),
(430,187.5,0,10,0,2812.5,117,'2017-06-17 13:10:00',2812.5,'December','2016',1,'December 2016'),
(431,170.455,0,16,0,4090.91,88,'2017-06-17 13:10:31',4090.91,'December','2016',1,'December 2016'),
(432,241.477,15,56,7244.32,20284.1,89,'2017-06-17 13:11:00',27528.4,'December','2016',1,'December 2016'),
(433,241.477,10,10,4829.55,3622.16,90,'2017-06-17 13:11:28',8451.7,'December','2016',1,'December 2016'),
(434,187.5,0,35,0,9843.75,87,'2017-06-17 13:11:47',9843.75,'December','2016',1,'December 2016'),
(435,241.477,0,3,0,1086.65,118,'2017-06-17 13:12:07',1086.65,'December','2016',1,'December 2016'),
(436,113.636,0,35,0,5965.91,1,'2017-06-17 13:12:29',5965.91,'December','2016',1,'December 2016'),
(437,113.636,21,59,4772.73,10056.8,1,'2017-06-17 13:12:57',14829.5,'December','2016',1,'December 2016'),
(438,113.636,0,19,0,3238.64,1,'2017-06-17 13:13:21',3238.64,'December','2016',1,'December 2016'),
(439,247.159,14,32,6920.45,11863.6,126,'2017-06-17 13:13:52',18784.1,'December','2016',1,'December 2016'),
(440,250,19,65,9500,24375,129,'2017-06-17 13:14:49',33875,'December','2016',1,'December 2016'),
(441,255.682,10,10,5113.64,3835.23,22,'2017-06-17 13:15:18',8948.86,'December','2016',1,'December 2016'),
(442,258.523,0,52,0,20164.8,131,'2017-06-17 13:15:41',20164.8,'December','2016',1,'December 2016'),
(443,232.955,8,27,3727.27,9434.66,132,'2017-06-17 13:16:12',13161.9,'December','2016',1,'December 2016'),
(444,198.864,16,24,6363.64,7159.09,101,'2017-06-17 16:20:28',13522.7,'November','2016',1,'November 2016'),
(445,113.636,16,24,3636.36,4090.91,1,'2017-06-17 16:21:05',7727.27,'November','2016',1,'November 2016'),
(446,227.273,0,28,0,9545.45,103,'2017-06-17 16:21:33',9545.45,'November','2016',1,'November 2016'),
(447,142.045,0,16,0,3409.09,80,'2017-06-17 16:22:04',3409.09,'November','2016',1,'November 2016'),
(448,255.682,10,11,5113.64,4218.75,107,'2017-06-17 16:22:31',9332.39,'November','2016',1,'November 2016'),
(449,255.682,0,10,0,3835.23,108,'2017-06-17 16:22:49',3835.23,'November','2016',1,'November 2016'),
(450,204.545,0,7,0,2147.73,92,'2017-06-17 16:23:12',2147.73,'November','2016',1,'November 2016'),
(451,255.682,0,10,0,3835.23,111,'2017-06-17 16:23:41',3835.23,'November','2016',1,'November 2016'),
(452,255.682,0,14,0,5369.32,112,'2017-06-17 16:24:13',5369.32,'November','2016',1,'November 2016'),
(453,181.818,0,27,0,7363.64,113,'2017-06-17 16:33:00',7363.64,'November','2016',1,'November 2016'),
(454,198.864,0,28,0,8352.27,114,'2017-06-17 16:33:34',8352.27,'November','2016',1,'November 2016'),
(455,204.545,0,31,0,9511.36,115,'2017-06-17 16:34:00',9511.36,'November','2016',1,'November 2016'),
(456,170.455,0,40,0,10227.3,117,'2017-06-17 16:35:15',10227.3,'November','2016',1,'November 2016'),
(457,170.455,18,26,6136.36,6647.73,88,'2017-06-17 16:35:53',12784.1,'November','2016',1,'November 2016'),
(458,198.864,16,16,6363.64,4772.73,90,'2017-06-17 16:36:16',11136.4,'November','2016',1,'November 2016'),
(459,170.455,24,64,8181.82,16363.6,87,'2017-06-17 16:36:49',24545.5,'November','2016',1,'November 2016'),
(460,198.864,8,16,3181.82,4772.73,119,'2017-06-17 16:37:48',7954.55,'November','2016',1,'November 2016'),
(461,170.455,16,12,5454.55,3068.18,120,'2017-06-17 16:38:21',8522.73,'November','2016',1,'November 2016'),
(462,198.864,36,27,14318.2,8053.98,121,'2017-06-17 16:38:48',22372.2,'November','2016',1,'November 2016'),
(463,204.545,16,24,6545.45,7363.64,126,'2017-06-17 16:39:14',13909.1,'November','2016',1,'November 2016'),
(464,198.864,16,18,6363.64,5369.32,127,'2017-06-17 16:40:13',11733,'November','2016',1,'November 2016'),
(465,198.864,0,35,0,10440.3,128,'2017-06-17 16:40:39',10440.3,'November','2016',1,'November 2016'),
(466,215.909,36,35,15545.5,11335.2,129,'2017-06-17 16:41:28',26880.7,'November','2016',1,'November 2016'),
(467,255.682,16,20,8181.82,7670.45,22,'2017-06-17 16:42:04',15852.3,'November','2016',1,'November 2016'),
(468,198.864,0,18,0,5369.32,94,'2017-06-17 16:42:30',5369.32,'November','2016',1,'November 2016'),
(469,215.909,0,32,0,10363.6,131,'2017-06-17 16:42:59',10363.6,'November','2016',1,'November 2016'),
(470,198.864,9,48,3579.55,14318.2,132,'2017-06-17 16:43:34',17897.7,'November','2016',1,'November 2016'),
(471,113.636,0,8,0,1363.64,1,'2017-06-18 14:08:36',1363.64,'November','2016',1,'November 2016'),
(472,198.864,8,48,3181.82,14318.2,99,'2017-06-18 14:17:34',17500,'October','2016',1,'October 2016'),
(473,113.636,8,0,1818.18,0,83,'2017-06-18 14:18:09',1818.18,'October','2016',1,'October 2016'),
(474,113.636,8,0,1818.18,0,84,'2017-06-18 14:18:35',1818.18,'October','2016',1,'October 2016'),
(475,198.864,40,72,15909.1,21477.3,100,'2017-06-18 14:19:12',37386.4,'October','2016',1,'October 2016'),
(476,198.864,8,32,3181.82,9545.45,101,'2017-06-18 14:19:39',12727.3,'October','2016',1,'October 2016'),
(477,198.864,8,0,3181.82,0,102,'2017-06-18 14:20:01',3181.82,'October','2016',1,'October 2016'),
(478,227.273,8,16,3636.36,5454.55,103,'2017-06-18 14:20:27',9090.91,'October','2016',1,'October 2016'),
(479,142.045,48,0,13636.4,0,104,'2017-06-18 14:20:48',13636.4,'October','2016',1,'October 2016'),
(480,142.045,8,0,2272.73,0,80,'2017-06-18 14:21:07',2272.73,'October','2016',1,'October 2016'),
(481,113.636,8,0,1818.18,0,79,'2017-06-18 14:21:33',1818.18,'October','2016',1,'October 2016'),
(482,227.273,8,24,3636.36,8181.82,39,'2017-06-18 14:22:00',11818.2,'October','2016',1,'October 2016'),
(483,164.773,56,0,18454.5,0,105,'2017-06-18 14:22:24',18454.5,'October','2016',1,'October 2016'),
(484,113.636,8,0,1818.18,0,106,'2017-06-18 14:22:44',1818.18,'October','2016',1,'October 2016'),
(485,181.818,0,32,0,8727.27,113,'2017-06-18 14:23:49',8727.27,'October','2016',1,'October 2016'),
(486,198.864,0,27,0,8053.98,114,'2017-06-18 14:24:07',8053.98,'October','2016',1,'October 2016'),
(487,113.636,0,30,0,5113.64,1,'2017-06-18 14:24:27',5113.64,'October','2016',1,'October 2016'),
(488,170.455,0,51,0,13039.8,117,'2017-06-18 14:25:30',13039.8,'October','2016',1,'October 2016'),
(489,170.455,32,24,10909.1,6136.36,88,'2017-06-18 14:25:55',17045.5,'October','2016',1,'October 2016'),
(490,198.864,8,32,3181.82,9545.45,89,'2017-06-18 14:26:24',12727.3,'October','2016',1,'October 2016'),
(491,198.864,16,24,6363.64,7159.09,90,'2017-06-18 14:26:54',13522.7,'October','2016',1,'October 2016'),
(492,198.864,8,0,3181.82,0,118,'2017-06-18 14:27:16',3181.82,'October','2016',1,'October 2016'),
(493,0,8,16,0,0,147,'2017-06-18 14:27:47',0,'October','2016',1,'October 2016'),
(494,198.864,26,8,10340.9,2386.36,119,'2017-06-18 14:28:18',12727.3,'October','2016',1,'October 2016'),
(495,170.455,0,8,0,2045.45,120,'2017-06-18 14:29:51',2045.45,'October','2016',1,'October 2016'),
(496,198.864,52,29,20681.8,8650.57,121,'2017-06-18 14:30:17',29332.4,'October','2016',1,'October 2016'),
(497,218.75,8,40,3500,13125,122,'2017-06-18 14:30:44',16625,'October','2016',1,'October 2016'),
(498,204.545,8,48,3272.73,14727.3,126,'2017-06-18 14:31:08',18000,'October','2016',1,'October 2016'),
(499,198.864,26,32,10340.9,9545.45,128,'2017-06-18 14:31:36',19886.4,'October','2016',1,'October 2016'),
(500,215.909,30,36,12954.5,11659.1,129,'2017-06-18 14:32:23',24613.6,'October','2016',1,'October 2016'),
(501,255.682,16,20,8181.82,7670.45,22,'2017-06-18 14:32:46',15852.3,'October','2016',1,'October 2016'),
(502,198.864,16,24,6363.64,7159.09,94,'2017-06-18 14:33:13',13522.7,'October','2016',1,'October 2016'),
(503,215.909,8,32,3454.55,10363.6,131,'2017-06-18 14:33:42',13818.2,'October','2016',1,'October 2016'),
(504,198.864,43,66,17102.3,19687.5,132,'2017-06-18 14:34:13',36789.8,'October','2016',1,'October 2016'),
(505,113.636,22,10,5000,1704.55,1,'2017-06-18 15:36:13',6704.55,'June','2008',1,'June 2008'),
(506,159.091,8,43,2545.45,10261.4,116,'2017-06-18 15:41:11',12806.8,'October','2016',1,'October 2016'),
(507,159.091,8,14,2545.45,3340.91,116,'2017-06-18 15:42:19',5886.36,'December','2016',1,'December 2016'),
(508,113.636,16,16,3636.36,2727.27,1,'2017-06-18 15:42:54',6363.64,'November','2016',1,'November 2016'),
(509,164.773,0,19,0,4696.02,148,'2017-06-18 15:47:16',4696.02,'November','2016',1,'November 2016'),
(510,164.773,18,40,5931.82,9886.36,148,'2017-06-18 15:49:16',15818.2,'October','2016',1,'October 2016'),
(511,198.864,0,26,0,7755.68,97,'2017-06-18 18:49:29',7755.68,'September','2016',1,'September 2016'),
(512,198.864,16,56,6363.64,16704.5,99,'2017-06-18 18:52:21',23068.2,'September','2016',1,'September 2016'),
(513,198.864,16,96,6363.64,28636.4,100,'2017-06-18 18:52:55',35000,'September','2016',1,'September 2016'),
(514,198.864,16,24,6363.64,7159.09,101,'2017-06-18 18:53:22',13522.7,'September','2016',1,'September 2016'),
(515,198.864,16,32,6363.64,9545.45,102,'2017-06-18 18:54:45',15909.1,'September','2016',1,'September 2016'),
(516,227.273,8,80,3636.36,27272.7,103,'2017-06-18 18:55:13',30909.1,'September','2016',1,'September 2016'),
(517,142.045,0,16,0,3409.09,104,'2017-06-18 18:55:39',3409.09,'September','2016',1,'September 2016'),
(518,227.273,16,24,7272.73,8181.82,39,'2017-06-18 18:56:05',15454.5,'September','2016',1,'September 2016'),
(519,164.773,0,16,0,3954.55,105,'2017-06-18 18:56:32',3954.55,'September','2016',1,'September 2016'),
(520,181.818,30,30,10909.1,8181.82,113,'2017-06-18 18:58:10',19090.9,'September','2016',1,'September 2016'),
(521,198.864,0,15,0,4474.43,114,'2017-06-18 18:58:33',4474.43,'September','2016',1,'September 2016'),
(522,204.545,30,41,12272.7,12579.5,115,'2017-06-18 18:59:01',24852.3,'September','2016',1,'September 2016'),
(523,159.091,0,21,0,5011.36,116,'2017-06-18 19:19:44',5011.36,'September','2016',1,'September 2016'),
(524,164.773,0,9,0,2224.43,148,'2017-06-18 19:20:05',2224.43,'September','2016',1,'September 2016'),
(525,170.455,0,2,0,511.364,117,'2017-06-18 19:20:39',511.364,'September','2016',1,'September 2016'),
(526,170.455,8,8,2727.27,2045.45,88,'2017-06-18 19:21:08',4772.73,'September','2016',1,'September 2016'),
(527,198.864,32,32,12727.3,9545.45,89,'2017-06-18 19:21:46',22272.7,'September','2016',1,'September 2016'),
(528,198.864,32,16,12727.3,4772.73,90,'2017-06-18 19:22:14',17500,'September','2016',1,'September 2016'),
(529,170.455,0,4,0,1022.73,87,'2017-06-18 19:22:38',1022.73,'September','2016',1,'September 2016'),
(530,198.864,8,0,3181.82,0,118,'2017-06-18 19:22:59',3181.82,'September','2016',1,'September 2016'),
(531,0,8,3,0,0,147,'2017-06-18 19:23:48',0,'September','2016',1,'September 2016'),
(532,198.864,36,12,14318.2,3579.55,121,'2017-06-18 19:24:16',17897.7,'September','2016',1,'September 2016'),
(533,204.545,0,14,0,4295.45,126,'2017-06-18 19:24:36',4295.45,'September','2016',1,'September 2016'),
(534,198.864,0,8,0,2386.36,128,'2017-06-18 19:25:02',2386.36,'September','2016',1,'September 2016'),
(535,215.909,32,27,13818.2,8744.32,129,'2017-06-18 19:25:33',22562.5,'September','2016',1,'September 2016'),
(536,255.682,32,16,16363.6,6136.36,22,'2017-06-18 19:26:00',22500,'September','2016',1,'September 2016'),
(537,215.909,32,32,13818.2,10363.6,131,'2017-06-18 19:26:39',24181.8,'September','2016',1,'September 2016'),
(538,198.864,8,0,3181.82,0,132,'2017-06-18 19:27:03',3181.82,'September','2016',1,'September 2016'),
(539,198.864,0,48,0,14318.2,100,'2017-06-19 00:01:57',14318.2,'August','2016',1,'August 2016'),
(540,198.864,16,16,6363.64,4772.73,101,'2017-06-19 00:02:32',11136.4,'August','2016',1,'August 2016'),
(541,113.636,0,105,0,17897.7,1,'2017-06-19 00:02:55',17897.7,'August','2016',1,'August 2016'),
(542,164.773,0,16,0,3954.55,105,'2017-06-19 00:03:26',3954.55,'January','2016',1,'January 2016'),
(543,113.636,0,44,0,7500,1,'2017-06-19 00:03:59',7500,'August','2016',1,'August 2016'),
(544,181.818,0,37,0,10090.9,113,'2017-06-19 00:04:19',10090.9,'August','2016',1,'August 2016'),
(545,198.864,0,37,0,11036.9,114,'2017-06-19 00:04:35',11036.9,'August','2016',1,'August 2016'),
(546,164.773,0,8,0,1977.27,148,'2017-06-19 00:04:55',1977.27,'August','2016',1,'August 2016'),
(547,159.091,0,8,0,1909.09,116,'2017-06-19 00:06:00',1909.09,'August','2016',1,'August 2016'),
(548,170.455,0,32,0,8181.82,88,'2017-06-19 00:06:19',8181.82,'August','2016',1,'August 2016'),
(549,170.455,0,4,0,1022.73,117,'2017-06-19 00:06:43',1022.73,'August','2016',1,'August 2016'),
(550,198.864,32,32,12727.3,9545.45,89,'2017-06-19 00:07:13',22272.7,'August','2016',1,'August 2016'),
(551,198.864,56,48,22272.7,14318.2,90,'2017-06-19 00:07:40',36590.9,'August','2016',1,'August 2016'),
(552,170.455,32,32,10909.1,8181.82,87,'2017-06-19 00:08:04',19090.9,'August','2016',1,'August 2016'),
(553,0,8,4,0,0,147,'2017-06-19 00:08:28',0,'August','2016',1,'August 2016'),
(554,198.864,16,0,6363.64,0,119,'2017-06-19 00:09:01',6363.64,'August','2016',1,'August 2016'),
(555,170.455,0,16,0,4090.91,120,'2017-06-19 00:09:24',4090.91,'August','2016',1,'August 2016'),
(556,198.864,24,36,9545.45,10738.6,121,'2017-06-19 00:09:50',20284.1,'August','2016',1,'August 2016'),
(557,218.75,0,40,0,13125,122,'2017-06-19 00:10:13',13125,'August','2016',1,'August 2016'),
(558,204.545,0,48,0,14727.3,126,'2017-06-19 00:10:35',14727.3,'August','2016',1,'August 2016'),
(559,198.864,8,36,3181.82,10738.6,128,'2017-06-19 00:10:59',13920.5,'August','2016',1,'August 2016'),
(560,198.864,0,18,0,5369.32,127,'2017-06-19 00:11:23',5369.32,'August','2016',1,'August 2016'),
(561,215.909,36,62,15545.5,20079.5,129,'2017-06-19 00:12:03',35625,'August','2016',1,'August 2016'),
(562,255.682,56,48,28636.4,18409.1,22,'2017-06-19 00:12:31',47045.5,'August','2016',1,'August 2016'),
(563,198.864,0,6,0,1789.77,94,'2017-06-19 00:15:06',1789.77,'August','2016',1,'August 2016'),
(564,215.909,32,32,13818.2,10363.6,131,'2017-06-19 00:15:31',24181.8,'August','2016',1,'August 2016'),
(565,198.864,58,56,23068.2,16704.5,132,'2017-06-19 00:16:01',39772.7,'August','2016',1,'August 2016'),
(566,247.159,0,8,0,2965.91,123,'2017-06-19 00:17:12',2965.91,'August','2016',1,'August 2016'),
(567,198.864,16,0,6363.64,0,99,'2017-06-19 00:51:34',6363.64,'July','2016',1,'July 2016'),
(568,198.864,0,8,0,2386.36,100,'2017-06-19 00:51:55',2386.36,'July','2016',1,'July 2016'),
(569,198.864,16,0,6363.64,0,100,'2017-06-19 00:52:24',6363.64,'July','2016',1,'July 2016'),
(570,198.864,16,0,6363.64,0,101,'2017-06-19 00:52:54',6363.64,'July','2016',1,'July 2016'),
(571,198.864,16,0,6363.64,0,102,'2017-06-19 00:53:18',6363.64,'July','2016',1,'July 2016'),
(572,227.273,16,95,7272.73,32386.4,103,'2017-06-19 00:53:45',39659.1,'July','2016',1,'July 2016'),
(573,113.636,16,16,3636.36,2727.27,1,'2017-06-19 00:54:24',6363.64,'July','2016',1,'July 2016'),
(574,227.273,16,0,7272.73,0,39,'2017-06-19 00:55:01',7272.73,'July','2016',1,'July 2016'),
(575,164.773,16,0,5272.73,0,105,'2017-06-19 00:55:49',5272.73,'July','2016',1,'July 2016'),
(576,255.682,22,0,11250,0,107,'2017-06-19 00:56:31',11250,'July','2016',1,'July 2016'),
(577,255.682,20,0,10227.3,0,108,'2017-06-19 00:56:52',10227.3,'July','2016',1,'July 2016'),
(578,255.682,29,0,14829.5,0,111,'2017-06-19 00:57:31',14829.5,'July','2016',1,'July 2016'),
(579,255.682,20,0,10227.3,0,112,'2017-06-19 00:57:54',10227.3,'July','2016',1,'July 2016'),
(580,204.545,0,69,0,21170.5,115,'2017-06-19 00:58:17',21170.5,'July','2016',1,'July 2016'),
(581,181.818,0,53,0,14454.5,113,'2017-06-19 00:58:43',14454.5,'July','2016',1,'July 2016'),
(582,198.864,0,55,0,16406.2,114,'2017-06-19 00:59:04',16406.2,'July','2016',1,'July 2016'),
(583,170.455,22,9,7500,2301.14,88,'2017-06-19 00:59:39',9801.14,'July','2016',1,'July 2016'),
(584,198.864,28,24,11136.4,7159.09,89,'2017-06-19 01:00:12',18295.5,'July','2016',1,'July 2016'),
(585,198.864,26,18,10340.9,5369.32,90,'2017-06-19 01:00:38',15710.2,'July','2016',1,'July 2016'),
(586,45.4545,8,11,727.273,750,91,'2017-06-19 01:02:05',1477.27,'July','2016',1,'July 2016'),
(587,198.864,23,8,9147.73,2386.36,118,'2017-06-19 01:03:06',11534.1,'July','2016',1,'July 2016'),
(588,170.455,16,8,5454.55,2045.45,87,'2017-06-19 01:03:55',7500,'July','2016',1,'July 2016'),
(589,0,8,0,0,0,147,'2017-06-19 01:04:19',0,'July','2016',1,'July 2016'),
(590,170.455,16,0,5454.55,0,120,'2017-06-19 01:04:46',5454.55,'July','2016',1,'July 2016'),
(591,198.864,72,24,28636.4,7159.09,121,'2017-06-19 01:05:19',35795.5,'July','2016',1,'July 2016'),
(592,218.75,32,16,14000,5250,122,'2017-06-19 01:05:44',19250,'July','2016',1,'July 2016'),
(593,204.545,25,48,10227.3,14727.3,126,'2017-06-19 01:06:10',24954.5,'July','2016',1,'July 2016'),
(594,198.864,21,9,8352.27,2684.66,128,'2017-06-19 01:08:55',11036.9,'July','2016',1,'July 2016'),
(595,198.864,16,0,6363.64,0,127,'2017-06-19 01:09:20',6363.64,'July','2016',1,'July 2016'),
(596,215.909,32,12,13818.2,3886.36,129,'2017-06-19 01:09:46',17704.5,'July','2016',1,'July 2016'),
(597,255.682,16,16,8181.82,6136.36,22,'2017-06-19 01:10:13',14318.2,'July','2016',1,'July 2016'),
(598,247.159,24,0,11863.6,0,123,'2017-06-19 01:10:34',11863.6,'July','2016',1,'July 2016'),
(599,198.864,16,0,6363.64,0,94,'2017-06-19 01:11:00',6363.64,'July','2016',1,'July 2016'),
(600,215.909,34,64,14681.8,20727.3,131,'2017-06-19 01:11:38',35409.1,'July','2016',1,'July 2016'),
(601,198.864,25,24,9943.18,7159.09,132,'2017-06-19 01:12:07',17102.3,'July','2016',1,'July 2016'),
(602,227.273,16,119,7272.73,40568.2,103,'2017-06-19 04:55:14',47840.9,'May','2016',1,'May 2016'),
(603,198.864,16,0,6363.64,0,99,'2017-06-19 05:15:23',6363.64,'May','2016',1,'May 2016'),
(604,198.864,16,0,6363.64,0,100,'2017-06-19 05:15:44',6363.64,'May','2016',1,'May 2016'),
(605,198.864,16,0,6363.64,0,101,'2017-06-19 05:16:11',6363.64,'May','2016',1,'May 2016'),
(606,198.864,16,0,6363.64,0,102,'2017-06-19 05:16:33',6363.64,'May','2016',1,'May 2016'),
(607,142.045,16,0,4545.45,0,104,'2017-06-19 05:17:13',4545.45,'May','2016',1,'May 2016'),
(608,142.045,16,0,4545.45,0,151,'2017-06-19 05:18:04',4545.45,'May','2016',1,'May 2016'),
(609,142.045,16,0,4545.45,0,153,'2017-06-19 05:18:26',4545.45,'May','2016',1,'May 2016'),
(610,227.273,16,0,7272.73,0,39,'2017-06-19 05:18:52',7272.73,'May','2016',1,'May 2016'),
(611,164.773,16,0,5272.73,0,152,'2017-06-19 05:19:12',5272.73,'May','2016',1,'May 2016'),
(612,164.773,16,0,5272.73,0,105,'2017-06-19 05:20:12',5272.73,'May','2016',1,'May 2016'),
(613,204.545,11,0,4500,0,92,'2017-06-19 05:20:51',4500,'May','2016',1,'May 2016'),
(614,713.841,0,27,0,28910.6,150,'2017-06-19 05:21:21',28910.6,'May','2016',1,'May 2016'),
(615,181.818,0,48,0,13090.9,113,'2017-06-19 05:21:56',13090.9,'May','2016',1,'May 2016'),
(616,198.864,0,48,0,14318.2,114,'2017-06-19 05:22:17',14318.2,'May','2016',1,'May 2016'),
(617,164.773,16,0,5272.73,0,148,'2017-06-19 05:23:08',5272.73,'May','2016',1,'May 2016'),
(618,159.091,16,0,5090.91,0,116,'2017-06-19 05:23:32',5090.91,'May','2016',1,'May 2016'),
(619,170.455,8,0,2727.27,0,88,'2017-06-19 05:23:54',2727.27,'May','2016',1,'May 2016'),
(620,198.864,26,8,10340.9,2386.36,89,'2017-06-19 05:24:25',12727.3,'May','2016',1,'May 2016'),
(621,198.864,13,16,5170.45,4772.73,90,'2017-06-19 05:24:50',9943.18,'May','2016',1,'May 2016'),
(622,45.4545,24,0,2181.82,0,91,'2017-06-19 05:25:16',2181.82,'May','2016',1,'May 2016'),
(623,198.864,16,0,6363.64,0,118,'2017-06-19 05:25:38',6363.64,'May','2016',1,'May 2016'),
(624,170.455,16,0,5454.55,0,87,'2017-06-19 05:26:01',5454.55,'May','2016',1,'May 2016'),
(625,198.864,16,8,6363.64,2386.36,119,'2017-06-19 05:26:38',8750,'May','2016',1,'May 2016'),
(626,0,16,8,0,0,147,'2017-06-19 05:27:01',0,'May','2016',1,'May 2016'),
(627,170.455,16,0,5454.55,0,120,'2017-06-19 05:27:36',5454.55,'May','2016',1,'May 2016'),
(628,198.864,36,0,14318.2,0,121,'2017-06-19 05:28:03',14318.2,'May','2016',1,'May 2016'),
(629,218.75,32,0,14000,0,122,'2017-06-19 05:28:23',14000,'May','2016',1,'May 2016'),
(630,204.545,16,40,6545.45,12272.7,126,'2017-06-19 05:28:48',18818.2,'May','2016',1,'May 2016'),
(631,198.864,16,24,6363.64,7159.09,128,'2017-06-19 05:29:53',13522.7,'May','2016',1,'May 2016'),
(632,198.864,24,0,9545.45,0,127,'2017-06-19 05:30:22',9545.45,'May','2016',1,'May 2016'),
(633,215.909,24,0,10363.6,0,129,'2017-06-19 05:30:47',10363.6,'May','2016',1,'May 2016'),
(634,255.682,16,16,8181.82,6136.36,22,'2017-06-19 05:31:15',14318.2,'May','2016',1,'May 2016'),
(635,215.909,16,32,6909.09,10363.6,131,'2017-06-19 05:33:15',17272.7,'May','2016',1,'May 2016'),
(636,198.864,12,0,4772.73,0,132,'2017-06-19 05:33:43',4772.73,'May','2016',1,'May 2016'),
(637,198.864,0,23,0,6950.28,149,'2017-06-19 06:51:29',6950.28,'July','2016',1,'July 2016'),
(638,198.864,0,23,0,6860.8,95,'2017-06-19 06:51:56',6860.8,'July','2016',1,'July 2016'),
(639,198.864,0,13,0,3877.84,97,'2017-06-19 06:52:25',3877.84,'July','2016',1,'July 2016'),
(640,170.455,0,29,0,7414.77,96,'2017-06-19 06:52:49',7414.77,'July','2016',1,'July 2016'),
(641,198.864,0,35,0,10440.3,95,'2017-06-19 06:59:19',10440.3,'June','2016',1,'June 2016'),
(642,170.455,0,34,0,8769.89,96,'2017-06-19 06:59:47',8769.89,'June','2016',1,'June 2016'),
(643,198.864,0,13,0,3877.84,97,'2017-06-19 07:00:21',3877.84,'June','2016',1,'June 2016'),
(644,198.864,16,0,6363.64,0,99,'2017-06-19 17:31:20',6363.64,'April','2016',1,'April 2016'),
(645,198.864,16,0,6363.64,0,100,'2017-06-19 17:32:06',6363.64,'April','2016',1,'April 2016'),
(646,198.864,16,0,6363.64,0,101,'2017-06-19 17:32:37',6363.64,'April','2016',1,'April 2016'),
(647,198.864,16,0,6363.64,0,102,'2017-06-19 17:33:18',6363.64,'April','2016',1,'April 2016'),
(648,227.273,16,48,7272.73,16363.6,103,'2017-06-19 17:35:14',23636.4,'April','2016',1,'April 2016'),
(649,113.636,16,0,3636.36,0,1,'2017-06-19 17:37:46',3636.36,'April','2016',1,'April 2016'),
(650,113.636,16,0,3636.36,0,1,'2017-06-19 17:38:57',3636.36,'April','2016',1,'April 2016'),
(651,142.045,16,0,4545.45,0,153,'2017-06-19 17:40:47',4545.45,'April','2016',1,'April 2016'),
(652,227.273,16,0,7272.73,0,39,'2017-06-19 17:43:19',7272.73,'April','2016',1,'April 2016'),
(653,164.773,16,0,5272.73,0,152,'2017-06-19 17:43:52',5272.73,'April','2016',1,'April 2016'),
(654,164.773,16,0,5272.73,0,105,'2017-06-19 17:44:18',5272.73,'April','2016',1,'April 2016'),
(655,255.682,16,0,8181.82,0,108,'2017-06-19 17:52:25',8181.82,'April','2016',1,'April 2016'),
(656,204.545,20,0,8181.82,0,115,'2017-06-19 17:53:26',8181.82,'April','2016',1,'April 2016'),
(657,181.818,22,0,8000,0,113,'2017-06-19 17:54:01',8000,'April','2016',1,'April 2016'),
(658,198.864,21,0,8352.27,0,114,'2017-06-19 17:55:47',8352.27,'April','2016',1,'April 2016'),
(659,164.773,11,4,3625,988.636,148,'2017-06-19 17:56:26',4613.64,'April','2016',1,'April 2016'),
(660,159.091,10,5,3181.82,1193.18,116,'2017-06-19 17:57:25',4375,'April','2016',1,'April 2016'),
(661,170.455,5,16,1704.55,4090.91,88,'2017-06-19 17:57:59',5795.45,'April','2016',1,'April 2016'),
(662,198.864,15,12,5965.91,3579.55,90,'2017-06-19 17:59:24',9545.45,'April','2016',1,'April 2016'),
(663,45.4545,10,5,909.091,340.909,91,'2017-06-19 17:59:53',1250,'April','2016',1,'April 2016'),
(664,0,0,5,0,0,147,'2017-06-19 18:00:53',0,'April','2016',1,'April 2016'),
(665,198.864,10,6,3977.27,1789.77,119,'2017-06-19 18:01:33',5767.05,'April','2016',1,'April 2016'),
(666,170.455,15,3,5113.64,767.045,120,'2017-06-19 18:02:07',5880.68,'April','2016',1,'April 2016'),
(667,198.864,28,56,11136.4,16704.5,121,'2017-06-19 18:02:46',27840.9,'April','2016',1,'April 2016'),
(668,218.75,15,0,6562.5,0,122,'2017-06-19 18:03:56',6562.5,'April','2016',1,'April 2016'),
(669,204.545,8,70,3272.73,21477.3,126,'2017-06-19 18:04:33',24750,'April','2016',1,'April 2016'),
(670,198.864,15,4,5965.91,1193.18,128,'2017-06-19 18:05:40',7159.09,'April','2016',1,'April 2016'),
(671,198.864,15,10,5965.91,2982.95,127,'2017-06-19 18:06:13',8948.86,'April','2016',1,'April 2016'),
(672,215.909,15,0,6477.27,0,129,'2017-06-19 18:06:41',6477.27,'April','2016',1,'April 2016'),
(673,255.682,20,10,10227.3,3835.23,22,'2017-06-19 18:07:20',14062.5,'April','2016',1,'April 2016'),
(674,198.864,5,0,1988.64,0,94,'2017-06-19 18:08:08',1988.64,'April','2016',1,'April 2016'),
(675,215.909,32,0,13818.2,0,131,'2017-06-19 18:08:37',13818.2,'April','2016',1,'April 2016'),
(676,198.864,22,37,8750,11036.9,132,'2017-06-19 18:09:27',19786.9,'April','2016',1,'April 2016'),
(677,198.864,8,0,3181.82,0,99,'2017-06-19 18:12:11',3181.82,'March','2016',1,'March 2016'),
(678,198.864,8,0,3181.82,0,100,'2017-06-19 18:12:48',3181.82,'March','2016',1,'March 2016'),
(679,198.864,8,0,3181.82,0,101,'2017-06-19 18:13:19',3181.82,'March','2016',1,'March 2016'),
(680,198.864,8,0,3181.82,0,102,'2017-06-19 18:13:55',3181.82,'March','2016',1,'March 2016'),
(681,227.273,8,0,3636.36,0,103,'2017-06-19 18:14:54',3636.36,'March','2016',1,'March 2016'),
(682,142.045,8,0,2272.73,0,104,'2017-06-19 18:15:58',2272.73,'March','2016',1,'March 2016'),
(683,142.045,8,0,2272.73,0,151,'2017-06-19 18:16:32',2272.73,'March','2016',1,'March 2016'),
(684,142.045,8,0,2272.73,0,153,'2017-06-19 18:17:26',2272.73,'March','2016',1,'March 2016'),
(685,227.273,8,0,3636.36,0,39,'2017-06-19 18:18:52',3636.36,'March','2016',1,'March 2016'),
(686,164.773,8,0,2636.36,0,152,'2017-06-19 18:19:23',2636.36,'March','2016',1,'March 2016'),
(687,164.773,8,0,2636.36,0,105,'2017-06-19 18:19:53',2636.36,'March','2016',1,'March 2016'),
(688,255.682,16,0,8181.82,0,108,'2017-06-19 18:20:37',8181.82,'March','2016',1,'March 2016'),
(689,204.545,10,0,4090.91,0,115,'2017-06-19 18:21:21',4090.91,'March','2016',1,'March 2016'),
(690,181.818,12,0,4363.64,0,113,'2017-06-19 18:21:57',4363.64,'March','2016',1,'March 2016'),
(691,198.864,11,0,4375,0,114,'2017-06-19 18:22:31',4375,'March','2016',1,'March 2016'),
(692,170.455,0,5,0,1278.41,88,'2017-06-19 18:23:09',1278.41,'March','2016',1,'March 2016'),
(693,198.864,5,3,1988.64,894.886,89,'2017-06-19 18:23:40',2883.52,'March','2016',1,'March 2016'),
(694,198.864,10,10,3977.27,2982.95,90,'2017-06-19 18:24:14',6960.23,'March','2016',1,'March 2016'),
(695,45.4545,0,8,0,545.455,91,'2017-06-19 18:24:55',545.455,'March','2016',1,'March 2016'),
(696,0,0,5,0,0,147,'2017-06-19 18:25:36',0,'March','2016',1,'March 2016'),
(697,198.864,18,25,7159.09,7457.39,121,'2017-06-19 18:26:28',14616.5,'March','2016',1,'March 2016'),
(698,204.545,3,39,1227.27,11965.9,126,'2017-06-19 18:27:00',13193.2,'March','2016',1,'March 2016'),
(699,198.864,5,0,1988.64,0,128,'2017-06-19 18:28:09',1988.64,'March','2016',1,'March 2016'),
(700,198.864,5,0,1988.64,0,127,'2017-06-19 18:29:12',1988.64,'March','2016',1,'March 2016'),
(701,215.909,5,0,2159.09,0,129,'2017-06-19 18:29:49',2159.09,'March','2016',1,'March 2016'),
(702,255.682,5,10,2556.82,3835.23,22,'2017-06-19 18:30:59',6392.05,'March','2016',1,'March 2016'),
(703,247.159,5,0,2471.59,0,123,'2017-06-19 18:31:35',2471.59,'March','2016',1,'March 2016'),
(704,198.864,0,5,0,1491.48,94,'2017-06-19 18:32:01',1491.48,'March','2016',1,'March 2016'),
(705,215.909,0,24,0,7772.73,131,'2017-06-19 18:32:37',7772.73,'March','2016',1,'March 2016'),
(706,198.864,36,11,14318.2,3281.25,132,'2017-06-19 18:33:17',17599.4,'March','2016',1,'March 2016'),
(707,198.864,32,0,12727.3,0,99,'2017-06-19 18:34:57',12727.3,'February','2016',1,'February 2016'),
(708,198.864,32,0,12727.3,0,100,'2017-06-19 18:35:18',12727.3,'February','2016',1,'February 2016'),
(709,198.864,32,0,12727.3,0,101,'2017-06-19 18:35:47',12727.3,'February','2016',1,'February 2016'),
(710,198.864,32,0,12727.3,0,102,'2017-06-19 18:36:11',12727.3,'February','2016',1,'February 2016'),
(711,227.273,32,0,14545.5,0,103,'2017-06-19 18:36:40',14545.5,'February','2016',1,'February 2016'),
(712,142.045,32,0,9090.91,0,104,'2017-06-19 18:37:08',9090.91,'February','2016',1,'February 2016'),
(713,142.045,32,0,9090.91,0,151,'2017-06-19 18:37:34',9090.91,'February','2016',1,'February 2016'),
(714,142.045,32,0,9090.91,0,153,'2017-06-19 18:38:03',9090.91,'February','2016',1,'February 2016'),
(715,227.273,32,0,14545.5,0,39,'2017-06-19 18:38:26',14545.5,'February','2016',1,'February 2016'),
(716,164.773,32,0,10545.5,0,152,'2017-06-19 18:38:48',10545.5,'February','2016',1,'February 2016'),
(717,164.773,32,0,10545.5,0,105,'2017-06-19 18:39:22',10545.5,'February','2016',1,'February 2016'),
(718,204.545,4,21,1636.36,6443.18,115,'2017-06-19 18:40:02',8079.55,'February','2016',1,'February 2016'),
(719,181.818,6,18,2181.82,4909.09,113,'2017-06-19 18:40:36',7090.91,'February','2016',1,'February 2016'),
(720,198.864,12,30,4772.73,8948.86,114,'2017-06-19 18:41:11',13721.6,'February','2016',1,'February 2016'),
(721,170.455,1,0,340.909,0,88,'2017-06-19 18:41:40',340.909,'February','2016',1,'February 2016'),
(722,113.636,10,30,2272.73,5113.64,1,'2017-06-19 18:42:30',7386.36,'January','2016',1,'January 2016'),
(723,198.864,10,30,3977.27,8948.86,90,'2017-06-19 18:44:54',12926.1,'February','2016',1,'February 2016'),
(724,198.864,1,0,397.727,0,118,'2017-06-19 18:45:31',397.727,'February','2016',1,'February 2016'),
(725,0,1,0,0,0,147,'2017-06-19 18:46:14',0,'February','2016',1,'February 2016'),
(726,198.864,12,0,4772.73,0,121,'2017-06-19 18:46:36',4772.73,'February','2016',1,'February 2016'),
(727,204.545,0,16,0,4909.09,126,'2017-06-19 18:47:17',4909.09,'February','2016',1,'February 2016'),
(728,215.909,6,0,2590.91,0,129,'2017-06-19 18:48:07',2590.91,'February','2016',1,'February 2016'),
(729,198.864,5,0,1988.64,0,94,'2017-06-19 18:48:31',1988.64,'February','2016',1,'February 2016'),
(730,215.909,10,50,4318.18,16193.2,131,'2017-06-19 18:48:57',20511.4,'February','2016',1,'February 2016'),
(731,198.864,60,48,23863.6,14318.2,132,'2017-06-19 18:49:37',38181.8,'February','2016',1,'February 2016'),
(732,204.545,12,17,4909.09,5215.91,115,'2017-06-19 18:51:01',10125,'January','2016',1,'January 2016'),
(733,181.818,27,14,9818.18,3818.18,113,'2017-06-19 18:51:30',13636.4,'January','2016',1,'January 2016'),
(734,198.864,5,11,1988.64,3281.25,114,'2017-06-19 18:52:28',5269.89,'January','2016',1,'January 2016'),
(735,164.773,10,5,3295.45,1235.8,148,'2017-06-19 18:53:02',4531.25,'January','2016',1,'January 2016'),
(736,159.091,20,0,6363.64,0,116,'2017-06-19 18:53:34',6363.64,'January','2016',1,'January 2016'),
(737,170.455,10,0,3409.09,0,88,'2017-06-19 18:54:23',3409.09,'January','2016',1,'January 2016'),
(738,45.4545,15,0,1363.64,0,91,'2017-06-19 18:54:45',1363.64,'January','2016',1,'January 2016'),
(739,198.864,37,19,14715.9,5667.61,121,'2017-06-19 18:55:09',20383.5,'January','2016',1,'January 2016'),
(740,204.545,24,32,9818.18,9818.18,126,'2017-06-19 18:56:00',19636.4,'January','2016',1,'January 2016'),
(741,198.864,10,0,3977.27,0,128,'2017-06-19 18:56:36',3977.27,'January','2016',1,'January 2016'),
(742,215.909,15,0,6477.27,0,129,'2017-06-19 18:56:55',6477.27,'January','2016',1,'January 2016'),
(743,255.682,35,20,17897.7,7670.45,22,'2017-06-19 18:58:29',25568.2,'January','2016',1,'January 2016'),
(744,247.159,15,0,7414.77,0,123,'2017-06-19 18:59:09',7414.77,'January','2016',1,'January 2016'),
(745,215.909,16,32,6909.09,10363.6,131,'2017-06-19 18:59:52',17272.7,'January','2016',1,'January 2016'),
(746,198.864,25,20,9943.18,5965.91,132,'2017-06-19 19:00:35',15909.1,'January','2016',1,'January 2016'),
(747,51.1364,5,3,511.364,230.114,34,'2017-06-19 19:15:26',741.477,'March','2016',1,'March 2016'),
(748,51.1364,15,3,1534.09,230.114,34,'2017-06-19 19:18:30',1764.2,'January','2016',1,'January 2016'),
(749,113.636,24,0,5454.55,0,99,'2017-06-25 10:20:05',5454.55,'January','2015',1,'January 2015'),
(750,113.636,24,0,5454.55,0,100,'2017-06-25 10:20:36',5454.55,'January','2015',1,'January 2015'),
(751,113.636,12,12,2727.27,2045.45,108,'2017-06-25 11:19:20',4772.73,'February','2015',1,'February 2015'),
(752,113.636,24,0,5454.55,0,103,'2017-06-25 11:19:52',5454.55,'February','2015',1,'February 2015'),
(753,227.273,4,32,1818.18,10909.1,30,'2017-06-25 11:20:30',12727.3,'February','2015',1,'February 2015'),
(754,142.045,0,65,0,13849.4,34,'2017-06-25 11:21:05',13849.4,'February','2015',1,'February 2015'),
(755,113.636,0,56,0,9545.45,113,'2017-06-25 11:21:40',9545.45,'February','2015',1,'February 2015'),
(756,227.273,0,3,0,1022.73,170,'2017-06-25 11:22:17',1022.73,'February','2015',1,'February 2015'),
(757,113.636,46,28,10454.5,4772.73,90,'2017-06-25 11:22:47',15227.3,'February','2015',1,'February 2015'),
(758,113.636,32,10,7272.73,1704.55,121,'2017-06-25 11:23:56',8977.27,'February','2015',1,'February 2015'),
(759,85.2273,15,0,2556.82,0,111,'2017-06-25 11:24:24',2556.82,'February','2015',1,'February 2015'),
(760,113.636,38,30,8636.36,5113.64,126,'2017-06-25 11:25:10',13750,'February','2015',1,'February 2015'),
(761,136.364,16,0,4363.64,0,154,'2017-06-25 11:25:41',4363.64,'February','2015',1,'February 2015'),
(762,113.636,16,0,3636.36,0,128,'2017-06-25 11:26:23',3636.36,'February','2015',1,'February 2015'),
(763,142.045,59,66,16761.4,14062.5,22,'2017-06-25 11:26:57',30823.9,'February','2015',1,'February 2015'),
(764,113.636,24,56,5454.55,9545.45,131,'2017-06-25 11:27:29',15000,'February','2015',1,'February 2015'),
(765,113.636,95,91,21590.9,15511.4,132,'2017-06-25 11:28:02',37102.3,'February','2015',1,'February 2015'),
(766,198.864,0,42,0,12379.3,95,'2017-06-25 17:15:58',12379.3,'March','2015',1,'March 2015'),
(767,198.864,0,42,0,12379.3,95,'2017-06-25 17:15:59',12379.3,'March','2015',1,'March 2015'),
(768,198.864,0,34,0,10142,97,'2017-06-25 17:16:37',10142,'March','2015',1,'March 2015'),
(769,198.864,46,24,18295.5,7159.09,149,'2017-06-25 17:17:10',25454.5,'March','2015',1,'March 2015'),
(770,113.636,16,8,3636.36,1363.64,99,'2017-06-25 22:41:25',5000,'April','2016',1,'April 2016'),
(771,113.636,16,8,3636.36,1363.64,108,'2017-06-25 22:42:03',5000,'April','2015',1,'April 2015'),
(772,113.636,16,8,3636.36,1363.64,99,'2017-06-25 22:42:34',5000,'April','2015',1,'April 2015'),
(773,113.636,16,8,3636.36,1363.64,100,'2017-06-25 22:43:41',5000,'April','2015',1,'April 2015'),
(774,113.636,16,8,3636.36,1363.64,101,'2017-06-25 22:44:12',5000,'April','2015',1,'April 2015'),
(775,113.636,16,8,3636.36,1363.64,103,'2017-06-25 22:45:05',5000,'April','2015',1,'April 2015'),
(776,227.273,16,8,7272.73,2727.27,30,'2017-06-25 22:45:31',10000,'April','2015',1,'April 2015'),
(777,113.636,16,8,3636.36,1363.64,178,'2017-06-25 22:46:00',5000,'April','2015',1,'April 2015'),
(778,113.636,16,8,3636.36,1363.64,105,'2017-06-25 22:46:24',5000,'April','2015',1,'April 2015'),
(779,113.636,16,8,3636.36,1363.64,39,'2017-06-25 22:46:50',5000,'April','2015',1,'April 2015'),
(780,136.364,16,8,4363.64,1636.36,152,'2017-06-25 22:47:38',6000,'April','2015',1,'April 2015'),
(781,113.636,16,8,3636.36,1363.64,179,'2017-06-25 22:48:04',5000,'April','2015',1,'April 2015'),
(782,142.045,0,8,0,1704.55,34,'2017-06-25 22:49:01',1704.55,'April','2015',1,'April 2015'),
(783,113.636,25,8,5681.82,1363.64,113,'2017-06-25 22:49:33',7045.45,'April','2015',1,'April 2015'),
(784,113.636,25,8,5681.82,1363.64,114,'2017-06-25 22:49:59',7045.45,'April','2015',1,'April 2015'),
(785,142.045,0,24,0,5113.64,101,'2017-06-26 00:04:19',5113.64,'June','2015',1,'June 2015'),
(786,255.682,0,30,0,11505.7,30,'2017-06-26 00:04:52',11505.7,'June','2015',1,'June 2015'),
(787,136.364,0,24,0,4909.09,152,'2017-06-26 00:05:23',4909.09,'June','2015',1,'June 2015'),
(788,181.818,0,1,0,272.727,108,'2017-06-26 00:06:00',272.727,'June','2015',1,'June 2015'),
(789,198.864,0,1,0,298.295,179,'2017-06-26 00:06:25',298.295,'June','2015',1,'June 2015'),
(790,142.045,0,48,0,10227.3,115,'2017-06-26 00:07:09',10227.3,'June','2015',1,'June 2015'),
(791,142.045,0,43,0,9161.93,113,'2017-06-26 00:07:35',9161.93,'June','2015',1,'June 2015'),
(792,153.409,0,33,0,7593.75,114,'2017-06-26 00:08:00',7593.75,'June','2015',1,'June 2015'),
(793,255.682,11,16,5625,6136.36,169,'2017-06-26 00:09:00',11761.4,'June','2015',1,'June 2015'),
(794,107.955,0,8,0,1295.45,116,'2017-06-26 00:09:23',1295.45,'June','2015',1,'June 2015'),
(795,107.955,0,16,0,2590.91,88,'2017-06-26 00:10:01',2590.91,'June','2015',1,'June 2015'),
(796,136.364,0,8,0,1636.36,89,'2017-06-26 00:10:31',1636.36,'June','2015',1,'June 2015'),
(797,142.045,16,16,4545.45,3409.09,90,'2017-06-26 00:10:58',7954.55,'June','2015',1,'June 2015'),
(798,107.955,0,8,0,1295.45,147,'2017-06-26 00:11:28',1295.45,'June','2015',1,'June 2015'),
(799,136.364,60,49,16363.6,10022.7,121,'2017-06-26 00:11:55',26386.4,'June','2015',1,'June 2015'),
(800,136.364,0,32,0,6545.45,126,'2017-06-26 00:12:21',6545.45,'June','2015',1,'June 2015'),
(801,136.364,0,16,0,3272.73,172,'2017-06-26 00:12:48',3272.73,'June','2015',1,'June 2015'),
(802,142.045,0,8,0,1704.55,34,'2017-06-26 00:13:19',1704.55,'June','2016',1,'June 2016'),
(803,113.636,0,8,0,1363.64,1,'2017-06-26 00:13:49',1363.64,'June','2015',1,'June 2015'),
(804,113.636,25,0,5681.82,0,1,'2017-06-26 00:14:14',5681.82,'June','2015',1,'June 2015'),
(805,170.455,16,16,5454.55,4090.91,22,'2017-06-26 00:14:55',9545.45,'June','2015',1,'June 2015'),
(806,136.364,0,8,0,1636.36,123,'2017-06-26 00:15:27',1636.36,'June','2015',1,'June 2015'),
(807,113.636,0,8,0,1363.64,1,'2017-06-26 00:15:57',1363.64,'June','2015',1,'June 2015'),
(808,136.364,0,16,0,3272.73,131,'2017-06-26 00:16:40',3272.73,'June','2015',1,'June 2015'),
(809,136.364,44,63,12000,12886.4,132,'2017-06-26 00:17:08',24886.4,'June','2015',1,'June 2015'),
(810,198.864,47,20,18693.2,5965.91,149,'2017-06-26 00:41:10',24659.1,'May','2015',1,'May 2015'),
(811,198.864,0,88,0,26250,95,'2017-06-26 00:41:43',26250,'May','2015',1,'May 2015'),
(812,198.864,7,32,2784.09,9545.45,97,'2017-06-26 00:42:13',12329.5,'May','2015',1,'May 2015'),
(813,198.864,41,17,16306.8,5071.02,149,'2017-06-26 00:58:40',21377.8,'June','2015',1,'June 2015'),
(814,170.455,0,95,0,24302.6,144,'2017-06-26 00:59:15',24302.6,'June','2015',1,'June 2015'),
(815,198.864,30,0,11931.8,0,97,'2017-06-26 00:59:45',11931.8,'June','2015',1,'June 2015'),
(816,198.864,0,90,0,26846.6,95,'2017-06-26 01:07:49',26846.6,'June','2015',1,'June 2015'),
(817,198.864,48,18,19210.2,5369.32,149,'2017-06-26 01:11:43',24579.5,'July','2015',1,'July 2015'),
(818,198.864,0,94,0,28138.2,95,'2017-06-26 01:12:20',28138.2,'July','2015',1,'July 2015'),
(819,198.864,0,29,0,8650.57,97,'2017-06-26 01:12:47',8650.57,'July','2015',1,'July 2015'),
(820,136.364,16,0,4363.64,0,99,'2017-06-26 05:02:24',4363.64,'July','2015',1,'July 2015'),
(821,136.364,16,0,4363.64,0,100,'2017-06-26 05:03:08',4363.64,'July','2015',1,'July 2015'),
(822,142.045,16,0,4545.45,0,101,'2017-06-26 05:03:59',4545.45,'July','2015',1,'July 2015'),
(823,136.364,16,0,4363.64,0,102,'2017-06-26 05:04:33',4363.64,'July','2015',1,'July 2015'),
(824,136.364,16,16,4363.64,3272.73,103,'2017-06-26 05:05:08',7636.36,'July','2015',1,'July 2015'),
(825,255.682,16,22,8181.82,8437.5,30,'2017-06-26 05:05:38',16619.3,'July','2015',1,'July 2015'),
(826,85.2273,16,0,2727.27,0,183,'2017-06-26 05:08:51',2727.27,'July','2015',1,'July 2015'),
(827,136.364,16,0,4363.64,0,178,'2017-06-26 05:10:24',4363.64,'July','2015',1,'July 2015'),
(828,136.364,16,0,4363.64,0,152,'2017-06-26 05:14:00',4363.64,'July','2015',1,'July 2015'),
(829,113.636,16,0,3636.36,0,153,'2017-06-26 05:14:32',3636.36,'July','2015',1,'July 2015'),
(830,136.364,16,0,4363.64,0,105,'2017-06-26 05:15:15',4363.64,'July','2015',1,'July 2015'),
(831,136.364,16,0,4363.64,0,39,'2017-06-26 05:16:28',4363.64,'July','2015',1,'July 2015'),
(832,142.045,22,21,6250,4474.43,115,'2017-06-26 05:17:08',10724.4,'July','2015',1,'July 2015'),
(833,142.045,20,29,5681.82,6178.98,113,'2017-06-26 05:17:38',11860.8,'July','2015',1,'July 2015'),
(834,153.409,13,17,3988.64,3911.93,114,'2017-06-26 05:18:41',7900.57,'July','2015',1,'July 2015'),
(835,153.409,13,17,3988.64,3911.93,114,'2017-06-26 05:18:41',7900.57,'July','2015',1,'July 2015'),
(836,255.682,15,25,7670.45,9588.07,169,'2017-06-26 05:26:46',17258.5,'July','2015',1,'July 2015'),
(837,107.955,16,0,3454.55,0,171,'2017-06-26 05:27:13',3454.55,'July','2015',1,'July 2015'),
(838,107.955,16,24,3454.55,3886.36,116,'2017-06-26 05:27:42',7340.91,'July','2015',1,'July 2015'),
(839,107.955,16,16,3454.55,2590.91,88,'2017-06-26 05:28:13',6045.45,'July','2015',1,'July 2015'),
(840,136.364,16,0,4363.64,0,89,'2017-06-26 05:29:03',4363.64,'July','2015',1,'July 2015'),
(841,142.045,22,33,6250,7031.25,90,'2017-06-26 05:29:28',13281.2,'July','2015',1,'July 2015'),
(842,136.364,16,8,4363.64,1636.36,91,'2017-06-26 05:30:20',6000,'July','2015',1,'July 2015'),
(843,136.364,8,0,2181.82,0,118,'2017-06-26 05:55:39',2181.82,'July','2015',1,'July 2015'),
(844,107.955,16,0,3454.55,0,147,'2017-06-26 05:56:15',3454.55,'July','2015',1,'July 2015'),
(845,136.364,16,0,4363.64,0,119,'2017-06-26 05:56:44',4363.64,'July','2015',1,'July 2015'),
(846,136.364,11,22,3000,4500,121,'2017-06-26 05:57:09',7500,'July','2015',1,'July 2015'),
(847,136.364,8,8,2181.82,1636.36,122,'2017-06-26 05:57:41',3818.18,'July','2015',1,'July 2015'),
(848,136.364,8,32,2181.82,6545.45,126,'2017-06-26 05:58:13',8727.27,'July','2015',1,'July 2015'),
(849,136.364,14,0,3818.18,0,172,'2017-06-26 05:58:39',3818.18,'July','2015',1,'July 2015'),
(850,136.364,16,8,4363.64,1636.36,128,'2017-06-26 05:59:09',6000,'July','2015',1,'July 2015'),
(851,136.364,14,0,3818.18,0,127,'2017-06-26 05:59:40',3818.18,'July','2015',1,'July 2015'),
(852,142.045,16,8,4545.45,1704.55,34,'2017-06-26 06:00:11',6250,'July','2015',1,'July 2015'),
(853,170.455,16,16,5454.55,4090.91,22,'2017-06-26 06:01:04',9545.45,'July','2015',1,'July 2015'),
(854,136.364,16,8,4363.64,1636.36,123,'2017-06-26 06:01:40',6000,'July','2015',1,'July 2015'),
(855,107.955,16,0,3454.55,0,94,'2017-06-26 06:02:06',3454.55,'July','2015',1,'July 2015'),
(856,136.364,8,32,2181.82,6545.45,131,'2017-06-26 06:02:39',8727.27,'July','2015',1,'July 2015'),
(857,136.364,33,14,9000,2863.64,132,'2017-06-26 06:03:08',11863.6,'July','2015',1,'July 2015'),
(858,198.864,57,23,22730.1,6860.8,149,'2017-06-26 10:27:32',29590.9,'August','2015',1,'August 2015'),
(859,198.864,57,23,22730.1,6860.8,149,'2017-06-26 10:27:32',29590.9,'August','2015',1,'August 2015'),
(860,198.864,0,39,0,11633.5,95,'2017-06-26 10:27:59',11633.5,'August','2015',1,'August 2015'),
(861,198.864,0,39,0,11633.5,95,'2017-06-26 10:27:59',11633.5,'August','2015',1,'August 2015'),
(862,170.455,0,14,0,3541.19,96,'2017-06-26 10:28:35',3541.19,'August','2015',1,'August 2015'),
(863,170.455,0,14,0,3541.19,96,'2017-06-26 10:28:35',3541.19,'August','2015',1,'August 2015'),
(864,198.864,0,26,0,7755.68,97,'2017-06-26 10:29:06',7755.68,'August','2015',1,'August 2015'),
(865,232.955,0,6,0,2096.59,92,'2017-06-26 10:40:29',2096.59,'August','2015',1,'August 2015'),
(866,142.045,20,0,5681.82,0,115,'2017-06-26 10:41:00',5681.82,'August','2015',1,'August 2015'),
(867,142.045,22,0,6250,0,113,'2017-06-26 10:41:31',6250,'August','2015',1,'August 2015'),
(868,153.409,19,0,5829.55,0,114,'2017-06-26 10:41:56',5829.55,'August','2015',1,'August 2015'),
(869,255.682,10,38,5113.64,14573.9,169,'2017-06-26 10:42:36',19687.5,'August','2015',1,'August 2015'),
(870,107.955,0,8,0,1295.45,116,'2017-06-26 10:43:01',1295.45,'August','2015',1,'August 2015'),
(871,136.364,0,8,0,1636.36,89,'2017-06-26 10:43:22',1636.36,'August','2015',1,'August 2015'),
(872,142.045,16,16,4545.45,3409.09,90,'2017-06-26 10:43:51',7954.55,'August','2015',1,'August 2015'),
(873,136.364,0,4,0,818.182,91,'2017-06-26 10:44:16',818.182,'August','2015',1,'August 2015'),
(874,107.955,0,8,0,1295.45,147,'2017-06-26 10:44:40',1295.45,'August','2015',1,'August 2015'),
(875,136.364,24,9,6545.45,1840.91,121,'2017-06-26 10:45:05',8386.36,'August','2015',1,'August 2015'),
(876,136.364,8,32,2181.82,6545.45,126,'2017-06-26 10:45:33',8727.27,'August','2015',1,'August 2015'),
(877,136.364,5,8,1363.64,1636.36,172,'2017-06-26 10:46:00',3000,'August','2015',1,'August 2015'),
(878,136.364,8,16,2181.82,3272.73,128,'2017-06-26 10:46:24',5454.55,'August','2015',1,'August 2015'),
(879,136.364,8,16,2181.82,3272.73,128,'2017-06-26 10:46:25',5454.55,'August','2015',1,'August 2015'),
(880,136.364,0,16,0,3272.73,127,'2017-06-26 10:46:51',3272.73,'August','2015',1,'August 2015'),
(881,142.045,8,80,2272.73,17045.5,34,'2017-06-26 10:47:38',19318.2,'August','2016',1,'August 2016'),
(882,170.455,16,16,5454.55,4090.91,22,'2017-06-26 10:48:03',9545.45,'August','2015',1,'August 2015'),
(883,107.955,0,12,0,1943.18,94,'2017-06-26 10:48:32',1943.18,'August','2015',1,'August 2015'),
(884,136.364,8,32,2181.82,6545.45,131,'2017-06-26 10:49:05',8727.27,'August','2015',1,'August 2015'),
(885,136.364,56,20,15272.7,4090.91,132,'2017-06-26 10:49:34',19363.6,'August','2015',1,'August 2015'),
(886,136.364,0,2,0,409.091,99,'2017-06-26 12:52:58',409.091,'September','2015',1,'September 2015'),
(887,136.364,0,2,0,409.091,100,'2017-06-26 12:53:22',409.091,'September','2015',1,'September 2015'),
(888,142.045,0,2,0,426.136,101,'2017-06-26 12:53:55',426.136,'September','2015',1,'September 2015'),
(889,136.364,0,16,0,3272.73,102,'2017-06-26 12:54:23',3272.73,'September','2015',1,'September 2015'),
(890,255.682,0,24,0,9204.55,30,'2017-06-26 12:54:51',9204.55,'September','2015',1,'September 2015'),
(891,136.364,0,2,0,409.091,152,'2017-06-26 12:55:18',409.091,'September','2015',1,'September 2015'),
(892,142.045,0,44,0,9375,115,'2017-06-26 12:55:44',9375,'September','2015',1,'September 2015'),
(893,142.045,0,32,0,6818.18,113,'2017-06-26 12:56:10',6818.18,'September','2015',1,'September 2015'),
(894,153.409,0,36,0,8284.09,114,'2017-06-26 12:56:58',8284.09,'September','2015',1,'September 2015'),
(895,255.682,0,44,0,16875,169,'2017-06-26 12:57:31',16875,'September','2015',1,'September 2015'),
(896,107.955,0,8,0,1295.45,171,'2017-06-26 12:58:06',1295.45,'September','2015',1,'September 2015'),
(897,107.955,0,8,0,1295.45,116,'2017-06-26 12:58:34',1295.45,'September','2015',1,'September 2015'),
(898,136.364,0,8,0,1636.36,89,'2017-06-26 12:59:00',1636.36,'September','2015',1,'September 2015'),
(899,136.364,0,8,0,1636.36,91,'2017-06-26 12:59:25',1636.36,'September','2015',1,'September 2015'),
(900,136.364,0,7,0,1431.82,121,'2017-06-26 12:59:48',1431.82,'September','2015',1,'September 2015'),
(901,136.364,0,32,0,6545.45,126,'2017-06-26 13:00:28',6545.45,'September','2015',1,'September 2015'),
(902,136.364,0,4,0,818.182,172,'2017-06-26 13:01:18',818.182,'September','2015',1,'September 2015'),
(903,136.364,0,18,0,3681.82,128,'2017-06-26 13:01:54',3681.82,'September','2015',1,'September 2015'),
(904,85.2273,0,8,0,1022.73,129,'2017-06-26 13:02:22',1022.73,'September','2015',1,'September 2015'),
(905,142.045,8,0,2272.73,0,34,'2017-06-26 13:02:48',2272.73,'September','2015',1,'September 2015'),
(906,170.455,0,32,0,8181.82,22,'2017-06-26 13:03:08',8181.82,'September','2015',1,'September 2015'),
(907,136.364,0,32,0,6545.45,131,'2017-06-26 13:03:34',6545.45,'September','2015',1,'September 2015'),
(908,136.364,0,70,0,14318.2,132,'2017-06-26 13:04:03',14318.2,'September','2015',1,'September 2015'),
(909,198.864,0,17,0,4921.88,149,'2017-06-26 13:32:57',4921.88,'September','2015',1,'September 2015'),
(910,198.864,0,39,0,11633.5,95,'2017-06-26 13:33:25',11633.5,'September','2015',1,'September 2015'),
(911,170.455,0,33,0,8355.68,96,'2017-06-26 13:33:54',8355.68,'September','2015',1,'September 2015'),
(912,198.864,0,47,0,14019.9,97,'2017-06-26 13:34:27',14019.9,'September','2015',1,'September 2015'),
(913,198.864,0,30,0,8948.86,149,'2017-06-26 13:42:34',8948.86,'September','2015',1,'September 2015'),
(914,198.864,0,30,0,8948.86,149,'2017-06-26 13:45:56',8948.86,'October','2015',1,'October 2015'),
(915,198.864,0,39,0,11633.5,95,'2017-06-26 13:46:29',11633.5,'October','2015',1,'October 2015'),
(916,170.455,0,36,0,9322.16,96,'2017-06-26 13:47:03',9322.16,'October','2015',1,'October 2015'),
(917,198.864,0,31,0,9247.16,97,'2017-06-26 13:48:35',9247.16,'October','2015',1,'October 2015'),
(918,255.682,8,40,4090.91,15340.9,30,'2017-06-26 13:55:01',19431.8,'October','2015',1,'October 2015'),
(919,85.2273,8,0,1363.64,0,151,'2017-06-26 13:55:46',1363.64,'October','2015',1,'October 2015'),
(920,136.364,0,24,0,4909.09,39,'2017-06-26 13:56:20',4909.09,'October','2015',1,'October 2015'),
(921,232.955,0,9,0,3144.89,92,'2017-06-26 13:57:00',3144.89,'October','2015',1,'October 2015'),
(922,142.045,0,34,0,7244.32,115,'2017-06-26 13:57:37',7244.32,'October','2015',1,'October 2015'),
(923,142.045,0,30,0,6392.05,113,'2017-06-26 13:58:07',6392.05,'October','2015',1,'October 2015'),
(924,153.409,0,30,0,6903.41,114,'2017-06-26 13:58:32',6903.41,'October','2015',1,'October 2015'),
(925,255.682,0,28,0,10738.6,169,'2017-06-26 13:59:07',10738.6,'October','2015',1,'October 2015'),
(926,107.955,8,0,1727.27,0,116,'2017-06-26 13:59:34',1727.27,'October','2015',1,'October 2015'),
(927,107.955,8,8,1727.27,1295.45,88,'2017-06-26 14:00:06',3022.73,'October','2015',1,'October 2015'),
(928,142.045,56,50,15909.1,10653.4,90,'2017-06-26 14:00:34',26562.5,'October','2015',1,'October 2015'),
(929,136.364,8,0,2181.82,0,91,'2017-06-26 14:01:12',2181.82,'October','2015',1,'October 2015'),
(930,136.364,8,0,2181.82,0,118,'2017-06-26 14:01:35',2181.82,'October','2015',1,'October 2015'),
(931,107.955,8,0,1727.27,0,147,'2017-06-26 14:02:09',1727.27,'October','2015',1,'October 2015'),
(932,136.364,96,7,26181.8,1431.82,121,'2017-06-26 14:02:51',27613.6,'October','2015',1,'October 2015'),
(933,136.364,8,0,2181.82,0,122,'2017-06-26 14:03:38',2181.82,'October','2015',1,'October 2015'),
(934,136.364,8,32,2181.82,6545.45,126,'2017-06-26 14:04:06',8727.27,'October','2015',1,'October 2015'),
(935,136.364,8,4,2181.82,818.182,172,'2017-06-26 14:04:47',3000,'October','2015',1,'October 2015'),
(936,136.364,18,0,4909.09,0,128,'2017-06-26 14:05:22',4909.09,'October','2015',1,'October 2015'),
(937,85.2273,8,0,1363.64,0,129,'2017-06-26 14:05:52',1363.64,'October','2015',1,'October 2015'),
(938,142.045,16,0,4545.45,0,34,'2017-06-26 14:06:23',4545.45,'October','2015',1,'October 2015'),
(939,170.455,56,24,19090.9,6136.36,22,'2017-06-26 14:06:57',25227.3,'October','2015',1,'October 2015'),
(940,136.364,8,0,2181.82,0,123,'2017-06-26 14:07:22',2181.82,'October','2015',1,'October 2015'),
(941,107.955,0,16,0,2590.91,94,'2017-06-26 14:07:49',2590.91,'October','2015',1,'October 2015'),
(942,136.364,8,32,2181.82,6545.45,131,'2017-06-26 14:08:42',8727.27,'October','2015',1,'October 2015'),
(943,136.364,70,56,19090.9,11454.5,132,'2017-06-26 14:09:21',30545.5,'October','2015',1,'October 2015'),
(944,198.864,0,30,0,8948.86,149,'2017-06-26 14:37:05',8948.86,'November','2015',1,'November 2015'),
(945,198.864,0,40,0,11782.7,95,'2017-06-26 14:37:48',11782.7,'November','2015',1,'November 2015'),
(946,170.455,0,36,0,9322.16,96,'2017-06-26 14:39:05',9322.16,'November','2015',1,'November 2015'),
(947,198.864,0,37,0,11036.9,97,'2017-06-26 14:39:31',11036.9,'November','2015',1,'November 2015'),
(948,85.2273,8,0,1363.64,0,151,'2017-06-26 15:01:56',1363.64,'November','2015',1,'November 2015'),
(949,136.364,24,0,6545.45,0,39,'2017-06-26 15:02:38',6545.45,'November','2015',1,'November 2015'),
(950,232.955,0,9,0,3144.89,92,'2017-06-26 15:03:09',3144.89,'November','2015',1,'November 2015'),
(951,142.045,8,34,2272.73,7244.32,115,'2017-06-26 15:03:47',9517.05,'November','2015',1,'November 2015'),
(952,142.045,8,30,2272.73,6392.05,113,'2017-06-26 15:04:12',8664.77,'November','2015',1,'November 2015'),
(953,153.409,8,30,2454.55,6903.41,114,'2017-06-26 15:04:45',9357.95,'November','2015',1,'November 2015'),
(954,107.955,0,8,0,1295.45,116,'2017-06-26 15:05:20',1295.45,'November','2015',1,'November 2015'),
(955,107.955,0,24,0,3886.36,88,'2017-06-26 15:05:50',3886.36,'November','2015',1,'November 2015'),
(956,142.045,16,16,4545.45,3409.09,90,'2017-06-26 15:06:19',7954.55,'November','2015',1,'November 2015'),
(957,136.364,12,29,3272.73,5931.82,121,'2017-06-26 15:06:53',9204.55,'November','2015',1,'November 2015'),
(958,136.364,0,34,0,6954.55,126,'2017-06-26 15:07:18',6954.55,'November','2015',1,'November 2015'),
(959,136.364,0,13,0,2659.09,172,'2017-06-26 15:07:47',2659.09,'November','2015',1,'November 2015'),
(960,136.364,0,16,0,3272.73,128,'2017-06-26 15:08:14',3272.73,'November','2015',1,'November 2015'),
(961,136.364,0,8,0,1636.36,127,'2017-06-26 15:08:41',1636.36,'November','2015',1,'November 2015'),
(962,85.2273,0,16,0,2045.45,129,'2017-06-26 15:09:12',2045.45,'November','2015',1,'November 2015'),
(963,142.045,0,16,0,3409.09,34,'2017-06-26 15:09:46',3409.09,'November','2015',1,'November 2015'),
(964,170.455,16,16,5454.55,4090.91,22,'2017-06-26 15:10:22',9545.45,'November','2015',1,'November 2015'),
(965,107.955,0,16,0,2590.91,94,'2017-06-26 15:10:52',2590.91,'November','2015',1,'November 2015'),
(966,136.364,0,32,0,6545.45,131,'2017-06-26 15:11:21',6545.45,'November','2015',1,'November 2015'),
(967,136.364,66,69,18000,14113.6,132,'2017-06-26 15:11:52',32113.6,'November','2015',1,'November 2015'),
(968,142.045,15,25,4261.36,5326.7,115,'2017-06-26 15:42:49',9588.07,'December','2015',1,'December 2015'),
(969,142.045,12,30,3409.09,6392.05,113,'2017-06-26 15:43:24',9801.14,'December','2015',1,'December 2015'),
(970,153.409,15,30,4602.27,6903.41,114,'2017-06-26 15:43:56',11505.7,'December','2015',1,'December 2015'),
(971,142.045,13,13,3693.18,2769.89,90,'2017-06-26 15:50:11',6463.07,'December','2015',1,'December 2015'),
(972,136.364,13,26,3545.45,5318.18,121,'2017-06-26 15:50:44',8863.64,'December','2015',1,'December 2015'),
(973,136.364,5,32,1363.64,6545.45,126,'2017-06-26 15:51:19',7909.09,'December','2015',1,'December 2015'),
(974,170.455,13,15,4431.82,3835.23,22,'2017-06-26 15:51:48',8267.05,'December','2015',1,'December 2015'),
(975,136.364,5,32,1363.64,6545.45,131,'2017-06-26 15:52:23',7909.09,'December','2015',1,'December 2015'),
(976,136.364,5,32,1363.64,6545.45,132,'2017-06-26 15:52:50',7909.09,'December','2015',1,'December 2015'),
(977,198.864,0,33,0,9933.24,149,'2017-06-26 16:26:02',9933.24,'December','2015',1,'December 2015'),
(978,198.864,0,33,0,9843.75,95,'2017-06-26 16:26:38',9843.75,'December','2015',1,'December 2015'),
(979,170.455,0,16,0,4211.08,96,'2017-06-26 16:27:07',4211.08,'December','2015',1,'December 2015'),
(980,198.864,0,37,0,11036.9,97,'2017-06-26 16:28:32',11036.9,'December','2015',1,'December 2015'),
(981,198.864,34,0,13681.8,0,95,'2017-06-26 17:55:49',13681.8,'February','2016',1,'February 2016'),
(982,170.455,22,0,7602.27,0,96,'2017-06-26 17:56:12',7602.27,'February','2016',1,'February 2016'),
(983,198.864,26,37,10340.9,11036.9,97,'2017-06-26 17:56:37',21377.8,'February','2016',1,'February 2016'),
(984,198.864,0,16,0,4772.73,97,'2017-06-26 18:18:07',4772.73,'March','2016',1,'March 2016'),
(985,170.455,37,0,12613.6,0,96,'2017-06-26 18:18:29',12613.6,'March','2016',1,'March 2016'),
(986,198.864,36,0,14318.2,0,95,'2017-06-26 18:18:55',14318.2,'March','2016',1,'March 2016'),
(987,198.864,10,0,4156.25,0,149,'2017-06-27 05:46:31',4156.25,'April','2016',1,'April 2016'),
(988,198.864,27,0,10738.6,0,95,'2017-06-27 05:46:55',10738.6,'April','2016',1,'April 2016'),
(989,170.455,28,0,9620.45,0,96,'2017-06-27 05:47:19',9620.45,'April','2016',1,'April 2016'),
(990,198.864,27,0,10738.6,0,97,'2017-06-27 05:47:46',10738.6,'April','2016',1,'April 2016'),
(991,198.864,0,26,0,7755.68,97,'2017-06-27 05:56:56',7755.68,'May','2016',1,'May 2016'),
(992,198.864,0,36,0,10589.5,149,'2017-06-27 07:46:20',10589.5,'June','2016',1,'June 2016'),
(993,198.864,0,13,0,3877.84,97,'2017-06-27 07:46:41',3877.84,'June','2016',1,'June 2016'),
(994,170.455,0,34,0,8769.89,96,'2017-06-27 07:47:04',8769.89,'June','2016',1,'June 2016'),
(995,113.636,0,36,0,6051.14,1,'2017-06-27 07:47:42',6051.14,'June','2016',1,'June 2016'),
(996,198.864,0,20,0,6085.23,95,'2017-06-27 15:00:24',6085.23,'January','2016',1,'January 2016'),
(997,224.432,8,0,3590.91,0,99,'2017-06-29 03:38:26',3590.91,'June','2017',1,'June 2017'),
(998,130.682,8,0,2090.91,0,83,'2017-06-29 03:39:19',2090.91,'June','2017',1,'June 2017'),
(999,130.682,8,0,2090.91,0,84,'2017-06-29 03:40:10',2090.91,'June','2017',1,'June 2017'),
(1000,232.955,8,40,3727.27,13977.3,100,'2017-06-29 03:43:22',17704.5,'June','2017',1,'June 2017'),
(1001,250,8,32,4000,12000,102,'2017-06-29 03:44:45',16000,'June','2017',1,'June 2017'),
(1002,241.477,8,16,3863.64,5795.45,101,'2017-06-29 03:45:20',9659.09,'June','2017',1,'June 2017'),
(1003,261.364,8,96,4181.82,37636.4,103,'2017-06-29 03:45:47',41818.2,'June','2017',1,'June 2017'),
(1004,159.091,8,0,2545.45,0,104,'2017-06-29 03:46:14',2545.45,'June','2017',1,'June 2017'),
(1005,159.091,8,0,2545.45,0,80,'2017-06-29 03:46:47',2545.45,'June','2017',1,'June 2017'),
(1006,130.682,8,32,2090.91,6272.73,79,'2017-06-29 03:47:26',8363.64,'June','2017',1,'June 2017'),
(1007,272.727,8,0,4363.64,0,39,'2017-06-29 03:47:51',4363.64,'June','2017',1,'June 2017'),
(1008,187.5,8,0,3000,0,105,'2017-06-29 03:48:43',3000,'June','2017',1,'June 2017'),
(1009,130.682,8,0,2090.91,0,106,'2017-06-29 03:50:41',2090.91,'June','2017',1,'June 2017'),
(1010,303.977,0,20,0,9119.32,92,'2017-06-29 03:51:10',9119.32,'June','2017',1,'June 2017'),
(1011,190.341,0,30,0,8565.34,113,'2017-06-29 05:46:54',8565.34,'June','2017',1,'June 2017'),
(1012,238.636,0,21,0,7517.05,114,'2017-06-29 05:47:41',7517.05,'June','2017',1,'June 2017'),
(1013,250,0,28,0,10500,115,'2017-06-29 05:48:08',10500,'June','2017',1,'June 2017'),
(1014,187.5,0,21,0,5906.25,117,'2017-06-29 05:48:58',5906.25,'June','2017',1,'June 2017'),
(1015,187.5,11,2,4125,562.5,88,'2017-06-29 05:49:34',4687.5,'June','2017',1,'June 2017'),
(1016,241.477,0,16,0,5795.45,89,'2017-06-29 05:50:02',5795.45,'June','2017',1,'June 2017'),
(1017,113.636,16,16,3636.36,2727.27,1,'2017-06-29 05:50:51',6363.64,'June','2017',1,'June 2017'),
(1018,187.5,8,26,3000,7312.5,87,'2017-06-29 05:54:49',10312.5,'June','2017',1,'June 2017'),
(1019,241.477,0,16,0,5795.45,118,'2017-06-29 05:57:28',5795.45,'June','2017',1,'June 2017'),
(1020,187.5,0,27,0,7593.75,120,'2017-06-29 05:58:01',7593.75,'June','2017',1,'June 2017'),
(1021,232.955,24,36,11181.8,12579.5,121,'2017-06-29 05:58:36',23761.4,'June','2017',1,'June 2017'),
(1022,218.75,0,24,0,7875,122,'2017-06-29 05:59:03',7875,'June','2017',1,'June 2017'),
(1023,247.159,24,52,11863.6,19278.4,126,'2017-06-29 05:59:31',31142,'June','2017',1,'June 2017'),
(1024,224.432,0,10,0,3366.48,127,'2017-06-29 05:59:55',3366.48,'June','2017',1,'June 2017'),
(1025,301.136,16,16,9636.36,7227.27,22,'2017-06-29 06:04:03',16863.6,'June','2017',1,'June 2017'),
(1026,250,48,12,24000,4500,129,'2017-06-29 06:01:09',28500,'June','2017',1,'June 2017'),
(1027,170.455,0,14,0,3579.55,130,'2017-06-29 06:01:46',3579.55,'June','2017',1,'June 2017'),
(1028,224.432,2,26,897.727,8752.84,128,'2017-06-29 06:05:03',9650.57,'June','2017',1,'June 2017'),
(1029,224.432,10,0,4488.64,0,94,'2017-06-29 06:05:33',4488.64,'June','2017',1,'June 2017'),
(1030,258.523,0,16,0,6204.55,131,'2017-06-29 06:06:11',6204.55,'June','2017',1,'June 2017'),
(1031,232.955,32,50,14909.1,17471.6,132,'2017-06-29 06:06:39',32380.7,'June','2017',1,'June 2017'),
(1032,198.864,0,25,0,7457.39,95,'2017-07-02 11:22:21',7457.39,'June','2017',1,'June 2017'),
(1033,198.864,11,0,4375,0,97,'2017-07-01 17:52:02',4375,'June','2017',1,'June 2017'),
(1034,198.864,0,12,0,3579.55,133,'2017-07-02 02:36:06',3579.55,'January','2016',1,'January 2016'),
(1035,198.864,0,12,0,3579.55,133,'2017-07-02 02:40:36',3579.55,'January','2016',1,'January 2016'),
(1036,198.864,0,12,0,3579.55,133,'2017-07-02 02:41:42',3579.55,'June','2017',1,'June 2017'),
(1037,170.455,0,25,0,6392.05,96,'2017-07-02 11:19:13',6392.05,'June','2017',1,'June 2017'),
(1038,130.682,8,32,2090.91,6272.73,194,'2017-07-04 12:23:20',8363.64,'June','2017',1,'June 2017'),
(1039,198.864,0,25,0,7457.39,74,'2017-07-22 02:12:29',7457.39,'July','2017',1,'July 2017'),
(1040,198.864,0,18,0,5369.32,95,'2017-07-22 02:12:59',5369.32,'July','2017',1,'July 2017'),
(1041,170.455,0,25,0,6392.05,96,'2017-07-22 02:13:25',6392.05,'July','2017',1,'July 2017'),
(1042,198.864,0,19,0,5667.61,97,'2017-07-22 02:13:55',5667.61,'July','2017',1,'July 2017'),
(1043,224.432,8,0,3590.91,0,99,'2017-07-22 02:20:32',3590.91,'July','2017',1,'July 2017'),
(1044,142.045,49,8,13920.5,1704.55,83,'2017-07-22 02:35:37',15625,'January','2016',1,'January 2016'),
(1045,142.045,8,49,2272.73,10440.3,83,'2017-07-22 02:41:06',12713.1,'July','2017',1,'July 2017'),
(1046,142.045,8,32,2272.73,6818.18,84,'2017-07-22 02:41:34',9090.91,'July','2017',1,'July 2017'),
(1047,232.955,8,96,3727.27,33545.5,100,'2017-07-22 02:42:17',37272.7,'July','2017',1,'July 2017'),
(1048,241.477,8,0,3863.64,0,101,'2017-07-22 02:43:17',3863.64,'July','2017',1,'July 2017'),
(1049,250,8,64,4000,24000,102,'2017-07-22 02:44:07',28000,'July','2017',1,'July 2017'),
(1050,261.364,8,95,4181.82,37244.3,103,'2017-07-22 02:46:42',41426.1,'July','2017',1,'July 2017'),
(1051,159.091,8,0,2545.45,0,104,'2017-07-22 02:47:19',2545.45,'July','2017',1,'July 2017'),
(1052,159.091,8,16,2545.45,3818.18,80,'2017-07-22 02:48:30',6363.64,'July','2017',1,'July 2017'),
(1053,142.045,8,80,2272.73,17045.5,194,'2017-07-22 02:49:16',19318.2,'July','2017',1,'July 2017'),
(1054,272.727,8,0,4363.64,0,39,'2017-07-22 02:50:00',4363.64,'July','2017',1,'July 2017'),
(1055,187.5,8,16,3000,4500,105,'2017-07-22 02:50:37',7500,'July','2017',1,'July 2017'),
(1056,142.045,8,0,2272.73,0,106,'2017-07-22 02:51:10',2272.73,'July','2017',1,'July 2017'),
(1057,190.341,0,25,0,7137.78,113,'2017-07-22 02:51:40',7137.78,'July','2017',1,'July 2017'),
(1058,238.636,0,31,0,11096.6,114,'2017-07-22 02:52:06',11096.6,'July','2017',1,'July 2017'),
(1059,250,0,21,0,7875,115,'2017-07-22 02:52:34',7875,'July','2017',1,'July 2017'),
(1060,187.5,32,24,12000,6750,117,'2017-07-22 02:58:30',18750,'July','2017',1,'July 2017'),
(1061,187.5,16,18,6000,5062.5,88,'2017-07-22 02:59:24',11062.5,'July','2017',1,'July 2017'),
(1062,241.477,4,32,1931.82,11590.9,89,'2017-07-22 03:00:57',13522.7,'July','2017',1,'July 2017'),
(1063,241.477,16,22,7727.27,7968.75,90,'2017-07-22 03:01:32',15696,'July','2017',1,'July 2017'),
(1064,187.5,16,16,6000,4500,87,'2017-07-22 03:02:05',10500,'July','2017',1,'July 2017'),
(1065,241.477,16,0,7727.27,0,118,'2017-07-22 03:03:00',7727.27,'July','2017',1,'July 2017'),
(1066,241.477,16,0,7727.27,0,119,'2017-07-22 03:03:30',7727.27,'July','2017',1,'July 2017'),
(1067,170.455,16,0,5454.55,0,185,'2017-07-22 03:04:00',5454.55,'July','2017',1,'July 2017'),
(1068,232.955,48,24,22363.6,8386.36,121,'2017-07-22 03:06:23',30750,'July','2017',1,'July 2017'),
(1069,170.455,8,0,2727.27,0,187,'2017-07-22 03:05:29',2727.27,'July','2017',1,'July 2017'),
(1070,218.75,17,0,7437.5,0,122,'2017-07-22 03:07:47',7437.5,'July','2017',1,'July 2017'),
(1071,247.159,16,12,7909.09,4448.86,126,'2017-07-22 03:09:41',12358,'July','2017',1,'July 2017'),
(1072,224.432,8,0,3590.91,0,127,'2017-07-22 03:10:52',3590.91,'July','2017',1,'July 2017'),
(1073,224.432,18,10,8079.55,3366.48,128,'2017-07-22 03:11:25',11446,'July','2017',1,'July 2017'),
(1074,250,60,43,30000,16125,129,'2017-07-22 03:11:56',46125,'July','2017',1,'July 2017'),
(1075,170.455,16,0,5454.55,0,130,'2017-07-22 03:21:48',5454.55,'July','2017',1,'July 2017'),
(1076,170.455,16,8,5454.55,2045.45,186,'2017-07-22 03:22:23',7500,'July','2017',1,'July 2017'),
(1077,301.136,24,16,14454.5,7227.27,22,'2017-07-22 03:23:00',21681.8,'July','2017',1,'July 2017'),
(1078,224.432,26,0,11670.5,0,94,'2017-07-22 03:26:21',11670.5,'July','2017',1,'July 2017'),
(1079,258.523,8,37,4136.36,14348,131,'2017-07-22 03:26:58',18484.4,'July','2017',1,'July 2017'),
(1080,170.455,16,8,5454.55,2045.45,193,'2017-07-22 03:27:40',7500,'July','2017',1,'July 2017'),
(1081,232.955,24,50,11181.8,17471.6,205,'2017-07-29 07:30:21',28653.4,'July','2017',1,'July 2017'),
(1082,378.409,22,0,16650,0,156,'2017-07-22 03:47:16',16650,'July','2017',1,'July 2017'),
(1083,290.909,22,0,12800,0,157,'2017-07-22 03:47:42',12800,'July','2017',1,'July 2017'),
(1084,290.909,18,0,10472.7,0,158,'2017-07-22 03:48:11',10472.7,'July','2017',1,'July 2017'),
(1085,290.909,9,0,5236.36,0,159,'2017-07-22 03:48:43',5236.36,'July','2017',1,'July 2017'),
(1086,290.909,18,0,10472.7,0,161,'2017-07-22 03:54:01',10472.7,'July','2017',1,'July 2017'),
(1087,290.909,15,0,8727.27,0,162,'2017-07-22 03:54:49',8727.27,'July','2017',1,'July 2017'),
(1088,290.909,12,0,6981.82,0,163,'2017-07-22 03:55:19',6981.82,'July','2017',1,'July 2017'),
(1089,290.909,15,0,8727.27,0,164,'2017-07-22 03:55:47',8727.27,'July','2017',1,'July 2017'),
(1090,290.909,18,0,10472.7,0,165,'2017-07-22 03:56:19',10472.7,'July','2017',1,'July 2017'),
(1091,290.909,15,0,8727.27,0,166,'2017-07-22 03:56:55',8727.27,'July','2017',1,'July 2017'),
(1092,290.909,6,0,3490.91,0,167,'2017-07-22 03:58:23',3490.91,'July','2017',1,'July 2017'),
(1093,203.409,19,0,7729.55,0,168,'2017-07-22 03:59:19',7729.55,'July','2017',1,'July 2017'),
(1094,198.864,0,12,0,3579.55,133,'2017-07-22 04:25:09',3579.55,'July','2017',1,'July 2017'),
(1095,224.432,48,0,21545.5,0,99,'2017-08-06 10:26:40',21545.5,'July','2017',1,'July 2017'),
(1096,290.909,0,0,0,0,160,'2017-08-14 12:15:54',0,'August','2017',1,'August 2017'),
(1097,198.864,0,27,0,8053.98,95,'2017-08-31 03:16:38',8053.98,'August','2017',1,'August 2017'),
(1098,198.864,0,24,0,7159.09,97,'2017-08-20 13:38:11',7159.09,'August','2017',1,'August 2017'),
(1099,170.455,0,28,0,7159.09,96,'2017-08-20 13:39:02',7159.09,'August','2017',1,'August 2017'),
(1100,198.864,0,0,0,0,74,'2017-08-20 13:40:43',0,'August','2017',1,'August 2017'),
(1101,170.455,0,16,0,4090.91,130,'2017-08-20 13:44:35',4090.91,'August','2017',1,'August 2017'),
(1102,187.5,0,15,0,4218.75,88,'2017-08-20 13:45:24',4218.75,'August','2017',1,'August 2017'),
(1103,224.432,8,0,3590.91,0,127,'2017-08-20 13:46:00',3590.91,'August','2017',1,'August 2017'),
(1104,170.455,8,8,2727.27,2045.45,204,'2017-08-20 13:47:32',4772.73,'August','2017',1,'August 2017'),
(1105,187.5,8,44,3000,12375,117,'2017-08-20 13:48:24',15375,'August','2017',1,'August 2017'),
(1106,170.455,0,8,0,2045.45,185,'2017-08-20 13:49:10',2045.45,'August','2017',1,'August 2017'),
(1107,232.955,0,129,0,45076.7,205,'2017-08-25 10:37:18',45076.7,'August','2018',1,'August 2018'),
(1108,224.432,0,30,0,10099.4,128,'2017-08-20 13:50:36',10099.4,'August','2017',1,'August 2017'),
(1109,170.455,0,20,0,5113.64,193,'2017-08-20 13:51:12',5113.64,'August','2017',1,'August 2017'),
(1110,170.455,22,18,7500,4602.27,186,'2017-08-24 05:06:44',12102.3,'August','2017',1,'August 2017'),
(1111,218.75,16,11,7000,3609.38,122,'2017-08-20 13:52:23',10609.4,'August','2017',1,'August 2017'),
(1112,241.477,0,32,0,11590.9,89,'2017-08-20 13:52:54',11590.9,'August','2017',1,'August 2017'),
(1113,258.523,0,34,0,13184.7,131,'2017-08-20 13:53:26',13184.7,'August','2017',1,'August 2017'),
(1114,224.432,0,11,0,3703.12,94,'2017-08-20 13:54:04',3703.12,'August','2017',1,'August 2017'),
(1115,241.477,0,16,0,5795.45,118,'2017-08-20 13:59:04',5795.45,'August','2017',1,'August 2017'),
(1116,232.955,48,41,22363.6,14326.7,121,'2017-08-20 13:55:36',36690.3,'August','2017',1,'August 2017'),
(1117,250,48,56,24000,21000,129,'2017-08-20 13:56:54',45000,'August','2017',1,'August 2017'),
(1118,301.136,16,16,9636.36,7227.27,22,'2017-08-20 13:57:27',16863.6,'August','2017',1,'August 2017'),
(1119,241.477,0,32,0,11590.9,90,'2017-08-25 10:05:56',11590.9,'August','2017',1,'August 2017'),
(1120,340.909,0,136,0,69545.5,71,'2017-08-21 06:39:24',69545.5,'August','2017',1,'August 2017'),
(1121,340.909,0,136,0,69545.5,70,'2017-08-21 06:40:14',69545.5,'August','2017',1,'August 2017'),
(1122,238.636,0,31,0,11096.6,114,'2017-08-25 09:39:31',11096.6,'August','2017',1,'August 2017'),
(1123,190.341,0,25,0,7137.78,113,'2017-08-24 07:36:09',7137.78,'January','2016',1,'January 2016'),
(1124,250,0,21,0,7875,115,'2017-08-25 10:02:12',7875,'August','2017',1,'August 2017'),
(1125,224.432,32,336,14363.6,113114,99,'2017-08-21 19:48:31',127477,'August','2017',1,'August 2017'),
(1126,232.955,0,72,0,25159.1,100,'2017-08-21 19:49:05',25159.1,'August','2017',1,'August 2017'),
(1127,241.477,0,16,0,5795.45,101,'2017-08-21 19:49:50',5795.45,'August','2017',1,'August 2017'),
(1128,250,0,55,0,20625,102,'2017-08-21 19:50:26',20625,'August','2017',1,'August 2017'),
(1129,261.364,0,216,0,84681.8,103,'2017-08-21 19:51:02',84681.8,'August','2017',1,'August 2017'),
(1130,159.091,0,31,0,7397.73,104,'2017-08-21 19:51:32',7397.73,'August','2017',1,'August 2017'),
(1131,272.727,8,0,4363.64,0,39,'2017-08-21 19:52:07',4363.64,'August','2017',1,'August 2017'),
(1132,190.341,0,56,0,15988.6,105,'2017-08-25 05:56:59',15988.6,'August','2017',1,'August 2017'),
(1133,142.045,0,8,0,1704.55,106,'2017-08-25 06:04:22',1704.55,'August','2017',1,'August 2017'),
(1134,201.705,0,25,0,7563.92,113,'2017-08-24 08:35:52',7563.92,'August','2017',1,'August 2017'),
(1135,198.864,0,12,0,3579.55,133,'2017-08-25 10:42:31',3579.55,'August','2017',1,'August 2017'),
(1136,232.955,0,80,0,27954.5,205,'2017-08-29 16:28:47',27954.5,'August','2017',1,'August 2017'),
(1137,198.864,0,4,0,1193.18,74,'2017-09-21 18:48:46',1193.18,'September','2017',1,'September 2017'),
(1138,198.864,0,30,0,8948.86,95,'2017-09-21 18:49:17',8948.86,'September','2017',1,'September 2017'),
(1139,170.455,0,29,0,7414.77,96,'2017-09-21 18:49:45',7414.77,'September','2017',1,'September 2017'),
(1140,198.864,0,30,0,8948.86,97,'2017-09-21 18:50:10',8948.86,'September','2017',1,'September 2017'),
(1141,224.432,24,72,10772.7,24238.6,99,'2017-09-21 18:51:43',35011.4,'September','2017',1,'September 2017'),
(1142,142.045,0,24,0,5113.64,83,'2017-09-21 18:52:22',5113.64,'September','2017',1,'September 2017'),
(1143,142.045,0,32,0,6818.18,84,'2017-09-21 18:52:52',6818.18,'September','2017',1,'September 2017'),
(1144,232.955,24,78,11181.8,27255.7,100,'2017-09-21 18:53:25',38437.5,'September','2017',1,'September 2017'),
(1145,250,0,48,0,18000,102,'2017-09-21 18:53:58',18000,'September','2017',1,'September 2017'),
(1146,261.364,24,102,12545.5,39988.6,103,'2017-09-21 18:54:48',52534.1,'September','2017',1,'September 2017'),
(1147,159.091,0,39,0,9306.82,104,'2017-09-21 18:55:18',9306.82,'September','2017',1,'September 2017'),
(1148,142.045,0,26,0,5539.77,194,'2017-09-21 18:56:04',5539.77,'September','2017',1,'September 2017'),
(1149,272.727,0,16,0,6545.45,39,'2017-09-21 18:56:29',6545.45,'September','2017',1,'September 2017'),
(1150,190.341,24,68,9136.36,19414.8,105,'2017-09-21 18:57:06',28551.1,'September','2017',1,'September 2017'),
(1151,142.045,0,8,0,1704.55,106,'2017-09-21 18:58:03',1704.55,'September','2017',1,'September 2017'),
(1152,340.909,0,24,0,12272.7,71,'2017-09-21 18:58:39',12272.7,'September','2017',1,'September 2017'),
(1153,340.909,0,24,0,12272.7,70,'2017-09-21 18:59:23',12272.7,'September','2017',1,'September 2017'),
(1154,142.045,0,8,0,1704.55,134,'2017-09-23 06:24:31',1704.55,'September','2017',1,'September 2017'),
(1155,142.045,0,8,0,1704.55,188,'2017-09-23 06:25:18',1704.55,'September','2017',1,'September 2017'),
(1156,142.045,0,8,0,1704.55,190,'2017-09-23 06:25:46',1704.55,'September','2017',1,'September 2017'),
(1157,142.045,0,8,0,1704.55,195,'2017-09-23 06:26:13',1704.55,'September','2017',1,'September 2017'),
(1158,142.045,0,8,0,1704.55,191,'2017-09-23 06:26:38',1704.55,'September','2017',1,'September 2017'),
(1159,170.455,0,8,0,2045.45,198,'2017-09-23 06:27:02',2045.45,'September','2017',1,'September 2017'),
(1160,142.045,0,8,0,1704.55,192,'2017-09-23 06:27:42',1704.55,'September','2017',1,'September 2017'),
(1161,303.977,0,8,0,3647.73,92,'2017-09-23 06:27:57',3647.73,'September','2017',1,'September 2017'),
(1162,201.705,0,29,0,8774.15,113,'2017-09-23 06:42:07',8774.15,'September','2017',1,'September 2017'),
(1163,238.636,0,12,0,4295.45,114,'2017-09-23 06:42:36',4295.45,'September','2017',1,'September 2017'),
(1164,250,0,17,0,6375,115,'2017-09-23 06:43:06',6375,'September','2017',1,'September 2017'),
(1165,187.5,0,32,0,9000,117,'2017-09-23 06:43:44',9000,'September','2017',1,'September 2017'),
(1166,187.5,0,20,0,5625,88,'2017-09-23 06:44:24',5625,'September','2017',1,'September 2017'),
(1167,241.477,0,32,0,11590.9,89,'2017-09-23 06:44:57',11590.9,'September','2017',1,'September 2017'),
(1168,241.477,0,32,0,11590.9,89,'2017-09-23 06:44:58',11590.9,'September','2017',1,'September 2017'),
(1169,241.477,18,20,8693.18,7244.32,90,'2017-09-23 06:45:45',15937.5,'September','2017',1,'September 2017'),
(1170,170.455,0,8,0,2045.45,208,'2017-09-23 06:46:29',2045.45,'September','2017',1,'September 2017'),
(1171,241.477,8,8,3863.64,2897.73,118,'2017-09-23 06:47:05',6761.36,'September','2017',1,'September 2017'),
(1172,170.455,0,7,0,1789.77,207,'2017-09-23 06:47:38',1789.77,'September','2017',1,'September 2017'),
(1173,170.455,0,7,0,1789.77,185,'2017-09-23 06:48:07',1789.77,'September','2017',1,'September 2017'),
(1174,170.455,0,26,0,6647.73,187,'2017-09-23 06:49:06',6647.73,'September','2017',1,'September 2017'),
(1175,232.955,50,70,23295.5,24460.2,121,'2017-09-23 06:49:43',47755.7,'September','2017',1,'September 2017'),
(1176,218.75,0,16,0,5250,122,'2017-09-23 06:50:13',5250,'September','2017',1,'September 2017'),
(1177,224.432,8,12,3590.91,4039.77,128,'2017-09-23 06:51:12',7630.68,'September','2017',1,'September 2017'),
(1178,250,50,72,25000,27000,129,'2017-09-23 06:51:51',52000,'September','2017',1,'September 2017'),
(1179,170.455,0,6,0,1534.09,130,'2017-09-23 06:53:05',1534.09,'September','2017',1,'September 2017'),
(1180,301.136,18,20,10840.9,9034.09,22,'2017-09-23 06:54:59',19875,'September','2017',1,'September 2017'),
(1181,258.523,0,32,0,12409.1,131,'2017-09-23 06:55:34',12409.1,'September','2017',1,'September 2017'),
(1182,170.455,0,32,0,8181.82,193,'2017-09-23 06:56:13',8181.82,'September','2017',1,'September 2017'),
(1183,232.955,24,74,11181.8,25858,205,'2017-09-23 06:56:44',37039.8,'September','2017',1,'September 2017'),
(1184,85.2273,0,1,0,127.841,211,'2017-09-28 14:18:05',127.841,'September','2017',1,'September 2017'),
(1185,85.2273,0,1,0,127.841,212,'2017-09-28 14:18:25',127.841,'September','2017',1,'September 2017'),
(1186,241.477,8,35,3863.64,12677.6,89,'2017-10-19 11:18:12',16541.2,'October','2017',1,'October 2017'),
(1187,258.523,4,32,2068.18,12409.1,131,'2017-10-19 11:18:50',14477.3,'October','2017',1,'October 2017'),
(1188,241.477,8,8,3863.64,2897.73,118,'2017-10-19 11:19:50',6761.36,'October','2017',1,'October 2017'),
(1189,187.5,32,32,12000,9000,117,'2017-10-19 11:20:21',21000,'October','2017',1,'October 2017'),
(1190,170.455,0,45,0,11505.7,185,'2017-10-19 11:20:54',11505.7,'October','2017',1,'October 2017'),
(1191,170.455,8,32,2727.27,8181.82,193,'2017-10-19 11:22:32',10909.1,'October','2017',1,'October 2017'),
(1192,170.455,8,26,2727.27,6647.73,208,'2017-10-19 11:23:01',9375,'October','2017',1,'October 2017'),
(1193,170.455,8,24,2727.27,6136.36,130,'2017-10-19 11:23:35',8863.64,'October','2017',1,'October 2017'),
(1194,224.432,8,16,3590.91,5386.36,94,'2017-10-19 11:24:16',8977.27,'October','2017',1,'October 2017'),
(1195,224.432,0,40,0,13465.9,128,'2017-10-19 11:24:59',13465.9,'October','2017',1,'October 2017'),
(1196,170.455,8,29,2727.27,7414.77,207,'2017-10-19 11:25:27',10142,'October','2017',1,'October 2017'),
(1197,187.5,10,36,3750,10125,88,'2017-10-19 11:25:55',13875,'October','2017',1,'October 2017'),
(1198,232.955,32,84,14909.1,29352.3,205,'2017-10-19 11:26:30',44261.4,'October','2017',1,'October 2017'),
(1199,170.455,8,40,2727.27,10227.3,187,'2017-10-19 11:26:56',12954.5,'October','2017',1,'October 2017'),
(1200,170.455,16,29,5454.55,7414.77,186,'2017-10-19 11:27:37',12869.3,'October','2017',1,'October 2017'),
(1201,218.75,8,32,3500,10500,122,'2017-10-19 11:28:03',14000,'October','2017',1,'October 2017'),
(1202,224.432,8,16,3590.91,5386.36,127,'2017-10-19 11:28:28',8977.27,'October','2017',1,'October 2017'),
(1203,227.273,8,0,3636.36,0,217,'2017-10-19 11:28:56',3636.36,'October','2017',1,'October 2017'),
(1204,250,60,116,30000,43500,129,'2017-10-19 11:29:20',73500,'October','2017',1,'October 2017'),
(1205,232.955,72,72,33545.5,25159.1,121,'2017-10-19 11:29:50',58704.5,'October','2017',1,'October 2017'),
(1206,301.136,24,16,14454.5,7227.27,22,'2017-10-19 11:30:15',21681.8,'October','2017',1,'October 2017'),
(1207,241.477,23,19,11108,6882.1,90,'2017-10-19 11:30:50',17990.1,'October','2017',1,'October 2017'),
(1208,198.864,5,15,1988.64,4474.43,133,'2017-10-23 02:19:17',6463.07,'January','2016',1,'January 2016'),
(1209,159.091,28,0,8909.09,0,104,'2017-10-20 15:03:06',8909.09,'January','2016',1,'January 2016'),
(1210,142.045,8,0,2272.73,0,140,'2017-10-20 14:39:44',2272.73,'October','2017',1,'October 2017'),
(1211,250,32,64,16000,24000,102,'2017-10-21 15:31:16',40000,'January','2016',1,'January 2016'),
(1212,142.045,32,0,9090.91,0,84,'2017-10-20 15:37:24',9090.91,'January','2016',1,'January 2016'),
(1213,142.045,32,0,9090.91,0,83,'2017-10-20 15:26:05',9090.91,'January','2016',1,'January 2016'),
(1214,232.955,32,56,14909.1,19568.2,100,'2017-10-20 15:50:30',34477.3,'January','2016',1,'January 2016'),
(1215,142.045,8,16,2272.73,3409.09,106,'2017-10-20 14:56:19',5681.82,'October','2017',1,'October 2017'),
(1216,224.432,8,125,3590.91,42081,99,'2017-10-21 15:28:36',45671.9,'January','2016',1,'January 2016'),
(1217,272.727,8,0,4363.64,0,39,'2017-10-20 15:04:15',4363.64,'October','2017',1,'October 2017'),
(1218,261.364,72,64,37636.4,25090.9,103,'2017-10-20 15:33:20',62727.3,'October','2017',1,'October 2017'),
(1219,190.341,29,213,11039.8,60813.9,105,'2017-10-23 01:27:16',71853.7,'January','2016',1,'January 2016'),
(1220,241.477,14,0,6761.36,0,101,'2017-10-20 16:19:47',6761.36,'January','2016',1,'January 2016'),
(1221,241.477,14,0,6761.36,0,101,'2017-10-20 16:28:37',6761.36,'January','2016',1,'January 2016'),
(1222,241.477,14,0,6761.36,0,101,'2017-10-20 22:42:56',6761.36,'January','2016',1,'January 2016'),
(1223,241.477,14,0,6761.36,0,101,'2017-10-20 22:44:57',6761.36,'October','2017',1,'October 2017'),
(1224,232.955,46,56,21431.8,19568.2,100,'2017-10-21 15:52:22',41000,'January','2016',1,'January 2016'),
(1225,142.045,0,40,0,8522.73,83,'2017-10-21 15:30:41',8522.73,'October','2017',1,'October 2017'),
(1226,159.091,14,0,4454.55,0,80,'2017-10-21 15:32:00',4454.55,'October','2017',1,'October 2017'),
(1227,224.432,8,125,3590.91,42081,99,'2017-10-21 15:37:19',45671.9,'October','2017',1,'October 2017'),
(1228,250,32,64,16000,24000,102,'2017-10-21 15:46:52',40000,'October','2017',1,'October 2017'),
(1229,232.955,40,56,18636.4,19568.2,100,'2017-10-21 15:57:58',38204.5,'October','2017',1,'October 2017'),
(1230,142.045,0,56,0,11931.8,84,'2017-10-23 01:20:33',11931.8,'October','2017',1,'October 2017'),
(1231,190.341,29,213,11039.8,60813.9,105,'2017-10-23 01:29:33',71853.7,'October','2017',1,'October 2017'),
(1232,159.091,48,0,15272.7,0,104,'2017-10-23 01:37:09',15272.7,'October','2017',1,'October 2017'),
(1233,378.409,11,0,8325,0,156,'2017-10-23 01:54:13',8325,'October','2017',1,'October 2017'),
(1234,290.909,11,0,6400,0,157,'2017-10-23 01:54:38',6400,'October','2017',1,'October 2017'),
(1235,203.409,11,0,4475,0,168,'2017-10-23 01:55:01',4475,'October','2017',1,'October 2017'),
(1236,290.909,9,0,5236.36,0,158,'2017-10-23 01:55:29',5236.36,'October','2017',1,'October 2017'),
(1237,290.909,9,0,5236.36,0,165,'2017-10-23 01:55:49',5236.36,'October','2017',1,'October 2017'),
(1238,290.909,9,0,5236.36,0,161,'2017-10-23 01:56:14',5236.36,'October','2017',1,'October 2017'),
(1239,290.909,9,0,5236.36,0,162,'2017-10-23 01:56:33',5236.36,'October','2017',1,'October 2017'),
(1240,290.909,9,0,5236.36,0,159,'2017-10-23 01:57:02',5236.36,'October','2017',1,'October 2017'),
(1241,290.909,9,0,5236.36,0,166,'2017-10-26 13:09:47',5236.36,'October','2017',1,'October 2017'),
(1242,290.909,6,0,3490.91,0,163,'2017-10-23 01:58:06',3490.91,'October','2017',1,'October 2017'),
(1243,290.909,6,0,3490.91,0,160,'2017-10-23 01:58:33',3490.91,'October','2017',1,'October 2017'),
(1244,290.909,6,0,3490.91,0,164,'2017-10-23 01:59:02',3490.91,'October','2017',1,'October 2017'),
(1245,198.864,0,20,0,5965.91,95,'2017-10-23 02:12:37',5965.91,'October','2017',1,'October 2017'),
(1246,170.455,0,25,0,6392.05,96,'2017-10-23 02:12:56',6392.05,'October','2017',1,'October 2017'),
(1247,198.864,0,4,0,1193.18,74,'2017-10-23 02:13:17',1193.18,'October','2017',1,'October 2017'),
(1248,198.864,0,25,0,7457.39,97,'2017-10-23 02:13:47',7457.39,'October','2017',1,'October 2017'),
(1249,250,0,30,0,11250,115,'2017-10-23 02:14:40',11250,'October','2017',1,'October 2017'),
(1250,238.636,0,23,0,8232.95,114,'2017-10-23 02:15:01',8232.95,'October','2017',1,'October 2017'),
(1251,201.705,0,22,0,6656.25,113,'2017-10-23 02:15:30',6656.25,'October','2017',1,'October 2017'),
(1252,340.909,8,24,5454.55,12272.7,71,'2017-10-23 02:44:40',17727.3,'October','2017',1,'October 2017'),
(1253,340.909,8,24,5454.55,12272.7,70,'2017-10-23 02:45:50',17727.3,'October','2017',1,'October 2017'),
(1254,198.864,0,20,0,5965.91,133,'2017-10-23 02:54:37',5965.91,'October','2017',1,'October 2017'),
(1255,224.432,48,54,21545.5,18179,99,'2017-11-21 19:05:18',39724.4,'November','2017',1,'November 2017'),
(1256,142.045,0,8,0,1704.55,83,'2017-11-21 19:05:58',1704.55,'November','2017',1,'November 2017'),
(1257,241.477,0,16,0,5795.45,101,'2017-11-21 19:06:54',5795.45,'November','2017',1,'November 2017'),
(1258,250,24,32,12000,12000,102,'2017-11-21 19:07:42',24000,'November','2017',1,'November 2017'),
(1259,261.364,64,80,33454.5,31363.6,103,'2017-11-21 19:08:32',64818.2,'November','2017',1,'November 2017'),
(1260,159.091,0,41,0,9784.09,104,'2017-11-21 19:09:06',9784.09,'November','2017',1,'November 2017'),
(1261,142.045,0,48,0,10227.3,194,'2017-11-21 19:10:35',10227.3,'November','2017',1,'November 2017'),
(1262,142.045,0,16,0,3409.09,106,'2017-11-21 19:11:32',3409.09,'November','2017',1,'November 2017'),
(1263,340.909,8,24,5454.55,12272.7,71,'2017-11-21 19:12:34',17727.3,'November','2017',1,'November 2017'),
(1264,340.909,8,24,5454.55,12272.7,70,'2017-11-21 19:13:15',17727.3,'November','2017',1,'November 2017'),
(1265,250,0,39,0,14625,115,'2017-11-22 01:13:56',14625,'November','2017',1,'November 2017'),
(1266,238.636,0,19,0,6801.14,114,'2017-11-22 01:15:02',6801.14,'November','2017',1,'November 2017'),
(1267,201.705,0,13,0,3933.24,113,'2017-11-22 01:15:28',3933.24,'November','2017',1,'November 2017'),
(1268,227.273,18,0,8181.82,0,217,'2017-11-22 01:17:20',8181.82,'November','2017',1,'November 2017'),
(1269,187.5,27,16,10125,4500,117,'2017-11-24 04:42:05',14625,'January','2016',1,'January 2016'),
(1270,187.5,34,0,12750,0,88,'2017-11-22 01:18:58',12750,'November','2017',1,'November 2017'),
(1271,241.477,18,0,8693.18,0,89,'2017-11-22 01:19:33',8693.18,'November','2017',1,'November 2017'),
(1272,241.477,24,0,11590.9,0,90,'2017-11-22 01:20:02',11590.9,'November','2017',1,'November 2017'),
(1273,170.455,21,0,7159.09,0,208,'2017-11-22 01:21:07',7159.09,'November','2017',1,'November 2017'),
(1274,170.455,21,0,7159.09,0,186,'2017-11-22 01:21:38',7159.09,'November','2017',1,'November 2017'),
(1275,170.455,80,0,27272.7,0,207,'2017-11-22 01:22:19',27272.7,'November','2017',1,'November 2017'),
(1276,241.477,2,0,965.909,0,119,'2017-11-22 01:22:51',965.909,'November','2017',1,'November 2017'),
(1277,170.455,2,0,681.818,0,185,'2017-11-22 01:23:32',681.818,'November','2017',1,'November 2017'),
(1278,170.455,20,16,6818.18,4090.91,187,'2017-11-24 04:41:43',10909.1,'January','2016',1,'January 2016'),
(1279,218.75,8,32,3500,10500,122,'2017-11-24 04:42:32',14000,'January','2016',1,'January 2016'),
(1280,224.432,90,0,40397.7,0,128,'2017-11-22 01:40:54',40397.7,'November','2017',1,'November 2017'),
(1281,170.455,65,0,22159.1,0,130,'2017-11-22 01:41:12',22159.1,'November','2017',1,'November 2017'),
(1282,301.136,23,0,13852.3,0,22,'2017-11-22 01:41:42',13852.3,'November','2017',1,'November 2017'),
(1283,224.432,16,0,7181.82,0,94,'2017-11-22 01:42:02',7181.82,'November','2017',1,'November 2017'),
(1284,258.523,60,0,31022.7,0,131,'2017-11-22 01:51:32',31022.7,'November','2017',1,'November 2017'),
(1285,232.955,90,0,41931.8,0,205,'2017-11-22 01:52:00',41931.8,'November','2017',1,'November 2017'),
(1286,170.455,34,0,11590.9,0,193,'2017-11-22 01:52:37',11590.9,'November','2017',1,'November 2017'),
(1287,198.864,0,38,0,11335.2,95,'2017-11-22 01:53:43',11335.2,'November','2017',1,'November 2017'),
(1288,198.864,0,24,0,7159.09,97,'2017-11-22 01:54:05',7159.09,'November','2017',1,'November 2017'),
(1289,0,4,4,0,0,0,'2017-11-22 01:54:29',0,'November','2017',1,'November 2017'),
(1290,198.864,4,4,1590.91,1193.18,74,'2017-11-22 01:54:48',2784.09,'November','2017',1,'November 2017'),
(1291,142.045,0,2,0,426.136,221,'2017-11-22 02:50:21',426.136,'November','2017',1,'November 2017'),
(1292,198.864,0,12,0,3579.55,133,'2017-11-22 04:10:47',3579.55,'November','2017',1,'November 2017'),
(1293,232.955,64,0,29818.2,0,100,'2017-11-22 06:00:08',29818.2,'November','2017',1,'November 2017'),
(1294,190.341,64,0,24363.6,0,105,'2017-11-22 06:00:29',24363.6,'November','2017',1,'November 2017'),
(1295,568.182,0,29,0,24715.9,218,'2017-11-23 01:29:57',24715.9,'November','2017',1,'November 2017'),
(1296,218.75,8,32,3500,10500,122,'2017-12-01 07:21:56',14000,'November','2017',1,'November 2017'),
(1297,187.5,27,0,10125,0,117,'2017-12-01 07:22:38',10125,'November','2017',1,'November 2017');

/*Table structure for table `pension_para` */

DROP TABLE IF EXISTS `pension_para`;

CREATE TABLE `pension_para` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL,
  `staff` text,
  `company` text,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `current` int(11) NOT NULL DEFAULT '0',
  `gla` varchar(100) DEFAULT NULL,
  `broker` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `pension_para` */

insert  into `pension_para`(`id`,`month`,`year`,`staff`,`company`,`deleted`,`current`,`gla`,`broker`) values 
(5,'February','2017','5.55','7.77',0,0,'0.88','7.77'),
(8,'January','2018','5','11.62',0,1,'8.21','1.62');

/*Table structure for table `qualification` */

DROP TABLE IF EXISTS `qualification`;

CREATE TABLE `qualification` (
  `qualification_id` int(11) NOT NULL AUTO_INCREMENT,
  `qualification` varchar(100) NOT NULL,
  PRIMARY KEY (`qualification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `qualification` */

insert  into `qualification`(`qualification_id`,`qualification`) values 
(1,'Advanced Diploma'),
(2,'Certificate'),
(3,'Degree'),
(4,'Diploma'),
(5,'JCE'),
(6,'Masters '),
(7,'MSCE'),
(8,'None'),
(9,'PhD'),
(10,'PSLCE');

/*Table structure for table `salaries` */

DROP TABLE IF EXISTS `salaries`;

CREATE TABLE `salaries` (
  `salary_id` int(11) NOT NULL AUTO_INCREMENT,
  `net_salary` float NOT NULL DEFAULT '0',
  `gloss_salary` float NOT NULL DEFAULT '0',
  `salary_date` varchar(100) NOT NULL,
  `gla` float NOT NULL DEFAULT '0',
  `broker` float NOT NULL DEFAULT '0',
  `payee` float NOT NULL DEFAULT '0',
  `pension_personal` float NOT NULL DEFAULT '0',
  `pension_company` float NOT NULL DEFAULT '0',
  `pension_total` float NOT NULL DEFAULT '0',
  `month` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `date_generated` date DEFAULT NULL,
  `generated_by` varchar(100) DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`salary_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2840 DEFAULT CHARSET=latin1;

/*Data for the table `salaries` */

insert  into `salaries`(`salary_id`,`net_salary`,`gloss_salary`,`salary_date`,`gla`,`broker`,`payee`,`pension_personal`,`pension_company`,`pension_total`,`month`,`year`,`employee_id`,`date_generated`,`generated_by`,`date_updated`,`deleted`) values 
(1,16270,20000,'January 2007',324,1318,2250,1000,2000,3000,'January','2007',1,'2016-12-30','Crevrand Kaondo',NULL,0),
(2,11782.6,13453.2,'January 2007',217.942,886.566,517.98,672.66,1345.32,2017.98,'January','2007',2,'2016-12-30','Crevrand Kaondo',NULL,0),
(3,7429.48,7820.5,'January 2007',126.692,515.371,0,391.025,782.05,1173.07,'January','2007',3,'2016-12-30','Crevrand Kaondo',NULL,0),
(4,6949.48,7820.5,'January 2007',126.692,515.371,0,391.025,782.05,1173.07,'January','2007',4,'2016-12-30','Crevrand Kaondo',NULL,0),
(5,6949.48,7820.5,'January 2007',126.692,515.371,0,391.025,782.05,1173.07,'January','2007',5,'2016-12-30','Crevrand Kaondo',NULL,0),
(6,7044.48,7920.5,'January 2007',128.312,521.961,0,396.025,792.05,1188.07,'January','2007',6,'2016-12-30','Crevrand Kaondo',NULL,0),
(7,6382.42,7223.6,'January 2007',117.022,476.035,0,361.18,722.36,1083.54,'January','2007',7,'2016-12-30','Crevrand Kaondo',NULL,0),
(8,6382.42,7223.6,'January 2007',117.022,476.035,0,361.18,722.36,1083.54,'January','2007',8,'2016-12-30','Crevrand Kaondo',NULL,0),
(9,7391.89,8286.2,'January 2007',134.236,546.061,0,414.31,828.62,1242.93,'January','2007',9,'2016-12-30','Crevrand Kaondo',NULL,0),
(10,11070.4,12563,'January 2007',203.521,827.902,384.45,628.15,1256.3,1884.45,'January','2007',10,'2016-12-30','Crevrand Kaondo',NULL,0),
(11,11729.2,13386.5,'January 2007',216.861,882.17,507.975,669.325,1338.65,2007.97,'January','2007',11,'2016-12-30','Crevrand Kaondo',NULL,0),
(12,6949.48,7820.5,'January 2007',126.692,515.371,0,391.025,782.05,1173.07,'January','2007',12,'2016-12-30','Crevrand Kaondo',NULL,0),
(13,6312.5,7150,'January 2007',115.83,471.185,0,357.5,715,1072.5,'January','2007',13,'2016-12-30','Crevrand Kaondo',NULL,0),
(14,6312.5,7150,'January 2007',115.83,471.185,0,357.5,715,1072.5,'January','2007',14,'2016-12-30','Crevrand Kaondo',NULL,0),
(15,6743,7223,'January 2007',117.013,475.996,0,0,0,0,'January','2007',15,'2016-12-30','Crevrand Kaondo',NULL,0),
(16,6312.5,7150,'January 2007',115.83,471.185,0,357.5,715,1072.5,'January','2007',16,'2016-12-30','Crevrand Kaondo',NULL,0),
(17,6312.5,7150,'January 2007',115.83,471.185,0,357.5,715,1072.5,'January','2007',17,'2016-12-30','Crevrand Kaondo',NULL,0),
(18,6312.5,7150,'January 2007',115.83,471.185,0,357.5,715,1072.5,'January','2007',18,'2016-12-30','Crevrand Kaondo',NULL,0),
(19,6670,7150,'January 2007',115.83,471.185,0,0,0,0,'January','2007',19,'2016-12-30','Crevrand Kaondo',NULL,0),
(20,12039.2,13774,'January 2007',223.139,907.707,566.1,688.7,1377.4,2066.1,'January','2007',20,'2016-12-30','Crevrand Kaondo',NULL,0),
(21,6792.5,7150,'January 2007',115.83,471.185,0,357.5,715,1072.5,'January','2007',22,'2016-12-30','Crevrand Kaondo',NULL,0),
(22,16270,20000,'February 2007',324,1318,2250,1000,2000,3000,'February','2007',1,'2016-12-30','Crevrand Kaondo',NULL,0),
(23,11782.6,13453.2,'February 2007',217.942,886.566,517.98,672.66,1345.32,2017.98,'February','2007',2,'2016-12-30','Crevrand Kaondo',NULL,0),
(24,7429.48,7820.5,'February 2007',126.692,515.371,0,391.025,782.05,1173.07,'February','2007',3,'2016-12-30','Crevrand Kaondo',NULL,0),
(25,6949.48,7820.5,'February 2007',126.692,515.371,0,391.025,782.05,1173.07,'February','2007',4,'2016-12-30','Crevrand Kaondo',NULL,0),
(26,6949.48,7820.5,'February 2007',126.692,515.371,0,391.025,782.05,1173.07,'February','2007',5,'2016-12-30','Crevrand Kaondo',NULL,0),
(27,7044.48,7920.5,'February 2007',128.312,521.961,0,396.025,792.05,1188.07,'February','2007',6,'2016-12-30','Crevrand Kaondo',NULL,0),
(28,6382.42,7223.6,'February 2007',117.022,476.035,0,361.18,722.36,1083.54,'February','2007',7,'2016-12-30','Crevrand Kaondo',NULL,0),
(29,6382.42,7223.6,'February 2007',117.022,476.035,0,361.18,722.36,1083.54,'February','2007',8,'2016-12-30','Crevrand Kaondo',NULL,0),
(30,7391.89,8286.2,'February 2007',134.236,546.061,0,414.31,828.62,1242.93,'February','2007',9,'2016-12-30','Crevrand Kaondo',NULL,0),
(31,11070.4,12563,'February 2007',203.521,827.902,384.45,628.15,1256.3,1884.45,'February','2007',10,'2016-12-30','Crevrand Kaondo',NULL,0),
(32,11729.2,13386.5,'February 2007',216.861,882.17,507.975,669.325,1338.65,2007.97,'February','2007',11,'2016-12-30','Crevrand Kaondo',NULL,0),
(33,6949.48,7820.5,'February 2007',126.692,515.371,0,391.025,782.05,1173.07,'February','2007',12,'2016-12-30','Crevrand Kaondo',NULL,0),
(34,6312.5,7150,'February 2007',115.83,471.185,0,357.5,715,1072.5,'February','2007',13,'2016-12-30','Crevrand Kaondo',NULL,0),
(35,6312.5,7150,'February 2007',115.83,471.185,0,357.5,715,1072.5,'February','2007',14,'2016-12-30','Crevrand Kaondo',NULL,0),
(36,6743,7223,'February 2007',117.013,475.996,0,0,0,0,'February','2007',15,'2016-12-30','Crevrand Kaondo',NULL,0),
(37,6312.5,7150,'February 2007',115.83,471.185,0,357.5,715,1072.5,'February','2007',16,'2016-12-30','Crevrand Kaondo',NULL,0),
(38,6312.5,7150,'February 2007',115.83,471.185,0,357.5,715,1072.5,'February','2007',17,'2016-12-30','Crevrand Kaondo',NULL,0),
(39,6312.5,7150,'February 2007',115.83,471.185,0,357.5,715,1072.5,'February','2007',18,'2016-12-30','Crevrand Kaondo',NULL,0),
(40,6670,7150,'February 2007',115.83,471.185,0,0,0,0,'February','2007',19,'2016-12-30','Crevrand Kaondo',NULL,0),
(41,12039.2,13774,'February 2007',223.139,907.707,566.1,688.7,1377.4,2066.1,'February','2007',20,'2016-12-30','Crevrand Kaondo',NULL,0),
(42,9564,10080,'February 2007',163.296,664.272,12,504,1008,1512,'February','2007',21,'2016-12-30','Crevrand Kaondo',NULL,0),
(43,6792.5,7150,'February 2007',115.83,471.185,0,357.5,715,1072.5,'February','2007',22,'2016-12-30','Crevrand Kaondo',NULL,0),
(44,11782.6,13453.2,'March 2007',217.942,886.566,517.98,672.66,1345.32,2017.98,'March','2007',2,'2017-01-01','Crevrand Kaondo',NULL,0),
(45,7429.48,7820.5,'March 2007',126.692,515.371,0,391.025,782.05,1173.07,'March','2007',3,'2017-01-01','Crevrand Kaondo',NULL,0),
(46,6949.48,7820.5,'March 2007',126.692,515.371,0,391.025,782.05,1173.07,'March','2007',4,'2017-01-01','Crevrand Kaondo',NULL,0),
(47,6949.48,7820.5,'March 2007',126.692,515.371,0,391.025,782.05,1173.07,'March','2007',5,'2017-01-01','Crevrand Kaondo',NULL,0),
(48,7044.48,7920.5,'March 2007',128.312,521.961,0,396.025,792.05,1188.07,'March','2007',6,'2017-01-01','Crevrand Kaondo',NULL,0),
(49,6382.42,7223.6,'March 2007',117.022,476.035,0,361.18,722.36,1083.54,'March','2007',7,'2017-01-01','Crevrand Kaondo',NULL,0),
(50,6382.42,7223.6,'March 2007',117.022,476.035,0,361.18,722.36,1083.54,'March','2007',8,'2017-01-01','Crevrand Kaondo',NULL,0),
(51,7391.89,8286.2,'March 2007',134.236,546.061,0,414.31,828.62,1242.93,'March','2007',9,'2017-01-01','Crevrand Kaondo',NULL,0),
(52,11070.4,12563,'March 2007',203.521,827.902,384.45,628.15,1256.3,1884.45,'March','2007',10,'2017-01-01','Crevrand Kaondo',NULL,0),
(53,11729.2,13386.5,'March 2007',216.861,882.17,507.975,669.325,1338.65,2007.97,'March','2007',11,'2017-01-01','Crevrand Kaondo',NULL,0),
(54,6949.48,7820.5,'March 2007',126.692,515.371,0,391.025,782.05,1173.07,'March','2007',12,'2017-01-01','Crevrand Kaondo',NULL,0),
(55,6312.5,7150,'March 2007',115.83,471.185,0,357.5,715,1072.5,'March','2007',13,'2017-01-01','Crevrand Kaondo',NULL,0),
(56,6312.5,7150,'March 2007',115.83,471.185,0,357.5,715,1072.5,'March','2007',14,'2017-01-01','Crevrand Kaondo',NULL,0),
(57,6743,7223,'March 2007',117.013,475.996,0,0,0,0,'March','2007',15,'2017-01-01','Crevrand Kaondo',NULL,0),
(58,6312.5,7150,'March 2007',115.83,471.185,0,357.5,715,1072.5,'March','2007',16,'2017-01-01','Crevrand Kaondo',NULL,0),
(59,6312.5,7150,'March 2007',115.83,471.185,0,357.5,715,1072.5,'March','2007',17,'2017-01-01','Crevrand Kaondo',NULL,0),
(60,6312.5,7150,'March 2007',115.83,471.185,0,357.5,715,1072.5,'March','2007',18,'2017-01-01','Crevrand Kaondo',NULL,0),
(61,6670,7150,'March 2007',115.83,471.185,0,0,0,0,'March','2007',19,'2017-01-01','Crevrand Kaondo',NULL,0),
(62,12039.2,13774,'March 2007',223.139,907.707,566.1,688.7,1377.4,2066.1,'March','2007',20,'2017-01-01','Crevrand Kaondo',NULL,0),
(63,9564,10080,'March 2007',163.296,664.272,12,504,1008,1512,'March','2007',21,'2017-01-01','Crevrand Kaondo',NULL,0),
(64,6312.5,7150,'March 2007',115.83,471.185,0,357.5,715,1072.5,'March','2007',22,'2017-01-01','Crevrand Kaondo',NULL,0),
(65,16270,20000,'March 2007',324,1318,2250,1000,2000,3000,'March','2007',1,'2017-01-01','Crevrand Kaondo',NULL,0),
(66,16270,20000,'April 2007',324,1318,2250,1000,2000,3000,'April','2007',1,'2017-01-03','Crevrand Kaondo',NULL,0),
(67,14582.9,17122.2,'April 2007',217.942,886.566,1386.68,672.66,1345.32,2017.98,'April','2007',2,'2017-01-03','Crevrand Kaondo',NULL,0),
(68,9562.33,9953.36,'April 2007',126.692,515.371,0,391.025,782.05,1173.07,'April','2007',3,'2017-01-03','Crevrand Kaondo',NULL,0),
(69,7571.56,8442.58,'April 2007',126.692,515.371,0,391.025,782.05,1173.07,'April','2007',4,'2017-01-03','Crevrand Kaondo',NULL,0),
(70,7944.53,8820.56,'April 2007',128.312,521.961,0,396.025,792.05,1188.07,'April','2007',6,'2017-01-03','Crevrand Kaondo',NULL,0),
(71,7203.28,8044.46,'April 2007',117.022,476.035,0,361.18,722.36,1083.54,'April','2007',7,'2017-01-03','Crevrand Kaondo',NULL,0),
(72,6382.42,7223.6,'April 2030',117.022,476.035,0,361.18,722.36,1083.54,'April','2030',8,'2017-01-03','Crevrand Kaondo',NULL,0),
(73,8051.02,8945.33,'April 2007',134.236,546.061,0,414.31,828.62,1242.93,'April','2007',9,'2017-01-03','Crevrand Kaondo',NULL,0),
(74,14883.6,17488.3,'April 2007',203.521,827.902,1496.48,628.15,1256.3,1884.45,'April','2007',10,'2017-01-03','Crevrand Kaondo',NULL,0),
(75,13541.9,15630.3,'April 2007',216.861,882.17,939.078,669.325,1338.65,2007.97,'April','2007',11,'2017-01-03','Crevrand Kaondo',NULL,0),
(76,8726.87,9597.89,'April 2007',126.692,515.371,0,391.025,782.05,1173.07,'April','2007',12,'2017-01-03','Crevrand Kaondo',NULL,0),
(77,7612.5,8450,'April 2007',115.83,471.185,0,357.5,715,1072.5,'April','2007',13,'2017-01-03','Crevrand Kaondo',NULL,0),
(78,7125,7962.5,'April 2007',115.83,471.185,0,357.5,715,1072.5,'April','2007',14,'2017-01-03','Crevrand Kaondo',NULL,0),
(79,7563.79,8043.79,'April 2007',117.013,475.996,0,0,0,0,'April','2007',15,'2017-01-03','Crevrand Kaondo',NULL,0),
(80,7125,7962.5,'April 2007',115.83,471.185,0,357.5,715,1072.5,'April','2007',16,'2017-01-03','Crevrand Kaondo',NULL,0),
(81,7125,7962.5,'April 2007',115.83,471.185,0,357.5,715,1072.5,'April','2007',17,'2017-01-03','Crevrand Kaondo',NULL,0),
(82,7125,7962.5,'April 2007',115.83,471.185,0,357.5,715,1072.5,'April','2007',18,'2017-01-03','Crevrand Kaondo',NULL,0),
(83,6670,7150,'April 2030',115.83,471.185,0,0,0,0,'April','2030',19,'2017-01-03','Crevrand Kaondo',NULL,0),
(84,14852.7,17530.6,'April 2007',223.139,907.707,1509.17,688.7,1377.4,2066.1,'April','2007',20,'2017-01-03','Crevrand Kaondo',NULL,0),
(85,11900.7,12829.1,'April 2007',163.296,664.272,424.363,504,1008,1512,'April','2007',21,'2017-01-03','Crevrand Kaondo',NULL,0),
(86,7531.25,8368.75,'April 2007',115.83,471.185,0,357.5,715,1072.5,'April','2007',22,'2017-01-03','Crevrand Kaondo',NULL,0),
(87,16270,20000,'May 2007',324,1318,2250,1000,2000,3000,'May','2007',1,'2017-01-04','Crevrand Kaondo',NULL,0),
(88,11782.6,13453.2,'May 2007',217.942,886.566,517.98,672.66,1345.32,2017.98,'May','2007',2,'2017-01-04','Crevrand Kaondo',NULL,0),
(89,7429.48,7820.5,'May 2007',126.692,515.371,0,391.025,782.05,1173.07,'May','2007',3,'2017-01-04','Crevrand Kaondo',NULL,0),
(90,6949.48,7820.5,'May 2007',126.692,515.371,0,391.025,782.05,1173.07,'May','2007',4,'2017-01-04','Crevrand Kaondo',NULL,0),
(91,6949.48,7820.5,'May 2007',126.692,515.371,0,391.025,782.05,1173.07,'May','2007',5,'2017-01-04','Crevrand Kaondo',NULL,0),
(92,7044.48,7920.5,'May 2007',128.312,521.961,0,396.025,792.05,1188.07,'May','2007',6,'2017-01-04','Crevrand Kaondo',NULL,0),
(93,6382.42,7223.6,'May 2007',117.022,476.035,0,361.18,722.36,1083.54,'May','2007',7,'2017-01-04','Crevrand Kaondo',NULL,0),
(94,6382.42,7223.6,'May 2007',117.022,476.035,0,361.18,722.36,1083.54,'May','2007',8,'2017-01-04','Crevrand Kaondo',NULL,0),
(95,7391.89,8286.2,'May 2007',134.236,546.061,0,414.31,828.62,1242.93,'May','2007',9,'2017-01-04','Crevrand Kaondo',NULL,0),
(96,11070.4,12563,'May 2007',203.521,827.902,384.45,628.15,1256.3,1884.45,'May','2007',10,'2017-01-04','Crevrand Kaondo',NULL,0),
(97,11729.2,13386.5,'May 2007',216.861,882.17,507.975,669.325,1338.65,2007.97,'May','2007',11,'2017-01-04','Crevrand Kaondo',NULL,0),
(98,6949.48,7820.5,'May 2007',126.692,515.371,0,391.025,782.05,1173.07,'May','2007',12,'2017-01-04','Crevrand Kaondo',NULL,0),
(99,6312.5,7150,'May 2007',115.83,471.185,0,357.5,715,1072.5,'May','2007',13,'2017-01-04','Crevrand Kaondo',NULL,0),
(100,6312.5,7150,'May 2007',115.83,471.185,0,357.5,715,1072.5,'May','2007',14,'2017-01-04','Crevrand Kaondo',NULL,0),
(101,6743,7223,'May 2007',117.013,475.996,0,0,0,0,'May','2007',15,'2017-01-04','Crevrand Kaondo',NULL,0),
(102,6312.5,7150,'May 2007',115.83,471.185,0,357.5,715,1072.5,'May','2007',16,'2017-01-04','Crevrand Kaondo',NULL,0),
(103,6312.5,7150,'May 2007',115.83,471.185,0,357.5,715,1072.5,'May','2007',17,'2017-01-04','Crevrand Kaondo',NULL,0),
(104,6312.5,7150,'May 2007',115.83,471.185,0,357.5,715,1072.5,'May','2007',18,'2017-01-04','Crevrand Kaondo',NULL,0),
(105,6670,7150,'May 2007',115.83,471.185,0,0,0,0,'May','2007',19,'2017-01-04','Crevrand Kaondo',NULL,0),
(106,12039.2,13774,'May 2007',223.139,907.707,566.1,688.7,1377.4,2066.1,'May','2007',20,'2017-01-04','Crevrand Kaondo',NULL,0),
(107,9564,10080,'May 2007',163.296,664.272,12,504,1008,1512,'May','2007',21,'2017-01-04','Crevrand Kaondo',NULL,0),
(108,6312.5,7150,'May 2007',115.83,471.185,0,357.5,715,1072.5,'May','2007',22,'2017-01-04','Crevrand Kaondo',NULL,0),
(109,11782.6,13453.2,'June 2007',217.942,886.566,517.98,672.66,1345.32,2017.98,'June','2007',2,'2017-01-04','Crevrand Kaondo',NULL,0),
(110,7429.48,7820.5,'June 2007',126.692,515.371,0,391.025,782.05,1173.07,'June','2007',3,'2017-01-04','Crevrand Kaondo',NULL,0),
(111,6949.48,7820.5,'June 2007',126.692,515.371,0,391.025,782.05,1173.07,'June','2007',4,'2017-01-04','Crevrand Kaondo',NULL,0),
(112,6949.48,7820.5,'June 2007',126.692,515.371,0,391.025,782.05,1173.07,'June','2007',5,'2017-01-04','Crevrand Kaondo',NULL,0),
(113,7044.48,7920.5,'June 2007',128.312,521.961,0,396.025,792.05,1188.07,'June','2007',6,'2017-01-04','Crevrand Kaondo',NULL,0),
(114,6382.42,7223.6,'June 2007',117.022,476.035,0,361.18,722.36,1083.54,'June','2007',7,'2017-01-04','Crevrand Kaondo',NULL,0),
(115,6382.42,7223.6,'June 2007',117.022,476.035,0,361.18,722.36,1083.54,'June','2007',8,'2017-01-04','Crevrand Kaondo',NULL,0),
(116,7391.89,8286.2,'June 2007',134.236,546.061,0,414.31,828.62,1242.93,'June','2007',9,'2017-01-04','Crevrand Kaondo',NULL,0),
(117,11070.4,12563,'June 2007',203.521,827.902,384.45,628.15,1256.3,1884.45,'June','2007',10,'2017-01-04','Crevrand Kaondo',NULL,0),
(118,11729.2,13386.5,'June 2007',216.861,882.17,507.975,669.325,1338.65,2007.97,'June','2007',11,'2017-01-04','Crevrand Kaondo',NULL,0),
(119,6949.48,7820.5,'June 2007',126.692,515.371,0,391.025,782.05,1173.07,'June','2007',12,'2017-01-04','Crevrand Kaondo',NULL,0),
(120,6312.5,7150,'June 2007',115.83,471.185,0,357.5,715,1072.5,'June','2007',13,'2017-01-04','Crevrand Kaondo',NULL,0),
(121,6312.5,7150,'June 2007',115.83,471.185,0,357.5,715,1072.5,'June','2007',14,'2017-01-04','Crevrand Kaondo',NULL,0),
(122,6743,7223,'June 2007',117.013,475.996,0,0,0,0,'June','2007',15,'2017-01-04','Crevrand Kaondo',NULL,0),
(123,6312.5,7150,'June 2007',115.83,471.185,0,357.5,715,1072.5,'June','2007',16,'2017-01-04','Crevrand Kaondo',NULL,0),
(124,6312.5,7150,'June 2007',115.83,471.185,0,357.5,715,1072.5,'June','2007',17,'2017-01-04','Crevrand Kaondo',NULL,0),
(125,6312.5,7150,'June 2007',115.83,471.185,0,357.5,715,1072.5,'June','2007',18,'2017-01-04','Crevrand Kaondo',NULL,0),
(126,6670,7150,'June 2007',115.83,471.185,0,0,0,0,'June','2007',19,'2017-01-04','Crevrand Kaondo',NULL,0),
(127,12039.2,13774,'June 2007',223.139,907.707,566.1,688.7,1377.4,2066.1,'June','2007',20,'2017-01-04','Crevrand Kaondo',NULL,0),
(128,9564,10080,'June 2007',163.296,664.272,12,504,1008,1512,'June','2007',21,'2017-01-04','Crevrand Kaondo',NULL,0),
(129,6312.5,7150,'June 2007',115.83,471.185,0,357.5,715,1072.5,'June','2007',22,'2017-01-04','Crevrand Kaondo',NULL,0),
(130,23250,30000,'May 2007',486,1977,5250,1500,3000,4500,'May','2007',23,'2017-01-04','Crevrand Kaondo',NULL,0),
(131,23250,30000,'June 2007',486,1977,5250,1500,3000,4500,'June','2007',23,'2017-01-04','Crevrand Kaondo',NULL,0),
(132,11782.6,13453.2,'July 2007',217.942,886.566,517.98,672.66,1345.32,2017.98,'July','2007',2,'2017-01-04','Crevrand Kaondo',NULL,0),
(133,7429.48,7820.5,'July 2007',126.692,515.371,0,391.025,782.05,1173.07,'July','2007',3,'2017-01-04','Crevrand Kaondo',NULL,0),
(134,6949.48,7820.5,'July 2007',126.692,515.371,0,391.025,782.05,1173.07,'July','2007',4,'2017-01-04','Crevrand Kaondo',NULL,0),
(135,6949.48,7820.5,'July 2007',126.692,515.371,0,391.025,782.05,1173.07,'July','2007',5,'2017-01-04','Crevrand Kaondo',NULL,0),
(136,7044.48,7920.5,'July 2007',128.312,521.961,0,396.025,792.05,1188.07,'July','2007',6,'2017-01-04','Crevrand Kaondo',NULL,0),
(137,6382.42,7223.6,'July 2007',117.022,476.035,0,361.18,722.36,1083.54,'July','2007',7,'2017-01-04','Crevrand Kaondo',NULL,0),
(138,7391.89,8286.2,'July 2007',134.236,546.061,0,414.31,828.62,1242.93,'July','2007',9,'2017-01-04','Crevrand Kaondo',NULL,0),
(139,11070.4,12563,'July 2007',203.521,827.902,384.45,628.15,1256.3,1884.45,'July','2007',10,'2017-01-04','Crevrand Kaondo',NULL,0),
(140,11729.2,13386.5,'July 2007',216.861,882.17,507.975,669.325,1338.65,2007.97,'July','2007',11,'2017-01-04','Crevrand Kaondo',NULL,0),
(141,6949.48,7820.5,'July 2007',126.692,515.371,0,391.025,782.05,1173.07,'July','2007',12,'2017-01-04','Crevrand Kaondo',NULL,0),
(142,6312.5,7150,'July 2007',115.83,471.185,0,357.5,715,1072.5,'July','2007',13,'2017-01-04','Crevrand Kaondo',NULL,0),
(143,6312.5,7150,'July 2007',115.83,471.185,0,357.5,715,1072.5,'July','2007',14,'2017-01-04','Crevrand Kaondo',NULL,0),
(144,6743,7223,'July 2007',117.013,475.996,0,0,0,0,'July','2007',15,'2017-01-04','Crevrand Kaondo',NULL,0),
(145,6312.5,7150,'July 2007',115.83,471.185,0,357.5,715,1072.5,'July','2007',16,'2017-01-05','Crevrand Kaondo',NULL,0),
(146,6312.5,7150,'July 2007',115.83,471.185,0,357.5,715,1072.5,'July','2007',17,'2017-01-05','Crevrand Kaondo',NULL,0),
(147,6312.5,7150,'July 2007',115.83,471.185,0,357.5,715,1072.5,'July','2007',18,'2017-01-05','Crevrand Kaondo',NULL,0),
(148,6670,7150,'July 2007',115.83,471.185,0,0,0,0,'July','2007',19,'2017-01-05','Crevrand Kaondo',NULL,0),
(149,12039.2,13774,'July 2007',223.139,907.707,566.1,688.7,1377.4,2066.1,'July','2007',20,'2017-01-05','Crevrand Kaondo',NULL,0),
(150,9564,10080,'July 2007',163.296,664.272,12,504,1008,1512,'July','2007',21,'2017-01-05','Crevrand Kaondo',NULL,0),
(151,6312.5,7150,'July 2007',115.83,471.185,0,357.5,715,1072.5,'July','2007',22,'2017-01-05','Crevrand Kaondo',NULL,0),
(152,23250,30000,'July 2007',486,1977,5250,1500,3000,4500,'July','2007',23,'2017-01-05','Crevrand Kaondo',NULL,0),
(153,11782.6,13453.2,'August 2007',217.942,886.566,517.98,672.66,1345.32,2017.98,'August','2007',2,'2017-01-05','Crevrand Kaondo',NULL,0),
(154,7429.48,7820.5,'August 2007',126.692,515.371,0,391.025,782.05,1173.07,'August','2007',3,'2017-01-05','Crevrand Kaondo',NULL,0),
(155,6949.48,7820.5,'August 2007',126.692,515.371,0,391.025,782.05,1173.07,'August','2007',4,'2017-01-05','Crevrand Kaondo',NULL,0),
(156,6949.48,7820.5,'August 2007',126.692,515.371,0,391.025,782.05,1173.07,'August','2007',5,'2017-01-05','Crevrand Kaondo',NULL,0),
(157,7044.48,7920.5,'August 2007',128.312,521.961,0,396.025,792.05,1188.07,'August','2007',6,'2017-01-05','Crevrand Kaondo',NULL,0),
(158,6382.42,7223.6,'August 2007',117.022,476.035,0,361.18,722.36,1083.54,'August','2007',7,'2017-01-05','Crevrand Kaondo',NULL,0),
(159,6382.42,7223.6,'August 2007',117.022,476.035,0,361.18,722.36,1083.54,'August','2007',8,'2017-01-05','Crevrand Kaondo',NULL,0),
(160,7391.89,8286.2,'August 2007',134.236,546.061,0,414.31,828.62,1242.93,'August','2007',9,'2017-01-05','Crevrand Kaondo',NULL,0),
(161,11070.4,12563,'August 2007',203.521,827.902,384.45,628.15,1256.3,1884.45,'August','2007',10,'2017-01-05','Crevrand Kaondo',NULL,0),
(162,11729.2,13386.5,'August 2007',216.861,882.17,507.975,669.325,1338.65,2007.97,'August','2007',11,'2017-01-05','Crevrand Kaondo',NULL,0),
(163,6949.48,7820.5,'August 2007',126.692,515.371,0,391.025,782.05,1173.07,'August','2007',12,'2017-01-05','Crevrand Kaondo',NULL,0),
(164,6312.5,7150,'August 2007',115.83,471.185,0,357.5,715,1072.5,'August','2007',13,'2017-01-05','Crevrand Kaondo',NULL,0),
(165,6743,7223,'August 2007',117.013,475.996,0,0,0,0,'August','2007',15,'2017-01-05','Crevrand Kaondo',NULL,0),
(166,6312.5,7150,'August 2007',115.83,471.185,0,357.5,715,1072.5,'August','2007',16,'2017-01-05','Crevrand Kaondo',NULL,0),
(167,6312.5,7150,'August 2007',115.83,471.185,0,357.5,715,1072.5,'August','2007',18,'2017-01-05','Crevrand Kaondo',NULL,0),
(168,6670,7150,'August 2007',115.83,471.185,0,0,0,0,'August','2007',19,'2017-01-05','Crevrand Kaondo',NULL,0),
(169,12039.2,13774,'August 2007',223.139,907.707,566.1,688.7,1377.4,2066.1,'August','2007',20,'2017-01-05','Crevrand Kaondo',NULL,0),
(170,9564,10080,'August 2007',163.296,664.272,12,504,1008,1512,'August','2007',21,'2017-01-05','Crevrand Kaondo',NULL,0),
(171,6312.5,7150,'August 2007',115.83,471.185,0,357.5,715,1072.5,'August','2007',22,'2017-01-05','Crevrand Kaondo',NULL,0),
(172,23250,30000,'August 2007',486,1977,5250,1500,3000,4500,'August','2007',23,'2017-01-05','Crevrand Kaondo',NULL,0),
(173,11782.6,13453.2,'September 2007',217.942,886.566,517.98,672.66,1345.32,2017.98,'September','2007',2,'2017-01-05','Crevrand Kaondo',NULL,0),
(174,7429.48,7820.5,'September 2007',126.692,515.371,0,391.025,782.05,1173.07,'September','2007',3,'2017-01-05','Crevrand Kaondo',NULL,0),
(175,6949.48,7820.5,'September 2007',126.692,515.371,0,391.025,782.05,1173.07,'September','2007',4,'2017-01-05','Crevrand Kaondo',NULL,0),
(176,6949.48,7820.5,'September 2007',126.692,515.371,0,391.025,782.05,1173.07,'September','2007',5,'2017-01-05','Crevrand Kaondo',NULL,0),
(177,7044.48,7920.5,'September 2007',128.312,521.961,0,396.025,792.05,1188.07,'September','2007',6,'2017-01-05','Crevrand Kaondo',NULL,0),
(178,6382.42,7223.6,'September 2007',117.022,476.035,0,361.18,722.36,1083.54,'September','2007',7,'2017-01-05','Crevrand Kaondo',NULL,0),
(179,6382.42,7223.6,'September 2007',117.022,476.035,0,361.18,722.36,1083.54,'September','2007',8,'2017-01-05','Crevrand Kaondo',NULL,0),
(180,7391.89,8286.2,'September 2007',134.236,546.061,0,414.31,828.62,1242.93,'September','2007',9,'2017-01-05','Crevrand Kaondo',NULL,0),
(181,11070.4,12563,'September 2007',203.521,827.902,384.45,628.15,1256.3,1884.45,'September','2007',10,'2017-01-05','Crevrand Kaondo',NULL,0),
(182,11729.2,13386.5,'September 2007',216.861,882.17,507.975,669.325,1338.65,2007.97,'September','2007',11,'2017-01-05','Crevrand Kaondo',NULL,0),
(183,6949.48,7820.5,'September 2007',126.692,515.371,0,391.025,782.05,1173.07,'September','2007',12,'2017-01-05','Crevrand Kaondo',NULL,0),
(184,6312.5,7150,'September 2007',115.83,471.185,0,357.5,715,1072.5,'September','2007',13,'2017-01-05','Crevrand Kaondo',NULL,0),
(185,6743,7223,'September 2007',117.013,475.996,0,0,0,0,'September','2007',15,'2017-01-05','Crevrand Kaondo',NULL,0),
(186,6312.5,7150,'September 2007',115.83,471.185,0,357.5,715,1072.5,'September','2007',16,'2017-01-05','Crevrand Kaondo',NULL,0),
(187,6312.5,7150,'September 2007',115.83,471.185,0,357.5,715,1072.5,'September','2007',22,'2017-01-05','Crevrand Kaondo',NULL,0),
(188,6312.5,7150,'September 2007',115.83,471.185,0,357.5,715,1072.5,'September','2007',18,'2017-01-05','Crevrand Kaondo',NULL,0),
(189,6670,7150,'September 2007',115.83,471.185,0,0,0,0,'September','2007',19,'2017-01-05','Crevrand Kaondo',NULL,0),
(190,12039.2,13774,'September 2007',223.139,907.707,566.1,688.7,1377.4,2066.1,'September','2007',20,'2017-01-05','Crevrand Kaondo',NULL,0),
(191,9564,10080,'September 2007',163.296,664.272,12,504,1008,1512,'September','2007',21,'2017-01-05','Crevrand Kaondo',NULL,0),
(192,23250,30000,'September 2007',486,1977,5250,1500,3000,4500,'September','2007',23,'2017-01-05','Crevrand Kaondo',NULL,0),
(193,11782.6,13453.2,'October 2007',217.942,886.566,517.98,672.66,1345.32,2017.98,'October','2007',2,'2017-01-05','Crevrand Kaondo',NULL,0),
(194,7429.48,7820.5,'October 2007',126.692,515.371,0,391.025,782.05,1173.07,'October','2007',3,'2017-01-05','Crevrand Kaondo',NULL,0),
(195,6949.48,7820.5,'October 2007',126.692,515.371,0,391.025,782.05,1173.07,'October','2007',4,'2017-01-05','Crevrand Kaondo',NULL,0),
(196,6949.48,7820.5,'October 2007',126.692,515.371,0,391.025,782.05,1173.07,'October','2007',5,'2017-01-05','Crevrand Kaondo',NULL,0),
(197,7044.48,7920.5,'October 2007',128.312,521.961,0,396.025,792.05,1188.07,'October','2007',6,'2017-01-05','Crevrand Kaondo',NULL,0),
(198,6382.42,7223.6,'October 2007',117.022,476.035,0,361.18,722.36,1083.54,'October','2007',7,'2017-01-05','Crevrand Kaondo',NULL,0),
(199,6382.42,7223.6,'October 2007',117.022,476.035,0,361.18,722.36,1083.54,'October','2007',8,'2017-01-05','Crevrand Kaondo',NULL,0),
(200,7391.89,8286.2,'October 2007',134.236,546.061,0,414.31,828.62,1242.93,'October','2007',9,'2017-01-05','Crevrand Kaondo',NULL,0),
(201,11070.4,12563,'October 2007',203.521,827.902,384.45,628.15,1256.3,1884.45,'October','2007',10,'2017-01-05','Crevrand Kaondo',NULL,0),
(202,11729.2,13386.5,'October 2007',216.861,882.17,507.975,669.325,1338.65,2007.97,'October','2007',11,'2017-01-05','Crevrand Kaondo',NULL,0),
(203,6949.48,7820.5,'October 2007',126.692,515.371,0,391.025,782.05,1173.07,'October','2007',12,'2017-01-05','Crevrand Kaondo',NULL,0),
(204,6312.5,7150,'October 2007',115.83,471.185,0,357.5,715,1072.5,'October','2007',13,'2017-01-05','Crevrand Kaondo',NULL,0),
(205,6743,7223,'October 2007',117.013,475.996,0,0,0,0,'October','2007',15,'2017-01-05','Crevrand Kaondo',NULL,0),
(206,6312.5,7150,'October 2007',115.83,471.185,0,357.5,715,1072.5,'October','2007',16,'2017-01-05','Crevrand Kaondo',NULL,0),
(207,6312.5,7150,'October 2007',115.83,471.185,0,357.5,715,1072.5,'October','2007',22,'2017-01-05','Crevrand Kaondo',NULL,0),
(208,6312.5,7150,'October 2007',115.83,471.185,0,357.5,715,1072.5,'October','2007',18,'2017-01-05','Crevrand Kaondo',NULL,0),
(209,6670,7150,'October 2007',115.83,471.185,0,0,0,0,'October','2007',19,'2017-01-05','Crevrand Kaondo',NULL,0),
(210,12039.2,13774,'October 2007',223.139,907.707,566.1,688.7,1377.4,2066.1,'October','2007',20,'2017-01-05','Crevrand Kaondo',NULL,0),
(211,9564,10080,'October 2007',163.296,664.272,12,504,1008,1512,'October','2007',21,'2017-01-05','Crevrand Kaondo',NULL,0),
(212,23250,30000,'October 2007',486,1977,5250,1500,3000,4500,'October','2007',23,'2017-01-05','Crevrand Kaondo',NULL,0),
(213,5700,6000,'October 2007',97.2,395.4,0,300,600,900,'October','2007',24,'2017-01-05','Crevrand Kaondo',NULL,0),
(214,5700,6000,'October 2007',97.2,395.4,0,300,600,900,'October','2007',25,'2017-01-05','Crevrand Kaondo',NULL,0),
(215,5700,6000,'October 2007',97.2,395.4,0,300,600,900,'October','2007',26,'2017-01-05','Crevrand Kaondo',NULL,0),
(216,5700,6000,'October 2007',97.2,395.4,0,300,600,900,'October','2007',27,'2017-01-05','Crevrand Kaondo',NULL,0),
(217,5700,6000,'October 2007',97.2,395.4,0,300,600,900,'October','2007',28,'2017-01-05','Crevrand Kaondo',NULL,0),
(218,5700,6000,'October 2007',97.2,395.4,0,300,600,900,'October','2007',29,'2017-01-05','Crevrand Kaondo',NULL,0),
(219,11782.6,13453.2,'November 2007',217.942,886.566,517.98,672.66,1345.32,2017.98,'November','2007',2,'2017-01-05','Crevrand Kaondo',NULL,0),
(220,7429.48,7820.5,'November 2007',126.692,515.371,0,391.025,782.05,1173.07,'November','2007',3,'2017-01-05','Crevrand Kaondo',NULL,0),
(221,6949.48,7820.5,'November 2007',126.692,515.371,0,391.025,782.05,1173.07,'November','2007',4,'2017-01-05','Crevrand Kaondo',NULL,0),
(222,6949.48,7820.5,'November 2007',126.692,515.371,0,391.025,782.05,1173.07,'November','2007',5,'2017-01-05','Crevrand Kaondo',NULL,0),
(223,7044.48,7920.5,'November 2007',128.312,521.961,0,396.025,792.05,1188.07,'November','2007',6,'2017-01-05','Crevrand Kaondo',NULL,0),
(224,6382.42,7223.6,'November 2007',117.022,476.035,0,361.18,722.36,1083.54,'November','2007',7,'2017-01-05','Crevrand Kaondo',NULL,0),
(225,6382.42,7223.6,'November 2007',117.022,476.035,0,361.18,722.36,1083.54,'November','2007',8,'2017-01-05','Crevrand Kaondo',NULL,0),
(226,7391.89,8286.2,'November 2007',134.236,546.061,0,414.31,828.62,1242.93,'November','2007',9,'2017-01-05','Crevrand Kaondo',NULL,0),
(227,11070.4,12563,'November 2007',203.521,827.902,384.45,628.15,1256.3,1884.45,'November','2007',10,'2017-01-05','Crevrand Kaondo',NULL,0),
(228,11729.2,13386.5,'November 2007',216.861,882.17,507.975,669.325,1338.65,2007.97,'November','2007',11,'2017-01-05','Crevrand Kaondo',NULL,0),
(229,6949.48,7820.5,'November 2007',126.692,515.371,0,391.025,782.05,1173.07,'November','2007',12,'2017-01-05','Crevrand Kaondo',NULL,0),
(230,6312.5,7150,'November 2007',115.83,471.185,0,357.5,715,1072.5,'November','2007',13,'2017-01-05','Crevrand Kaondo',NULL,0),
(231,6312.5,7150,'November 2007',115.83,471.185,0,357.5,715,1072.5,'November','2007',16,'2017-01-05','Crevrand Kaondo',NULL,0),
(232,6312.5,7150,'November 2007',115.83,471.185,0,357.5,715,1072.5,'November','2007',22,'2017-01-05','Crevrand Kaondo',NULL,0),
(233,6312.5,7150,'November 2007',115.83,471.185,0,357.5,715,1072.5,'November','2007',18,'2017-01-05','Crevrand Kaondo',NULL,0),
(234,6670,7150,'November 2007',115.83,471.185,0,0,0,0,'November','2007',19,'2017-01-05','Crevrand Kaondo',NULL,0),
(235,12039.2,13774,'November 2007',223.139,907.707,566.1,688.7,1377.4,2066.1,'November','2007',20,'2017-01-05','Crevrand Kaondo',NULL,0),
(236,9564,10080,'November 2007',163.296,664.272,12,504,1008,1512,'November','2007',21,'2017-01-05','Crevrand Kaondo',NULL,0),
(237,23250,30000,'November 2007',486,1977,5250,1500,3000,4500,'November','2007',23,'2017-01-05','Crevrand Kaondo',NULL,0),
(238,11782.6,13453.2,'December 2007',217.942,886.566,517.98,672.66,1345.32,2017.98,'December','2007',2,'2017-01-05','Crevrand Kaondo',NULL,0),
(239,7429.48,7820.5,'December 2007',126.692,515.371,0,391.025,782.05,1173.07,'December','2007',3,'2017-01-05','Crevrand Kaondo',NULL,0),
(240,11070.4,12563,'December 2007',203.521,827.902,384.45,628.15,1256.3,1884.45,'December','2007',10,'2017-01-05','Crevrand Kaondo',NULL,0),
(241,6949.48,7820.5,'December 2007',126.692,515.371,0,391.025,782.05,1173.07,'December','2007',12,'2017-01-05','Crevrand Kaondo',NULL,0),
(242,6670,7150,'December 2007',115.83,471.185,0,0,0,0,'December','2007',19,'2017-01-05','Crevrand Kaondo',NULL,0),
(243,6312.5,7150,'December 2007',115.83,471.185,0,357.5,715,1072.5,'December','2007',13,'2017-01-05','Crevrand Kaondo',NULL,0),
(244,6312.5,7150,'December 2007',115.83,471.185,0,357.5,715,1072.5,'December','2007',18,'2017-01-05','Crevrand Kaondo',NULL,0),
(245,6312.5,7150,'December 2007',115.83,471.185,0,357.5,715,1072.5,'December','2007',22,'2017-01-05','Crevrand Kaondo',NULL,0),
(246,5700,6000,'November 2007',97.2,395.4,0,300,600,900,'November','2007',25,'2017-01-05','Crevrand Kaondo',NULL,0),
(247,5700,6000,'December 2007',97.2,395.4,0,300,600,900,'December','2007',27,'2017-01-05','Crevrand Kaondo',NULL,0),
(248,6312.5,7150,'December 2007',115.83,471.185,0,357.5,715,1072.5,'December','2007',16,'2017-01-05','Crevrand Kaondo',NULL,0),
(249,5700,6000,'December 2007',97.2,395.4,0,300,600,900,'December','2007',29,'2017-01-05','Crevrand Kaondo',NULL,0),
(250,6949.48,7820.5,'December 2007',126.692,515.371,0,391.025,782.05,1173.07,'December','2007',4,'2017-01-05','Crevrand Kaondo',NULL,0),
(251,6949.48,7820.5,'December 2007',126.692,515.371,0,391.025,782.05,1173.07,'December','2007',5,'2017-01-05','Crevrand Kaondo',NULL,0),
(252,7044.48,7920.5,'December 2007',128.312,521.961,0,396.025,792.05,1188.07,'December','2007',6,'2017-01-05','Crevrand Kaondo',NULL,0),
(253,6382.42,7223.6,'December 2007',117.022,476.035,0,361.18,722.36,1083.54,'December','2007',7,'2017-01-05','Crevrand Kaondo',NULL,0),
(254,6382.42,7223.6,'December 2007',117.022,476.035,0,361.18,722.36,1083.54,'December','2007',8,'2017-01-05','Crevrand Kaondo',NULL,0),
(255,7391.89,8286.2,'December 2007',134.236,546.061,0,414.31,828.62,1242.93,'December','2007',9,'2017-01-05','Crevrand Kaondo',NULL,0),
(256,12039.2,13774,'December 2007',223.139,907.707,566.1,688.7,1377.4,2066.1,'December','2007',20,'2017-01-05','Crevrand Kaondo',NULL,0),
(257,9564,10080,'December 2007',163.296,664.272,12,504,1008,1512,'December','2007',21,'2017-01-05','Crevrand Kaondo',NULL,0),
(258,5700,6000,'December 2007',97.2,395.4,0,300,600,900,'December','2007',24,'2017-01-05','Crevrand Kaondo',NULL,0),
(259,5700,6000,'December 2007',97.2,395.4,0,300,600,900,'December','2007',26,'2017-01-05','Crevrand Kaondo',NULL,0),
(260,7836.53,8316.53,'January 2008',134.728,548.059,0,0,0,0,'January','2008',4,'2017-01-05','Crevrand Kaondo',NULL,0),
(261,7104.76,7584.76,'January 2008',122.873,499.836,0,0,0,0,'January','2008',7,'2017-01-05','Crevrand Kaondo',NULL,0),
(262,11621.6,11907.8,'January 2008',192.906,784.724,286.17,0,0,0,'January','2008',3,'2017-01-05','Crevrand Kaondo',NULL,0),
(263,25625,31250,'January 2008',506.25,2059.38,5625,0,0,0,'January','2008',23,'2017-01-05','Crevrand Kaondo',NULL,0),
(264,6136.36,6136.36,'January 2008',99.409,404.386,0,0,0,0,'January','2008',29,'2017-01-05','Crevrand Kaondo',NULL,0),
(265,5700,6000,'January 2008',97.2,395.4,0,300,600,900,'January','2008',32,'2017-01-05','Crevrand Kaondo',NULL,0),
(266,13313.3,14462.7,'January 2008',234.296,953.092,669.405,0,0,0,'January','2008',20,'2017-01-05','Crevrand Kaondo',NULL,0),
(267,8052.88,8532.88,'January 2008',138.233,562.317,0,0,0,0,'January','2008',8,'2017-01-05','Crevrand Kaondo',NULL,0),
(268,14057,15410,'January 2008',249.642,1015.52,873,0,0,0,'January','2008',2,'2017-01-05','Crevrand Kaondo',NULL,0),
(269,8418.25,8898.25,'January 2008',144.152,586.395,0,0,0,0,'January','2008',9,'2017-01-05','Crevrand Kaondo',NULL,0),
(270,7000,7000,'January 2008',113.4,461.3,0,0,0,0,'January','2008',27,'2017-01-05','Crevrand Kaondo',NULL,0),
(271,9576.27,10066.2,'January 2008',163.072,663.363,9.93,0,0,0,'January','2008',22,'2017-01-05','Crevrand Kaondo',NULL,0),
(272,14476.9,16009.8,'January 2008',259.359,1055.05,1052.94,0,0,0,'January','2008',10,'2017-01-05','Crevrand Kaondo',NULL,0),
(273,8306.6,8786.6,'January 2008',142.343,579.037,0,0,0,0,'January','2008',18,'2017-01-05','Crevrand Kaondo',NULL,0),
(274,12336.6,12748.9,'January 2008',206.532,840.153,412.335,0,0,0,'January','2008',21,'2017-01-05','Crevrand Kaondo',NULL,0),
(275,6000,6000,'January 2008',97.2,395.4,0,0,0,0,'January','2008',26,'2017-01-05','Crevrand Kaondo',NULL,0),
(276,8110.39,9042.52,'January 2008',146.489,595.902,0,452.126,904.252,1356.38,'January','2008',13,'2017-01-05','Crevrand Kaondo',NULL,0),
(277,7836.53,8316.53,'January 2008',134.728,548.059,0,0,0,0,'January','2008',19,'2017-01-05','Crevrand Kaondo',NULL,0),
(278,5700,6000,'January 2008',97.2,395.4,0,300,600,900,'January','2008',25,'2017-01-05','Crevrand Kaondo',NULL,0),
(279,7836.53,8316.53,'January 2008',134.728,548.059,0,0,0,0,'January','2008',5,'2017-01-05','Crevrand Kaondo',NULL,0),
(280,13706.9,14925.8,'February 2008',241.798,983.61,738.87,0,0,0,'February','2008',2,'2017-01-08','Crevrand Kaondo',NULL,0),
(281,9316.53,9316.53,'February 2008',150.928,613.959,0,0,0,0,'February','2008',3,'2017-01-08','Crevrand Kaondo',NULL,0),
(282,8836.53,9316.53,'February 2008',150.928,613.959,0,0,0,0,'February','2008',4,'2017-01-08','Crevrand Kaondo',NULL,0),
(283,8836.53,9316.53,'February 2008',150.928,613.959,0,0,0,0,'February','2008',5,'2017-01-08','Crevrand Kaondo',NULL,0),
(284,7044.48,7920.5,'February 2008',128.312,521.961,0,396.025,792.05,1188.07,'February','2008',6,'2017-01-08','Crevrand Kaondo',NULL,0),
(285,7104.76,7584.76,'February 2008',122.873,499.836,0,0,0,0,'February','2008',7,'2017-01-08','Crevrand Kaondo',NULL,0),
(286,8104.78,8584.78,'February 2008',139.073,565.737,0,0,0,0,'February','2008',8,'2017-01-08','Crevrand Kaondo',NULL,0),
(287,9220.51,9700.51,'February 2008',157.148,639.264,0,0,0,0,'February','2008',9,'2017-01-08','Crevrand Kaondo',NULL,0),
(288,83133.7,114091,'February 2008',1848.27,7518.6,30477.3,0,0,0,'February','2008',10,'2017-01-08','Crevrand Kaondo',NULL,0),
(289,13647.4,14855.8,'February 2008',240.664,978.997,728.37,0,0,0,'February','2008',11,'2017-01-08','Crevrand Kaondo',NULL,0),
(290,6949.48,7820.5,'February 2008',126.692,515.371,0,391.025,782.05,1173.07,'February','2008',12,'2017-01-08','Crevrand Kaondo',NULL,0),
(291,8836.53,9316.53,'February 2008',150.928,613.959,0,0,0,0,'February','2008',13,'2017-01-08','Crevrand Kaondo',NULL,0),
(292,6743,7223,'February 2008',117.013,475.996,0,0,0,0,'February','2008',15,'2017-01-08','Crevrand Kaondo',NULL,0),
(293,6312.5,7150,'February 2008',115.83,471.185,0,357.5,715,1072.5,'February','2008',16,'2017-01-08','Crevrand Kaondo',NULL,0),
(294,6312.5,7150,'February 2008',115.83,471.185,0,357.5,715,1072.5,'February','2008',17,'2017-01-08','Crevrand Kaondo',NULL,0),
(295,65224.9,88507,'February 2008',1433.81,5832.61,22802.1,0,0,0,'February','2008',18,'2017-01-08','Crevrand Kaondo',NULL,0),
(296,7836.53,8316.53,'February 2008',134.728,548.059,0,0,0,0,'February','2008',19,'2017-01-08','Crevrand Kaondo',NULL,0),
(297,13953.9,15262.7,'February 2008',247.256,1005.81,828.81,0,0,0,'February','2008',20,'2017-01-08','Crevrand Kaondo',NULL,0),
(298,11176.4,11384,'February 2008',184.421,750.206,207.6,0,0,0,'February','2008',21,'2017-01-08','Crevrand Kaondo',NULL,0),
(299,8027,8507,'February 2008',137.813,560.611,0,0,0,0,'February','2008',22,'2017-01-08','Crevrand Kaondo',NULL,0),
(300,26780,32900,'February 2008',532.98,2168.11,6120,0,0,0,'February','2008',23,'2017-01-08','Crevrand Kaondo',NULL,0),
(301,7000,7000,'February 2008',113.4,461.3,0,0,0,0,'February','2008',27,'2017-01-08','Crevrand Kaondo',NULL,0),
(302,13706.9,14925.8,'January 2009',241.798,983.61,738.87,0,0,0,'January','2009',2,'2017-01-08','Crevrand Kaondo',NULL,0),
(303,8027,8507,'March 2008',137.813,560.611,0,0,0,0,'March','2008',22,'2017-01-08','Crevrand Kaondo',NULL,0),
(304,8027,8507,'April 2008',137.813,560.611,0,0,0,0,'April','2008',22,'2017-01-08','Crevrand Kaondo',NULL,0),
(305,8027,8507,'May 2008',137.813,560.611,0,0,0,0,'May','2008',22,'2017-01-08','Crevrand Kaondo',NULL,0),
(306,8027,8507,'June 2008',137.813,560.611,0,0,0,0,'June','2008',22,'2017-01-08','Crevrand Kaondo',NULL,0),
(307,8027,8507,'July 2008',137.813,560.611,0,0,0,0,'July','2008',22,'2017-01-08','Crevrand Kaondo',NULL,0),
(308,8027,8507,'August 2008',137.813,560.611,0,0,0,0,'August','2008',22,'2017-01-08','Crevrand Kaondo',NULL,0),
(309,8027,8507,'September 2008',137.813,560.611,0,0,0,0,'September','2008',22,'2017-01-08','Crevrand Kaondo',NULL,0),
(310,8027,8507,'October 2008',137.813,560.611,0,0,0,0,'October','2008',22,'2017-01-08','Crevrand Kaondo',NULL,0),
(311,8027,8507,'November 2008',137.813,560.611,0,0,0,0,'November','2008',22,'2017-01-08','Crevrand Kaondo',NULL,0),
(312,8027,8507,'December 2008',137.813,560.611,0,0,0,0,'December','2008',22,'2017-01-08','Crevrand Kaondo',NULL,0),
(313,13706.9,14925.8,'March 2008',241.798,983.61,738.87,0,0,0,'March','2008',2,'2017-01-08','Crevrand Kaondo',NULL,0),
(314,13706.9,14925.8,'April 2008',241.798,983.61,738.87,0,0,0,'April','2008',2,'2017-01-08','Crevrand Kaondo',NULL,0),
(315,13706.9,14925.8,'May 2008',241.798,983.61,738.87,0,0,0,'May','2008',2,'2017-01-08','Crevrand Kaondo',NULL,0),
(316,13706.9,14925.8,'June 2008',241.798,983.61,738.87,0,0,0,'June','2008',2,'2017-01-08','Crevrand Kaondo',NULL,0),
(317,13706.9,14925.8,'July 2008',241.798,983.61,738.87,0,0,0,'July','2008',2,'2017-01-08','Crevrand Kaondo',NULL,0),
(318,13706.9,14925.8,'August 2008',241.798,983.61,738.87,0,0,0,'August','2008',2,'2017-01-08','Crevrand Kaondo',NULL,0),
(319,13706.9,14925.8,'September 2008',241.798,983.61,738.87,0,0,0,'September','2008',2,'2017-01-08','Crevrand Kaondo',NULL,0),
(320,13706.9,14925.8,'October 2008',241.798,983.61,738.87,0,0,0,'October','2008',2,'2017-01-08','Crevrand Kaondo',NULL,0),
(321,13706.9,14925.8,'November 2008',241.798,983.61,738.87,0,0,0,'November','2008',2,'2017-01-08','Crevrand Kaondo',NULL,0),
(322,13706.9,14925.8,'December 2008',241.798,983.61,738.87,0,0,0,'December','2008',2,'2017-01-08','Crevrand Kaondo',NULL,0),
(323,26780,32900,'March 2008',532.98,2168.11,6120,0,0,0,'March','2008',23,'2017-01-08','Crevrand Kaondo',NULL,0),
(324,26780,32900,'April 2008',532.98,2168.11,6120,0,0,0,'April','2008',23,'2017-01-08','Crevrand Kaondo',NULL,0),
(325,26780,32900,'May 2008',532.98,2168.11,6120,0,0,0,'May','2008',23,'2017-01-08','Crevrand Kaondo',NULL,0),
(326,26780,32900,'June 2008',532.98,2168.11,6120,0,0,0,'June','2008',23,'2017-01-08','Crevrand Kaondo',NULL,0),
(327,26780,32900,'July 2008',532.98,2168.11,6120,0,0,0,'July','2008',23,'2017-01-08','Crevrand Kaondo',NULL,0),
(328,26780,32900,'August 2008',532.98,2168.11,6120,0,0,0,'August','2008',23,'2017-01-08','Crevrand Kaondo',NULL,0),
(329,26780,32900,'October 2008',532.98,2168.11,6120,0,0,0,'October','2008',23,'2017-01-08','Crevrand Kaondo',NULL,0),
(330,26780,32900,'November 2008',532.98,2168.11,6120,0,0,0,'November','2008',23,'2017-01-08','Crevrand Kaondo',NULL,0),
(331,26780,32900,'December 2008',532.98,2168.11,6120,0,0,0,'December','2008',23,'2017-01-08','Crevrand Kaondo',NULL,0),
(332,26780,32900,'September 2008',532.98,2168.11,6120,0,0,0,'September','2008',23,'2017-01-09','Crevrand Kaondo',NULL,0),
(333,6650,7000,'January 2008',113.4,461.3,0,350,700,1050,'January','2008',34,'2017-01-09','Crevrand Kaondo',NULL,0),
(334,6650,7000,'February 2008',113.4,461.3,0,350,700,1050,'February','2008',34,'2017-01-09','Crevrand Kaondo',NULL,0),
(335,6650,7000,'March 2008',113.4,461.3,0,350,700,1050,'March','2008',34,'2017-01-09','Crevrand Kaondo',NULL,0),
(336,6650,7000,'April 2008',113.4,461.3,0,350,700,1050,'April','2008',34,'2017-01-09','Crevrand Kaondo',NULL,0),
(337,6650,7000,'May 2008',113.4,461.3,0,350,700,1050,'May','2008',34,'2017-01-09','Crevrand Kaondo',NULL,0),
(338,6650,7000,'June 2008',113.4,461.3,0,350,700,1050,'June','2008',34,'2017-01-09','Crevrand Kaondo',NULL,0),
(339,6650,7000,'July 2008',113.4,461.3,0,350,700,1050,'July','2008',34,'2017-01-09','Crevrand Kaondo',NULL,0),
(340,9316.53,9316.53,'January 2009',150.928,613.959,0,0,0,0,'January','2009',3,'2017-01-09','Crevrand Kaondo',NULL,0),
(341,26780,32900,'January 2009',532.98,2168.11,6120,0,0,0,'January','2009',23,'2017-01-09','Crevrand Kaondo',NULL,0),
(342,6650,7000,'January 2009',113.4,461.3,0,350,700,1050,'January','2009',34,'2017-01-09','Crevrand Kaondo',NULL,0),
(343,13647.4,14855.8,'January 2009',240.664,978.997,728.37,0,0,0,'January','2009',11,'2017-01-09','Crevrand Kaondo',NULL,0),
(344,7601.65,8507,'January 2009',137.813,560.611,0,425.35,850.7,1276.05,'January','2009',18,'2017-01-09','Crevrand Kaondo',NULL,0),
(345,11550.9,11824.6,'January 2009',191.559,779.241,273.69,0,0,0,'January','2009',21,'2017-01-09','Crevrand Kaondo',NULL,0),
(346,8027,8507,'January 2009',137.813,560.611,0,0,0,0,'January','2009',22,'2017-01-09','Crevrand Kaondo',NULL,0),
(347,7125,7500,'January 2009',121.5,494.25,0,375,750,1125,'January','2009',24,'2017-01-09','Crevrand Kaondo',NULL,0),
(348,7125,7500,'January 2009',121.5,494.25,0,375,750,1125,'January','2009',27,'2017-01-09','Crevrand Kaondo',NULL,0),
(349,6000,6000,'January 2009',97.2,395.4,0,0,0,0,'January','2009',35,'2017-01-09','Crevrand Kaondo',NULL,0),
(350,13706.9,14925.8,'February 2009',241.798,983.61,738.87,0,0,0,'February','2009',2,'2017-01-09','Crevrand Kaondo',NULL,0),
(351,9316.53,9316.53,'February 2009',150.928,613.959,0,0,0,0,'February','2009',3,'2017-01-09','Crevrand Kaondo',NULL,0),
(352,8836.53,9316.53,'February 2009',150.928,613.959,0,0,0,0,'February','2009',4,'2017-01-09','Crevrand Kaondo',NULL,0),
(353,8104.78,8584.78,'February 2009',139.073,565.737,0,0,0,0,'February','2009',8,'2017-01-09','Crevrand Kaondo',NULL,0),
(354,9220.51,9700.51,'February 2009',157.148,639.264,0,0,0,0,'February','2009',9,'2017-01-09','Crevrand Kaondo',NULL,0),
(355,13647.4,14855.8,'February 2009',240.664,978.997,728.37,0,0,0,'February','2009',11,'2017-01-09','Crevrand Kaondo',NULL,0),
(356,25135,32900,'March 2009',532.98,2168.11,6120,1645,3290,4935,'March','2009',23,'2017-01-10','Crevrand Kaondo',NULL,0),
(357,9316.53,9316.53,'March 2009',150.928,613.959,0,0,0,0,'March','2009',3,'2017-01-10','Crevrand Kaondo',NULL,0),
(358,6650,7000,'March 2009',113.4,461.3,0,350,700,1050,'March','2009',34,'2017-01-10','Crevrand Kaondo',NULL,0),
(359,13706.9,14925.8,'March 2009',241.798,983.61,738.87,0,0,0,'March','2009',2,'2017-01-10','Crevrand Kaondo',NULL,0),
(360,7125,7500,'March 2009',121.5,494.25,0,375,750,1125,'March','2009',30,'2017-01-10','Crevrand Kaondo',NULL,0),
(361,7125,7500,'March 2009',121.5,494.25,0,375,750,1125,'March','2009',27,'2017-01-10','Crevrand Kaondo',NULL,0),
(362,8027,8507,'March 2009',137.813,560.611,0,0,0,0,'March','2009',22,'2017-01-10','Crevrand Kaondo',NULL,0),
(363,8836.53,9316.53,'March 2009',150.928,613.959,0,0,0,0,'March','2009',4,'2017-01-10','Crevrand Kaondo',NULL,0),
(364,7125,7500,'March 2009',121.5,494.25,0,375,750,1125,'March','2009',24,'2017-01-10','Crevrand Kaondo',NULL,0),
(365,25135,32900,'April 2009',532.98,2168.11,6120,1645,3290,4935,'April','2009',23,'2017-01-10','Crevrand Kaondo',NULL,0),
(366,13706.9,14925.8,'April 2009',241.798,983.61,738.87,0,0,0,'April','2009',2,'2017-01-10','Crevrand Kaondo',NULL,0),
(367,9316.53,9316.53,'April 2009',150.928,613.959,0,0,0,0,'April','2009',3,'2017-01-10','Crevrand Kaondo',NULL,0),
(368,8836.53,9316.53,'April 2009',150.928,613.959,0,0,0,0,'April','2009',4,'2017-01-10','Crevrand Kaondo',NULL,0),
(369,8104.78,8584.78,'April 2009',139.073,565.737,0,0,0,0,'April','2009',8,'2017-01-10','Crevrand Kaondo',NULL,0),
(370,6650,7000,'April 2009',113.4,461.3,0,350,700,1050,'April','2009',34,'2017-01-10','Crevrand Kaondo',NULL,0),
(371,8027,8507,'April 2009',137.813,560.611,0,0,0,0,'April','2009',22,'2017-01-10','Crevrand Kaondo',NULL,0),
(372,7125,7500,'April 2009',121.5,494.25,0,375,750,1125,'April','2009',27,'2017-01-10','Crevrand Kaondo',NULL,0),
(373,7125,7500,'April 2009',121.5,494.25,0,375,750,1125,'April','2009',24,'2017-01-10','Crevrand Kaondo',NULL,0),
(374,13706.9,14925.8,'May 2009',241.798,983.61,738.87,0,0,0,'May','2009',2,'2017-01-10','Crevrand Kaondo',NULL,0),
(375,9316.53,9316.53,'May 2009',150.928,613.959,0,0,0,0,'May','2009',3,'2017-01-10','Crevrand Kaondo',NULL,0),
(376,8836.53,9316.53,'May 2009',150.928,613.959,0,0,0,0,'May','2009',4,'2017-01-10','Crevrand Kaondo',NULL,0),
(377,8104.78,8584.78,'May 2009',139.073,565.737,0,0,0,0,'May','2009',8,'2017-01-10','Crevrand Kaondo',NULL,0),
(378,8027,8507,'May 2009',137.813,560.611,0,0,0,0,'May','2009',22,'2017-01-10','Crevrand Kaondo',NULL,0),
(379,25135,32900,'May 2009',532.98,2168.11,6120,1645,3290,4935,'May','2009',23,'2017-01-10','Crevrand Kaondo',NULL,0),
(380,7125,7500,'May 2009',121.5,494.25,0,375,750,1125,'May','2009',24,'2017-01-10','Crevrand Kaondo',NULL,0),
(381,7125,7500,'May 2009',121.5,494.25,0,375,750,1125,'May','2009',27,'2017-01-10','Crevrand Kaondo',NULL,0),
(382,7125,7500,'May 2009',121.5,494.25,0,375,750,1125,'May','2009',30,'2017-01-10','Crevrand Kaondo',NULL,0),
(383,6650,7000,'May 2009',113.4,461.3,0,350,700,1050,'May','2009',34,'2017-01-10','Crevrand Kaondo',NULL,0),
(384,25135,32900,'June 2009',532.98,2168.11,6120,1645,3290,4935,'June','2009',23,'2017-01-10','Crevrand Kaondo',NULL,0),
(385,9316.53,9316.53,'June 2009',150.928,613.959,0,0,0,0,'June','2009',3,'2017-01-10','Crevrand Kaondo',NULL,0),
(386,6650,7000,'June 2009',113.4,461.3,0,350,700,1050,'June','2009',34,'2017-01-10','Crevrand Kaondo',NULL,0),
(387,13706.9,14925.8,'June 2009',241.798,983.61,738.87,0,0,0,'June','2009',2,'2017-01-10','Crevrand Kaondo',NULL,0),
(388,7000,7000,'June 2009',113.4,461.3,0,0,0,0,'June','2009',29,'2017-01-10','Crevrand Kaondo',NULL,0),
(389,7125,7500,'June 2009',121.5,494.25,0,375,750,1125,'June','2009',30,'2017-01-10','Crevrand Kaondo',NULL,0),
(390,7125,7500,'June 2009',121.5,494.25,0,375,750,1125,'June','2009',27,'2017-01-10','Crevrand Kaondo',NULL,0),
(391,8027,8507,'June 2009',137.813,560.611,0,0,0,0,'June','2009',22,'2017-01-10','Crevrand Kaondo',NULL,0),
(392,8836.53,9316.53,'June 2009',150.928,613.959,0,0,0,0,'June','2009',4,'2017-01-10','Crevrand Kaondo',NULL,0),
(393,7125,7500,'June 2009',121.5,494.25,0,375,750,1125,'June','2009',24,'2017-01-10','Crevrand Kaondo',NULL,0),
(394,8104.78,8584.78,'June 2009',139.073,565.737,0,0,0,0,'June','2009',8,'2017-01-10','Crevrand Kaondo',NULL,0),
(395,15617.7,17639.6,'July 2009',241.798,983.61,1541.87,0,0,0,'July','2009',2,'2017-01-11','Crevrand Kaondo',NULL,0),
(396,15681.5,17045,'July 2009',150.928,613.959,1363.51,0,0,0,'July','2009',3,'2017-01-11','Crevrand Kaondo',NULL,0),
(397,9658.96,10163.5,'July 2009',150.928,613.959,24.5231,0,0,0,'July','2009',4,'2017-01-11','Crevrand Kaondo',NULL,0),
(398,12048.5,12974.7,'July 2009',139.073,565.737,446.208,0,0,0,'July','2009',8,'2017-01-11','Crevrand Kaondo',NULL,0),
(399,20593.3,24747.6,'July 2009',137.813,560.611,3674.28,0,0,0,'July','2009',22,'2017-01-11','Crevrand Kaondo',NULL,0),
(400,25135,32900,'July 2009',532.98,2168.11,6120,1645,3290,4935,'July','2009',23,'2017-01-11','Crevrand Kaondo',NULL,0),
(401,7806.82,8181.82,'July 2009',121.5,494.25,0,375,750,1125,'July','2009',24,'2017-01-11','Crevrand Kaondo',NULL,0),
(402,9511.36,9886.36,'July 2009',121.5,494.25,0,375,750,1125,'July','2009',27,'2017-01-11','Crevrand Kaondo',NULL,0),
(403,7125,7500,'July 2009',121.5,494.25,0,375,750,1125,'July','2009',30,'2017-01-11','Crevrand Kaondo',NULL,0),
(404,9939.77,10340.9,'July 2009',113.4,461.3,51.1365,350,700,1050,'July','2009',34,'2017-01-11','Crevrand Kaondo',NULL,0),
(405,13706.9,14925.8,'August 2009',241.798,983.61,738.87,0,0,0,'August','2009',2,'2017-01-12','Crevrand Kaondo',NULL,0),
(406,9316.53,9316.53,'August 2009',150.928,613.959,0,0,0,0,'August','2009',3,'2017-01-12','Crevrand Kaondo',NULL,0),
(407,6650,7000,'August 2009',113.4,461.3,0,350,700,1050,'August','2009',34,'2017-01-12','Crevrand Kaondo',NULL,0),
(408,8836.53,9316.53,'August 2009',150.928,613.959,0,0,0,0,'August','2009',4,'2017-01-12','Crevrand Kaondo',NULL,0),
(409,8104.78,8584.78,'August 2009',139.073,565.737,0,0,0,0,'August','2009',8,'2017-01-12','Crevrand Kaondo',NULL,0),
(410,8027,8507,'August 2009',137.813,560.611,0,0,0,0,'August','2009',22,'2017-01-12','Crevrand Kaondo',NULL,0),
(411,7125,7500,'August 2009',121.5,494.25,0,375,750,1125,'August','2009',24,'2017-01-12','Crevrand Kaondo',NULL,0),
(412,7125,7500,'August 2009',121.5,494.25,0,375,750,1125,'August','2009',27,'2017-01-12','Crevrand Kaondo',NULL,0),
(413,7125,7500,'August 2009',121.5,494.25,0,375,750,1125,'August','2009',30,'2017-01-12','Crevrand Kaondo',NULL,0),
(414,17042.4,19674.9,'September 2009',241.798,983.61,2152.48,0,0,0,'September','2009',2,'2017-01-12','Crevrand Kaondo',NULL,0),
(415,13369.7,13964.3,'September 2009',178.2,724.9,594.653,0,0,0,'September','2009',3,'2017-01-12','Crevrand Kaondo',NULL,0),
(416,13244.5,14381.8,'September 2009',183.06,744.67,657.273,0,0,0,'September','2009',4,'2017-01-12','Crevrand Kaondo',NULL,0),
(417,11647.7,13109.1,'September 2009',166.86,678.77,466.363,515,1030,1545,'September','2009',8,'2017-01-12','Crevrand Kaondo',NULL,0),
(418,16164.2,18420.3,'September 2009',166.86,678.77,1776.1,0,0,0,'September','2009',22,'2017-01-12','Crevrand Kaondo',NULL,0),
(419,25135,32900,'September 2009',532.98,2168.11,6120,1645,3290,4935,'September','2009',23,'2017-01-12','Crevrand Kaondo',NULL,0),
(420,11302.3,12090.9,'September 2009',153.9,626.05,313.637,475,950,1425,'September','2009',24,'2017-01-12','Crevrand Kaondo',NULL,0),
(421,7125,7500,'September 2009',121.5,494.25,0,375,750,1125,'September','2009',27,'2017-01-12','Crevrand Kaondo',NULL,0),
(422,9500,9500,'September 2009',153.9,626.05,0,0,0,0,'September','2009',30,'2017-01-12','Crevrand Kaondo',NULL,0),
(423,9000,9000,'September 2009',145.8,593.1,0,0,0,0,'September','2009',34,'2017-01-12','Crevrand Kaondo',NULL,0),
(424,7922.73,8272.73,'September 2009',113.4,461.3,0,350,700,1050,'September','2009',36,'2017-01-12','Crevrand Kaondo',NULL,0),
(425,5700,6000,'September 2009',97.2,395.4,0,300,600,900,'September','2009',37,'2017-01-12','Crevrand Kaondo',NULL,0),
(426,8877.27,9227.27,'September 2009',113.4,461.3,0,350,700,1050,'September','2009',38,'2017-01-12','Crevrand Kaondo',NULL,0),
(427,10886.4,11454.5,'September 2009',113.4,461.3,218.182,350,700,1050,'September','2009',39,'2017-01-12','Crevrand Kaondo',NULL,0),
(428,15488.2,17454.6,'October 2009',259.2,1054.4,1486.36,0,0,0,'October','2009',2,'2017-01-12','Crevrand Kaondo',NULL,0),
(429,11700,12000,'October 2009',178.2,724.9,300,0,0,0,'October','2009',3,'2017-01-12','Crevrand Kaondo',NULL,0),
(430,10933.2,12327.3,'October 2009',183.06,744.67,349.091,565,1130,1695,'October','2009',4,'2017-01-12','Crevrand Kaondo',NULL,0),
(431,10055.9,11236.4,'October 2009',166.86,678.77,185.455,515,1030,1545,'October','2009',8,'2017-01-12','Crevrand Kaondo',NULL,0),
(432,9775,10300,'October 2009',166.86,678.77,45,0,0,0,'October','2009',22,'2017-01-12','Crevrand Kaondo',NULL,0),
(433,9834.09,10363.6,'October 2009',153.9,626.05,54.5454,475,950,1425,'October','2009',24,'2017-01-12','Crevrand Kaondo',NULL,0),
(434,7806.82,8181.82,'October 2009',121.5,494.25,0,375,750,1125,'October','2009',27,'2017-01-12','Crevrand Kaondo',NULL,0),
(435,10309.1,10363.6,'October 2009',153.9,626.05,54.5454,0,0,0,'October','2009',30,'2017-01-12','Crevrand Kaondo',NULL,0),
(436,9818.18,9818.18,'October 2009',145.8,593.1,0,0,0,0,'October','2009',34,'2017-01-12','Crevrand Kaondo',NULL,0),
(437,7286.36,7636.36,'October 2009',113.4,461.3,0,350,700,1050,'October','2009',36,'2017-01-12','Crevrand Kaondo',NULL,0),
(438,6245.46,6545.46,'October 2009',97.2,395.4,0,300,600,900,'October','2009',37,'2017-01-12','Crevrand Kaondo',NULL,0),
(439,7286.36,7636.36,'October 2009',113.4,461.3,0,350,700,1050,'October','2009',39,'2017-01-12','Crevrand Kaondo',NULL,0),
(440,25965.9,33522.7,'August 2009',405,1647.5,6306.82,1250,2500,3750,'August','2009',41,'2017-01-19','Crevrand Kaondo',NULL,0),
(441,23181.8,29545.4,'September 2009',405,1647.5,5113.63,1250,2500,3750,'September','2009',41,'2017-01-19','Crevrand Kaondo',NULL,0),
(442,21590.9,27272.7,'October 2009',405,1647.5,4431.82,1250,2500,3750,'October','2009',41,'2017-01-19','Crevrand Kaondo',NULL,0),
(443,14250,15000,'November 2009',178.2,724.9,750,0,0,0,'November','2009',3,'2017-01-19','Crevrand Kaondo',NULL,0),
(444,14470,16000,'November 2009',259.2,1054.4,1050,0,0,0,'November','2009',2,'2017-01-19','Crevrand Kaondo',NULL,0),
(445,12279.5,12681.8,'November 2009',145.8,593.1,402.273,0,0,0,'November','2009',34,'2017-01-19','Crevrand Kaondo',NULL,0),
(446,45750,60000,'November 2009',972,3954,14250,0,0,0,'November','2009',40,'2017-01-19','Crevrand Kaondo',NULL,0),
(447,31434.6,41335.2,'November 2009',405,1647.5,8650.56,1250,2500,3750,'November','2009',41,'2017-01-19','Crevrand Kaondo',NULL,0),
(448,11806.4,13354.5,'November 2009',183.06,744.67,503.182,565,1130,1695,'November','2009',4,'2017-01-19','Crevrand Kaondo',NULL,0),
(449,10851.8,12172.7,'November 2009',166.86,678.77,325.909,515,1030,1545,'November','2009',8,'2017-01-19','Crevrand Kaondo',NULL,0),
(450,24490.4,30314.8,'November 2009',166.86,678.77,5344.44,0,0,0,'November','2009',22,'2017-01-19','Crevrand Kaondo',NULL,0),
(451,7125,7500,'November 2009',121.5,494.25,0,375,750,1125,'November','2009',27,'2017-01-19','Crevrand Kaondo',NULL,0),
(452,9500,9500,'November 2009',153.9,626.05,0,0,0,0,'November','2009',30,'2017-01-19','Crevrand Kaondo',NULL,0),
(453,12675,13500,'November 2009',97.2,395.4,525,300,600,900,'November','2009',37,'2017-01-19','Crevrand Kaondo',NULL,0),
(454,11427.3,12090.9,'November 2009',113.4,461.3,313.637,350,700,1050,'November','2009',39,'2017-01-19','Crevrand Kaondo',NULL,0),
(455,14250,15000,'December 2009',178.2,724.9,750,0,0,0,'December','2009',3,'2017-01-26','Crevrand Kaondo',NULL,0),
(456,39090.9,52272.7,'December 2009',405,1647.5,11931.8,1250,2500,3750,'December','2009',41,'2017-01-26','Crevrand Kaondo',NULL,0),
(457,11043.2,11227.3,'December 2009',153.9,626.05,184.09,0,0,0,'December','2009',30,'2017-01-26','Crevrand Kaondo',NULL,0),
(458,5700,6000,'December 2010',97.2,395.4,0,300,600,900,'December','2010',37,'2017-01-26','Crevrand Kaondo',NULL,0),
(459,8659.09,9034.09,'December 2009',121.5,494.25,0,375,750,1125,'December','2009',27,'2017-01-26','Crevrand Kaondo',NULL,0),
(460,7286.36,7636.36,'December 2009',113.4,461.3,0,350,700,1050,'December','2009',38,'2017-01-26','Crevrand Kaondo',NULL,0),
(461,18959.9,22414.2,'December 2009',166.86,678.77,2974.26,0,0,0,'December','2009',22,'2017-01-26','Crevrand Kaondo',NULL,0),
(462,12576.7,13443.2,'December 2009',113.4,461.3,516.477,350,700,1050,'December','2009',44,'2017-01-26','Crevrand Kaondo',NULL,0),
(463,45750,60000,'December 2009',972,3954,14250,0,0,0,'December','2009',40,'2017-01-26','Crevrand Kaondo',NULL,0),
(464,7922.73,8272.73,'December 2009',113.4,461.3,0,350,700,1050,'December','2009',39,'2017-01-26','Crevrand Kaondo',NULL,0),
(465,13876,14560,'January 2011',185.328,753.896,684,0,0,0,'January','2011',3,'2017-01-26','Crevrand Kaondo',NULL,0),
(466,12608.4,13633.5,'January 2011',173.534,705.921,545.018,0,0,0,'January','2011',22,'2017-01-26','Crevrand Kaondo',NULL,0),
(467,13142.7,13697.3,'January 2011',160.056,651.092,554.591,0,0,0,'January','2011',24,'2017-01-26','Crevrand Kaondo',NULL,0),
(468,6240,6240,'January 2011',101.088,411.216,0,0,0,0,'January','2011',27,'2017-01-26','Crevrand Kaondo',NULL,0),
(469,11806.6,12125.5,'January 2011',160.056,651.092,318.818,0,0,0,'January','2011',30,'2017-01-26','Crevrand Kaondo',NULL,0),
(470,11103.8,11298.6,'January 2011',151.956,618.142,194.796,0,0,0,'January','2011',34,'2017-01-26','Crevrand Kaondo',NULL,0),
(471,9265.45,9265.45,'January 2011',117.936,479.752,0,0,0,0,'January','2011',38,'2017-01-26','Crevrand Kaondo',NULL,0),
(472,9927.27,9927.27,'January 2011',117.936,479.752,0,0,0,0,'January','2011',39,'2017-01-26','Crevrand Kaondo',NULL,0),
(473,47430,62400,'January 2011',1010.88,4112.16,14970,0,0,0,'January','2011',40,'2017-01-26','Crevrand Kaondo',NULL,0),
(474,12821.2,13319.1,'January 2011',117.936,479.752,497.863,0,0,0,'January','2011',42,'2017-01-26','Crevrand Kaondo',NULL,0),
(475,7280,7280,'January 2016',117.936,479.752,0,0,0,0,'January','2016',42,'2017-01-26','Crevrand Kaondo',NULL,0),
(476,7412.36,7776.36,'January 2011',117.936,479.752,0,364,728,1092,'January','2011',43,'2017-01-26','Crevrand Kaondo',NULL,0),
(477,19948,23660,'January 2011',117.936,479.752,3348,364,728,1092,'January','2011',44,'2017-01-26','Crevrand Kaondo',NULL,0),
(478,8570.55,8934.55,'January 2011',117.936,479.752,0,364,728,1092,'January','2011',45,'2017-01-26','Crevrand Kaondo',NULL,0),
(479,8736,9100,'January 2011',117.936,479.752,0,364,728,1092,'January','2011',46,'2017-01-26','Crevrand Kaondo',NULL,0),
(480,11121.8,11900.9,'January 2011',160.056,651.092,285.137,494,988,1482,'January','2011',47,'2017-01-26','Crevrand Kaondo',NULL,0),
(481,5928,6240,'January 2011',101.088,411.216,0,312,624,936,'January','2011',48,'2017-01-26','Crevrand Kaondo',NULL,0),
(482,8892,9360,'January 2011',151.632,616.824,0,468,936,1404,'January','2011',49,'2017-01-26','Crevrand Kaondo',NULL,0),
(483,20650,26000,'January 2011',421.2,1713.4,4050,1300,2600,3900,'January','2011',50,'2017-01-26','Crevrand Kaondo',NULL,0),
(484,7412.36,7776.36,'January 2011',117.936,479.752,0,364,728,1092,'January','2011',51,'2017-01-26','Crevrand Kaondo',NULL,0),
(485,6916,7280,'January 2011',117.936,479.752,0,364,728,1092,'January','2011',52,'2017-01-26','Crevrand Kaondo',NULL,0),
(486,6916,7280,'January 2011',117.936,479.752,0,364,728,1092,'January','2011',53,'2017-01-26','Crevrand Kaondo',NULL,0),
(487,15778.5,17703.6,'January 2011',117.936,479.752,1561.08,364,728,1092,'January','2011',54,'2017-01-26','Crevrand Kaondo',NULL,0),
(488,12808.8,13732.7,'January 2011',117.936,479.752,559.909,364,728,1092,'January','2011',55,'2017-01-26','Crevrand Kaondo',NULL,0),
(489,11887,12220,'February 2011',185.328,753.896,333,0,0,0,'February','2011',3,'2017-01-26','Crevrand Kaondo',NULL,0),
(490,10125.2,10712,'February 2011',173.534,705.921,106.8,0,0,0,'February','2011',22,'2017-01-26','Crevrand Kaondo',NULL,0),
(491,9880,9880,'February 2011',160.056,651.092,0,0,0,0,'February','2011',24,'2017-01-26','Crevrand Kaondo',NULL,0),
(492,6240,6240,'February 2011',101.088,411.216,0,0,0,0,'February','2011',27,'2017-01-26','Crevrand Kaondo',NULL,0),
(493,12474.7,12911.4,'February 2011',160.056,651.092,436.704,0,0,0,'February','2011',30,'2017-01-26','Crevrand Kaondo',NULL,0),
(494,9380,9380,'February 2011',151.956,618.142,0,0,0,0,'February','2011',34,'2017-01-26','Crevrand Kaondo',NULL,0),
(495,7280,7280,'February 2011',117.936,479.752,0,0,0,0,'February','2011',38,'2017-01-26','Crevrand Kaondo',NULL,0),
(496,10641.4,10754.5,'February 2011',117.936,479.752,113.183,0,0,0,'February','2011',39,'2017-01-26','Crevrand Kaondo',NULL,0),
(497,47430,62400,'February 2011',1010.88,4112.16,14970,0,0,0,'February','2011',40,'2017-01-26','Crevrand Kaondo',NULL,0),
(498,15795.1,17207.3,'February 2011',117.936,479.752,1412.18,0,0,0,'February','2011',42,'2017-01-26','Crevrand Kaondo',NULL,0),
(499,6916,7280,'February 2011',117.936,479.752,0,364,728,1092,'February','2011',43,'2017-01-26','Crevrand Kaondo',NULL,0),
(500,14562.5,15966.4,'February 2011',117.936,479.752,1039.91,364,728,1092,'February','2011',44,'2017-01-26','Crevrand Kaondo',NULL,0),
(501,6916,7280,'February 2011',117.936,479.752,0,364,728,1092,'February','2011',45,'2017-01-26','Crevrand Kaondo',NULL,0),
(502,6916,7280,'February 2010',117.936,479.752,0,364,728,1092,'February','2010',46,'2017-01-26','Crevrand Kaondo',NULL,0),
(503,9386,9880,'February 2011',160.056,651.092,0,494,988,1482,'February','2011',47,'2017-01-26','Crevrand Kaondo',NULL,0),
(504,5928,6240,'February 2011',101.088,411.216,0,312,624,936,'February','2011',48,'2017-01-26','Crevrand Kaondo',NULL,0),
(505,8892,9360,'February 2010',151.632,616.824,0,468,936,1404,'February','2010',49,'2017-01-26','Crevrand Kaondo',NULL,0),
(506,45750,60000,'January 2017',3954,972,11250,3000,6000,9000,'January','2017',70,'2017-01-27','Crevrand Kaondo','2017-06-16 02:51:12',0),
(507,45750,60000,'January 2017',3954,972,11250,3000,6000,9000,'January','2017',71,'2017-01-27','Crevrand Kaondo','2017-06-16 02:51:43',0),
(508,20650,26000,'February 2011',421.2,1713.4,4050,1300,2600,3900,'February','2011',50,'2017-01-27','Crevrand Kaondo',NULL,0),
(509,8892,9360,'February 2016',151.632,616.824,0,468,936,1404,'February','2016',49,'2017-01-27','Crevrand Kaondo',NULL,0),
(510,8892,9360,'February 2011',151.632,616.824,0,468,936,1404,'February','2011',49,'2017-01-27','Crevrand Kaondo',NULL,0),
(511,6916,7280,'February 2011',117.936,479.752,0,364,728,1092,'February','2011',51,'2017-01-27','Crevrand Kaondo',NULL,0),
(512,6916,7280,'February 2011',117.936,479.752,0,364,728,1092,'February','2011',52,'2017-01-27','Crevrand Kaondo',NULL,0),
(513,6916,7280,'February 2011',117.936,479.752,0,364,728,1092,'February','2011',53,'2017-01-27','Crevrand Kaondo',NULL,0),
(514,7000,7000,'February 2011',113.4,461.3,0,0,0,0,'February','2011',58,'2017-01-27','Crevrand Kaondo',NULL,0),
(515,19500,22500,'February 2011',364.5,1482.75,3000,0,0,0,'February','2011',59,'2017-01-27','Crevrand Kaondo',NULL,0),
(516,7000,7000,'February 2011',113.4,461.3,0,0,0,0,'February','2011',60,'2017-01-27','Crevrand Kaondo',NULL,0),
(517,6000,6000,'February 2011',97.2,395.4,0,0,0,0,'February','2011',61,'2017-01-27','Crevrand Kaondo',NULL,0),
(518,6000,6000,'February 2011',97.2,395.4,0,0,0,0,'February','2011',62,'2017-01-27','Crevrand Kaondo',NULL,0),
(519,7000,7000,'February 2011',113.4,461.3,0,0,0,0,'February','2011',63,'2017-01-27','Crevrand Kaondo',NULL,0),
(520,7000,7000,'February 2011',113.4,461.3,0,0,0,0,'February','2011',57,'2017-01-27','Crevrand Kaondo',NULL,0),
(521,7636.36,7636.36,'February 2011',97.2,395.4,0,0,0,0,'February','2011',64,'2017-01-27','Crevrand Kaondo',NULL,0),
(522,7280,7280,'February 2011',117.936,479.752,0,0,0,0,'February','2011',65,'2017-01-27','Crevrand Kaondo',NULL,0),
(523,7280,7280,'February 2011',117.936,479.752,0,0,0,0,'February','2011',66,'2017-01-27','Crevrand Kaondo',NULL,0),
(524,6000,6000,'February 2011',97.2,395.4,0,0,0,0,'February','2011',67,'2017-01-27','Crevrand Kaondo',NULL,0),
(525,6000,6000,'February 2011',97.2,395.4,0,0,0,0,'February','2011',68,'2017-01-27','Crevrand Kaondo',NULL,0),
(526,7776.36,7776.36,'February 2011',117.936,479.752,0,0,0,0,'February','2011',69,'2017-01-27','Crevrand Kaondo',NULL,0),
(527,19000,20000,'February 2017',324,1318,0,1000,2000,3000,'February','2017',1,'2017-02-13','Crevrand Kaondo',NULL,0),
(528,0,0,'February 2017',0,0,0,0,0,0,'February','2017',0,'2017-02-13','Crevrand Kaondo',NULL,0),
(529,0,0,'February 2017',0,0,0,0,0,0,'February','2017',0,'2017-02-13','Crevrand Kaondo',NULL,0),
(530,31250,35000,'February 2017',567,2306.5,3750,0,0,0,'February','2017',82,'2017-02-13','Crevrand Kaondo',NULL,0),
(531,19000,20000,'February 2017',324,1318,0,1000,2000,3000,'February','2017',79,'2017-02-13','Crevrand Kaondo',NULL,0),
(532,20000,20000,'February 2017',324,1318,0,0,0,0,'February','2017',78,'2017-02-13','Crevrand Kaondo',NULL,0),
(533,15000,15000,'February 2017',243,988.5,0,0,0,0,'February','2017',77,'2017-02-13','Crevrand Kaondo',NULL,0),
(534,24250,25000,'February 2017',405,1647.5,750,0,0,0,'February','2017',76,'2017-02-13','Crevrand Kaondo',NULL,0),
(535,15000,15000,'February 2017',243,988.5,0,0,0,0,'February','2017',75,'2017-02-13','Crevrand Kaondo',NULL,0),
(536,12216.3,12220,'January 2010',185.328,753.896,3.66,0,0,0,'January','2010',3,'2017-02-15','Crevrand Kaondo',NULL,0),
(537,10019.5,10019.5,'January 2010',151.956,618.142,0.0293175,0,0,0,'January','2010',34,'2017-02-15','Crevrand Kaondo',NULL,0),
(538,62245.8,62400,'January 2010',1010.88,4112.16,154.2,0,0,0,'January','2010',40,'2017-02-15','Crevrand Kaondo',NULL,0),
(539,13019.5,13025.6,'January 2010',113.4,461.3,6.07671,0,0,0,'January','2010',60,'2017-02-15','Crevrand Kaondo',NULL,0),
(540,7280,7280,'January 2010',117.936,479.752,0,0,0,0,'January','2010',42,'2017-02-15','Crevrand Kaondo',NULL,0),
(541,24655,26000,'January 2010',421.2,1713.4,45,1300,2600,3900,'January','2010',50,'2017-02-15','Crevrand Kaondo',NULL,0),
(542,12360.1,12960,'January 2010',192.456,782.892,5.88,594,1188,1782,'January','2010',27,'2017-02-15','Crevrand Kaondo',NULL,0),
(543,12090.9,12690,'January 2010',192.456,782.892,5.07,594,1188,1782,'January','2010',30,'2017-02-15','Crevrand Kaondo',NULL,0),
(544,10552.8,10553.6,'January 2010',160.056,651.092,0.830454,0,0,0,'January','2010',24,'2017-02-15','Crevrand Kaondo',NULL,0),
(545,9448.73,9912.73,'January 2010',150.336,611.552,0,464,928,1392,'January','2010',38,'2017-02-15','Crevrand Kaondo',NULL,0),
(546,6916,7280,'January 2010',117.936,479.752,0,364,728,1092,'January','2010',43,'2017-02-15','Crevrand Kaondo',NULL,0),
(547,9448.73,9912.73,'January 2010',150.336,611.552,0,464,928,1392,'January','2010',45,'2017-02-15','Crevrand Kaondo',NULL,0),
(548,9448.73,9912.73,'January 2010',150.336,611.552,0,464,928,1392,'January','2010',46,'2017-02-15','Crevrand Kaondo',NULL,0),
(549,9530.18,9998.18,'January 2010',151.632,616.824,0,468,936,1404,'January','2010',49,'2017-02-15','Crevrand Kaondo',NULL,0),
(550,38061.1,47230.1,'February 2017',567,2306.5,7419.03,1750,3500,5250,'February','2017',95,'2017-02-23','Crevrand Kaondo',NULL,0),
(551,34382.1,39474.4,'February 2017',567,2306.5,5092.33,0,0,0,'February','2017',74,'2017-02-23','Crevrand Kaondo',NULL,0),
(552,0,0,'February 2017',0,0,0,0,0,0,'February','2017',0,'2017-02-23','Crevrand Kaondo',NULL,0),
(553,29500,35000,'February 2017',567,2306.5,3750,1750,3500,5250,'February','2017',97,'2017-02-23','Crevrand Kaondo',NULL,0),
(554,33250,35000,'January 2015',567,2306.5,0,1750,3500,5250,'January','2015',95,'2017-02-26','Crevrand Kaondo',NULL,0),
(555,33250,35000,'February 2015',567,2306.5,0,1750,3500,5250,'February','2015',95,'2017-02-26','Crevrand Kaondo',NULL,0),
(556,33250,35000,'March 2015',567,2306.5,0,1750,3500,5250,'March','2015',95,'2017-02-26','Crevrand Kaondo',NULL,0),
(557,33250,35000,'April 2015',567,2306.5,0,1750,3500,5250,'April','2015',95,'2017-02-26','Crevrand Kaondo',NULL,0),
(558,33250,35000,'May 2015',567,2306.5,0,1750,3500,5250,'May','2015',95,'2017-02-26','Crevrand Kaondo',NULL,0),
(559,57846.3,61846.6,'June 2015',2306.5,567,2250.3,1750,3500,5250,'June','2015',95,'2017-02-26','Crevrand Kaondo','2017-06-25 16:08:30',0),
(561,33250,35000,'August 2015',567,2306.5,0,1750,3500,5250,'August','2015',95,'2017-02-26','Crevrand Kaondo',NULL,0),
(562,19000,20000,'September 2015',324,1318,0,1000,2000,3000,'September','2015',1,'2017-02-26','Crevrand Kaondo',NULL,0),
(563,33250,35000,'October 2015',567,2306.5,0,1750,3500,5250,'October','2015',95,'2017-02-26','Crevrand Kaondo',NULL,0),
(564,33250,35000,'November 2015',567,2306.5,0,1750,3500,5250,'November','2015',95,'2017-02-26','Crevrand Kaondo',NULL,0),
(565,33250,35000,'December 2015',567,2306.5,0,1750,3500,5250,'December','2015',95,'2017-02-26','Crevrand Kaondo',NULL,0),
(566,33250,35000,'January 2016',567,2306.5,0,1750,3500,5250,'January','2016',95,'2017-02-26','Crevrand Kaondo',NULL,0),
(567,33250,35000,'February 2016',567,2306.5,0,1750,3500,5250,'February','2016',95,'2017-02-26','Crevrand Kaondo',NULL,0),
(568,33250,35000,'March 2016',567,2306.5,0,1750,3500,5250,'March','2016',95,'2017-02-26','Crevrand Kaondo',NULL,0),
(570,33250,35000,'May 2016',567,2306.5,0,1750,3500,5250,'May','2016',95,'2017-02-26','Crevrand Kaondo',NULL,0),
(571,33250,35000,'June 2016',567,2306.5,0,1750,3500,5250,'June','2016',95,'2017-02-26','Crevrand Kaondo',NULL,0),
(572,33250,35000,'July 2016',567,2306.5,0,1750,3500,5250,'July','2016',95,'2017-02-26','Crevrand Kaondo',NULL,0),
(573,33250,35000,'August 2016',567,2306.5,0,1750,3500,5250,'August','2016',95,'2017-02-26','Crevrand Kaondo',NULL,0),
(574,33250,35000,'September 2016',567,2306.5,0,1750,3500,5250,'September','2016',95,'2017-02-26','Crevrand Kaondo',NULL,0),
(575,33250,35000,'October 2016',567,2306.5,0,1750,3500,5250,'October','2016',95,'2017-02-26','Crevrand Kaondo',NULL,0),
(576,33250,35000,'November 2016',567,2306.5,0,1750,3500,5250,'November','2016',95,'2017-02-26','Crevrand Kaondo',NULL,0),
(577,33250,35000,'December 2016',567,2306.5,0,1750,3500,5250,'December','2016',95,'2017-02-26','Crevrand Kaondo',NULL,0),
(578,37434.6,46335.2,'January 2017',2306.5,567,7150.56,1750,3500,5250,'January','2017',95,'2017-02-26','Crevrand Kaondo','2017-06-16 02:52:27',0),
(579,28500,30000,'February 2015',486,1977,0,1500,3000,4500,'February','2015',96,'2017-02-26','Crevrand Kaondo',NULL,0),
(580,28500,30000,'March 2015',486,1977,0,1500,3000,4500,'March','2015',96,'2017-02-26','Crevrand Kaondo',NULL,0),
(581,28500,30000,'April 2015',486,1977,0,1500,3000,4500,'April','2015',96,'2017-02-26','Crevrand Kaondo',NULL,0),
(582,19000,20000,'May 2015',324,1318,0,1000,2000,3000,'May','2015',1,'2017-02-26','Crevrand Kaondo',NULL,0),
(583,28500,30000,'June 2015',486,1977,0,1500,3000,4500,'June','2015',96,'2017-02-26','Crevrand Kaondo',NULL,0),
(584,28500,30000,'July 2015',486,1977,0,1500,3000,4500,'July','2015',96,'2017-02-26','Crevrand Kaondo',NULL,0),
(585,28500,30000,'August 2015',486,1977,0,1500,3000,4500,'August','2015',96,'2017-02-26','Crevrand Kaondo',NULL,0),
(586,28500,30000,'October 2015',486,1977,0,1500,3000,4500,'October','2015',96,'2017-02-26','Crevrand Kaondo',NULL,0),
(587,28500,30000,'November 2015',486,1977,0,1500,3000,4500,'November','2015',96,'2017-02-26','Crevrand Kaondo',NULL,0),
(588,28500,30000,'December 2015',486,1977,0,1500,3000,4500,'December','2015',96,'2017-02-26','Crevrand Kaondo',NULL,0),
(589,28500,30000,'January 2016',486,1977,0,1500,3000,4500,'January','2016',96,'2017-02-26','Crevrand Kaondo',NULL,0),
(590,19000,20000,'February 2016',324,1318,0,1000,2000,3000,'February','2016',1,'2017-02-26','Crevrand Kaondo',NULL,0),
(591,31571.6,37602.3,'February 2016',1977,486,4530.68,1500,3000,4500,'February','2016',96,'2017-02-26','Crevrand Kaondo','2017-06-26 08:57:39',0),
(592,28500,30000,'March 2016',486,1977,0,1500,3000,4500,'March','2016',96,'2017-02-26','Crevrand Kaondo',NULL,0),
(594,28500,30000,'May 2016',486,1977,0,1500,3000,4500,'May','2016',96,'2017-02-26','Crevrand Kaondo',NULL,0),
(595,28500,30000,'June 2016',486,1977,0,1500,3000,4500,'June','2016',96,'2017-02-26','Crevrand Kaondo',NULL,0),
(596,31440.3,37414.8,'July 2016',1977,486,4474.43,1500,3000,4500,'July','2016',96,'2017-02-26','Crevrand Kaondo','2017-06-27 03:31:44',0),
(597,28500,30000,'August 2016',486,1977,0,1500,3000,4500,'August','2016',96,'2017-02-26','Crevrand Kaondo',NULL,0),
(598,28500,30000,'September 2016',486,1977,0,1500,3000,4500,'September','2016',96,'2017-02-26','Crevrand Kaondo',NULL,0),
(599,28500,30000,'October 2016',486,1977,0,1500,3000,4500,'October','2016',96,'2017-02-26','Crevrand Kaondo',NULL,0),
(600,28500,30000,'November 2016',486,1977,0,1500,3000,4500,'November','2016',96,'2017-02-26','Crevrand Kaondo',NULL,0),
(601,28500,30000,'December 2016',486,1977,0,1500,3000,4500,'December','2016',96,'2017-02-26','Crevrand Kaondo',NULL,0),
(602,31261.4,37159.1,'January 2017',1977,486,4397.73,1500,3000,4500,'January','2017',96,'2017-02-26','Crevrand Kaondo','2017-06-16 02:55:25',0),
(603,30634.9,36264.2,'February 2017',486,1977,4129.26,1500,3000,4500,'February','2017',96,'2017-02-26','Crevrand Kaondo',NULL,0),
(604,10254.4,10705.5,'February 2010',145.8,593.1,1.05817,450,900,1350,'February','2010',34,'2017-02-26','Crevrand Kaondo',NULL,0),
(605,8550,9000,'March 2010',145.8,593.1,0,450,900,1350,'March','2010',34,'2017-02-26','Crevrand Kaondo',NULL,0),
(606,18973,20000,'April 2010',324,1318,27,1000,2000,3000,'April','2010',1,'2017-02-26','Crevrand Kaondo',NULL,0),
(607,18973,20000,'May 2010',324,1318,27,1000,2000,3000,'May','2010',1,'2017-02-26','Crevrand Kaondo',NULL,0),
(608,18973,20000,'June 2010',324,1318,27,1000,2000,3000,'June','2010',1,'2017-02-26','Crevrand Kaondo',NULL,0),
(609,18973,20000,'July 2010',324,1318,27,1000,2000,3000,'July','2010',1,'2017-02-26','Crevrand Kaondo',NULL,0),
(610,18973,20000,'August 2010',324,1318,27,1000,2000,3000,'August','2010',1,'2017-02-26','Crevrand Kaondo',NULL,0),
(611,18973,20000,'September 2010',324,1318,27,1000,2000,3000,'September','2010',1,'2017-02-26','Crevrand Kaondo',NULL,0),
(612,8550,9000,'October 2010',145.8,593.1,0,450,900,1350,'October','2010',34,'2017-02-26','Crevrand Kaondo',NULL,0),
(613,8550,9000,'November 2010',145.8,593.1,0,450,900,1350,'November','2010',34,'2017-02-26','Crevrand Kaondo',NULL,0),
(614,8550,9000,'December 2010',145.8,593.1,0,450,900,1350,'December','2010',34,'2017-02-26','Crevrand Kaondo',NULL,0),
(615,19000,20000,'October 2016',324,1318,0,1000,2000,3000,'October','2016',81,'2017-02-26','Crevrand Kaondo',NULL,0),
(616,19000,20000,'November 2016',324,1318,0,1000,2000,3000,'November','2016',81,'2017-02-26','Crevrand Kaondo',NULL,0),
(617,19000,20000,'December 2016',324,1318,0,1000,2000,3000,'December','2016',81,'2017-02-26','Crevrand Kaondo',NULL,0),
(618,19000,20000,'January 2017',324,1318,0,1000,2000,3000,'January','2017',81,'2017-02-26','Crevrand Kaondo',NULL,0),
(619,7600,8000,'November 2012',129.6,527.2,0,400,800,1200,'November','2012',89,'2017-02-26','Crevrand Kaondo',NULL,0),
(620,8400,8800,'December 2012',129.6,527.2,0,400,800,1200,'December','2012',89,'2017-02-26','Crevrand Kaondo',NULL,0),
(621,7600,8000,'January 2013',129.6,527.2,0,400,800,1200,'January','2013',89,'2017-02-26','Crevrand Kaondo',NULL,0),
(622,7600,8000,'February 2013',129.6,527.2,0,400,800,1200,'February','2013',89,'2017-02-26','Crevrand Kaondo',NULL,0),
(623,7600,8000,'March 2013',129.6,527.2,0,400,800,1200,'March','2013',89,'2017-02-26','Crevrand Kaondo',NULL,0),
(624,7600,8000,'April 2013',129.6,527.2,0,400,800,1200,'April','2013',89,'2017-02-26','Crevrand Kaondo',NULL,0),
(625,7600,8000,'May 2013',129.6,527.2,0,400,800,1200,'May','2013',89,'2017-02-26','Crevrand Kaondo',NULL,0),
(626,7600,8000,'June 2013',129.6,527.2,0,400,800,1200,'June','2013',89,'2017-02-26','Crevrand Kaondo',NULL,0),
(627,7600,8000,'July 2013',129.6,527.2,0,400,800,1200,'July','2013',89,'2017-02-26','Crevrand Kaondo',NULL,0),
(628,7600,8000,'August 2013',129.6,527.2,0,400,800,1200,'August','2013',89,'2017-02-26','Crevrand Kaondo',NULL,0),
(629,7600,8000,'September 2013',129.6,527.2,0,400,800,1200,'September','2013',89,'2017-02-26','Crevrand Kaondo',NULL,0),
(630,7600,8000,'October 2013',129.6,527.2,0,400,800,1200,'October','2013',89,'2017-02-26','Crevrand Kaondo',NULL,0),
(631,7600,8000,'November 2013',129.6,527.2,0,400,800,1200,'November','2013',89,'2017-02-26','Crevrand Kaondo',NULL,0),
(632,7600,8000,'December 2013',129.6,527.2,0,400,800,1200,'December','2013',89,'2017-02-26','Crevrand Kaondo',NULL,0),
(633,19000,20000,'January 2014',324,1318,0,1000,2000,3000,'January','2014',89,'2017-02-27','Crevrand Kaondo',NULL,0),
(634,19000,20000,'February 2014',324,1318,0,1000,2000,3000,'February','2014',89,'2017-02-27','Crevrand Kaondo',NULL,0),
(635,19000,20000,'March 2014',324,1318,0,1000,2000,3000,'March','2014',89,'2017-02-27','Crevrand Kaondo',NULL,0),
(636,19000,20000,'April 2014',324,1318,0,1000,2000,3000,'April','2014',89,'2017-02-27','Crevrand Kaondo',NULL,0),
(637,19000,20000,'May 2014',324,1318,0,1000,2000,3000,'May','2014',89,'2017-02-27','Crevrand Kaondo',NULL,0),
(638,19000,20000,'June 2014',324,1318,0,1000,2000,3000,'June','2014',89,'2017-02-27','Crevrand Kaondo',NULL,0),
(639,19000,20000,'July 2014',324,1318,0,1000,2000,3000,'July','2014',89,'2017-02-27','Crevrand Kaondo',NULL,0),
(640,19000,20000,'August 2014',324,1318,0,1000,2000,3000,'August','2014',89,'2017-02-27','Crevrand Kaondo',NULL,0),
(641,19000,20000,'September 2014',324,1318,0,1000,2000,3000,'September','2014',89,'2017-02-27','Crevrand Kaondo',NULL,0),
(642,19000,20000,'October 2014',324,1318,0,1000,2000,3000,'October','2014',89,'2017-02-27','Crevrand Kaondo',NULL,0),
(643,19000,20000,'December 2014',324,1318,0,1000,2000,3000,'December','2014',89,'2017-02-27','Crevrand Kaondo',NULL,0),
(644,19000,20000,'November 2014',324,1318,0,1000,2000,3000,'November','2014',89,'2017-02-27','Crevrand Kaondo',NULL,0),
(645,20850,24000,'January 2015',388.8,1581.6,1950,1200,2400,3600,'January','2015',89,'2017-02-27','Crevrand Kaondo',NULL,0),
(646,20850,24000,'February 2015',388.8,1581.6,1950,1200,2400,3600,'February','2015',89,'2017-02-27','Crevrand Kaondo',NULL,0),
(647,20850,24000,'March 2015',388.8,1581.6,1950,1200,2400,3600,'March','2015',89,'2017-02-27','Crevrand Kaondo',NULL,0),
(648,20850,24000,'April 2015',388.8,1581.6,1950,1200,2400,3600,'April','2015',89,'2017-02-27','Crevrand Kaondo',NULL,0),
(649,20850,24000,'May 2015',388.8,1581.6,1950,1200,2400,3600,'May','2015',89,'2017-02-27','Crevrand Kaondo',NULL,0),
(650,20850,24000,'June 2015',388.8,1581.6,1950,1200,2400,3600,'June','2015',89,'2017-02-27','Crevrand Kaondo',NULL,0),
(651,20850,24000,'July 2015',388.8,1581.6,1950,1200,2400,3600,'July','2015',89,'2017-02-27','Crevrand Kaondo',NULL,0),
(652,20850,24000,'August 2015',388.8,1581.6,1950,1200,2400,3600,'August','2015',89,'2017-02-27','Crevrand Kaondo',NULL,0),
(653,20850,24000,'September 2015',388.8,1581.6,1950,1200,2400,3600,'September','2015',89,'2017-02-27','Crevrand Kaondo',NULL,0),
(654,20850,24000,'October 2015',388.8,1581.6,1950,1200,2400,3600,'October','2015',89,'2017-02-27','Crevrand Kaondo',NULL,0),
(655,20850,24000,'November 2015',388.8,1581.6,1950,1200,2400,3600,'November','2015',89,'2017-02-27','Crevrand Kaondo',NULL,0),
(656,20850,24000,'December 2015',388.8,1581.6,1950,1200,2400,3600,'December','2015',89,'2017-02-27','Crevrand Kaondo',NULL,0),
(657,22880,24800,'January 2016',1581.6,388.8,720,1200,2400,3600,'January','2016',89,'2017-02-27','Crevrand Kaondo','2017-06-24 22:52:09',0),
(658,25300,29000,'February 2016',469.8,1911.1,2250,1450,2900,4350,'February','2016',89,'2017-02-27','Crevrand Kaondo',NULL,0),
(659,25300,29000,'March 2016',469.8,1911.1,2250,1450,2900,4350,'March','2016',89,'2017-02-27','Crevrand Kaondo',NULL,0),
(660,37150,45500,'April 2016',1911.1,469.8,6900,1450,2900,4350,'April','2016',89,'2017-02-27','Crevrand Kaondo','2017-06-26 19:40:36',0),
(661,35559.1,43227.3,'May 2016',1911.1,469.8,6218.19,1450,2900,4350,'May','2016',89,'2017-02-27','Crevrand Kaondo','2017-06-26 21:08:30',0),
(663,39456.9,48795.5,'July 2016',1911.1,469.8,7888.65,1450,2900,4350,'July','2016',89,'2017-02-27','Crevrand Kaondo','2017-06-27 02:01:51',0),
(665,42240.9,52772.7,'September 2016',1911.1,469.8,9081.81,1450,2900,4350,'September','2016',89,'2017-02-27','Brian Nkhata','2017-06-27 07:00:01',0),
(666,35559.1,43227.3,'October 2016',1911.1,469.8,6218.19,1450,2900,4350,'October','2016',89,'2017-02-27','Brian Nkhata','2017-06-27 07:34:02',0),
(667,26650,30500,'November 2016',1911.1,469.8,2400,1450,2900,4350,'November','2016',89,'2017-02-27','Brian Nkhata','2017-06-27 08:18:12',0),
(668,70419.9,93028.4,'December 2016',1911.1,469.8,21158.5,1450,2900,4350,'December','2016',89,'2017-02-27','Crevrand Kaondo','2017-06-27 15:52:10',0),
(669,46628.1,60004.5,'January 2017',2800.75,688.5,11251.3,2125,4250,6375,'January','2017',89,'2017-02-27','Crevrand Kaondo','2017-06-16 02:50:16',0),
(670,29500,35000,'February 2017',567,2306.5,3750,1750,3500,5250,'February','2017',89,'2017-02-27','Crevrand Kaondo',NULL,0),
(671,68374.7,91821,'March 2017',3492.7,858.6,20796.3,2650,5300,7950,'March','2017',22,'2017-03-26','Crevrand Kaondo','2017-07-19 18:50:53',0),
(672,45750,60000,'March 2017',972,3954,11250,3000,6000,9000,'March','2017',70,'2017-03-24','BricoHH Nkhata',NULL,0),
(673,45750,60000,'March 2017',972,3954,11250,3000,6000,9000,'March','2017',71,'2017-03-23','Crevrand Kaondo',NULL,0),
(674,35625,43750,'March 2017',567,2306.5,6375,1750,3500,5250,'March','2017',74,'2017-03-23','Crevrand Kaondo',NULL,0),
(675,24250,25000,'March 2017',405,1647.5,750,0,0,0,'March','2017',76,'2017-03-23','Crevrand Kaondo',NULL,0),
(676,15000,15000,'March 2017',243,988.5,0,0,0,0,'March','2017',77,'2017-03-23','Crevrand Kaondo',NULL,0),
(677,30072.7,33318.2,'March 2017',0,372.6,3245.45,0,0,0,'March','2017',79,'2017-04-05','BricoHH Nkhata',NULL,0),
(678,34081.8,39045.4,'March 2017',0,453.6,4963.63,0,0,0,'March','2017',80,'2017-04-05','BricoHH Nkhata',NULL,0),
(679,25172.7,26318.2,'March 2017',372.6,1515.7,1145.45,0,0,0,'March','2017',81,'2017-03-26','Crevrand Kaondo',NULL,0),
(680,31250,35000,'March 2017',567,2306.5,3750,0,0,0,'March','2017',82,'2017-03-23','Crevrand Kaondo',NULL,0),
(681,30263.6,33590.9,'March 2017',372.6,1515.7,3327.27,0,0,0,'March','2017',83,'2017-04-05','Crevrand Kaondo',NULL,0),
(682,30072.7,33318.2,'March 2017',0,372.6,3245.45,0,0,0,'March','2017',84,'2017-04-05','BricoHH Nkhata',NULL,0),
(683,40955,61700,'March 2017',886.14,3604.73,11760,2735,5470,8205,'March','2017',85,'2017-03-27','Crevrand Kaondo',NULL,0),
(684,35462.5,43375,'March 2017',534.6,2174.7,6262.5,1650,3300,4950,'March','2017',87,'2017-03-27','Crevrand Kaondo',NULL,0),
(685,34150,41500,'March 2017',2174.7,534.6,5700,1650,3300,4950,'March','2017',88,'2017-04-05','BricoHH Nkhata',NULL,0),
(686,45643.8,58062.5,'March 2017',567,2306.5,10668.8,1750,3500,5250,'March','2017',89,'2017-03-23','Crevrand Kaondo',NULL,0),
(687,49933.1,64725.9,'March 2017',688.5,2800.75,12667.8,2125,4250,6375,'March','2017',90,'2017-03-27','Crevrand Kaondo',NULL,0),
(688,51688.4,73971.6,'March 2017',3525.65,866.7,15441.5,2675,5350,8025,'March','2017',92,'2017-04-06','Crevrand Kaondo',NULL,0),
(689,41016.5,51630.7,'March 2017',607.5,2471.25,8739.2,1875,3750,5625,'March','2017',93,'2017-03-27','Crevrand Kaondo',NULL,0),
(690,39775,50000,'March 2017',639.9,2603.05,8250,1975,3950,5925,'March','2017',94,'2017-03-23','Crevrand Kaondo',NULL,0),
(691,38409.1,47727.3,'March 2017',567,2306.5,7568.19,1750,3500,5250,'March','2017',95,'2017-03-24','Crevrand Kaondo',NULL,0),
(692,31022.7,36818.2,'March 2017',486,1977,4295.45,1500,3000,4500,'March','2017',96,'2017-03-24','Crevrand Kaondo',NULL,0),
(693,34233,41761.4,'March 2017',567,2306.5,5778.41,1750,3500,5250,'March','2017',97,'2017-03-24','Crevrand Kaondo',NULL,0),
(694,43576.6,55430.9,'March 2017',2603.05,639.9,9879.27,1975,3950,5925,'March','2017',99,'2017-04-05','BricoHH Nkhata',NULL,0),
(695,46509.1,59727.3,'March 2017',2701.9,664.2,11168.2,2050,4100,6150,'March','2017',100,'2017-04-05','BricoHH Nkhata',NULL,0),
(696,49679.5,64363.6,'March 2017',2800.75,688.5,12559.1,2125,4250,6375,'March','2017',101,'2017-04-05','BricoHH Nkhata',NULL,0),
(697,46509.1,59727.3,'March 2017',2701.9,664.2,11168.2,2050,4100,6150,'March','2017',102,'2017-04-05','BricoHH Nkhata',NULL,0),
(698,50077.3,65181.8,'March 2017',3031.4,745.2,12804.5,2300,4600,6900,'March','2017',103,'2017-04-05','BricoHH Nkhata',NULL,0),
(699,32681.8,39045.4,'March 2017',1845.2,453.6,4963.63,1400,2800,4200,'March','2017',104,'2017-04-05','BricoHH Nkhata',NULL,0),
(700,39056.8,48545.4,'March 2017',2207.65,542.7,7813.63,1675,3350,5025,'March','2017',105,'2017-04-05','BricoHH Nkhata',NULL,0),
(701,29113.6,33590.9,'March 2017',1515.7,372.6,3327.27,1150,2300,3450,'March','2017',106,'2017-04-05','BricoHH Nkhata',NULL,0),
(702,42150,54000,'March 2017',3163.2,777.6,9450,2400,4800,7200,'March','2017',107,'2017-04-06','Crevrand Kaondo',NULL,0),
(703,48300,63000,'March 2017',3360.9,826.2,12150,2550,5100,7650,'March','2017',108,'2017-04-06','Crevrand Kaondo',NULL,0),
(704,34750,40000,'March 2017',648,2636,5250,0,0,0,'March','2017',109,'2017-03-26','Crevrand Kaondo',NULL,0),
(705,34750,40000,'March 2017',648,2636,5250,0,0,0,'March','2017',110,'2017-03-24','Crevrand Kaondo',NULL,0),
(706,44200,57000,'March 2017',793.8,3229.1,10350,2450,4900,7350,'March','2017',111,'2017-03-24','Crevrand Kaondo',NULL,0),
(707,50350,66000,'March 2017',842.4,3426.8,13050,2600,5200,7800,'March','2017',112,'2017-03-24','Crevrand Kaondo',NULL,0),
(708,46061.2,58694.6,'March 2017',2339.45,575.1,10858.4,1775,3550,5325,'March','2017',113,'2017-04-05','BricoHH Nkhata',NULL,0),
(709,54871,71744.3,'March 2017',680.4,2767.8,14773.3,2100,4200,6300,'March','2017',114,'2017-03-24','Crevrand Kaondo',NULL,0),
(710,58537.5,77125,'March 2017',712.8,2899.6,16387.5,2200,4400,6600,'March','2017',115,'2017-03-24','Crevrand Kaondo',NULL,0),
(711,32077.3,38181.8,'March 2017',453.6,1845.2,4704.55,1400,2800,4200,'March','2017',116,'2017-03-24','Crevrand Kaondo',NULL,0),
(712,35200,43000,'March 2017',534.6,2174.7,6150,1650,3300,4950,'March','2017',117,'2017-03-24','Crevrand Kaondo',NULL,0),
(713,45925,59000,'March 2017',688.5,2800.75,10950,2125,4250,6375,'March','2017',118,'2017-03-24','Crevrand Kaondo',NULL,0),
(714,45925,59000,'March 2017',688.5,2800.75,10950,2125,4250,6375,'March','2017',119,'2017-03-24','Crevrand Kaondo',NULL,0),
(715,33100,40000,'March 2017',534.6,2174.7,5250,1650,3300,4950,'March','2017',120,'2017-03-24','Crevrand Kaondo',NULL,0),
(716,50840.4,65914.8,'March 2017',664.2,2701.9,13024.4,2050,4100,6150,'March','2017',121,'2017-03-24','Crevrand Kaondo',NULL,0),
(717,42318.8,53562.5,'March 2017',623.7,2537.15,9318.75,1925,3850,5775,'March','2017',122,'2017-03-24','Crevrand Kaondo',NULL,0),
(718,49355.1,63971.6,'March 2017',704.7,2866.65,12441.5,2175,4350,6525,'March','2017',123,'2017-03-27','Crevrand Kaondo',NULL,0),
(719,26238.6,27840.9,'March 2017',405,1647.5,1602.27,0,0,0,'March','2017',124,'2017-03-24','Crevrand Kaondo',NULL,0),
(720,46575,60000,'March 2017',704.7,2866.65,11250,2175,4350,6525,'March','2017',126,'2017-03-24','Crevrand Kaondo',NULL,0),
(721,39775,50000,'March 2017',639.9,2603.05,8250,1975,3950,5925,'March','2017',127,'2017-03-24','Crevrand Kaondo',NULL,0),
(722,42917,54488.6,'March 2017',639.9,2603.05,9596.59,1975,3950,5925,'March','2017',128,'2017-03-24','Crevrand Kaondo',NULL,0),
(723,77350,104000,'March 2017',712.8,2899.6,24450,2200,4400,6600,'March','2017',129,'2017-03-24','Crevrand Kaondo',NULL,0),
(724,26238.6,27840.9,'March 2017',405,1647.5,1602.27,0,0,0,'March','2017',130,'2017-03-24','Crevrand Kaondo',NULL,0),
(725,64740.7,86093.8,'March 2017',737.1,2998.45,19078.1,2275,4550,6825,'March','2017',131,'2017-03-24','Crevrand Kaondo',NULL,0),
(726,41800,53000,'March 2017',664.2,2701.9,9150,2050,4100,6150,'March','2017',132,'2017-03-24','Crevrand Kaondo',NULL,0),
(727,31250,35000,'March 2017',567,2306.5,3750,0,0,0,'March','2017',133,'2017-03-24','Crevrand Kaondo',NULL,0),
(728,24250,25000,'March 2017',405,1647.5,750,0,0,0,'March','2017',134,'2017-03-24','Crevrand Kaondo',NULL,0),
(729,24250,25000,'March 2017',405,1647.5,750,0,0,0,'March','2017',135,'2017-03-24','Crevrand Kaondo',NULL,0),
(730,24250,25000,'March 2017',405,1647.5,750,0,0,0,'March','2017',136,'2017-03-24','Crevrand Kaondo',NULL,0),
(731,41750,50000,'March 2017',486,1977,8250,0,0,0,'March','2017',137,'2017-03-30','Crevrand Kaondo',NULL,0),
(732,24250,25000,'March 2017',405,1647.5,750,0,0,0,'March','2017',138,'2017-03-24','Crevrand Kaondo',NULL,0),
(733,24250,25000,'March 2017',405,1647.5,750,0,0,0,'March','2017',139,'2017-03-24','Crevrand Kaondo',NULL,0),
(734,20000,20000,'March 2017',324,1318,0,0,0,0,'March','2017',140,'2017-03-24','Crevrand Kaondo',NULL,0),
(735,20000,20000,'March 2017',324,1318,0,0,0,0,'March','2017',141,'2017-03-24','Crevrand Kaondo',NULL,0),
(736,146750,200000,'March 2017',3240,13180,53250,0,0,0,'March','2017',143,'2017-03-24','Crevrand Kaondo',NULL,0),
(737,20000,20000,'March 2017',324,1318,0,0,0,0,'March','2017',142,'2017-03-24','Crevrand Kaondo',NULL,0),
(738,27750,30000,'March 2017',486,1977,2250,0,0,0,'March','2017',144,'2017-03-24','Crevrand Kaondo',NULL,0),
(739,0,0,'March 2017',0,0,0,0,0,0,'March','2017',0,'2017-03-24','Crevrand Kaondo',NULL,0),
(740,50685.8,66551.1,'January 2017',858.6,3492.7,13215.3,2650,5300,7950,'January','2017',22,'2017-03-27','Crevrand Kaondo',NULL,0),
(741,44204.5,56363.6,'January 2017',648,2636,10159.1,2000,4000,6000,'January','2017',39,'2017-03-27','Crevrand Kaondo',NULL,0),
(742,54304.5,71363.6,'March 2017',3163.2,777.6,14659.1,2400,4800,7200,'March','2017',39,'2017-04-05','BricoHH Nkhata',NULL,0),
(743,27750,30000,'March 2017',486,1977,2250,0,0,0,'March','2017',145,'2017-04-02','Crevrand Kaondo',NULL,0),
(744,0,0,'April 2017',0,0,0,0,0,0,'April','2017',0,'2017-04-02','Crevrand Kaondo',NULL,0),
(745,27750,30000,'April 2017',486,1977,2250,0,0,0,'April','2017',144,'2017-04-02','Crevrand Kaondo',NULL,0),
(746,19000,20000,'January 2016',324,1318,0,1000,2000,3000,'January','2016',1,'2017-04-02','Crevrand Kaondo',NULL,0),
(747,30825,36750,'April 2017',2174.7,534.6,4275,1650,3300,4950,'April','2017',88,'2017-04-21','BricoHH Nkhata',NULL,0),
(748,25777.3,27181.8,'April 2017',0,372.6,1404.55,0,0,0,'April','2017',84,'2017-04-21','BricoHH Nkhata',NULL,0),
(749,40950,52000,'April 2017',2899.6,712.8,8850,2200,4400,6600,'April','2017',102,'2017-04-21','BricoHH Nkhata',NULL,0),
(750,36884.6,45585.2,'April 2017',2339.45,575.1,6925.56,1775,3550,5325,'April','2017',113,'2017-04-21','BricoHH Nkhata',NULL,0),
(751,24250,25000,'April 2017',0,405,750,0,0,0,'April','2017',138,'2017-04-21','BricoHH Nkhata',NULL,0),
(752,24950,28000,'April 2017',1845.2,453.6,1650,1400,2800,4200,'April','2017',116,'2017-04-21','BricoHH Nkhata',NULL,0),
(753,37452.3,46681.8,'April 2017',2603.05,639.9,7254.55,1975,3950,5925,'April','2017',99,'2017-04-21','BricoHH Nkhata',NULL,0),
(754,37950,48000,'April 2017',3163.2,777.6,7650,2400,4800,7200,'April','2017',107,'2017-04-21','BricoHH Nkhata',NULL,0),
(755,39900,51000,'April 2017',3360.9,826.2,8550,2550,5100,7650,'April','2017',108,'2017-04-21','BricoHH Nkhata',NULL,0),
(756,29512.5,34875,'April 2017',2174.7,534.6,3712.5,1650,3300,4950,'April','2017',117,'2017-04-21','BricoHH Nkhata',NULL,0),
(757,25777.3,27181.8,'April 2017',0,372.6,1404.55,0,0,0,'April','2017',83,'2017-04-21','BricoHH Nkhata',NULL,0),
(758,39244.4,48920.5,'April 2017',2306.5,567,7926.15,1750,3500,5250,'April','2017',89,'2017-04-21','BricoHH Nkhata',NULL,0),
(759,41981.6,53366.5,'April 2017',2800.75,688.5,9259.95,2125,4250,6375,'April','2017',90,'2017-04-21','BricoHH Nkhata',NULL,0),
(760,24250,25000,'April 2017',0,405,750,0,0,0,'April','2017',139,'2017-04-21','BricoHH Nkhata',NULL,0),
(761,27750,30000,'April 2017',0,486,2250,0,0,0,'April','2017',145,'2017-04-21','BricoHH Nkhata',NULL,0),
(762,33676.1,40965.9,'April 2017',2306.5,567,5539.77,1750,3500,5250,'April','2017',97,'2017-04-21','BricoHH Nkhata',NULL,0),
(763,34375,42500,'April 2017',2800.75,688.5,6000,2125,4250,6375,'April','2017',118,'2017-04-21','BricoHH Nkhata',NULL,0),
(764,20000,20000,'April 2017',0,324,0,0,0,0,'April','2017',142,'2017-04-21','BricoHH Nkhata',NULL,0),
(765,37358.3,53500,'April 2017',3525.65,866.7,9300,2675,5350,8025,'April','2017',92,'2017-04-21','BricoHH Nkhata',NULL,0),
(766,33287.6,40589.5,'April 2017',2471.25,607.5,5426.85,1875,3750,5625,'April','2017',93,'2017-04-21','BricoHH Nkhata',NULL,0),
(767,36065.3,44914.8,'April 2017',2800.75,688.5,6724.43,2125,4250,6375,'April','2017',119,'2017-04-21','BricoHH Nkhata',NULL,0),
(768,29512.5,34875,'April 2017',2174.7,534.6,3712.5,1650,3300,4950,'April','2017',120,'2017-04-21','BricoHH Nkhata',NULL,0),
(769,47097.7,60568.2,'April 2017',2701.9,664.2,11420.5,2050,4100,6150,'April','2017',121,'2017-04-21','BricoHH Nkhata',NULL,0),
(770,38600,49000,'April 2017',3229.1,793.8,7950,2450,4900,7350,'April','2017',111,'2017-04-21','BricoHH Nkhata',NULL,0),
(771,38618.2,48454.6,'April 2017',2701.9,664.2,7786.37,2050,4100,6150,'April','2017',100,'2017-04-21','BricoHH Nkhata',NULL,0),
(772,44625,57250,'April 2017',2899.6,712.8,10425,2200,4400,6600,'April','2017',115,'2017-04-21','BricoHH Nkhata',NULL,0),
(773,24250,25000,'April 2017',0,405,750,0,0,0,'April','2017',136,'2017-04-21','BricoHH Nkhata',NULL,0),
(774,45750,60000,'April 2017',3954,972,11250,3000,6000,9000,'April','2017',70,'2017-04-21','BricoHH Nkhata',NULL,0),
(775,35296.9,43531.2,'April 2017',2537.15,623.7,6309.38,1925,3850,5775,'April','2017',122,'2017-04-21','BricoHH Nkhata',NULL,0),
(776,24250,25000,'April 2017',0,405,750,0,0,0,'April','2017',76,'2017-04-21','BricoHH Nkhata',NULL,0),
(777,39784.1,50227.3,'April 2017',2800.75,688.5,8318.18,2125,4250,6375,'April','2017',101,'2017-04-21','BricoHH Nkhata',NULL,0),
(778,38139.2,47948.9,'April 2017',2866.65,704.7,7634.66,2175,4350,6525,'April','2017',126,'2017-04-21','BricoHH Nkhata',NULL,0),
(779,42504.5,54363.6,'April 2017',3031.4,745.2,9559.09,2300,4600,6900,'April','2017',103,'2017-04-21','BricoHH Nkhata',NULL,0),
(780,20000,20000,'April 2017',0,324,0,0,0,0,'April','2017',140,'2017-04-21','BricoHH Nkhata',NULL,0),
(781,32425,39500,'April 2017',2603.05,639.9,5100,1975,3950,5925,'April','2017',127,'2017-04-21','BricoHH Nkhata',NULL,0),
(782,28513.6,33090.9,'April 2017',1845.2,453.6,3177.27,1400,2800,4200,'April','2017',104,'2017-04-21','BricoHH Nkhata',NULL,0),
(783,29913.6,33090.9,'April 2017',0,453.6,3177.27,0,0,0,'April','2017',80,'2017-04-21','BricoHH Nkhata',NULL,0),
(784,26238.6,27840.9,'April 2017',0,405,1602.27,0,0,0,'April','2017',130,'2017-04-21','BricoHH Nkhata',NULL,0),
(785,25244.3,26420.4,'April 2017',0,405,1176.14,0,0,0,'April','2017',124,'2017-04-21','BricoHH Nkhata',NULL,0),
(786,41149.4,52142,'April 2017',2767.8,680.4,8892.6,2100,4200,6300,'April','2017',114,'2017-04-21','BricoHH Nkhata',NULL,0),
(787,45750,60000,'April 2017',3954,972,11250,3000,6000,9000,'April','2017',71,'2017-04-21','BricoHH Nkhata',NULL,0),
(788,58625,77250,'April 2017',2899.6,712.8,16425,2200,4400,6600,'April','2017',129,'2017-04-21','BricoHH Nkhata',NULL,0),
(789,30825,36750,'April 2017',2174.7,534.6,4275,1650,3300,4950,'April','2017',87,'2017-04-21','BricoHH Nkhata',NULL,0),
(790,37017,45738.6,'April 2017',2306.5,567,6971.58,1750,3500,5250,'April','2017',74,'2017-04-21','BricoHH Nkhata',NULL,0),
(791,25777.3,27181.8,'April 2017',0,372.6,1404.55,0,0,0,'April','2017',79,'2017-04-21','BricoHH Nkhata',NULL,0),
(792,42250,50000,'April 2017',3295,810,5250,2500,5000,7500,'April','2017',110,'2017-04-21','Crevrand Kaondo','2017-08-24 22:05:04',0),
(793,36055,54700,'April 2017',3604.73,886.14,9660,2735,5470,8205,'April','2017',85,'2017-04-21','BricoHH Nkhata',NULL,0),
(794,35025,43500,'April 2017',2866.65,704.7,6300,2175,4350,6525,'April','2017',123,'2017-04-21','BricoHH Nkhata',NULL,0),
(795,40550,52000,'April 2017',3426.8,842.4,8850,2600,5200,7800,'April','2017',112,'2017-04-21','BricoHH Nkhata',NULL,0),
(796,25777.3,27181.8,'April 2017',0,372.6,1404.55,0,0,0,'April','2017',81,'2017-04-21','BricoHH Nkhata',NULL,0),
(797,35567,43988.6,'April 2017',2603.05,639.9,6446.59,1975,3950,5925,'April','2017',94,'2017-04-21','BricoHH Nkhata',NULL,0),
(798,44059.1,56727.3,'April 2017',3163.2,777.6,10268.2,2400,4800,7200,'April','2017',39,'2017-04-21','BricoHH Nkhata',NULL,0),
(799,31250,35000,'April 2017',0,567,3750,0,0,0,'April','2017',82,'2017-04-21','BricoHH Nkhata',NULL,0),
(800,39105.1,48721.6,'April 2017',2306.5,567,7866.48,1750,3500,5250,'April','2017',95,'2017-04-21','BricoHH Nkhata',NULL,0),
(801,45735.2,58943.2,'April 2017',2998.45,737.1,10933,2275,4550,6825,'April','2017',131,'2017-04-21','BricoHH Nkhata',NULL,0),
(802,24250,25000,'April 2017',0,405,750,0,0,0,'April','2017',135,'2017-04-21','BricoHH Nkhata',NULL,0),
(803,32788.6,39590.9,'April 2017',2207.65,542.7,5127.27,1675,3350,5025,'April','2017',105,'2017-04-21','BricoHH Nkhata',NULL,0),
(804,24250,25000,'April 2017',0,405,750,0,0,0,'April','2017',134,'2017-04-21','BricoHH Nkhata',NULL,0),
(805,35567,43988.6,'April 2017',2603.05,639.9,6446.59,1975,3950,5925,'April','2017',128,'2017-04-21','BricoHH Nkhata',NULL,0),
(806,36498.3,45426.1,'April 2017',2701.9,664.2,6877.84,2050,4100,6150,'April','2017',132,'2017-04-21','BricoHH Nkhata',NULL,0),
(807,31082.4,36903.4,'April 2017',1977,486,4321.02,1500,3000,4500,'April','2017',96,'2017-04-21','BricoHH Nkhata',NULL,0),
(808,43030,51200,'April 2017',3374.08,829.44,5610,2560,5120,7680,'April','2017',109,'2017-04-21','Crevrand Kaondo','2017-08-24 22:03:09',0),
(809,24627.3,27181.8,'April 2017',1515.7,372.6,1404.55,1150,2300,3450,'April','2017',106,'2017-04-21','BricoHH Nkhata',NULL,0),
(810,27750,30000,'April 2017',0,486,2250,0,0,0,'April','2017',137,'2017-04-21','BricoHH Nkhata',NULL,0),
(811,31250,35000,'April 2017',0,567,3750,0,0,0,'April','2017',133,'2017-04-21','BricoHH Nkhata',NULL,0),
(812,0,0,'April 2017',0,0,0,0,0,0,'April','2017',0,'2017-04-21','BricoHH Nkhata',NULL,0),
(813,51529,67755.7,'April 2017',3492.7,858.6,13576.7,2650,5300,7950,'April','2017',22,'2017-04-21','BricoHH Nkhata',NULL,0),
(814,18100,20000,'January 2011',1318,324,0,1000,2000,3000,'January','2011',1,'2017-05-17','Brian Nkhata',NULL,0),
(815,18073,20000,'January 2010',1318,324,27,1000,2000,3000,'January','2010',1,'2017-05-17','Brian Nkhata',NULL,0),
(816,18073,20000,'January 2010',1318,324,27,1000,2000,3000,'January','2010',1,'2017-05-17','Brian Nkhata',NULL,0),
(817,18073,20000,'January 2010',1318,324,27,1000,2000,3000,'January','2010',1,'2017-05-17','Brian Nkhata',NULL,0),
(818,18073,20000,'January 2010',1318,324,27,1000,2000,3000,'January','2010',1,'2017-05-17','Brian Nkhata',NULL,0),
(819,18073,20000,'January 2010',1318,324,27,1000,2000,3000,'January','2010',1,'2017-05-17','Brian Nkhata',NULL,0),
(821,36600,45000,'May 2017',2174.7,534.6,6750,1650,3300,4950,'May','2017',88,'2017-05-20','Brian Nkhata','2017-05-21 07:06:50',0),
(822,21190.9,23636.4,'May 2017',1318,324,545.454,1000,2000,3000,'May','2017',1,'2017-05-20','Brian Nkhata',NULL,0),
(825,57427.3,76181.8,'May 2017',3492.7,858.6,16104.5,2650,5300,7950,'May','2017',22,'2017-05-21','Brian Nkhata','2017-05-21 08:29:39',0),
(826,45750,60000,'May 2017',3954,972,11250,3000,6000,9000,'May','2017',70,'2017-05-21','Brian Nkhata',NULL,0),
(827,45750,60000,'May 2017',3954,972,11250,3000,6000,9000,'May','2017',71,'2017-05-21','Brian Nkhata',NULL,0),
(828,37852.3,46931.8,'May 2017',2306.5,567,7329.54,1750,3500,5250,'May','2017',74,'2017-05-21','Crevrand Kaondo','2017-05-28 01:07:06',0),
(829,27750,30000,'May 2017',0,486,2250,0,0,0,'May','2017',76,'2017-05-21','Crevrand Kaondo','2017-05-28 09:07:18',0),
(830,31218.2,34954.5,'May 2017',0,372.6,3736.35,0,0,0,'May','2017',79,'2017-05-21','Brian Nkhata','2017-05-21 08:29:04',0),
(831,29181.8,32045.4,'May 2017',0,453.6,2863.64,0,0,0,'May','2017',80,'2017-05-21','Brian Nkhata','2017-05-21 08:24:48',0),
(834,31250,35000,'May 2017',0,567,3750,0,0,0,'May','2017',82,'2017-05-21','Brian Nkhata',NULL,0),
(835,26827.3,28681.8,'May 2017',0,372.6,1854.55,0,0,0,'May','2017',83,'2017-05-21','Brian Nkhata','2017-05-21 07:21:13',0),
(836,27925,30250,'May 2017',0,372.6,2325,0,0,0,'May','2017',84,'2017-05-21','Brian Nkhata','2017-05-21 07:07:14',0),
(837,36055,54700,'May 2017',3604.73,886.14,9660,2735,5470,8205,'May','2017',85,'2017-05-21','Brian Nkhata',NULL,0),
(838,36600,45000,'May 2017',2174.7,534.6,6750,1650,3300,4950,'May','2017',87,'2017-05-21','Brian Nkhata','2017-05-21 08:28:34',0),
(839,44122.5,56425,'May 2017',2800.75,688.5,10177.5,2125,4250,6375,'May','2017',89,'2017-05-21','Crevrand Kaondo','2017-05-28 08:50:17',0),
(841,40387.5,50875,'May 2017',2603.05,639.9,8512.5,1975,3950,5925,'May','2017',99,'2017-05-21','Brian Nkhata',NULL,0),
(842,39668.2,49954.6,'May 2017',2701.9,664.2,8236.37,2050,4100,6150,'May','2017',100,'2017-05-21','Crevrand Kaondo','2017-05-28 08:57:08',0),
(843,40834.1,51727.3,'May 2017',2800.75,688.5,8768.18,2125,4250,6375,'May','2017',101,'2017-05-21','Brian Nkhata','2017-05-21 08:16:07',0),
(844,46200,59500,'May 2017',2899.6,712.8,11100,2200,4400,6600,'May','2017',102,'2017-05-21','Brian Nkhata','2017-05-21 07:13:04',0),
(845,47945.5,62136.4,'May 2017',3031.4,745.2,11890.9,2300,4600,6900,'May','2017',103,'2017-05-21','Brian Nkhata','2017-05-21 08:20:26',0),
(846,29563.6,34590.9,'May 2017',1845.2,453.6,3627.27,1400,2800,4200,'May','2017',104,'2017-05-21','Brian Nkhata','2017-05-21 08:26:06',0),
(847,45109.1,58227.3,'May 2017',3163.2,777.6,10718.2,2400,4800,7200,'May','2017',39,'2017-05-21','Brian Nkhata','2017-05-21 08:31:03',0),
(848,33838.6,41090.9,'May 2017',2207.65,542.7,5577.27,1675,3350,5025,'May','2017',105,'2017-05-21','Brian Nkhata','2017-05-21 08:32:30',0),
(850,47127.3,60681.8,'May 2017',2767.8,680.4,11454.5,2100,4200,6300,'May','2017',114,'2017-05-21','Brian Nkhata','2017-05-21 08:27:45',0),
(852,39346.6,49102.3,'May 2017',2339.45,575.1,7980.69,1775,3550,5325,'May','2017',113,'2017-05-21','Brian Nkhata','2017-05-21 07:14:57',0),
(853,49000,63500,'May 2017',2899.6,712.8,12300,2200,4400,6600,'May','2017',115,'2017-05-21','Brian Nkhata','2017-05-21 08:14:48',0),
(855,35025,42750,'May 2017',2174.7,534.6,6075,1650,3300,4950,'May','2017',117,'2017-05-21','Brian Nkhata','2017-05-21 07:16:32',0),
(856,47595.5,61386.4,'May 2017',2800.75,688.5,11665.9,2125,4250,6375,'May','2017',90,'2017-05-21','Brian Nkhata','2017-05-21 07:59:12',0),
(857,23400,25500,'January 2016',1581.6,388.8,900,1200,2400,3600,'January','2016',118,'2017-05-21','Crevrand Kaondo','2017-06-24 22:54:50',0),
(858,18100,20000,'January 2017',1318,324,0,1000,2000,3000,'January','2017',1,'2017-05-21','Brian Nkhata',NULL,0),
(861,35025,42750,'May 2017',2174.7,534.6,6075,1650,3300,4950,'May','2017',120,'2017-05-21','Brian Nkhata','2017-05-21 08:05:49',0),
(862,53773.6,70105.1,'May 2017',2701.9,664.2,14281.5,2050,4100,6150,'May','2017',121,'2017-05-21','Brian Nkhata','2017-05-21 08:13:40',0),
(863,37112.5,46125,'May 2017',2537.15,623.7,7087.5,1925,3850,5775,'May','2017',122,'2017-05-21','Brian Nkhata','2017-05-21 08:15:16',0),
(864,61680.6,81579.5,'May 2017',2866.65,704.7,17723.8,2175,4350,6525,'May','2017',126,'2017-05-21','Brian Nkhata','2017-05-21 08:19:37',0),
(865,43538.6,55590.9,'May 2017',2800.75,688.5,9927.27,2125,4250,6375,'May','2017',119,'2017-05-21','Crevrand Kaondo','2017-05-28 08:44:12',0),
(866,44786.4,57159.1,'May 2017',2603.05,639.9,10397.7,1975,3950,5925,'May','2017',128,'2017-05-21','Brian Nkhata','2017-05-21 08:32:56',0),
(867,62650,83000,'May 2017',2899.6,712.8,18150,2200,4400,6600,'May','2017',129,'2017-05-21','Brian Nkhata','2017-05-21 08:28:09',0),
(868,30072.7,33318.2,'May 2017',0,405,3245.45,0,0,0,'May','2017',130,'2017-05-21','Brian Nkhata','2017-05-21 08:26:37',0),
(869,28481.8,31045.4,'May 2017',0,405,2563.64,0,0,0,'May','2017',124,'2017-05-21','Brian Nkhata','2017-05-21 08:27:16',0),
(870,26650,30500,'May 2016',1911.1,469.8,2400,1450,2900,4350,'May','2016',123,'2017-05-21','Crevrand Kaondo','2017-06-26 21:56:05',0),
(872,38502.3,48181.8,'May 2017',2603.05,639.9,7704.55,1975,3950,5925,'May','2017',94,'2017-05-21','Brian Nkhata','2017-05-21 08:30:40',0),
(873,45970.9,59279.8,'May 2017',2998.45,737.1,11033.9,2275,4550,6825,'May','2017',131,'2017-05-21','Brian Nkhata','2017-05-21 08:32:01',0),
(874,46761.7,60088.1,'May 2017',2701.9,664.2,11276.4,2050,4100,6150,'May','2017',132,'2017-05-21','Brian Nkhata','2017-05-21 08:33:22',0),
(875,38600,49000,'May 2017',3229.1,793.8,7950,2450,4900,7350,'May','2017',111,'2017-05-21','Brian Nkhata',NULL,0),
(876,37950,48000,'May 2017',3163.2,777.6,7650,2400,4800,7200,'May','2017',107,'2017-05-21','Brian Nkhata',NULL,0),
(877,39900,51000,'May 2017',3360.9,826.2,8550,2550,5100,7650,'May','2017',108,'2017-05-21','Brian Nkhata',NULL,0),
(878,43030,51200,'May 2017',3374.08,829.44,5610,2560,5120,7680,'May','2017',109,'2017-05-21','Crevrand Kaondo','2017-08-24 22:01:28',0),
(879,41750,50000,'May 2017',0,486,8250,0,0,0,'May','2017',137,'2017-05-21','Brian Nkhata','2017-05-21 08:37:44',0),
(880,40550,52000,'May 2017',3426.8,842.4,8850,2600,5200,7800,'May','2017',112,'2017-05-21','Brian Nkhata',NULL,0),
(881,24250,25000,'May 2017',0,405,750,0,0,0,'May','2017',138,'2017-05-21','Brian Nkhata',NULL,0),
(882,24250,25000,'May 2017',0,405,750,0,0,0,'May','2017',139,'2017-05-21','Brian Nkhata',NULL,0),
(883,27750,30000,'May 2017',0,486,2250,0,0,0,'May','2017',145,'2017-05-21','Brian Nkhata',NULL,0),
(884,33397.7,40568.2,'May 2017',2306.5,567,5420.45,1750,3500,5250,'May','2017',97,'2017-05-21','Brian Nkhata','2017-05-21 07:59:44',0),
(885,20000,20000,'May 2017',0,324,0,0,0,0,'May','2017',142,'2017-05-21','Brian Nkhata',NULL,0),
(886,46631.8,60795.4,'May 2017',3525.65,866.7,11488.6,2675,5350,8025,'May','2017',92,'2017-05-21','Brian Nkhata',NULL,0),
(887,24250,25000,'May 2017',0,405,750,0,0,0,'May','2017',136,'2017-05-21','Brian Nkhata',NULL,0),
(888,37873.9,47284.1,'May 2017',2603.05,639.9,7435.23,1975,3950,5925,'May','2017',127,'2017-05-21','Brian Nkhata','2017-05-21 08:21:01',0),
(889,20000,20000,'May 2017',0,324,0,0,0,0,'May','2017',140,'2017-05-21','Brian Nkhata',NULL,0),
(890,27750,30000,'May 2017',0,486,2250,0,0,0,'May','2017',144,'2017-05-21','Brian Nkhata',NULL,0),
(891,42250,50000,'May 2017',3295,810,5250,2500,5000,7500,'May','2017',110,'2017-05-21','Crevrand Kaondo','2017-08-24 22:01:46',0),
(892,41193.1,51704.5,'May 2017',2306.5,567,8761.35,1750,3500,5250,'May','2017',95,'2017-05-21','Brian Nkhata','2017-05-21 08:31:33',0),
(894,24250,25000,'May 2017',0,405,750,0,0,0,'May','2017',134,'2017-05-21','Brian Nkhata',NULL,0),
(895,32693.2,39204.6,'May 2017',1977,486,5011.37,1500,3000,4500,'May','2017',96,'2017-05-21','Brian Nkhata',NULL,0),
(896,24213.6,26590.9,'May 2017',1515.7,372.6,1227.27,1150,2300,3450,'May','2017',106,'2017-05-21','Brian Nkhata','2017-05-21 06:56:45',0),
(897,35426.1,40965.9,'May 2017',0,567,5539.77,0,0,0,'May','2017',133,'2017-05-21','Crevrand Kaondo','2017-05-28 09:33:38',0),
(898,40834.1,51727.3,'May 2017',2800.75,688.5,8768.18,2125,4250,6375,'May','2017',118,'2017-05-31','Crevrand Kaondo',NULL,0),
(899,38741.9,47845.5,'January 2016',1977,486,7603.65,1500,3000,4500,'January','2016',22,'2017-06-09','Crevrand Kaondo','2017-06-24 22:55:35',0),
(901,22880,24800,'January 2016',1581.6,388.8,720,1200,2400,3600,'January','2016',39,'2017-06-09','Brian Nkhata',NULL,0),
(902,40140,51200,'January 2016',3374.08,829.44,2250,2560,5120,7680,'January','2016',85,'2017-06-09','Brian Nkhata',NULL,0),
(903,27050,30800,'February 2016',1977,486,2250,1500,3000,4500,'February','2016',22,'2017-06-16','Crevrand Kaondo',NULL,0),
(904,26810,30800,'February 2017',1977,486,2490,1500,3000,4500,'February','2017',22,'2017-06-16','Crevrand Kaondo','2017-06-16 01:29:20',0),
(905,22880,24800,'February 2017',1581.6,388.8,720,1200,2400,3600,'February','2017',39,'2017-06-16','Crevrand Kaondo',NULL,0),
(906,45750,60000,'February 2017',3954,972,11250,3000,6000,9000,'February','2017',70,'2017-06-16','Crevrand Kaondo',NULL,0),
(907,45750,60000,'February 2017',3954,972,11250,3000,6000,9000,'February','2017',71,'2017-06-16','Crevrand Kaondo',NULL,0),
(908,27400,29500,'February 2017',0,453.6,2100,0,0,0,'February','2017',80,'2017-06-16','Crevrand Kaondo',NULL,0),
(909,23825,24500,'February 2017',0,372.6,675,0,0,0,'February','2017',83,'2017-06-16','Crevrand Kaondo',NULL,0),
(910,23825,24500,'February 2017',0,372.6,675,0,0,0,'February','2017',84,'2017-06-16','Crevrand Kaondo',NULL,0),
(911,33780,51200,'February 2017',3374.08,829.44,8610,2560,5120,7680,'February','2017',85,'2017-06-16','Crevrand Kaondo',NULL,0),
(912,29250,34500,'February 2017',2174.7,534.6,3600,1650,3300,4950,'February','2017',87,'2017-06-16','Crevrand Kaondo',NULL,0),
(913,19680,20800,'February 2017',1318,324,120,1000,2000,3000,'February','2017',88,'2017-06-16','Crevrand Kaondo',NULL,0),
(914,47088.3,60661.9,'February 2017',2800.75,688.5,11448.6,2125,4250,6375,'February','2017',90,'2017-06-16','Crevrand Kaondo',NULL,0),
(915,42801.7,55323.9,'February 2017',3525.65,866.7,9847.16,2675,5350,8025,'February','2017',92,'2017-06-16','Crevrand Kaondo',NULL,0),
(916,42801.7,55323.9,'February 2017',3525.65,866.7,9847.16,2675,5350,8025,'February','2017',92,'2017-06-16','Crevrand Kaondo',NULL,0),
(917,40387.5,50875,'February 2017',2603.05,639.9,8512.5,1975,3950,5925,'February','2017',94,'2017-06-16','Crevrand Kaondo',NULL,0),
(918,33475,41000,'February 2017',2603.05,639.9,5550,1975,3950,5925,'February','2017',99,'2017-06-16','Crevrand Kaondo',NULL,0),
(919,34450,42500,'February 2017',2701.9,664.2,6000,2050,4100,6150,'February','2017',100,'2017-06-16','Crevrand Kaondo',NULL,0),
(920,35425,44000,'February 2017',2800.75,688.5,6450,2125,4250,6375,'February','2017',101,'2017-06-16','Crevrand Kaondo',NULL,0),
(921,36400,45500,'February 2017',2899.6,712.8,6900,2200,4400,6600,'February','2017',102,'2017-06-16','Crevrand Kaondo',NULL,0),
(922,37700,47500,'February 2017',3031.4,745.2,7500,2300,4600,6900,'February','2017',103,'2017-06-16','Crevrand Kaondo',NULL,0),
(923,26000,29500,'February 2017',1845.2,453.6,2100,1400,2800,4200,'February','2017',104,'2017-06-16','Crevrand Kaondo',NULL,0),
(924,29575,35000,'February 2017',2207.65,542.7,3750,1675,3350,5025,'February','2017',105,'2017-06-16','Crevrand Kaondo',NULL,0),
(925,22675,24500,'February 2017',1515.7,372.6,675,1150,2300,3450,'February','2017',106,'2017-06-16','Crevrand Kaondo',NULL,0),
(926,37950,48000,'February 2017',3163.2,777.6,7650,2400,4800,7200,'February','2017',107,'2017-06-16','Crevrand Kaondo',NULL,0),
(927,34750,40000,'February 2017',0,648,5250,0,0,0,'February','2017',109,'2017-06-16','Crevrand Kaondo',NULL,0),
(928,34750,40000,'February 2017',0,648,5250,0,0,0,'February','2017',110,'2017-06-16','Crevrand Kaondo',NULL,0),
(929,38600,49000,'February 2017',3229.1,793.8,7950,2450,4900,7350,'February','2017',111,'2017-06-16','Crevrand Kaondo',NULL,0),
(930,40550,52000,'February 2017',3426.8,842.4,8850,2600,5200,7800,'February','2017',112,'2017-06-16','Crevrand Kaondo',NULL,0),
(931,39346.6,49102.3,'February 2017',2339.45,575.1,7980.69,1775,3550,5325,'February','2017',113,'2017-06-16','Crevrand Kaondo',NULL,0),
(932,43619.4,55670.5,'February 2017',2767.8,680.4,9951.15,2100,4200,6300,'February','2017',114,'2017-06-16','Crevrand Kaondo',NULL,0),
(933,43487.5,55625,'February 2017',2899.6,712.8,9937.5,2200,4400,6600,'February','2017',115,'2017-06-16','Crevrand Kaondo',NULL,0),
(934,29250,34500,'February 2017',2174.7,534.6,3600,1650,3300,4950,'February','2017',117,'2017-06-16','Crevrand Kaondo',NULL,0),
(935,36439.2,45448.9,'February 2017',2800.75,688.5,6884.66,2125,4250,6375,'February','2017',118,'2017-06-16','Crevrand Kaondo',NULL,0),
(936,35425,44000,'February 2017',2800.75,688.5,6450,2125,4250,6375,'February','2017',119,'2017-06-16','Crevrand Kaondo',NULL,0),
(937,29250,34500,'February 2017',2174.7,534.6,3600,1650,3300,4950,'February','2017',120,'2017-06-16','Crevrand Kaondo',NULL,0),
(938,52142.9,67775.6,'February 2017',2701.9,664.2,13582.7,2050,4100,6150,'February','2017',121,'2017-06-16','Crevrand Kaondo',NULL,0),
(939,32825,40000,'February 2017',2537.15,623.7,5250,1925,3850,5775,'February','2017',122,'2017-06-16','Crevrand Kaondo',NULL,0),
(940,25300,26500,'February 2017',0,405,1200,0,0,0,'February','2017',124,'2017-06-16','Crevrand Kaondo',NULL,0),
(941,36075,45000,'February 2017',2866.65,704.7,6750,2175,4350,6525,'February','2017',126,'2017-06-16','Crevrand Kaondo',NULL,0),
(942,33475,41000,'February 2017',2603.05,639.9,5550,1975,3950,5925,'February','2017',127,'2017-06-16','Crevrand Kaondo',NULL,0),
(943,33475,41000,'February 2017',2603.05,639.9,5550,1975,3950,5925,'February','2017',128,'2017-06-16','Crevrand Kaondo',NULL,0),
(944,56962.5,74875,'February 2017',2899.6,712.8,15712.5,2200,4400,6600,'February','2017',129,'2017-06-16','Crevrand Kaondo',NULL,0),
(945,44432.7,57082.4,'February 2017',2998.45,737.1,10374.7,2275,4550,6825,'February','2017',131,'2017-06-16','Crevrand Kaondo',NULL,0),
(946,39749.7,50071,'February 2017',2701.9,664.2,8271.31,2050,4100,6150,'February','2017',132,'2017-06-16','Crevrand Kaondo',NULL,0),
(947,29250,35000,'February 2017',0,567,3750,0,0,0,'February','2017',133,'2017-06-16','Crevrand Kaondo',NULL,0),
(948,24250,25000,'February 2017',0,405,750,0,0,0,'February','2017',134,'2017-06-16','Crevrand Kaondo',NULL,0),
(949,24250,25000,'February 2017',0,405,750,0,0,0,'February','2017',135,'2017-06-16','Crevrand Kaondo',NULL,0),
(950,24250,25000,'February 2017',0,405,750,0,0,0,'February','2017',136,'2017-06-16','Crevrand Kaondo',NULL,0),
(951,25750,30000,'February 2017',0,486,2250,0,0,0,'February','2017',137,'2017-06-16','Crevrand Kaondo',NULL,0),
(952,24250,25000,'February 2017',0,405,750,0,0,0,'February','2017',138,'2017-06-16','Crevrand Kaondo',NULL,0),
(953,24250,25000,'February 2017',0,405,750,0,0,0,'February','2017',139,'2017-06-16','Crevrand Kaondo',NULL,0),
(954,20000,20000,'February 2017',0,324,0,0,0,0,'February','2017',140,'2017-06-16','Crevrand Kaondo',NULL,0),
(955,20000,20000,'February 2017',0,324,0,0,0,0,'February','2017',142,'2017-06-16','Crevrand Kaondo',NULL,0),
(956,25750,30000,'February 2017',0,486,2250,0,0,0,'February','2017',144,'2017-06-16','Crevrand Kaondo',NULL,0),
(957,25750,30000,'February 2017',0,486,2250,0,0,0,'February','2017',145,'2017-06-16','Crevrand Kaondo',NULL,0),
(958,32750,40000,'February 2017',2636,648,5250,2000,4000,6000,'February','2017',146,'2017-06-16','Crevrand Kaondo',NULL,0),
(959,46535.8,60051.1,'January 2017',2965.5,729,11265.3,2250,4500,6750,'January','2017',22,'2017-06-16','Crevrand Kaondo',NULL,0),
(960,35418.1,40954.5,'January 2017',0,453.6,5536.35,0,0,0,'January','2017',80,'2017-06-16','Crevrand Kaondo',NULL,0),
(961,31250,35000,'January 2017',0,567,3750,0,0,0,'January','2017',82,'2017-06-16','Crevrand Kaondo',NULL,0),
(962,31218.2,34954.5,'January 2017',0,372.6,3736.35,0,0,0,'January','2017',83,'2017-06-16','Crevrand Kaondo',NULL,0),
(963,30486.4,33909.1,'January 2017',0,372.6,3422.73,0,0,0,'January','2017',84,'2017-06-16','Crevrand Kaondo',NULL,0),
(964,33780,51200,'January 2017',3374.08,829.44,8610,2560,5120,7680,'January','2017',85,'2017-06-16','Crevrand Kaondo',NULL,0),
(965,38175,47250,'January 2017',2174.7,534.6,7425,1650,3300,4950,'January','2017',87,'2017-06-16','Crevrand Kaondo',NULL,0),
(966,34650,42000,'January 2017',1977,486,5850,1500,3000,4500,'January','2017',88,'2017-06-16','Crevrand Kaondo',NULL,0),
(967,46412.2,59696,'January 2017',2800.75,688.5,11158.8,2125,4250,6375,'January','2017',90,'2017-06-16','Crevrand Kaondo',NULL,0),
(968,41525,53500,'January 2017',3525.65,866.7,9300,2675,5350,8025,'January','2017',92,'2017-06-16','Crevrand Kaondo',NULL,0),
(969,37088.4,46161.9,'January 2017',2603.05,639.9,7098.58,1975,3950,5925,'January','2017',94,'2017-06-16','Crevrand Kaondo',NULL,0),
(970,34720.2,42457.4,'January 2017',2306.5,567,5987.22,1750,3500,5250,'January','2017',97,'2017-06-16','Crevrand Kaondo',NULL,0),
(971,44786.4,57159.1,'January 2017',2603.05,639.9,10397.7,1975,3950,5925,'January','2017',99,'2017-06-16','Crevrand Kaondo',NULL,0),
(972,46190.9,59272.7,'January 2017',2701.9,664.2,11031.8,2050,4100,6150,'January','2017',100,'2017-06-16','Crevrand Kaondo',NULL,0),
(973,46190.9,59272.7,'January 2017',2701.9,664.2,11031.8,2050,4100,6150,'January','2017',100,'2017-06-16','Crevrand Kaondo',NULL,0),
(974,47595.5,61386.4,'January 2017',2800.75,688.5,11665.9,2125,4250,6375,'January','2017',101,'2017-06-16','Crevrand Kaondo',NULL,0),
(975,49445.5,64136.4,'January 2017',2899.6,712.8,12490.9,2200,4400,6600,'January','2017',102,'2017-06-16','Crevrand Kaondo',NULL,0),
(976,50872.7,66318.2,'January 2017',3031.4,745.2,13145.5,2300,4600,6900,'January','2017',103,'2017-06-16','Crevrand Kaondo',NULL,0),
(977,34018.1,40954.5,'January 2017',1845.2,453.6,5536.35,1400,2800,4200,'January','2017',104,'2017-06-16','Crevrand Kaondo',NULL,0),
(978,39168.1,48704.5,'January 2017',2207.65,542.7,7861.35,1675,3350,5025,'January','2017',105,'2017-06-16','Crevrand Kaondo',NULL,0),
(979,29336.4,33909.1,'January 2017',1515.7,372.6,3422.73,1150,2300,3450,'January','2017',106,'2017-06-16','Crevrand Kaondo',NULL,0),
(980,40240.9,51272.7,'January 2017',3163.2,777.6,8631.82,2400,4800,7200,'January','2017',107,'2017-06-16','Crevrand Kaondo',NULL,0),
(981,45104,58005.7,'January 2017',2965.5,729,10651.7,2250,4500,6750,'January','2017',22,'2017-06-17','Crevrand Kaondo',NULL,0),
(982,45254.5,57863.6,'January 2017',2636,648,10609.1,2000,4000,6000,'January','2017',39,'2017-06-17','Crevrand Kaondo',NULL,0),
(983,30486.4,33909.1,'January 2017',0,372.6,3422.73,0,0,0,'January','2017',79,'2017-06-17','Crevrand Kaondo',NULL,0),
(984,27750,30000,'January 2017',0,486,2250,0,0,0,'January','2017',76,'2017-06-17','Crevrand Kaondo',NULL,0),
(985,29500,35000,'January 2017',2306.5,567,3750,1750,3500,5250,'January','2017',74,'2017-06-17','Crevrand Kaondo',NULL,0),
(986,45750,60000,'January 2017',3954,972,11250,3000,6000,9000,'January','2017',71,'2017-06-17','Crevrand Kaondo',NULL,0),
(987,35418.1,40954.5,'January 2017',0,453.6,5536.35,0,0,0,'January','2017',80,'2017-06-17','Crevrand Kaondo',NULL,0),
(988,31250,35000,'January 2017',0,567,3750,0,0,0,'January','2017',82,'2017-06-17','Crevrand Kaondo',NULL,0),
(989,31218.2,34954.5,'January 2017',0,372.6,3736.35,0,0,0,'January','2017',83,'2017-06-17','Crevrand Kaondo',NULL,0),
(990,31218.2,34954.5,'January 2017',0,372.6,3736.35,0,0,0,'January','2017',83,'2017-06-17','Crevrand Kaondo',NULL,0),
(991,30486.4,33909.1,'January 2017',0,372.6,3422.73,0,0,0,'January','2017',84,'2017-06-17','Crevrand Kaondo',NULL,0),
(992,38175,47250,'January 2017',2174.7,534.6,7425,1650,3300,4950,'January','2017',87,'2017-06-17','Crevrand Kaondo',NULL,0),
(993,32750,40000,'January 2017',2636,648,5250,2000,4000,6000,'January','2017',146,'2017-06-17','Crevrand Kaondo',NULL,0),
(994,25750,30000,'January 2017',0,486,2250,0,0,0,'January','2017',145,'2017-06-17','Crevrand Kaondo',NULL,0),
(995,25750,30000,'January 2017',0,486,2250,0,0,0,'January','2017',144,'2017-06-17','Crevrand Kaondo',NULL,0),
(996,20000,20000,'January 2017',0,324,0,0,0,0,'January','2017',142,'2017-06-17','Crevrand Kaondo',NULL,0),
(997,20000,20000,'January 2017',0,324,0,0,0,0,'January','2017',140,'2017-06-17','Crevrand Kaondo',NULL,0),
(998,24250,25000,'January 2017',0,405,750,0,0,0,'January','2017',139,'2017-06-17','Crevrand Kaondo',NULL,0),
(999,24250,25000,'January 2017',0,405,750,0,0,0,'January','2017',138,'2017-06-17','Crevrand Kaondo',NULL,0),
(1000,25750,30000,'January 2017',0,486,2250,0,0,0,'January','2017',137,'2017-06-17','Crevrand Kaondo',NULL,0),
(1001,24250,25000,'January 2017',0,405,750,0,0,0,'January','2017',136,'2017-06-17','Crevrand Kaondo',NULL,0),
(1002,24250,25000,'January 2017',0,405,750,0,0,0,'January','2017',135,'2017-06-17','Crevrand Kaondo',NULL,0),
(1003,24250,25000,'January 2017',0,405,750,0,0,0,'January','2017',134,'2017-06-17','Crevrand Kaondo',NULL,0),
(1004,29250,35000,'January 2017',0,567,3750,0,0,0,'January','2017',133,'2017-06-17','Crevrand Kaondo',NULL,0),
(1005,47169.4,60670.5,'January 2017',2701.9,664.2,11451.2,2050,4100,6150,'January','2017',132,'2017-06-17','Crevrand Kaondo',NULL,0),
(1006,56919.4,74920.5,'January 2017',2998.45,737.1,15726.2,2275,4550,6825,'January','2017',131,'2017-06-17','Crevrand Kaondo',NULL,0),
(1007,43837.5,56125,'January 2017',2899.6,712.8,10087.5,2200,4400,6600,'January','2017',129,'2017-06-17','Crevrand Kaondo',NULL,0),
(1008,47064.4,60413.4,'January 2017',2603.05,639.9,11374,1975,3950,5925,'January','2017',128,'2017-06-17','Crevrand Kaondo',NULL,0),
(1009,38895,48742.9,'January 2017',2603.05,639.9,7872.87,1975,3950,5925,'January','2017',127,'2017-06-17','Crevrand Kaondo',NULL,0),
(1010,50348.4,65390.6,'January 2017',2866.65,704.7,12867.2,2175,4350,6525,'January','2017',126,'2017-06-17','Crevrand Kaondo',NULL,0),
(1011,25300,26500,'January 2017',0,405,1200,0,0,0,'January','2017',124,'2017-06-17','Crevrand Kaondo',NULL,0),
(1012,37418.8,46562.5,'January 2017',2537.15,623.7,7218.75,1925,3850,5775,'January','2017',122,'2017-06-17','Crevrand Kaondo',NULL,0),
(1013,67715.9,90022.7,'January 2017',2701.9,664.2,20256.8,2050,4100,6150,'January','2017',121,'2017-06-17','Crevrand Kaondo',NULL,0),
(1014,35090.6,42843.8,'January 2017',2174.7,534.6,6103.12,1650,3300,4950,'January','2017',120,'2017-06-17','Crevrand Kaondo',NULL,0),
(1015,37876,47501.4,'January 2017',2800.75,688.5,7500.43,2125,4250,6375,'January','2017',119,'2017-06-17','Crevrand Kaondo',NULL,0),
(1016,46754.5,60863.6,'January 2017',3426.8,842.4,11509.1,2600,5200,7800,'January','2017',112,'2017-06-17','Crevrand Kaondo',NULL,0),
(1017,42099.9,53035.5,'January 2017',2339.45,575.1,9160.65,1775,3550,5325,'January','2017',113,'2017-06-17','Crevrand Kaondo',NULL,0),
(1018,31261.4,37159.1,'January 2017',1977,486,4397.73,1500,3000,4500,'January','2017',96,'2017-06-17','Crevrand Kaondo',NULL,0),
(1019,40240.9,51272.7,'January 2017',3163.2,777.6,8631.82,2400,4800,7200,'January','2017',107,'2017-06-17','Crevrand Kaondo',NULL,0),
(1020,40361.9,51017.1,'January 2017',2767.8,680.4,8555.12,2100,4200,6300,'January','2017',114,'2017-06-17','Crevrand Kaondo',NULL,0),
(1021,46375,59750,'January 2017',2899.6,712.8,11175,2200,4400,6600,'January','2017',115,'2017-06-17','Crevrand Kaondo',NULL,0),
(1022,68314.2,90448.9,'December 2016',2306.5,567,20384.7,1750,3500,5250,'December','2016',22,'2017-06-17','Crevrand Kaondo','2017-06-27 15:56:27',0),
(1023,54650,70500,'December 2016',1911.1,469.8,14400,1450,2900,4350,'December','2016',39,'2017-06-17','Crevrand Kaondo','2017-06-27 15:57:18',0),
(1024,23825,24500,'December 2016',0,372.6,675,0,0,0,'December','2016',79,'2017-06-17','Crevrand Kaondo',NULL,0),
(1025,27400,29500,'December 2016',0,453.6,2100,0,0,0,'December','2016',80,'2017-06-17','Crevrand Kaondo',NULL,0),
(1026,32750,35000,'December 2016',0,567,2250,0,0,0,'December','2016',82,'2017-06-17','Crevrand Kaondo',NULL,0),
(1027,27400,29500,'December 2016',0,372.6,2100,0,0,0,'December','2016',83,'2017-06-17','Crevrand Kaondo','2017-06-17 06:31:28',0),
(1028,27400,29500,'December 2016',0,372.6,2100,0,0,0,'December','2016',84,'2017-06-17','Crevrand Kaondo','2017-06-17 06:32:11',0),
(1029,40140,51200,'December 2016',3374.08,829.44,2250,2560,5120,7680,'December','2016',85,'2017-06-17','Crevrand Kaondo',NULL,0),
(1030,51940.6,66343.8,'December 2016',1647.5,405,13153.1,1250,2500,3750,'December','2016',87,'2017-06-17','Crevrand Kaondo','2017-06-27 15:56:08',0),
(1031,47913.6,60590.9,'December 2016',1647.5,405,11427.3,1250,2500,3750,'December','2016',88,'2017-06-17','Crevrand Kaondo','2017-06-27 15:50:37',0),
(1033,57716.2,74951.7,'December 2016',1977,486,15735.5,1500,3000,4500,'December','2016',90,'2017-06-17','Crevrand Kaondo','2017-06-27 15:52:22',0),
(1034,68850,92000,'December 2016',3031.4,745.2,20850,2300,4600,6900,'December','2016',92,'2017-06-17','Crevrand Kaondo','2017-06-27 15:52:54',0),
(1035,51150,65500,'December 2016',1911.1,469.8,12900,1450,2900,4350,'December','2016',94,'2017-06-17','Crevrand Kaondo','2017-06-27 15:57:05',0),
(1038,51150,65500,'December 2016',1911.1,469.8,12900,1450,2900,4350,'December','2016',99,'2017-06-17','Crevrand Kaondo','2017-06-27 15:51:23',0),
(1039,51150,65500,'December 2016',1911.1,469.8,12900,1450,2900,4350,'December','2016',100,'2017-06-17','Crevrand Kaondo','2017-06-27 15:54:14',0),
(1040,51800,66500,'December 2016',1977,486,13200,1500,3000,4500,'December','2016',101,'2017-06-17','Crevrand Kaondo','2017-06-27 15:54:52',0),
(1041,51150,65500,'December 2016',1911.1,469.8,12900,1450,2900,4350,'December','2016',102,'2017-06-17','Crevrand Kaondo','2017-06-27 15:50:50',0),
(1042,38300,46500,'December 2016',1318,324,7200,1000,2000,3000,'December','2016',104,'2017-06-17','Crevrand Kaondo','2017-06-27 15:55:24',0),
(1043,46950,59500,'December 2016',1911.1,469.8,11100,1450,2900,4350,'December','2016',105,'2017-06-17','Crevrand Kaondo','2017-06-27 15:58:07',0),
(1044,22675,24500,'December 2016',1515.7,372.6,675,1150,2300,3450,'December','2016',106,'2017-06-17','Crevrand Kaondo',NULL,0),
(1045,67500,90000,'December 2016',2965.5,729,20250,2250,4500,6750,'December','2016',107,'2017-06-17','Crevrand Kaondo','2017-06-27 15:51:36',0),
(1046,62860,82800,'December 2016',2438.3,599.4,18090,1850,3700,5550,'December','2016',108,'2017-06-17','Crevrand Kaondo','2017-06-27 15:51:47',0),
(1047,37750,40000,'December 2016',0,648,2250,0,0,0,'December','2016',109,'2017-06-17','Crevrand Kaondo',NULL,0),
(1048,62860,82800,'December 2016',2438.3,599.4,18090,1850,3700,5550,'December','2016',111,'2017-06-17','Crevrand Kaondo','2017-06-27 15:54:04',0),
(1049,66850,89000,'December 2016',2899.6,712.8,19950,2200,4400,6600,'December','2016',112,'2017-06-17','Crevrand Kaondo','2017-06-27 15:56:52',0),
(1050,55403.7,71576.7,'December 2016',1911.1,469.8,14723,1450,2900,4350,'December','2016',113,'2017-06-17','Crevrand Kaondo','2017-06-27 15:51:00',0),
(1051,58463.6,76090.9,'December 2016',2042.9,502.2,16077.3,1550,3100,4650,'December','2016',114,'2017-06-17','Crevrand Kaondo','2017-06-27 15:55:40',0),
(1052,62900,82500,'December 2016',2108.8,518.4,18000,1600,3200,4800,'December','2016',115,'2017-06-17','Crevrand Kaondo','2017-06-27 15:54:25',0),
(1053,50268.8,64312.5,'December 2016',1977,486,12543.8,1500,3000,4500,'December','2016',117,'2017-06-17','Crevrand Kaondo','2017-06-27 15:51:57',0),
(1054,51910.7,66586.6,'December 2016',1911.1,469.8,13226,1450,2900,4350,'December','2016',118,'2017-06-17','Crevrand Kaondo','2017-06-27 15:52:43',0),
(1055,51150,65500,'December 2016',1911.1,469.8,12900,1450,2900,4350,'December','2016',119,'2017-06-17','Crevrand Kaondo','2017-06-27 15:53:23',0),
(1056,45050,56500,'December 2016',1647.5,405,10200,1250,2500,3750,'December','2016',120,'2017-06-17','Crevrand Kaondo','2017-06-27 15:53:36',0),
(1057,51150,65500,'December 2016',1911.1,469.8,12900,1450,2900,4350,'December','2016',121,'2017-06-17','Crevrand Kaondo','2017-06-27 15:53:49',0),
(1058,51150,65500,'December 2016',1911.1,469.8,12900,1450,2900,4350,'December','2016',122,'2017-06-17','Crevrand Kaondo','2017-06-27 15:54:39',0),
(1059,64998.9,85284.1,'December 2016',1911.1,469.8,18835.2,1450,2900,4350,'December','2016',126,'2017-06-17','Crevrand Kaondo','2017-06-27 15:55:02',0),
(1060,51150,65500,'December 2016',1911.1,469.8,12900,1450,2900,4350,'December','2016',127,'2017-06-17','Crevrand Kaondo','2017-06-27 15:55:15',0),
(1061,51150,65500,'December 2016',1911.1,469.8,12900,1450,2900,4350,'December','2016',128,'2017-06-17','Crevrand Kaondo','2017-06-27 15:58:24',0),
(1062,76962.5,102375,'December 2016',1911.1,469.8,23962.5,1450,2900,4350,'December','2016',129,'2017-06-17','Crevrand Kaondo','2017-06-27 15:55:59',0),
(1063,67365.4,88664.8,'December 2016',1911.1,469.8,19849.4,1450,2900,4350,'December','2016',131,'2017-06-17','Crevrand Kaondo','2017-06-27 15:57:48',0),
(1064,60363.3,78661.9,'December 2016',1911.1,469.8,16848.6,1450,2900,4350,'December','2016',132,'2017-06-17','Crevrand Kaondo','2017-06-27 15:58:37',0),
(1065,30750,35000,'December 2016',0,567,2250,0,0,0,'December','2016',133,'2017-06-17','Crevrand Kaondo',NULL,0),
(1066,24250,25000,'December 2016',0,405,750,0,0,0,'December','2016',134,'2017-06-17','Crevrand Kaondo',NULL,0),
(1067,24250,25000,'December 2016',0,405,750,0,0,0,'December','2016',135,'2017-06-17','Crevrand Kaondo',NULL,0),
(1068,24250,25000,'December 2016',0,405,750,0,0,0,'December','2016',136,'2017-06-17','Crevrand Kaondo',NULL,0),
(1069,25750,30000,'December 2016',0,486,2250,0,0,0,'December','2016',137,'2017-06-17','Crevrand Kaondo',NULL,0),
(1070,24250,25000,'December 2016',0,405,750,0,0,0,'December','2016',138,'2017-06-17','Crevrand Kaondo',NULL,0),
(1071,24250,25000,'December 2016',0,405,750,0,0,0,'December','2016',139,'2017-06-17','Crevrand Kaondo',NULL,0),
(1072,20000,20000,'December 2016',0,324,0,0,0,0,'December','2016',140,'2017-06-17','Crevrand Kaondo',NULL,0),
(1073,25750,30000,'December 2016',0,486,2250,0,0,0,'December','2016',144,'2017-06-17','Crevrand Kaondo',NULL,0),
(1074,25750,30000,'December 2016',0,486,2250,0,0,0,'December','2016',145,'2017-06-17','Crevrand Kaondo',NULL,0),
(1075,35750,40000,'December 2016',2636,648,2250,2000,4000,6000,'December','2016',146,'2017-06-17','Crevrand Kaondo',NULL,0),
(1076,25159.1,27727.3,'November 2016',1318,324,1568.18,1000,2000,3000,'November','2016',1,'2017-06-17','Crevrand Kaondo',NULL,0),
(1077,41646.6,52352.3,'November 2016',2306.5,567,8955.69,1750,3500,5250,'November','2016',22,'2017-06-17','Brian Nkhata','2017-06-27 08:22:18',0),
(1078,26650,30500,'November 2016',1911.1,469.8,2400,1450,2900,4350,'November','2016',39,'2017-06-17','Brian Nkhata','2017-06-27 08:23:01',0),
(1079,21275,21500,'November 2016',0,324,225,0,0,0,'November','2016',79,'2017-06-17','Crevrand Kaondo',NULL,0),
(1080,27686.4,29909.1,'November 2016',0,405,2222.73,0,0,0,'November','2016',80,'2017-06-17','Crevrand Kaondo',NULL,0),
(1081,32750,35000,'January 2016',0,567,2250,0,0,0,'January','2016',82,'2017-06-17','Crevrand Kaondo',NULL,0),
(1082,21275,21500,'November 2016',0,324,225,0,0,0,'November','2016',83,'2017-06-17','Crevrand Kaondo',NULL,0),
(1084,21275,21500,'November 2016',0,324,225,0,0,0,'November','2016',84,'2017-06-17','Crevrand Kaondo',NULL,0),
(1085,40140,51200,'November 2016',3374.08,829.44,2250,2560,5120,7680,'November','2016',85,'2017-06-17','Crevrand Kaondo',NULL,0),
(1086,41231.9,51045.5,'November 2016',1647.5,405,8563.65,1250,2500,3750,'November','2016',87,'2017-06-17','Brian Nkhata','2017-06-27 08:22:02',0),
(1087,32998.9,39284.1,'November 2016',1647.5,405,5035.23,1250,2500,3750,'November','2016',88,'2017-06-17','Brian Nkhata','2017-06-27 08:16:40',0),
(1089,35095.5,42636.4,'November 2016',1977,486,6040.92,1500,3000,4500,'November','2016',90,'2017-06-17','Brian Nkhata','2017-06-27 08:18:29',0),
(1090,38153.4,48147.7,'November 2016',3031.4,745.2,7694.32,2300,4600,6900,'November','2016',92,'2017-06-17','Brian Nkhata','2017-06-27 08:18:59',0),
(1091,30408.5,35869.3,'November 2016',1911.1,469.8,4010.8,1450,2900,4350,'November','2016',94,'2017-06-17','Brian Nkhata','2017-06-27 08:22:52',0),
(1094,26650,30500,'November 2016',1911.1,469.8,2400,1450,2900,4350,'November','2016',99,'2017-06-17','Brian Nkhata','2017-06-27 08:17:27',0),
(1095,26650,30500,'November 2016',1911.1,469.8,2400,1450,2900,4350,'November','2016',100,'2017-06-17','Brian Nkhata','2017-06-27 08:20:03',0),
(1096,36765.9,45022.7,'November 2016',1977,486,6756.81,1500,3000,4500,'November','2016',101,'2017-06-17','Brian Nkhata','2017-06-27 08:20:33',0),
(1097,26650,30500,'November 2016',1911.1,469.8,2400,1450,2900,4350,'November','2016',102,'2017-06-17','Brian Nkhata','2017-06-27 08:16:55',0),
(1098,33981.8,41045.4,'November 2016',1977,486,5563.63,1500,3000,4500,'November','2016',103,'2017-06-17','Brian Nkhata','2017-06-27 08:21:02',0),
(1099,20275,21500,'November 2016',1318,324,225,1000,2000,3000,'November','2016',104,'2017-06-17','Brian Nkhata','2017-06-27 08:21:23',0),
(1100,26650,30500,'November 2016',1911.1,469.8,2400,1450,2900,4350,'November','2016',105,'2017-06-17','Brian Nkhata','2017-06-27 08:23:32',0),
(1101,20275,21500,'November 2016',1318,324,225,1000,2000,3000,'November','2016',106,'2017-06-17','Crevrand Kaondo',NULL,0),
(1102,42532.7,54332.4,'November 2016',2965.5,729,9549.72,2250,4500,6750,'November','2016',107,'2017-06-17','Brian Nkhata','2017-06-27 08:17:40',0),
(1103,34044.7,41635.2,'November 2016',2438.3,599.4,5740.57,1850,3700,5550,'November','2016',108,'2017-06-17','Brian Nkhata','2017-06-27 08:17:50',0),
(1104,37750,40000,'November 2016',0,648,2250,0,0,0,'November','2016',109,'2017-06-17','Crevrand Kaondo',NULL,0),
(1105,37750,40000,'November 2016',0,648,2250,0,0,0,'November','2016',110,'2017-06-17','Crevrand Kaondo',NULL,0),
(1107,34044.7,41635.2,'November 2016',2438.3,599.4,5740.57,1850,3700,5550,'November','2016',111,'2017-06-17','Brian Nkhata','2017-06-27 08:19:51',0),
(1108,39108.5,49369.3,'November 2016',2899.6,712.8,8060.8,2200,4400,6600,'November','2016',112,'2017-06-17','Brian Nkhata','2017-06-27 08:22:38',0),
(1109,31804.5,37863.6,'November 2016',1911.1,469.8,4609.09,1450,2900,4350,'November','2016',113,'2017-06-17','Brian Nkhata','2017-06-27 08:17:04',0),
(1110,33796.6,40852.3,'November 2016',2042.9,502.2,5505.68,1550,3100,4650,'November','2016',114,'2017-06-17','Brian Nkhata','2017-06-27 08:21:44',0),
(1111,35258,43011.4,'November 2016',2108.8,518.4,6153.41,1600,3200,4800,'November','2016',115,'2017-06-17','Brian Nkhata','2017-06-27 08:20:13',0),
(1112,34459.1,41727.3,'November 2016',1977,486,5768.19,1500,3000,4500,'November','2016',117,'2017-06-17','Brian Nkhata','2017-06-27 08:18:00',0),
(1113,26650,30500,'November 2016',1911.1,469.8,2400,1450,2900,4350,'November','2016',118,'2017-06-17','Brian Nkhata','2017-06-27 08:18:48',0),
(1114,32218.2,38454.6,'November 2016',1911.1,469.8,4786.37,1450,2900,4350,'November','2016',119,'2017-06-17','Brian Nkhata','2017-06-27 08:19:24',0),
(1115,30015.9,35022.7,'November 2016',1647.5,405,3756.82,1250,2500,3750,'November','2016',120,'2017-06-17','Brian Nkhata','2017-06-27 08:19:33',0),
(1116,42310.5,52872.2,'November 2016',1911.1,469.8,9111.66,1450,2900,4350,'November','2016',121,'2017-06-17','Brian Nkhata','2017-06-27 08:19:42',0),
(1117,26650,30500,'November 2016',1911.1,469.8,2400,1450,2900,4350,'November','2016',122,'2017-06-17','Brian Nkhata','2017-06-27 08:20:23',0),
(1118,36386.4,44409.1,'November 2016',1911.1,469.8,6572.73,1450,2900,4350,'November','2016',126,'2017-06-17','Brian Nkhata','2017-06-27 08:20:44',0),
(1119,34863.1,42233,'November 2016',1911.1,469.8,5919.9,1450,2900,4350,'November','2016',127,'2017-06-17','Brian Nkhata','2017-06-27 08:21:13',0),
(1120,33958.2,40940.3,'November 2016',1911.1,469.8,5532.09,1450,2900,4350,'November','2016',128,'2017-06-17','Brian Nkhata','2017-06-27 08:23:42',0),
(1121,45466.5,57380.7,'November 2016',1911.1,469.8,10464.2,1450,2900,4350,'November','2016',129,'2017-06-17','Brian Nkhata','2017-06-27 08:21:53',0),
(1122,33904.5,40863.6,'November 2016',1911.1,469.8,5509.08,1450,2900,4350,'November','2016',131,'2017-06-17','Brian Nkhata','2017-06-27 08:23:20',0),
(1123,39178.4,48397.7,'November 2016',1911.1,469.8,7769.31,1450,2900,4350,'November','2016',132,'2017-06-17','Brian Nkhata','2017-06-27 08:23:57',0),
(1124,30750,35000,'November 2016',0,567,2250,0,0,0,'November','2016',133,'2017-06-17','Crevrand Kaondo',NULL,0),
(1125,24250,25000,'November 2016',0,405,750,0,0,0,'November','2016',134,'2017-06-17','Crevrand Kaondo',NULL,0),
(1126,24250,25000,'November 2016',0,405,750,0,0,0,'November','2016',135,'2017-06-17','Crevrand Kaondo',NULL,0),
(1127,24250,25000,'November 2016',0,405,750,0,0,0,'November','2016',136,'2017-06-17','Crevrand Kaondo',NULL,0),
(1128,25750,30000,'November 2016',0,486,2250,0,0,0,'November','2016',137,'2017-06-17','Crevrand Kaondo',NULL,0),
(1129,24250,25000,'November 2016',0,405,750,0,0,0,'November','2016',139,'2017-06-17','Crevrand Kaondo',NULL,0),
(1130,25750,30000,'November 2016',0,486,2250,0,0,0,'November','2016',145,'2017-06-17','Crevrand Kaondo',NULL,0),
(1131,35750,40000,'November 2016',2636,648,2250,2000,4000,6000,'November','2016',146,'2017-06-17','Crevrand Kaondo',NULL,0),
(1132,24050,26500,'November 2016',1647.5,405,1200,1250,2500,3750,'November','2016',147,'2017-06-18','Brian Nkhata','2017-06-27 08:19:10',0),
(1133,47150,59500,'December 2016',1647.5,405,11100,1250,2500,3750,'December','2016',147,'2017-06-18','Crevrand Kaondo','2017-06-27 15:53:10',0),
(1134,55800,59500,'December 2016',1911.1,469.8,2250,1450,2900,4350,'December','2016',148,'2017-06-18','Brian Nkhata',NULL,0),
(1135,45670.5,57386.4,'December 2016',1647.5,405,10465.9,1250,2500,3750,'December','2016',116,'2017-06-18','Crevrand Kaondo','2017-06-27 15:51:14',0),
(1136,24050,26500,'November 2016',1647.5,405,1200,1250,2500,3750,'November','2016',116,'2017-06-18','Brian Nkhata','2017-06-27 08:17:17',0),
(1137,33014.8,39306.8,'October 2016',1647.5,405,5042.04,1250,2500,3750,'October','2016',116,'2017-06-18','Brian Nkhata','2017-06-27 07:32:45',0),
(1138,31496,35196,'November 2016',1911.1,469.8,2250,1450,2900,4350,'November','2016',148,'2017-06-18','Brian Nkhata',NULL,0),
(1139,42618.2,46318.2,'October 2016',1911.1,469.8,2250,1450,2900,4350,'October','2016',148,'2017-06-18','Brian Nkhata',NULL,0),
(1140,41646.6,52352.3,'October 2016',2306.5,567,8955.69,1750,3500,5250,'October','2016',22,'2017-06-18','Brian Nkhata','2017-06-27 07:33:46',0),
(1141,34922.7,42318.2,'October 2016',1911.1,469.8,5945.46,1450,2900,4350,'October','2016',39,'2017-06-18','Brian Nkhata','2017-06-27 07:38:51',0),
(1143,22820.5,23318.2,'October 2016',0,324,497.727,0,0,0,'October','2016',79,'2017-06-18','Brian Nkhata',NULL,0),
(1144,26890.9,28772.7,'October 2016',0,405,1881.82,0,0,0,'October','2016',80,'2017-06-18','Brian Nkhata',NULL,0),
(1145,31250,35000,'October 2016',0,567,3750,0,0,0,'October','2016',82,'2017-06-18','Brian Nkhata',NULL,0),
(1146,22820.5,23318.2,'October 2016',0,324,497.727,0,0,0,'October','2016',83,'2017-06-18','Brian Nkhata',NULL,0),
(1147,22820.5,23318.2,'October 2016',0,324,497.727,0,0,0,'October','2016',84,'2017-06-18','Brian Nkhata',NULL,0),
(1148,33780,51200,'October 2016',3374.08,829.44,8610,2560,5120,7680,'October','2016',85,'2017-06-18','Brian Nkhata','2017-06-27 07:38:10',0),
(1149,24050,26500,'October 2016',1647.5,405,1200,1250,2500,3750,'October','2016',87,'2017-06-18','Brian Nkhata','2017-06-27 07:37:54',0),
(1150,35981.9,43545.5,'October 2016',1647.5,405,6313.65,1250,2500,3750,'October','2016',88,'2017-06-18','Brian Nkhata','2017-06-27 07:32:03',0),
(1151,36765.9,45022.7,'October 2016',1977,486,6756.81,1500,3000,4500,'October','2016',90,'2017-06-18','Brian Nkhata','2017-06-27 07:34:12',0),
(1152,36650,46000,'October 2016',3031.4,745.2,7050,2300,4600,6900,'October','2016',92,'2017-06-18','Brian Nkhata','2017-06-27 07:34:35',0),
(1153,36115.9,44022.7,'October 2016',1911.1,469.8,6456.81,1450,2900,4350,'October','2016',94,'2017-06-18','Brian Nkhata','2017-06-27 07:38:42',0),
(1154,29500,35000,'October 2016',2306.5,567,3750,1750,3500,5250,'October','2016',97,'2017-06-18','Brian Nkhata',NULL,0),
(1155,38900,48000,'October 2016',1911.1,469.8,7650,1450,2900,4350,'October','2016',99,'2017-06-18','Brian Nkhata','2017-06-27 07:32:56',0),
(1156,52820.5,67886.4,'October 2016',1911.1,469.8,13615.9,1450,2900,4350,'October','2016',100,'2017-06-18','Brian Nkhata','2017-06-27 07:35:44',0),
(1157,36209.1,44227.3,'October 2016',1977,486,6518.19,1500,3000,4500,'October','2016',101,'2017-06-18','Brian Nkhata','2017-06-27 07:36:21',0),
(1158,28877.3,33681.8,'October 2016',1911.1,469.8,3354.55,1450,2900,4350,'October','2016',102,'2017-06-18','Brian Nkhata','2017-06-27 07:32:20',0),
(1159,33663.6,40590.9,'October 2016',1977,486,5427.27,1500,3000,4500,'October','2016',103,'2017-06-18','Brian Nkhata','2017-06-27 07:36:52',0),
(1160,30345.5,35136.4,'October 2016',1318,324,3790.92,1000,2000,3000,'October','2016',104,'2017-06-18','Brian Nkhata','2017-06-27 07:37:17',0),
(1161,39568.1,48954.5,'October 2016',1911.1,469.8,7936.35,1450,2900,4350,'October','2016',105,'2017-06-18','Brian Nkhata','2017-06-27 07:39:24',0),
(1162,21820.5,23318.2,'October 2016',1318,324,497.727,1000,2000,3000,'October','2016',106,'2017-06-18','Brian Nkhata',NULL,0),
(1163,36000,45000,'October 2016',2965.5,729,6750,2250,4500,6750,'October','2016',107,'2017-06-18','Brian Nkhata','2017-06-27 07:33:07',0),
(1164,31360,37800,'October 2016',2438.3,599.4,4590,1850,3700,5550,'October','2016',108,'2017-06-18','Brian Nkhata','2017-06-27 07:33:18',0),
(1166,34750,40000,'October 2016',0,648,5250,0,0,0,'October','2016',109,'2017-06-18','Brian Nkhata',NULL,0),
(1167,34750,40000,'October 2016',0,648,5250,0,0,0,'October','2016',110,'2017-06-18','Brian Nkhata',NULL,0),
(1168,31360,37800,'October 2016',2438.3,599.4,4590,1850,3700,5550,'October','2016',111,'2017-06-18','Brian Nkhata','2017-06-27 07:35:34',0),
(1169,35350,44000,'October 2016',2899.6,712.8,6450,2200,4400,6600,'October','2016',112,'2017-06-18','Brian Nkhata','2017-06-27 07:38:34',0),
(1170,32759.1,39227.3,'October 2016',1911.1,469.8,5018.18,1450,2900,4350,'October','2016',113,'2017-06-18','Brian Nkhata','2017-06-27 07:32:32',0),
(1171,33587.8,40554,'October 2016',2042.9,502.2,5416.19,1550,3100,4650,'October','2016',114,'2017-06-18','Brian Nkhata','2017-06-27 07:37:29',0),
(1172,28600,33500,'October 2016',2108.8,518.4,3300,1600,3200,4800,'October','2016',115,'2017-06-18','Brian Nkhata','2017-06-27 07:35:56',0),
(1174,36427.9,44539.8,'October 2016',1977,486,6611.94,1500,3000,4500,'October','2016',117,'2017-06-18','Brian Nkhata','2017-06-27 07:33:28',0),
(1175,28877.3,33681.8,'October 2016',1911.1,469.8,3354.55,1450,2900,4350,'October','2016',118,'2017-06-18','Brian Nkhata','2017-06-27 07:34:26',0),
(1176,35559.1,43227.3,'October 2016',1911.1,469.8,6218.19,1450,2900,4350,'October','2016',119,'2017-06-18','Brian Nkhata','2017-06-27 07:35:00',0),
(1177,25481.8,28545.4,'October 2016',1647.5,405,1813.64,1250,2500,3750,'October','2016',120,'2017-06-18','Brian Nkhata','2017-06-27 07:35:10',0),
(1178,47182.7,59832.4,'October 2016',1911.1,469.8,11199.7,1450,2900,4350,'October','2016',121,'2017-06-18','Brian Nkhata','2017-06-27 07:35:19',0),
(1180,38287.5,47125,'October 2016',1911.1,469.8,7387.5,1450,2900,4350,'October','2016',122,'2017-06-18','Brian Nkhata','2017-06-27 07:36:11',0),
(1181,25300,26500,'October 2016',0,405,1200,0,0,0,'October','2016',124,'2017-06-18','Brian Nkhata',NULL,0),
(1182,39250,48500,'October 2016',1911.1,469.8,7800,1450,2900,4350,'October','2016',126,'2017-06-18','Brian Nkhata','2017-06-27 07:36:31',0),
(1183,26650,30500,'October 2016',1911.1,469.8,2400,1450,2900,4350,'October','2016',127,'2017-06-18','Brian Nkhata','2017-06-27 07:37:07',0),
(1184,40570.5,50386.4,'October 2016',1911.1,469.8,8365.92,1450,2900,4350,'October','2016',128,'2017-06-18','Brian Nkhata','2017-06-27 07:39:35',0),
(1185,43879.5,55113.6,'October 2016',1911.1,469.8,9784.08,1450,2900,4350,'October','2016',129,'2017-06-18','Brian Nkhata','2017-06-27 07:37:39',0),
(1186,36322.7,44318.2,'October 2016',1911.1,469.8,6545.46,1450,2900,4350,'October','2016',131,'2017-06-18','Brian Nkhata','2017-06-27 07:39:13',0),
(1187,52402.9,67289.8,'October 2016',1911.1,469.8,13436.9,1450,2900,4350,'October','2016',132,'2017-06-18','Brian Nkhata','2017-06-27 07:39:47',0),
(1188,29250,35000,'October 2016',0,567,3750,0,0,0,'October','2016',133,'2017-06-18','Brian Nkhata',NULL,0),
(1189,24250,25000,'October 2016',0,405,750,0,0,0,'October','2016',134,'2017-06-18','Brian Nkhata',NULL,0),
(1191,24250,25000,'October 2016',0,405,750,0,0,0,'October','2016',135,'2017-06-18','Brian Nkhata',NULL,0),
(1192,24250,25000,'October 2016',0,405,750,0,0,0,'October','2016',136,'2017-06-18','Brian Nkhata',NULL,0),
(1193,25750,30000,'October 2016',0,486,2250,0,0,0,'October','2016',137,'2017-06-18','Brian Nkhata',NULL,0),
(1194,25750,30000,'October 2016',0,486,2250,0,0,0,'October','2016',145,'2017-06-18','Brian Nkhata',NULL,0),
(1195,24050,26500,'October 2016',1647.5,405,1200,1250,2500,3750,'October','2016',147,'2017-06-18','Brian Nkhata','2017-06-27 07:34:48',0),
(1197,46300,59000,'September 2016',2306.5,567,10950,1750,3500,5250,'September','2016',22,'2017-06-18','Brian Nkhata','2017-06-27 07:06:28',0),
(1198,37468.1,45954.5,'September 2016',1911.1,469.8,7036.35,1450,2900,4350,'September','2016',39,'2017-06-18','Brian Nkhata','2017-06-27 07:07:45',0),
(1199,31250,35000,'September 2016',0,567,3750,0,0,0,'September','2016',82,'2017-06-18','Brian Nkhata',NULL,0),
(1200,33780,51200,'September 2016',3374.08,829.44,8610,2560,5120,7680,'September','2016',85,'2017-06-18','Brian Nkhata',NULL,0),
(1201,24765.9,27522.7,'September 2016',1647.5,405,1506.82,1250,2500,3750,'September','2016',87,'2017-06-18','Brian Nkhata','2017-06-27 07:06:01',0),
(1202,27390.9,31272.7,'September 2016',1647.5,405,2631.82,1250,2500,3750,'September','2016',88,'2017-06-18','Brian Nkhata','2017-06-27 06:58:03',0),
(1205,39550,49000,'September 2016',1977,486,7950,1500,3000,4500,'September','2016',90,'2017-06-18','Brian Nkhata','2017-06-27 07:02:43',0),
(1206,36650,46000,'September 2016',3031.4,745.2,7050,2300,4600,6900,'September','2016',92,'2017-06-18','Brian Nkhata','2017-06-27 07:03:14',0),
(1207,26650,30500,'September 2016',1911.1,469.8,2400,1450,2900,4350,'September','2016',94,'2017-06-18','Brian Nkhata','2017-06-27 07:07:34',0),
(1208,42797.7,53568.2,'September 2016',1911.1,469.8,9320.46,1450,2900,4350,'September','2016',99,'2017-06-18','Brian Nkhata','2017-06-27 06:59:01',0),
(1209,51150,65500,'September 2016',1911.1,469.8,12900,1450,2900,4350,'September','2016',100,'2017-06-18','Brian Nkhata','2017-06-27 07:04:32',0),
(1210,36765.9,45022.7,'September 2016',1977,486,6756.81,1500,3000,4500,'September','2016',101,'2017-06-18','Brian Nkhata','2017-06-27 07:05:17',0),
(1211,37786.4,46409.1,'September 2016',1911.1,469.8,7172.73,1450,2900,4350,'September','2016',102,'2017-06-18','Brian Nkhata','2017-06-27 06:58:21',0),
(1212,48936.4,62409.1,'September 2016',1977,486,11972.7,1500,3000,4500,'September','2016',103,'2017-06-18','Brian Nkhata','2017-06-27 07:05:29',0),
(1213,23172.7,24909.1,'September 2016',1318,324,736.364,1000,2000,3000,'September','2016',104,'2017-06-18','Brian Nkhata','2017-06-27 07:05:39',0),
(1214,29418.2,34454.6,'September 2016',1911.1,469.8,3586.36,1450,2900,4350,'September','2016',105,'2017-06-18','Brian Nkhata','2017-06-27 07:08:00',0),
(1215,20275,21500,'September 2016',1318,324,225,1000,2000,3000,'September','2016',106,'2017-06-18','Brian Nkhata',NULL,0),
(1216,36000,45000,'September 2016',2965.5,729,6750,2250,4500,6750,'September','2016',107,'2017-06-18','Brian Nkhata','2017-06-27 06:59:28',0),
(1217,31360,37800,'September 2016',2438.3,599.4,4590,1850,3700,5550,'September','2016',108,'2017-06-18','Brian Nkhata','2017-06-27 06:59:41',0),
(1218,34750,40000,'September 2016',0,648,5250,0,0,0,'September','2016',109,'2017-06-18','Brian Nkhata',NULL,0),
(1219,34750,40000,'September 2016',0,648,5250,0,0,0,'September','2016',110,'2017-06-18','Brian Nkhata',NULL,0),
(1220,31360,37800,'September 2016',2438.3,599.4,4590,1850,3700,5550,'September','2016',111,'2017-06-18','Brian Nkhata','2017-06-27 07:04:20',0),
(1221,35350,44000,'September 2016',2899.6,712.8,6450,2200,4400,6600,'September','2016',112,'2017-06-18','Brian Nkhata','2017-06-27 07:07:22',0),
(1222,40013.6,49590.9,'September 2016',1911.1,469.8,8127.27,1450,2900,4350,'September','2016',113,'2017-06-18','Brian Nkhata','2017-06-27 06:58:35',0),
(1223,31082.1,36974.4,'September 2016',2042.9,502.2,4342.33,1550,3100,4650,'September','2016',114,'2017-06-18','Brian Nkhata','2017-06-27 07:05:50',0),
(1224,45996.6,58352.3,'September 2016',2108.8,518.4,10755.7,1600,3200,4800,'September','2016',115,'2017-06-18','Brian Nkhata','2017-06-27 07:04:43',0),
(1225,27558,31511.4,'September 2016',1647.5,405,2703.41,1250,2500,3750,'September','2016',116,'2017-06-18','Brian Nkhata','2017-06-27 06:58:45',0),
(1226,27658,32011.4,'September 2016',1977,486,2853.41,1500,3000,4500,'September','2016',117,'2017-06-18','Brian Nkhata','2017-06-27 06:59:52',0),
(1227,28877.3,33681.8,'September 2016',1911.1,469.8,3354.55,1450,2900,4350,'September','2016',118,'2017-06-18','Brian Nkhata','2017-06-27 07:03:04',0),
(1228,26650,30500,'September 2016',1911.1,469.8,2400,1450,2900,4350,'September','2016',119,'2017-06-18','Brian Nkhata','2017-06-27 07:03:46',0),
(1229,24050,26500,'September 2016',1647.5,405,1200,1250,2500,3750,'September','2016',120,'2017-06-18','Brian Nkhata','2017-06-27 07:03:56',0),
(1230,39178.4,48397.7,'September 2016',1911.1,469.8,7769.31,1450,2900,4350,'September','2016',121,'2017-06-18','Brian Nkhata','2017-06-27 07:04:06',0),
(1231,26650,30500,'September 2016',1911.1,469.8,2400,1450,2900,4350,'September','2016',122,'2017-06-18','Brian Nkhata','2017-06-27 07:04:53',0),
(1232,29500,35000,'September 2016',2306.5,567,3750,1750,3500,5250,'September','2016',149,'2017-06-18','Brian Nkhata',NULL,0),
(1233,28207.1,32724.4,'September 2016',1911.1,469.8,3067.33,1450,2900,4350,'September','2016',148,'2017-06-18','Brian Nkhata',NULL,0),
(1234,24050,26500,'September 2016',1647.5,405,1200,1250,2500,3750,'September','2016',147,'2017-06-18','Brian Nkhata','2017-06-27 07:03:28',0),
(1235,32750,40000,'September 2016',2636,648,5250,2000,4000,6000,'September','2016',146,'2017-06-18','Brian Nkhata','2017-06-27 06:59:17',0),
(1236,25750,30000,'September 2016',0,486,2250,0,0,0,'September','2016',145,'2017-06-18','Brian Nkhata',NULL,0),
(1237,29250,35000,'September 2016',0,567,3750,0,0,0,'September','2016',133,'2017-06-18','Brian Nkhata',NULL,0),
(1238,26650,30500,'September 2016',1911.1,469.8,2400,1450,2900,4350,'September','2016',122,'2017-06-18','Brian Nkhata','2017-06-27 07:04:53',0),
(1239,26650,30500,'September 2016',1911.1,469.8,2400,1450,2900,4350,'September','2016',123,'2017-06-19','Brian Nkhata','2017-06-27 07:07:10',0),
(1240,26650,30500,'October 2016',1911.1,469.8,2400,1450,2900,4350,'October','2016',123,'2017-06-19','Brian Nkhata','2017-06-27 07:38:23',0),
(1241,26650,30500,'November 2016',1911.1,469.8,2400,1450,2900,4350,'November','2016',123,'2017-06-19','Brian Nkhata','2017-06-27 08:22:26',0),
(1242,51150,65500,'December 2016',1911.1,469.8,12900,1450,2900,4350,'December','2016',123,'2017-06-19','Crevrand Kaondo','2017-06-27 15:56:39',0),
(1244,26650,30500,'August 2016',1911.1,469.8,2400,1450,2900,4350,'August','2016',99,'2017-06-19','Crevrand Kaondo','2017-06-27 03:50:51',0),
(1245,36672.7,44818.2,'August 2016',1911.1,469.8,6695.46,1450,2900,4350,'August','2016',100,'2017-06-19','Crevrand Kaondo','2017-06-27 04:05:56',0),
(1246,35095.5,42636.4,'August 2016',1977,486,6040.92,1500,3000,4500,'August','2016',101,'2017-06-19','Crevrand Kaondo','2017-06-27 04:09:22',0),
(1247,26650,30500,'August 2016',1911.1,469.8,2400,1450,2900,4350,'August','2016',102,'2017-06-19','Crevrand Kaondo','2017-06-27 03:48:38',0),
(1248,27300,31500,'August 2016',1977,486,2700,1500,3000,4500,'August','2016',103,'2017-06-19','Crevrand Kaondo','2017-06-27 04:10:54',0),
(1249,32278.4,37897.7,'August 2016',1318,324,4619.31,1000,2000,3000,'August','2016',1,'2017-06-19','Crevrand Kaondo',NULL,0),
(1250,26650,30500,'August 2016',1911.1,469.8,2400,1450,2900,4350,'August','2016',39,'2017-06-19','Crevrand Kaondo','2017-06-27 04:35:39',0),
(1251,26650,30500,'August 2016',1911.1,469.8,2400,1450,2900,4350,'August','2016',105,'2017-06-19','Crevrand Kaondo','2017-06-27 04:41:44',0),
(1252,84100,119000,'August 2016',7842.1,1927.8,28950,5950,11900,17850,'August','2016',40,'2017-06-19','Crevrand Kaondo','2017-06-25 00:23:08',0),
(1253,36000,45000,'August 2016',2965.5,729,6750,2250,4500,6750,'August','2016',107,'2017-06-19','Crevrand Kaondo',NULL,0),
(1254,36650,46000,'August 2016',3031.4,745.2,7050,2300,4600,6900,'August','2016',92,'2017-06-19','Crevrand Kaondo','2017-06-27 03:58:59',0),
(1255,33780,51200,'August 2016',3374.08,829.44,8610,2560,5120,7680,'August','2016',85,'2017-06-19','Crevrand Kaondo','2017-06-27 04:15:34',0),
(1256,40030,51200,'August 2016',3374.08,829.44,8610,2560,5120,7680,'August','2016',86,'2017-06-19','Crevrand Kaondo',NULL,0),
(1257,31360,37800,'August 2016',2438.3,599.4,4590,1850,3700,5550,'August','2016',108,'2017-06-19','Crevrand Kaondo','2017-06-27 03:51:44',0),
(1258,31360,37800,'August 2016',2438.3,599.4,4590,1850,3700,5550,'August','2016',111,'2017-06-19','Crevrand Kaondo','2017-06-27 04:05:10',0),
(1259,35350,44000,'August 2016',2899.6,712.8,6450,2200,4400,6600,'August','2016',112,'2017-06-19','Crevrand Kaondo','2017-06-27 04:17:53',0),
(1260,28600,33500,'August 2016',2108.8,518.4,3300,1600,3200,4800,'August','2016',115,'2017-06-19','Crevrand Kaondo','2017-06-27 04:06:46',0),
(1261,33713.6,40590.9,'August 2016',1911.1,469.8,5427.27,1450,2900,4350,'August','2016',113,'2017-06-19','Crevrand Kaondo','2017-06-27 03:49:13',0),
(1262,35675.8,43536.9,'August 2016',2042.9,502.2,6311.07,1550,3100,4650,'August','2016',114,'2017-06-19','Crevrand Kaondo','2017-06-27 04:12:25',0),
(1263,28034.1,32477.3,'August 2016',1911.1,469.8,2993.18,1450,2900,4350,'August','2016',148,'2017-06-19','Crevrand Kaondo',NULL,0),
(1264,25386.4,28409.1,'August 2016',1647.5,405,1772.73,1250,2500,3750,'August','2016',116,'2017-06-19','Crevrand Kaondo','2017-06-27 03:49:51',0),
(1265,29777.3,34681.8,'August 2016',1647.5,405,3654.55,1250,2500,3750,'August','2016',88,'2017-06-19','Crevrand Kaondo','2017-06-27 03:47:51',0),
(1266,28015.9,32522.7,'August 2016',1977,486,3006.82,1500,3000,4500,'August','2016',117,'2017-06-19','Crevrand Kaondo','2017-06-27 03:52:22',0),
(1267,42240.9,52772.7,'August 2016',1911.1,469.8,9081.81,1450,2900,4350,'August','2016',89,'2017-06-19','Crevrand Kaondo','2017-06-27 03:53:21',0),
(1268,52913.6,68090.9,'August 2016',1977,486,13677.3,1500,3000,4500,'August','2016',90,'2017-06-19','Crevrand Kaondo','2017-06-27 03:57:11',0),
(1269,26650,30500,'August 2016',1911.1,469.8,2400,1450,2900,4350,'August','2016',118,'2017-06-19','Crevrand Kaondo','2017-06-27 03:58:12',0),
(1270,37413.6,45590.9,'August 2016',1647.5,405,6927.27,1250,2500,3750,'August','2016',87,'2017-06-19','Crevrand Kaondo','2017-06-27 04:13:54',0),
(1271,24050,26500,'August 2016',1647.5,405,1200,1250,2500,3750,'August','2016',147,'2017-06-19','Crevrand Kaondo','2017-06-27 03:59:46',0),
(1272,31104.5,36863.6,'August 2016',1911.1,469.8,4309.09,1450,2900,4350,'August','2016',119,'2017-06-19','Crevrand Kaondo','2017-06-27 04:01:41',0),
(1273,26913.6,30590.9,'August 2016',1647.5,405,2427.27,1250,2500,3750,'August','2016',120,'2017-06-19','Crevrand Kaondo','2017-06-27 04:03:29',0),
(1274,40848.9,50784.1,'August 2016',1911.1,469.8,8485.23,1450,2900,4350,'August','2016',121,'2017-06-19','Crevrand Kaondo','2017-06-27 04:04:16',0),
(1275,35837.5,43625,'August 2016',1911.1,469.8,6337.5,1450,2900,4350,'August','2016',122,'2017-06-19','Crevrand Kaondo','2017-06-27 04:07:30',0),
(1276,36959.1,45227.3,'August 2016',1911.1,469.8,6818.19,1450,2900,4350,'August','2016',126,'2017-06-19','Crevrand Kaondo','2017-06-27 04:10:10',0),
(1277,36394.4,44420.5,'August 2016',1911.1,469.8,6576.15,1450,2900,4350,'August','2016',128,'2017-06-19','Crevrand Kaondo','2017-06-27 04:39:28',0),
(1278,30408.5,35869.3,'August 2016',1911.1,469.8,4010.8,1450,2900,4350,'August','2016',127,'2017-06-19','Crevrand Kaondo','2017-06-27 04:11:34',0),
(1279,51587.5,66125,'August 2016',1911.1,469.8,13087.5,1450,2900,4350,'August','2016',129,'2017-06-19','Crevrand Kaondo','2017-06-27 04:13:11',0),
(1280,63481.9,83545.5,'August 2016',2306.5,567,18313.7,1750,3500,5250,'August','2016',22,'2017-06-19','Crevrand Kaondo','2017-06-27 04:16:09',0),
(1281,28726.1,33465.9,'August 2016',1911.1,469.8,3289.77,1450,2900,4350,'August','2016',123,'2017-06-19','Crevrand Kaondo','2017-06-27 04:17:01',0),
(1282,27902.8,32289.8,'August 2016',1911.1,469.8,2936.93,1450,2900,4350,'August','2016',94,'2017-06-19','Crevrand Kaondo','2017-06-27 04:33:45',0),
(1283,43577.3,54681.8,'August 2016',1911.1,469.8,9654.54,1450,2900,4350,'August','2016',131,'2017-06-19','Crevrand Kaondo','2017-06-27 04:36:17',0),
(1284,54490.9,70272.7,'August 2016',1911.1,469.8,14331.8,1450,2900,4350,'August','2016',132,'2017-06-19','Crevrand Kaondo','2017-06-27 04:40:02',0),
(1285,31104.5,36863.6,'July 2016',1911.1,469.8,4309.09,1450,2900,4350,'July','2016',99,'2017-06-19','Crevrand Kaondo','2017-06-27 02:00:00',0),
(1286,28320.5,32886.4,'July 2016',1911.1,469.8,3115.91,1450,2900,4350,'July','2016',100,'2017-06-19','Crevrand Kaondo','2017-06-27 02:11:33',0),
(1287,31754.5,37863.6,'July 2016',1977,486,4609.09,1500,3000,4500,'July','2016',101,'2017-06-19','Crevrand Kaondo','2017-06-27 02:14:00',0),
(1288,31104.5,36863.6,'July 2016',1911.1,469.8,4309.09,1450,2900,4350,'July','2016',102,'2017-06-19','Crevrand Kaondo','2017-06-27 01:08:36',0),
(1289,55061.4,71159.1,'July 2016',1977,486,14597.7,1500,3000,4500,'July','2016',103,'2017-06-19','Crevrand Kaondo','2017-06-27 02:15:01',0),
(1290,20275,21500,'July 2016',1318,324,225,1000,2000,3000,'July','2016',104,'2017-06-19','Crevrand Kaondo','2017-06-27 02:19:56',0),
(1291,31740.9,37772.7,'July 2016',1911.1,469.8,4581.82,1450,2900,4350,'July','2016',39,'2017-06-19','Crevrand Kaondo','2017-06-27 02:26:40',0),
(1292,30340.9,35772.7,'July 2016',1911.1,469.8,3981.82,1450,2900,4350,'July','2016',105,'2017-06-19','Crevrand Kaondo','2017-06-27 02:31:46',0),
(1293,84100,119000,'July 2016',7842.1,1927.8,28950,5950,11900,17850,'July','2016',40,'2017-06-19','Crevrand Kaondo','2017-06-27 01:10:13',0),
(1294,43875,56250,'July 2016',2965.5,729,10125,2250,4500,6750,'July','2016',107,'2017-06-19','Crevrand Kaondo','2017-06-27 02:00:35',0),
(1295,36650,46000,'July 2016',3031.4,745.2,7050,2300,4600,6900,'July','2016',92,'2017-06-19','Crevrand Kaondo','2017-06-27 02:04:15',0),
(1296,33780,51200,'July 2016',3374.08,829.44,8610,2560,5120,7680,'July','2016',85,'2017-06-19','Crevrand Kaondo',NULL,0),
(1297,40030,51200,'July 2016',3374.08,829.44,8610,2560,5120,7680,'July','2016',86,'2017-06-19','Crevrand Kaondo',NULL,0),
(1298,38519.1,48027.3,'July 2016',2438.3,599.4,7658.19,1850,3700,5550,'July','2016',108,'2017-06-19','Crevrand Kaondo','2017-06-27 02:01:10',0),
(1299,41740.6,52629.5,'July 2016',2438.3,599.4,9038.85,1850,3700,5550,'July','2016',111,'2017-06-19','Crevrand Kaondo','2017-06-27 02:07:50',0),
(1300,42509.1,54227.3,'July 2016',2899.6,712.8,9518.19,2200,4400,6600,'July','2016',112,'2017-06-19','Crevrand Kaondo','2017-06-27 02:25:07',0),
(1301,43419.4,54670.5,'July 2016',2108.8,518.4,9651.15,1600,3200,4800,'July','2016',115,'2017-06-19','Crevrand Kaondo','2017-06-27 02:12:30',0),
(1302,36768.1,44954.5,'July 2016',1911.1,469.8,6736.35,1450,2900,4350,'July','2016',113,'2017-06-19','Crevrand Kaondo','2017-06-27 01:12:58',0),
(1303,39434.3,48906.2,'July 2016',2042.9,502.2,7921.86,1550,3100,4650,'July','2016',114,'2017-06-19','Crevrand Kaondo','2017-06-27 02:20:33',0),
(1304,26650,30500,'July 2016',1911.1,469.8,2400,1450,2900,4350,'July','2016',148,'2017-06-19','Crevrand Kaondo',NULL,0),
(1305,24050,26500,'July 2016',1647.5,405,1200,1250,2500,3750,'July','2016',116,'2017-06-19','Crevrand Kaondo','2017-06-27 01:59:15',0),
(1306,30910.8,36301.1,'July 2016',1647.5,405,4140.34,1250,2500,3750,'July','2016',88,'2017-06-19','Crevrand Kaondo','2017-06-27 01:07:18',0),
(1308,38297.1,47210.2,'July 2016',1977,486,7413.06,1500,3000,4500,'July','2016',90,'2017-06-19','Crevrand Kaondo','2017-06-27 02:02:32',0),
(1309,9877.27,10277.3,'July 2016',527.2,129.6,0,400,800,1200,'July','2016',91,'2017-06-19','Crevrand Kaondo',NULL,0),
(1310,34723.9,42034.1,'July 2016',1911.1,469.8,5860.23,1450,2900,4350,'July','2016',118,'2017-06-19','Crevrand Kaondo','2017-06-27 02:03:38',0),
(1311,29300,34000,'July 2016',1647.5,405,3450,1250,2500,3750,'July','2016',87,'2017-06-19','Crevrand Kaondo','2017-06-27 02:22:06',0),
(1312,24050,26500,'July 2016',1647.5,405,1200,1250,2500,3750,'July','2016',147,'2017-06-19','Crevrand Kaondo','2017-06-27 02:04:57',0),
(1313,26650,30500,'July 2016',1911.1,469.8,2400,1450,2900,4350,'July','2016',119,'2017-06-19','Crevrand Kaondo','2017-06-27 02:05:38',0),
(1314,27868.2,31954.6,'July 2016',1647.5,405,2836.36,1250,2500,3750,'July','2016',120,'2017-06-19','Crevrand Kaondo','2017-06-27 02:06:32',0),
(1315,51706.9,66295.5,'July 2016',1911.1,469.8,13138.7,1450,2900,4350,'July','2016',121,'2017-06-19','Crevrand Kaondo','2017-06-27 02:07:10',0),
(1316,40125,49750,'July 2016',1911.1,469.8,8175,1450,2900,4350,'July','2016',122,'2017-06-19','Crevrand Kaondo','2017-06-27 02:13:17',0),
(1317,44118.1,55454.5,'July 2016',1911.1,469.8,9886.35,1450,2900,4350,'July','2016',126,'2017-06-19','Crevrand Kaondo','2017-06-27 02:14:30',0),
(1318,34375.8,41536.9,'July 2016',1911.1,469.8,5711.07,1450,2900,4350,'July','2016',128,'2017-06-19','Crevrand Kaondo','2017-06-27 02:32:31',0),
(1319,31104.5,36863.6,'July 2016',1911.1,469.8,4309.09,1450,2900,4350,'July','2016',127,'2017-06-19','Crevrand Kaondo','2017-06-27 02:15:38',0),
(1320,39043.1,48204.5,'July 2016',1911.1,469.8,7711.35,1450,2900,4350,'July','2016',129,'2017-06-19','Crevrand Kaondo','2017-06-27 02:21:29',0),
(1321,40572.7,50818.2,'July 2016',2306.5,567,8495.46,1750,3500,5250,'July','2016',22,'2017-06-19','Crevrand Kaondo','2017-06-27 02:23:43',0),
(1322,34954.5,42363.6,'July 2016',1911.1,469.8,5959.08,1450,2900,4350,'July','2016',123,'2017-06-19','Crevrand Kaondo','2017-06-27 02:24:26',0),
(1323,31104.5,36863.6,'July 2016',1911.1,469.8,4309.09,1450,2900,4350,'July','2016',94,'2017-06-19','Crevrand Kaondo','2017-06-27 02:26:04',0),
(1324,51436.4,65909.1,'July 2016',1911.1,469.8,13022.7,1450,2900,4350,'July','2016',131,'2017-06-19','Crevrand Kaondo','2017-06-27 02:30:39',0),
(1325,38621.6,47602.3,'July 2016',1911.1,469.8,7530.69,1450,2900,4350,'July','2016',132,'2017-06-19','Crevrand Kaondo','2017-06-27 02:33:27',0),
(1326,26650,30500,'June 2016',1911.1,469.8,2400,1450,2900,4350,'June','2016',99,'2017-06-19','Crevrand Kaondo','2017-06-26 23:03:18',0),
(1327,26650,30500,'June 2016',1911.1,469.8,2400,1450,2900,4350,'June','2016',100,'2017-06-19','Crevrand Kaondo','2017-06-26 23:21:46',0),
(1328,27300,31500,'June 2016',1977,486,2700,1500,3000,4500,'June','2016',101,'2017-06-19','Crevrand Kaondo','2017-06-26 23:26:30',0),
(1329,26650,30500,'June 2016',1911.1,469.8,2400,1450,2900,4350,'June','2016',102,'2017-06-19','Crevrand Kaondo','2017-06-26 23:00:23',0),
(1330,27300,31500,'June 2016',1977,486,2700,1500,3000,4500,'June','2016',103,'2017-06-19','Crevrand Kaondo','2017-06-26 23:28:08',0),
(1331,20275,21500,'June 2016',1318,324,225,1000,2000,3000,'June','2016',104,'2017-06-19','Crevrand Kaondo','2017-06-27 00:36:06',0),
(1332,26650,30500,'June 2016',1911.1,469.8,2400,1450,2900,4350,'June','2016',39,'2017-06-19','Crevrand Kaondo','2017-06-27 00:41:14',0),
(1333,26650,30500,'June 2016',1911.1,469.8,2400,1450,2900,4350,'June','2016',105,'2017-06-19','Crevrand Kaondo','2017-06-27 00:45:28',0),
(1334,84100,119000,'June 2016',7842.1,1927.8,28950,5950,11900,17850,'June','2016',40,'2017-06-19','Crevrand Kaondo','2017-06-26 23:01:01',0),
(1335,36000,45000,'June 2016',2965.5,729,6750,2250,4500,6750,'June','2016',107,'2017-06-19','Crevrand Kaondo','2017-06-26 23:07:26',0),
(1336,36650,46000,'June 2016',3031.4,745.2,7050,2300,4600,6900,'June','2016',92,'2017-06-19','Crevrand Kaondo','2017-06-26 23:14:00',0),
(1337,33780,51200,'June 2016',3374.08,829.44,8610,2560,5120,7680,'June','2016',85,'2017-06-19','Crevrand Kaondo',NULL,0),
(1338,40030,51200,'June 2016',3374.08,829.44,8610,2560,5120,7680,'June','2016',86,'2017-06-19','Crevrand Kaondo',NULL,0),
(1339,31360,37800,'June 2016',2438.3,599.4,4590,1850,3700,5550,'June','2016',108,'2017-06-19','Crevrand Kaondo','2017-06-27 00:42:15',0),
(1340,31360,37800,'June 2016',2438.3,599.4,4590,1850,3700,5550,'June','2016',111,'2017-06-19','Crevrand Kaondo','2017-06-26 23:21:03',0),
(1341,35350,44000,'June 2016',2899.6,712.8,6450,2200,4400,6600,'June','2016',112,'2017-06-19','Crevrand Kaondo','2017-06-27 00:40:07',0),
(1342,88413.4,125636,'June 2016',8279.41,2035.3,30940.8,6281.8,12563.6,18845.4,'June','2016',150,'2017-06-19','Crevrand Kaondo',NULL,0),
(1343,28600,33500,'June 2016',2108.8,518.4,3300,1600,3200,4800,'June','2016',115,'2017-06-19','Crevrand Kaondo','2017-06-26 23:25:06',0),
(1344,26650,30500,'June 2016',1911.1,469.8,2400,1450,2900,4350,'June','2016',113,'2017-06-19','Crevrand Kaondo','2017-06-26 23:01:27',0),
(1345,27950,32500,'June 2016',2042.9,502.2,3000,1550,3100,4650,'June','2016',114,'2017-06-19','Crevrand Kaondo','2017-06-27 00:36:41',0),
(1346,26650,30500,'June 2016',1911.1,469.8,2400,1450,2900,4350,'June','2016',148,'2017-06-19','Crevrand Kaondo',NULL,0),
(1347,24050,26500,'June 2016',1647.5,405,1200,1250,2500,3750,'June','2016',88,'2017-06-19','Crevrand Kaondo','2017-06-26 22:59:49',0),
(1348,24050,26500,'June 2016',1647.5,405,1200,1250,2500,3750,'June','2016',116,'2017-06-19','Crevrand Kaondo','2017-06-26 23:02:16',0),
(1349,27300,31500,'June 2016',1977,486,2700,1500,3000,4500,'June','2016',117,'2017-06-19','Crevrand Kaondo','2017-06-26 23:09:28',0),
(1350,26650,30500,'June 2016',1911.1,469.8,2400,1450,2900,4350,'June','2016',89,'2017-06-19','Crevrand Kaondo','2017-06-26 23:11:54',0),
(1351,27300,31500,'June 2016',1977,486,2700,1500,3000,4500,'June','2016',90,'2017-06-19','Crevrand Kaondo','2017-06-26 23:12:34',0),
(1352,24050,26500,'June 2016',1647.5,405,1200,1250,2500,3750,'June','2016',87,'2017-06-19','Crevrand Kaondo','2017-06-27 00:37:55',0),
(1353,26650,30500,'June 2016',1911.1,469.8,2400,1450,2900,4350,'June','2016',118,'2017-06-19','Crevrand Kaondo','2017-06-26 23:13:25',0),
(1354,24050,26500,'June 2016',1647.5,405,1200,1250,2500,3750,'June','2016',147,'2017-06-19','Crevrand Kaondo','2017-06-26 23:15:01',0),
(1355,26650,30500,'June 2016',1911.1,469.8,2400,1450,2900,4350,'June','2016',119,'2017-06-19','Crevrand Kaondo','2017-06-26 23:18:54',0),
(1356,24050,26500,'June 2016',1647.5,405,1200,1250,2500,3750,'June','2016',120,'2017-06-19','Crevrand Kaondo','2017-06-26 23:19:32',0),
(1357,26650,30500,'June 2016',1911.1,469.8,2400,1450,2900,4350,'June','2016',121,'2017-06-19','Crevrand Kaondo','2017-06-26 23:20:15',0),
(1358,26650,30500,'June 2016',1911.1,469.8,2400,1450,2900,4350,'June','2016',122,'2017-06-19','Crevrand Kaondo','2017-06-26 23:25:41',0),
(1359,26650,30500,'June 2016',1911.1,469.8,2400,1450,2900,4350,'June','2016',126,'2017-06-19','Crevrand Kaondo','2017-06-26 23:27:26',0),
(1360,26650,30500,'June 2016',1911.1,469.8,2400,1450,2900,4350,'June','2016',129,'2017-06-19','Crevrand Kaondo','2017-06-27 00:37:15',0),
(1361,8400,8800,'June 2016',527.2,129.6,0,400,800,1200,'June','2016',91,'2017-06-19','Crevrand Kaondo',NULL,0),
(1362,26650,30500,'June 2016',1911.1,469.8,2400,1450,2900,4350,'June','2016',128,'2017-06-19','Crevrand Kaondo','2017-06-27 00:47:14',0),
(1363,26650,30500,'June 2016',1911.1,469.8,2400,1450,2900,4350,'June','2016',127,'2017-06-19','Crevrand Kaondo','2017-06-26 23:29:11',0),
(1364,30550,36500,'June 2016',2306.5,567,4200,1750,3500,5250,'June','2016',22,'2017-06-19','Crevrand Kaondo','2017-06-27 00:38:50',0),
(1365,26650,30500,'June 2016',1911.1,469.8,2400,1450,2900,4350,'June','2016',123,'2017-06-19','Crevrand Kaondo','2017-06-27 00:39:26',0),
(1366,26650,30500,'June 2016',1911.1,469.8,2400,1450,2900,4350,'June','2016',94,'2017-06-19','Crevrand Kaondo','2017-06-27 00:40:42',0),
(1367,26650,30500,'June 2016',1911.1,469.8,2400,1450,2900,4350,'June','2016',132,'2017-06-19','Crevrand Kaondo','2017-06-27 00:47:44',0),
(1368,26650,30500,'June 2016',1911.1,469.8,2400,1450,2900,4350,'June','2016',131,'2017-06-19','Crevrand Kaondo','2017-06-27 00:43:15',0),
(1369,25300,26500,'August 2016',0,405,1200,0,0,0,'August','2016',151,'2017-06-19','Crevrand Kaondo','2017-06-27 04:14:42',0),
(1370,25300,26500,'September 2016',0,405,1200,0,0,0,'September','2016',151,'2017-06-19','Brian Nkhata','2017-06-27 07:06:15',0),
(1371,25300,26500,'July 2016',0,405,1200,0,0,0,'July','2016',151,'2017-06-19','Crevrand Kaondo','2017-06-27 02:22:55',0),
(1372,23000,25000,'June 2016',1647.5,405,750,1250,2500,3750,'June','2016',151,'2017-06-19','Crevrand Kaondo',NULL,0),
(1373,26650,30500,'August 2016',1911.1,469.8,2400,1450,2900,4350,'August','2016',152,'2017-06-19','Crevrand Kaondo','2017-06-27 04:37:28',0),
(1374,26650,30500,'July 2016',1911.1,469.8,2400,1450,2900,4350,'July','2016',152,'2017-06-19','Crevrand Kaondo','2017-06-27 02:31:09',0),
(1375,26650,30500,'June 2016',1911.1,469.8,2400,1450,2900,4350,'June','2016',152,'2017-06-19','Crevrand Kaondo','2017-06-27 00:44:28',0),
(1376,24050,26500,'August 2016',1647.5,405,1200,1250,2500,3750,'August','2016',153,'2017-06-19','Crevrand Kaondo',NULL,0),
(1377,24050,26500,'July 2016',1647.5,405,1200,1250,2500,3750,'July','2016',153,'2017-06-19','Crevrand Kaondo',NULL,0),
(1378,24050,26500,'June 2016',1647.5,405,1200,1250,2500,3750,'June','2016',153,'2017-06-19','Crevrand Kaondo',NULL,0),
(1379,31104.5,36863.6,'May 2016',1911.1,469.8,4309.09,1450,2900,4350,'May','2016',99,'2017-06-19','Crevrand Kaondo','2017-06-26 21:05:02',0),
(1380,31104.5,36863.6,'May 2016',1911.1,469.8,4309.09,1450,2900,4350,'May','2016',100,'2017-06-19','Crevrand Kaondo','2017-06-26 21:43:54',0),
(1381,31754.5,37863.6,'May 2016',1977,486,4609.09,1500,3000,4500,'May','2016',101,'2017-06-19','Crevrand Kaondo','2017-06-26 21:46:09',0),
(1382,31104.5,36863.6,'May 2016',1911.1,469.8,4309.09,1450,2900,4350,'May','2016',102,'2017-06-19','Crevrand Kaondo','2017-06-26 21:01:08',0),
(1383,60788.6,79340.9,'May 2016',1977,486,17052.3,1500,3000,4500,'May','2016',103,'2017-06-19','Crevrand Kaondo','2017-06-26 21:47:33',0),
(1384,23981.8,26045.4,'May 2016',1318,324,1063.64,1000,2000,3000,'May','2016',104,'2017-06-19','Crevrand Kaondo','2017-06-26 21:48:57',0),
(1385,28481.8,31045.4,'May 2016',0,405,2563.64,0,0,0,'May','2016',151,'2017-06-19','Crevrand Kaondo','2017-06-26 21:51:13',0),
(1386,27231.8,31045.4,'May 2016',1647.5,405,2563.64,1250,2500,3750,'May','2016',153,'2017-06-19','Crevrand Kaondo',NULL,0),
(1387,31740.9,37772.7,'May 2016',1911.1,469.8,4581.82,1450,2900,4350,'May','2016',39,'2017-06-19','Crevrand Kaondo','2017-06-26 21:59:06',0),
(1388,30340.9,35772.7,'May 2016',1911.1,469.8,3981.82,1450,2900,4350,'May','2016',152,'2017-06-19','Crevrand Kaondo','2017-06-26 22:00:32',0),
(1389,30340.9,35772.7,'May 2016',1911.1,469.8,3981.82,1450,2900,4350,'May','2016',105,'2017-06-19','Crevrand Kaondo','2017-06-26 22:02:52',0),
(1390,24250,25000,'May 2016',0,405,750,0,0,0,'May','2016',135,'2017-06-19','Crevrand Kaondo',NULL,0),
(1391,84100,119000,'May 2016',7842.1,1927.8,28950,5950,11900,17850,'May','2016',40,'2017-06-19','Crevrand Kaondo','2017-06-26 21:01:53',0),
(1392,36000,45000,'May 2016',2965.5,729,6750,2250,4500,6750,'May','2016',107,'2017-06-19','Crevrand Kaondo','2017-06-26 21:05:32',0),
(1393,39800,50500,'May 2016',3031.4,745.2,8400,2300,4600,6900,'May','2016',92,'2017-06-19','Crevrand Kaondo','2017-06-26 21:10:51',0),
(1394,33780,51200,'May 2016',3374.08,829.44,8610,2560,5120,7680,'May','2016',85,'2017-06-19','Crevrand Kaondo','2017-06-26 21:54:13',0),
(1395,40030,51200,'May 2016',3374.08,829.44,8610,2560,5120,7680,'May','2016',86,'2017-06-19','Crevrand Kaondo',NULL,0),
(1396,31360,37800,'May 2016',2438.3,599.4,4590,1850,3700,5550,'May','2016',108,'2017-06-19','Crevrand Kaondo','2017-06-26 21:06:02',0),
(1397,31360,37800,'May 2016',2438.3,599.4,4590,1850,3700,5550,'May','2016',111,'2017-06-19','Crevrand Kaondo','2017-06-26 21:17:17',0),
(1398,35350,44000,'May 2016',2899.6,712.8,6450,2200,4400,6600,'May','2016',112,'2017-06-19','Crevrand Kaondo','2017-06-26 21:56:45',0),
(1399,108651,154547,'May 2016',8279.41,2035.3,39614,6281.8,12563.6,18845.4,'May','2016',150,'2017-06-19','Crevrand Kaondo',NULL,0),
(1400,28600,33500,'May 2016',2108.8,518.4,3300,1600,3200,4800,'May','2016',115,'2017-06-19','Crevrand Kaondo','2017-06-26 21:44:33',0),
(1402,40572.7,50818.2,'May 2016',2306.5,567,8495.46,1750,3500,5250,'May','2016',114,'2017-06-19','Crevrand Kaondo',NULL,0),
(1403,30340.9,35772.7,'May 2016',1911.1,469.8,3981.82,1450,2900,4350,'May','2016',148,'2017-06-19','Crevrand Kaondo',NULL,0),
(1404,27613.6,31590.9,'May 2016',1647.5,405,2727.27,1250,2500,3750,'May','2016',116,'2017-06-19','Crevrand Kaondo','2017-06-26 21:03:32',0),
(1405,25959.1,29227.3,'May 2016',1647.5,405,2018.18,1250,2500,3750,'May','2016',88,'2017-06-19','Crevrand Kaondo','2017-06-26 20:59:23',0),
(1407,34260.2,41443.2,'May 2016',1977,486,5682.95,1500,3000,4500,'May','2016',90,'2017-06-19','Crevrand Kaondo','2017-06-26 21:09:02',0),
(1410,31104.5,36863.6,'May 2016',1911.1,469.8,4309.09,1450,2900,4350,'May','2016',118,'2017-06-19','Crevrand Kaondo','2017-06-26 21:10:13',0),
(1411,27868.2,31954.6,'May 2016',1647.5,405,2836.36,1250,2500,3750,'May','2016',87,'2017-06-19','Crevrand Kaondo','2017-06-26 21:50:31',0),
(1412,24050,26500,'May 2016',1647.5,405,1200,1250,2500,3750,'May','2016',147,'2017-06-19','Crevrand Kaondo','2017-06-26 21:12:01',0),
(1413,32775,39250,'May 2016',1911.1,469.8,5025,1450,2900,4350,'May','2016',119,'2017-06-19','Crevrand Kaondo','2017-06-26 21:12:41',0),
(1414,27868.2,31954.6,'May 2016',1647.5,405,2836.36,1250,2500,3750,'May','2016',120,'2017-06-19','Crevrand Kaondo','2017-06-26 21:13:14',0),
(1415,36672.7,44818.2,'May 2016',1911.1,469.8,6695.46,1450,2900,4350,'May','2016',121,'2017-06-19','Crevrand Kaondo','2017-06-26 21:16:36',0),
(1416,36450,44500,'May 2016',1911.1,469.8,6600,1450,2900,4350,'May','2016',122,'2017-06-19','Crevrand Kaondo','2017-06-26 21:45:19',0),
(1417,39822.7,49318.2,'May 2016',1911.1,469.8,8045.46,1450,2900,4350,'May','2016',126,'2017-06-19','Crevrand Kaondo','2017-06-26 21:46:52',0),
(1418,36115.9,44022.7,'May 2016',1911.1,469.8,6456.81,1450,2900,4350,'May','2016',128,'2017-06-19','Crevrand Kaondo','2017-06-26 22:03:46',0),
(1419,33331.8,40045.4,'May 2016',1911.1,469.8,5263.63,1450,2900,4350,'May','2016',127,'2017-06-19','Crevrand Kaondo','2017-06-26 21:48:16',0),
(1420,33904.5,40863.6,'May 2016',1911.1,469.8,5509.08,1450,2900,4350,'May','2016',129,'2017-06-19','Crevrand Kaondo','2017-06-26 21:49:40',0),
(1421,40572.7,50818.2,'May 2016',2306.5,567,8495.46,1750,3500,5250,'May','2016',22,'2017-06-19','Crevrand Kaondo','2017-06-26 21:55:28',0),
(1423,26650,30500,'May 2016',1911.1,469.8,2400,1450,2900,4350,'May','2016',94,'2017-06-19','Crevrand Kaondo','2017-06-26 21:57:24',0),
(1424,38740.9,47772.7,'May 2016',1911.1,469.8,7581.81,1450,2900,4350,'May','2016',131,'2017-06-19','Crevrand Kaondo','2017-06-26 21:59:56',0),
(1426,29990.9,35272.7,'May 2016',1911.1,469.8,3831.82,1450,2900,4350,'May','2016',132,'2017-06-19','Crevrand Kaondo','2017-06-26 22:04:42',0),
(1427,34365.2,41950.3,'July 2016',2306.5,567,5835.08,1750,3500,5250,'July','2016',149,'2017-06-19','Crevrand Kaondo',NULL,0),
(1430,29500,35000,'January 2016',2306.5,567,3750,1750,3500,5250,'January','2016',97,'2017-06-19','Crevrand Kaondo',NULL,0),
(1431,32214.5,38877.8,'July 2016',2306.5,567,4913.35,1750,3500,5250,'July','2016',97,'2017-06-19','Crevrand Kaondo',NULL,0),
(1432,29500,35000,'June 2016',2306.5,567,3750,1750,3500,5250,'June','2016',149,'2017-06-19','Crevrand Kaondo',NULL,0),
(1435,29500,35000,'June 2016',2306.5,567,3750,1750,3500,5250,'June','2016',149,'2017-06-19','Crevrand Kaondo',NULL,0),
(1437,29500,35000,'May 2016',2306.5,567,3750,1750,3500,5250,'May','2016',149,'2017-06-19','Crevrand Kaondo',NULL,0),
(1439,29500,35000,'August 2016',2306.5,567,3750,1750,3500,5250,'August','2016',149,'2017-06-19','Crevrand Kaondo',NULL,0),
(1440,29500,35000,'September 2016',2306.5,567,3750,1750,3500,5250,'September','2016',149,'2017-06-19','Crevrand Kaondo',NULL,0),
(1441,29500,35000,'October 2016',2306.5,567,3750,1750,3500,5250,'October','2016',149,'2017-06-19','Crevrand Kaondo',NULL,0),
(1442,34929,42755.7,'September 2016',2306.5,567,6076.7,1750,3500,5250,'September','2016',97,'2017-06-19','Crevrand Kaondo',NULL,0),
(1443,29500,35000,'August 2016',2306.5,567,3750,1750,3500,5250,'August','2016',97,'2017-06-19','Crevrand Kaondo',NULL,0),
(1445,29500,35000,'November 2016',2306.5,567,3750,1750,3500,5250,'November','2016',97,'2017-06-19','Crevrand Kaondo',NULL,0),
(1446,29500,35000,'December 2016',2306.5,567,3750,1750,3500,5250,'December','2016',97,'2017-06-19','Crevrand Kaondo',NULL,0),
(1449,29500,35000,'October 2016',2306.5,567,3750,1750,3500,5250,'October','2016',95,'2017-06-19','Crevrand Kaondo',NULL,0),
(1450,41604.5,51863.6,'April 2016',1911.1,469.8,8809.09,1450,2900,4350,'April','2016',99,'2017-06-20','Crevrand Kaondo','2017-06-26 19:37:11',0),
(1451,41604.5,51863.6,'April 2016',1911.1,469.8,8809.09,1450,2900,4350,'April','2016',100,'2017-06-20','Crevrand Kaondo','2017-06-26 19:49:07',0),
(1452,42254.5,52863.6,'April 2016',1977,486,9109.09,1500,3000,4500,'April','2016',101,'2017-06-20','Crevrand Kaondo','2017-06-26 20:02:24',0),
(1453,41604.5,51863.6,'April 2016',1911.1,469.8,8809.09,1450,2900,4350,'April','2016',102,'2017-06-20','Crevrand Kaondo','2017-06-26 19:34:02',0),
(1454,54345.5,70136.4,'April 2016',1977,486,14290.9,1500,3000,4500,'April','2016',103,'2017-06-20','Crevrand Kaondo','2017-06-26 20:04:03',0),
(1455,31300,36500,'April 2016',1318,324,4200,1000,2000,3000,'April','2016',104,'2017-06-20','Crevrand Kaondo','2017-06-26 20:05:09',0),
(1456,35800,41500,'April 2016',0,405,5700,0,0,0,'April','2016',151,'2017-06-20','Crevrand Kaondo','2017-06-26 20:10:44',0),
(1457,27231.8,31045.4,'April 2016',1647.5,405,2563.64,1250,2500,3750,'April','2016',153,'2017-06-20','Crevrand Kaondo',NULL,0),
(1458,42240.9,52772.7,'April 2016',1911.1,469.8,9081.82,1450,2900,4350,'April','2016',39,'2017-06-20','Crevrand Kaondo','2017-06-26 20:14:32',0),
(1459,40840.9,50772.7,'April 2016',1911.1,469.8,8481.82,1450,2900,4350,'April','2016',152,'2017-06-20','Crevrand Kaondo','2017-06-26 20:15:55',0),
(1460,40840.9,50772.7,'April 2016',1911.1,469.8,8481.82,1450,2900,4350,'April','2016',105,'2017-06-20','Crevrand Kaondo','2017-06-26 20:16:26',0),
(1461,113500,161000,'April 2016',7842.1,1927.8,41550,5950,11900,17850,'April','2016',40,'2017-06-20','Crevrand Kaondo','2017-06-26 19:35:09',0),
(1462,46500,60000,'April 2016',2965.5,729,11250,2250,4500,6750,'April','2016',107,'2017-06-20','Crevrand Kaondo','2017-06-26 19:38:35',0),
(1463,36650,46000,'April 2016',3031.4,745.2,7050,2300,4600,6900,'April','2016',92,'2017-06-20','Crevrand Kaondo','2017-06-26 19:44:00',0),
(1464,33780,51200,'April 2016',3374.08,829.44,8610,2560,5120,7680,'April','2016',85,'2017-06-20','Crevrand Kaondo','2017-06-26 20:11:38',0),
(1465,40030,51200,'April 2016',3374.08,829.44,8610,2560,5120,7680,'April','2016',86,'2017-06-20','Crevrand Kaondo',NULL,0),
(1467,47587.3,60981.8,'April 2016',2438.3,599.4,11544.5,1850,3700,5550,'April','2016',108,'2017-06-20','Crevrand Kaondo','2017-06-26 19:39:04',0),
(1468,41860,52800,'April 2016',2438.3,599.4,9090,1850,3700,5550,'April','2016',111,'2017-06-20','Crevrand Kaondo','2017-06-26 19:48:36',0),
(1469,45850,59000,'April 2016',2899.6,712.8,10950,2200,4400,6600,'April','2016',112,'2017-06-20','Crevrand Kaondo','2017-06-26 20:13:27',0),
(1470,88413.4,125636,'April 2016',8279.41,2035.3,30940.8,6281.8,12563.6,18845.4,'April','2016',150,'2017-06-20','Crevrand Kaondo',NULL,0),
(1471,44827.3,56681.8,'April 2016',2108.8,518.4,10254.5,1600,3200,4800,'April','2016',115,'2017-06-20','Crevrand Kaondo','2017-06-26 19:59:36',0),
(1472,42750,53500,'April 2016',1911.1,469.8,9300,1450,2900,4350,'April','2016',113,'2017-06-20','Crevrand Kaondo','2017-06-26 19:36:03',0),
(1473,44296.6,55852.3,'April 2016',2042.9,502.2,10005.7,1550,3100,4650,'April','2016',114,'2017-06-20','Crevrand Kaondo','2017-06-26 20:05:47',0),
(1474,29879.5,35113.6,'April 2016',1911.1,469.8,3784.09,1450,2900,4350,'April','2016',148,'2017-06-20','Crevrand Kaondo',NULL,0),
(1475,37612.5,45875,'April 2016',1647.5,405,7012.5,1250,2500,3750,'April','2016',116,'2017-06-20','Crevrand Kaondo','2017-06-26 19:36:39',0),
(1476,38606.8,47295.4,'April 2016',1647.5,405,7438.63,1250,2500,3750,'April','2016',88,'2017-06-20','Crevrand Kaondo','2017-06-26 19:30:41',0),
(1478,44481.8,56045.4,'April 2016',1977,486,10063.6,1500,3000,4500,'April','2016',90,'2017-06-20','Crevrand Kaondo','2017-06-26 19:42:09',0),
(1479,9650,10050,'April 2016',527.2,129.6,0,400,800,1200,'April','2016',91,'2017-06-20','Crevrand Kaondo',NULL,0),
(1480,37150,45500,'April 2016',1911.1,469.8,6900,1450,2900,4350,'April','2016',118,'2017-06-20','Crevrand Kaondo','2017-06-26 19:43:19',0),
(1481,34550,41500,'April 2016',1647.5,405,5700,1250,2500,3750,'April','2016',147,'2017-06-20','Crevrand Kaondo','2017-06-26 19:45:24',0),
(1482,41186.9,51267.1,'April 2016',1911.1,469.8,8630.12,1450,2900,4350,'April','2016',119,'2017-06-20','Crevrand Kaondo','2017-06-26 19:46:40',0),
(1483,38666.5,47380.7,'April 2016',1647.5,405,7464.2,1250,2500,3750,'April','2016',120,'2017-06-20','Crevrand Kaondo','2017-06-26 19:47:17',0),
(1484,56638.6,73340.9,'April 2016',1911.1,469.8,15252.3,1450,2900,4350,'April','2016',121,'2017-06-20','Crevrand Kaondo','2017-06-26 19:48:00',0),
(1485,41743.8,52062.5,'April 2016',1911.1,469.8,8868.75,1450,2900,4350,'April','2016',122,'2017-06-20','Crevrand Kaondo','2017-06-26 20:01:42',0),
(1486,54475,70250,'April 2016',1911.1,469.8,14325,1450,2900,4350,'April','2016',126,'2017-06-20','Crevrand Kaondo','2017-06-26 20:03:15',0),
(1487,42161.4,52659.1,'April 2016',1911.1,469.8,9047.73,1450,2900,4350,'April','2016',128,'2017-06-20','Crevrand Kaondo','2017-06-26 20:17:43',0),
(1488,43414.2,54448.9,'April 2016',1911.1,469.8,9584.66,1450,2900,4350,'April','2016',127,'2017-06-20','Crevrand Kaondo','2017-06-26 20:04:31',0),
(1489,41684.1,51977.3,'April 2016',1911.1,469.8,8843.18,1450,2900,4350,'April','2016',129,'2017-06-20','Crevrand Kaondo','2017-06-26 20:08:52',0),
(1490,50893.8,65562.5,'April 2016',2306.5,567,12918.8,1750,3500,5250,'April','2016',22,'2017-06-20','Crevrand Kaondo','2017-06-26 20:12:21',0),
(1491,37150,45500,'April 2016',1911.1,469.8,6900,1450,2900,4350,'April','2016',123,'2017-06-20','Crevrand Kaondo','2017-06-26 20:12:55',0),
(1492,38542,47488.6,'April 2016',1911.1,469.8,7496.59,1450,2900,4350,'April','2016',94,'2017-06-20','Crevrand Kaondo','2017-06-26 20:13:57',0),
(1493,46822.7,59318.2,'April 2016',1911.1,469.8,11045.5,1450,2900,4350,'April','2016',131,'2017-06-20','Crevrand Kaondo','2017-06-26 20:15:21',0),
(1494,44400.8,56286.9,'April 2016',2306.5,567,10136.1,1750,3500,5250,'April','2016',132,'2017-06-20','Crevrand Kaondo',NULL,0),
(1496,26650,30500,'May 2016',1911.1,469.8,2400,1450,2900,4350,'May','2016',154,'2017-06-20','Crevrand Kaondo',NULL,0),
(1497,26650,30500,'April 2016',1911.1,469.8,2400,1450,2900,4350,'April','2016',154,'2017-06-20','Crevrand Kaondo',NULL,0),
(1498,26650,30500,'June 2016',1911.1,469.8,2400,1450,2900,4350,'June','2016',154,'2017-06-20','Crevrand Kaondo',NULL,0),
(1499,32777.3,39681.8,'March 2016',2306.5,567,5154.55,1750,3500,5250,'March','2016',99,'2017-06-20','Crevrand Kaondo',NULL,0),
(1500,19000,20000,'March 2016',1318,324,0,1000,2000,3000,'March','2016',1,'2017-06-20','Crevrand Kaondo',NULL,0),
(1501,32777.3,39681.8,'March 2016',2306.5,567,5154.55,1750,3500,5250,'March','2016',100,'2017-06-20','Crevrand Kaondo',NULL,0),
(1502,32777.3,39681.8,'March 2016',2306.5,567,5154.55,1750,3500,5250,'March','2016',101,'2017-06-20','Crevrand Kaondo',NULL,0),
(1503,32777.3,39681.8,'March 2016',2306.5,567,5154.55,1750,3500,5250,'March','2016',102,'2017-06-20','Crevrand Kaondo',NULL,0),
(1504,36345.5,45136.4,'March 2016',2636,648,6790.91,2000,4000,6000,'March','2016',103,'2017-06-20','Crevrand Kaondo',NULL,0),
(1505,25640.9,28772.7,'March 2016',1647.5,405,1881.82,1250,2500,3750,'March','2016',104,'2017-06-20','Crevrand Kaondo',NULL,0),
(1506,24590.9,27272.7,'March 2016',1647.5,405,1431.82,1250,2500,3750,'March','2016',151,'2017-06-20','Crevrand Kaondo',NULL,0),
(1507,25640.9,28772.7,'March 2016',1647.5,405,1881.82,1250,2500,3750,'March','2016',153,'2017-06-20','Crevrand Kaondo',NULL,0),
(1508,36345.5,45136.4,'March 2016',2636,648,6790.91,2000,4000,6000,'March','2016',39,'2017-06-20','Crevrand Kaondo',NULL,0),
(1509,28495.5,33136.4,'March 2016',1911.1,469.8,3190.91,1450,2900,4350,'March','2016',152,'2017-06-20','Crevrand Kaondo',NULL,0),
(1510,28495.5,33136.4,'March 2016',1911.1,469.8,3190.91,1450,2900,4350,'March','2016',105,'2017-06-20','Crevrand Kaondo',NULL,0),
(1511,84100,119000,'March 2016',7842.1,1927.8,28950,5950,11900,17850,'March','2016',40,'2017-06-20','Crevrand Kaondo','2017-06-25 00:20:38',0),
(1512,30150,36000,'March 2016',2372.4,583.2,4050,1800,3600,5400,'March','2016',92,'2017-06-20','Crevrand Kaondo',NULL,0),
(1513,33780,51200,'March 2016',3374.08,829.44,8610,2560,5120,7680,'March','2016',85,'2017-06-20','Crevrand Kaondo',NULL,0),
(1514,40030,51200,'March 2016',3374.08,829.44,8610,2560,5120,7680,'March','2016',86,'2017-06-20','Crevrand Kaondo',NULL,0),
(1515,41727.3,53181.8,'March 2016',2965.5,729,9204.55,2250,4500,6750,'March','2016',108,'2017-06-20','Crevrand Kaondo',NULL,0),
(1516,36000,45000,'March 2016',2965.5,729,6750,2250,4500,6750,'March','2016',111,'2017-06-20','Crevrand Kaondo',NULL,0),
(1517,36000,45000,'March 2016',2965.5,729,6750,2250,4500,6750,'March','2016',112,'2017-06-20','Crevrand Kaondo',NULL,0),
(1518,88413.4,125636,'March 2016',8279.41,2035.3,30940.8,6281.8,12563.6,18845.4,'March','2016',150,'2017-06-20','Crevrand Kaondo',NULL,0),
(1519,34063.6,41590.9,'March 2016',2372.4,583.2,5727.27,1800,3600,5400,'March','2016',115,'2017-06-20','Crevrand Kaondo',NULL,0),
(1520,31654.5,37863.6,'March 2016',2108.8,518.4,4609.09,1600,3200,4800,'March','2016',113,'2017-06-20','Crevrand Kaondo',NULL,0),
(1521,33612.5,40875,'March 2016',2306.5,567,5512.5,1750,3500,5250,'March','2016',114,'2017-06-20','Crevrand Kaondo',NULL,0),
(1522,26650,30500,'March 2016',1911.1,469.8,2400,1450,2900,4350,'March','2016',148,'2017-06-20','Crevrand Kaondo',NULL,0),
(1523,26000,29500,'March 2016',1845.2,453.6,2100,1400,2800,4200,'March','2016',116,'2017-06-20','Crevrand Kaondo',NULL,0),
(1524,28194.9,32778.4,'March 2016',1977,486,3083.52,1500,3000,4500,'March','2016',88,'2017-06-20','Crevrand Kaondo',NULL,0),
(1526,35422.2,43460.2,'March 2016',2306.5,567,6288.07,1750,3500,5250,'March','2016',90,'2017-06-20','Crevrand Kaondo',NULL,0),
(1527,35422.2,43460.2,'March 2016',2306.5,567,6288.07,1750,3500,5250,'March','2016',90,'2017-06-20','Crevrand Kaondo',NULL,0),
(1528,8945.46,9345.46,'March 2016',527.2,129.6,0,400,800,1200,'March','2016',91,'2017-06-20','Crevrand Kaondo',NULL,0),
(1529,30550,36500,'March 2016',2306.5,567,4200,1750,3500,5250,'March','2016',118,'2017-06-20','Crevrand Kaondo',NULL,0),
(1530,30550,36500,'March 2016',2306.5,567,4200,1750,3500,5250,'March','2016',119,'2017-06-20','Crevrand Kaondo',NULL,0),
(1531,1500,1500,'March 2016',0,0,0,0,0,0,'March','2016',147,'2017-06-20','Crevrand Kaondo',NULL,0),
(1532,27300,31500,'March 2016',1977,486,2700,1500,3000,4500,'March','2016',120,'2017-06-20','Crevrand Kaondo',NULL,0),
(1533,40781.6,51116.5,'March 2016',2306.5,567,8584.95,1750,3500,5250,'March','2016',121,'2017-06-20','Crevrand Kaondo',NULL,0),
(1534,32825,40000,'March 2016',2537.15,623.7,5250,1925,3850,5775,'March','2016',122,'2017-06-20','Crevrand Kaondo',NULL,0),
(1535,40435.2,50693.2,'March 2016',2372.4,583.2,8457.96,1800,3600,5400,'March','2016',126,'2017-06-20','Crevrand Kaondo',NULL,0),
(1536,26650,30500,'March 2016',1911.1,469.8,2400,1450,2900,4350,'March','2016',154,'2017-06-20','Crevrand Kaondo',NULL,0),
(1537,31942,38488.6,'March 2016',2306.5,567,4796.59,1750,3500,5250,'March','2016',128,'2017-06-20','Crevrand Kaondo',NULL,0),
(1538,31942,38488.6,'March 2016',2306.5,567,4796.59,1750,3500,5250,'March','2016',127,'2017-06-20','Crevrand Kaondo',NULL,0),
(1539,34011.4,41659.1,'March 2016',2504.2,615.6,5747.73,1900,3800,5700,'March','2016',129,'2017-06-20','Crevrand Kaondo',NULL,0),
(1540,9291.48,9741.48,'March 2016',593.1,145.8,0,450,900,1350,'March','2016',34,'2017-06-20','Crevrand Kaondo',NULL,0),
(1541,41524.4,52892.1,'March 2016',2965.5,729,9117.62,2250,4500,6750,'March','2016',22,'2017-06-20','Crevrand Kaondo',NULL,0),
(1542,37805.1,47471.6,'March 2016',2866.65,704.7,7491.48,2175,4350,6525,'March','2016',123,'2017-06-20','Crevrand Kaondo',NULL,0),
(1543,31594,37991.5,'March 2016',2306.5,567,4647.44,1750,3500,5250,'March','2016',94,'2017-06-20','Crevrand Kaondo',NULL,0),
(1544,37940.9,47272.7,'March 2016',2504.2,615.6,7431.82,1900,3800,5700,'March','2016',131,'2017-06-20','Crevrand Kaondo',NULL,0),
(1545,35229.6,42399.4,'March 2016',1581.6,388.8,5969.82,1200,2400,3600,'March','2016',132,'2017-06-20','Crevrand Kaondo','2017-06-26 09:27:44',0),
(1546,32309.1,38227.3,'February 2016',1581.6,388.8,4718.19,1200,2400,3600,'February','2016',99,'2017-06-20','Crevrand Kaondo','2017-06-24 23:33:19',0),
(1547,39459.1,49227.3,'February 2016',2306.5,567,8018.19,1750,3500,5250,'February','2016',100,'2017-06-20','Crevrand Kaondo',NULL,0),
(1548,39459.1,49227.3,'February 2016',2306.5,567,8018.19,1750,3500,5250,'February','2016',101,'2017-06-20','Crevrand Kaondo',NULL,0),
(1549,32309.1,38227.3,'February 2016',1581.6,388.8,4718.19,1200,2400,3600,'February','2016',102,'2017-06-20','Crevrand Kaondo','2017-06-24 19:01:15',0),
(1550,43981.9,56045.5,'February 2016',2636,648,10063.7,2000,4000,6000,'February','2016',103,'2017-06-20','Crevrand Kaondo',NULL,0),
(1552,84100,119000,'February 2016',7842.1,1927.8,28950,5950,11900,17850,'February','2016',40,'2017-06-20','Crevrand Kaondo','2017-06-25 00:19:47',0),
(1553,33400,41000,'February 2016',2701.9,664.2,5550,2050,4100,6150,'February','2016',92,'2017-06-20','Crevrand Kaondo',NULL,0),
(1554,33780,51200,'February 2016',3374.08,829.44,8610,2560,5120,7680,'February','2016',85,'2017-06-20','Crevrand Kaondo',NULL,0),
(1555,40030,51200,'February 2016',3374.08,829.44,8610,2560,5120,7680,'February','2016',86,'2017-06-20','Crevrand Kaondo',NULL,0),
(1556,27550,32000,'February 2016',2108.8,518.4,2850,1600,3200,4800,'February','2016',108,'2017-06-20','Crevrand Kaondo',NULL,0),
(1558,36000,45000,'February 2016',2965.5,729,6750,2250,4500,6750,'February','2016',111,'2017-06-20','Crevrand Kaondo',NULL,0),
(1559,32100,39000,'February 2016',2570.1,631.8,4950,1950,3900,5850,'February','2016',112,'2017-06-20','Crevrand Kaondo',NULL,0),
(1560,31005.7,36579.6,'February 2016',1779.3,437.4,4223.87,1350,2700,4050,'February','2016',115,'2017-06-20','Crevrand Kaondo',NULL,0),
(1563,28363.6,32590.9,'February 2016',1581.6,388.8,3027.27,1200,2400,3600,'February','2016',113,'2017-06-20','Crevrand Kaondo',NULL,0),
(1564,34305.1,41221.6,'February 2016',1713.4,421.2,5616.48,1300,2600,3900,'February','2016',114,'2017-06-20','Crevrand Kaondo',NULL,0),
(1565,23400,25500,'February 2016',1581.6,388.8,900,1200,2400,3600,'February','2016',148,'2017-06-20','Crevrand Kaondo',NULL,0),
(1566,20275,21500,'February 2016',1318,324,225,1000,2000,3000,'February','2016',116,'2017-06-20','Crevrand Kaondo',NULL,0),
(1567,20564.8,21840.9,'February 2016',1318,324,276.136,1000,2000,3000,'February','2016',88,'2017-06-20','Crevrand Kaondo',NULL,0),
(1569,33098.3,39426.1,'February 2016',1647.5,405,5077.83,1250,2500,3750,'February','2016',90,'2017-06-20','Crevrand Kaondo',NULL,0),
(1570,22880,24800,'February 2016',1581.6,388.8,720,1200,2400,3600,'February','2016',91,'2017-06-20','Crevrand Kaondo',NULL,0),
(1571,23678.4,25897.7,'February 2016',1581.6,388.8,1019.32,1200,2400,3600,'February','2016',118,'2017-06-20','Crevrand Kaondo',NULL,0),
(1572,19475,20500,'February 2016',1252.1,307.8,75,950,1900,2850,'February','2016',147,'2017-06-20','Crevrand Kaondo',NULL,0),
(1573,23400,25500,'February 2016',1581.6,388.8,900,1200,2400,3600,'February','2016',119,'2017-06-20','Crevrand Kaondo',NULL,0),
(1574,20275,21500,'February 2016',1318,324,225,1000,2000,3000,'February','2016',120,'2017-06-20','Crevrand Kaondo',NULL,0),
(1575,26740.9,30272.7,'February 2016',1581.6,388.8,2331.82,1200,2400,3600,'February','2016',121,'2017-06-20','Crevrand Kaondo',NULL,0),
(1576,23400,25500,'February 2016',1581.6,388.8,900,1200,2400,3600,'February','2016',122,'2017-06-20','Crevrand Kaondo',NULL,0),
(1577,26836.4,30409.1,'February 2016',1581.6,388.8,2372.73,1200,2400,3600,'February','2016',126,'2017-06-20','Crevrand Kaondo',NULL,0),
(1578,23400,25500,'February 2016',1581.6,388.8,900,1200,2400,3600,'February','2016',154,'2017-06-20','Crevrand Kaondo',NULL,0),
(1579,23400,25500,'February 2016',1581.6,388.8,900,1200,2400,3600,'February','2016',128,'2017-06-20','Crevrand Kaondo',NULL,0),
(1580,23400,25500,'February 2016',1581.6,388.8,900,1200,2400,3600,'February','2016',127,'2017-06-20','Crevrand Kaondo',NULL,0),
(1581,22477.3,24090.9,'February 2016',1318,324,613.636,1000,2000,3000,'February','2016',129,'2017-06-20','Crevrand Kaondo',NULL,0),
(1582,8550,9000,'February 2016',593.1,145.8,0,450,900,1350,'February','2016',34,'2017-06-20','Crevrand Kaondo',NULL,0),
(1584,23400,25500,'February 2016',1581.6,388.8,900,1200,2400,3600,'February','2016',123,'2017-06-20','Crevrand Kaondo',NULL,0),
(1585,24792,27488.6,'February 2016',1581.6,388.8,1496.59,1200,2400,3600,'February','2016',94,'2017-06-20','Crevrand Kaondo',NULL,0),
(1586,37758,46011.4,'February 2016',1581.6,388.8,7053.42,1200,2400,3600,'February','2016',131,'2017-06-20','Crevrand Kaondo',NULL,0),
(1587,50127.3,63681.8,'February 2016',1581.6,388.8,12354.5,1200,2400,3600,'February','2016',132,'2017-06-20','Crevrand Kaondo','2017-06-24 23:40:06',0),
(1588,150042,220450,'June 2017',14527.7,3571.29,59385,11022.5,22045,33067.5,'June','2017',155,'2017-06-24','Crevrand Kaondo',NULL,0),
(1589,50040,66600,'June 2017',4388.94,1078.92,13230,3330,6660,9990,'June','2017',156,'2017-06-24','Crevrand Kaondo',NULL,0),
(1591,40030,51200,'June 2017',3374.08,829.44,8610,2560,5120,7680,'June','2017',157,'2017-06-24','Crevrand Kaondo',NULL,0),
(1592,40030,51200,'June 2017',3374.08,829.44,8610,2560,5120,7680,'June','2017',158,'2017-06-24','Crevrand Kaondo',NULL,0),
(1593,40030,51200,'June 2017',3374.08,829.44,8610,2560,5120,7680,'June','2017',159,'2017-06-24','Crevrand Kaondo',NULL,0),
(1594,40030,51200,'June 2017',3374.08,829.44,8610,2560,5120,7680,'June','2017',160,'2017-06-24','Crevrand Kaondo',NULL,0),
(1595,40030,51200,'June 2017',3374.08,829.44,8610,2560,5120,7680,'June','2017',161,'2017-06-24','Crevrand Kaondo',NULL,0),
(1596,40030,51200,'June 2017',3374.08,829.44,8610,2560,5120,7680,'June','2017',162,'2017-06-24','Crevrand Kaondo',NULL,0),
(1597,40030,51200,'June 2017',3374.08,829.44,8610,2560,5120,7680,'June','2017',163,'2017-06-24','Crevrand Kaondo',NULL,0),
(1598,40030,51200,'June 2017',3374.08,829.44,8610,2560,5120,7680,'June','2017',164,'2017-06-24','Crevrand Kaondo',NULL,0),
(1599,40030,51200,'June 2017',3374.08,829.44,8610,2560,5120,7680,'June','2017',165,'2017-06-24','Crevrand Kaondo',NULL,0),
(1600,40030,51200,'June 2017',3374.08,829.44,8610,2560,5120,7680,'June','2017',166,'2017-06-24','Crevrand Kaondo',NULL,0),
(1601,30020,35800,'June 2017',2359.22,579.96,3990,1790,3580,5370,'June','2017',168,'2017-06-24','Crevrand Kaondo',NULL,0),
(1602,40030,51200,'June 2017',3374.08,829.44,8610,2560,5120,7680,'June','2017',167,'2017-06-24','Crevrand Kaondo',NULL,0),
(1603,23400,25500,'January 2016',1581.6,388.8,900,1200,2400,3600,'January','2016',99,'2017-06-25','Crevrand Kaondo',NULL,0),
(1604,23400,25500,'January 2016',1581.6,388.8,900,1200,2400,3600,'January','2016',100,'2017-06-25','Crevrand Kaondo',NULL,0),
(1605,24050,26500,'January 2016',1647.5,405,1200,1250,2500,3750,'January','2016',101,'2017-06-25','Crevrand Kaondo',NULL,0),
(1607,23400,25500,'January 2016',1581.6,388.8,900,1200,2400,3600,'January','2016',102,'2017-06-25','Crevrand Kaondo',NULL,0),
(1608,23400,25500,'January 2016',1581.6,388.8,900,1200,2400,3600,'January','2016',103,'2017-06-25','Crevrand Kaondo',NULL,0),
(1609,20275,21500,'January 2016',1318,324,225,1000,2000,3000,'January','2016',104,'2017-06-25','Crevrand Kaondo',NULL,0),
(1610,19000,20000,'January 2016',1318,324,0,1000,2000,3000,'January','2016',151,'2017-06-25','Crevrand Kaondo',NULL,0),
(1611,23400,25500,'January 2016',1581.6,388.8,900,1200,2400,3600,'January','2016',152,'2017-06-25','Crevrand Kaondo',NULL,0),
(1612,20275,21500,'January 2016',1318,324,225,1000,2000,3000,'January','2016',153,'2017-06-25','Crevrand Kaondo',NULL,0),
(1613,26168.2,29454.6,'January 2016',1581.6,388.8,2086.36,1200,2400,3600,'January','2016',105,'2017-06-25','Crevrand Kaondo',NULL,0),
(1614,84100,119000,'January 2016',7842.1,1927.8,28950,5950,11900,17850,'January','2016',40,'2017-06-25','Crevrand Kaondo','2017-06-25 00:17:58',0),
(1615,33400,41000,'January 2016',2701.9,664.2,5550,2050,4100,6150,'January','2016',92,'2017-06-25','Crevrand Kaondo',NULL,0),
(1616,40030,51200,'January 2016',3374.08,829.44,8610,2560,5120,7680,'January','2016',86,'2017-06-25','Crevrand Kaondo',NULL,0),
(1617,27550,32000,'January 2016',2108.8,518.4,2850,1600,3200,4800,'January','2016',108,'2017-06-25','Crevrand Kaondo',NULL,0),
(1618,28110,32800,'January 2016',2108.8,518.4,3090,1600,3200,4800,'January','2016',111,'2017-06-25','Crevrand Kaondo','2017-06-26 08:14:08',0),
(1619,32100,39000,'January 2016',2570.1,631.8,4950,1950,3900,5850,'January','2016',112,'2017-06-25','Crevrand Kaondo',NULL,0),
(1620,88413.4,125636,'January 2016',8279.41,2035.3,30940.8,6281.8,12563.6,18845.4,'January','2016',150,'2017-06-25','Crevrand Kaondo',NULL,0),
(1621,32437.5,38625,'January 2016',1779.3,437.4,4837.5,1350,2700,4050,'January','2016',115,'2017-06-25','Crevrand Kaondo',NULL,0),
(1622,32945.5,39136.4,'January 2016',1581.6,388.8,4990.92,1200,2400,3600,'January','2016',113,'2017-06-25','Crevrand Kaondo',NULL,0),
(1623,28388.9,32769.9,'January 2016',1713.4,421.2,3080.97,1300,2600,3900,'January','2016',114,'2017-06-25','Crevrand Kaondo',NULL,0),
(1624,26571.9,30031.2,'January 2016',1581.6,388.8,2259.38,1200,2400,3600,'January','2016',148,'2017-06-25','Crevrand Kaondo',NULL,0),
(1625,25254.5,27863.6,'January 2016',1318,324,1609.09,1000,2000,3000,'January','2016',116,'2017-06-25','Crevrand Kaondo',NULL,0),
(1626,20811.8,22072.7,'January 2016',1252.1,307.8,310.909,950,1900,2850,'January','2016',88,'2017-06-25','Crevrand Kaondo','2017-06-26 08:32:57',0),
(1627,24050,26500,'January 2016',1647.5,405,1200,1250,2500,3750,'January','2016',90,'2017-06-25','Crevrand Kaondo',NULL,0),
(1628,23864.5,26163.6,'January 2016',1581.6,388.8,1099.09,1200,2400,3600,'January','2016',91,'2017-06-25','Crevrand Kaondo',NULL,0),
(1629,19475,20500,'January 2016',1252.1,307.8,75,950,1900,2850,'January','2016',147,'2017-06-25','Crevrand Kaondo',NULL,0),
(1631,23400,25500,'January 2016',1581.6,388.8,900,1200,2400,3600,'January','2016',119,'2017-06-25','Crevrand Kaondo',NULL,0),
(1632,20275,21500,'January 2016',1318,324,225,1000,2000,3000,'January','2016',120,'2017-06-25','Crevrand Kaondo',NULL,0),
(1633,37668.4,45883.5,'January 2016',1581.6,388.8,7015.05,1200,2400,3600,'January','2016',121,'2017-06-25','Crevrand Kaondo',NULL,0),
(1634,23400,25500,'January 2016',1581.6,388.8,900,1200,2400,3600,'January','2016',122,'2017-06-25','Crevrand Kaondo',NULL,0),
(1635,37145.5,45136.4,'January 2016',1581.6,388.8,6790.92,1200,2400,3600,'January','2016',126,'2017-06-25','Crevrand Kaondo',NULL,0),
(1636,23400,25500,'January 2016',1581.6,388.8,900,1200,2400,3600,'January','2016',154,'2017-06-25','Crevrand Kaondo',NULL,0),
(1637,26184.1,29477.3,'January 2016',1581.6,388.8,2093.18,1200,2400,3600,'January','2016',128,'2017-06-25','Crevrand Kaondo',NULL,0),
(1638,23400,25500,'January 2016',1581.6,388.8,900,1200,2400,3600,'January','2016',127,'2017-06-25','Crevrand Kaondo',NULL,0),
(1639,25334.1,27977.3,'January 2016',1318,324,1643.18,1000,2000,3000,'January','2016',129,'2017-06-25','Crevrand Kaondo',NULL,0),
(1640,10314.2,10764.2,'January 2016',593.1,145.8,0,450,900,1350,'January','2016',34,'2017-06-25','Crevrand Kaondo',NULL,0),
(1641,28590.3,32914.8,'January 2016',1581.6,388.8,3124.43,1200,2400,3600,'January','2016',123,'2017-06-25','Crevrand Kaondo',NULL,0),
(1642,23400,25500,'January 2016',1581.6,388.8,900,1200,2400,3600,'January','2016',94,'2017-06-25','Crevrand Kaondo',NULL,0),
(1643,35490.9,42772.7,'January 2016',1581.6,388.8,6081.81,1200,2400,3600,'January','2016',131,'2017-06-25','Crevrand Kaondo',NULL,0),
(1644,34536.4,41409.1,'January 2016',1581.6,388.8,5672.73,1200,2400,3600,'January','2016',132,'2017-06-25','Crevrand Kaondo',NULL,0),
(1645,18810,20800,'January 2015',1318,324,990,1000,2000,3000,'January','2015',99,'2017-06-25','Crevrand Kaondo',NULL,0),
(1646,18810,20800,'January 2015',1318,324,990,1000,2000,3000,'January','2015',108,'2017-06-25','Crevrand Kaondo',NULL,0),
(1647,18810,20800,'January 2015',1318,324,990,1000,2000,3000,'January','2015',100,'2017-06-25','Crevrand Kaondo',NULL,0),
(1648,18810,20800,'January 2015',1318,324,990,1000,2000,3000,'January','2015',101,'2017-06-25','Crevrand Kaondo',NULL,0),
(1649,18810,20800,'January 2015',1318,324,990,1000,2000,3000,'January','2015',102,'2017-06-25','Crevrand Kaondo',NULL,0),
(1650,36549.7,40800,'January 2015',2636,648,2250.3,2000,4000,6000,'January','2015',30,'2017-06-25','Crevrand Kaondo',NULL,0),
(1651,18810,20800,'January 2015',1318,324,990,1000,2000,3000,'January','2015',178,'2017-06-25','Crevrand Kaondo',NULL,0),
(1652,18810,20800,'January 2015',1318,324,990,1000,2000,3000,'January','2015',105,'2017-06-25','Crevrand Kaondo',NULL,0),
(1653,18810,20800,'January 2015',1318,324,990,1000,2000,3000,'January','2015',39,'2017-06-25','Crevrand Kaondo',NULL,0),
(1654,22049.7,25500,'January 2015',1581.6,388.8,2250.3,1200,2400,3600,'January','2015',152,'2017-06-25','Crevrand Kaondo',NULL,0),
(1655,18810,20800,'January 2015',1318,324,990,1000,2000,3000,'January','2015',179,'2017-06-25','Crevrand Kaondo',NULL,0),
(1656,73749.7,80000,'January 2015',5272,1296,2250.3,4000,8000,12000,'January','2015',40,'2017-06-25','Crevrand Kaondo',NULL,0),
(1657,30999.7,35000,'January 2015',2306.5,567,2250.3,1750,3500,5250,'January','2015',92,'2017-06-25','Crevrand Kaondo',NULL,0),
(1658,30999.7,35000,'January 2015',2306.5,567,2250.3,1750,3500,5250,'January','2015',176,'2017-06-25','Crevrand Kaondo',NULL,0),
(1659,127750,130000,'January 2015',0,2106,2250.3,0,0,0,'January','2015',177,'2017-06-25','Crevrand Kaondo',NULL,0),
(1660,30999.7,35000,'January 2015',2306.5,567,2250.3,1750,3500,5250,'January','2015',112,'2017-06-25','Crevrand Kaondo',NULL,0),
(1661,30999.7,35000,'January 2015',2306.5,567,2250.3,1750,3500,5250,'January','2015',175,'2017-06-25','Crevrand Kaondo',NULL,0),
(1662,30999.7,35000,'January 2015',2306.5,567,2250.3,1750,3500,5250,'January','2015',175,'2017-06-25','Crevrand Kaondo',NULL,0),
(1663,30999.7,35000,'January 2015',2306.5,567,2250.3,1750,3500,5250,'January','2015',174,'2017-06-25','Crevrand Kaondo',NULL,0),
(1664,22299.7,25800,'January 2015',1647.5,405,2250.3,1250,2500,3750,'January','2015',34,'2017-06-25','Crevrand Kaondo',NULL,0),
(1665,18810,20800,'January 2015',1318,324,990,1000,2000,3000,'January','2015',114,'2017-06-25','Crevrand Kaondo',NULL,0),
(1666,18810,20800,'January 2015',1318,324,990,1000,2000,3000,'January','2015',113,'2017-06-25','Crevrand Kaondo',NULL,0),
(1667,36549.7,40800,'January 2015',2636,648,2250.3,2000,4000,6000,'January','2015',170,'2017-06-25','Crevrand Kaondo',NULL,0),
(1668,22049.7,25500,'January 2015',1581.6,388.8,2250.3,1200,2400,3600,'January','2015',148,'2017-06-25','Crevrand Kaondo',NULL,0),
(1669,14930,15800,'January 2015',988.5,243,120,750,1500,2250,'January','2015',88,'2017-06-25','Crevrand Kaondo',NULL,0),
(1670,18810,20800,'January 2015',1318,324,990,1000,2000,3000,'January','2015',89,'2017-06-25','Crevrand Kaondo',NULL,0),
(1671,18810,20800,'January 2015',1318,324,990,1000,2000,3000,'January','2015',90,'2017-06-25','Crevrand Kaondo',NULL,0),
(1672,18810,20800,'January 2015',1318,324,990,1000,2000,3000,'January','2015',91,'2017-06-25','Crevrand Kaondo',NULL,0),
(1673,18810,20800,'January 2015',1318,324,990,1000,2000,3000,'January','2015',118,'2017-06-25','Crevrand Kaondo',NULL,0),
(1674,14930,15800,'January 2015',988.5,243,120,750,1500,2250,'January','2015',147,'2017-06-25','Crevrand Kaondo',NULL,0),
(1675,18810,20800,'January 2015',1318,324,990,1000,2000,3000,'January','2015',119,'2017-06-25','Crevrand Kaondo',NULL,0),
(1676,18810,20800,'January 2015',1318,324,990,1000,2000,3000,'January','2015',121,'2017-06-25','Crevrand Kaondo',NULL,0),
(1677,14930,15800,'January 2015',988.5,243,120,750,1500,2250,'January','2015',111,'2017-06-25','Crevrand Kaondo',NULL,0),
(1678,18810,20800,'January 2015',1318,324,990,1000,2000,3000,'January','2015',122,'2017-06-25','Crevrand Kaondo',NULL,0),
(1679,18810,20800,'January 2015',1318,324,990,1000,2000,3000,'January','2015',126,'2017-06-25','Crevrand Kaondo',NULL,0),
(1680,22049.7,25500,'January 2015',1581.6,388.8,2250.3,1200,2400,3600,'January','2015',154,'2017-06-25','Crevrand Kaondo',NULL,0),
(1681,18810,20800,'January 2015',1318,324,990,1000,2000,3000,'January','2015',128,'2017-06-25','Crevrand Kaondo',NULL,0),
(1682,18810,20800,'January 2015',1318,324,990,1000,2000,3000,'January','2015',127,'2017-06-25','Crevrand Kaondo',NULL,0),
(1683,22299.7,25800,'January 2015',1647.5,405,2250.3,1250,2500,3750,'January','2015',22,'2017-06-25','Crevrand Kaondo',NULL,0),
(1684,18810,20800,'January 2015',1318,324,990,1000,2000,3000,'January','2015',123,'2017-06-25','Crevrand Kaondo',NULL,0),
(1685,14930,15800,'January 2015',988.5,243,120,750,1500,2250,'January','2015',94,'2017-06-25','Crevrand Kaondo',NULL,0),
(1686,18810,20800,'January 2015',1318,324,990,1000,2000,3000,'January','2015',131,'2017-06-25','Crevrand Kaondo',NULL,0),
(1687,18810,20800,'January 2015',1318,324,990,1000,2000,3000,'January','2015',132,'2017-06-25','Crevrand Kaondo',NULL,0),
(1688,22299.7,25800,'January 2015',1647.5,405,2250.3,1250,2500,3750,'January','2015',173,'2017-06-25','Crevrand Kaondo',NULL,0),
(1689,31305.7,35079.6,'June 2017',0,486,3773.86,0,0,0,'June','2017',130,'2017-06-25','Crevrand Kaondo','2017-07-02 01:55:54',0),
(1690,18810,20800,'February 2015',1318,324,990,1000,2000,3000,'February','2015',99,'2017-06-25','Crevrand Kaondo',NULL,0),
(1691,22322.4,25572.7,'February 2015',1318,324,2250.3,1000,2000,3000,'February','2015',108,'2017-06-25','Crevrand Kaondo',NULL,0),
(1692,18810,20800,'February 2015',1318,324,990,1000,2000,3000,'February','2015',100,'2017-06-25','Crevrand Kaondo',NULL,0),
(1693,18810,20800,'February 2015',1318,324,990,1000,2000,3000,'February','2015',101,'2017-06-25','Crevrand Kaondo',NULL,0),
(1694,18810,20800,'February 2015',1318,324,990,1000,2000,3000,'February','2015',102,'2017-06-25','Crevrand Kaondo',NULL,0),
(1695,23004.2,26254.6,'February 2015',1318,324,2250.3,1000,2000,3000,'February','2015',103,'2017-06-25','Crevrand Kaondo',NULL,0),
(1696,49277,53527.3,'February 2015',2636,648,2250.3,2000,4000,6000,'February','2015',30,'2017-06-25','Crevrand Kaondo',NULL,0),
(1697,18810,20800,'February 2015',1318,324,990,1000,2000,3000,'February','2015',178,'2017-06-25','Crevrand Kaondo',NULL,0),
(1698,18810,20800,'February 2015',1318,324,990,1000,2000,3000,'February','2015',105,'2017-06-25','Crevrand Kaondo',NULL,0),
(1699,18810,20800,'February 2015',1318,324,990,1000,2000,3000,'February','2015',39,'2017-06-25','Crevrand Kaondo',NULL,0),
(1700,22049.7,25500,'February 2015',1581.6,388.8,2250.3,1200,2400,3600,'February','2015',152,'2017-06-25','Crevrand Kaondo',NULL,0),
(1701,18810,20800,'February 2015',1318,324,990,1000,2000,3000,'February','2015',179,'2017-06-25','Crevrand Kaondo',NULL,0),
(1702,73749.7,80000,'February 2015',5272,1296,2250.3,4000,8000,12000,'February','2015',40,'2017-06-25','Crevrand Kaondo',NULL,0),
(1703,30999.7,35000,'February 2015',2306.5,567,2250.3,1750,3500,5250,'February','2015',92,'2017-06-25','Crevrand Kaondo',NULL,0),
(1704,30999.7,35000,'February 2015',2306.5,567,2250.3,1750,3500,5250,'February','2015',176,'2017-06-25','Crevrand Kaondo',NULL,0),
(1705,30999.7,35000,'February 2015',2306.5,567,2250.3,1750,3500,5250,'February','2015',112,'2017-06-25','Crevrand Kaondo',NULL,0),
(1706,30999.7,35000,'February 2015',2306.5,567,2250.3,1750,3500,5250,'February','2015',175,'2017-06-25','Crevrand Kaondo',NULL,0),
(1707,30999.7,35000,'February 2015',2306.5,567,2250.3,1750,3500,5250,'February','2015',174,'2017-06-25','Crevrand Kaondo',NULL,0),
(1708,27095.2,30345.4,'February 2015',1318,324,2250.3,1000,2000,3000,'February','2015',113,'2017-06-25','Crevrand Kaondo',NULL,0),
(1709,18810,20800,'February 2015',1318,324,990,1000,2000,3000,'February','2015',114,'2017-06-25','Crevrand Kaondo',NULL,0),
(1710,36549.7,40800,'February 2015',2636,648,2250.3,2000,4000,6000,'February','2015',169,'2017-06-25','Crevrand Kaondo',NULL,0),
(1711,22049.7,25500,'February 2015',1581.6,388.8,2250.3,1200,2400,3600,'February','2015',148,'2017-06-25','Crevrand Kaondo',NULL,0),
(1712,14930,15800,'February 2015',988.5,243,120,750,1500,2250,'February','2015',88,'2017-06-25','Crevrand Kaondo',NULL,0),
(1713,18810,20800,'February 2015',1318,324,990,1000,2000,3000,'February','2015',89,'2017-06-25','Crevrand Kaondo',NULL,0),
(1714,32777,36027.3,'February 2015',1318,324,2250.3,1000,2000,3000,'February','2015',90,'2017-06-25','Crevrand Kaondo',NULL,0),
(1715,18810,20800,'February 2015',1318,324,990,1000,2000,3000,'February','2015',91,'2017-06-25','Crevrand Kaondo',NULL,0),
(1716,18810,20800,'February 2015',1318,324,990,1000,2000,3000,'February','2015',118,'2017-06-25','Crevrand Kaondo',NULL,0),
(1717,14930,15800,'February 2015',988.5,243,120,750,1500,2250,'February','2015',147,'2017-06-25','Crevrand Kaondo',NULL,0),
(1718,18810,20800,'February 2015',1318,324,990,1000,2000,3000,'February','2015',119,'2017-06-25','Crevrand Kaondo',NULL,0),
(1719,26527,29777.3,'February 2015',1318,324,2250.3,1000,2000,3000,'February','2015',121,'2017-06-25','Crevrand Kaondo',NULL,0),
(1720,17103.3,18356.8,'February 2015',988.5,243,503.523,750,1500,2250,'February','2015',111,'2017-06-25','Crevrand Kaondo',NULL,0),
(1721,18810,20800,'February 2015',1318,324,990,1000,2000,3000,'February','2015',122,'2017-06-25','Crevrand Kaondo',NULL,0),
(1722,31299.7,34550,'February 2015',1318,324,2250.3,1000,2000,3000,'February','2015',126,'2017-06-25','Crevrand Kaondo',NULL,0),
(1723,18810,20800,'February 2015',1318,324,990,1000,2000,3000,'February','2015',172,'2017-06-25','Crevrand Kaondo',NULL,0),
(1724,21355.5,24436.4,'February 2015',1318,324,2080.91,1000,2000,3000,'February','2015',128,'2017-06-25','Crevrand Kaondo',NULL,0),
(1725,18810,20800,'February 2015',1318,324,990,1000,2000,3000,'February','2015',127,'2017-06-25','Crevrand Kaondo',NULL,0),
(1726,53123.6,56623.9,'February 2015',1647.5,405,2250.3,1250,2500,3750,'February','2015',22,'2017-06-25','Crevrand Kaondo',NULL,0),
(1727,18810,20800,'February 2015',1318,324,990,1000,2000,3000,'February','2015',123,'2017-06-25','Crevrand Kaondo',NULL,0),
(1728,14930,15800,'February 2015',988.5,243,120,750,1500,2250,'February','2015',94,'2017-06-25','Crevrand Kaondo',NULL,0),
(1729,32549.7,35800,'February 2015',1318,324,2250.3,1000,2000,3000,'February','2015',131,'2017-06-25','Crevrand Kaondo',NULL,0),
(1730,54652,57902.3,'February 2015',1318,324,2250.3,1000,2000,3000,'February','2015',132,'2017-06-25','Crevrand Kaondo',NULL,0),
(1731,22299.7,25800,'February 2015',1647.5,405,2250.3,1250,2500,3750,'February','2015',173,'2017-06-25','Crevrand Kaondo',NULL,0),
(1732,30999.7,35000,'February 2015',2306.5,567,2250.3,1750,3500,5250,'February','2015',149,'2017-06-25','Crevrand Kaondo',NULL,0),
(1733,30999.7,35000,'January 2015',2306.5,567,2250.3,1750,3500,5250,'January','2015',149,'2017-06-25','Crevrand Kaondo',NULL,0),
(1734,30999.7,35000,'January 2015',2306.5,567,2250.3,1750,3500,5250,'January','2015',97,'2017-06-25','Crevrand Kaondo',NULL,0),
(1735,30999.7,35000,'February 2015',2306.5,567,2250.3,1750,3500,5250,'February','2015',97,'2017-06-25','Crevrand Kaondo',NULL,0),
(1736,57029.7,62400,'January 2015',4112.16,1010.88,2250.3,3120,6240,9360,'January','2015',182,'2017-06-25','Crevrand Kaondo',NULL,0),
(1737,57029.7,62400,'February 2015',4112.16,1010.88,2250.3,3120,6240,9360,'February','2015',182,'2017-06-25','Crevrand Kaondo',NULL,0),
(1738,35939.7,40200,'January 2015',2649.18,651.24,2250.3,2010,4020,6030,'January','2015',180,'2017-06-25','Crevrand Kaondo',NULL,0),
(1739,35939.7,40200,'February 2015',2649.18,651.24,2250.3,2010,4020,6030,'February','2015',180,'2017-06-25','Crevrand Kaondo',NULL,0),
(1740,53039.7,58200,'January 2015',3835.38,942.84,2250.3,2910,5820,8730,'January','2015',181,'2017-06-25','Crevrand Kaondo',NULL,0),
(1741,53039.7,58200,'February 2015',3835.38,942.84,2250.3,2910,5820,8730,'February','2015',181,'2017-06-25','Crevrand Kaondo',NULL,0),
(1742,30999.7,35000,'January 2015',2306.5,567,2250.3,1750,3500,5250,'January','2015',95,'2017-06-25','Crevrand Kaondo',NULL,0),
(1744,30999.7,35000,'March 2015',2306.5,567,2250.3,1750,3500,5250,'March','2015',149,'2017-06-25',' ',NULL,0),
(1745,56454.2,60454.5,'March 2015',2306.5,567,2250.3,1750,3500,5250,'March','2015',149,'2017-06-25','Crevrand Kaondo',NULL,0),
(1746,57029.7,62400,'March 2015',4112.16,1010.88,2250.3,3120,6240,9360,'March','2015',182,'2017-06-25','Crevrand Kaondo',NULL,0),
(1747,22750,25000,'March 2015',0,405,2250,0,0,0,'March','2015',136,'2017-06-25','Crevrand Kaondo',NULL,0),
(1748,53039.7,58200,'March 2015',3835.38,942.84,2250.3,2910,5820,8730,'March','2015',181,'2017-06-25','Crevrand Kaondo',NULL,0),
(1750,41141.7,45142,'March 2015',2306.5,567,2250.3,1750,3500,5250,'March','2015',97,'2017-06-25','Crevrand Kaondo',NULL,0),
(1751,18810,20800,'March 2015',1318,324,990,1000,2000,3000,'March','2015',99,'2017-06-25','Crevrand Kaondo',NULL,0),
(1752,18810,20800,'March 2015',1318,324,990,1000,2000,3000,'March','2015',108,'2017-06-25','Crevrand Kaondo',NULL,0),
(1753,18810,20800,'March 2015',1318,324,990,1000,2000,3000,'March','2015',100,'2017-06-25','Crevrand Kaondo',NULL,0),
(1754,18810,20800,'March 2015',1318,324,990,1000,2000,3000,'March','2015',101,'2017-06-25','Crevrand Kaondo',NULL,0),
(1755,18810,20800,'March 2015',1318,324,990,1000,2000,3000,'March','2015',102,'2017-06-25','Crevrand Kaondo',NULL,0),
(1756,18810,20800,'March 2015',1318,324,990,1000,2000,3000,'March','2015',103,'2017-06-25','Crevrand Kaondo',NULL,0),
(1757,36549.7,40800,'March 2015',2636,648,2250.3,2000,4000,6000,'March','2015',30,'2017-06-25','Crevrand Kaondo',NULL,0),
(1758,18810,20800,'March 2015',1318,324,990,1000,2000,3000,'March','2015',178,'2017-06-25','Crevrand Kaondo',NULL,0),
(1759,18810,20800,'March 2015',1318,324,990,1000,2000,3000,'March','2015',105,'2017-06-25','Crevrand Kaondo',NULL,0),
(1760,18810,20800,'March 2015',1318,324,990,1000,2000,3000,'March','2015',39,'2017-06-25','Crevrand Kaondo',NULL,0),
(1761,22049.7,25500,'March 2015',1581.6,388.8,2250.3,1200,2400,3600,'March','2015',152,'2017-06-25','Crevrand Kaondo',NULL,0),
(1762,18810,20800,'March 2015',1318,324,990,1000,2000,3000,'March','2015',179,'2017-06-25','Crevrand Kaondo',NULL,0),
(1763,73749.7,80000,'March 2015',5272,1296,2250.3,4000,8000,12000,'March','2015',40,'2017-06-25','Crevrand Kaondo',NULL,0),
(1764,30999.7,35000,'March 2015',2306.5,567,2250.3,1750,3500,5250,'March','2015',92,'2017-06-25','Crevrand Kaondo',NULL,0),
(1765,30999.7,35000,'March 2015',2306.5,567,2250.3,1750,3500,5250,'March','2015',176,'2017-06-25','Crevrand Kaondo',NULL,0),
(1766,30999.7,35000,'March 2015',2306.5,567,2250.3,1750,3500,5250,'March','2015',112,'2017-06-25','Crevrand Kaondo',NULL,0),
(1767,30999.7,35000,'March 2015',2306.5,567,2250.3,1750,3500,5250,'March','2015',175,'2017-06-25','Crevrand Kaondo',NULL,0),
(1768,30999.7,35000,'March 2015',2306.5,567,2250.3,1750,3500,5250,'March','2015',174,'2017-06-25','Crevrand Kaondo',NULL,0),
(1769,18810,20800,'March 2015',1318,324,990,1000,2000,3000,'March','2015',113,'2017-06-25','Crevrand Kaondo',NULL,0),
(1771,18810,20800,'March 2015',1318,324,990,1000,2000,3000,'March','2015',114,'2017-06-25','Crevrand Kaondo',NULL,0),
(1772,36549.7,40800,'March 2015',2636,648,2250.3,2000,4000,6000,'March','2015',169,'2017-06-25','Crevrand Kaondo',NULL,0),
(1773,14930,15800,'March 2015',988.5,243,120,750,1500,2250,'March','2015',171,'2017-06-25','Crevrand Kaondo',NULL,0),
(1774,14930,15800,'March 2015',988.5,243,120,750,1500,2250,'March','2015',88,'2017-06-25','Crevrand Kaondo',NULL,0),
(1776,18810,20800,'March 2015',1318,324,990,1000,2000,3000,'March','2015',90,'2017-06-25','Crevrand Kaondo',NULL,0),
(1777,18810,20800,'March 2015',1318,324,990,1000,2000,3000,'March','2015',91,'2017-06-25','Crevrand Kaondo',NULL,0),
(1778,18810,20800,'March 2015',1318,324,990,1000,2000,3000,'March','2015',118,'2017-06-25','Crevrand Kaondo',NULL,0),
(1779,14930,15800,'March 2015',988.5,243,120,750,1500,2250,'March','2015',147,'2017-06-25','Crevrand Kaondo',NULL,0),
(1780,18810,20800,'March 2015',1318,324,990,1000,2000,3000,'March','2015',119,'2017-06-25','Crevrand Kaondo',NULL,0),
(1781,18810,20800,'March 2015',1318,324,990,1000,2000,3000,'March','2015',121,'2017-06-25','Crevrand Kaondo',NULL,0),
(1782,14930,15800,'March 2015',988.5,243,120,750,1500,2250,'March','2015',111,'2017-06-25','Crevrand Kaondo',NULL,0),
(1783,18810,20800,'March 2015',1318,324,990,1000,2000,3000,'March','2015',122,'2017-06-25','Crevrand Kaondo',NULL,0),
(1784,18810,20800,'March 2015',1318,324,990,1000,2000,3000,'March','2015',126,'2017-06-25','Crevrand Kaondo',NULL,0),
(1785,22049.7,25500,'March 2015',1581.6,388.8,2250.3,1200,2400,3600,'March','2015',154,'2017-06-25','Crevrand Kaondo',NULL,0),
(1786,18810,20800,'March 2015',1318,324,990,1000,2000,3000,'March','2015',128,'2017-06-25','Crevrand Kaondo',NULL,0),
(1787,18810,20800,'March 2015',1318,324,990,1000,2000,3000,'March','2015',127,'2017-06-25','Crevrand Kaondo',NULL,0),
(1788,22299.7,25800,'March 2015',1647.5,405,2250.3,1250,2500,3750,'March','2015',22,'2017-06-25','Crevrand Kaondo',NULL,0),
(1789,18810,20800,'March 2015',1318,324,990,1000,2000,3000,'March','2015',123,'2017-06-25','Crevrand Kaondo',NULL,0),
(1790,14930,15800,'March 2015',988.5,243,120,750,1500,2250,'March','2015',94,'2017-06-25','Crevrand Kaondo',NULL,0),
(1791,18810,20800,'March 2015',1318,324,990,1000,2000,3000,'March','2015',131,'2017-06-25','Crevrand Kaondo',NULL,0),
(1792,18810,20800,'March 2015',1318,324,990,1000,2000,3000,'March','2015',132,'2017-06-25','Crevrand Kaondo',NULL,0),
(1793,30999.7,35000,'April 2015',2306.5,567,2250.3,1750,3500,5250,'April','2015',149,'2017-06-25','Crevrand Kaondo',NULL,0),
(1794,57029.7,62400,'April 2015',4112.16,1010.88,2250.3,3120,6240,9360,'April','2015',182,'2017-06-25','Crevrand Kaondo',NULL,0),
(1795,35939.7,40200,'April 2015',2649.18,651.24,2250.3,2010,4020,6030,'April','2015',180,'2017-06-25','Crevrand Kaondo',NULL,0),
(1796,53039.7,58200,'April 2015',3835.38,942.84,2250.3,2910,5820,8730,'April','2015',181,'2017-06-25','Crevrand Kaondo',NULL,0),
(1798,30999.7,35000,'April 2015',2306.5,567,2250.3,1750,3500,5250,'April','2015',97,'2017-06-25','Crevrand Kaondo',NULL,0),
(1799,22549.7,25800,'April 2015',1318,324,2250.3,1000,2000,3000,'April','2015',99,'2017-06-25','Crevrand Kaondo',NULL,0),
(1800,22549.7,25800,'April 2015',1318,324,2250.3,1000,2000,3000,'April','2015',108,'2017-06-25','Crevrand Kaondo',NULL,0),
(1801,22549.7,25800,'April 2015',1318,324,2250.3,1000,2000,3000,'April','2015',100,'2017-06-25','Crevrand Kaondo',NULL,0),
(1802,18810,20800,'April 2015',1318,324,990,1000,2000,3000,'April','2015',102,'2017-06-25','Crevrand Kaondo',NULL,0),
(1803,46549.7,50800,'April 2015',2636,648,2250.3,2000,4000,6000,'April','2015',30,'2017-06-25','Crevrand Kaondo',NULL,0),
(1804,22549.7,25800,'April 2015',1318,324,2250.3,1000,2000,3000,'April','2015',178,'2017-06-25','Crevrand Kaondo',NULL,0),
(1805,22549.7,25800,'April 2015',1318,324,2250.3,1000,2000,3000,'April','2015',178,'2017-06-25','Crevrand Kaondo',NULL,0),
(1806,22549.7,25800,'April 2015',1318,324,2250.3,1000,2000,3000,'April','2015',105,'2017-06-25','Crevrand Kaondo',NULL,0),
(1807,22549.7,25800,'April 2015',1318,324,2250.3,1000,2000,3000,'April','2015',39,'2017-06-25','Crevrand Kaondo',NULL,0),
(1808,28049.7,31500,'April 2015',1581.6,388.8,2250.3,1200,2400,3600,'April','2015',152,'2017-06-25','Crevrand Kaondo',NULL,0),
(1809,22549.7,25800,'April 2015',1318,324,2250.3,1000,2000,3000,'April','2015',179,'2017-06-25','Crevrand Kaondo',NULL,0),
(1810,73749.7,80000,'April 2015',5272,1296,2250.3,4000,8000,12000,'April','2015',40,'2017-06-25','Crevrand Kaondo',NULL,0),
(1811,30999.7,35000,'April 2015',2306.5,567,2250.3,1750,3500,5250,'April','2015',92,'2017-06-25','Crevrand Kaondo',NULL,0),
(1812,30999.7,35000,'April 2015',2306.5,567,2250.3,1750,3500,5250,'April','2015',176,'2017-06-25','Crevrand Kaondo',NULL,0),
(1813,30999.7,35000,'April 2015',2306.5,567,2250.3,1750,3500,5250,'April','2015',112,'2017-06-25','Crevrand Kaondo',NULL,0),
(1814,30999.7,35000,'April 2015',2306.5,567,2250.3,1750,3500,5250,'April','2015',175,'2017-06-25','Crevrand Kaondo',NULL,0),
(1815,24004.2,27504.6,'April 2015',1647.5,405,2250.3,1250,2500,3750,'April','2015',34,'2017-06-25','Crevrand Kaondo',NULL,0),
(1816,24595.2,27845.4,'April 2015',1318,324,2250.3,1000,2000,3000,'April','2015',113,'2017-06-25','Crevrand Kaondo',NULL,0),
(1817,24595.2,27845.4,'April 2015',1318,324,2250.3,1000,2000,3000,'April','2015',113,'2017-06-25','Crevrand Kaondo',NULL,0),
(1818,24595.2,27845.4,'April 2015',1318,324,2250.3,1000,2000,3000,'April','2015',114,'2017-06-25','Crevrand Kaondo',NULL,0),
(1819,36549.7,40800,'April 2015',2636,648,2250.3,2000,4000,6000,'April','2015',169,'2017-06-25','Crevrand Kaondo',NULL,0),
(1820,19300,21500,'April 2015',1318,324,1200,1000,2000,3000,'April','2015',116,'2017-06-25','Crevrand Kaondo',NULL,0),
(1821,14930,15800,'April 2015',988.5,243,120,750,1500,2250,'April','2015',88,'2017-06-25','Crevrand Kaondo',NULL,0),
(1822,18810,20800,'April 2015',1318,324,990,1000,2000,3000,'April','2015',89,'2017-06-25','Crevrand Kaondo',NULL,0),
(1823,18810,20800,'April 2015',1318,324,990,1000,2000,3000,'April','2015',90,'2017-06-25','Crevrand Kaondo',NULL,0),
(1824,18810,20800,'April 2015',1318,324,990,1000,2000,3000,'April','2015',91,'2017-06-25','Crevrand Kaondo',NULL,0),
(1825,18810,20800,'April 2015',1318,324,990,1000,2000,3000,'April','2015',118,'2017-06-25','Crevrand Kaondo',NULL,0),
(1826,14930,15800,'April 2015',988.5,243,120,750,1500,2250,'April','2015',147,'2017-06-25','Crevrand Kaondo',NULL,0),
(1827,18810,20800,'April 2015',1318,324,990,1000,2000,3000,'April','2015',119,'2017-06-25','Crevrand Kaondo',NULL,0),
(1828,18810,20800,'April 2015',1318,324,990,1000,2000,3000,'April','2015',121,'2017-06-25','Crevrand Kaondo',NULL,0),
(1829,18810,20800,'April 2015',1318,324,990,1000,2000,3000,'April','2015',126,'2017-06-25','Crevrand Kaondo',NULL,0),
(1830,22049.7,25500,'April 2015',1581.6,388.8,2250.3,1200,2400,3600,'April','2015',154,'2017-06-25','Crevrand Kaondo',NULL,0),
(1831,18810,20800,'April 2015',1318,324,990,1000,2000,3000,'April','2015',128,'2017-06-25','Crevrand Kaondo',NULL,0),
(1832,18810,20800,'April 2015',1318,324,990,1000,2000,3000,'April','2015',127,'2017-06-25','Crevrand Kaondo',NULL,0),
(1833,22299.7,25800,'April 2015',1647.5,405,2250.3,1250,2500,3750,'April','2015',22,'2017-06-25','Crevrand Kaondo',NULL,0),
(1834,18810,20800,'April 2015',1318,324,990,1000,2000,3000,'April','2015',123,'2017-06-25','Crevrand Kaondo',NULL,0),
(1835,14930,15800,'April 2015',988.5,243,120,750,1500,2250,'April','2015',94,'2017-06-25','Crevrand Kaondo',NULL,0),
(1836,18810,20800,'April 2015',1318,324,990,1000,2000,3000,'April','2015',131,'2017-06-25','Crevrand Kaondo',NULL,0),
(1837,18810,20800,'April 2015',1318,324,990,1000,2000,3000,'April','2015',132,'2017-06-25','Crevrand Kaondo',NULL,0),
(1838,21410,24800,'May 2015',1581.6,388.8,2190,1200,2400,3600,'May','2015',99,'2017-06-25','Crevrand Kaondo',NULL,0),
(1839,21410,24800,'May 2015',1581.6,388.8,2190,1200,2400,3600,'May','2015',100,'2017-06-25','Crevrand Kaondo',NULL,0),
(1840,22299.7,25800,'May 2015',1647.5,405,2250.3,1250,2500,3750,'May','2015',101,'2017-06-25','Crevrand Kaondo',NULL,0),
(1841,21410,24800,'May 2015',1581.6,388.8,2190,1200,2400,3600,'May','2015',102,'2017-06-25','Crevrand Kaondo',NULL,0),
(1842,21410,24800,'May 2015',1581.6,388.8,2190,1200,2400,3600,'May','2015',103,'2017-06-25','Crevrand Kaondo',NULL,0),
(1843,41299.7,45800,'May 2015',2965.5,729,2250.3,2250,4500,6750,'May','2015',30,'2017-06-25','Crevrand Kaondo',NULL,0),
(1844,21410,24800,'May 2015',1581.6,388.8,2190,1200,2400,3600,'May','2015',178,'2017-06-25','Crevrand Kaondo',NULL,0),
(1845,22049.7,25500,'May 2015',1581.6,388.8,2250.3,1200,2400,3600,'May','2015',152,'2017-06-25','Crevrand Kaondo',NULL,0),
(1846,21410,24800,'May 2015',1581.6,388.8,2190,1200,2400,3600,'May','2015',105,'2017-06-25','Crevrand Kaondo',NULL,0),
(1847,21410,24800,'May 2015',1581.6,388.8,2190,1200,2400,3600,'May','2015',39,'2017-06-25','Crevrand Kaondo',NULL,0),
(1848,97499.7,105000,'May 2015',6919.5,1701,2250.3,5250,10500,15750,'May','2015',40,'2017-06-25','Crevrand Kaondo',NULL,0),
(1849,36699.7,41000,'May 2015',2701.9,664.2,2250.3,2050,4100,6150,'May','2015',92,'2017-06-25','Crevrand Kaondo',NULL,0),
(1850,28949.7,32800,'May 2015',2108.8,518.4,2250.3,1600,3200,4800,'May','2015',108,'2017-06-25','Crevrand Kaondo',NULL,0),
(1851,34799.7,39000,'May 2015',2570.1,631.8,2250.3,1950,3900,5850,'May','2015',176,'2017-06-25','Crevrand Kaondo',NULL,0),
(1852,34799.7,39000,'May 2015',2570.1,631.8,2250.3,1950,3900,5850,'May','2015',112,'2017-06-25','Crevrand Kaondo',NULL,0),
(1853,31799.7,35800,'May 2015',2306.5,567,2250.3,1750,3500,5250,'May','2015',179,'2017-06-25','Crevrand Kaondo',NULL,0),
(1854,34799.7,39000,'May 2015',2570.1,631.8,2250.3,1950,3900,5850,'May','2015',175,'2017-06-25','Crevrand Kaondo',NULL,0),
(1855,34799.7,39000,'May 2015',2570.1,631.8,2250.3,1950,3900,5850,'May','2015',174,'2017-06-25','Crevrand Kaondo',NULL,0),
(1856,22299.7,25800,'May 2015',1647.5,405,2250.3,1250,2500,3750,'May','2015',115,'2017-06-25','Crevrand Kaondo',NULL,0),
(1858,24199.7,27800,'May 2015',1779.3,437.4,2250.3,1350,2700,4050,'May','2015',114,'2017-06-25','Crevrand Kaondo',NULL,0),
(1859,41299.7,45800,'May 2015',2965.5,729,2250.3,2250,4500,6750,'May','2015',169,'2017-06-25','Crevrand Kaondo',NULL,0),
(1860,18130,19800,'May 2015',1252.1,307.8,720,950,1900,2850,'May','2015',171,'2017-06-25','Crevrand Kaondo',NULL,0),
(1861,18650,20500,'May 2015',1252.1,307.8,900,950,1900,2850,'May','2015',116,'2017-06-25','Crevrand Kaondo',NULL,0),
(1862,18130,19800,'May 2015',1252.1,307.8,720,950,1900,2850,'May','2015',88,'2017-06-25','Crevrand Kaondo',NULL,0),
(1863,21410,24800,'May 2015',1581.6,388.8,2190,1200,2400,3600,'May','2015',89,'2017-06-25','Crevrand Kaondo',NULL,0),
(1864,22299.7,25800,'May 2015',1647.5,405,2250.3,1250,2500,3750,'May','2015',90,'2017-06-25','Crevrand Kaondo',NULL,0),
(1865,21410,24800,'May 2015',1581.6,388.8,2190,1200,2400,3600,'May','2015',91,'2017-06-25','Crevrand Kaondo',NULL,0),
(1866,21410,24800,'May 2015',1581.6,388.8,2190,1200,2400,3600,'May','2015',118,'2017-06-25','Crevrand Kaondo',NULL,0),
(1867,18130,19800,'May 2015',1252.1,307.8,720,950,1900,2850,'May','2015',147,'2017-06-25','Crevrand Kaondo',NULL,0),
(1868,21410,24800,'May 2015',1581.6,388.8,2190,1200,2400,3600,'May','2015',119,'2017-06-25','Crevrand Kaondo',NULL,0),
(1869,21410,24800,'May 2015',1581.6,388.8,2190,1200,2400,3600,'May','2015',121,'2017-06-25','Crevrand Kaondo',NULL,0),
(1870,21410,24800,'May 2015',1581.6,388.8,2190,1200,2400,3600,'May','2015',121,'2017-06-25','Crevrand Kaondo',NULL,0),
(1871,18130,19800,'May 2015',1252.1,307.8,720,950,1900,2850,'May','2015',111,'2017-06-25','Crevrand Kaondo',NULL,0),
(1872,21410,24800,'May 2015',1581.6,388.8,2190,1200,2400,3600,'May','2015',122,'2017-06-25','Crevrand Kaondo',NULL,0),
(1873,21410,24800,'May 2015',1581.6,388.8,2190,1200,2400,3600,'May','2015',126,'2017-06-25','Crevrand Kaondo',NULL,0),
(1874,21410,24800,'May 2015',1581.6,388.8,2190,1200,2400,3600,'May','2015',172,'2017-06-25','Crevrand Kaondo',NULL,0),
(1875,21410,24800,'May 2015',1581.6,388.8,2190,1200,2400,3600,'May','2015',128,'2017-06-25','Crevrand Kaondo',NULL,0),
(1876,21410,24800,'May 2015',1581.6,388.8,2190,1200,2400,3600,'May','2015',127,'2017-06-25','Crevrand Kaondo',NULL,0),
(1877,27049.7,30800,'May 2015',1977,486,2250.3,1500,3000,4500,'May','2015',22,'2017-06-25','Crevrand Kaondo',NULL,0),
(1878,21410,24800,'May 2015',1581.6,388.8,2190,1200,2400,3600,'May','2015',123,'2017-06-25','Crevrand Kaondo',NULL,0),
(1879,18130,19800,'May 2015',1252.1,307.8,720,950,1900,2850,'May','2015',94,'2017-06-25','Crevrand Kaondo',NULL,0),
(1880,21410,24800,'May 2015',1581.6,388.8,2190,1200,2400,3600,'May','2015',131,'2017-06-25','Crevrand Kaondo',NULL,0),
(1881,21410,24800,'May 2015',1581.6,388.8,2190,1200,2400,3600,'May','2015',132,'2017-06-25','Crevrand Kaondo',NULL,0),
(1882,21410,24800,'June 2015',1581.6,388.8,2190,1200,2400,3600,'June','2015',99,'2017-06-26','Crevrand Kaondo',NULL,0),
(1883,21410,24800,'June 2015',1581.6,388.8,2190,1200,2400,3600,'June','2015',100,'2017-06-26','Crevrand Kaondo',NULL,0),
(1884,27413.3,30913.6,'June 2015',1647.5,405,2250.3,1250,2500,3750,'June','2015',101,'2017-06-26','Crevrand Kaondo',NULL,0),
(1885,21410,24800,'June 2015',1581.6,388.8,2190,1200,2400,3600,'June','2015',102,'2017-06-26','Crevrand Kaondo',NULL,0),
(1886,52805.4,57305.7,'June 2015',2965.5,729,2250.3,2250,4500,6750,'June','2015',30,'2017-06-26','Crevrand Kaondo',NULL,0),
(1887,21410,24800,'June 2015',1581.6,388.8,2190,1200,2400,3600,'June','2015',178,'2017-06-26','Crevrand Kaondo',NULL,0),
(1888,26958.8,30409.1,'June 2015',1581.6,388.8,2250.3,1200,2400,3600,'June','2015',152,'2017-06-26','Crevrand Kaondo',NULL,0),
(1889,19300,21500,'June 2015',1318,324,1200,1000,2000,3000,'June','2015',153,'2017-06-26','Crevrand Kaondo',NULL,0),
(1890,21410,24800,'June 2015',1581.6,388.8,2190,1200,2400,3600,'June','2015',105,'2017-06-26','Crevrand Kaondo',NULL,0),
(1891,21410,24800,'June 2015',1581.6,388.8,2190,1200,2400,3600,'June','2015',39,'2017-06-26','Crevrand Kaondo',NULL,0),
(1892,97499.7,105000,'June 2015',6919.5,1701,2250.3,5250,10500,15750,'June','2015',40,'2017-06-26','Crevrand Kaondo',NULL,0),
(1893,36699.7,41000,'June 2015',2701.9,664.2,2250.3,2050,4100,6150,'June','2015',92,'2017-06-26','Crevrand Kaondo',NULL,0),
(1894,29222.4,33072.7,'June 2015',2108.8,518.4,2250.3,1600,3200,4800,'June','2015',108,'2017-06-26','Crevrand Kaondo',NULL,0),
(1895,28949.7,32800,'June 2015',2108.8,518.4,2250.3,1600,3200,4800,'June','2015',111,'2017-06-26','Crevrand Kaondo','2017-06-25 21:22:33',0),
(1896,34799.7,39000,'June 2015',2570.1,631.8,2250.3,1950,3900,5850,'June','2015',176,'2017-06-26','Crevrand Kaondo',NULL,0),
(1897,34799.7,39000,'June 2015',2570.1,631.8,2250.3,1950,3900,5850,'June','2015',112,'2017-06-26','Crevrand Kaondo',NULL,0),
(1898,32098,36098.3,'June 2015',2306.5,567,2250.3,1750,3500,5250,'June','2015',179,'2017-06-26','Crevrand Kaondo',NULL,0),
(1899,34799.7,39000,'June 2015',2570.1,631.8,2250.3,1950,3900,5850,'June','2015',174,'2017-06-26','Crevrand Kaondo',NULL,0),
(1900,32527,36027.3,'June 2015',1647.5,405,2250.3,1250,2500,3750,'June','2015',115,'2017-06-26','Crevrand Kaondo',NULL,0),
(1901,31461.6,34961.9,'June 2015',1647.5,405,2250.3,1250,2500,3750,'June','2015',113,'2017-06-26','Crevrand Kaondo',NULL,0),
(1902,31793.4,35393.8,'June 2015',1779.3,437.4,2250.3,1350,2700,4050,'June','2015',114,'2017-06-26','Crevrand Kaondo',NULL,0),
(1903,53061.1,57561.4,'June 2015',2965.5,729,2250.3,2250,4500,6750,'June','2015',169,'2017-06-26','Crevrand Kaondo',NULL,0),
(1904,18130,19800,'June 2015',1252.1,307.8,720,950,1900,2850,'June','2015',171,'2017-06-26','Crevrand Kaondo',NULL,0),
(1905,19556.8,21795.4,'June 2015',1252.1,307.8,1288.64,950,1900,2850,'June','2015',116,'2017-06-26','Crevrand Kaondo',NULL,0),
(1906,19973.6,22390.9,'June 2015',1252.1,307.8,1467.27,950,1900,2850,'June','2015',88,'2017-06-26','Crevrand Kaondo',NULL,0),
(1907,22986.1,26436.4,'June 2015',1581.6,388.8,2250.3,1200,2400,3600,'June','2015',89,'2017-06-26','Crevrand Kaondo',NULL,0),
(1908,30254.2,33754.6,'June 2015',1647.5,405,2250.3,1250,2500,3750,'June','2015',90,'2017-06-26','Crevrand Kaondo',NULL,0),
(1909,21410,24800,'June 2015',1581.6,388.8,2190,1200,2400,3600,'June','2015',91,'2017-06-26','Crevrand Kaondo',NULL,0),
(1910,21410,24800,'June 2015',1581.6,388.8,2190,1200,2400,3600,'June','2015',118,'2017-06-26','Crevrand Kaondo',NULL,0),
(1911,19066.8,21095.4,'June 2015',1252.1,307.8,1078.64,950,1900,2850,'June','2015',147,'2017-06-26','Crevrand Kaondo',NULL,0),
(1912,21410,24800,'June 2015',1581.6,388.8,2190,1200,2400,3600,'June','2015',119,'2017-06-26','Crevrand Kaondo',NULL,0),
(1913,47736.1,51186.4,'June 2015',1581.6,388.8,2250.3,1200,2400,3600,'June','2015',121,'2017-06-26','Crevrand Kaondo',NULL,0),
(1914,21410,24800,'June 2015',1581.6,388.8,2190,1200,2400,3600,'June','2015',122,'2017-06-26','Crevrand Kaondo',NULL,0),
(1915,27895.2,31345.4,'June 2015',1581.6,388.8,2250.3,1200,2400,3600,'June','2015',126,'2017-06-26','Crevrand Kaondo',NULL,0),
(1916,24622.4,28072.7,'June 2015',1581.6,388.8,2250.3,1200,2400,3600,'June','2015',172,'2017-06-26','Crevrand Kaondo',NULL,0),
(1917,21410,24800,'June 2015',1581.6,388.8,2190,1200,2400,3600,'June','2015',128,'2017-06-26','Crevrand Kaondo',NULL,0),
(1918,21410,24800,'June 2015',1581.6,388.8,2190,1200,2400,3600,'June','2015',127,'2017-06-26','Crevrand Kaondo',NULL,0),
(1919,22299.7,25800,'June 2015',1647.5,405,2250.3,1250,2500,3750,'June','2015',34,'2017-06-26','Crevrand Kaondo',NULL,0),
(1920,36595.1,40345.4,'June 2015',1977,486,2250.3,1500,3000,4500,'June','2015',22,'2017-06-26','Crevrand Kaondo',NULL,0),
(1921,22986.1,26436.4,'June 2015',1581.6,388.8,2250.3,1200,2400,3600,'June','2015',123,'2017-06-26','Crevrand Kaondo',NULL,0),
(1922,18130,19800,'June 2015',1252.1,307.8,720,950,1900,2850,'June','2015',94,'2017-06-26','Crevrand Kaondo',NULL,0),
(1923,24622.4,28072.7,'June 2015',1581.6,388.8,2250.3,1200,2400,3600,'June','2015',131,'2017-06-26','Crevrand Kaondo',NULL,0),
(1924,46236.1,49686.4,'June 2015',1581.6,388.8,2250.3,1200,2400,3600,'June','2015',132,'2017-06-26','Crevrand Kaondo',NULL,0),
(1925,55658.8,59659.1,'May 2015',2306.5,567,2250.3,1750,3500,5250,'May','2015',149,'2017-06-26','Crevrand Kaondo',NULL,0),
(1927,43329.2,47329.5,'May 2015',2306.5,567,2250.3,1750,3500,5250,'May','2015',97,'2017-06-26','Crevrand Kaondo',NULL,0),
(1928,52377.5,56377.8,'June 2015',2306.5,567,2250.3,1750,3500,5250,'June','2015',149,'2017-06-26','Crevrand Kaondo',NULL,0),
(1929,42931.5,46931.8,'June 2015',2306.5,567,2250.3,1750,3500,5250,'June','2015',97,'2017-06-26','Crevrand Kaondo',NULL,0),
(1931,55579.2,59579.5,'July 2015',2306.5,567,2250.3,1750,3500,5250,'July','2015',149,'2017-06-26','Crevrand Kaondo',NULL,0),
(1932,59137.9,63138.2,'July 2015',2306.5,567,2250.3,1750,3500,5250,'July','2015',95,'2017-06-26','Crevrand Kaondo',NULL,0),
(1933,39650.3,43650.6,'July 2015',2306.5,567,2250.3,1750,3500,5250,'July','2015',97,'2017-06-26','Crevrand Kaondo',NULL,0),
(1934,14250,15000,'June 2015',988.5,243,0,750,1500,2250,'June','2015',183,'2017-06-26','Crevrand Kaondo',NULL,0),
(1935,25713.3,29163.6,'July 2015',1581.6,388.8,2250.3,1200,2400,3600,'July','2015',99,'2017-06-26','Crevrand Kaondo',NULL,0),
(1936,25713.3,29163.6,'July 2015',1581.6,388.8,2250.3,1200,2400,3600,'July','2015',100,'2017-06-26','Crevrand Kaondo',NULL,0),
(1937,26845.2,30345.4,'July 2015',1647.5,405,2250.3,1250,2500,3750,'July','2015',101,'2017-06-26','Crevrand Kaondo',NULL,0),
(1938,25713.3,29163.6,'July 2015',1581.6,388.8,2250.3,1200,2400,3600,'July','2015',102,'2017-06-26','Crevrand Kaondo',NULL,0),
(1939,28986.1,32436.4,'July 2015',1581.6,388.8,2250.3,1200,2400,3600,'July','2015',103,'2017-06-26','Crevrand Kaondo',NULL,0),
(1940,57919,62419.3,'July 2015',2965.5,729,2250.3,2250,4500,6750,'July','2015',30,'2017-06-26','Crevrand Kaondo',NULL,0),
(1941,16568.2,17727.3,'July 2015',988.5,243,409.091,750,1500,2250,'July','2015',183,'2017-06-26','Crevrand Kaondo',NULL,0),
(1942,25713.3,29163.6,'July 2015',1581.6,388.8,2250.3,1200,2400,3600,'July','2015',178,'2017-06-26','Crevrand Kaondo',NULL,0),
(1943,26413.3,29863.6,'July 2015',1581.6,388.8,2250.3,1200,2400,3600,'July','2015',152,'2017-06-26','Crevrand Kaondo',NULL,0),
(1944,21886.1,25136.4,'July 2015',1318,324,2250.3,1000,2000,3000,'July','2015',153,'2017-06-26','Crevrand Kaondo',NULL,0),
(1945,25713.3,29163.6,'July 2015',1581.6,388.8,2250.3,1200,2400,3600,'July','2015',105,'2017-06-26','Crevrand Kaondo',NULL,0),
(1946,25713.3,29163.6,'July 2015',1581.6,388.8,2250.3,1200,2400,3600,'July','2015',39,'2017-06-26','Crevrand Kaondo',NULL,0),
(1947,97499.7,105000,'July 2015',6919.5,1701,2250.3,5250,10500,15750,'July','2015',40,'2017-06-26','Crevrand Kaondo',NULL,0),
(1948,36699.7,41000,'July 2015',2701.9,664.2,2250.3,2050,4100,6150,'July','2015',92,'2017-06-26','Crevrand Kaondo',NULL,0),
(1949,28949.7,32800,'July 2015',2108.8,518.4,2250.3,1600,3200,4800,'July','2015',108,'2017-06-26','Crevrand Kaondo',NULL,0),
(1950,28949.7,32800,'July 2015',2108.8,518.4,2250.3,1600,3200,4800,'July','2015',111,'2017-06-26','Crevrand Kaondo','2017-06-25 21:24:14',0),
(1951,34799.7,39000,'July 2015',2570.1,631.8,2250.3,1950,3900,5850,'July','2015',112,'2017-06-26','Crevrand Kaondo',NULL,0),
(1952,117104,125636,'July 2015',8279.41,2035.3,2250.3,6281.8,12563.6,18845.4,'July','2015',150,'2017-06-26','Crevrand Kaondo',NULL,0),
(1953,33024.1,36524.4,'July 2015',1647.5,405,2250.3,1250,2500,3750,'July','2015',115,'2017-06-26','Crevrand Kaondo',NULL,0),
(1954,34160.5,37660.8,'July 2015',1647.5,405,2250.3,1250,2500,3750,'July','2015',113,'2017-06-26','Crevrand Kaondo',NULL,0),
(1955,32100.3,35700.6,'July 2015',1779.3,437.4,2250.3,1350,2700,4050,'July','2015',114,'2017-06-26','Crevrand Kaondo',NULL,0),
(1956,58558.2,63058.5,'July 2015',2965.5,729,2250.3,2250,4500,6750,'July','2015',169,'2017-06-26','Crevrand Kaondo',NULL,0),
(1957,117104,125636,'July 2015',8279.41,2035.3,2250.3,6281.8,12563.6,18845.4,'July','2015',150,'2017-06-26','Crevrand Kaondo',NULL,0),
(1958,33024.1,36524.4,'July 2015',1647.5,405,2250.3,1250,2500,3750,'July','2015',115,'2017-06-26','Crevrand Kaondo',NULL,0),
(1959,32100.3,35700.6,'July 2015',1779.3,437.4,2250.3,1350,2700,4050,'July','2015',114,'2017-06-26','Crevrand Kaondo',NULL,0),
(1960,20578.2,23254.6,'July 2015',1252.1,307.8,1726.36,950,1900,2850,'July','2015',171,'2017-06-26','Crevrand Kaondo',NULL,0),
(1961,24640.6,27840.9,'July 2015',1252.1,307.8,2250.3,950,1900,2850,'July','2015',116,'2017-06-26','Crevrand Kaondo',NULL,0),
(1962,22645.2,25845.4,'July 2015',1252.1,307.8,2250.3,950,1900,2850,'July','2015',88,'2017-06-26','Crevrand Kaondo',NULL,0),
(1963,25713.3,29163.6,'July 2015',1581.6,388.8,2250.3,1200,2400,3600,'July','2015',89,'2017-06-26','Crevrand Kaondo',NULL,0),
(1964,35580.9,39081.2,'July 2015',1647.5,405,2250.3,1250,2500,3750,'July','2015',90,'2017-06-26','Crevrand Kaondo',NULL,0),
(1965,27349.7,30800,'July 2015',1581.6,388.8,2250.3,1200,2400,3600,'July','2015',91,'2017-06-26','Crevrand Kaondo',NULL,0),
(1966,23531.5,26981.8,'July 2015',1581.6,388.8,2250.3,1200,2400,3600,'July','2015',118,'2017-06-26','Crevrand Kaondo',NULL,0),
(1967,20578.2,23254.6,'July 2015',1252.1,307.8,1726.36,950,1900,2850,'July','2015',147,'2017-06-26','Crevrand Kaondo',NULL,0),
(1968,25713.3,29163.6,'July 2015',1581.6,388.8,2250.3,1200,2400,3600,'July','2015',119,'2017-06-26',' ',NULL,0),
(1969,28849.7,32300,'July 2015',1581.6,388.8,2250.3,1200,2400,3600,'July','2015',121,'2017-06-26','Crevrand Kaondo',NULL,0),
(1970,25167.9,28618.2,'July 2015',1581.6,388.8,2250.3,1200,2400,3600,'July','2015',122,'2017-06-26','Crevrand Kaondo',NULL,0),
(1971,30077,33527.3,'July 2015',1581.6,388.8,2250.3,1200,2400,3600,'July','2015',126,'2017-06-26','Crevrand Kaondo',NULL,0),
(1972,25167.9,28618.2,'July 2015',1581.6,388.8,2250.3,1200,2400,3600,'July','2015',172,'2017-06-26','Crevrand Kaondo',NULL,0),
(1973,27349.7,30800,'July 2015',1581.6,388.8,2250.3,1200,2400,3600,'July','2015',128,'2017-06-26','Crevrand Kaondo',NULL,0),
(1974,25167.9,28618.2,'July 2015',1581.6,388.8,2250.3,1200,2400,3600,'July','2015',127,'2017-06-26','Crevrand Kaondo',NULL,0),
(1975,28549.7,32050,'July 2015',1647.5,405,2250.3,1250,2500,3750,'July','2015',34,'2017-06-26','Crevrand Kaondo',NULL,0),
(1976,36595.1,40345.4,'July 2015',1977,486,2250.3,1500,3000,4500,'July','2015',22,'2017-06-26','Crevrand Kaondo',NULL,0),
(1978,27349.7,30800,'July 2015',1581.6,388.8,2250.3,1200,2400,3600,'July','2015',123,'2017-06-26','Crevrand Kaondo',NULL,0),
(1979,20578.2,23254.6,'July 2015',1252.1,307.8,1726.36,950,1900,2850,'July','2015',94,'2017-06-26','Crevrand Kaondo',NULL,0),
(1980,30077,33527.3,'July 2015',1581.6,388.8,2250.3,1200,2400,3600,'July','2015',131,'2017-06-26','Crevrand Kaondo',NULL,0),
(1981,33213.3,36663.6,'July 2015',1581.6,388.8,2250.3,1200,2400,3600,'July','2015',132,'2017-06-26','Crevrand Kaondo',NULL,0),
(1982,33213.3,36663.6,'July 2015',1581.6,388.8,2250.3,1200,2400,3600,'July','2015',132,'2017-06-26','Crevrand Kaondo',NULL,0),
(1983,60590.6,64590.9,'August 2015',2306.5,567,2250.3,1750,3500,5250,'August','2015',149,'2017-06-26','Crevrand Kaondo',NULL,0),
(1985,29790.9,33541.2,'August 2015',1977,486,2250.3,1500,3000,4500,'August','2015',96,'2017-06-26','Crevrand Kaondo',NULL,0),
(1986,38755.4,42755.7,'August 2015',2306.5,567,2250.3,1750,3500,5250,'August','2015',97,'2017-06-26','Crevrand Kaondo',NULL,0),
(1987,21410,24800,'August 2015',1581.6,388.8,2190,1200,2400,3600,'August','2015',99,'2017-06-26','Crevrand Kaondo',NULL,0),
(1988,21410,24800,'August 2015',1581.6,388.8,2190,1200,2400,3600,'August','2015',100,'2017-06-26','Crevrand Kaondo',NULL,0),
(1989,22299.7,25800,'August 2015',1647.5,405,2250.3,1250,2500,3750,'August','2015',101,'2017-06-26','Crevrand Kaondo',NULL,0),
(1990,21410,24800,'August 2015',1581.6,388.8,2190,1200,2400,3600,'August','2015',102,'2017-06-26','Crevrand Kaondo',NULL,0),
(1991,21410,24800,'August 2015',1581.6,388.8,2190,1200,2400,3600,'August','2015',103,'2017-06-26','Crevrand Kaondo',NULL,0),
(1992,41299.7,45800,'August 2015',2965.5,729,2250.3,2250,4500,6750,'August','2015',30,'2017-06-26','Crevrand Kaondo',NULL,0),
(1993,14250,15000,'August 2015',988.5,243,0,750,1500,2250,'August','2015',183,'2017-06-26','Crevrand Kaondo',NULL,0),
(1994,21410,24800,'August 2015',1581.6,388.8,2190,1200,2400,3600,'August','2015',178,'2017-06-26','Crevrand Kaondo',NULL,0),
(1995,15000,15000,'August 2015',0,243,0,0,0,0,'August','2015',151,'2017-06-26','Crevrand Kaondo',NULL,0),
(1996,22049.7,25500,'August 2015',1581.6,388.8,2250.3,1200,2400,3600,'August','2015',152,'2017-06-26','Crevrand Kaondo',NULL,0),
(1997,19300,21500,'August 2015',1318,324,1200,1000,2000,3000,'August','2015',153,'2017-06-26','Crevrand Kaondo',NULL,0),
(1998,21410,24800,'August 2015',1581.6,388.8,2190,1200,2400,3600,'August','2015',105,'2017-06-26','Crevrand Kaondo',NULL,0),
(1999,21410,24800,'August 2015',1581.6,388.8,2190,1200,2400,3600,'August','2015',39,'2017-06-26','Crevrand Kaondo',NULL,0),
(2000,60987.2,65487.5,'August 2015',2965.5,729,2250.3,2250,4500,6750,'August','2015',169,'2017-06-26','Crevrand Kaondo',NULL,0),
(2001,97499.7,105000,'August 2015',6919.5,1701,2250.3,5250,10500,15750,'August','2015',40,'2017-06-26','Crevrand Kaondo',NULL,0),
(2002,38796.3,43096.6,'August 2015',2701.9,664.2,2250.3,2050,4100,6150,'August','2015',92,'2017-06-26','Crevrand Kaondo',NULL,0),
(2003,28949.7,32800,'August 2015',2108.8,518.4,2250.3,1600,3200,4800,'August','2015',108,'2017-06-26','Crevrand Kaondo',NULL,0),
(2004,28949.7,32800,'August 2015',2108.8,518.4,2250.3,1600,3200,4800,'August','2015',111,'2017-06-26','Crevrand Kaondo',NULL,0),
(2005,34799.7,39000,'August 2015',2570.1,631.8,2250.3,1950,3900,5850,'August','2015',112,'2017-06-26','Crevrand Kaondo',NULL,0),
(2006,117104,125636,'August 2015',8279.41,2035.3,2250.3,6281.8,12563.6,18845.4,'August','2015',150,'2017-06-26','Crevrand Kaondo',NULL,0),
(2007,27981.5,31481.8,'August 2015',1647.5,405,2250.3,1250,2500,3750,'August','2015',115,'2017-06-26','Crevrand Kaondo',NULL,0),
(2008,28549.7,32050,'August 2015',1647.5,405,2250.3,1250,2500,3750,'August','2015',113,'2017-06-26','Crevrand Kaondo',NULL,0),
(2009,30029.2,33629.6,'August 2015',1779.3,437.4,2250.3,1350,2700,4050,'August','2015',114,'2017-06-26','Crevrand Kaondo',NULL,0),
(2010,18130,19800,'August 2015',1252.1,307.8,720,950,1900,2850,'August','2015',171,'2017-06-26','Crevrand Kaondo',NULL,0),
(2011,19556.8,21795.4,'August 2015',1252.1,307.8,1288.64,950,1900,2850,'August','2015',116,'2017-06-26','Crevrand Kaondo',NULL,0),
(2012,18130,19800,'August 2015',1252.1,307.8,720,950,1900,2850,'August','2015',88,'2017-06-26','Crevrand Kaondo',NULL,0),
(2013,22986.1,26436.4,'August 2015',1581.6,388.8,2250.3,1200,2400,3600,'August','2015',89,'2017-06-26','Crevrand Kaondo',NULL,0),
(2014,30254.2,33754.6,'August 2015',1647.5,405,2250.3,1250,2500,3750,'August','2015',90,'2017-06-26','Crevrand Kaondo',NULL,0),
(2015,22167.9,25618.2,'August 2015',1581.6,388.8,2250.3,1200,2400,3600,'August','2015',91,'2017-06-26','Crevrand Kaondo',NULL,0),
(2016,21410,24800,'August 2015',1581.6,388.8,2190,1200,2400,3600,'August','2015',118,'2017-06-26','Crevrand Kaondo',NULL,0),
(2017,19066.8,21095.4,'August 2015',1252.1,307.8,1078.64,950,1900,2850,'August','2015',147,'2017-06-26','Crevrand Kaondo',NULL,0),
(2018,21410,24800,'August 2015',1581.6,388.8,2190,1200,2400,3600,'August','2015',119,'2017-06-26','Crevrand Kaondo',NULL,0),
(2019,29736.1,33186.4,'August 2015',1581.6,388.8,2250.3,1200,2400,3600,'August','2015',121,'2017-06-26','Crevrand Kaondo',NULL,0),
(2020,21410,24800,'August 2015',1581.6,388.8,2190,1200,2400,3600,'August','2015',122,'2017-06-26','Crevrand Kaondo',NULL,0),
(2021,30077,33527.3,'August 2015',1581.6,388.8,2250.3,1200,2400,3600,'August','2015',126,'2017-06-26','Crevrand Kaondo',NULL,0),
(2022,24349.7,27800,'August 2015',1581.6,388.8,2250.3,1200,2400,3600,'August','2015',172,'2017-06-26','Crevrand Kaondo',NULL,0),
(2023,26804.2,30254.6,'August 2015',1581.6,388.8,2250.3,1200,2400,3600,'August','2015',128,'2017-06-26','Crevrand Kaondo',NULL,0),
(2024,24622.4,28072.7,'August 2015',1581.6,388.8,2250.3,1200,2400,3600,'August','2015',127,'2017-06-26','Crevrand Kaondo',NULL,0),
(2025,15525,16500,'August 2015',988.5,243,225,750,1500,2250,'August','2015',129,'2017-06-26','Crevrand Kaondo',NULL,0),
(2026,22299.7,25800,'August 2015',1647.5,405,2250.3,1250,2500,3750,'August','2015',34,'2017-06-26','Crevrand Kaondo',NULL,0),
(2027,36595.1,40345.4,'August 2015',1977,486,2250.3,1500,3000,4500,'August','2015',22,'2017-06-26','Crevrand Kaondo',NULL,0),
(2028,21410,24800,'August 2015',1581.6,388.8,2190,1200,2400,3600,'August','2015',123,'2017-06-26','Crevrand Kaondo',NULL,0),
(2029,19520.2,21743.2,'August 2015',1252.1,307.8,1272.95,950,1900,2850,'August','2015',94,'2017-06-26','Crevrand Kaondo',NULL,0),
(2030,30077,33527.3,'August 2015',1581.6,388.8,2250.3,1200,2400,3600,'August','2015',131,'2017-06-26','Crevrand Kaondo',NULL,0),
(2031,40713.3,44163.6,'August 2015',1581.6,388.8,2250.3,1200,2400,3600,'August','2015',132,'2017-06-26','Crevrand Kaondo',NULL,0),
(2032,21758.8,25209.1,'September 2015',1581.6,388.8,2250.3,1200,2400,3600,'September','2015',99,'2017-06-26','Crevrand Kaondo',NULL,0),
(2033,21758.8,25209.1,'September 2015',1581.6,388.8,2250.3,1200,2400,3600,'September','2015',100,'2017-06-26','Crevrand Kaondo',NULL,0),
(2034,22725.8,26226.1,'September 2015',1647.5,405,2250.3,1250,2500,3750,'September','2015',101,'2017-06-26','Crevrand Kaondo',NULL,0),
(2035,24622.4,28072.7,'September 2015',1581.6,388.8,2250.3,1200,2400,3600,'September','2015',102,'2017-06-26','Crevrand Kaondo',NULL,0),
(2036,50504.2,55004.6,'September 2015',2965.5,729,2250.3,2250,4500,6750,'September','2015',30,'2017-06-26','Crevrand Kaondo',NULL,0),
(2037,14250,15000,'September 2015',988.5,243,0,750,1500,2250,'September','2015',183,'2017-06-26','Crevrand Kaondo',NULL,0),
(2038,21410,24800,'September 2015',1581.6,388.8,2190,1200,2400,3600,'September','2015',178,'2017-06-26','Crevrand Kaondo',NULL,0),
(2039,15000,15000,'September 2015',0,243,0,0,0,0,'September','2015',151,'2017-06-26','Crevrand Kaondo',NULL,0),
(2040,22458.8,25909.1,'September 2015',1581.6,388.8,2250.3,1200,2400,3600,'September','2015',152,'2017-06-26','Crevrand Kaondo',NULL,0),
(2041,19300,21500,'September 2015',1318,324,1200,1000,2000,3000,'September','2015',153,'2017-06-26','Crevrand Kaondo',NULL,0),
(2042,21410,24800,'September 2015',1581.6,388.8,2190,1200,2400,3600,'September','2015',105,'2017-06-26','Crevrand Kaondo',NULL,0),
(2043,21410,24800,'September 2015',1581.6,388.8,2190,1200,2400,3600,'September','2015',39,'2017-06-26','Crevrand Kaondo',NULL,0),
(2044,97499.7,105000,'September 2015',6919.5,1701,2250.3,5250,10500,15750,'September','2015',40,'2017-06-26','Crevrand Kaondo',NULL,0),
(2045,36699.7,41000,'September 2015',2701.9,664.2,2250.3,2050,4100,6150,'September','2015',92,'2017-06-26','Crevrand Kaondo',NULL,0),
(2046,28949.7,32800,'September 2015',2108.8,518.4,2250.3,1600,3200,4800,'September','2015',108,'2017-06-26','Crevrand Kaondo',NULL,0),
(2047,28949.7,32800,'September 2015',2108.8,518.4,2250.3,1600,3200,4800,'September','2015',111,'2017-06-26','Crevrand Kaondo',NULL,0),
(2048,34799.7,39000,'September 2015',2570.1,631.8,2250.3,1950,3900,5850,'September','2015',112,'2017-06-26','Crevrand Kaondo',NULL,0),
(2049,117104,125636,'September 2015',8279.41,2035.3,2250.3,6281.8,12563.6,18845.4,'September','2015',150,'2017-06-26','Crevrand Kaondo',NULL,0),
(2050,31674.7,35175,'September 2015',1647.5,405,2250.3,1250,2500,3750,'September','2015',115,'2017-06-26','Crevrand Kaondo',NULL,0),
(2051,29117.9,32618.2,'September 2015',1647.5,405,2250.3,1250,2500,3750,'September','2015',113,'2017-06-26','Crevrand Kaondo',NULL,0),
(2052,32483.8,36084.1,'September 2015',1779.3,437.4,2250.3,1350,2700,4050,'September','2015',114,'2017-06-26','Crevrand Kaondo',NULL,0),
(2053,58174.7,62675,'September 2015',2965.5,729,2250.3,2250,4500,6750,'September','2015',169,'2017-06-26','Crevrand Kaondo',NULL,0),
(2054,19066.8,21095.4,'September 2015',1252.1,307.8,1078.64,950,1900,2850,'September','2015',171,'2017-06-26','Crevrand Kaondo',NULL,0),
(2055,19556.8,21795.4,'September 2015',1252.1,307.8,1288.64,950,1900,2850,'September','2015',116,'2017-06-26','Crevrand Kaondo',NULL,0),
(2056,18130,19800,'September 2015',1252.1,307.8,720,950,1900,2850,'September','2015',88,'2017-06-26','Crevrand Kaondo',NULL,0),
(2057,22986.1,26436.4,'September 2015',1581.6,388.8,2250.3,1200,2400,3600,'September','2015',89,'2017-06-26','Crevrand Kaondo',NULL,0),
(2058,22299.7,25800,'September 2015',1647.5,405,2250.3,1250,2500,3750,'September','2015',90,'2017-06-26','Crevrand Kaondo',NULL,0),
(2059,22986.1,26436.4,'September 2015',1581.6,388.8,2250.3,1200,2400,3600,'September','2015',91,'2017-06-26','Crevrand Kaondo',NULL,0),
(2060,21410,24800,'September 2015',1581.6,388.8,2190,1200,2400,3600,'September','2015',118,'2017-06-26','Crevrand Kaondo',NULL,0),
(2061,18130,19800,'September 2015',1252.1,307.8,720,950,1900,2850,'September','2015',147,'2017-06-26','Crevrand Kaondo',NULL,0),
(2062,21410,24800,'September 2015',1581.6,388.8,2190,1200,2400,3600,'September','2015',119,'2017-06-26','Crevrand Kaondo',NULL,0),
(2063,22781.5,26231.8,'September 2015',1581.6,388.8,2250.3,1200,2400,3600,'September','2015',121,'2017-06-26','Crevrand Kaondo',NULL,0),
(2064,21410,24800,'September 2015',1581.6,388.8,2190,1200,2400,3600,'September','2015',122,'2017-06-26','Crevrand Kaondo',NULL,0),
(2065,27895.2,31345.4,'September 2015',1581.6,388.8,2250.3,1200,2400,3600,'September','2015',126,'2017-06-26','Crevrand Kaondo',NULL,0),
(2066,22167.9,25618.2,'September 2015',1581.6,388.8,2250.3,1200,2400,3600,'September','2015',172,'2017-06-26','Crevrand Kaondo',NULL,0),
(2067,25031.5,28481.8,'September 2015',1581.6,388.8,2250.3,1200,2400,3600,'September','2015',128,'2017-06-26','Crevrand Kaondo',NULL,0),
(2068,21410,24800,'September 2015',1581.6,388.8,2190,1200,2400,3600,'September','2015',127,'2017-06-26','Crevrand Kaondo',NULL,0),
(2069,16394.3,17522.7,'September 2015',988.5,243,378.409,750,1500,2250,'September','2015',129,'2017-06-26','Crevrand Kaondo',NULL,0),
(2070,24572.4,28072.7,'September 2015',1647.5,405,2250.3,1250,2500,3750,'September','2015',34,'2017-06-26','Crevrand Kaondo',NULL,0),
(2071,35231.5,38981.8,'September 2015',1977,486,2250.3,1500,3000,4500,'September','2015',22,'2017-06-26','Crevrand Kaondo',NULL,0),
(2072,21410,24800,'September 2015',1581.6,388.8,2190,1200,2400,3600,'September','2015',123,'2017-06-26','Crevrand Kaondo',NULL,0),
(2073,18130,19800,'September 2015',1252.1,307.8,720,950,1900,2850,'September','2015',94,'2017-06-26','Crevrand Kaondo',NULL,0),
(2074,27895.2,31345.4,'September 2015',1581.6,388.8,2250.3,1200,2400,3600,'September','2015',131,'2017-06-26','Crevrand Kaondo',NULL,0),
(2075,35667.9,39118.2,'September 2015',1581.6,388.8,2250.3,1200,2400,3600,'September','2015',132,'2017-06-26','Crevrand Kaondo',NULL,0),
(2076,35921.6,39921.9,'September 2015',2306.5,567,2250.3,1750,3500,5250,'September','2015',149,'2017-06-26','Crevrand Kaondo',NULL,0),
(2077,42633.2,46633.5,'September 2015',2306.5,567,2250.3,1750,3500,5250,'September','2015',95,'2017-06-26','Crevrand Kaondo',NULL,0),
(2078,34605.4,38355.7,'September 2015',1977,486,2250.3,1500,3000,4500,'September','2015',96,'2017-06-26','Crevrand Kaondo',NULL,0),
(2079,45019.6,49019.9,'September 2015',2306.5,567,2250.3,1750,3500,5250,'September','2015',97,'2017-06-26','Crevrand Kaondo',NULL,0),
(2080,39948.6,43948.9,'October 2015',2306.5,567,2250.3,1750,3500,5250,'October','2015',149,'2017-06-26','Crevrand Kaondo',NULL,0),
(2081,42633.2,46633.5,'October 2015',2306.5,567,2250.3,1750,3500,5250,'October','2015',95,'2017-06-26','Crevrand Kaondo',NULL,0),
(2082,35571.9,39322.2,'October 2015',1977,486,2250.3,1500,3000,4500,'October','2015',96,'2017-06-26','Crevrand Kaondo',NULL,0),
(2083,40246.9,44247.2,'October 2015',2306.5,567,2250.3,1750,3500,5250,'October','2015',97,'2017-06-26','Crevrand Kaondo',NULL,0),
(2084,21410,24800,'October 2015',1581.6,388.8,2190,1200,2400,3600,'October','2015',99,'2017-06-26','Crevrand Kaondo',NULL,0),
(2085,21410,24800,'October 2015',1581.6,388.8,2190,1200,2400,3600,'October','2015',100,'2017-06-26','Crevrand Kaondo',NULL,0),
(2086,22299.7,25800,'October 2015',1647.5,405,2250.3,1250,2500,3750,'October','2015',101,'2017-06-26','Crevrand Kaondo',NULL,0),
(2087,21410,24800,'October 2015',1581.6,388.8,2190,1200,2400,3600,'October','2015',102,'2017-06-26','Crevrand Kaondo',NULL,0),
(2088,21410,24800,'October 2015',1581.6,388.8,2190,1200,2400,3600,'October','2015',103,'2017-06-26','Crevrand Kaondo',NULL,0),
(2089,60731.5,65231.8,'October 2015',2965.5,729,2250.3,2250,4500,6750,'October','2015',30,'2017-06-26','Crevrand Kaondo',NULL,0),
(2090,14250,15000,'October 2015',988.5,243,0,750,1500,2250,'October','2015',183,'2017-06-26','Crevrand Kaondo',NULL,0),
(2091,21410,24800,'October 2015',1581.6,388.8,2190,1200,2400,3600,'October','2015',178,'2017-06-26','Crevrand Kaondo',NULL,0),
(2092,16684.1,17863.6,'October 2015',988.5,243,429.546,750,1500,2250,'October','2015',129,'2017-06-26','Crevrand Kaondo',NULL,0),
(2093,22049.7,25500,'October 2015',1581.6,388.8,2250.3,1200,2400,3600,'October','2015',152,'2017-06-26','Crevrand Kaondo',NULL,0),
(2094,16159.1,16363.6,'October 2015',0,243,204.546,0,0,0,'October','2015',151,'2017-06-26','Crevrand Kaondo',NULL,0),
(2095,19300,21500,'October 2015',1318,324,1200,1000,2000,3000,'October','2015',153,'2017-06-26','Crevrand Kaondo',NULL,0),
(2096,21410,24800,'October 2015',1581.6,388.8,2190,1200,2400,3600,'October','2015',105,'2017-06-26','Crevrand Kaondo',NULL,0),
(2097,26258.8,29709.1,'October 2015',1581.6,388.8,2250.3,1200,2400,3600,'October','2015',39,'2017-06-26','Crevrand Kaondo',NULL,0),
(2098,97499.7,105000,'October 2015',6919.5,1701,2250.3,5250,10500,15750,'October','2015',40,'2017-06-26','Crevrand Kaondo',NULL,0),
(2099,39844.6,44144.9,'October 2015',2701.9,664.2,2250.3,2050,4100,6150,'October','2015',92,'2017-06-26','Crevrand Kaondo',NULL,0),
(2100,40139.7,51200,'October 2015',3374.08,829.44,2250.3,2560,5120,7680,'October','2015',85,'2017-06-26','Crevrand Kaondo',NULL,0),
(2101,46389.7,51200,'October 2015',3374.08,829.44,2250.3,2560,5120,7680,'October','2015',86,'2017-06-26','Crevrand Kaondo',NULL,0),
(2102,28949.7,32800,'October 2015',2108.8,518.4,2250.3,1600,3200,4800,'October','2015',108,'2017-06-26','Crevrand Kaondo',NULL,0),
(2103,28949.7,32800,'October 2015',2108.8,518.4,2250.3,1600,3200,4800,'October','2015',111,'2017-06-26','Crevrand Kaondo',NULL,0),
(2104,34799.7,39000,'October 2015',2570.1,631.8,2250.3,1950,3900,5850,'October','2015',112,'2017-06-26','Crevrand Kaondo',NULL,0),
(2105,26258.8,29709.1,'October 2015',1581.6,388.8,2250.3,1200,2400,3600,'October','2015',39,'2017-06-26','Crevrand Kaondo',NULL,0),
(2106,29544,33044.3,'October 2015',1647.5,405,2250.3,1250,2500,3750,'October','2015',115,'2017-06-26','Crevrand Kaondo',NULL,0),
(2107,28691.8,32192.1,'October 2015',1647.5,405,2250.3,1250,2500,3750,'October','2015',113,'2017-06-26','Crevrand Kaondo',NULL,0),
(2108,31103.1,34703.4,'October 2015',1779.3,437.4,2250.3,1350,2700,4050,'October','2015',114,'2017-06-26','Crevrand Kaondo',NULL,0),
(2109,52038.3,56538.6,'October 2015',2965.5,729,2250.3,2250,4500,6750,'October','2015',169,'2017-06-26','Crevrand Kaondo',NULL,0),
(2110,18130,19800,'October 2015',1252.1,307.8,720,950,1900,2850,'October','2015',171,'2017-06-26','Crevrand Kaondo',NULL,0),
(2111,19859.1,22227.3,'October 2015',1252.1,307.8,1418.18,950,1900,2850,'October','2015',116,'2017-06-26','Crevrand Kaondo',NULL,0),
(2112,20275.9,22822.7,'October 2015',1252.1,307.8,1596.82,950,1900,2850,'October','2015',88,'2017-06-26','Crevrand Kaondo',NULL,0),
(2113,21410,24800,'October 2015',1581.6,388.8,2190,1200,2400,3600,'October','2015',89,'2017-06-26','Crevrand Kaondo',NULL,0),
(2114,48862.2,52362.5,'October 2015',1647.5,405,2250.3,1250,2500,3750,'October','2015',90,'2017-06-26','Crevrand Kaondo',NULL,0),
(2115,23531.5,26981.8,'October 2015',1581.6,388.8,2250.3,1200,2400,3600,'October','2015',91,'2017-06-26','Crevrand Kaondo',NULL,0),
(2116,23531.5,26981.8,'October 2015',1581.6,388.8,2250.3,1200,2400,3600,'October','2015',118,'2017-06-26','Crevrand Kaondo',NULL,0),
(2117,19369.1,21527.3,'October 2015',1252.1,307.8,1208.18,950,1900,2850,'October','2015',147,'2017-06-26','Crevrand Kaondo',NULL,0),
(2118,21410,24800,'October 2015',1581.6,388.8,2190,1200,2400,3600,'October','2015',119,'2017-06-26','Crevrand Kaondo',NULL,0),
(2119,48963.3,52413.6,'October 2015',1581.6,388.8,2250.3,1200,2400,3600,'October','2015',121,'2017-06-26','Crevrand Kaondo',NULL,0),
(2120,23531.5,26981.8,'October 2015',1581.6,388.8,2250.3,1200,2400,3600,'October','2015',122,'2017-06-26','Crevrand Kaondo',NULL,0),
(2121,30077,33527.3,'October 2015',1581.6,388.8,2250.3,1200,2400,3600,'October','2015',126,'2017-06-26','Crevrand Kaondo',NULL,0),
(2122,24349.7,27800,'October 2015',1581.6,388.8,2250.3,1200,2400,3600,'October','2015',172,'2017-06-26','Crevrand Kaondo',NULL,0),
(2123,26258.8,29709.1,'October 2015',1581.6,388.8,2250.3,1200,2400,3600,'October','2015',128,'2017-06-26','Crevrand Kaondo',NULL,0),
(2124,21410,24800,'October 2015',1581.6,388.8,2190,1200,2400,3600,'October','2015',127,'2017-06-26','Crevrand Kaondo',NULL,0),
(2125,26845.2,30345.4,'October 2015',1647.5,405,2250.3,1250,2500,3750,'October','2015',34,'2017-06-26','Crevrand Kaondo',NULL,0),
(2126,52277,56027.3,'October 2015',1977,486,2250.3,1500,3000,4500,'October','2015',22,'2017-06-26','Crevrand Kaondo',NULL,0),
(2127,23531.5,26981.8,'October 2015',1581.6,388.8,2250.3,1200,2400,3600,'October','2015',123,'2017-06-26','Crevrand Kaondo',NULL,0),
(2128,19973.6,22390.9,'October 2015',1252.1,307.8,1467.27,950,1900,2850,'October','2015',94,'2017-06-26','Crevrand Kaondo',NULL,0),
(2129,30077,33527.3,'October 2015',1581.6,388.8,2250.3,1200,2400,3600,'October','2015',131,'2017-06-26','Crevrand Kaondo',NULL,0),
(2130,51895.2,55345.5,'October 2015',1581.6,388.8,2250.3,1200,2400,3600,'October','2015',132,'2017-06-26','Crevrand Kaondo',NULL,0),
(2131,39948.6,43948.9,'November 2015',2306.5,567,2250.3,1750,3500,5250,'November','2015',149,'2017-06-26','Crevrand Kaondo',NULL,0),
(2133,35571.9,39322.2,'November 2015',1977,486,2250.3,1500,3000,4500,'November','2015',96,'2017-06-26','Crevrand Kaondo',NULL,0),
(2134,42036.6,46036.9,'November 2015',2306.5,567,2250.3,1750,3500,5250,'November','2015',97,'2017-06-26','Crevrand Kaondo',NULL,0),
(2135,21410,24800,'November 2015',1581.6,388.8,2190,1200,2400,3600,'November','2015',99,'2017-06-26','Crevrand Kaondo',NULL,0),
(2136,21410,24800,'November 2015',1581.6,388.8,2190,1200,2400,3600,'November','2015',100,'2017-06-26','Crevrand Kaondo',NULL,0),
(2137,22299.7,25800,'November 2015',1647.5,405,2250.3,1250,2500,3750,'November','2015',101,'2017-06-26','Crevrand Kaondo',NULL,0),
(2138,21410,24800,'November 2015',1581.6,388.8,2190,1200,2400,3600,'November','2015',102,'2017-06-26','Crevrand Kaondo',NULL,0),
(2139,21410,24800,'November 2015',1581.6,388.8,2190,1200,2400,3600,'November','2015',103,'2017-06-26','Crevrand Kaondo',NULL,0),
(2140,19300,21500,'November 2015',1318,324,1200,1000,2000,3000,'November','2015',104,'2017-06-26','Crevrand Kaondo',NULL,0),
(2141,14250,15000,'November 2015',988.5,243,0,750,1500,2250,'November','2015',183,'2017-06-26','Crevrand Kaondo',NULL,0),
(2142,21410,24800,'November 2015',1581.6,388.8,2190,1200,2400,3600,'November','2015',91,'2017-06-26','Crevrand Kaondo',NULL,0),
(2143,16159.1,16363.6,'November 2015',0,243,204.546,0,0,0,'November','2015',151,'2017-06-26','Crevrand Kaondo',NULL,0),
(2144,22049.7,25500,'November 2015',1581.6,388.8,2250.3,1200,2400,3600,'November','2015',152,'2017-06-26','Crevrand Kaondo',NULL,0),
(2145,19300,21500,'November 2015',1318,324,1200,1000,2000,3000,'November','2015',153,'2017-06-26','Crevrand Kaondo',NULL,0),
(2146,21410,24800,'November 2015',1581.6,388.8,2190,1200,2400,3600,'November','2015',105,'2017-06-26','Crevrand Kaondo',NULL,0),
(2147,27895.2,31345.4,'November 2015',1581.6,388.8,2250.3,1200,2400,3600,'November','2015',39,'2017-06-26','Crevrand Kaondo',NULL,0),
(2148,97499.7,105000,'November 2015',6919.5,1701,2250.3,5250,10500,15750,'November','2015',40,'2017-06-26','Crevrand Kaondo',NULL,0),
(2149,39844.6,44144.9,'November 2015',2701.9,664.2,2250.3,2050,4100,6150,'November','2015',92,'2017-06-26','Crevrand Kaondo',NULL,0),
(2150,40139.7,51200,'November 2015',3374.08,829.44,2250.3,2560,5120,7680,'November','2015',85,'2017-06-26','Crevrand Kaondo',NULL,0),
(2151,46389.7,51200,'November 2015',3374.08,829.44,2250.3,2560,5120,7680,'November','2015',86,'2017-06-26','Crevrand Kaondo',NULL,0),
(2152,28949.7,32800,'November 2015',2108.8,518.4,2250.3,1600,3200,4800,'November','2015',108,'2017-06-26','Crevrand Kaondo',NULL,0),
(2153,28949.7,32800,'November 2015',2108.8,518.4,2250.3,1600,3200,4800,'November','2015',111,'2017-06-26','Crevrand Kaondo',NULL,0),
(2154,34799.7,39000,'November 2015',2570.1,631.8,2250.3,1950,3900,5850,'November','2015',112,'2017-06-26','Crevrand Kaondo',NULL,0),
(2155,27895.2,31345.4,'November 2015',1581.6,388.8,2250.3,1200,2400,3600,'November','2015',39,'2017-06-26','Crevrand Kaondo',NULL,0),
(2156,117104,125636,'November 2015',8279.41,2035.3,2250.3,6281.8,12563.6,18845.4,'November','2015',150,'2017-06-26','Crevrand Kaondo',NULL,0),
(2157,31816.8,35317.1,'November 2015',1647.5,405,2250.3,1250,2500,3750,'November','2015',115,'2017-06-26','Crevrand Kaondo',NULL,0),
(2158,30964.5,34464.8,'November 2015',1647.5,405,2250.3,1250,2500,3750,'November','2015',113,'2017-06-26','Crevrand Kaondo',NULL,0),
(2159,33557.6,37157.9,'November 2015',1779.3,437.4,2250.3,1350,2700,4050,'November','2015',114,'2017-06-26','Crevrand Kaondo',NULL,0),
(2160,18130,19800,'November 2015',1252.1,307.8,720,950,1900,2850,'November','2015',171,'2017-06-26','Crevrand Kaondo',NULL,0),
(2161,19556.8,21795.4,'November 2015',1252.1,307.8,1288.64,950,1900,2850,'November','2015',116,'2017-06-26','Crevrand Kaondo',NULL,0),
(2162,20880.5,23686.4,'November 2015',1252.1,307.8,1855.91,950,1900,2850,'November','2015',88,'2017-06-26','Crevrand Kaondo',NULL,0),
(2163,21410,24800,'November 2015',1581.6,388.8,2190,1200,2400,3600,'November','2015',89,'2017-06-26','Crevrand Kaondo',NULL,0),
(2164,30254.2,33754.6,'November 2015',1647.5,405,2250.3,1250,2500,3750,'November','2015',90,'2017-06-26','Crevrand Kaondo',NULL,0),
(2165,21410,24800,'November 2015',1581.6,388.8,2190,1200,2400,3600,'November','2015',91,'2017-06-26','Crevrand Kaondo',NULL,0),
(2166,21410,24800,'November 2015',1581.6,388.8,2190,1200,2400,3600,'November','2015',118,'2017-06-26','Crevrand Kaondo',NULL,0),
(2167,18130,19800,'November 2015',1252.1,307.8,720,950,1900,2850,'November','2015',147,'2017-06-26','Crevrand Kaondo',NULL,0),
(2168,21410,24800,'November 2015',1581.6,388.8,2190,1200,2400,3600,'November','2015',119,'2017-06-26','Crevrand Kaondo',NULL,0),
(2169,30554.2,34004.6,'November 2015',1581.6,388.8,2250.3,1200,2400,3600,'November','2015',121,'2017-06-26','Crevrand Kaondo',NULL,0),
(2170,21410,24800,'November 2015',1581.6,388.8,2190,1200,2400,3600,'November','2015',122,'2017-06-26','Crevrand Kaondo',NULL,0),
(2171,28304.2,31754.6,'November 2015',1581.6,388.8,2250.3,1200,2400,3600,'November','2015',126,'2017-06-26','Crevrand Kaondo',NULL,0),
(2172,24008.8,27459.1,'November 2015',1581.6,388.8,2250.3,1200,2400,3600,'November','2015',172,'2017-06-26','Crevrand Kaondo',NULL,0),
(2173,24622.4,28072.7,'November 2015',1581.6,388.8,2250.3,1200,2400,3600,'November','2015',128,'2017-06-26','Crevrand Kaondo',NULL,0),
(2174,22986.1,26436.4,'November 2015',1581.6,388.8,2250.3,1200,2400,3600,'November','2015',127,'2017-06-26','Crevrand Kaondo',NULL,0),
(2175,17263.6,18545.4,'November 2015',988.5,243,531.818,750,1500,2250,'November','2015',129,'2017-06-26','Crevrand Kaondo',NULL,0),
(2176,25708.8,29209.1,'November 2015',1647.5,405,2250.3,1250,2500,3750,'November','2015',34,'2017-06-26','Crevrand Kaondo',NULL,0),
(2177,36595.1,40345.4,'November 2015',1977,486,2250.3,1500,3000,4500,'November','2015',22,'2017-06-26','Crevrand Kaondo',NULL,0),
(2178,21410,24800,'November 2015',1581.6,388.8,2190,1200,2400,3600,'November','2015',123,'2017-06-26','Crevrand Kaondo',NULL,0),
(2179,19973.6,22390.9,'November 2015',1252.1,307.8,1467.27,950,1900,2850,'November','2015',94,'2017-06-26','Crevrand Kaondo',NULL,0),
(2180,27895.2,31345.4,'November 2015',1581.6,388.8,2250.3,1200,2400,3600,'November','2015',131,'2017-06-26','Crevrand Kaondo',NULL,0),
(2181,53463.3,56913.6,'November 2015',1581.6,388.8,2250.3,1200,2400,3600,'November','2015',132,'2017-06-26','Crevrand Kaondo',NULL,0),
(2182,21410,24800,'December 2015',1581.6,388.8,2190,1200,2400,3600,'December','2015',99,'2017-06-26','Crevrand Kaondo',NULL,0),
(2183,21410,24800,'December 2015',1581.6,388.8,2190,1200,2400,3600,'December','2015',100,'2017-06-26','Crevrand Kaondo',NULL,0),
(2184,22299.7,25800,'December 2015',1647.5,405,2250.3,1250,2500,3750,'December','2015',101,'2017-06-26','Crevrand Kaondo',NULL,0),
(2185,21410,24800,'December 2015',1581.6,388.8,2190,1200,2400,3600,'December','2015',102,'2017-06-26','Crevrand Kaondo',NULL,0),
(2186,21410,24800,'December 2015',1581.6,388.8,2190,1200,2400,3600,'December','2015',103,'2017-06-26','Crevrand Kaondo',NULL,0),
(2187,19300,21500,'December 2015',1318,324,1200,1000,2000,3000,'December','2015',104,'2017-06-26','Crevrand Kaondo',NULL,0),
(2188,14250,15000,'December 2015',988.5,243,0,750,1500,2250,'December','2015',183,'2017-06-26','Crevrand Kaondo',NULL,0),
(2189,15000,15000,'December 2015',0,243,0,0,0,0,'December','2015',151,'2017-06-26','Crevrand Kaondo',NULL,0),
(2190,22049.7,25500,'December 2015',1581.6,388.8,2250.3,1200,2400,3600,'December','2015',152,'2017-06-26','Crevrand Kaondo',NULL,0),
(2191,19300,21500,'December 2015',1318,324,1200,1000,2000,3000,'December','2015',153,'2017-06-26','Crevrand Kaondo',NULL,0),
(2192,21410,24800,'December 2015',1581.6,388.8,2190,1200,2400,3600,'December','2015',105,'2017-06-26','Crevrand Kaondo',NULL,0),
(2193,21410,24800,'December 2015',1581.6,388.8,2190,1200,2400,3600,'December','2015',39,'2017-06-26','Crevrand Kaondo',NULL,0),
(2194,97499.7,105000,'December 2015',6919.5,1701,2250.3,5250,10500,15750,'December','2015',40,'2017-06-26','Crevrand Kaondo',NULL,0),
(2195,36699.7,41000,'December 2015',2701.9,664.2,2250.3,2050,4100,6150,'December','2015',92,'2017-06-26','Crevrand Kaondo',NULL,0),
(2196,40139.7,51200,'December 2015',3374.08,829.44,2250.3,2560,5120,7680,'December','2015',85,'2017-06-26','Crevrand Kaondo',NULL,0),
(2197,46389.7,51200,'December 2015',3374.08,829.44,2250.3,2560,5120,7680,'December','2015',86,'2017-06-26','Crevrand Kaondo',NULL,0),
(2198,28949.7,32800,'December 2015',2108.8,518.4,2250.3,1600,3200,4800,'December','2015',108,'2017-06-26','Crevrand Kaondo',NULL,0),
(2199,28949.7,32800,'December 2015',2108.8,518.4,2250.3,1600,3200,4800,'December','2015',111,'2017-06-26','Crevrand Kaondo',NULL,0),
(2200,34799.7,39000,'December 2015',2570.1,631.8,2250.3,1950,3900,5850,'December','2015',112,'2017-06-26','Crevrand Kaondo',NULL,0),
(2201,117104,125636,'December 2015',8279.41,2035.3,2250.3,6281.8,12563.6,18845.4,'December','2015',150,'2017-06-26','Crevrand Kaondo',NULL,0),
(2202,31887.8,35388.1,'December 2015',1647.5,405,2250.3,1250,2500,3750,'December','2015',115,'2017-06-26','Crevrand Kaondo',NULL,0),
(2203,32100.8,35601.1,'December 2015',1647.5,405,2250.3,1250,2500,3750,'December','2015',113,'2017-06-26','Crevrand Kaondo',NULL,0),
(2204,35705.4,39305.7,'December 2015',1779.3,437.4,2250.3,1350,2700,4050,'December','2015',114,'2017-06-26','Crevrand Kaondo',NULL,0),
(2205,18130,19800,'December 2015',1252.1,307.8,720,950,1900,2850,'December','2015',171,'2017-06-26','Crevrand Kaondo',NULL,0),
(2206,18650,20500,'December 2015',1252.1,307.8,900,950,1900,2850,'December','2015',116,'2017-06-26','Crevrand Kaondo',NULL,0),
(2207,18130,19800,'December 2015',1252.1,307.8,720,950,1900,2850,'December','2015',171,'2017-06-26','Crevrand Kaondo',NULL,0),
(2208,18130,19800,'December 2015',1252.1,307.8,720,950,1900,2850,'December','2015',88,'2017-06-26','Crevrand Kaondo',NULL,0),
(2209,18650,20500,'December 2015',1252.1,307.8,900,950,1900,2850,'December','2015',116,'2017-06-26','Crevrand Kaondo',NULL,0),
(2210,21410,24800,'December 2015',1581.6,388.8,2190,1200,2400,3600,'December','2015',89,'2017-06-26','Crevrand Kaondo',NULL,0),
(2211,28762.8,32263.1,'December 2015',1647.5,405,2250.3,1250,2500,3750,'December','2015',90,'2017-06-26','Crevrand Kaondo',NULL,0),
(2212,21410,24800,'December 2015',1581.6,388.8,2190,1200,2400,3600,'December','2015',91,'2017-06-26','Crevrand Kaondo',NULL,0),
(2213,21410,24800,'December 2015',1581.6,388.8,2190,1200,2400,3600,'December','2015',118,'2017-06-26','Crevrand Kaondo',NULL,0),
(2214,18130,19800,'December 2015',1252.1,307.8,720,950,1900,2850,'December','2015',147,'2017-06-26','Crevrand Kaondo',NULL,0),
(2215,21410,24800,'December 2015',1581.6,388.8,2190,1200,2400,3600,'December','2015',119,'2017-06-26','Crevrand Kaondo',NULL,0),
(2216,30213.3,33663.6,'December 2015',1581.6,388.8,2250.3,1200,2400,3600,'December','2015',121,'2017-06-26','Crevrand Kaondo',NULL,0),
(2217,21410,24800,'December 2015',1581.6,388.8,2190,1200,2400,3600,'December','2015',122,'2017-06-26','Crevrand Kaondo',NULL,0),
(2218,29258.8,32709.1,'December 2015',1581.6,388.8,2250.3,1200,2400,3600,'December','2015',126,'2017-06-26','Crevrand Kaondo',NULL,0),
(2219,21410,24800,'December 2015',1581.6,388.8,2190,1200,2400,3600,'December','2015',172,'2017-06-26','Crevrand Kaondo',NULL,0),
(2220,21410,24800,'December 2015',1581.6,388.8,2190,1200,2400,3600,'December','2015',128,'2017-06-26','Crevrand Kaondo',NULL,0),
(2221,21410,24800,'December 2015',1581.6,388.8,2190,1200,2400,3600,'December','2015',127,'2017-06-26','Crevrand Kaondo',NULL,0),
(2222,15525,16500,'December 2015',988.5,243,225,750,1500,2250,'December','2015',129,'2017-06-26','Crevrand Kaondo',NULL,0),
(2223,22299.7,25800,'December 2015',1647.5,405,2250.3,1250,2500,3750,'December','2015',34,'2017-06-26','Crevrand Kaondo',NULL,0),
(2224,35316.8,39067.1,'December 2015',1977,486,2250.3,1500,3000,4500,'December','2015',22,'2017-06-26','Crevrand Kaondo',NULL,0),
(2225,21410,24800,'December 2015',1581.6,388.8,2190,1200,2400,3600,'December','2015',123,'2017-06-26','Crevrand Kaondo',NULL,0),
(2226,18130,19800,'December 2015',1252.1,307.8,720,950,1900,2850,'December','2015',94,'2017-06-26','Crevrand Kaondo',NULL,0),
(2227,29258.8,32709.1,'December 2015',1581.6,388.8,2250.3,1200,2400,3600,'December','2015',131,'2017-06-26','Crevrand Kaondo',NULL,0),
(2228,29258.8,32709.1,'December 2015',1581.6,388.8,2250.3,1200,2400,3600,'December','2015',132,'2017-06-26','Crevrand Kaondo',NULL,0),
(2229,40932.9,44933.2,'December 2015',2306.5,567,2250.3,1750,3500,5250,'December','2015',149,'2017-06-26','Crevrand Kaondo',NULL,0),
(2230,40843.4,44843.8,'December 2015',2306.5,567,2250.3,1750,3500,5250,'December','2015',95,'2017-06-26','Crevrand Kaondo',NULL,0),
(2231,30460.8,34211.1,'December 2015',1977,486,2250.3,1500,3000,4500,'December','2015',96,'2017-06-26','Crevrand Kaondo',NULL,0),
(2232,42036.6,46036.9,'December 2015',2306.5,567,2250.3,1750,3500,5250,'December','2015',97,'2017-06-26','Crevrand Kaondo',NULL,0),
(2233,29500,35000,'January 2016',2306.5,567,3750,1750,3500,5250,'January','2016',149,'2017-06-26','Crevrand Kaondo',NULL,0),
(2235,29500,35000,'February 2016',2306.5,567,3750,1750,3500,5250,'February','2016',149,'2017-06-26','Crevrand Kaondo',NULL,0),
(2236,44464.5,56377.8,'February 2016',2306.5,567,10163.3,1750,3500,5250,'February','2016',97,'2017-06-26','Crevrand Kaondo',NULL,0),
(2237,29500,35000,'March 2016',2306.5,567,3750,1750,3500,5250,'March','2016',149,'2017-06-26','Crevrand Kaondo',NULL,0),
(2238,32840.9,39772.7,'March 2016',2306.5,567,5181.82,1750,3500,5250,'March','2016',97,'2017-06-26','Crevrand Kaondo',NULL,0),
(2240,29500,35000,'March 2016',2306.5,567,3750,1750,3500,5250,'March','2016',149,'2017-06-26','Crevrand Kaondo',NULL,0),
(2241,32409.4,39156.2,'April 2016',2306.5,567,4996.88,1750,3500,5250,'April','2016',149,'2017-06-27','Crevrand Kaondo',NULL,0),
(2242,32984.3,39620.4,'April 2016',1977,486,5136.13,1500,3000,4500,'April','2016',96,'2017-06-27','Crevrand Kaondo',NULL,0),
(2243,37017,45738.6,'April 2016',2306.5,567,6971.58,1750,3500,5250,'April','2016',97,'2017-06-27','Crevrand Kaondo',NULL,0),
(2244,37017,45738.6,'April 2016',2306.5,567,6971.58,1750,3500,5250,'April','2016',95,'2017-06-27','Crevrand Kaondo',NULL,0),
(2245,29500,35000,'May 2016',2306.5,567,3750,1750,3500,5250,'May','2016',149,'2017-06-27','Crevrand Kaondo',NULL,0),
(2246,34929,42755.7,'May 2016',2306.5,567,6076.7,1750,3500,5250,'May','2016',97,'2017-06-27','Crevrand Kaondo',NULL,0),
(2247,36912.6,45589.5,'June 2016',2306.5,567,6926.85,1750,3500,5250,'June','2016',149,'2017-06-27','Crevrand Kaondo',NULL,0),
(2248,32214.5,38877.8,'June 2016',2306.5,567,4913.35,1750,3500,5250,'June','2016',97,'2017-06-27','Crevrand Kaondo',NULL,0),
(2251,34365.2,41950.3,'July 2016',2306.5,567,5835.08,1750,3500,5250,'July','2016',149,'2017-06-27','Crevrand Kaondo',NULL,0),
(2252,29500,35000,'January 2016',2306.5,567,3750,1750,3500,5250,'January','2016',149,'2017-06-27','Crevrand Kaondo',NULL,0),
(2253,54054.5,71363.6,'June 2017',3492.7,858.6,14659.1,2650,5300,7950,'June','2017',22,'2017-06-29','Crevrand Kaondo',NULL,0),
(2254,24204.5,26363.6,'June 2017',1318,324,1159.09,1000,2000,3000,'June','2017',1,'2017-06-29','Crevrand Kaondo',NULL,0),
(2255,36560,45800,'June 2017',2965.5,729,6990,2250,4500,6750,'June','2017',30,'2017-06-29','Crevrand Kaondo',NULL,0),
(2256,42054.5,53863.6,'June 2017',3163.2,777.6,9409.09,2400,4800,7200,'June','2017',39,'2017-06-29','Crevrand Kaondo',NULL,0),
(2257,45750,60000,'June 2017',3954,972,11250,3000,6000,9000,'June','2017',70,'2017-06-29','Crevrand Kaondo',NULL,0),
(2258,45750,60000,'June 2017',3954,972,11250,3000,6000,9000,'June','2017',71,'2017-06-29','Crevrand Kaondo',NULL,0),
(2259,29500,35000,'June 2017',2306.5,567,3750,1750,3500,5250,'June','2017',74,'2017-06-29','Crevrand Kaondo','2017-07-02 02:12:45',0),
(2260,27750,30000,'June 2017',0,486,2250,0,0,0,'June','2017',76,'2017-06-29','Crevrand Kaondo',NULL,0),
(2261,29181.8,32045.4,'June 2017',0,453.6,2863.64,0,0,0,'June','2017',80,'2017-06-29','Crevrand Kaondo',NULL,0),
(2262,31250,35000,'June 2017',0,567,3750,0,0,0,'June','2017',82,'2017-06-29','Crevrand Kaondo',NULL,0),
(2263,25363.6,26590.9,'June 2017',0,372.6,1227.27,0,0,0,'June','2017',83,'2017-06-29','Crevrand Kaondo',NULL,0),
(2264,25363.6,26590.9,'June 2017',0,372.6,1227.27,0,0,0,'June','2017',84,'2017-06-29','Crevrand Kaondo',NULL,0),
(2265,36055,54700,'June 2017',3604.73,886.14,9660,2735,5470,8205,'June','2017',85,'2017-06-29','Crevrand Kaondo',NULL,0),
(2266,36468.8,44812.5,'June 2017',2174.7,534.6,6693.75,1650,3300,4950,'June','2017',87,'2017-06-29','Crevrand Kaondo',NULL,0),
(2267,32531.2,39187.5,'June 2017',2174.7,534.6,5006.25,1650,3300,4950,'June','2017',88,'2017-06-29','Crevrand Kaondo',NULL,0),
(2268,39481.8,49795.4,'June 2017',2800.75,688.5,8188.63,2125,4250,6375,'June','2017',89,'2017-06-29','Crevrand Kaondo',NULL,0),
(2269,35425,44000,'June 2017',2800.75,688.5,6450,2125,4250,6375,'June','2017',90,'2017-06-29','Crevrand Kaondo',NULL,0),
(2270,47908.5,62619.3,'June 2017',3525.65,866.7,12035.8,2675,5350,8025,'June','2017',92,'2017-06-29','Crevrand Kaondo',NULL,0),
(2271,36617,45488.6,'June 2017',2603.05,639.9,6896.59,1975,3950,5925,'June','2017',94,'2017-06-29','Crevrand Kaondo',NULL,0),
(2272,34720.2,42457.4,'June 2017',2306.5,567,5987.22,1750,3500,5250,'June','2017',95,'2017-06-29','Crevrand Kaondo','2017-07-02 02:23:08',0),
(2273,30724.4,36392.1,'June 2017',1977,486,4167.62,1500,3000,4500,'June','2017',96,'2017-06-29','Crevrand Kaondo','2017-07-02 02:20:24',0),
(2274,32562.5,39375,'June 2017',2306.5,567,5062.5,1750,3500,5250,'June','2017',97,'2017-06-29','Crevrand Kaondo','2017-07-02 02:15:23',0),
(2275,35988.6,44590.9,'June 2017',2603.05,639.9,6627.27,1975,3950,5925,'June','2017',99,'2017-06-29','Crevrand Kaondo',NULL,0),
(2276,46843.1,60204.5,'June 2017',2701.9,664.2,11311.3,2050,4100,6150,'June','2017',100,'2017-06-29','Crevrand Kaondo',NULL,0),
(2277,42186.4,53659.1,'June 2017',2800.75,688.5,9347.73,2125,4250,6375,'June','2017',101,'2017-06-29','Crevrand Kaondo',NULL,0),
(2278,47600,61500,'June 2017',2899.6,712.8,11700,2200,4400,6600,'June','2017',102,'2017-06-29','Crevrand Kaondo',NULL,0),
(2279,66972.7,89318.2,'June 2017',3031.4,745.2,20045.5,2300,4600,6900,'June','2017',103,'2017-06-29','Crevrand Kaondo',NULL,0),
(2280,27781.8,32045.4,'June 2017',1845.2,453.6,2863.64,1400,2800,4200,'June','2017',104,'2017-06-29','Crevrand Kaondo',NULL,0),
(2281,31350,37500,'June 2017',2174.7,534.6,4500,1650,3300,4950,'June','2017',105,'2017-06-29','Crevrand Kaondo',NULL,0),
(2282,24213.6,26590.9,'June 2017',1515.7,372.6,1227.27,1150,2300,3450,'June','2017',106,'2017-06-29','Crevrand Kaondo',NULL,0),
(2283,37950,48000,'June 2017',3163.2,777.6,7650,2400,4800,7200,'June','2017',107,'2017-06-29','Crevrand Kaondo',NULL,0),
(2284,40460,51800,'June 2017',3360.9,826.2,8790,2550,5100,7650,'June','2017',108,'2017-06-29','Crevrand Kaondo',NULL,0),
(2285,43030,51200,'June 2017',3374.08,829.44,5610,2560,5120,7680,'June','2017',109,'2017-06-29','Crevrand Kaondo','2017-08-24 21:49:43',0),
(2286,42250,50000,'June 2017',3295,810,5250,2500,5000,7500,'June','2017',110,'2017-06-29','Crevrand Kaondo','2017-08-24 21:56:13',0),
(2287,39160,49800,'June 2017',3229.1,793.8,8190,2450,4900,7350,'June','2017',111,'2017-06-29','Crevrand Kaondo',NULL,0),
(2288,40550,52000,'June 2017',3426.8,842.4,8850,2600,5200,7800,'June','2017',112,'2017-06-29','Crevrand Kaondo',NULL,0),
(2289,35570.7,43565.3,'June 2017',2207.65,542.7,6319.6,1675,3350,5025,'June','2017',113,'2017-06-29','Crevrand Kaondo',NULL,0),
(2290,40361.9,51017.1,'June 2017',2767.8,680.4,8555.12,2100,4200,6300,'June','2017',114,'2017-06-29','Crevrand Kaondo',NULL,0),
(2291,43750,56000,'June 2017',2899.6,712.8,10050,2200,4400,6600,'June','2017',115,'2017-06-29','Crevrand Kaondo',NULL,0),
(2292,24050,26500,'June 2017',1647.5,405,1200,1250,2500,3750,'June','2017',116,'2017-06-29','Crevrand Kaondo',NULL,0),
(2293,33384.4,40406.2,'June 2017',2174.7,534.6,5371.88,1650,3300,4950,'June','2017',117,'2017-06-29','Crevrand Kaondo',NULL,0),
(2294,39481.8,49795.4,'June 2017',2800.75,688.5,8188.63,2125,4250,6375,'June','2017',118,'2017-06-29','Crevrand Kaondo',NULL,0),
(2295,35425,44000,'June 2017',2800.75,688.5,6450,2125,4250,6375,'June','2017',119,'2017-06-29','Crevrand Kaondo',NULL,0),
(2296,34565.6,42093.8,'June 2017',2174.7,534.6,5878.12,1650,3300,4950,'June','2017',120,'2017-06-29','Crevrand Kaondo',NULL,0),
(2297,51083,66261.4,'June 2017',2701.9,664.2,13128.4,2050,4100,6150,'June','2017',121,'2017-06-29','Crevrand Kaondo',NULL,0),
(2298,38337.5,47875,'June 2017',2537.15,623.7,7612.5,1925,3850,5775,'June','2017',122,'2017-06-29','Crevrand Kaondo',NULL,0),
(2299,57874.4,76142,'June 2017',2866.65,704.7,16092.6,2175,4350,6525,'June','2017',126,'2017-06-29','Crevrand Kaondo',NULL,0),
(2300,35831.5,44366.5,'June 2017',2603.05,639.9,6559.94,1975,3950,5925,'June','2017',127,'2017-06-29','Crevrand Kaondo',NULL,0),
(2301,40230.4,50650.6,'June 2017',2603.05,639.9,8445.17,1975,3950,5925,'June','2017',128,'2017-06-29','Crevrand Kaondo',NULL,0),
(2302,56350,74000,'June 2017',2899.6,712.8,15450,2200,4400,6600,'June','2017',129,'2017-06-29','Crevrand Kaondo',NULL,0),
(2303,41718.2,53204.6,'June 2017',2998.45,737.1,9211.37,2275,4550,6825,'June','2017',131,'2017-06-29','Crevrand Kaondo',NULL,0),
(2304,57116.5,74880.7,'June 2017',2701.9,664.2,15714.2,2050,4100,6150,'June','2017',132,'2017-06-29','Crevrand Kaondo',NULL,0),
(2305,31755.7,38579.6,'June 2017',0,567,4823.87,0,0,0,'June','2017',133,'2017-06-29','Crevrand Kaondo','2017-07-01 17:42:52',0),
(2306,24250,25000,'June 2017',0,405,750,0,0,0,'June','2017',134,'2017-06-29','Crevrand Kaondo',NULL,0),
(2307,24250,25000,'June 2017',0,405,750,0,0,0,'June','2017',135,'2017-06-29','Crevrand Kaondo',NULL,0),
(2308,24250,25000,'June 2017',0,405,750,0,0,0,'June','2017',136,'2017-06-29','Crevrand Kaondo',NULL,0),
(2309,22550,30000,'June 2017',0,486,2250,0,0,0,'June','2017',137,'2017-06-29','Crevrand Kaondo',NULL,0),
(2310,24250,25000,'June 2017',0,405,750,0,0,0,'June','2017',138,'2017-06-29','Crevrand Kaondo',NULL,0),
(2311,24250,25000,'June 2017',0,405,750,0,0,0,'June','2017',139,'2017-06-29','Crevrand Kaondo',NULL,0),
(2312,20000,20000,'June 2017',0,324,0,0,0,0,'June','2017',140,'2017-06-29','Crevrand Kaondo',NULL,0),
(2313,20000,20000,'June 2017',0,324,0,0,0,0,'June','2017',142,'2017-06-29','Crevrand Kaondo',NULL,0),
(2314,25750,30000,'June 2017',0,486,2250,0,0,0,'June','2017',144,'2017-06-29','Crevrand Kaondo',NULL,0),
(2315,25750,30000,'June 2017',0,486,2250,0,0,0,'June','2017',145,'2017-06-29','Crevrand Kaondo',NULL,0),
(2316,32750,40000,'June 2017',2636,648,5250,2000,4000,6000,'June','2017',146,'2017-06-29','Crevrand Kaondo',NULL,0),
(2317,32175,39000,'June 2017',2471.25,607.5,4950,1875,3750,5625,'June','2017',147,'2017-06-29','Crevrand Kaondo',NULL,0),
(2318,26160,29800,'June 2017',1911.1,469.8,2190,1450,2900,4350,'June','2017',172,'2017-06-29','Crevrand Kaondo',NULL,0),
(2319,31950,36000,'June 2017',0,583.2,4050,0,0,0,'June','2017',184,'2017-06-29','Crevrand Kaondo',NULL,0),
(2320,27300,31500,'June 2017',1977,486,2700,1500,3000,4500,'June','2017',185,'2017-06-29','Crevrand Kaondo',NULL,0),
(2321,27300,31500,'June 2017',1977,486,2700,1500,3000,4500,'June','2017',186,'2017-06-29','Crevrand Kaondo',NULL,0),
(2322,27300,31500,'June 2017',1977,486,2700,1500,3000,4500,'June','2017',187,'2017-06-29','Crevrand Kaondo',NULL,0),
(2323,32750,40000,'January 2016',2636,648,5250,2000,4000,6000,'January','2016',146,'2017-06-29','Crevrand Kaondo',NULL,0),
(2325,28604.5,32863.6,'June 2017',1515.7,372.6,3109.09,1150,2300,3450,'June','2017',194,'2017-07-04','Crevrand Kaondo',NULL,0),
(2326,39993.8,45562.5,'July 2017',2174.7,534.6,3918.75,1650,3300,4950,'July','2017',88,'2017-07-22','Crevrand Kaondo','2017-07-23 23:31:08',0),
(2327,73377.3,94681.8,'July 2017',3492.7,858.6,18654.5,2650,5300,7950,'July','2017',22,'2017-07-22','Crevrand Kaondo','2017-07-23 23:35:48',0),
(2328,34663.6,35590.9,'July 2017',0,405,927.273,0,0,0,'July','2017',84,'2017-07-22','Crevrand Kaondo','2017-07-23 23:25:59',0),
(2329,59000,73500,'July 2017',2899.6,712.8,12300,2200,4400,6600,'July','2017',102,'2017-07-22','Crevrand Kaondo','2017-07-23 23:26:33',0),
(2330,37571.4,42137.8,'July 2017',2207.65,542.7,2891.33,1675,3350,5025,'July','2017',113,'2017-07-22','Crevrand Kaondo','2017-07-23 23:30:23',0),
(2331,25000,25000,'July 2017',0,405,0,0,0,0,'July','2017',138,'2017-07-22','Crevrand Kaondo','2017-07-23 23:38:17',0),
(2332,49139.1,59927.3,'July 2017',3374.08,829.44,8228.18,2560,5120,7680,'July','2017',166,'2017-07-22','Crevrand Kaondo','2017-07-23 23:22:17',0),
(2333,38988.6,44590.9,'July 2017',2603.05,639.9,3627.27,1975,3950,5925,'July','2017',99,'2017-07-22','Crevrand Kaondo','2017-08-06 01:29:00',0),
(2334,37750,40000,'July 2017',0,648,2250,0,0,0,'July','2017',146,'2017-07-22','Crevrand Kaondo','2017-07-23 23:39:38',0),
(2335,40950,48000,'July 2017',3163.2,777.6,4650,2400,4800,7200,'July','2017',107,'2017-07-22','Crevrand Kaondo','2017-07-23 23:28:16',0),
(2336,43460,51800,'July 2017',3360.9,826.2,5790,2550,5100,7650,'July','2017',108,'2017-07-22','Crevrand Kaondo','2017-07-23 23:28:27',0),
(2337,45375,53250,'July 2017',2174.7,534.6,6225,1650,3300,4950,'July','2017',117,'2017-07-22','Crevrand Kaondo','2017-07-23 23:30:57',0),
(2338,37199.2,39213.1,'July 2017',0,405,2013.93,0,0,0,'July','2017',83,'2017-07-22','Crevrand Kaondo','2017-07-23 23:25:48',0),
(2339,153042,220450,'July 2017',14527.7,3571.29,56385,11022.5,22045,33067.5,'July','2017',155,'2017-07-22','Crevrand Kaondo','2017-07-23 23:19:54',0),
(2340,47890.9,57522.7,'July 2017',2800.75,688.5,7506.81,2125,4250,6375,'July','2017',89,'2017-07-22','Crevrand Kaondo','2017-07-23 23:31:19',0),
(2341,45473.6,54690.9,'July 2017',3374.08,829.44,6657.27,2560,5120,7680,'July','2017',167,'2017-07-22','Crevrand Kaondo','2017-07-23 23:22:26',0),
(2342,49412.2,59696,'July 2017',2800.75,688.5,8158.8,2125,4250,6375,'July','2017',90,'2017-07-22','Crevrand Kaondo','2017-07-23 23:31:37',0),
(2343,24250,25000,'July 2017',0,405,750,0,0,0,'July','2017',139,'2017-07-22','Crevrand Kaondo',NULL,0),
(2344,49139.1,59927.3,'July 2017',3374.08,829.44,8228.18,2560,5120,7680,'July','2017',164,'2017-07-22','Crevrand Kaondo','2017-07-23 23:21:54',0),
(2345,28000,30000,'July 2017',0,486,0,0,0,0,'July','2017',145,'2017-07-22','Crevrand Kaondo','2017-07-23 23:37:44',0),
(2346,36467.3,40667.6,'July 2017',2306.5,567,2450.28,1750,3500,5250,'July','2017',97,'2017-07-22','Crevrand Kaondo','2017-07-23 23:25:13',0),
(2347,30000,30000,'July 2017',0,486,0,0,0,0,'July','2017',1,'2017-07-22','Crevrand Kaondo','2017-07-23 23:39:49',0),
(2348,35550,39000,'July 2017',1977,486,1950,1500,3000,4500,'July','2017',186,'2017-07-22','Crevrand Kaondo','2017-07-23 23:35:38',0),
(2349,43834.1,51727.3,'July 2017',2800.75,688.5,5768.18,2125,4250,6375,'July','2017',118,'2017-07-22','Crevrand Kaondo','2017-07-23 23:32:03',0),
(2350,44525,53500,'July 2017',3525.65,866.7,6300,2675,5350,8025,'July','2017',92,'2017-07-22','Crevrand Kaondo','2017-07-23 23:28:44',0),
(2351,43834.1,51727.3,'July 2017',2800.75,688.5,5768.18,2125,4250,6375,'July','2017',119,'2017-07-22','Crevrand Kaondo','2017-07-23 23:32:16',0),
(2352,34118.2,36954.6,'July 2017',1977,486,1336.36,1500,3000,4500,'July','2017',185,'2017-07-22','Crevrand Kaondo','2017-07-23 23:32:26',0),
(2353,38430.7,43529.6,'July 2017',2359.22,579.96,3308.86,1790,3580,5370,'July','2017',168,'2017-07-22','Crevrand Kaondo','2017-07-23 23:22:35',0),
(2354,32093.2,34227.3,'July 2017',1977,486,634.091,1500,3000,4500,'July','2017',187,'2017-07-22','Crevrand Kaondo','2017-07-23 23:33:10',0),
(2355,49139.1,59927.3,'July 2017',3374.08,829.44,8228.18,2560,5120,7680,'July','2017',162,'2017-07-22','Crevrand Kaondo','2017-07-23 23:21:22',0),
(2356,58975,73250,'July 2017',2701.9,664.2,12225,2050,4100,6150,'July','2017',121,'2017-07-22','Crevrand Kaondo','2017-07-23 23:33:24',0),
(2357,42160,49800,'July 2017',3229.1,793.8,5190,2450,4900,7350,'July','2017',111,'2017-07-22','Crevrand Kaondo','2017-07-23 23:28:54',0),
(2358,63540.9,79772.7,'July 2017',2701.9,664.2,14181.8,2050,4100,6150,'July','2017',100,'2017-07-22','Crevrand Kaondo','2017-07-23 23:26:08',0),
(2359,47917.3,58181.8,'July 2017',3374.08,829.44,7704.55,2560,5120,7680,'July','2017',163,'2017-07-22','Crevrand Kaondo','2017-07-23 23:21:44',0),
(2360,44912.5,53375,'July 2017',2899.6,712.8,6262.5,2200,4400,6600,'July','2017',115,'2017-07-22','Crevrand Kaondo','2017-07-23 23:30:44',0),
(2361,25000,25000,'July 2017',0,405,0,0,0,0,'July','2017',136,'2017-07-22','Crevrand Kaondo','2017-07-23 23:37:55',0),
(2362,48750,60000,'July 2017',3954,972,8250,3000,6000,9000,'July','2017',70,'2017-07-22','Crevrand Kaondo','2017-07-23 23:29:16',0),
(2363,45467.7,47437.5,'July 2017',2537.15,623.7,44.8125,1925,3850,5775,'July','2017',122,'2017-07-22','Crevrand Kaondo','2017-07-23 22:29:06',0),
(2364,30000,30000,'July 2017',0,486,0,0,0,0,'July','2017',76,'2017-07-22','Crevrand Kaondo','2017-07-23 23:38:28',0),
(2365,41129.5,47863.6,'July 2017',2800.75,688.5,4609.09,2125,4250,6375,'July','2017',101,'2017-07-22','Crevrand Kaondo','2017-07-23 23:26:22',0),
(2366,47725.6,57358,'July 2017',2866.65,704.7,7457.4,2175,4350,6525,'July','2017',126,'2017-07-22','Crevrand Kaondo','2017-07-23 23:33:40',0),
(2367,69698.3,88926.1,'July 2017',3031.4,745.2,16927.8,2300,4600,6900,'July','2017',103,'2017-07-22','Crevrand Kaondo','2017-07-23 23:26:44',0),
(2368,20000,20000,'July 2017',0,324,0,0,0,0,'July','2017',140,'2017-07-22','Crevrand Kaondo',NULL,0),
(2369,46695.5,56436.4,'July 2017',3374.08,829.44,7180.91,2560,5120,7680,'July','2017',159,'2017-07-22','Crevrand Kaondo','2017-07-23 23:20:43',0),
(2370,38988.6,44590.9,'July 2017',2603.05,639.9,3627.27,1975,3950,5925,'July','2017',127,'2017-07-22','Crevrand Kaondo','2017-07-23 23:33:51',0),
(2371,30338.6,32045.4,'July 2017',1845.2,453.6,306.818,1400,2800,4200,'July','2017',104,'2017-07-22','Crevrand Kaondo','2017-07-23 23:26:52',0),
(2372,64695,83250,'July 2017',4388.94,1078.92,15225,3330,6660,9990,'July','2017',156,'2017-07-22','Crevrand Kaondo','2017-07-23 23:20:07',0),
(2373,34854.5,35863.6,'July 2017',0,453.6,1009.09,0,0,0,'July','2017',80,'2017-07-22','Crevrand Kaondo','2017-07-23 23:27:05',0),
(2374,51990,64000,'July 2017',3374.08,829.44,9450,2560,5120,7680,'July','2017',157,'2017-07-22','Crevrand Kaondo','2017-07-23 23:20:22',0),
(2375,35618.2,36954.6,'July 2017',0,486,1336.36,0,0,0,'July','2017',130,'2017-07-22','Crevrand Kaondo','2017-07-23 23:35:30',0),
(2376,45867.6,54596.6,'July 2017',2767.8,680.4,6628.98,2100,4200,6300,'July','2017',114,'2017-07-22','Crevrand Kaondo','2017-07-23 23:30:31',0),
(2377,48750,60000,'July 2017',3954,972,8250,3000,6000,9000,'July','2017',71,'2017-07-22','Crevrand Kaondo','2017-07-23 23:29:26',0),
(2378,71687.5,91625,'July 2017',2899.6,712.8,17737.5,2200,4400,6600,'July','2017',129,'2017-07-22','Crevrand Kaondo','2017-07-23 23:34:26',0),
(2379,50360.9,61672.7,'July 2017',3374.08,829.44,8751.81,2560,5120,7680,'July','2017',161,'2017-07-22','Crevrand Kaondo','2017-07-23 23:21:13',0),
(2380,39600,45000,'July 2017',2174.7,534.6,3750,1650,3300,4950,'July','2017',87,'2017-07-22','Crevrand Kaondo','2017-07-23 23:31:52',0),
(2381,37720.2,42457.4,'July 2017',2306.5,567,2987.22,1750,3500,5250,'July','2017',74,'2017-07-22','Crevrand Kaondo','2017-07-23 23:24:21',0),
(2382,30000,30000,'July 2017',0,486,0,0,0,0,'July','2017',144,'2017-07-22','Crevrand Kaondo','2017-07-26 00:50:37',0),
(2383,40572.7,45818.2,'July 2017',1647.5,405,3995.46,1250,2500,3750,'July','2017',194,'2017-07-22','Crevrand Kaondo','2017-07-23 23:27:19',0),
(2384,43550,52000,'July 2017',3426.8,842.4,5850,2600,5200,7800,'July','2017',112,'2017-07-22','Crevrand Kaondo','2017-07-23 23:30:00',0),
(2385,44644.4,52670.5,'July 2017',2603.05,639.9,6051.15,1975,3950,5925,'July','2017',94,'2017-07-22','Crevrand Kaondo','2017-07-23 23:36:00',0),
(2386,45054.5,53863.6,'July 2017',3163.2,777.6,6409.09,2400,4800,7200,'July','2017',39,'2017-07-22','Crevrand Kaondo','2017-07-23 23:27:30',0),
(2387,34250,35000,'July 2017',0,567,750,0,0,0,'July','2017',82,'2017-07-22','Crevrand Kaondo','2017-07-23 23:38:04',0),
(2388,36258.5,40369.3,'July 2017',2306.5,567,2360.8,1750,3500,5250,'July','2017',95,'2017-07-22','Crevrand Kaondo','2017-07-23 23:24:43',0),
(2389,53314.1,65484.4,'July 2017',2998.45,737.1,9895.32,2275,4550,6825,'July','2017',131,'2017-07-22','Crevrand Kaondo','2017-07-23 23:36:14',0),
(2390,50360.9,61672.7,'July 2017',3374.08,829.44,8751.81,2560,5120,7680,'July','2017',165,'2017-07-22','Crevrand Kaondo','2017-07-23 23:22:07',0),
(2391,43030,51200,'July 2017',3374.08,829.44,5610,2560,5120,7680,'July','2017',160,'2017-07-22','Crevrand Kaondo','2017-07-23 23:21:03',0),
(2392,25000,25000,'July 2017',0,405,0,0,0,0,'July','2017',135,'2017-07-22','Crevrand Kaondo','2017-07-23 23:38:56',0),
(2393,37500,42000,'July 2017',2174.7,534.6,2850,1650,3300,4950,'July','2017',105,'2017-07-22','Crevrand Kaondo','2017-07-23 23:27:42',0),
(2394,50360.9,61672.7,'July 2017',3374.08,829.44,8751.81,2560,5120,7680,'July','2017',158,'2017-07-22','Crevrand Kaondo','2017-07-23 23:36:28',0),
(2395,25000,25000,'July 2017',0,405,0,0,0,0,'July','2017',134,'2017-07-22','Crevrand Kaondo','2017-07-23 23:39:06',0),
(2396,41987.2,52446,'July 2017',2603.05,639.9,5983.8,1975,3950,5925,'July','2017',128,'2017-07-22','Crevrand Kaondo','2017-07-24 00:12:52',0),
(2397,33724.4,36392.1,'July 2017',1977,486,1167.61,1500,3000,4500,'July','2017',96,'2017-07-22','Crevrand Kaondo','2017-07-23 23:24:54',0),
(2398,27522.7,28772.7,'July 2017',1647.5,405,0,1250,2500,3750,'July','2017',106,'2017-07-22','Crevrand Kaondo','2017-07-23 23:27:54',0),
(2399,42250,50000,'July 2017',3295,810,5250,2500,5000,7500,'July','2017',110,'2017-07-22','Crevrand Kaondo','2017-08-24 21:47:35',0),
(2400,31755.7,38579.6,'July 2017',0,567,1823.86,0,0,0,'July','2017',133,'2017-07-22','Crevrand Kaondo','2017-07-24 00:26:38',0),
(2401,41790,54700,'July 2017',0,886.14,6660,0,0,0,'July','2017',85,'2017-07-22','Crevrand Kaondo','2017-07-23 23:38:41',0),
(2402,43030,51200,'July 2017',3374.08,829.44,5610,2560,5120,7680,'July','2017',109,'2017-07-22','Crevrand Kaondo','2017-08-24 21:41:27',0),
(2403,24800,30000,'July 2017',0,486,0,0,0,0,'July','2017',137,'2017-07-22','Crevrand Kaondo','2017-07-23 23:39:17',0),
(2404,57507.4,71153.4,'July 2017',2701.9,664.2,11596,2050,4100,6150,'July','2017',205,'2017-07-25','Crevrand Kaondo','2017-07-28 22:31:22',0),
(2405,41031.2,47437.5,'July 2017',2537.15,623.7,4481.25,1925,3850,5775,'July','2017',122,'2017-07-25','Crevrand Kaondo',NULL,0),
(2406,29775,31500,'July 2017',1977,486,225,1500,3000,4500,'July','2017',204,'2017-07-25','Crevrand Kaondo',NULL,0),
(2407,35550,39000,'July 2017',1977,486,1950,1500,3000,4500,'July','2017',193,'2017-07-25','Crevrand Kaondo',NULL,0),
(2408,41031.2,47437.5,'July 2017',2537.15,623.7,4481.25,1925,3850,5775,'July','2017',122,'2017-07-25','Crevrand Kaondo',NULL,0),
(2409,30000,30000,'July 2017',0,486,0,0,0,0,'July','2017',198,'2017-07-26','Crevrand Kaondo',NULL,0),
(2410,20000,20000,'July 2017',0,324,0,0,0,0,'July','2017',190,'2017-08-03','Crevrand Kaondo',NULL,0),
(2411,20000,20000,'July 2017',0,324,0,0,0,0,'July','2017',188,'2017-08-03','Crevrand Kaondo',NULL,0),
(2412,20000,20000,'July 2017',0,324,0,0,0,0,'July','2017',191,'2017-08-03','Crevrand Kaondo',NULL,0),
(2413,20000,20000,'July 2017',0,324,0,0,0,0,'July','2017',192,'2017-08-03','Crevrand Kaondo',NULL,0),
(2414,20000,20000,'July 2017',0,324,0,0,0,0,'July','2017',195,'2017-08-03','Crevrand Kaondo',NULL,0),
(2416,25000,25000,'July 2017',0,405,0,0,0,0,'July','2017',199,'2017-08-03','Crevrand Kaondo',NULL,0),
(2418,20000,20000,'July 2017',0,324,0,0,0,0,'July','2017',200,'2017-08-03','Crevrand Kaondo',NULL,0),
(2419,20000,20000,'July 2017',0,324,0,0,0,0,'July','2017',201,'2017-08-03','Crevrand Kaondo',NULL,0),
(2420,20000,20000,'July 2017',0,324,0,0,0,0,'July','2017',206,'2017-08-03','Crevrand Kaondo',NULL,0),
(2421,23040,25600,'August 2017',3374.08,829.44,0,2560,5120,7680,'August','2017',160,'2017-08-07','Crevrand Kaondo','2017-08-14 03:24:11',0),
(2422,25000,25000,'August 2017',0,405,0,0,0,0,'August','2017',190,'2017-08-07','Crevrand Kaondo','2017-08-25 18:21:30',0),
(2423,25000,25000,'August 2017',0,405,0,0,0,0,'August','2017',188,'2017-08-07','Crevrand Kaondo','2017-08-25 18:20:33',0),
(2425,25000,25000,'August 2017',0,405,0,0,0,0,'August','2017',191,'2017-08-07','Crevrand Kaondo','2017-08-25 18:12:31',0),
(2426,25000,25000,'August 2017',0,405,0,0,0,0,'August','2017',192,'2017-08-07','Crevrand Kaondo','2017-08-25 18:21:46',0),
(2428,25000,25000,'August 2017',0,405,0,0,0,0,'August','2017',195,'2017-08-07','Crevrand Kaondo','2017-08-25 18:16:50',0),
(2429,25000,25000,'August 2017',0,405,0,0,0,0,'August','2017',200,'2017-08-07','Crevrand Kaondo','2017-08-25 18:11:28',0),
(2430,25000,25000,'August 2017',0,405,0,0,0,0,'August','2017',201,'2017-08-07','Crevrand Kaondo','2017-08-25 18:21:02',0),
(2431,25000,25000,'August 2017',0,405,0,0,0,0,'August','2017',206,'2017-08-07','Crevrand Kaondo','2017-08-25 18:18:39',0),
(2432,34950,36000,'August 2017',0,583.2,1050,0,0,0,'August','2017',199,'2017-08-07','Crevrand Kaondo','2017-08-27 23:05:20',0),
(2433,37750,40000,'August 2017',0,648,2250,0,0,0,'August','2017',146,'2017-08-07','Crevrand Kaondo',NULL,0),
(2435,30000,30000,'August 2017',0,486,0,0,0,0,'August','2017',76,'2017-08-08','Crevrand Kaondo',NULL,0),
(2436,34250,35000,'August 2017',0,567,750,0,0,0,'August','2017',82,'2017-08-08','Crevrand Kaondo',NULL,0),
(2437,41790,54700,'August 2017',0,886.14,6660,0,0,0,'August','2017',85,'2017-08-08','Crevrand Kaondo',NULL,0),
(2438,43030,51200,'August 2017',3374.08,829.44,5610,2560,5120,7680,'August','2017',109,'2017-08-08','Crevrand Kaondo','2017-08-24 21:34:15',0),
(2439,42250,50000,'August 2017',3295,810,5250,2500,5000,7500,'August','2017',110,'2017-08-08','Crevrand Kaondo','2017-08-24 21:43:42',0),
(2440,31755.7,38579.6,'August 2017',0,567,1823.86,0,0,0,'August','2017',133,'2017-08-08','Crevrand Kaondo','2017-08-26 00:55:49',0),
(2442,43030,51200,'August 2017',3374.08,829.44,5610,2560,5120,7680,'August','2017',166,'2017-08-20','Crevrand Kaondo',NULL,0),
(2443,97431.9,129546,'August 2017',3954,972,29113.7,3000,6000,9000,'August','2017',70,'2017-08-20','Crevrand Kaondo','2017-08-23 23:10:48',0),
(2444,40950,48000,'August 2017',3163.2,777.6,4650,2400,4800,7200,'August','2017',107,'2017-08-20','Crevrand Kaondo',NULL,0),
(2445,43012.5,49875,'August 2017',2174.7,534.6,5212.5,1650,3300,4950,'August','2017',117,'2017-08-20','Crevrand Kaondo',NULL,0),
(2446,153042,220450,'August 2017',14527.7,3571.29,56385,11022.5,22045,33067.5,'August','2017',155,'2017-08-20','Crevrand Kaondo',NULL,0),
(2447,46538.6,55590.9,'August 2017',2800.75,688.5,6927.27,2125,4250,6375,'August','2017',89,'2017-08-20','Crevrand Kaondo',NULL,0),
(2448,43030,51200,'August 2017',3374.08,829.44,5610,2560,5120,7680,'August','2017',167,'2017-08-20','Crevrand Kaondo',NULL,0),
(2449,46538.6,55590.9,'August 2017',2800.75,688.5,6927.27,2125,4250,6375,'August','2017',90,'2017-08-20','Crevrand Kaondo','2017-08-25 01:06:38',0),
(2450,25000,25000,'August 2017',0,405,0,0,0,0,'August','2017',139,'2017-08-20','Crevrand Kaondo',NULL,0),
(2451,43030,51200,'August 2017',3374.08,829.44,5610,2560,5120,7680,'August','2017',164,'2017-08-20','Crevrand Kaondo',NULL,0),
(2452,28000,30000,'August 2017',0,486,0,0,0,0,'August','2017',145,'2017-08-20','Crevrand Kaondo',NULL,0),
(2453,37511.4,42159.1,'August 2017',2306.5,567,2897.73,1750,3500,5250,'August','2017',97,'2017-08-20','Crevrand Kaondo',NULL,0),
(2454,34237.5,37125,'August 2017',1977,486,1387.5,1500,3000,4500,'August','2017',186,'2017-08-20','Crevrand Kaondo',NULL,0),
(2455,42481.8,49795.4,'August 2017',2800.75,688.5,5188.63,2125,4250,6375,'August','2017',118,'2017-08-20','Crevrand Kaondo',NULL,0),
(2456,44525,53500,'August 2017',3525.65,866.7,6300,2675,5350,8025,'August','2017',92,'2017-08-20','Crevrand Kaondo',NULL,0),
(2457,38425,44000,'August 2017',2800.75,688.5,3450,2125,4250,6375,'August','2017',119,'2017-08-20','Crevrand Kaondo',NULL,0),
(2458,31513.6,33545.4,'August 2017',1977,486,531.818,1500,3000,4500,'August','2017',185,'2017-08-20','Crevrand Kaondo',NULL,0),
(2459,33020,35800,'August 2017',2359.22,579.96,990,1790,3580,5370,'August','2017',168,'2017-08-20','Crevrand Kaondo',NULL,0),
(2460,29775,31500,'August 2017',1977,486,225,1500,3000,4500,'August','2017',187,'2017-08-20','Crevrand Kaondo',NULL,0),
(2461,43030,51200,'August 2017',3374.08,829.44,5610,2560,5120,7680,'August','2017',162,'2017-08-20','Crevrand Kaondo',NULL,0),
(2462,63133.2,79190.3,'August 2017',2701.9,664.2,14007.1,2050,4100,6150,'August','2017',121,'2017-08-20','Crevrand Kaondo',NULL,0),
(2463,41600,49000,'August 2017',3229.1,793.8,4950,2450,4900,7350,'August','2017',111,'2017-08-20','Crevrand Kaondo','2017-08-25 00:33:43',0),
(2464,43030,51200,'August 2017',3374.08,829.44,5610,2560,5120,7680,'August','2017',163,'2017-08-20','Crevrand Kaondo',NULL,0),
(2465,30000,30000,'August 2017',0,486,0,0,0,0,'August','2017',1,'2017-08-20','Crevrand Kaondo',NULL,0),
(2466,25000,25000,'August 2017',0,405,0,0,0,0,'August','2017',136,'2017-08-20','Crevrand Kaondo',NULL,0),
(2467,43251.6,50609.4,'August 2017',2537.15,623.7,5432.82,1925,3850,5775,'August','2017',122,'2017-08-20','Crevrand Kaondo',NULL,0),
(2468,43030,51200,'August 2017',3374.08,829.44,5610,2560,5120,7680,'August','2017',159,'2017-08-20','Crevrand Kaondo',NULL,0),
(2469,38988.6,44590.9,'August 2017',2603.05,639.9,3627.27,1975,3950,5925,'August','2017',127,'2017-08-20','Crevrand Kaondo',NULL,0),
(2470,53040,66600,'August 2017',4388.94,1078.92,10230,3330,6660,9990,'August','2017',156,'2017-08-20','Crevrand Kaondo',NULL,0),
(2471,43030,51200,'August 2017',3374.08,829.44,5610,2560,5120,7680,'August','2017',157,'2017-08-20','Crevrand Kaondo',NULL,0),
(2472,33163.6,35590.9,'August 2017',1977,486,927.273,1500,3000,4500,'August','2017',130,'2017-08-20','Crevrand Kaondo','2017-08-25 01:31:06',0),
(2473,97431.9,129546,'August 2017',3954,972,29113.7,3000,6000,9000,'August','2017',71,'2017-08-20','Crevrand Kaondo','2017-08-23 23:10:32',0),
(2474,70900,90500,'August 2017',2899.6,712.8,17400,2200,4400,6600,'August','2017',129,'2017-08-20','Crevrand Kaondo',NULL,0),
(2475,43030,51200,'August 2017',3374.08,829.44,5610,2560,5120,7680,'August','2017',161,'2017-08-20','Crevrand Kaondo',NULL,0),
(2476,32500,35000,'August 2017',2306.5,567,750,1750,3500,5250,'August','2017',74,'2017-08-20','Crevrand Kaondo',NULL,0),
(2477,57054.5,71363.6,'August 2017',3492.7,858.6,11659.1,2650,5300,7950,'August','2017',22,'2017-08-20','Crevrand Kaondo',NULL,0),
(2478,43550,52000,'August 2017',3426.8,842.4,5850,2600,5200,7800,'August','2017',112,'2017-08-20','Crevrand Kaondo',NULL,0),
(2479,39067.2,44703.1,'August 2017',2603.05,639.9,3660.94,1975,3950,5925,'August','2017',94,'2017-08-20','Crevrand Kaondo',NULL,0),
(2480,38137.8,43054,'August 2017',2306.5,567,3166.19,1750,3500,5250,'August','2017',95,'2017-08-20','Crevrand Kaondo','2017-08-30 18:17:40',0),
(2481,49604.3,60184.7,'August 2017',2998.45,737.1,8305.41,2275,4550,6825,'August','2017',131,'2017-08-20','Crevrand Kaondo',NULL,0),
(2482,33640.9,36272.7,'August 2017',1977,486,1131.82,1500,3000,4500,'August','2017',204,'2017-08-20','Crevrand Kaondo',NULL,0),
(2483,43030,51200,'August 2017',3374.08,829.44,5610,2560,5120,7680,'August','2017',165,'2017-08-20','Crevrand Kaondo',NULL,0),
(2484,25000,25000,'August 2017',0,405,0,0,0,0,'August','2017',135,'2017-08-20','Crevrand Kaondo',NULL,0),
(2485,43030,51200,'August 2017',3374.08,829.44,5610,2560,5120,7680,'August','2017',158,'2017-08-20','Crevrand Kaondo',NULL,0),
(2486,33879.5,36613.6,'August 2017',1977,486,1234.09,1500,3000,4500,'August','2017',193,'2017-08-20','Crevrand Kaondo',NULL,0),
(2487,30000,30000,'August 2017',0,486,0,0,0,0,'August','2017',198,'2017-08-20','Crevrand Kaondo',NULL,0),
(2488,25000,25000,'August 2017',0,405,0,0,0,0,'August','2017',134,'2017-08-20','Crevrand Kaondo',NULL,0),
(2489,39794.6,51099.4,'August 2017',2603.05,639.9,5579.82,1975,3950,5925,'August','2017',128,'2017-08-20','Crevrand Kaondo',NULL,0),
(2490,57018.1,70454.5,'August 2017',2701.9,664.2,11386.3,2050,4100,6150,'August','2017',205,'2017-08-20','Crevrand Kaondo','2017-08-29 07:30:22',0),
(2491,34261.4,37159.1,'August 2017',1977,486,1397.73,1500,3000,4500,'August','2017',96,'2017-08-20','Crevrand Kaondo',NULL,0),
(2492,24800,30000,'August 2017',0,486,0,0,0,0,'August','2017',137,'2017-08-20','Crevrand Kaondo',NULL,0),
(2493,44912.5,53375,'August 2017',2899.6,712.8,6262.5,2200,4400,6600,'August','2017',115,'2017-08-24','Crevrand Kaondo','2017-08-25 01:02:51',0),
(2494,35203.1,38718.8,'August 2017',2174.7,534.6,1865.62,1650,3300,4950,'August','2017',88,'2017-08-24','Crevrand Kaondo',NULL,0),
(2495,25250,26500,'August 2017',1647.5,405,0,1250,2500,3750,'August','2017',84,'2017-08-24','Crevrand Kaondo','2017-08-24 20:46:57',0),
(2496,53837.5,66125,'August 2017',2899.6,712.8,10087.5,2200,4400,6600,'August','2017',102,'2017-08-24','Crevrand Kaondo',NULL,0),
(2498,25000,25000,'August 2017',0,405,0,0,0,0,'August','2017',138,'2017-08-24','Crevrand Kaondo',NULL,0),
(2499,125709,168477,'August 2017',2603.05,639.9,40793.1,1975,3950,5925,'August','2017',99,'2017-08-24','Crevrand Kaondo',NULL,0),
(2500,42900,51000,'August 2017',3360.9,826.2,5550,2550,5100,7650,'August','2017',108,'2017-08-24','Crevrand Kaondo','2017-08-24 03:28:26',0),
(2501,20750,26500,'August 2017',1647.5,405,0,1250,2500,3750,'August','2017',83,'2017-08-24','Crevrand Kaondo','2017-08-24 20:46:31',0),
(2502,55061.4,67659.1,'August 2017',2701.9,664.2,10547.7,2050,4100,6150,'August','2017',100,'2017-08-24','Crevrand Kaondo',NULL,0),
(2503,42481.8,49795.4,'August 2017',2800.75,688.5,5188.63,2125,4250,6375,'August','2017',101,'2017-08-24','Crevrand Kaondo',NULL,0),
(2504,99977.3,132182,'August 2017',3031.4,745.2,29904.5,2300,4600,6900,'August','2017',103,'2017-08-24','Crevrand Kaondo',NULL,0),
(2505,25000,25000,'August 2017',0,405,0,0,0,0,'August','2017',140,'2017-08-24','Crevrand Kaondo','2017-08-25 18:19:18',0),
(2506,34178.4,36897.7,'August 2017',1845.2,453.6,1319.32,1400,2800,4200,'August','2017',104,'2017-08-24','Crevrand Kaondo',NULL,0),
(2507,28100,29500,'August 2017',1845.2,453.6,0,1400,2800,4200,'August','2017',80,'2017-08-24','Crevrand Kaondo','2017-08-24 20:47:10',0),
(2508,41767.6,54596.6,'August 2017',2767.8,680.4,6628.98,2100,4200,6300,'August','2017',114,'2017-08-24','Crevrand Kaondo','2017-08-25 00:43:32',0),
(2509,34250,35000,'August 2017',0,567,750,0,0,0,'August','2017',144,'2017-08-24','Crevrand Kaondo','2017-08-25 19:58:48',0),
(2510,25250,26500,'August 2017',1647.5,405,0,1250,2500,3750,'August','2017',194,'2017-08-24','Crevrand Kaondo',NULL,0),
(2511,45054.5,53863.6,'August 2017',3163.2,777.6,6409.09,2400,4800,7200,'August','2017',39,'2017-08-24','Crevrand Kaondo',NULL,0),
(2512,43767,50988.6,'August 2017',2207.65,542.7,5546.58,1675,3350,5025,'August','2017',105,'2017-08-24','Crevrand Kaondo','2017-08-24 20:57:54',0),
(2513,26954.6,28204.6,'August 2017',1647.5,405,0,1250,2500,3750,'August','2017',106,'2017-08-24','Crevrand Kaondo','2017-08-24 21:05:06',0),
(2514,39169.7,44563.9,'August 2017',2339.45,575.1,3619.18,1775,3550,5325,'August','2017',113,'2017-08-24','Crevrand Kaondo',NULL,0),
(2515,14775,31500,'August 2017',1977,486,225,1500,3000,4500,'August','2017',207,'2017-08-24','Crevrand Kaondo','2017-08-25 01:11:16',0),
(2516,14775,31500,'August 2017',1977,486,225,1500,3000,4500,'August','2017',208,'2017-08-24','Crevrand Kaondo','2017-08-25 01:10:56',0),
(2517,51750,60000,'August 2017',0,972,8250,0,0,0,'August','2017',209,'2017-08-24','Crevrand Kaondo','2017-08-25 02:24:05',0),
(2518,36187.5,40125,'September 2017',2174.7,534.6,2287.5,1650,3300,4950,'September','2017',88,'2017-09-23','Crevrand Kaondo',NULL,0),
(2519,31570.5,33318.2,'September 2017',1647.5,405,497.727,1250,2500,3750,'September','2017',84,'2017-09-23','Crevrand Kaondo',NULL,0),
(2520,26704.6,26704.6,'September 2017',0,405,0,0,0,0,'September','2017',192,'2017-09-23','Crevrand Kaondo',NULL,0),
(2521,52000,63500,'September 2017',2899.6,712.8,9300,2200,4400,6600,'September','2017',102,'2017-09-23','Crevrand Kaondo',NULL,0),
(2522,40016.9,45774.1,'September 2017',2339.45,575.1,3982.25,1775,3550,5325,'September','2017',113,'2017-09-23','Crevrand Kaondo',NULL,0),
(2523,25000,25000,'September 2017',0,405,0,0,0,0,'September','2017',138,'2017-09-23','Crevrand Kaondo',NULL,0),
(2524,43030,51200,'September 2017',3374.08,829.44,5610,2560,5120,7680,'September','2017',166,'2017-09-23','Crevrand Kaondo',NULL,0),
(2525,60983,76011.4,'September 2017',2603.05,639.9,13053.4,1975,3950,5925,'September','2017',99,'2017-09-23','Crevrand Kaondo',NULL,0),
(2527,41250,45000,'September 2017',0,729,3750,0,0,0,'September','2017',146,'2017-09-23','Crevrand Kaondo',NULL,0),
(2529,40950,48000,'September 2017',3163.2,777.6,4650,2400,4800,7200,'September','2017',107,'2017-09-23','Crevrand Kaondo',NULL,0),
(2530,42900,51000,'September 2017',3360.9,826.2,5550,2550,5100,7650,'September','2017',108,'2017-09-23','Crevrand Kaondo',NULL,0),
(2531,38550,43500,'September 2017',2174.7,534.6,3300,1650,3300,4950,'September','2017',117,'2017-09-23','Crevrand Kaondo',NULL,0),
(2532,26704.6,26704.6,'September 2017',0,405,0,0,0,0,'September','2017',190,'2017-09-23','Crevrand Kaondo',NULL,0),
(2533,25621.6,31613.6,'September 2017',1647.5,405,242.046,1250,2500,3750,'September','2017',83,'2017-09-23','Crevrand Kaondo',NULL,0),
(2534,153042,220450,'September 2017',14527.7,3571.29,56385,11022.5,22045,33067.5,'September','2017',155,'2017-09-23','Crevrand Kaondo',NULL,0),
(2535,46538.6,55590.9,'September 2017',2800.75,688.5,6927.27,2125,4250,6375,'September','2017',89,'2017-09-23','Crevrand Kaondo',NULL,0),
(2536,43030,51200,'September 2017',3374.08,829.44,5610,2560,5120,7680,'September','2017',167,'2017-09-23','Crevrand Kaondo',NULL,0),
(2537,49581.2,59937.5,'September 2017',2800.75,688.5,8231.25,2125,4250,6375,'September','2017',90,'2017-09-23','Crevrand Kaondo',NULL,0),
(2538,25000,25000,'September 2017',0,405,0,0,0,0,'September','2017',139,'2017-09-23','Crevrand Kaondo',NULL,0),
(2539,43030,51200,'September 2017',3374.08,829.44,5610,2560,5120,7680,'September','2017',164,'2017-09-23','Crevrand Kaondo',NULL,0),
(2540,31513.6,33545.4,'September 2017',1977,486,531.818,1500,3000,4500,'September','2017',208,'2017-09-23','Crevrand Kaondo','2017-09-28 04:51:20',0),
(2541,28000,30000,'September 2017',0,486,0,0,0,0,'September','2017',145,'2017-09-23','Crevrand Kaondo',NULL,0),
(2542,25000,25000,'September 2017',0,405,0,0,0,0,'September','2017',201,'2017-09-23','Crevrand Kaondo',NULL,0),
(2543,29775,31500,'September 2017',1977,486,225,1500,3000,4500,'September','2017',186,'2017-09-23','Crevrand Kaondo',NULL,0),
(2544,43158,50761.4,'September 2017',2800.75,688.5,5478.41,2125,4250,6375,'September','2017',118,'2017-09-23','Crevrand Kaondo',NULL,0),
(2545,31296.3,33289.8,'September 2017',1977,486,493.466,1500,3000,4500,'September','2017',207,'2017-09-23','Crevrand Kaondo','2017-09-28 04:51:06',0),
(2546,47078.4,57147.7,'September 2017',3525.65,866.7,7394.32,2675,5350,8025,'September','2017',92,'2017-09-23','Crevrand Kaondo',NULL,0),
(2547,38425,44000,'September 2017',2800.75,688.5,3450,2125,4250,6375,'September','2017',119,'2017-09-23','Crevrand Kaondo',NULL,0),
(2548,31296.3,33289.8,'September 2017',1977,486,493.466,1500,3000,4500,'September','2017',185,'2017-09-23','Crevrand Kaondo',NULL,0),
(2549,33020,35800,'September 2017',2359.22,579.96,990,1790,3580,5370,'September','2017',168,'2017-09-23','Crevrand Kaondo',NULL,0),
(2550,34953.4,38147.7,'September 2017',1977,486,1694.32,1500,3000,4500,'September','2017',187,'2017-09-23','Crevrand Kaondo',NULL,0),
(2551,43030,51200,'September 2017',3374.08,829.44,5610,2560,5120,7680,'September','2017',162,'2017-09-23','Crevrand Kaondo',NULL,0),
(2552,26704.6,26704.6,'September 2017',0,405,0,0,0,0,'September','2017',188,'2017-09-23','Crevrand Kaondo',NULL,0),
(2553,70879,90255.7,'September 2017',2701.9,664.2,17326.7,2050,4100,6150,'September','2017',121,'2017-09-23','Crevrand Kaondo',NULL,0),
(2554,64356.2,80937.5,'September 2017',2701.9,664.2,14531.2,2050,4100,6150,'September','2017',100,'2017-09-23','Crevrand Kaondo',NULL,0),
(2555,41600,49000,'September 2017',3229.1,793.8,4950,2450,4900,7350,'September','2017',111,'2017-09-23','Crevrand Kaondo',NULL,0),
(2556,43030,51200,'September 2017',3374.08,829.44,5610,2560,5120,7680,'September','2017',163,'2017-09-23','Crevrand Kaondo',NULL,0),
(2557,43862.5,51875,'September 2017',2899.6,712.8,5812.5,2200,4400,6600,'September','2017',115,'2017-09-23','Crevrand Kaondo',NULL,0),
(2558,25000,25000,'September 2017',0,405,0,0,0,0,'September','2017',136,'2017-09-23','Crevrand Kaondo',NULL,0),
(2559,57340.9,72272.7,'September 2017',3954,972,11931.8,3000,6000,9000,'September','2017',70,'2017-09-23','Crevrand Kaondo',NULL,0),
(2560,39500,45250,'September 2017',2537.15,623.7,3825,1925,3850,5775,'September','2017',122,'2017-09-23','Crevrand Kaondo',NULL,0),
(2561,30000,30000,'September 2017',0,486,0,0,0,0,'September','2017',76,'2017-09-23','Crevrand Kaondo',NULL,0),
(2562,38425,44000,'September 2017',2800.75,688.5,3450,2125,4250,6375,'September','2017',101,'2017-09-23','Crevrand Kaondo',NULL,0),
(2564,77473.9,100034,'September 2017',3031.4,745.2,20260.2,2300,4600,6900,'September','2017',103,'2017-09-23','Crevrand Kaondo',NULL,0),
(2565,25000,25000,'September 2017',0,405,0,0,0,0,'September','2017',140,'2017-09-23','Crevrand Kaondo',NULL,0),
(2566,43030,51200,'September 2017',3374.08,829.44,5610,2560,5120,7680,'September','2017',159,'2017-09-23','Crevrand Kaondo',NULL,0),
(2568,25000,25000,'September 2017',0,405,0,0,0,0,'September','2017',206,'2017-09-23','Crevrand Kaondo',NULL,0),
(2569,36475,41000,'September 2017',2603.05,639.9,2550,1975,3950,5925,'September','2017',127,'2017-09-23','Crevrand Kaondo',NULL,0),
(2570,35514.8,38806.8,'September 2017',1845.2,453.6,1892.05,1400,2800,4200,'September','2017',104,'2017-09-23','Crevrand Kaondo',NULL,0),
(2572,53040,66600,'September 2017',4388.94,1078.92,10230,3330,6660,9990,'September','2017',156,'2017-09-23','Crevrand Kaondo',NULL,0),
(2573,43030,51200,'September 2017',3374.08,829.44,5610,2560,5120,7680,'September','2017',157,'2017-09-23','Crevrand Kaondo',NULL,0),
(2574,31079,33034.1,'September 2017',1977,486,455.113,1500,3000,4500,'September','2017',130,'2017-09-23','Crevrand Kaondo',NULL,0),
(2575,37006.8,47795.4,'September 2017',2767.8,680.4,4588.63,2100,4200,6300,'September','2017',114,'2017-09-23','Crevrand Kaondo',NULL,0),
(2576,57340.9,72272.7,'September 2017',3954,972,11931.8,3000,6000,9000,'September','2017',71,'2017-09-23','Crevrand Kaondo',NULL,0),
(2577,75800,97500,'September 2017',2899.6,712.8,19500,2200,4400,6600,'September','2017',129,'2017-09-23','Crevrand Kaondo',NULL,0),
(2578,43030,51200,'September 2017',3374.08,829.44,5610,2560,5120,7680,'September','2017',161,'2017-09-23','Crevrand Kaondo',NULL,0),
(2579,34250,35000,'September 2017',0,567,750,0,0,0,'September','2017',144,'2017-09-23','Crevrand Kaondo',NULL,0),
(2580,30483.8,32039.8,'September 2017',1647.5,405,305.966,1250,2500,3750,'September','2017',194,'2017-09-23','Crevrand Kaondo',NULL,0),
(2581,34250,35000,'September 2017',0,567,750,0,0,0,'September','2017',82,'2017-09-23','Crevrand Kaondo',NULL,0),
(2582,41790,54700,'September 2017',0,886.14,6660,0,0,0,'September','2017',85,'2017-09-23','Crevrand Kaondo',NULL,0),
(2583,59162.5,74375,'September 2017',3492.7,858.6,12562.5,2650,5300,7950,'September','2017',22,'2017-09-23','Crevrand Kaondo',NULL,0),
(2584,43550,52000,'September 2017',3426.8,842.4,5850,2600,5200,7800,'September','2017',112,'2017-09-23','Crevrand Kaondo',NULL,0),
(2585,36475,41000,'September 2017',2603.05,639.9,2550,1975,3950,5925,'September','2017',94,'2017-09-23','Crevrand Kaondo',NULL,0),
(2586,46581.8,56045.4,'September 2017',3163.2,777.6,7063.63,2400,4800,7200,'September','2017',39,'2017-09-23','Crevrand Kaondo',NULL,0),
(2587,49061.4,59409.1,'September 2017',2998.45,737.1,8072.73,2275,4550,6825,'September','2017',131,'2017-09-23','Crevrand Kaondo',NULL,0),
(2588,34950,36000,'September 2017',0,583.2,1050,0,0,0,'September','2017',199,'2017-09-23','Crevrand Kaondo',NULL,0),
(2591,43030,51200,'September 2017',3374.08,829.44,5610,2560,5120,7680,'September','2017',165,'2017-09-23','Crevrand Kaondo',NULL,0),
(2592,43030,51200,'September 2017',3374.08,829.44,5610,2560,5120,7680,'September','2017',160,'2017-09-23','Crevrand Kaondo',NULL,0),
(2593,25000,25000,'September 2017',0,405,0,0,0,0,'September','2017',135,'2017-09-23','Crevrand Kaondo',NULL,0),
(2594,52560.8,63551.1,'September 2017',2207.65,542.7,9315.33,1675,3350,5025,'September','2017',105,'2017-09-23','Crevrand Kaondo',NULL,0),
(2595,26704.6,26704.6,'September 2017',0,405,0,0,0,0,'September','2017',195,'2017-09-23','Crevrand Kaondo',NULL,0),
(2596,43030,51200,'September 2017',3374.08,829.44,5610,2560,5120,7680,'September','2017',158,'2017-09-23','Crevrand Kaondo',NULL,0),
(2597,36027.3,39681.8,'September 2017',1977,486,2154.55,1500,3000,4500,'September','2017',193,'2017-09-23','Crevrand Kaondo',NULL,0),
(2598,31738.6,32045.4,'September 2017',0,486,306.818,0,0,0,'September','2017',198,'2017-09-23','Crevrand Kaondo',NULL,0),
(2599,26704.6,26704.6,'September 2017',0,405,0,0,0,0,'September','2017',134,'2017-09-23','Crevrand Kaondo',NULL,0),
(2600,38066.5,48630.7,'September 2017',2603.05,639.9,4839.2,1975,3950,5925,'September','2017',128,'2017-09-23','Crevrand Kaondo',NULL,0),
(2601,63377.9,79539.8,'September 2017',2701.9,664.2,14111.9,2050,4100,6150,'September','2017',205,'2017-09-23','Crevrand Kaondo',NULL,0),
(2602,26704.6,26704.6,'September 2017',0,405,0,0,0,0,'September','2017',191,'2017-09-23','Crevrand Kaondo',NULL,0),
(2603,26954.6,28204.6,'September 2017',1647.5,405,0,1250,2500,3750,'September','2017',106,'2017-09-23','Crevrand Kaondo',NULL,0),
(2604,25000,25000,'September 2017',0,405,0,0,0,0,'September','2017',200,'2017-09-23','Crevrand Kaondo',NULL,0),
(2605,34440.3,37414.8,'September 2017',1977,486,1474.43,1500,3000,4500,'September','2017',96,'2017-09-23','Crevrand Kaondo',NULL,0),
(2606,29250,35000,'September 2017',0,567,750,0,0,0,'September','2017',133,'2017-09-23','Crevrand Kaondo',NULL,0),
(2608,38764.2,43948.9,'September 2017',2306.5,567,3434.66,1750,3500,5250,'September','2017',97,'2017-09-23','Crevrand Kaondo',NULL,0),
(2609,33335.2,36193.2,'September 2017',2306.5,567,1107.95,1750,3500,5250,'September','2017',74,'2017-09-23','Crevrand Kaondo',NULL,0),
(2610,38764.2,43948.9,'September 2017',2306.5,567,3434.66,1750,3500,5250,'September','2017',95,'2017-09-23','Crevrand Kaondo',NULL,0),
(2611,28100,29500,'September 2017',1845.2,453.6,0,1400,2800,4200,'September','2017',80,'2017-09-23','Crevrand Kaondo',NULL,0),
(2612,55250,65000,'October 2017',0,1053,9750,0,0,0,'October','2017',146,'2017-10-13','Crevrand Kaondo',NULL,0),
(2613,25000,25000,'October 2017',0,405,0,0,0,0,'October','2017',138,'2017-10-13','Crevrand Kaondo',NULL,0),
(2614,108150,144000,'October 2017',3163.2,777.6,33450,2400,4800,7200,'October','2017',107,'2017-10-13','Crevrand Kaondo',NULL,0),
(2615,30000,30000,'October 2017',0,486,0,0,0,0,'October','2017',139,'2017-10-13','Crevrand Kaondo','2017-10-23 01:09:57',0),
(2616,25000,25000,'October 2017',0,405,0,0,0,0,'October','2017',201,'2017-10-13','Crevrand Kaondo',NULL,0),
(2617,28000,30000,'October 2017',0,486,0,0,0,0,'October','2017',145,'2017-10-13','Crevrand Kaondo',NULL,0),
(2618,25000,25000,'October 2017',0,405,0,0,0,0,'October','2017',188,'2017-10-13','Crevrand Kaondo',NULL,0),
(2619,110200,147000,'October 2017',3229.1,793.8,34350,2450,4900,7350,'October','2017',111,'2017-10-13','Crevrand Kaondo',NULL,0),
(2620,25000,25000,'October 2017',0,405,0,0,0,0,'October','2017',136,'2017-10-13','Crevrand Kaondo',NULL,0),
(2621,25000,25000,'October 2017',0,405,0,0,0,0,'October','2017',140,'2017-10-13','Crevrand Kaondo',NULL,0),
(2622,43550,52000,'October 2017',3426.8,842.4,5850,2600,5200,7800,'October','2017',112,'2017-10-13','Crevrand Kaondo',NULL,0),
(2623,30000,30000,'October 2017',0,486,0,0,0,0,'October','2017',76,'2017-10-13','Crevrand Kaondo',NULL,0),
(2624,41790,54700,'October 2017',0,886.14,6660,0,0,0,'October','2017',85,'2017-10-13','Crevrand Kaondo',NULL,0),
(2625,31333.3,35000,'October 2017',0,567,750,0,0,0,'October','2017',82,'2017-10-13','Crevrand Kaondo','2017-10-22 17:38:51',0),
(2626,34950,36000,'October 2017',0,583.2,1050,0,0,0,'October','2017',199,'2017-10-13','Crevrand Kaondo',NULL,0),
(2627,30000,30000,'October 2017',0,486,0,0,0,0,'October','2017',198,'2017-10-13','Crevrand Kaondo',NULL,0),
(2628,25000,25000,'October 2017',0,405,0,0,0,0,'October','2017',135,'2017-10-13','Crevrand Kaondo',NULL,0),
(2629,25000,25000,'October 2017',0,405,0,0,0,0,'October','2017',191,'2017-10-13','Crevrand Kaondo',NULL,0),
(2630,25000,25000,'October 2017',0,405,0,0,0,0,'October','2017',200,'2017-10-13','Crevrand Kaondo',NULL,0),
(2631,41962.5,48375,'October 2017',2174.7,534.6,4762.5,1650,3300,4950,'October','2017',88,'2017-10-19','Crevrand Kaondo',NULL,0),
(2632,46950,55500,'October 2017',2174.7,534.6,6900,1650,3300,4950,'October','2017',117,'2017-10-19','Crevrand Kaondo',NULL,0),
(2633,60427.3,76181.8,'October 2017',3492.7,858.6,13104.5,2650,5300,7950,'October','2017',22,'2017-10-19','Crevrand Kaondo',NULL,0),
(2634,50003.8,60541.2,'October 2017',2800.75,688.5,8412.36,2125,4250,6375,'October','2017',89,'2017-10-19','Crevrand Kaondo',NULL,0),
(2635,36862.5,40875,'October 2017',1977,486,2512.5,1500,3000,4500,'October','2017',208,'2017-10-19','Crevrand Kaondo',NULL,0),
(2636,51018.1,61990.1,'October 2017',2800.75,688.5,8847.03,2125,4250,6375,'October','2017',90,'2017-10-19','Crevrand Kaondo',NULL,0),
(2637,38354,43005.7,'October 2017',1977,486,3151.71,1500,3000,4500,'October','2017',185,'2017-10-19','Crevrand Kaondo',NULL,0),
(2638,53346.6,70352.3,'October 2016 ',3492.7,858.6,14355.7,2650,5300,7950,'October','2016 ',22,'2017-10-19','Crevrand Kaondo',NULL,0),
(2639,43158,50761.4,'October 2017',2800.75,688.5,5478.41,2125,4250,6375,'October','2017',118,'2017-10-19','Crevrand Kaondo',NULL,0),
(2640,38425,44000,'October 2017',2800.75,688.5,3450,2125,4250,6375,'October','2017',119,'2017-10-19','Crevrand Kaondo',NULL,0),
(2641,78543.1,101204,'October 2017',2701.9,664.2,20611.3,2050,4100,6150,'October','2017',121,'2017-10-19','Crevrand Kaondo',NULL,0),
(2642,45625,54000,'October 2017',2537.15,623.7,6450,1925,3850,5775,'October','2017',122,'2017-10-19','Crevrand Kaondo',NULL,0),
(2643,42759.1,49977.3,'October 2017',2603.05,639.9,5243.18,1975,3950,5925,'October','2017',127,'2017-10-19','Crevrand Kaondo',NULL,0),
(2644,36504.5,40363.6,'October 2017',1977,486,2359.09,1500,3000,4500,'October','2017',130,'2017-10-19','Crevrand Kaondo',NULL,0),
(2645,90850,119000,'October 2017',2899.6,712.8,25950,2200,4400,6600,'October','2017',129,'2017-10-19','Crevrand Kaondo',NULL,0),
(2646,50509.1,61477.3,'October 2017',2998.45,737.1,8693.19,2275,4550,6825,'October','2017',131,'2017-10-19','Crevrand Kaondo',NULL,0),
(2647,42759.1,49977.3,'October 2017',2603.05,639.9,5243.18,1975,3950,5925,'October','2017',94,'2017-10-19','Crevrand Kaondo',NULL,0),
(2648,37936.4,42409.1,'October 2017',1977,486,2972.73,1500,3000,4500,'October','2017',193,'2017-10-19','Crevrand Kaondo',NULL,0),
(2649,42151.1,54465.9,'October 2017',2603.05,639.9,6589.77,1975,3950,5925,'October','2017',128,'2017-10-19','Crevrand Kaondo',NULL,0),
(2650,68433,86761.4,'October 2017',2701.9,664.2,16278.4,2050,4100,6150,'October','2017',205,'2017-10-19','Crevrand Kaondo',NULL,0),
(2651,42900,51000,'October 2017',3360.9,826.2,5550,2550,5100,7650,'October','2017',108,'2017-10-19','Crevrand Kaondo',NULL,0),
(2652,37399.4,41642,'October 2017',1977,486,2742.6,1500,3000,4500,'October','2017',207,'2017-10-19','Crevrand Kaondo',NULL,0),
(2653,35402.3,38431.8,'October 2017',1647.5,405,1779.54,1250,2500,3750,'October','2017',84,'2017-10-20','Crevrand Kaondo','2017-10-22 16:22:15',0),
(2654,67400,85500,'October 2017',2899.6,712.8,15900,2200,4400,6600,'October','2017',102,'2017-10-20','Crevrand Kaondo','2017-10-21 06:49:19',0),
(2655,68445.3,86671.9,'October 2017',2603.05,639.9,16251.6,1975,3950,5925,'October','2017',99,'2017-10-20','Crevrand Kaondo','2017-10-21 06:38:02',0),
(2656,64193.1,80704.5,'October 2017',2701.9,664.2,14461.3,2050,4100,6150,'October','2017',100,'2017-10-20','Crevrand Kaondo','2017-10-21 07:00:06',0),
(2657,84609.1,110227,'October 2017',3031.4,745.2,23318.2,2300,4600,6900,'October','2017',103,'2017-10-20','Crevrand Kaondo',NULL,0),
(2658,43158,50761.4,'October 2017',2800.75,688.5,5478.41,2125,4250,6375,'October','2017',101,'2017-10-20','Crevrand Kaondo','2017-10-20 13:46:10',0),
(2659,39690.9,44772.7,'October 2017',1845.2,453.6,3681.81,1400,2800,4200,'October','2017',104,'2017-10-20','Crevrand Kaondo','2017-10-22 16:37:49',0),
(2660,31961.4,33954.6,'October 2017',1845.2,453.6,593.182,1400,2800,4200,'October','2017',80,'2017-10-20','Crevrand Kaondo','2017-10-21 06:33:23',0),
(2661,25250,26500,'October 2017',1647.5,405,0,1250,2500,3750,'October','2017',194,'2017-10-20','Crevrand Kaondo',NULL,0),
(2662,45054.5,53863.6,'October 2017',3163.2,777.6,6409.09,2400,4800,7200,'October','2017',39,'2017-10-20','Crevrand Kaondo',NULL,0),
(2663,82872.6,106854,'October 2017',2207.65,542.7,22306.1,1675,3350,5025,'October','2017',105,'2017-10-20','Crevrand Kaondo','2017-10-22 16:30:18',0),
(2664,30604.5,32181.8,'October 2017',1647.5,405,327.273,1250,2500,3750,'October','2017',106,'2017-10-20','Crevrand Kaondo',NULL,0),
(2665,33015.9,35022.7,'October 2017',1647.5,405,756.819,1250,2500,3750,'October','2017',83,'2017-10-20','Crevrand Kaondo','2017-10-21 06:33:34',0),
(2667,33875,37000,'October 2017',2339.45,575.1,1350,1775,3550,5325,'October','2017',113,'2017-10-23','Crevrand Kaondo',NULL,0),
(2668,47272.7,61318.2,'October 2016 ',3163.2,777.6,11645.5,2400,4800,7200,'October','2016 ',39,'2017-10-23','Crevrand Kaondo',NULL,0),
(2669,46695.5,56436.4,'October 2017',3374.08,829.44,7180.91,2560,5120,7680,'October','2017',166,'2017-10-23','Crevrand Kaondo','2017-10-26 04:19:37',0),
(2670,25000,25000,'October 2017',0,405,0,0,0,0,'October','2017',190,'2017-10-23','Crevrand Kaondo',NULL,0),
(2671,153042,220450,'October 2017',14527.7,3571.29,56385,11022.5,22045,33067.5,'October','2017',155,'2017-10-23','Crevrand Kaondo',NULL,0),
(2672,45473.6,54690.9,'October 2017',3374.08,829.44,6657.27,2560,5120,7680,'October','2017',164,'2017-10-23','Crevrand Kaondo',NULL,0),
(2673,39308.5,44369.3,'October 2017',1977,486,3560.79,1500,3000,4500,'October','2017',186,'2017-10-23','Crevrand Kaondo',NULL,0),
(2674,44525,53500,'October 2017',3525.65,866.7,6300,2675,5350,8025,'October','2017',92,'2017-10-23','Crevrand Kaondo',NULL,0),
(2675,53346.6,70352.3,'October 2016 ',3492.7,858.6,14355.7,2650,5300,7950,'October','2016 ',22,'2017-10-23','Crevrand Kaondo',NULL,0),
(2676,36152.5,40275,'October 2017',2359.22,579.96,2332.5,1790,3580,5370,'October','2017',168,'2017-10-23','Crevrand Kaondo',NULL,0),
(2677,39368.1,44454.5,'October 2017',1977,486,3586.35,1500,3000,4500,'October','2017',187,'2017-10-23','Crevrand Kaondo',NULL,0),
(2678,46695.5,56436.4,'October 2017',3374.08,829.44,7180.91,2560,5120,7680,'October','2017',162,'2017-10-23','Crevrand Kaondo',NULL,0),
(2679,45473.6,54690.9,'October 2017',3374.08,829.44,6657.27,2560,5120,7680,'October','2017',163,'2017-10-23','Crevrand Kaondo',NULL,0),
(2680,46695.5,56436.4,'October 2017',3374.08,829.44,7180.91,2560,5120,7680,'October','2017',159,'2017-10-23','Crevrand Kaondo',NULL,0),
(2681,58867.5,74925,'October 2017',4388.94,1078.92,12727.5,3330,6660,9990,'October','2017',156,'2017-10-23','Crevrand Kaondo',NULL,0),
(2682,47510,57600,'October 2017',3374.08,829.44,7530,2560,5120,7680,'October','2017',157,'2017-10-23','Crevrand Kaondo',NULL,0),
(2683,46695.5,56436.4,'October 2017',3374.08,829.44,7180.91,2560,5120,7680,'October','2017',161,'2017-10-23','Crevrand Kaondo',NULL,0),
(2684,48250,55000,'October 2017',0,567,6750,0,0,0,'October','2017',144,'2017-10-23','Crevrand Kaondo',NULL,0),
(2685,45473.6,54690.9,'October 2017',3374.08,829.44,6657.27,2560,5120,7680,'October','2017',160,'2017-10-23','Crevrand Kaondo',NULL,0),
(2686,46695.5,56436.4,'October 2017',3374.08,829.44,7180.91,2560,5120,7680,'October','2017',165,'2017-10-23','Crevrand Kaondo',NULL,0),
(2687,25000,25000,'October 2017',0,405,0,0,0,0,'October','2017',134,'2017-10-23','Crevrand Kaondo',NULL,0),
(2688,46695.5,56436.4,'October 2017',3374.08,829.44,7180.91,2560,5120,7680,'October','2017',158,'2017-10-23','Crevrand Kaondo',NULL,0),
(2689,25000,25000,'October 2017',0,405,0,0,0,0,'October','2017',195,'2017-10-23','Crevrand Kaondo',NULL,0),
(2690,37720.2,42457.4,'October 2017',2306.5,567,2987.22,1750,3500,5250,'October','2017',97,'2017-10-23','Crevrand Kaondo',NULL,0),
(2691,47275,56750,'October 2017',2899.6,712.8,7275,2200,4400,6600,'October','2017',115,'2017-10-23','Crevrand Kaondo',NULL,0),
(2692,39763.1,51732.9,'October 2017',2767.8,680.4,5769.88,2100,4200,6300,'October','2017',114,'2017-10-23','Crevrand Kaondo',NULL,0),
(2693,33335.2,36193.2,'October 2017',2306.5,567,1107.95,1750,3500,5250,'October','2017',74,'2017-10-23','Crevrand Kaondo',NULL,0),
(2694,32509.5,40965.9,'October 2017',2306.5,567,2539.77,1750,3500,5250,'October','2017',95,'2017-10-23','Crevrand Kaondo','2017-10-22 17:27:38',0),
(2695,33724.4,36392.1,'October 2017',1977,486,1167.61,1500,3000,4500,'October','2017',96,'2017-10-23','Crevrand Kaondo',NULL,0),
(2696,61159.1,77727.3,'October 2017',3954,972,13568.2,3000,6000,9000,'October','2017',70,'2017-10-23','Crevrand Kaondo',NULL,0),
(2697,61159.1,77727.3,'October 2017',3954,972,13568.2,3000,6000,9000,'October','2017',71,'2017-10-23','Crevrand Kaondo',NULL,0),
(2698,33426.1,40965.9,'October 2017',0,567,2539.77,0,0,0,'October','2017',133,'2017-10-23','Crevrand Kaondo','2017-10-22 17:55:18',0),
(2699,42250,50000,'October 2017',3295,810,5250,2500,5000,7500,'October','2017',110,'2017-10-23','Crevrand Kaondo',NULL,0),
(2700,43030,51200,'October 2017',3374.08,829.44,5610,2560,5120,7680,'October','2017',109,'2017-10-23','Crevrand Kaondo',NULL,0),
(2701,15000,15000,'October 2017',0,243,0,0,0,0,'October','2017',211,'2017-10-24','Crevrand Kaondo',NULL,0),
(2702,25000,25000,'October 2017',0,405,0,0,0,0,'October','2017',214,'2017-10-24','Crevrand Kaondo',NULL,0),
(2703,41345.5,45136.4,'October 2017',0,648,3790.91,0,0,0,'October','2017',217,'2017-10-24','Crevrand Kaondo',NULL,0),
(2705,74750,100000,'October 2017',6590,1620,20250,5000,10000,15000,'October','2017',218,'2017-10-24','Crevrand Kaondo',NULL,0),
(2706,30000,30000,'October 2017',0,486,0,0,0,0,'October','2017',219,'2017-10-24','Crevrand Kaondo',NULL,0),
(2707,41175,47250,'November 2017',2174.7,534.6,4425,1650,3300,4950,'November','2017',88,'2017-11-22','Crevrand Kaondo',NULL,0),
(2708,25250,26500,'November 2017',1647.5,405,0,1250,2500,3750,'November','2017',84,'2017-11-22','Crevrand Kaondo',NULL,0),
(2709,56200,69500,'November 2017',2899.6,712.8,11100,2200,4400,6600,'November','2017',102,'2017-11-22','Crevrand Kaondo',NULL,0),
(2710,36628.3,40933.2,'November 2017',2339.45,575.1,2529.97,1775,3550,5325,'November','2017',113,'2017-11-22','Crevrand Kaondo',NULL,0),
(2711,25000,25000,'November 2017',0,405,0,0,0,0,'November','2017',138,'2017-11-22','Crevrand Kaondo',NULL,0),
(2712,44527.3,49681.8,'November 2017',0,648,5154.55,0,0,0,'November','2017',217,'2017-11-22','Crevrand Kaondo',NULL,0),
(2713,43030,51200,'November 2017',3374.08,829.44,5610,2560,5120,7680,'November','2017',166,'2017-11-22','Crevrand Kaondo',NULL,0),
(2714,64282.1,80724.4,'November 2017',2603.05,639.9,14467.3,1975,3950,5925,'November','2017',99,'2017-11-22','Crevrand Kaondo',NULL,0),
(2715,55250,65000,'November 2017',0,1053,9750,0,0,0,'November','2017',146,'2017-11-22','Crevrand Kaondo',NULL,0),
(2716,40950,48000,'November 2017',3163.2,777.6,4650,2400,4800,7200,'November','2017',107,'2017-11-22','Crevrand Kaondo','2017-11-23 21:45:41',0),
(2717,42900,51000,'November 2017',3360.9,826.2,5550,2550,5100,7650,'November','2017',108,'2017-11-22','Crevrand Kaondo',NULL,0),
(2718,39337.5,44625,'November 2017',2174.7,534.6,3637.5,1650,3300,4950,'November','2017',117,'2017-11-22','Crevrand Kaondo','2017-11-30 21:27:29',0),
(2719,25000,25000,'November 2017',0,405,0,0,0,0,'November','2017',190,'2017-11-22','Crevrand Kaondo',NULL,0),
(2720,26954.6,28204.6,'November 2017',1647.5,405,0,1250,2500,3750,'November','2017',83,'2017-11-22','Crevrand Kaondo',NULL,0),
(2721,153042,220450,'November 2017',14527.7,3571.29,56385,11022.5,22045,33067.5,'November','2017',155,'2017-11-22','Crevrand Kaondo',NULL,0),
(2722,44510.2,52693.2,'November 2017',2800.75,688.5,6057.95,2125,4250,6375,'November','2017',89,'2017-11-22','Crevrand Kaondo',NULL,0),
(2723,46538.6,55590.9,'November 2017',2800.75,688.5,6927.27,2125,4250,6375,'November','2017',90,'2017-11-22','Crevrand Kaondo',NULL,0),
(2724,30000,30000,'November 2017',0,486,0,0,0,0,'November','2017',139,'2017-11-22','Crevrand Kaondo',NULL,0),
(2725,43030,51200,'November 2017',3374.08,829.44,5610,2560,5120,7680,'November','2017',164,'2017-11-22','Crevrand Kaondo',NULL,0),
(2726,35311.4,38659.1,'November 2017',1977,486,1847.73,1500,3000,4500,'November','2017',208,'2017-11-22','Crevrand Kaondo',NULL,0),
(2727,25000,30000,'November 2017',0,486,0,0,0,0,'November','2017',145,'2017-11-22','Crevrand Kaondo',NULL,0),
(2728,37511.4,42159.1,'November 2017',2306.5,567,2897.73,1750,3500,5250,'November','2017',97,'2017-11-22','Crevrand Kaondo',NULL,0),
(2729,25000,25000,'November 2017',0,405,0,0,0,0,'November','2017',201,'2017-11-22','Crevrand Kaondo',NULL,0),
(2730,35311.4,38659.1,'November 2017',1977,486,1847.73,1500,3000,4500,'November','2017',186,'2017-11-22','Crevrand Kaondo',NULL,0),
(2731,38425,44000,'November 2017',2800.75,688.5,3450,2125,4250,6375,'November','2017',118,'2017-11-22','Crevrand Kaondo',NULL,0),
(2732,49390.9,58772.7,'November 2017',1977,486,7881.81,1500,3000,4500,'November','2017',207,'2017-11-22','Crevrand Kaondo',NULL,0),
(2733,44525,53500,'November 2017',3525.65,866.7,6300,2675,5350,8025,'November','2017',92,'2017-11-22','Crevrand Kaondo',NULL,0),
(2734,39101.1,44965.9,'November 2017',2800.75,688.5,3739.77,2125,4250,6375,'November','2017',119,'2017-11-22','Crevrand Kaondo',NULL,0),
(2735,30354.5,32181.8,'November 2017',1977,486,327.273,1500,3000,4500,'November','2017',185,'2017-11-22','Crevrand Kaondo',NULL,0),
(2736,33020,35800,'November 2017',2359.22,579.96,990,1790,3580,5370,'November','2017',168,'2017-11-22','Crevrand Kaondo',NULL,0),
(2737,25000,25000,'November 2017',0,405,0,0,0,0,'November','2017',214,'2017-11-22','Crevrand Kaondo',NULL,0),
(2738,29775,31500,'November 2017',1977,486,225,1500,3000,4500,'November','2017',187,'2017-11-22','Crevrand Kaondo','2017-11-23 18:43:14',0),
(2739,43030,51200,'November 2017',3374.08,829.44,5610,2560,5120,7680,'November','2017',162,'2017-11-22','Crevrand Kaondo',NULL,0),
(2740,92051.1,124716,'November 2017',6590,1620,27664.8,5000,10000,15000,'November','2017',218,'2017-11-22','Crevrand Kaondo','2017-11-22 15:31:53',0),
(2741,30000,30000,'November 2017',0,405,0,0,0,0,'November','2017',188,'2017-11-22','Crevrand Kaondo','2017-11-23 18:52:56',0),
(2742,37450,42500,'November 2017',2701.9,664.2,3000,2050,4100,6150,'November','2017',121,'2017-11-22','Crevrand Kaondo',NULL,0),
(2743,41600,49000,'November 2017',3229.1,793.8,4950,2450,4900,7350,'November','2017',111,'2017-11-22','Crevrand Kaondo','2017-11-23 21:45:55',0),
(2744,58322.7,72318.2,'November 2017',2701.9,664.2,11945.5,2050,4100,6150,'November','2017',100,'2017-11-22','Crevrand Kaondo','2017-11-21 20:01:11',0),
(2745,43030,51200,'November 2017',3374.08,829.44,5610,2560,5120,7680,'November','2017',163,'2017-11-22','Crevrand Kaondo',NULL,0),
(2746,49637.5,60125,'November 2017',2899.6,712.8,8287.5,2200,4400,6600,'November','2017',115,'2017-11-22','Crevrand Kaondo',NULL,0),
(2747,25000,25000,'November 2017',0,405,0,0,0,0,'November','2017',136,'2017-11-22','Crevrand Kaondo',NULL,0),
(2748,61159.1,77727.3,'November 2017',3954,972,13568.2,3000,6000,9000,'November','2017',70,'2017-11-22','Crevrand Kaondo',NULL,0),
(2749,45625,54000,'November 2017',2537.15,623.7,6450,1925,3850,5775,'November','2017',122,'2017-11-22','Crevrand Kaondo','2017-11-30 21:27:15',0),
(2750,30000,30000,'November 2017',0,486,0,0,0,0,'November','2017',76,'2017-11-22','Crevrand Kaondo',NULL,0),
(2751,42481.8,49795.4,'November 2017',2800.75,688.5,5188.63,2125,4250,6375,'November','2017',101,'2017-11-22','Crevrand Kaondo',NULL,0),
(2752,86072.7,112318,'November 2017',3031.4,745.2,23945.5,2300,4600,6900,'November','2017',103,'2017-11-22','Crevrand Kaondo',NULL,0),
(2753,25000,25000,'November 2017',0,405,0,0,0,0,'November','2017',140,'2017-11-22','Crevrand Kaondo',NULL,0),
(2754,43030,51200,'November 2017',3374.08,829.44,5610,2560,5120,7680,'November','2017',159,'2017-11-22','Crevrand Kaondo',NULL,0),
(2756,36475,41000,'November 2017',2603.05,639.9,2550,1975,3950,5925,'November','2017',127,'2017-11-22','Crevrand Kaondo',NULL,0),
(2757,35848.9,39284.1,'November 2017',1845.2,453.6,2035.23,1400,2800,4200,'November','2017',104,'2017-11-22','Crevrand Kaondo',NULL,0),
(2758,53040,66600,'November 2017',4388.94,1078.92,10230,3330,6660,9990,'November','2017',156,'2017-11-22','Crevrand Kaondo',NULL,0),
(2759,28100,29500,'November 2017',1845.2,453.6,0,1400,2800,4200,'November','2017',80,'2017-11-22','Crevrand Kaondo',NULL,0),
(2760,43030,51200,'November 2017',3374.08,829.44,5610,2560,5120,7680,'November','2017',157,'2017-11-22','Crevrand Kaondo',NULL,0),
(2761,45811.4,53659.1,'November 2017',1977,486,6347.73,1500,3000,4500,'November','2017',130,'2017-11-22','Crevrand Kaondo',NULL,0),
(2762,38760.8,50301.1,'November 2017',2767.8,680.4,5340.34,2100,4200,6300,'November','2017',114,'2017-11-22','Crevrand Kaondo',NULL,0),
(2763,61159.1,77727.3,'November 2017',3954,972,13568.2,3000,6000,9000,'November','2017',71,'2017-11-22','Crevrand Kaondo',NULL,0),
(2764,43030,51200,'November 2017',3374.08,829.44,5610,2560,5120,7680,'November','2017',161,'2017-11-22','Crevrand Kaondo',NULL,0),
(2765,34448.9,37784.1,'November 2017',2306.5,567,1585.23,1750,3500,5250,'November','2017',74,'2017-11-22','Crevrand Kaondo',NULL,0),
(2766,48250,55000,'November 2017',0,567,6750,0,0,0,'November','2017',144,'2017-11-22','Crevrand Kaondo',NULL,0),
(2767,34209.1,36727.3,'November 2017',1647.5,405,1268.19,1250,2500,3750,'November','2017',194,'2017-11-22','Crevrand Kaondo',NULL,0),
(2768,42250,50000,'November 2017',3295,810,5250,2500,5000,7500,'November','2017',110,'2017-11-22','Crevrand Kaondo',NULL,0),
(2769,41790,54700,'November 2017',0,886.14,6660,0,0,0,'November','2017',85,'2017-11-22','Crevrand Kaondo',NULL,0),
(2770,43550,52000,'November 2017',3426.8,842.4,5850,2600,5200,7800,'November','2017',112,'2017-11-22','Crevrand Kaondo',NULL,0),
(2771,41502.3,48181.8,'November 2017',2603.05,639.9,4704.55,1975,3950,5925,'November','2017',94,'2017-11-22','Crevrand Kaondo',NULL,0),
(2772,31333.3,35000,'November 2017',0,567,750,0,0,0,'November','2017',82,'2017-11-22','Crevrand Kaondo',NULL,0),
(2773,30000,30000,'November 2017',0,486,0,0,0,0,'November','2017',219,'2017-11-22','Crevrand Kaondo',NULL,0),
(2774,36268,46335.2,'November 2017',2306.5,567,4150.56,1750,3500,5250,'November','2017',95,'2017-11-22','Crevrand Kaondo',NULL,0),
(2775,62090.9,78022.7,'November 2017',2998.45,737.1,13656.8,2275,4550,6825,'November','2017',131,'2017-11-22','Crevrand Kaondo',NULL,0),
(2776,34950,36000,'November 2017',0,583.2,1050,0,0,0,'November','2017',199,'2017-11-22','Crevrand Kaondo',NULL,0),
(2777,43030,51200,'November 2017',3374.08,829.44,5610,2560,5120,7680,'November','2017',165,'2017-11-22','Crevrand Kaondo',NULL,0),
(2778,43030,51200,'November 2017',3374.08,829.44,5610,2560,5120,7680,'November','2017',160,'2017-11-22','Crevrand Kaondo',NULL,0),
(2779,25000,25000,'November 2017',0,405,0,0,0,0,'November','2017',135,'2017-11-22','Crevrand Kaondo',NULL,0),
(2780,49629.5,59363.6,'November 2017',2207.65,542.7,8059.08,1675,3350,5025,'November','2017',105,'2017-11-22','Crevrand Kaondo','2017-11-21 20:01:28',0),
(2781,25000,25000,'November 2017',0,405,0,0,0,0,'November','2017',195,'2017-11-22','Crevrand Kaondo',NULL,0),
(2782,43030,51200,'November 2017',3374.08,829.44,5610,2560,5120,7680,'November','2017',158,'2017-11-22','Crevrand Kaondo',NULL,0),
(2783,38413.6,43090.9,'November 2017',1977,486,3177.27,1500,3000,4500,'November','2017',193,'2017-11-22','Crevrand Kaondo',NULL,0),
(2784,30000,30000,'November 2017',0,486,0,0,0,0,'November','2017',198,'2017-11-22','Crevrand Kaondo',NULL,0),
(2785,25000,25000,'November 2017',0,405,0,0,0,0,'November','2017',134,'2017-11-22','Crevrand Kaondo',NULL,0),
(2786,64753.4,81397.7,'November 2017',2603.05,639.9,14669.3,1975,3950,5925,'November','2017',128,'2017-11-22','Crevrand Kaondo',NULL,0),
(2787,66802.3,84431.8,'November 2017',2701.9,664.2,15579.5,2050,4100,6150,'November','2017',205,'2017-11-22','Crevrand Kaondo',NULL,0),
(2788,25000,25000,'November 2017',0,405,0,0,0,0,'November','2017',191,'2017-11-22','Crevrand Kaondo',NULL,0),
(2789,28500,30000,'November 2017',1977,486,0,1500,3000,4500,'November','2017',96,'2017-11-22','Crevrand Kaondo',NULL,0),
(2790,43030,51200,'November 2017',3374.08,829.44,5610,2560,5120,7680,'November','2017',109,'2017-11-22','Crevrand Kaondo',NULL,0),
(2791,28659.1,29909.1,'November 2017',1647.5,405,0,1250,2500,3750,'November','2017',106,'2017-11-22','Crevrand Kaondo',NULL,0),
(2792,22500,25000,'November 2017',0,405,0,0,0,0,'November','2017',200,'2017-11-22','Crevrand Kaondo',NULL,0),
(2793,31755.7,38579.6,'November 2017',0,567,1823.86,0,0,0,'November','2017',133,'2017-11-22','Crevrand Kaondo','2017-11-21 18:11:41',0),
(2794,24250,25000,'November 2016 ',0,405,750,0,0,0,'November','2016 ',223,'2017-11-22','Crevrand Kaondo',NULL,0),
(2795,25000,25000,'November 2017',0,405,0,0,0,0,'November','2017',223,'2017-11-22','Crevrand Kaondo',NULL,0),
(2796,22500,25000,'November 2017',0,405,0,0,0,0,'November','2017',220,'2017-11-22','Crevrand Kaondo','2017-11-21 19:31:14',0),
(2797,42000,49500,'November 2017',3163.2,777.6,5100,2400,4800,7200,'November','2017',39,'2017-11-22','Crevrand Kaondo',NULL,0),
(2798,54946.6,68352.3,'November 2017',3492.7,858.6,10755.7,2650,5300,7950,'November','2017',22,'2017-11-22','Crevrand Kaondo',NULL,0),
(2799,5860800,9001500,'February 2018',593100,145800,2690700,450000,900000,1350000,'February','2018',22,'2018-02-25','Brian Nkhata',NULL,0),
(2800,42000,49500,'February 2018',3163.2,777.6,5100,2400,4800,7200,'February','2018',39,'2018-02-25','Brian Nkhata',NULL,0),
(2801,48750,60000,'February 2018',3954,972,8250,3000,6000,9000,'February','2018',70,'2018-02-25','Brian Nkhata',NULL,0),
(2802,48750,60000,'February 2018',3954,972,8250,3000,6000,9000,'February','2018',71,'2018-02-25','Brian Nkhata',NULL,0),
(2803,32500,35000,'February 2018',2306.5,567,750,1750,3500,5250,'February','2018',74,'2018-02-25','Brian Nkhata',NULL,0),
(2804,30000,30000,'February 2018',0,486,0,0,0,0,'February','2018',76,'2018-02-25','Brian Nkhata',NULL,0),
(2805,28100,29500,'February 2018',1845.2,453.6,0,1400,2800,4200,'February','2018',80,'2018-02-25','Brian Nkhata',NULL,0),
(2806,31333.3,35000,'February 2018',0,567,750,0,0,0,'February','2018',82,'2018-02-25','Brian Nkhata',NULL,0),
(2807,25250,26500,'February 2018',1647.5,405,0,1250,2500,3750,'February','2018',83,'2018-02-25','Brian Nkhata',NULL,0),
(2808,25250,26500,'February 2018',1647.5,405,0,1250,2500,3750,'February','2018',84,'2018-02-25','Brian Nkhata',NULL,0),
(2809,41790,54700,'February 2018',0,886.14,6660,0,0,0,'February','2018',85,'2018-02-25','Brian Nkhata',NULL,0),
(2810,32175,34500,'February 2018',2174.7,534.6,675,1650,3300,4950,'February','2018',88,'2018-02-25','Brian Nkhata',NULL,0),
(2811,38425,44000,'February 2018',2800.75,688.5,3450,2125,4250,6375,'February','2018',89,'2018-02-25','Brian Nkhata',NULL,0),
(2812,38425,44000,'February 2018',2800.75,688.5,3450,2125,4250,6375,'February','2018',90,'2018-02-25','Brian Nkhata',NULL,0),
(2813,44525,53500,'February 2018',3525.65,866.7,6300,2675,5350,8025,'February','2018',92,'2018-02-25','Brian Nkhata',NULL,0),
(2814,36475,41000,'February 2018',2603.05,639.9,2550,1975,3950,5925,'February','2018',94,'2018-02-25','Brian Nkhata',NULL,0),
(2815,28333.3,35000,'February 2018',2306.5,567,750,1750,3500,5250,'February','2018',95,'2018-02-25','Brian Nkhata',NULL,0),
(2816,28500,30000,'February 2018',1977,486,0,1500,3000,4500,'February','2018',96,'2018-02-25','Brian Nkhata',NULL,0),
(2817,32500,35000,'February 2018',2306.5,567,750,1750,3500,5250,'February','2018',97,'2018-02-25','Brian Nkhata',NULL,0),
(2818,36475,41000,'February 2018',2603.05,639.9,2550,1975,3950,5925,'February','2018',99,'2018-02-25','Brian Nkhata',NULL,0),
(2819,37450,42500,'February 2018',2701.9,664.2,3000,2050,4100,6150,'February','2018',100,'2018-02-25','Brian Nkhata',NULL,0),
(2820,38425,44000,'February 2018',2800.75,688.5,3450,2125,4250,6375,'February','2018',101,'2018-02-25','Brian Nkhata',NULL,0),
(2821,39400,45500,'February 2018',2899.6,712.8,3900,2200,4400,6600,'February','2018',102,'2018-02-25','Brian Nkhata',NULL,0),
(2822,40700,47500,'February 2018',3031.4,745.2,4500,2300,4600,6900,'February','2018',103,'2018-02-25','Brian Nkhata',NULL,0),
(2823,28100,29500,'February 2018',1845.2,453.6,0,1400,2800,4200,'February','2018',104,'2018-02-25','Brian Nkhata',NULL,0),
(2824,32575,35000,'February 2018',2207.65,542.7,750,1675,3350,5025,'February','2018',105,'2018-02-25','Brian Nkhata',NULL,0),
(2825,25250,26500,'February 2018',1647.5,405,0,1250,2500,3750,'February','2018',106,'2018-02-25','Brian Nkhata',NULL,0),
(2826,40950,48000,'February 2018',3163.2,777.6,4650,2400,4800,7200,'February','2018',107,'2018-02-25','Brian Nkhata',NULL,0),
(2827,42900,51000,'February 2018',3360.9,826.2,5550,2550,5100,7650,'February','2018',108,'2018-02-25','Brian Nkhata',NULL,0),
(2828,28137.3,51200,'February 2018',0.397824,0.04608,23062.6,0.0500622,0.0438044,0.0938667,'February','2018',109,'2018-02-27','Brian Nkhata',NULL,0),
(2829,27993.3,50000,'February 2018',0.3885,0.045,22006.6,0.0488889,0.0427778,0.0916667,'February','2018',110,'2018-02-27','Brian Nkhata',NULL,0),
(2830,27873.3,49000,'February 2018',0.38073,0.0441,21126.6,0.0479111,0.0419222,0.0898333,'February','2018',111,'2018-02-27','Brian Nkhata',NULL,0),
(2831,42050,51500,'March 2018',4105,810,4950,2500,5810,8310,'March','2018',102,'2018-03-11','Brian Nkhata','2018-03-11 07:31:21',0),
(2832,37225,41000,'March 2018',3242.95,639.9,1800,1975,4589.9,6564.9,'March','2018',99,'2018-03-11','Brian Nkhata','2018-03-11 07:43:49',0),
(2833,0,0,'March 2018',0,0,0,0,0,0,'March','2018',107,'2018-03-11','Brian Nkhata',NULL,0),
(2834,43650,51000,'March 2018',4187.1,826.2,4800,2550,5926.2,8476.2,'March','2018',108,'2018-03-11','Brian Nkhata','2018-03-11 11:04:58',0),
(2835,1500,1500,'March 2018',0,0,0,0,0,0,'March','2018',88,'2018-03-11','Brian Nkhata',NULL,0),
(2836,25250,26500,'March 2018',2052.5,405,0,1250,2905,4155,'March','2018',83,'2018-03-11','Brian Nkhata',NULL,0),
(2837,25250,26500,'March 2018',2052.5,405,0,1250,2905,4155,'March','2018',84,'2018-03-11','Brian Nkhata',NULL,0),
(2838,49500,60000,'March 2018',4926,972,7500,3000,6972,9972,'March','2018',71,'2018-03-11','Brian Nkhata',NULL,0),
(2839,32500,35000,'March 2018',2873.5,567,750,1750,4067,5817,'March','2018',74,'2018-03-11','Brian Nkhata',NULL,0);

/*Table structure for table `salary_change` */

DROP TABLE IF EXISTS `salary_change`;

CREATE TABLE `salary_change` (
  `salary_change_id` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `visible` int(1) NOT NULL DEFAULT '1',
  `date_changed` datetime DEFAULT NULL,
  `tea_allowance` int(11) DEFAULT NULL,
  PRIMARY KEY (`salary_change_id`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=latin1;

/*Data for the table `salary_change` */

insert  into `salary_change`(`salary_change_id`,`month`,`year`,`employee_id`,`salary`,`visible`,`date_changed`,`tea_allowance`) values 
(28,'February','2018',84,250000000,1,'2018-02-25 05:42:33',NULL),
(27,'February','2018',83,25000,1,'2018-02-25 05:42:33',NULL),
(26,'February','2018',82,35000,1,'2018-02-25 05:42:33',NULL),
(25,'February','2018',80,28000,1,'2018-02-25 05:42:33',NULL),
(24,'February','2018',76,30000,1,'2018-02-25 05:42:33',NULL),
(23,'February','2018',74,35000,1,'2018-02-25 05:42:33',NULL),
(22,'February','2018',71,60000,1,'2018-02-25 05:42:33',NULL),
(21,'February','2018',70,60000,1,'2018-02-25 05:42:32',NULL),
(20,'February','2018',39,48000,1,'2018-02-25 05:42:32',NULL),
(19,'February','2018',22,9000000,1,'2018-02-25 05:42:32',NULL),
(29,'February','2018',85,54700,1,'2018-02-25 05:42:33',NULL),
(30,'February','2018',88,33000,1,'2018-02-25 05:42:33',NULL),
(31,'February','2018',89,42500,1,'2018-02-25 05:42:33',NULL),
(32,'February','2018',90,42500,1,'2018-02-25 05:42:33',NULL),
(33,'February','2018',92,53500,1,'2018-02-25 05:42:33',NULL),
(34,'February','2018',94,39500,1,'2018-02-25 05:42:33',NULL),
(35,'February','2018',95,35000,1,'2018-02-25 05:42:33',NULL),
(36,'February','2018',96,30000,1,'2018-02-25 05:42:33',NULL),
(37,'February','2018',97,35000,1,'2018-02-25 05:42:33',NULL),
(38,'February','2018',99,39500,1,'2018-02-25 05:42:33',NULL),
(39,'February','2018',100,41000,1,'2018-02-25 05:42:33',NULL),
(40,'February','2018',101,42500,1,'2018-02-25 05:42:33',NULL),
(41,'February','2018',102,44000,1,'2018-02-25 05:42:33',NULL),
(42,'February','2018',103,46000,1,'2018-02-25 05:42:33',NULL),
(43,'February','2018',104,28000,1,'2018-02-25 05:42:33',NULL),
(44,'February','2018',105,33500,1,'2018-02-25 05:42:33',NULL),
(45,'February','2018',106,25000,1,'2018-02-25 05:42:33',NULL),
(46,'February','2018',107,48000,1,'2018-02-25 05:42:33',NULL),
(47,'February','2018',108,51000,1,'2018-02-25 05:42:33',NULL),
(48,'February','2018',109,51200,1,'2018-02-25 05:42:33',NULL),
(49,'February','2018',110,50000,1,'2018-02-25 05:42:33',NULL),
(50,'February','2018',111,49000,1,'2018-02-25 05:42:33',NULL),
(51,'February','2018',112,52000,1,'2018-02-25 05:42:33',NULL),
(52,'February','2018',113,35500,1,'2018-02-25 05:42:33',NULL),
(53,'February','2018',114,42000,1,'2018-02-25 05:42:33',NULL),
(54,'February','2018',115,44000,1,'2018-02-25 05:42:33',NULL),
(55,'February','2018',117,33000,1,'2018-02-25 05:42:33',NULL),
(56,'February','2018',118,42500,1,'2018-02-25 05:42:33',NULL),
(57,'February','2018',119,42500,1,'2018-02-25 05:42:33',NULL),
(58,'February','2018',121,41000,1,'2018-02-25 05:42:33',NULL),
(59,'February','2018',122,38500,1,'2018-02-25 05:42:33',NULL),
(60,'February','2018',127,39500,1,'2018-02-25 05:42:33',NULL),
(61,'February','2018',131,45500,1,'2018-02-25 05:42:33',NULL),
(62,'February','2018',133,35000,1,'2018-02-25 05:42:33',NULL),
(63,'February','2018',134,25000,1,'2018-02-25 05:42:33',NULL),
(64,'February','2018',135,25000,1,'2018-02-25 05:42:33',NULL),
(65,'February','2018',145,30000,1,'2018-02-25 05:42:33',NULL),
(66,'February','2018',146,65000,1,'2018-02-25 05:42:33',NULL),
(67,'January','2016',22,2147483647,1,'2018-02-27 11:56:35',NULL),
(68,'February','2018',22,2147483647,1,'2018-02-27 12:11:11',NULL),
(69,'February','2018',70,60000,1,'2018-02-27 12:11:11',NULL),
(70,'February','2018',80,28000,1,'2018-02-27 12:11:11',NULL),
(71,'March','2018',83,25000,1,'2018-03-05 09:57:18',NULL),
(72,'March','2018',82,35000,1,'2018-03-05 09:57:18',NULL),
(73,'March','2018',80,28000,1,'2018-03-05 09:57:18',NULL),
(74,'March','2018',84,25000,1,'2018-03-05 09:58:52',NULL),
(75,'January','2016',102,50000,1,'2018-03-09 20:33:23',NULL),
(76,'March','2018',84,25000,1,'2018-03-11 16:24:48',NULL),
(77,'March','2018',83,25000,1,'2018-03-11 16:24:48',NULL),
(78,'March','2018',82,35000,1,'2018-03-11 16:24:48',NULL),
(79,'March','2018',80,28000,1,'2018-03-11 16:24:48',NULL),
(80,'March','2018',76,30000,1,'2018-03-11 16:24:48',NULL),
(81,'March','2018',74,35000,1,'2018-03-11 16:24:48',NULL),
(82,'March','2018',71,60000,1,'2018-03-11 16:24:48',NULL),
(83,'March','2018',70,60000,1,'2018-03-11 16:24:48',NULL),
(84,'March','2018',39,48000,1,'2018-03-11 16:24:48',NULL),
(85,'March','2018',22,2147483647,1,'2018-03-11 16:24:48',NULL),
(86,'March','2018',85,54700,1,'2018-03-11 16:24:48',NULL),
(87,'March','2018',88,33000,1,'2018-03-11 16:24:48',NULL),
(88,'March','2018',89,42500,1,'2018-03-11 16:24:48',NULL),
(89,'March','2018',90,42500,1,'2018-03-11 16:24:48',NULL),
(90,'March','2018',92,53500,1,'2018-03-11 16:24:48',NULL),
(91,'March','2018',94,39500,1,'2018-03-11 16:24:48',NULL),
(92,'March','2018',95,35000,1,'2018-03-11 16:24:48',NULL),
(93,'March','2018',96,30000,1,'2018-03-11 16:24:48',NULL),
(94,'March','2018',97,35000,1,'2018-03-11 16:24:48',NULL),
(95,'March','2018',99,39500,1,'2018-03-11 16:24:48',NULL),
(96,'March','2018',100,41000,1,'2018-03-11 16:24:48',NULL),
(97,'March','2018',101,42500,1,'2018-03-11 16:24:48',NULL),
(98,'March','2018',102,50000,1,'2018-03-11 16:24:48',NULL),
(99,'March','2018',103,46000,1,'2018-03-11 16:24:48',NULL),
(100,'March','2018',104,28000,1,'2018-03-11 16:24:48',NULL),
(101,'March','2018',105,33500,1,'2018-03-11 16:24:48',NULL),
(102,'March','2018',106,25000,1,'2018-03-11 16:24:48',NULL),
(103,'March','2018',107,48000,1,'2018-03-11 16:24:48',NULL),
(104,'March','2018',108,51000,1,'2018-03-11 16:24:49',NULL),
(105,'March','2018',109,51200,1,'2018-03-11 16:24:49',NULL),
(106,'March','2018',110,50000,1,'2018-03-11 16:24:49',NULL),
(107,'March','2018',111,49000,1,'2018-03-11 16:24:49',NULL),
(108,'March','2018',112,52000,1,'2018-03-11 16:24:49',NULL),
(109,'March','2018',113,35500,1,'2018-03-11 16:24:49',NULL),
(110,'March','2018',114,42000,1,'2018-03-11 16:24:49',NULL),
(111,'March','2018',115,44000,1,'2018-03-11 16:24:49',NULL),
(112,'March','2018',117,33000,1,'2018-03-11 16:24:49',NULL),
(113,'March','2018',118,42500,1,'2018-03-11 16:24:49',NULL),
(114,'March','2018',119,42500,1,'2018-03-11 16:24:49',NULL),
(115,'March','2018',121,41000,1,'2018-03-11 16:24:49',NULL),
(116,'March','2018',122,38500,1,'2018-03-11 16:24:49',NULL),
(117,'March','2018',127,39500,1,'2018-03-11 16:24:49',NULL),
(118,'March','2018',131,45500,1,'2018-03-11 16:24:49',NULL),
(119,'March','2018',133,35000,1,'2018-03-11 16:24:49',NULL),
(120,'March','2018',134,25000,1,'2018-03-11 16:24:49',NULL),
(121,'March','2018',135,25000,1,'2018-03-11 16:24:49',NULL),
(122,'March','2018',145,30000,1,'2018-03-11 16:24:49',NULL),
(123,'March','2018',146,65000,1,'2018-03-11 16:24:49',NULL),
(124,'March','2018',22,2147483647,1,'2018-03-11 16:24:49',NULL),
(125,'March','2018',22,2147483647,1,'2018-03-11 16:24:49',NULL),
(126,'March','2018',70,60000,1,'2018-03-11 16:24:49',NULL),
(127,'March','2018',80,28000,1,'2018-03-11 16:24:49',NULL),
(128,'March','2018',83,25000,1,'2018-03-11 16:24:49',NULL),
(129,'March','2018',82,35000,1,'2018-03-11 16:24:49',NULL),
(130,'March','2018',80,28000,1,'2018-03-11 16:24:49',NULL),
(131,'March','2018',84,25000,1,'2018-03-11 16:24:49',NULL),
(132,'March','2018',102,50000,1,'2018-03-11 16:24:49',NULL);

/*Table structure for table `scheme` */

DROP TABLE IF EXISTS `scheme`;

CREATE TABLE `scheme` (
  `scheme_id` int(11) NOT NULL AUTO_INCREMENT,
  `scheme_name` varchar(100) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`scheme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `scheme` */

insert  into `scheme`(`scheme_id`,`scheme_name`,`deleted`) values 
(1,'MASM',0),
(2,'Thandizo Plus',0),
(3,'Umoyo',1),
(4,'Ufulu',0),
(5,'Thandizo',0),
(6,'Ufulu FB',0),
(7,'Makolo',0),
(8,NULL,1),
(9,'xxxxxxxxxxxxxxxxx',0);

/*Table structure for table `scheme_bill` */

DROP TABLE IF EXISTS `scheme_bill`;

CREATE TABLE `scheme_bill` (
  `scheme_bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`scheme_bill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=latin1;

/*Data for the table `scheme_bill` */

insert  into `scheme_bill`(`scheme_bill_id`,`amount`,`employee_id`,`date`) values 
(1,4100,22,'0000-00-00'),
(2,14800,1,'0000-00-00'),
(3,14800,70,'0000-00-00'),
(5,14800,71,'0000-00-00'),
(14,2900,86,'0000-00-00'),
(15,4100,85,'0000-00-00'),
(17,4100,83,'0000-00-00'),
(18,2900,81,'0000-00-00'),
(19,4100,80,'0000-00-00'),
(20,2900,79,'0000-00-00'),
(21,4100,39,'0000-00-00'),
(22,12300,74,'0000-00-00'),
(29,2900,81,'0000-00-00'),
(31,2900,79,'0000-00-00'),
(32,2900,39,'0000-00-00'),
(33,8700,95,'0000-00-00'),
(34,2900,74,'0000-00-00'),
(37,13200,70,'0000-00-00'),
(38,13200,71,'0000-00-00'),
(39,13200,85,'0000-00-00'),
(42,2900,81,'0000-00-00'),
(43,2900,80,'0000-00-00'),
(44,2900,79,'0000-00-00'),
(45,2900,74,'0000-00-00'),
(47,8700,95,'0000-00-00'),
(48,2900,132,'0000-00-00'),
(49,2900,131,'0000-00-00'),
(50,2900,130,'0000-00-00'),
(51,2900,129,'0000-00-00'),
(52,2900,128,'0000-00-00'),
(53,2900,127,'0000-00-00'),
(54,2900,126,'0000-00-00'),
(55,2900,122,'0000-00-00'),
(58,2900,120,'0000-00-00'),
(59,26400,1,'0000-00-00'),
(63,2900,116,'0000-00-00'),
(64,11600,115,'0000-00-00'),
(65,5800,114,'0000-00-00'),
(66,2900,113,'0000-00-00'),
(67,13200,112,'0000-00-00'),
(68,13200,111,'0000-00-00'),
(71,2900,105,'0000-00-00'),
(72,2900,104,'0000-00-00'),
(73,2900,103,'0000-00-00'),
(75,2900,101,'0000-00-00'),
(76,2900,100,'0000-00-00'),
(79,2900,96,'0000-00-00'),
(80,2900,94,'0000-00-00'),
(81,2900,158,NULL),
(82,2900,157,NULL),
(83,2900,168,NULL),
(84,2900,156,NULL),
(85,2900,159,NULL),
(86,2900,162,NULL),
(87,2900,163,NULL),
(88,2900,160,NULL),
(89,2900,161,NULL),
(90,2900,167,NULL),
(91,2900,166,NULL),
(92,2900,164,NULL),
(93,2900,165,NULL),
(94,13200,155,NULL),
(95,14800,155,NULL),
(96,3750,22,NULL),
(97,0,22,NULL),
(98,11250,71,NULL),
(99,3750,39,NULL),
(100,11250,70,NULL),
(101,3750,102,NULL),
(102,11250,108,NULL),
(103,3750,84,NULL),
(104,3750,99,NULL),
(105,11250,107,NULL),
(106,3750,117,NULL),
(107,3750,89,NULL),
(108,3750,97,NULL),
(109,3750,118,NULL),
(110,3750,119,NULL),
(111,3750,121,NULL),
(112,11250,111,NULL),
(113,3750,74,NULL),
(114,3750,80,NULL);

/*Table structure for table `settings` */

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL AUTO_INCREMENT,
  `setting` varchar(100) DEFAULT NULL,
  `banner` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`settings_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `settings` */

/*Table structure for table `tax_config` */

DROP TABLE IF EXISTS `tax_config`;

CREATE TABLE `tax_config` (
  `tax_config_id` int(11) NOT NULL AUTO_INCREMENT,
  `band1_top` double DEFAULT NULL,
  `band2_top` double DEFAULT NULL,
  `band3_top` double DEFAULT NULL,
  `band4_top` double DEFAULT NULL,
  `band1_rate` double DEFAULT NULL,
  `band2_rate` double DEFAULT NULL,
  `band3_rate` double DEFAULT NULL,
  `band4_rate` double DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL,
  `month` varchar(100) DEFAULT NULL,
  `current` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tax_config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `tax_config` */

insert  into `tax_config`(`tax_config_id`,`band1_top`,`band2_top`,`band3_top`,`band4_top`,`band1_rate`,`band2_rate`,`band3_rate`,`band4_rate`,`year`,`month`,`current`) values 
(9,20000,25000,25001,44444444,0,0.0015,0.003,0.88,'2014','July',0),
(14,20000,25000,30000,30000,0,0.15,0.3,0.3,'2016','January',0),
(17,30000,35000,40000,40000,0,15,30,30,'2017','July',0),
(18,30000,3.5001e34,40000,40000,0,15,30,30,'2018','February',1),
(19,23,6,90,77,0.44,0.06,0.08,0.09,'2021','July',0);

/*Table structure for table `trashed_employees` */

DROP TABLE IF EXISTS `trashed_employees`;

CREATE TABLE `trashed_employees` (
  `trashed_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `date_trashed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`trashed_id`),
  KEY `emp_id` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

/*Data for the table `trashed_employees` */

insert  into `trashed_employees`(`trashed_id`,`employee_id`,`action`,`reason`,`date_trashed`) values 
(1,14,'Fired','resighn','2017-01-04 17:22:33'),
(2,33,'Fired','End of Contract','2017-01-08 06:27:34'),
(3,32,'Fired','End of Contract','2017-01-08 06:28:07'),
(4,31,'Fired','','2017-01-08 06:28:21'),
(5,28,'Fired','','2017-01-08 06:29:11'),
(6,26,'Fired','','2017-01-08 06:29:52'),
(7,20,'Fired','','2017-01-08 06:30:40'),
(8,25,'Fired','','2017-01-08 06:31:08'),
(9,19,'Fired','','2017-01-08 06:31:59'),
(10,17,'Fired','','2017-01-08 06:33:37'),
(11,16,'Fired','','2017-01-08 06:34:19'),
(12,15,'Fired','','2017-01-08 06:34:48'),
(13,13,'Fired','','2017-01-08 06:35:33'),
(14,12,'Fired','','2017-01-08 06:36:11'),
(15,5,'Fired','','2017-01-08 06:37:22'),
(16,7,'Fired','','2017-01-08 06:38:11'),
(17,6,'Fired','','2017-01-08 06:40:09'),
(18,10,'Fired','End of Contract','2017-01-08 06:58:00'),
(19,35,'Fired','','2017-01-10 07:08:11'),
(20,21,'Fired','','2017-01-10 07:13:03'),
(21,11,'Fired','','2017-01-10 07:13:22'),
(22,18,'Fired','','2017-01-10 07:13:37'),
(23,41,'Fired','','2017-01-25 17:23:28'),
(24,36,'Fired','','2017-01-25 17:29:35'),
(25,29,'Fired','fired','2017-01-25 17:38:03'),
(26,37,'Fired','','2017-01-25 17:43:29'),
(27,9,'Fired','','2017-01-25 17:45:36'),
(28,23,'Fired','','2017-01-25 17:47:27'),
(29,8,'Fired','','2017-01-25 17:50:02'),
(30,4,'Fired','','2017-01-25 17:50:39'),
(31,45,'Fired','','2017-03-10 10:05:03'),
(32,51,'Fired','','2017-03-10 10:05:21'),
(33,2,'Fired','','2017-03-10 10:05:35'),
(34,42,'Fired','','2017-03-10 10:06:03'),
(35,61,'Fired','','2017-03-10 10:06:29'),
(36,62,'Fired','','2017-03-10 10:06:46'),
(37,65,'Fired','','2017-03-10 10:07:17'),
(38,63,'Fired','','2017-03-10 10:07:53'),
(39,56,'Fired','','2017-03-10 10:08:09'),
(40,64,'Fired','','2017-03-10 10:08:30'),
(41,52,'Fired','','2017-03-10 10:08:47'),
(42,68,'Fired','','2017-03-10 10:09:03'),
(43,75,'Fired','','2017-03-10 10:09:22'),
(44,59,'Fired','','2017-03-10 10:09:38'),
(45,66,'Fired','','2017-03-10 10:09:53'),
(46,48,'Fired','','2017-03-10 10:10:11'),
(47,50,'Fired','','2017-03-10 10:10:38'),
(48,49,'Fired','','2017-03-10 10:10:54'),
(49,46,'Fired','','2017-03-10 10:11:16'),
(50,58,'Fired','','2017-03-10 10:11:41'),
(51,78,'Fired','','2017-03-10 10:11:57'),
(52,72,'Fired','','2017-03-10 10:12:13'),
(53,57,'Fired','','2017-03-10 10:12:37'),
(54,38,'Fired','','2017-03-10 10:12:53'),
(55,47,'Fired','','2017-03-10 10:13:14'),
(56,55,'Fired','','2017-03-10 22:36:05'),
(57,54,'Fired','','2017-03-10 22:36:26'),
(58,98,'Fired','','2017-03-10 22:36:39'),
(59,67,'Fired','','2017-03-10 22:37:18'),
(60,86,'Resigned','resigned','2017-03-20 08:14:20'),
(61,24,'Resigned','resigned','2017-03-20 08:14:56'),
(62,69,'Resigned','resigned','2017-03-20 08:15:25'),
(63,43,'Resigned','resigned','2017-03-20 08:16:06'),
(64,73,'Resigned','resigned','2017-03-20 08:16:54'),
(65,27,'Fired','End of Contract','2017-03-20 08:17:27'),
(66,44,'Resigned','End of Contract','2017-03-20 08:17:52'),
(67,60,'Resigned','End of Contract','2017-03-20 14:59:08'),
(68,91,'Fired','fired','2017-03-20 15:00:10'),
(69,3,'Fired','End of Contract','2017-03-20 15:00:28'),
(70,30,'Resigned','End of Contract','2017-03-20 15:02:54'),
(71,53,'Resigned','resigned','2017-03-20 15:07:36'),
(72,34,'Fired','End of Contract','2017-03-20 19:08:22'),
(74,125,'Fired','End of Contract','2017-03-23 06:35:49'),
(75,77,'Fired','End of Contract','2017-03-23 06:51:10'),
(76,141,'Fired','fired','2017-03-23 07:13:31'),
(78,143,'Fired','','2017-03-23 14:15:11');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `user_type_id` int(11) DEFAULT NULL COMMENT '0-admin,1-other',
  `image_link` varchar(100) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `user_type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  KEY `username` (`firstname`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`user_id`,`firstname`,`lastname`,`email`,`password`,`user_type_id`,`image_link`,`status`,`user_type`) values 
(1,'Brian','Nkhata','admin@hr.com','admin',1,NULL,1,0),
(2,'Jayloss','Nkhata','jay@hr.com','jay',3,NULL,1,2);

/*Table structure for table `user_type` */

DROP TABLE IF EXISTS `user_type`;

CREATE TABLE `user_type` (
  `user_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` int(11) DEFAULT '0',
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `user_type` */

insert  into `user_type`(`user_type_id`,`user_type`,`title`) values 
(1,0,'Super Administrator'),
(2,1,'Assistant Administrator'),
(3,2,'Normal User');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `usertype_id` int(11) DEFAULT '1',
  `photo` varchar(100) DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`user_id`,`fname`,`lname`,`username`,`password`,`usertype_id`,`photo`,`active`) values 
(6,'Brian','Nkhata','admin','7b7a53e239400a13bd6be6c91c4f6c4e',1,'da1Ms.jpg',1),
(8,'Jayloss','Nkhata','jay','baba327d241746ee0829e7e88117d4d5',2,'BvITV.jpg',1),
(11,'Crevrand','Kaondo','crev55','67e96f7e5ae084529535e5e346c1ef16',1,'C5TFc.jpg',1);

/*Table structure for table `usertype` */

DROP TABLE IF EXISTS `usertype`;

CREATE TABLE `usertype` (
  `usertype_id` int(11) NOT NULL AUTO_INCREMENT,
  `usertype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`usertype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `usertype` */

insert  into `usertype`(`usertype_id`,`usertype`) values 
(1,'Administrator'),
(3,'Office Assistant'),
(4,'Any');

/*Table structure for table `year` */

DROP TABLE IF EXISTS `year`;

CREATE TABLE `year` (
  `year_id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`year_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

/*Data for the table `year` */

insert  into `year`(`year_id`,`year`) values 
(1,'2016'),
(2,'2017'),
(3,'2018'),
(4,'2019'),
(5,'2020'),
(6,'2021'),
(7,'2022'),
(8,'2023'),
(9,'2024'),
(10,'2025'),
(11,'2026'),
(12,'2027'),
(13,'2028'),
(14,'2029'),
(15,'2030'),
(16,'2007'),
(17,'2008'),
(18,'2009'),
(19,'2010'),
(20,'2011'),
(21,'2012'),
(22,'2013'),
(23,'2014'),
(24,'2015'),
(25,'2001'),
(26,'2002'),
(27,'2003'),
(28,'2004'),
(29,'2005'),
(30,'2006'),
(31,'2007'),
(32,'2008'),
(33,'2009'),
(34,'2010'),
(35,'2011'),
(36,'2012'),
(37,'2013'),
(38,'2014');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
