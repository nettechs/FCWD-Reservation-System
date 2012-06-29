# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.1.49-3)
# Database: reservation
# Generation Time: 2012-06-24 21:27:34 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table inventory
# ------------------------------------------------------------

DROP TABLE IF EXISTS `inventory`;

CREATE TABLE `inventory` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Location ID',
  `description` varchar(256) NOT NULL DEFAULT '' COMMENT 'Description of location',
  `price` decimal(4,2) unsigned NOT NULL COMMENT 'Price of location per day',
  `active` tinyint(1) unsigned NOT NULL COMMENT 'Is location reservable',
  `park` int(1) unsigned NOT NULL COMMENT 'Walleye=1 Guthrie=2 etc...',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table reservations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `reservations`;

CREATE TABLE `reservations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL COMMENT 'Calendar date',
  `w1` int(10) unsigned DEFAULT NULL COMMENT 'Walleye pad #1',
  `w2` int(10) unsigned DEFAULT NULL,
  `w3` int(10) unsigned DEFAULT NULL,
  `w4` int(10) unsigned DEFAULT NULL,
  `w5` int(10) unsigned DEFAULT NULL,
  `w6` int(10) unsigned DEFAULT NULL,
  `w7` int(10) unsigned DEFAULT NULL,
  `w8` int(10) unsigned DEFAULT NULL,
  `w9` int(10) unsigned DEFAULT NULL,
  `w10` int(10) unsigned DEFAULT NULL,
  `w11` int(10) unsigned DEFAULT NULL,
  `w12` int(10) unsigned DEFAULT NULL,
  `w13` int(10) unsigned DEFAULT NULL,
  `w14` int(10) unsigned DEFAULT NULL,
  `w15` int(10) unsigned DEFAULT NULL,
  `w16` int(10) unsigned DEFAULT NULL,
  `w17` int(10) unsigned DEFAULT NULL,
  `w18` int(10) unsigned DEFAULT NULL,
  `w19` int(10) unsigned DEFAULT NULL,
  `w20` int(10) unsigned DEFAULT NULL,
  `w21` int(10) unsigned DEFAULT NULL,
  `w22` int(10) unsigned DEFAULT NULL,
  `w23` int(10) unsigned DEFAULT NULL,
  `w24` int(10) unsigned DEFAULT NULL,
  `w25` int(10) unsigned DEFAULT NULL,
  `w26` int(10) unsigned DEFAULT NULL,
  `w27` int(10) unsigned DEFAULT NULL,
  `w28` int(10) unsigned DEFAULT NULL,
  `w29` int(10) unsigned DEFAULT NULL,
  `w30` int(10) unsigned DEFAULT NULL,
  `w31` int(10) unsigned DEFAULT NULL,
  `w32` int(10) unsigned DEFAULT NULL,
  `w33` int(10) unsigned DEFAULT NULL,
  `w34` int(10) unsigned DEFAULT NULL,
  `w35` int(10) unsigned DEFAULT NULL,
  `w36` int(10) unsigned DEFAULT NULL,
  `w37` int(10) unsigned DEFAULT NULL,
  `w38` int(10) unsigned DEFAULT NULL,
  `w39` int(10) unsigned DEFAULT NULL,
  `w40` int(10) unsigned DEFAULT NULL,
  `w41` int(10) unsigned DEFAULT NULL,
  `w42` int(10) unsigned DEFAULT NULL,
  `w43` int(10) unsigned DEFAULT NULL,
  `w44` int(10) unsigned DEFAULT NULL,
  `w45` int(10) unsigned DEFAULT NULL,
  `w46` int(10) unsigned DEFAULT NULL,
  `w47` int(10) unsigned DEFAULT NULL,
  `w48` int(10) unsigned DEFAULT NULL,
  `w49` int(10) unsigned DEFAULT NULL,
  `w50` int(10) unsigned DEFAULT NULL,
  `w51` int(10) unsigned DEFAULT NULL,
  `w52` int(10) unsigned DEFAULT NULL,
  `w53` int(10) unsigned DEFAULT NULL,
  `w54` int(10) unsigned DEFAULT NULL,
  `w55` int(10) unsigned DEFAULT NULL,
  `w56` int(10) unsigned DEFAULT NULL,
  `w57` int(10) unsigned DEFAULT NULL,
  `w58` int(10) unsigned DEFAULT NULL,
  `w59` int(10) unsigned DEFAULT NULL,
  `w60` int(10) unsigned DEFAULT NULL,
  `w61` int(10) unsigned DEFAULT NULL,
  `w62` int(10) unsigned DEFAULT NULL,
  `w63` int(10) unsigned DEFAULT NULL,
  `w64` int(10) unsigned DEFAULT NULL,
  `w65` int(10) unsigned DEFAULT NULL,
  `w66` int(10) unsigned DEFAULT NULL,
  `wpav` int(10) unsigned DEFAULT NULL COMMENT 'Walleye pavilion',
  `ws1` int(10) unsigned DEFAULT NULL COMMENT 'Walleye shelter #1',
  `ws2` int(10) unsigned DEFAULT NULL,
  `ws3` int(10) unsigned DEFAULT NULL,
  `ws4` int(10) unsigned DEFAULT NULL,
  `ws5` int(10) unsigned DEFAULT NULL,
  `g1` int(10) unsigned DEFAULT NULL COMMENT 'Guthrie pad #1',
  `g2` int(10) unsigned DEFAULT NULL,
  `g3` int(10) unsigned DEFAULT NULL,
  `g4` int(10) unsigned DEFAULT NULL,
  `g5` int(10) unsigned DEFAULT NULL,
  `g6` int(10) unsigned DEFAULT NULL,
  `g7` int(10) unsigned DEFAULT NULL,
  `g8` int(10) unsigned DEFAULT NULL,
  `g9` int(10) unsigned DEFAULT NULL,
  `g10` int(10) unsigned DEFAULT NULL,
  `g11` int(10) unsigned DEFAULT NULL,
  `g12` int(10) unsigned DEFAULT NULL,
  `g13` int(10) unsigned DEFAULT NULL,
  `g14` int(10) unsigned DEFAULT NULL,
  `g15` int(10) unsigned DEFAULT NULL,
  `g16` int(10) unsigned DEFAULT NULL,
  `g17` int(10) unsigned DEFAULT NULL,
  `g18` int(10) unsigned DEFAULT NULL,
  `g19` int(10) unsigned DEFAULT NULL,
  `g20` int(10) unsigned DEFAULT NULL,
  `g21` int(10) unsigned DEFAULT NULL,
  `g22` int(10) unsigned DEFAULT NULL,
  `g23` int(10) unsigned DEFAULT NULL,
  `g24` int(10) unsigned DEFAULT NULL,
  `g25` int(10) unsigned DEFAULT NULL,
  `g26` int(10) unsigned DEFAULT NULL,
  `g27` int(10) unsigned DEFAULT NULL,
  `g28` int(10) unsigned DEFAULT NULL,
  `g29` int(10) unsigned DEFAULT NULL,
  `g30` int(10) unsigned DEFAULT NULL,
  `g31` int(10) unsigned DEFAULT NULL,
  `g32` int(10) unsigned DEFAULT NULL,
  `g33` int(10) unsigned DEFAULT NULL,
  `g34` int(10) unsigned DEFAULT NULL,
  `g35` int(10) unsigned DEFAULT NULL,
  `g36` int(10) unsigned DEFAULT NULL,
  `g37` int(10) unsigned DEFAULT NULL,
  `g38` int(10) unsigned DEFAULT NULL,
  `g39` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table transaction
# ------------------------------------------------------------

DROP TABLE IF EXISTS `transaction`;

CREATE TABLE `transaction` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Transaction number',
  `first` tinytext NOT NULL COMMENT 'Customer first name',
  `last` tinytext NOT NULL COMMENT 'Customer last name',
  `dl` tinytext NOT NULL COMMENT 'Customer driver''s license',
  `dob` date NOT NULL COMMENT 'Customer date of birth',
  `email` varchar(256) NOT NULL DEFAULT '' COMMENT 'Customer email address',
  `phone` varchar(15) NOT NULL DEFAULT '' COMMENT 'Customer phone number',
  `transdate` date NOT NULL COMMENT 'date we collect money',
  `tstamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'last edit to this transaction',
  `agent` int(2) unsigned NOT NULL COMMENT 'website or user',
  `startdate` date NOT NULL COMMENT 'Reservation first day',
  `enddate` date NOT NULL COMMENT 'Reservation last day',
  `unit1` varchar(256) NOT NULL DEFAULT '' COMMENT 'location 1',
  `unit1price` decimal(4,2) unsigned NOT NULL COMMENT 'price of location 1',
  `unit2` varchar(256) NOT NULL DEFAULT '' COMMENT 'location 2',
  `unit2price` decimal(4,2) unsigned NOT NULL COMMENT 'price of location2',
  `unit3` varchar(256) NOT NULL DEFAULT '' COMMENT 'location 3',
  `unit3price` decimal(4,2) unsigned NOT NULL COMMENT 'price of location 3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `uname` varchar(10) NOT NULL DEFAULT '' COMMENT 'username',
  `pword` varchar(10) NOT NULL DEFAULT '' COMMENT 'password',
  `level` tinyint(1) unsigned NOT NULL COMMENT 'access level',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
