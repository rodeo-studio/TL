# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: external-db.s124560.gridserver.com (MySQL 5.1.63-rel13.4)
# Database: db124560_rodeo_staging
# Generation Time: 2016-07-05 09:07:45 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table AboutPage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `AboutPage`;

CREATE TABLE `AboutPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Colour` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `AboutPage` WRITE;
/*!40000 ALTER TABLE `AboutPage` DISABLE KEYS */;

INSERT INTO `AboutPage` (`ID`, `Colour`)
VALUES
	(2,'3256E3'),
	(6,'3256E3'),
	(7,'FF5759'),
	(43,'000000');

/*!40000 ALTER TABLE `AboutPage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table AboutPage_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `AboutPage_Live`;

CREATE TABLE `AboutPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Colour` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `AboutPage_Live` WRITE;
/*!40000 ALTER TABLE `AboutPage_Live` DISABLE KEYS */;

INSERT INTO `AboutPage_Live` (`ID`, `Colour`)
VALUES
	(2,'3256E3'),
	(6,'3256E3'),
	(7,'FF5759'),
	(43,'000000');

/*!40000 ALTER TABLE `AboutPage_Live` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table AboutPage_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `AboutPage_versions`;

CREATE TABLE `AboutPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Colour` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `AboutPage_versions` WRITE;
/*!40000 ALTER TABLE `AboutPage_versions` DISABLE KEYS */;

INSERT INTO `AboutPage_versions` (`ID`, `RecordID`, `Version`, `Colour`)
VALUES
	(1,2,5,'3256E3'),
	(2,6,3,'3256E3'),
	(3,7,3,'FF5759'),
	(4,7,4,'FF5759'),
	(5,7,5,'FF5759'),
	(6,43,1,NULL),
	(7,43,2,NULL),
	(8,43,3,NULL),
	(9,43,4,'3256E3'),
	(10,43,5,'3256E3'),
	(11,43,6,'000000'),
	(12,2,6,'3256E3'),
	(13,2,7,'3256E3'),
	(14,6,4,'3256E3'),
	(15,6,5,'3256E3'),
	(16,7,6,'FF5759'),
	(17,7,7,'FF5759'),
	(18,7,8,'FF5759'),
	(19,7,9,'FF5759'),
	(20,7,10,'FF5759'),
	(21,7,11,'FF5759'),
	(22,7,12,'FF5759'),
	(23,7,13,'FF5759'),
	(24,7,14,'FF5759'),
	(25,7,15,'FF5759'),
	(26,7,16,'FF5759'),
	(27,7,17,'FF5759'),
	(28,7,18,'FF5759'),
	(29,7,19,'FF5759'),
	(30,7,20,'FF5759'),
	(31,7,21,'FF5759'),
	(32,7,22,'FF5759'),
	(33,7,23,'FF5759'),
	(34,43,7,'000000'),
	(35,43,8,'000000'),
	(36,43,9,'000000'),
	(37,43,10,'000000'),
	(38,7,24,'FF5759'),
	(39,7,25,'FF5759'),
	(40,2,8,'3256E3'),
	(41,2,9,'3256E3'),
	(42,2,10,'3256E3'),
	(43,2,11,'3256E3'),
	(44,2,12,'3256E3'),
	(45,2,13,'3256E3'),
	(46,7,26,'FF5759'),
	(47,7,27,'FF5759'),
	(48,2,14,'3256E3'),
	(49,7,28,'FF5759'),
	(50,7,29,'FF5759'),
	(51,7,30,'FF5759'),
	(52,2,15,'3256E3');

/*!40000 ALTER TABLE `AboutPage_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table CategoryElement
# ------------------------------------------------------------

DROP TABLE IF EXISTS `CategoryElement`;

CREATE TABLE `CategoryElement` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('CategoryElement') CHARACTER SET utf8 DEFAULT 'CategoryElement',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `SortID` int(11) NOT NULL DEFAULT '0',
  `CategoryID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CategoryID` (`CategoryID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `CategoryElement` WRITE;
/*!40000 ALTER TABLE `CategoryElement` DISABLE KEYS */;

INSERT INTO `CategoryElement` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `SortID`, `CategoryID`)
VALUES
	(1,'CategoryElement','2014-11-17 12:07:03','2014-11-17 12:07:32','Print',1,0),
	(2,'CategoryElement','2014-11-17 12:07:15','2014-11-17 12:07:38','Medium',2,0),
	(3,'CategoryElement','2014-11-17 12:07:47','2014-11-24 16:02:31','Print',3,10),
	(4,'CategoryElement','2014-11-17 12:07:54','2014-11-24 16:02:31','Branding',1,10),
	(5,'CategoryElement','2014-11-17 12:08:26','2014-11-24 16:09:33','Architecture',1,11),
	(6,'CategoryElement','2014-11-17 12:08:33','2014-11-24 16:11:51','Art & Culture',2,11),
	(7,'CategoryElement','2014-11-17 20:53:25','2014-11-24 16:02:31','Strategy',2,10),
	(8,'CategoryElement','2014-11-17 20:53:35','2014-11-24 16:02:31','Campaign',4,10),
	(9,'CategoryElement','2014-11-17 20:53:54','2014-11-24 16:05:31','Environmental',5,10),
	(10,'CategoryElement','2014-11-17 20:54:02','2014-11-24 16:03:02','Digital',6,10),
	(11,'CategoryElement','2014-11-17 20:54:13','2014-12-08 19:26:55','Healthcare',3,11),
	(12,'CategoryElement','2014-11-17 20:54:22','2014-12-08 19:27:09','Education',4,11),
	(13,'CategoryElement','2014-11-17 20:54:30','2014-11-24 16:14:48','Wine',5,11),
	(14,'CategoryElement','2014-11-17 20:54:37','2014-11-24 16:21:35','Corporate',6,11),
	(15,'CategoryElement','2014-11-24 16:06:20','2014-11-24 16:06:25','Naming',7,10),
	(16,'CategoryElement','2014-11-24 16:07:41','2014-11-24 16:07:45','Packaging',8,10),
	(17,'CategoryElement','2014-12-08 19:21:07','2014-12-08 19:21:12','Government',7,11),
	(18,'CategoryElement','2014-12-08 19:27:21','2014-12-08 19:27:25','Sport',8,11);

/*!40000 ALTER TABLE `CategoryElement` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ContactPage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ContactPage`;

CREATE TABLE `ContactPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ContactText` mediumtext CHARACTER SET utf8,
  `MapLatitude` mediumtext CHARACTER SET utf8,
  `MapLongitude` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `ContactPage` WRITE;
/*!40000 ALTER TABLE `ContactPage` DISABLE KEYS */;

INSERT INTO `ContactPage` (`ID`, `ContactText`, `MapLatitude`, `MapLongitude`)
VALUES
	(7,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au<br></a><br>+61 [0]8 8410 3488</p>\n<p>20 The Parade West <br>Kent Town <br>Adelaide <br>South Australia 5067</p>','-34.9211517','138.6200795');

/*!40000 ALTER TABLE `ContactPage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ContactPage_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ContactPage_Live`;

CREATE TABLE `ContactPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ContactText` mediumtext CHARACTER SET utf8,
  `MapLatitude` mediumtext CHARACTER SET utf8,
  `MapLongitude` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `ContactPage_Live` WRITE;
/*!40000 ALTER TABLE `ContactPage_Live` DISABLE KEYS */;

INSERT INTO `ContactPage_Live` (`ID`, `ContactText`, `MapLatitude`, `MapLongitude`)
VALUES
	(7,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au<br></a><br>+61 [0]8 8410 3488</p>\n<p>20 The Parade West <br>Kent Town <br>Adelaide <br>South Australia 5067</p>','-34.9211517','138.6200795');

/*!40000 ALTER TABLE `ContactPage_Live` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ContactPage_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ContactPage_versions`;

CREATE TABLE `ContactPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ContactText` mediumtext CHARACTER SET utf8,
  `MapLatitude` mediumtext CHARACTER SET utf8,
  `MapLongitude` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `ContactPage_versions` WRITE;
/*!40000 ALTER TABLE `ContactPage_versions` DISABLE KEYS */;

INSERT INTO `ContactPage_versions` (`ID`, `RecordID`, `Version`, `ContactText`, `MapLatitude`, `MapLongitude`)
VALUES
	(1,7,3,NULL,NULL,NULL),
	(2,7,4,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au</a> <br>+44 555 555 555</p>\n<p>20 Parade West <br>Norwood <br>Adelaide <br>South Australia</p>',NULL,NULL),
	(3,7,5,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au</a> <br>+44 555 555 555</p>\n<p>20 Parade West <br>Norwood <br>Adelaide <br>South Australia</p>','-34.837684','138.6435'),
	(4,7,6,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au</a> <br>+44 555 555 555</p>\n<p>20 Parade West <br>Norwood <br>Adelaide <br>South Australia</p>','-34.837684','138.6435'),
	(5,7,7,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au</a> <br>+44 555 555 555</p>\n<p>20 Parade West <br>Norwood <br>Adelaide <br>South Australia</p>','-34.837684','138.6435'),
	(6,7,8,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au</a> <br>+44 555 555 555</p>\n<p>20 Parade West <br>Norwood <br>Adelaide <br>South Australia</p>','-34.837684','138.6435'),
	(7,7,9,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au</a> <br>+44 555 555 555</p>\n<p>20 Parade West <br>Norwood <br>Adelaide <br>South Australia</p>','-34.837684','138.6435'),
	(8,7,10,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au</a> <br>+44 555 555 555</p>\n<p>20 Parade West <br>Norwood <br>Adelaide <br>South Australia</p>','-34.837684','138.6435'),
	(9,7,11,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au</a> <br>+61 [0]8 8410 3488</p>\n<p>20 Parade West <br>Norwood <br>Adelaide <br>South Australia 5000</p>','-34.837684','138.6435'),
	(10,7,12,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au</a> </p>\n<p>+61 [0]8 8410 3488</p>\n<p>20 Parade West <br>Norwood <br>Adelaide <br>South Australia 5000</p>','-34.837684','138.6435'),
	(11,7,13,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au</a> </p>\n<p>+61 [0]8 8410 3488</p>\n<p>20 Parade West <br>Norwood <br>Adelaide <br>South Australia 5000</p>\n<p>Adelaide - Tobin Lush<br>+61 [0]423 734 054</p>\n<p>Melbourne - Sam Chisholm<br>+61 [0]423 734 054</p>\n<p> </p>','-34.837684','138.6435'),
	(12,7,14,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au</a> <br>+61 [0]8 8410 3488</p>\n<p>20 Parade West <br>Norwood <br>Adelaide <br>South Australia 5000</p>\n<p>Adelaide - Tobin Lush<br>+61 [0]423 734 054</p>\n<p>Melbourne - Sam Chisholm<br>+61 [0]423 734 054</p>\n<p> </p>','-34.837684','138.6435'),
	(13,7,15,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au<br></a><br>+61 [0]8 8410 3488</p>\n<p>20 Parade West <br>Norwood <br>Adelaide <br>South Australia 5000</p>\n<p>Adelaide - Tobin Lush<br>tobin@rodeo.com.co</p>\n<p>Melbourne - Sam Chisholm<br>sam@rodeo.com.co</p>\n<p> </p>','-34.837684','138.6435'),
	(14,7,16,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au<br></a><br>+61 [0]8 8410 3488</p>\n<p>20 Parade West <br>Norwood <br>Adelaide <br>South Australia 5000</p>\n<p> </p>\n<p>Adelaide - Tobin Lush<br>tobin@rodeo.com.co</p>\n<p>Melbourne - Sam Chisholm<br>sam@rodeo.com.co</p>\n<p> </p>','-34.837684','138.6435'),
	(15,7,17,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au<br></a><br>+61 [0]8 8410 3488</p>\n<p>20 Parade West <br>Norwood <br>Adelaide <br>South Australia 5000</p>\n<p> </p>\n<p>Adelaide - Tobin Lush<br>tobin@rodeo.com.co</p>\n<p>Melbourne - Sam Chisholm<br>sam@rodeo.com.co</p>','-34.837684','138.6435'),
	(16,7,18,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au<br></a><br>+61 [0]8 8410 3488</p>\n<p>20 Parade West <br>Norwood <br>Adelaide <br>South Australia 5000</p>\n<p> </p>\n<p>Adelaide - Tobin Lush<br>tobin@rodeo.com.co</p>\n<p>Melbourne - Sam Chisholm<br>sam@rodeo.com.co</p>','-34.9211517','138.6200795'),
	(17,7,19,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au<br></a><br>+61 [0]8 8410 3488</p>\n<p>20 Parade West <br>Norwood <br>Adelaide <br>South Australia 5000</p>\n<p>Adelaide - Tobin Lush<br>tobin@rodeo.com.co</p>\n<p>Melbourne - Sam Chisholm<br>sam@rodeo.com.co</p>','-34.9211517','138.6200795'),
	(18,7,20,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au<br></a><br>+61 [0]8 8410 3488</p>\n<p>20 Parade West <br>Norwood <br>Adelaide <br>South Australia 5000</p>\n<p>Adelaide - Tobin Lush<br><a title=\"tobin@rodeo.com.co\" href=\"mailto:tobin@rodeo.com.co\">tobin@rodeo.com.co</a></p>\n<p>Melbourne - Sam Chisholm<br><a title=\"sam@rodeo.com.co\" href=\"mailto:sam@rodeo.com.co\">sam@rodeo.com.co</a></p>','-34.9211517','138.6200795'),
	(19,7,21,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au<br></a><br>+61 [0]8 8410 3488</p>\n<p>20 Parade West <br>Norwood <br>Adelaide <br>South Australia 5000</p>\n<p>Adelaide - Tobin Lush<br><a title=\"tobin@rodeo.com.co\" href=\"mailto:tobin@rodeo.com.co\">tobin@rodeo.com.co</a></p>\n<p>Melbourne - Sam Chisholm<br><a title=\"sam@rodeo.com.co\" href=\"mailto:sam@rodeo.com.co\">sam@rodeo.com.co</a></p>','-34.9211517','138.6200795'),
	(20,7,22,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au<br></a><br>+61 [0]8 8410 3488</p>\n<p>20 Parade West <br>Norwood <br>Adelaide <br>South Australia 5000</p>\n<p>Adelaide - Tobin Lush<br><a title=\"tobin@rodeo.com.co\" href=\"mailto:tobin@rodeo.com.co\">tobin@rodeo.com.co</a></p>\n<p>Melbourne - Sam Chisholm<br><a title=\"sam@rodeo.com.co\" href=\"mailto:sam@rodeo.com.co\">sam@rodeo.com.co</a></p>','-34.9211517','138.6200795'),
	(21,7,23,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au<br></a><br>+61 [0]8 8410 3488</p>\n<p>20 Parade West <br>Norwood <br>Adelaide <br>South Australia 5000</p>\n<p>Adelaide - Tobin Lush<br><a title=\"tobin@rodeo.com.co\" href=\"mailto:tobin@rodeo.com.co\">tobin@rodeo.com.co</a></p>\n<p>Melbourne - Sam Chisholm<br><a title=\"sam@rodeo.com.co\" href=\"mailto:sam@rodeo.com.co\">sam@rodeo.com.co</a></p>','-34.9211517','138.6200795'),
	(22,7,24,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au<br></a><br>+61 [0]8 8410 3488</p>\n<p>20 Parade West <br>Norwood <br>Adelaide <br>South Australia 5000</p>','-34.9211517','138.6200795'),
	(23,7,25,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au<br></a><br>+61 [0]8 8410 3488</p>\n<p>20 The Parade West <br>Kent Town <br>Adelaide <br>South Australia 5067</p>','-34.9211517','138.6200795'),
	(24,7,26,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au<br></a><br>+61 [0]8 8410 3488</p>\n<p>20 The Parade West <br>Kent Town <br>Adelaide <br>South Australia 5067</p>','-34.9211517','138.6200795'),
	(25,7,27,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au<br></a><br>+61 [0]8 8410 3488</p>\n<p>20 The Parade West <br>Kent Town <br>Adelaide <br>South Australia 5067</p>','-34.9211517','138.6200795'),
	(26,7,28,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au<br></a><br>+61 [0]8 8410 3488</p>\n<p>20 The Parade West <br>Kent Town <br>Adelaide <br>South Australia 5067</p>','-34.9211517','138.6200795'),
	(27,7,29,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au<br></a><br>+61 [0]8 8410 3488</p>\n<p>20 The Parade West <br>Kent Town <br>Adelaide <br>South Australia 5067</p>','-34.9211517','138.6200795'),
	(28,7,30,'<p><a href=\"mailto:studio@rodeo.com.au\">studio@rodeo.com.au<br></a><br>+61 [0]8 8410 3488</p>\n<p>20 The Parade West <br>Kent Town <br>Adelaide <br>South Australia 5067</p>','-34.9211517','138.6200795');

/*!40000 ALTER TABLE `ContactPage_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ErrorPage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ErrorPage`;

CREATE TABLE `ErrorPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `ErrorPage` WRITE;
/*!40000 ALTER TABLE `ErrorPage` DISABLE KEYS */;

INSERT INTO `ErrorPage` (`ID`, `ErrorCode`)
VALUES
	(4,404),
	(5,500);

/*!40000 ALTER TABLE `ErrorPage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ErrorPage_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ErrorPage_Live`;

CREATE TABLE `ErrorPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `ErrorPage_Live` WRITE;
/*!40000 ALTER TABLE `ErrorPage_Live` DISABLE KEYS */;

INSERT INTO `ErrorPage_Live` (`ID`, `ErrorCode`)
VALUES
	(4,404),
	(5,500);

/*!40000 ALTER TABLE `ErrorPage_Live` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ErrorPage_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ErrorPage_versions`;

CREATE TABLE `ErrorPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `ErrorPage_versions` WRITE;
/*!40000 ALTER TABLE `ErrorPage_versions` DISABLE KEYS */;

INSERT INTO `ErrorPage_versions` (`ID`, `RecordID`, `Version`, `ErrorCode`)
VALUES
	(1,4,1,404),
	(2,5,1,500),
	(3,4,2,404),
	(4,5,2,500);

/*!40000 ALTER TABLE `ErrorPage_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table FeedPage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `FeedPage`;

CREATE TABLE `FeedPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TwitterScreenName` mediumtext CHARACTER SET utf8,
  `LimitTweets` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `FeedPage` WRITE;
/*!40000 ALTER TABLE `FeedPage` DISABLE KEYS */;

INSERT INTO `FeedPage` (`ID`, `TwitterScreenName`, `LimitTweets`)
VALUES
	(33,'tobinlush','50');

/*!40000 ALTER TABLE `FeedPage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table FeedPage_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `FeedPage_Live`;

CREATE TABLE `FeedPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TwitterScreenName` mediumtext CHARACTER SET utf8,
  `LimitTweets` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `FeedPage_Live` WRITE;
/*!40000 ALTER TABLE `FeedPage_Live` DISABLE KEYS */;

INSERT INTO `FeedPage_Live` (`ID`, `TwitterScreenName`, `LimitTweets`)
VALUES
	(33,'tobinlush','50');

/*!40000 ALTER TABLE `FeedPage_Live` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table FeedPage_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `FeedPage_versions`;

CREATE TABLE `FeedPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `TwitterScreenName` mediumtext CHARACTER SET utf8,
  `LimitTweets` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `FeedPage_versions` WRITE;
/*!40000 ALTER TABLE `FeedPage_versions` DISABLE KEYS */;

INSERT INTO `FeedPage_versions` (`ID`, `RecordID`, `Version`, `TwitterScreenName`, `LimitTweets`)
VALUES
	(1,33,1,NULL,NULL),
	(2,33,2,'tobinlush',NULL),
	(3,33,3,'tobinlush',NULL),
	(4,33,4,'tobinlush',NULL),
	(5,33,5,'tobinlush','50');

/*!40000 ALTER TABLE `FeedPage_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table File
# ------------------------------------------------------------

DROP TABLE IF EXISTS `File`;

CREATE TABLE `File` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('File','Folder','Image','Image_Cached') CHARACTER SET utf8 DEFAULT 'File',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Filename` mediumtext CHARACTER SET utf8,
  `Content` mediumtext CHARACTER SET utf8,
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `File` WRITE;
/*!40000 ALTER TABLE `File` DISABLE KEYS */;

INSERT INTO `File` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Title`, `Filename`, `Content`, `ShowInSearch`, `ParentID`, `OwnerID`)
VALUES
	(3,'Folder','2014-11-12 14:06:20','2014-11-12 14:06:20','G82','G82','assets/G82/',NULL,1,0,1),
	(4,'Image','2014-11-12 14:06:43','2014-11-12 14:06:43','g82-ad.jpg','g82 ad','assets/G82/g82-ad.jpg',NULL,1,3,1),
	(5,'Image','2014-11-12 14:06:43','2014-11-12 14:06:43','g82-deboss.jpg','g82 deboss','assets/G82/g82-deboss.jpg',NULL,1,3,1),
	(6,'Image','2014-11-12 14:06:44','2014-11-12 14:06:44','g82-letterhead.jpg','g82 letterhead','assets/G82/g82-letterhead.jpg',NULL,1,3,1),
	(7,'Image','2014-11-12 14:06:44','2014-11-12 14:06:44','g82-sign.jpg','g82 sign','assets/G82/g82-sign.jpg',NULL,1,3,1),
	(8,'Image','2014-11-12 14:06:44','2014-11-12 14:06:44','g82-withcomps.jpg','g82 withcomps','assets/G82/g82-withcomps.jpg',NULL,1,3,1),
	(9,'Folder','2014-11-12 14:06:56','2014-11-12 14:06:56','Uploads','Uploads','assets/Uploads/',NULL,1,0,1),
	(10,'Folder','2014-11-17 12:34:54','2014-11-17 12:34:54','AIDA','AIDA','assets/AIDA/',NULL,1,0,1),
	(11,'Folder','2014-11-17 12:37:36','2014-11-17 12:37:36','BAB','BAB','assets/BAB/',NULL,1,0,1),
	(12,'Folder','2014-11-17 12:37:44','2014-11-17 12:37:44','NAB','NAB','assets/NAB/',NULL,1,0,1),
	(13,'Image','2014-11-17 12:38:08','2014-11-17 12:38:08','aida-logo.jpg','aida logo','assets/AIDA/aida-logo.jpg',NULL,1,10,1),
	(14,'Image','2014-11-17 12:38:08','2014-11-17 12:38:08','aida-poster-street.jpg','aida poster street','assets/AIDA/aida-poster-street.jpg',NULL,1,10,1),
	(15,'Image','2014-11-17 12:38:30','2014-11-17 12:38:30','bab-landscape.jpg','bab landscape','assets/BAB/bab-landscape.jpg',NULL,1,11,1),
	(17,'Image','2014-11-17 12:38:30','2014-11-17 12:38:30','bab-bottle-bubbles.jpg','bab bottle bubbles','assets/BAB/bab-bottle-bubbles.jpg',NULL,1,11,1),
	(18,'Image','2014-11-17 12:38:44','2014-11-17 12:38:44','wba-nab-interior1.jpg','wba nab interior1','assets/NAB/wba-nab-interior1.jpg',NULL,1,12,1),
	(19,'Image','2014-11-17 12:38:44','2014-11-17 12:38:44','wba-nab-interior2.jpg','wba nab interior2','assets/NAB/wba-nab-interior2.jpg',NULL,1,12,1),
	(20,'Image','2014-11-27 19:59:16','2014-11-27 19:59:16','bab-stationery.jpg','bab stationery','assets/BAB/bab-stationery.jpg',NULL,1,11,1),
	(21,'Folder','2014-11-27 20:12:32','2014-11-27 20:12:32','Atlas','Atlas','assets/Atlas/',NULL,1,0,1),
	(22,'Image','2014-11-27 20:12:50','2016-06-03 01:34:25','atl-360-closeup.jpg','atl 360 closeup','assets/Atlas/atl-360-closeup.jpg',NULL,1,21,1),
	(23,'Image','2014-11-27 20:13:03','2014-11-27 20:13:03','atl-360.jpg','atl 360','assets/Atlas/atl-360.jpg',NULL,1,21,1),
	(24,'Image','2014-11-27 20:13:12','2014-11-27 20:13:12','atl-bottles-wall.jpg','atl bottles wall','assets/Atlas/atl-bottles-wall.jpg',NULL,1,21,1),
	(25,'Image','2014-11-27 20:13:23','2014-11-27 20:13:23','atl-spaniard-closeup.jpg','atl spaniard closeup','assets/Atlas/atl-spaniard-closeup.jpg',NULL,1,21,1),
	(26,'Image','2014-11-27 20:13:30','2014-11-27 20:13:30','atl-spaniard-down.jpg','atl spaniard down','assets/Atlas/atl-spaniard-down.jpg',NULL,1,21,1),
	(27,'Image','2014-11-27 20:14:48','2014-11-27 20:14:48','atl-terros-chard.jpg','atl terros chard','assets/Atlas/atl-terros-chard.jpg',NULL,1,21,1),
	(28,'Image','2014-11-27 20:14:49','2014-11-27 20:14:49','atl-terros-chard-closeup.jpg','atl terros chard closeup','assets/Atlas/atl-terros-chard-closeup.jpg',NULL,1,21,1),
	(29,'Image','2014-11-27 20:27:23','2014-11-27 20:27:23','aida-poster-blackboard.jpg','aida poster blackboard','assets/AIDA/aida-poster-blackboard.jpg',NULL,1,10,1),
	(30,'Folder','2014-11-27 20:33:17','2014-11-27 20:33:17','GETTY-IMAGES','GETTY-IMAGES','assets/GETTY-IMAGES/',NULL,1,0,1),
	(31,'Image','2014-11-27 20:34:43','2014-11-27 20:34:43','gig-letterfrom-paula.jpg','gig letterfrom paula','assets/GETTY-IMAGES/gig-letterfrom-paula.jpg',NULL,1,30,1),
	(32,'Image','2014-11-27 20:35:13','2014-11-27 20:35:13','gig-letterfrom-paula-screens.jpg','gig letterfrom paula screens','assets/GETTY-IMAGES/gig-letterfrom-paula-screens.jpg',NULL,1,30,1),
	(33,'Image','2014-11-27 20:35:31','2014-11-27 20:35:31','gig-services2.jpg','gig services2','assets/GETTY-IMAGES/gig-services2.jpg',NULL,1,30,1),
	(34,'Image','2014-11-27 20:35:42','2014-11-27 20:35:42','gig-services4.jpg','gig services4','assets/GETTY-IMAGES/gig-services4.jpg',NULL,1,30,1),
	(35,'Image','2014-11-27 20:36:44','2014-11-27 20:46:10','gig-letterfrom-paula-sml.jpg','gig letterfrom paula sml','assets/GETTY-IMAGES/gig-letterfrom-paula-sml.jpg',NULL,1,30,1),
	(36,'Image','2014-11-27 20:37:00','2014-11-27 20:37:00','gig-services6.jpg','gig services6','assets/GETTY-IMAGES/gig-services6.jpg',NULL,1,30,1),
	(37,'Image','2014-11-27 20:37:29','2016-06-02 22:44:25','gig-spikes.jpg','gig spikes','assets/GETTY-IMAGES/gig-spikes.jpg',NULL,1,30,1),
	(38,'Image','2014-11-27 21:08:18','2014-11-27 21:08:18','wba-nab-22.jpg','wba nab 22','assets/NAB/wba-nab-22.jpg',NULL,1,12,1),
	(39,'Image','2014-11-27 21:08:24','2014-11-27 21:08:24','wba-nab-brochure1.jpg','wba nab brochure1','assets/NAB/wba-nab-brochure1.jpg',NULL,1,12,1),
	(40,'Image','2014-11-27 21:08:32','2014-11-27 21:08:32','wba-nab-brochure3.jpg','wba nab brochure3','assets/NAB/wba-nab-brochure3.jpg',NULL,1,12,1),
	(41,'Folder','2014-11-27 21:14:03','2014-11-27 21:14:03','OPAL','OPAL','assets/OPAL/',NULL,1,0,1),
	(42,'Image','2014-11-27 21:14:25','2014-11-27 21:14:25','sah-opal-ball.jpg','sah opal ball','assets/OPAL/sah-opal-ball.jpg',NULL,1,41,1),
	(43,'Image','2014-11-27 21:14:32','2014-11-27 21:14:32','sah-opal-3dlogo.jpg','sah opal 3dlogo','assets/OPAL/sah-opal-3dlogo.jpg',NULL,1,41,1),
	(44,'Image','2014-11-27 21:16:27','2014-11-27 21:16:27','sah-opal-billboard-sml.jpg','sah opal billboard sml','assets/OPAL/sah-opal-billboard-sml.jpg',NULL,1,41,1),
	(45,'Image','2014-11-27 21:16:36','2014-11-27 21:16:36','sah-opal-poster.jpg','sah opal poster','assets/OPAL/sah-opal-poster.jpg',NULL,1,41,1),
	(46,'Image','2014-11-27 21:17:08','2014-11-27 21:17:08','sah-opal-poster2.jpg','sah opal poster2','assets/OPAL/sah-opal-poster2.jpg',NULL,1,41,1),
	(47,'Image','2014-11-27 21:17:21','2014-11-27 21:17:21','sah-opal-vitality.jpg','sah opal vitality','assets/OPAL/sah-opal-vitality.jpg',NULL,1,41,1),
	(48,'Image','2014-11-27 21:29:39','2014-11-27 21:29:39','sah-opal-brochure.jpg','sah opal brochure','assets/OPAL/sah-opal-brochure.jpg',NULL,1,41,1),
	(49,'Folder','2014-11-27 21:34:09','2014-12-17 22:25:56','ODASA-RAH','ODASA-RAH','assets/ODASA-RAH/',NULL,1,0,1),
	(50,'Image','2014-11-27 21:34:52','2014-12-17 22:25:56','oda-rah-exhibit3.jpg','oda rah exhibit3','assets/ODASA-RAH/oda-rah-exhibit3.jpg',NULL,1,49,1),
	(51,'Image','2014-11-27 21:34:52','2014-12-17 22:25:56','oda-rah-exhibit.jpg','oda rah exhibit','assets/ODASA-RAH/oda-rah-exhibit.jpg',NULL,1,49,1),
	(52,'Image','2014-11-27 21:34:57','2014-12-17 22:25:56','oda-rah-exhibit2.jpg','oda rah exhibit2','assets/ODASA-RAH/oda-rah-exhibit2.jpg',NULL,1,49,1),
	(53,'Image','2014-11-27 21:35:23','2014-12-17 22:25:56','oda-rah-report-covers.jpg','oda rah report covers','assets/ODASA-RAH/oda-rah-report-covers.jpg',NULL,1,49,1),
	(54,'Image','2014-11-27 21:35:32','2014-12-17 22:25:56','oda-rah-report1.jpg','oda rah report1','assets/ODASA-RAH/oda-rah-report1.jpg',NULL,1,49,1),
	(55,'Image','2014-11-27 21:35:35','2014-12-17 22:25:56','oda-rah-report-posterfolded.jpg','oda rah report posterfolded','assets/ODASA-RAH/oda-rah-report-posterfolded.jpg',NULL,1,49,1),
	(56,'Image','2014-11-27 21:35:35','2014-12-17 22:25:56','oda-rah-report5.jpg','oda rah report5','assets/ODASA-RAH/oda-rah-report5.jpg',NULL,1,49,1),
	(57,'Image','2014-11-27 21:35:36','2014-12-17 22:25:56','oda-rah-report3.jpg','oda rah report3','assets/ODASA-RAH/oda-rah-report3.jpg',NULL,1,49,1),
	(58,'Image','2014-11-27 21:35:40','2014-12-17 22:25:56','oda-rah-report-stack.jpg','oda rah report stack','assets/ODASA-RAH/oda-rah-report-stack.jpg',NULL,1,49,1),
	(59,'Image','2014-11-27 21:35:41','2014-12-17 22:25:56','oda-rah-report2.jpg','oda rah report2','assets/ODASA-RAH/oda-rah-report2.jpg',NULL,1,49,1),
	(60,'Image','2014-11-27 21:35:43','2014-12-17 22:25:56','oda-rah-report4.jpg','oda rah report4','assets/ODASA-RAH/oda-rah-report4.jpg',NULL,1,49,1),
	(61,'Image','2014-11-27 21:35:44','2014-12-17 22:25:56','oda-rah-report6.jpg','oda rah report6','assets/ODASA-RAH/oda-rah-report6.jpg',NULL,1,49,1),
	(62,'Image','2014-11-27 21:35:51','2014-12-17 22:25:56','oda-rah-report7.jpg','oda rah report7','assets/ODASA-RAH/oda-rah-report7.jpg',NULL,1,49,1),
	(63,'Image','2014-11-27 21:35:53','2014-12-17 22:25:56','oda-rah-report9.jpg','oda rah report9','assets/ODASA-RAH/oda-rah-report9.jpg',NULL,1,49,1),
	(64,'Image','2014-11-27 21:35:55','2014-12-17 22:25:56','oda-rah-report8.jpg','oda rah report8','assets/ODASA-RAH/oda-rah-report8.jpg',NULL,1,49,1),
	(65,'Image','2014-11-27 21:35:56','2014-12-17 22:25:56','oda-rah-website2.jpg','oda rah website2','assets/ODASA-RAH/oda-rah-website2.jpg',NULL,1,49,1),
	(66,'Image','2014-11-27 21:35:56','2014-12-17 22:25:56','oda-rah-report10.jpg','oda rah report10','assets/ODASA-RAH/oda-rah-report10.jpg',NULL,1,49,1),
	(67,'Image','2014-11-27 21:35:57','2014-12-17 22:25:56','oda-rah-website1.jpg','oda rah website1','assets/ODASA-RAH/oda-rah-website1.jpg',NULL,1,49,1),
	(68,'Image','2014-11-27 21:36:09','2014-12-17 22:25:56','oda-rah-website3.jpg','oda rah website3','assets/ODASA-RAH/oda-rah-website3.jpg',NULL,1,49,1),
	(69,'Image','2014-11-27 22:17:59','2014-12-17 22:25:56','BLUE.jpg','BLUE','assets/ODASA-RAH/BLUE.jpg',NULL,1,49,1),
	(70,'Image','2014-11-27 22:58:11','2014-12-17 22:25:56','grey.gif','grey','assets/ODASA-RAH/grey.gif',NULL,1,49,1),
	(71,'Image','2014-11-27 23:20:36','2014-12-17 22:25:56','2x.gif','2x','assets/ODASA-RAH/2x.gif',NULL,1,49,1),
	(72,'Image','2014-11-27 23:40:24','2014-12-17 22:25:56','FORECAST.gif','FORECAST','assets/ODASA-RAH/FORECAST.gif',NULL,1,49,1),
	(73,'Folder','2014-11-30 22:20:16','2014-11-30 22:20:16','SA-HEALTH-VACCINATION','SA-HEALTH-VACCINATION','assets/SA-HEALTH-VACCINATION/',NULL,1,0,1),
	(74,'Image','2014-11-30 22:30:18','2014-11-30 22:30:18','sah-vac-book3.jpg','sah vac book3','assets/SA-HEALTH-VACCINATION/sah-vac-book3.jpg',NULL,1,73,1),
	(75,'Image','2014-11-30 22:30:29','2014-11-30 22:30:29','sah-vac-book4.jpg','sah vac book4','assets/SA-HEALTH-VACCINATION/sah-vac-book4.jpg',NULL,1,73,1),
	(76,'Image','2014-11-30 22:30:32','2014-11-30 22:30:32','sah-vac-book7.jpg','sah vac book7','assets/SA-HEALTH-VACCINATION/sah-vac-book7.jpg',NULL,1,73,1),
	(77,'Image','2014-11-30 22:30:35','2014-11-30 22:30:35','sah-vac-book8.jpg','sah vac book8','assets/SA-HEALTH-VACCINATION/sah-vac-book8.jpg',NULL,1,73,1),
	(78,'Image','2014-11-30 22:30:36','2014-11-30 22:30:36','sah-vac-book5.jpg','sah vac book5','assets/SA-HEALTH-VACCINATION/sah-vac-book5.jpg',NULL,1,73,1),
	(79,'Image','2014-11-30 22:30:39','2014-11-30 22:30:39','sah-vac-book6.jpg','sah vac book6','assets/SA-HEALTH-VACCINATION/sah-vac-book6.jpg',NULL,1,73,1),
	(80,'Image','2014-11-30 22:30:40','2014-11-30 22:30:40','sah-vac-book-cover.jpg','sah vac book cover','assets/SA-HEALTH-VACCINATION/sah-vac-book-cover.jpg',NULL,1,73,1),
	(81,'Image','2014-11-30 22:31:16','2014-11-30 22:31:16','sah-vac-drawing1.jpg','sah vac drawing1','assets/SA-HEALTH-VACCINATION/sah-vac-drawing1.jpg',NULL,1,73,1),
	(82,'Image','2014-11-30 22:31:17','2014-11-30 22:31:17','sah-vac-drawing2.jpg','sah vac drawing2','assets/SA-HEALTH-VACCINATION/sah-vac-drawing2.jpg',NULL,1,73,1),
	(83,'Image','2014-11-30 22:33:09','2014-11-30 22:33:09','sah-vac-poster.jpg','sah vac poster','assets/SA-HEALTH-VACCINATION/sah-vac-poster.jpg',NULL,1,73,1),
	(84,'Image','2014-11-30 22:33:09','2014-11-30 22:33:09','sah-vac-fact.jpg','sah vac fact','assets/SA-HEALTH-VACCINATION/sah-vac-fact.jpg',NULL,1,73,1),
	(85,'Image','2014-11-30 22:33:14','2014-11-30 22:33:14','sah-vac-mask1.jpg','sah vac mask1','assets/SA-HEALTH-VACCINATION/sah-vac-mask1.jpg',NULL,1,73,1),
	(86,'Image','2014-11-30 22:33:22','2014-11-30 22:33:22','sah-vac-sketch1.jpg','sah vac sketch1','assets/SA-HEALTH-VACCINATION/sah-vac-sketch1.jpg',NULL,1,73,1),
	(87,'Image','2014-11-30 22:33:22','2014-11-30 22:33:22','sah-vac-mask2.jpg','sah vac mask2','assets/SA-HEALTH-VACCINATION/sah-vac-mask2.jpg',NULL,1,73,1),
	(88,'Image','2014-11-30 22:33:23','2014-11-30 22:33:23','sah-vac-set.jpg','sah vac set','assets/SA-HEALTH-VACCINATION/sah-vac-set.jpg',NULL,1,73,1),
	(89,'Image','2014-11-30 22:33:24','2014-11-30 22:33:24','sah-vac-illust1.jpg','sah vac illust1','assets/SA-HEALTH-VACCINATION/sah-vac-illust1.jpg',NULL,1,73,1),
	(90,'Folder','2014-11-30 23:30:53','2014-11-30 23:30:53','Katrina-Webb','Katrina-Webb','assets/Katrina-Webb/',NULL,1,0,1),
	(91,'Image','2014-11-30 23:31:46','2014-11-30 23:31:46','kat-businesscard.jpg','kat businesscard','assets/Katrina-Webb/kat-businesscard.jpg',NULL,1,90,1),
	(92,'Image','2014-11-30 23:31:48','2014-11-30 23:31:48','kat-promo.jpg','kat promo','assets/Katrina-Webb/kat-promo.jpg',NULL,1,90,1),
	(93,'Image','2014-11-30 23:31:58','2014-11-30 23:31:58','kat-running.jpg','kat running','assets/Katrina-Webb/kat-running.jpg',NULL,1,90,1),
	(94,'Image','2014-11-30 23:32:23','2014-11-30 23:32:23','kat-web.jpg','kat web','assets/Katrina-Webb/kat-web.jpg',NULL,1,90,1),
	(95,'Image','2014-11-30 23:44:13','2014-11-30 23:44:13','atl-spaniard.jpg','atl spaniard','assets/Atlas/atl-spaniard.jpg',NULL,1,21,1),
	(96,'Image','2014-12-01 17:34:56','2014-12-01 17:36:34','bab-web.jpg','bab web1','assets/BAB/bab-web.jpg',NULL,1,11,1),
	(97,'Folder','2014-12-01 17:49:53','2014-12-01 17:49:53','STONE-CASTRO','STONE-CASTRO','assets/STONE-CASTRO/',NULL,1,0,1),
	(98,'Image','2014-12-01 17:50:13','2014-12-01 17:50:13','sto-wuh-image.jpg','sto wuh image','assets/STONE-CASTRO/sto-wuh-image.jpg',NULL,1,97,1),
	(99,'Image','2014-12-01 17:50:18','2014-12-01 17:50:18','sto-wuh-poster.jpg','sto wuh poster','assets/STONE-CASTRO/sto-wuh-poster.jpg',NULL,1,97,1),
	(100,'Image','2014-12-01 18:04:46','2014-12-01 18:04:46','sto-motortown-img1.jpg','sto motortown img1','assets/STONE-CASTRO/sto-motortown-img1.jpg',NULL,1,97,1),
	(101,'Image','2014-12-01 18:04:51','2014-12-01 18:04:51','sto-motortown-img2.jpg','sto motortown img2','assets/STONE-CASTRO/sto-motortown-img2.jpg',NULL,1,97,1),
	(102,'Image','2014-12-01 18:04:56','2014-12-01 18:04:56','sto-motortown-img4.jpg','sto motortown img4','assets/STONE-CASTRO/sto-motortown-img4.jpg',NULL,1,97,1),
	(103,'Image','2014-12-01 18:05:00','2014-12-01 18:05:00','sto-motortown-img3.jpg','sto motortown img3','assets/STONE-CASTRO/sto-motortown-img3.jpg',NULL,1,97,1),
	(104,'Image','2014-12-01 18:05:03','2014-12-01 18:05:03','sto-motortown-poster.jpg','sto motortown poster','assets/STONE-CASTRO/sto-motortown-poster.jpg',NULL,1,97,1),
	(105,'Image','2014-12-01 18:05:26','2014-12-01 18:05:26','sto-motortown-book5.jpg','sto motortown book5','assets/STONE-CASTRO/sto-motortown-book5.jpg',NULL,1,97,1),
	(106,'Image','2014-12-01 18:05:30','2014-12-01 18:05:30','sto-motortown-book4.jpg','sto motortown book4','assets/STONE-CASTRO/sto-motortown-book4.jpg',NULL,1,97,1),
	(107,'Image','2014-12-01 18:05:30','2014-12-01 18:05:30','sto-motortown-book2.jpg','sto motortown book2','assets/STONE-CASTRO/sto-motortown-book2.jpg',NULL,1,97,1),
	(108,'Image','2014-12-01 18:05:35','2014-12-01 18:05:35','sto-motortown-book1.jpg','sto motortown book1','assets/STONE-CASTRO/sto-motortown-book1.jpg',NULL,1,97,1),
	(109,'Image','2014-12-01 18:05:35','2014-12-01 18:05:35','sto-motortown-book3.jpg','sto motortown book3','assets/STONE-CASTRO/sto-motortown-book3.jpg',NULL,1,97,1),
	(110,'Folder','2014-12-03 22:41:39','2014-12-03 22:41:39','GOODHOUSE','GOODHOUSE','assets/GOODHOUSE/',NULL,1,0,1),
	(111,'Image','2014-12-03 22:42:43','2014-12-03 22:42:43','gh-brand11.jpg','gh brand11','assets/GOODHOUSE/gh-brand11.jpg',NULL,1,110,1),
	(112,'Image','2014-12-03 22:42:47','2014-12-03 22:42:47','gh-brand3.jpg','gh brand3','assets/GOODHOUSE/gh-brand3.jpg',NULL,1,110,1),
	(113,'Image','2014-12-03 22:42:47','2014-12-03 22:42:47','gh-invite.jpg','gh invite','assets/GOODHOUSE/gh-invite.jpg',NULL,1,110,1),
	(114,'Image','2014-12-03 22:42:51','2014-12-03 22:42:51','gh-brand5.jpg','gh brand5','assets/GOODHOUSE/gh-brand5.jpg',NULL,1,110,1),
	(115,'Image','2014-12-03 22:43:01','2014-12-03 22:43:01','gh-brand2.jpg','gh brand2','assets/GOODHOUSE/gh-brand2.jpg',NULL,1,110,1),
	(116,'Image','2014-12-03 22:43:01','2014-12-03 22:43:01','gh-brand6.jpg','gh brand6','assets/GOODHOUSE/gh-brand6.jpg',NULL,1,110,1),
	(117,'Image','2014-12-03 22:43:02','2014-12-03 22:43:02','gh-banner.jpg','gh banner','assets/GOODHOUSE/gh-banner.jpg',NULL,1,110,1),
	(118,'Image','2014-12-03 22:43:04','2014-12-03 22:43:04','gh-layout.jpg','gh layout','assets/GOODHOUSE/gh-layout.jpg',NULL,1,110,1),
	(119,'Image','2014-12-03 22:43:04','2014-12-03 22:43:04','gh-brand1.jpg','gh brand1','assets/GOODHOUSE/gh-brand1.jpg',NULL,1,110,1),
	(120,'Image','2014-12-03 22:43:07','2014-12-03 22:43:07','gh-brand4.jpg','gh brand4','assets/GOODHOUSE/gh-brand4.jpg',NULL,1,110,1),
	(121,'Image','2014-12-03 22:43:09','2014-12-03 22:43:09','gh-web3.jpg','gh web3','assets/GOODHOUSE/gh-web3.jpg',NULL,1,110,1),
	(122,'Image','2014-12-03 22:43:09','2014-12-03 22:43:09','gh-web2.jpg','gh web2','assets/GOODHOUSE/gh-web2.jpg',NULL,1,110,1),
	(123,'Image','2014-12-03 22:43:12','2014-12-03 22:43:12','gh-web1.jpg','gh web1','assets/GOODHOUSE/gh-web1.jpg',NULL,1,110,1),
	(124,'Image','2014-12-03 22:43:12','2014-12-03 22:43:12','gh-ute.jpg','gh ute','assets/GOODHOUSE/gh-ute.jpg',NULL,1,110,1),
	(125,'Folder','2014-12-07 23:23:26','2014-12-07 23:23:26','LMS-ENERGY','LMS-ENERGY','assets/LMS-ENERGY/',NULL,1,0,1),
	(126,'Image','2014-12-07 23:23:48','2014-12-07 23:23:48','lms-car.jpg','lms car','assets/LMS-ENERGY/lms-car.jpg',NULL,1,125,1),
	(127,'Image','2014-12-07 23:23:50','2014-12-07 23:23:50','lms-bcard.jpg','lms bcard','assets/LMS-ENERGY/lms-bcard.jpg',NULL,1,125,1),
	(128,'Image','2014-12-07 23:23:56','2014-12-07 23:23:56','lms-website3.jpg','lms website3','assets/LMS-ENERGY/lms-website3.jpg',NULL,1,125,1),
	(129,'Image','2014-12-07 23:23:56','2014-12-07 23:23:56','lms-glass.jpg','lms glass','assets/LMS-ENERGY/lms-glass.jpg',NULL,1,125,1),
	(130,'Image','2014-12-07 23:23:58','2014-12-07 23:23:58','lms-website2.jpg','lms website2','assets/LMS-ENERGY/lms-website2.jpg',NULL,1,125,1),
	(131,'Image','2014-12-07 23:23:59','2014-12-07 23:23:59','lms-website1.jpg','lms website1','assets/LMS-ENERGY/lms-website1.jpg',NULL,1,125,1),
	(132,'Image','2014-12-08 18:19:01','2014-12-08 18:19:01','gig-services3.jpg','gig services3','assets/GETTY-IMAGES/gig-services3.jpg',NULL,1,30,1),
	(133,'Image','2014-12-08 18:19:16','2014-12-08 18:19:16','gig-services5.jpg','gig services5','assets/GETTY-IMAGES/gig-services5.jpg',NULL,1,30,1),
	(134,'Image','2014-12-08 18:19:40','2014-12-08 18:19:40','gig-services8.jpg','gig services8','assets/GETTY-IMAGES/gig-services8.jpg',NULL,1,30,1),
	(135,'Image','2014-12-08 18:19:45','2014-12-08 18:19:45','gig-services9.jpg','gig services9','assets/GETTY-IMAGES/gig-services9.jpg',NULL,1,30,1),
	(136,'Image','2014-12-08 18:19:49','2014-12-08 18:19:49','gig-services10.jpg','gig services10','assets/GETTY-IMAGES/gig-services10.jpg',NULL,1,30,1),
	(137,'Image','2014-12-08 18:19:59','2014-12-08 18:19:59','gig-services12.jpg','gig services12','assets/GETTY-IMAGES/gig-services12.jpg',NULL,1,30,1),
	(138,'Image','2014-12-08 18:20:02','2014-12-08 18:20:02','gig-services13.jpg','gig services13','assets/GETTY-IMAGES/gig-services13.jpg',NULL,1,30,1),
	(139,'Image','2014-12-08 18:20:13','2014-12-08 18:20:13','gig-services16.jpg','gig services16','assets/GETTY-IMAGES/gig-services16.jpg',NULL,1,30,1),
	(140,'Image','2014-12-08 18:41:32','2014-12-08 18:41:32','gig-services31.jpg','gig services31','assets/GETTY-IMAGES/gig-services31.jpg',NULL,1,30,1),
	(141,'Image','2014-12-08 18:49:33','2014-12-08 18:49:33','gig-services14.jpg','gig services14','assets/GETTY-IMAGES/gig-services14.jpg',NULL,1,30,1),
	(142,'Image','2014-12-08 19:52:17','2014-12-08 19:52:17','g82-web1.jpg','g82 web1','assets/G82/g82-web1.jpg',NULL,1,3,1),
	(143,'Folder','2014-12-08 20:05:41','2014-12-08 20:05:41','INTRO','INTRO','assets/INTRO/',NULL,1,0,1),
	(144,'Image','2014-12-08 20:06:14','2014-12-08 20:06:14','intro-pencil.jpg','intro pencil','assets/INTRO/intro-pencil.jpg',NULL,1,143,1),
	(145,'Image','2014-12-08 20:06:15','2014-12-08 20:06:15','intro-render.jpg','intro render','assets/INTRO/intro-render.jpg',NULL,1,143,1),
	(146,'Image','2014-12-08 20:06:27','2014-12-08 20:06:27','intro-stat2.jpg','intro stat2','assets/INTRO/intro-stat2.jpg',NULL,1,143,1),
	(147,'Image','2014-12-08 20:06:30','2014-12-08 20:06:30','intro-stat3.jpg','intro stat3','assets/INTRO/intro-stat3.jpg',NULL,1,143,1),
	(148,'Image','2014-12-08 20:06:33','2014-12-08 20:06:33','intro-stat4.jpg','intro stat4','assets/INTRO/intro-stat4.jpg',NULL,1,143,1),
	(149,'Image','2014-12-08 20:06:35','2014-12-08 20:06:35','intro-stat5.jpg','intro stat5','assets/INTRO/intro-stat5.jpg',NULL,1,143,1),
	(150,'Image','2014-12-08 20:06:37','2014-12-08 20:06:37','intro-tube.jpg','intro tube','assets/INTRO/intro-tube.jpg',NULL,1,143,1),
	(151,'Image','2014-12-08 20:06:57','2014-12-08 20:06:57','intro-ipad.jpg','intro ipad','assets/INTRO/intro-ipad.jpg',NULL,1,143,1),
	(152,'Image','2014-12-08 22:29:16','2014-12-08 22:29:16','sto-motortown-img11.jpg','sto motortown img11','assets/STONE-CASTRO/sto-motortown-img11.jpg',NULL,1,97,1),
	(153,'Image','2014-12-08 22:34:00','2014-12-08 22:34:00','sto-motortown-title.jpg','sto motortown title','assets/STONE-CASTRO/sto-motortown-title.jpg',NULL,1,97,1),
	(154,'Image','2014-12-08 23:31:10','2014-12-08 23:31:10','bab-tile.jpg','bab tile','assets/BAB/bab-tile.jpg',NULL,1,11,1),
	(155,'Image','2014-12-10 17:41:39','2014-12-10 17:41:39','atl-spaniard-sml2.jpg','atl spaniard sml2','assets/Atlas/atl-spaniard-sml2.jpg',NULL,1,21,1),
	(156,'File','2014-12-10 18:26:52','2014-12-10 18:26:52','error-404.html','error-404.html','assets/error-404.html',NULL,1,0,1),
	(157,'File','2014-12-10 18:26:52','2014-12-10 18:26:52','error-500.html','error-500.html','assets/error-500.html',NULL,1,0,1),
	(158,'Image','2014-12-10 18:28:58','2014-12-10 18:28:58','atl-360-sml2.jpg','atl 360 sml2','assets/Atlas/atl-360-sml2.jpg',NULL,1,21,1),
	(159,'Folder','2014-12-10 18:47:10','2014-12-10 18:47:10','DEC-WORKFORCE','DEC-WORKFORCE','assets/DEC-WORKFORCE/',NULL,1,0,1),
	(167,'Image','2014-12-10 18:50:35','2014-12-10 18:50:35','dec-dude.jpg','dec dude','assets/DEC-WORKFORCE/dec-dude.jpg',NULL,1,159,1),
	(168,'Image','2014-12-10 18:50:49','2014-12-10 18:50:49','dec-logo3.jpg','dec logo3','assets/DEC-WORKFORCE/dec-logo3.jpg',NULL,1,159,1),
	(169,'Image','2014-12-10 18:50:50','2014-12-10 18:50:50','dec-logo2.jpg','dec logo2','assets/DEC-WORKFORCE/dec-logo2.jpg',NULL,1,159,1),
	(170,'Image','2014-12-10 18:50:52','2014-12-10 18:50:52','dec-rollerdoor.jpg','dec rollerdoor','assets/DEC-WORKFORCE/dec-rollerdoor.jpg',NULL,1,159,1),
	(171,'Image','2014-12-10 18:51:04','2014-12-10 18:51:04','dec-site1.jpg','dec site1','assets/DEC-WORKFORCE/dec-site1.jpg',NULL,1,159,1),
	(172,'Image','2014-12-10 18:51:18','2014-12-10 18:51:18','dec-site3.jpg','dec site3','assets/DEC-WORKFORCE/dec-site3.jpg',NULL,1,159,1),
	(173,'Image','2014-12-10 18:51:25','2014-12-10 18:51:25','dec-site5.jpg','dec site5','assets/DEC-WORKFORCE/dec-site5.jpg',NULL,1,159,1),
	(174,'Image','2014-12-10 18:51:28','2014-12-10 18:51:28','dec-symbols.jpg','dec symbols','assets/DEC-WORKFORCE/dec-symbols.jpg',NULL,1,159,1),
	(175,'Image','2014-12-10 21:39:45','2014-12-10 21:39:45','lms-flame.jpg','lms flame','assets/LMS-ENERGY/lms-flame.jpg',NULL,1,125,1),
	(176,'Image','2014-12-10 21:52:49','2014-12-10 21:52:49','lms-illustration.jpg','lms illustration','assets/LMS-ENERGY/lms-illustration.jpg',NULL,1,125,1),
	(177,'Image','2014-12-11 15:26:35','2014-12-11 15:26:35','sto-blackout-image1.jpg','sto blackout image1','assets/STONE-CASTRO/sto-blackout-image1.jpg',NULL,1,97,1),
	(178,'Image','2014-12-11 15:26:37','2014-12-11 15:26:37','sto-blackout-show2.jpg','sto blackout show2','assets/STONE-CASTRO/sto-blackout-show2.jpg',NULL,1,97,1),
	(179,'Image','2014-12-11 15:26:41','2014-12-11 15:26:41','sto-blackout-show1.jpg','sto blackout show1','assets/STONE-CASTRO/sto-blackout-show1.jpg',NULL,1,97,1),
	(180,'Image','2014-12-11 15:26:42','2014-12-11 15:26:42','sto-blackout-poster.jpg','sto blackout poster','assets/STONE-CASTRO/sto-blackout-poster.jpg',NULL,1,97,1),
	(181,'Image','2014-12-11 15:26:44','2014-12-11 15:26:44','sto-blackout-image2.jpg','sto blackout image2','assets/STONE-CASTRO/sto-blackout-image2.jpg',NULL,1,97,1),
	(182,'Image','2014-12-11 15:26:45','2014-12-11 15:26:45','sto-blackout-program.jpg','sto blackout program','assets/STONE-CASTRO/sto-blackout-program.jpg',NULL,1,97,1),
	(183,'Image','2014-12-11 15:26:46','2014-12-11 15:26:46','sto-blackout-program-cover.jpg','sto blackout program cover','assets/STONE-CASTRO/sto-blackout-program-cover.jpg',NULL,1,97,1),
	(184,'Folder','2014-12-14 17:25:14','2014-12-14 17:25:14','ACH-GROUP','ACH-GROUP','assets/ACH-GROUP/',NULL,1,0,1),
	(185,'Image','2014-12-14 17:26:15','2014-12-14 17:26:15','VITA-Exterior-2B.jpg','VITA Exterior 2B','assets/ACH-GROUP/VITA-Exterior-2B.jpg',NULL,1,184,1),
	(186,'Image','2014-12-14 17:26:19','2014-12-14 17:26:19','VITA-Exterior-1A.jpg','VITA Exterior 1A','assets/ACH-GROUP/VITA-Exterior-1A.jpg',NULL,1,184,1),
	(187,'Image','2014-12-14 17:30:32','2014-12-14 17:30:32','VITA-SmartRoom.jpg','VITA SmartRoom','assets/ACH-GROUP/VITA-SmartRoom.jpg',NULL,1,184,1),
	(188,'Folder','2014-12-14 17:53:22','2014-12-14 17:53:22','IDC','IDC','assets/IDC/',NULL,1,0,1),
	(189,'Image','2014-12-14 17:53:41','2014-12-14 17:53:41','idc-3d.jpg','idc 3d','assets/IDC/idc-3d.jpg',NULL,1,188,1),
	(190,'Image','2014-12-14 17:53:44','2014-12-14 17:53:44','idc-poster1.jpg','idc poster1','assets/IDC/idc-poster1.jpg',NULL,1,188,1),
	(191,'Image','2014-12-14 17:53:47','2014-12-14 17:53:47','idc-stationery1.jpg','idc stationery1','assets/IDC/idc-stationery1.jpg',NULL,1,188,1),
	(192,'Image','2014-12-14 17:53:48','2014-12-14 17:53:48','idc-stationery2.jpg','idc stationery2','assets/IDC/idc-stationery2.jpg',NULL,1,188,1),
	(193,'Image','2014-12-14 17:53:52','2014-12-14 17:53:52','idc-style-cover.jpg','idc style cover','assets/IDC/idc-style-cover.jpg',NULL,1,188,1),
	(194,'Image','2014-12-14 17:53:56','2014-12-14 17:53:56','idc-style-spread1.jpg','idc style spread1','assets/IDC/idc-style-spread1.jpg',NULL,1,188,1),
	(195,'Image','2014-12-14 17:53:58','2014-12-14 17:53:58','idc-style-spread2.jpg','idc style spread2','assets/IDC/idc-style-spread2.jpg',NULL,1,188,1),
	(196,'Image','2014-12-14 17:54:00','2014-12-14 17:54:00','idc-style-spread3.jpg','idc style spread3','assets/IDC/idc-style-spread3.jpg',NULL,1,188,1),
	(197,'Image','2014-12-14 17:54:06','2014-12-14 17:54:06','idc-web1.jpg','idc web1','assets/IDC/idc-web1.jpg',NULL,1,188,1),
	(198,'Image','2014-12-14 17:54:08','2014-12-14 17:54:08','idc-web2.jpg','idc web2','assets/IDC/idc-web2.jpg',NULL,1,188,1),
	(199,'Image','2014-12-14 17:56:55','2014-12-14 17:56:55','idc-tile.jpg','idc tile','assets/IDC/idc-tile.jpg',NULL,1,188,1),
	(200,'Image','2014-12-14 18:36:00','2014-12-14 18:36:00','idc-stationery3.jpg','idc stationery3','assets/IDC/idc-stationery3.jpg',NULL,1,188,1),
	(201,'Image','2014-12-14 19:02:53','2014-12-14 19:02:53','sah-opal-tile.jpg','sah opal tile','assets/OPAL/sah-opal-tile.jpg',NULL,1,41,1),
	(202,'Image','2014-12-14 19:17:35','2014-12-15 16:32:57','sah-opal-kitchen.jpg','sah opal kitchen','assets/OPAL/sah-opal-kitchen.jpg',NULL,1,41,1),
	(203,'Image','2014-12-14 19:56:38','2014-12-14 19:56:38','g82-feature.jpg','g82 feature','assets/G82/g82-feature.jpg',NULL,1,3,1),
	(204,'Image','2014-12-14 20:01:35','2014-12-14 20:01:35','sto-motortown-feature.jpg','sto motortown feature','assets/STONE-CASTRO/sto-motortown-feature.jpg',NULL,1,97,1),
	(205,'Image','2014-12-14 20:04:25','2014-12-14 20:04:25','aida-feature.jpg','aida feature','assets/AIDA/aida-feature.jpg',NULL,1,10,1),
	(206,'Folder','2014-12-14 20:25:09','2014-12-14 20:25:09','Pfitzner-Furniture','Pfitzner-Furniture','assets/Pfitzner-Furniture/',NULL,1,0,1),
	(207,'Image','2014-12-14 20:25:54','2014-12-14 20:25:54','pfi-photo2.jpg','pfi photo2','assets/Pfitzner-Furniture/pfi-photo2.jpg',NULL,1,206,1),
	(208,'Image','2014-12-14 20:25:55','2014-12-14 20:25:55','pfi-photo1.jpg','pfi photo1','assets/Pfitzner-Furniture/pfi-photo1.jpg',NULL,1,206,1),
	(209,'Image','2014-12-14 20:25:55','2014-12-14 20:25:55','pfi-photo3.jpg','pfi photo3','assets/Pfitzner-Furniture/pfi-photo3.jpg',NULL,1,206,1),
	(210,'Image','2014-12-14 20:26:41','2014-12-14 20:26:41','pfi-fb-foldout6.jpg','pfi fb foldout6','assets/Pfitzner-Furniture/pfi-fb-foldout6.jpg',NULL,1,206,1),
	(211,'Image','2014-12-14 20:26:42','2014-12-14 20:26:42','pfi-fb-foldout3.jpg','pfi fb foldout3','assets/Pfitzner-Furniture/pfi-fb-foldout3.jpg',NULL,1,206,1),
	(212,'Image','2014-12-14 20:26:43','2014-12-14 20:26:43','pfi-fb-foldout4.jpg','pfi fb foldout4','assets/Pfitzner-Furniture/pfi-fb-foldout4.jpg',NULL,1,206,1),
	(213,'Image','2014-12-14 20:26:45','2014-12-14 20:26:45','pfi-fb-foldout1.jpg','pfi fb foldout1','assets/Pfitzner-Furniture/pfi-fb-foldout1.jpg',NULL,1,206,1),
	(214,'Image','2014-12-14 20:26:47','2014-12-14 20:26:47','pfi-fb-foldout2.jpg','pfi fb foldout2','assets/Pfitzner-Furniture/pfi-fb-foldout2.jpg',NULL,1,206,1),
	(215,'Image','2014-12-14 20:26:47','2014-12-14 20:26:47','pfi-fb-foldout5.jpg','pfi fb foldout5','assets/Pfitzner-Furniture/pfi-fb-foldout5.jpg',NULL,1,206,1),
	(216,'Image','2014-12-14 20:26:49','2014-12-14 20:26:49','pfi-fb-foldout7.jpg','pfi fb foldout7','assets/Pfitzner-Furniture/pfi-fb-foldout7.jpg',NULL,1,206,1),
	(217,'Image','2014-12-14 20:27:11','2014-12-14 20:27:11','pfi-stationery.jpg','pfi stationery','assets/Pfitzner-Furniture/pfi-stationery.jpg',NULL,1,206,1),
	(218,'Image','2014-12-14 20:35:41','2014-12-14 20:35:41','pfi-logo.jpg','pfi logo','assets/Pfitzner-Furniture/pfi-logo.jpg',NULL,1,206,1),
	(219,'Image','2014-12-14 20:46:41','2014-12-14 20:46:41','pfi-web1a.jpg','pfi web1a','assets/Pfitzner-Furniture/pfi-web1a.jpg',NULL,1,206,1),
	(220,'Folder','2014-12-14 22:50:34','2014-12-14 22:50:34','ECOSCORE','ECOSCORE','assets/ECOSCORE/',NULL,1,0,1),
	(221,'Image','2014-12-14 22:54:13','2014-12-14 22:54:13','eco-icons.jpg','eco icons','assets/ECOSCORE/eco-icons.jpg',NULL,1,220,1),
	(222,'Image','2014-12-14 22:54:14','2014-12-14 22:54:14','eco-report-spread.jpg','eco report spread','assets/ECOSCORE/eco-report-spread.jpg',NULL,1,220,1),
	(223,'Image','2014-12-14 22:54:15','2014-12-14 22:54:15','eco-website.jpg','eco website','assets/ECOSCORE/eco-website.jpg',NULL,1,220,1),
	(224,'Image','2014-12-14 22:54:17','2014-12-14 22:54:17','eco-report.jpg','eco report','assets/ECOSCORE/eco-report.jpg',NULL,1,220,1),
	(225,'Image','2014-12-14 22:54:17','2014-12-14 22:54:17','eco-logo.jpg','eco logo','assets/ECOSCORE/eco-logo.jpg',NULL,1,220,1),
	(226,'Image','2014-12-14 22:56:04','2014-12-14 22:56:04','eco-feature.jpg','eco feature','assets/ECOSCORE/eco-feature.jpg',NULL,1,220,1),
	(227,'Folder','2014-12-14 23:24:21','2014-12-14 23:24:21','DIA','DIA','assets/DIA/',NULL,1,0,1),
	(228,'Image','2014-12-14 23:24:56','2014-12-14 23:24:56','dia-bottle.jpg','dia bottle','assets/DIA/dia-bottle.jpg',NULL,1,227,1),
	(229,'Image','2014-12-14 23:24:57','2014-12-14 23:24:57','dia-logo.jpg','dia logo','assets/DIA/dia-logo.jpg',NULL,1,227,1),
	(230,'Image','2014-12-14 23:25:00','2014-12-14 23:25:00','dia-feature.jpg','dia feature','assets/DIA/dia-feature.jpg',NULL,1,227,1),
	(231,'Image','2014-12-14 23:25:02','2014-12-14 23:25:02','dia-poster.jpg','dia poster','assets/DIA/dia-poster.jpg',NULL,1,227,1),
	(232,'Image','2014-12-14 23:25:02','2014-12-14 23:25:02','dia-invite.jpg','dia invite','assets/DIA/dia-invite.jpg',NULL,1,227,1),
	(233,'Image','2014-12-14 23:25:03','2014-12-14 23:25:03','dia-website.jpg','dia website','assets/DIA/dia-website.jpg',NULL,1,227,1),
	(234,'Folder','2014-12-14 23:50:26','2014-12-14 23:50:26','KIDS-MOVE','KIDS-MOVE','assets/KIDS-MOVE/',NULL,1,0,1),
	(235,'Image','2014-12-14 23:50:45','2014-12-14 23:50:45','KIDS-MOVE-FEATURE.jpg','KIDS MOVE FEATURE','assets/KIDS-MOVE/KIDS-MOVE-FEATURE.jpg',NULL,1,234,1),
	(236,'Image','2014-12-15 16:51:17','2014-12-15 16:51:17','atl-blacklabel-colseup.jpg','atl blacklabel colseup','assets/Atlas/atl-blacklabel-colseup.jpg',NULL,1,21,1),
	(237,'Image','2014-12-15 16:52:05','2014-12-15 16:52:05','atl-bcards.jpg','atl bcards','assets/Atlas/atl-bcards.jpg',NULL,1,21,1),
	(238,'Image','2014-12-15 16:53:42','2014-12-15 16:53:42','atl-terros-sauv-closeup.jpg','atl terros sauv closeup','assets/Atlas/atl-terros-sauv-closeup.jpg',NULL,1,21,1),
	(239,'Image','2014-12-15 17:05:45','2014-12-15 17:05:45','atl-terros.jpg','atl terros','assets/Atlas/atl-terros.jpg',NULL,1,21,1),
	(240,'Image','2014-12-15 17:15:31','2014-12-15 17:15:31','atl-terros-sauv-closeup-tall.jpg','atl terros sauv closeup tall','assets/Atlas/atl-terros-sauv-closeup-tall.jpg',NULL,1,21,1),
	(241,'Image','2014-12-15 17:29:50','2014-12-15 17:29:50','atl-terros-riesling.jpg','atl terros riesling','assets/Atlas/atl-terros-riesling.jpg',NULL,1,21,1),
	(242,'Image','2014-12-15 17:29:55','2014-12-15 17:29:55','atl-terros-riesling-closeup.jpg','atl terros riesling closeup','assets/Atlas/atl-terros-riesling-closeup.jpg',NULL,1,21,1),
	(243,'Image','2014-12-15 18:03:34','2014-12-15 18:03:34','atl-terros-jaw.jpg','atl terros jaw','assets/Atlas/atl-terros-jaw.jpg',NULL,1,21,1),
	(244,'Folder','2014-12-16 18:17:18','2014-12-16 18:17:18','ERGO','ERGO','assets/ERGO/',NULL,1,0,1),
	(245,'Image','2014-12-16 18:17:51','2014-12-16 18:17:51','ERGO-BCARDS-PATERN.jpg','ERGO BCARDS PATERN','assets/ERGO/ERGO-BCARDS-PATERN.jpg',NULL,1,244,1),
	(246,'Image','2014-12-16 19:00:27','2014-12-16 19:00:27','ERGO-BCARDS-STACK.jpg','ERGO BCARDS STACK','assets/ERGO/ERGO-BCARDS-STACK.jpg',NULL,1,244,1),
	(247,'Image','2014-12-16 20:03:59','2014-12-16 20:03:59','atl-terros-carton.jpg','atl terros carton','assets/Atlas/atl-terros-carton.jpg',NULL,1,21,1),
	(248,'Image','2014-12-16 20:17:16','2014-12-16 20:17:16','atl-terros-carton-title.jpg','atl terros carton title','assets/Atlas/atl-terros-carton-title.jpg',NULL,1,21,1),
	(250,'Image','2014-12-16 22:12:19','2014-12-16 22:12:19','gig-letterfrom-paula-feature.jpg','gig letterfrom paula feature','assets/GETTY-IMAGES/gig-letterfrom-paula-feature.jpg',NULL,1,30,1),
	(251,'Folder','2014-12-17 22:26:14','2014-12-17 22:26:14','24-FRAMES','24-FRAMES','assets/24-FRAMES/',NULL,1,0,1),
	(253,'Image','2014-12-17 22:26:45','2014-12-17 22:26:45','Carriageworks.jpg','Carriageworks','assets/24-FRAMES/Carriageworks.jpg',NULL,1,251,1),
	(254,'Folder','2014-12-17 22:27:09','2014-12-17 22:27:09','ODASA','ODASA','assets/ODASA/',NULL,1,0,1),
	(255,'Image','2014-12-17 22:27:43','2014-12-17 22:27:43','oda-website2a.jpg','oda website2a','assets/ODASA/oda-website2a.jpg',NULL,1,254,1),
	(256,'Image','2014-12-17 22:27:44','2014-12-17 22:27:44','oda-website1a.jpg','oda website1a','assets/ODASA/oda-website1a.jpg',NULL,1,254,1),
	(257,'Image','2014-12-17 22:41:27','2014-12-17 22:41:27','oda-map.jpg','oda map','assets/ODASA/oda-map.jpg',NULL,1,254,1),
	(258,'Image','2014-12-17 22:44:39','2014-12-17 22:44:39','oda-cubes.jpg','oda cubes','assets/ODASA/oda-cubes.jpg',NULL,1,254,1),
	(259,'Image','2014-12-17 22:49:54','2014-12-17 22:49:54','oda-rah-image.jpg','oda rah image','assets/ODASA-RAH/oda-rah-image.jpg',NULL,1,49,1),
	(260,'Folder','2014-12-17 23:03:14','2014-12-17 23:03:14','APBSA','APBSA','assets/APBSA/',NULL,1,0,1),
	(261,'Image','2014-12-17 23:03:37','2014-12-17 23:03:37','Architectdo.jpg','Architectdo','assets/APBSA/Architectdo.jpg',NULL,1,260,1),
	(262,'Image','2014-12-17 23:32:22','2014-12-17 23:32:22','oda-feature.jpg','oda feature','assets/ODASA/oda-feature.jpg',NULL,1,254,1),
	(263,'Folder','2014-12-17 23:54:01','2014-12-17 23:54:01','AOC','AOC','assets/AOC/',NULL,1,0,1),
	(264,'Image','2014-12-17 23:54:46','2014-12-17 23:54:46','ignitenews.jpg','ignitenews','assets/AOC/ignitenews.jpg',NULL,1,263,1),
	(265,'Image','2014-12-18 00:20:32','2014-12-18 00:20:32','pfi-feature.jpg','pfi feature','assets/Pfitzner-Furniture/pfi-feature.jpg',NULL,1,206,1),
	(266,'Image','2014-12-18 16:05:01','2014-12-18 16:05:01','erg-logo.jpg','erg logo','assets/ERGO/erg-logo.jpg',NULL,1,244,1),
	(267,'Image','2014-12-18 21:17:36','2014-12-18 21:17:36','oda-consider-cover.jpg','oda consider cover','assets/ODASA/oda-consider-cover.jpg',NULL,1,254,1),
	(268,'Image','2014-12-18 21:17:41','2014-12-18 21:17:41','oda-consider-insidecover.jpg','oda consider insidecover','assets/ODASA/oda-consider-insidecover.jpg',NULL,1,254,1),
	(269,'Image','2014-12-18 21:17:46','2014-12-18 21:17:46','ODA-biscards-flat.jpg','ODA biscards flat','assets/ODASA/ODA-biscards-flat.jpg',NULL,1,254,1),
	(270,'Image','2014-12-18 22:31:20','2014-12-18 22:31:20','oda-consider-pagecurl.jpg','oda consider pagecurl','assets/ODASA/oda-consider-pagecurl.jpg',NULL,1,254,1),
	(271,'Image','2014-12-18 22:31:22','2014-12-18 22:31:22','oda-consider-detail.jpg','oda consider detail','assets/ODASA/oda-consider-detail.jpg',NULL,1,254,1),
	(272,'Image','2014-12-18 22:53:05','2014-12-18 22:53:05','oda-consider-fan.jpg','oda consider fan','assets/ODASA/oda-consider-fan.jpg',NULL,1,254,1),
	(273,'Image','2014-12-18 23:14:21','2014-12-18 23:14:21','oda-consider-detail2.jpg','oda consider detail2','assets/ODASA/oda-consider-detail2.jpg',NULL,1,254,1),
	(274,'Image','2014-12-18 23:33:37','2014-12-18 23:33:37','oda-consider-spread.jpg','oda consider spread','assets/ODASA/oda-consider-spread.jpg',NULL,1,254,1),
	(275,'Image','2014-12-18 23:45:28','2014-12-18 23:45:28','oda-consider-cover2.jpg','oda consider cover2','assets/ODASA/oda-consider-cover2.jpg',NULL,1,254,1),
	(276,'Image','2014-12-21 17:46:34','2014-12-21 17:46:34','KAT-type.jpg','KAT type','assets/Katrina-Webb/KAT-type.jpg',NULL,1,90,1),
	(277,'Image','2014-12-21 18:16:18','2014-12-21 18:16:18','gig-bad-feature.jpg','gig bad feature','assets/GETTY-IMAGES/gig-bad-feature.jpg',NULL,1,30,1),
	(278,'Image','2014-12-21 18:52:24','2014-12-21 18:52:24','atl-terros-feature.jpg','atl terros feature','assets/Atlas/atl-terros-feature.jpg',NULL,1,21,1),
	(279,'Image','2014-12-21 20:41:06','2014-12-21 20:41:06','ergo-resevior.jpg','ergo resevior','assets/ERGO/ergo-resevior.jpg',NULL,1,244,1),
	(280,'Image','2014-12-21 21:00:22','2014-12-21 21:00:22','ergo-web.jpg','ergo web','assets/ERGO/ergo-web.jpg',NULL,1,244,1),
	(281,'Image','2014-12-21 21:05:35','2014-12-21 21:05:35','ergo-web2.jpg','ergo web2','assets/ERGO/ergo-web2.jpg',NULL,1,244,1),
	(282,'Image','2014-12-21 22:05:45','2014-12-21 22:05:45','wba-nab-interior4.jpg','wba nab interior4','assets/NAB/wba-nab-interior4.jpg',NULL,1,12,1),
	(283,'Image','2014-12-21 22:05:50','2014-12-21 22:05:50','wba-nab-interior5.jpg','wba nab interior5','assets/NAB/wba-nab-interior5.jpg',NULL,1,12,1),
	(284,'Image','2014-12-21 22:05:51','2014-12-21 22:05:51','wba-nab-interior7.jpg','wba nab interior7','assets/NAB/wba-nab-interior7.jpg',NULL,1,12,1),
	(285,'Image','2014-12-21 22:05:52','2014-12-21 22:05:52','wba-nab-interior3.jpg','wba nab interior3','assets/NAB/wba-nab-interior3.jpg',NULL,1,12,1),
	(286,'Image','2014-12-21 22:20:44','2014-12-21 22:20:44','wba-nab-interior8.jpg','wba nab interior8','assets/NAB/wba-nab-interior8.jpg',NULL,1,12,1),
	(287,'Folder','2014-12-22 18:45:51','2014-12-22 18:45:51','AILA','AILA','assets/AILA/',NULL,1,0,1),
	(288,'Image','2014-12-22 19:00:29','2014-12-22 19:00:29','AILA-brouchre-spread1.jpg','AILA brouchre spread1','assets/AILA/AILA-brouchre-spread1.jpg',NULL,1,287,1),
	(289,'Image','2014-12-22 19:00:30','2014-12-22 19:00:30','AILA-stack2.jpg','AILA stack2','assets/AILA/AILA-stack2.jpg',NULL,1,287,1),
	(290,'Image','2014-12-22 19:00:35','2014-12-22 19:00:35','AILA-cover2.jpg','AILA cover2','assets/AILA/AILA-cover2.jpg',NULL,1,287,1),
	(291,'Image','2014-12-22 19:00:38','2014-12-22 19:00:38','AILA-cover-open.jpg','AILA cover open','assets/AILA/AILA-cover-open.jpg',NULL,1,287,1),
	(292,'Image','2014-12-22 19:00:39','2014-12-22 19:00:39','AILA-brouchre-spread4.jpg','AILA brouchre spread4','assets/AILA/AILA-brouchre-spread4.jpg',NULL,1,287,1),
	(293,'Image','2014-12-22 19:00:40','2014-12-22 19:00:40','AILA-brouchre-spread3.jpg','AILA brouchre spread3','assets/AILA/AILA-brouchre-spread3.jpg',NULL,1,287,1),
	(294,'Image','2014-12-22 19:00:44','2014-12-22 19:00:44','AILA-brouchre-spread2.jpg','AILA brouchre spread2','assets/AILA/AILA-brouchre-spread2.jpg',NULL,1,287,1),
	(295,'Image','2014-12-22 19:09:55','2014-12-22 19:09:55','AILA-cover-open2.jpg','AILA cover open2','assets/AILA/AILA-cover-open2.jpg',NULL,1,287,1),
	(296,'Image','2014-12-22 22:26:33','2014-12-22 22:26:33','wba-nab-interior.long.5.jpg','wba nab interior.long.5','assets/NAB/wba-nab-interior.long.5.jpg',NULL,1,12,1),
	(297,'Image','2014-12-22 22:26:34','2014-12-22 22:26:34','wba-nab-interior-vector1.jpg','wba nab interior vector1','assets/NAB/wba-nab-interior-vector1.jpg',NULL,1,12,1),
	(298,'Image','2014-12-22 22:33:28','2014-12-22 22:33:28','AILA-floor.jpg','AILA floor','assets/AILA/AILA-floor.jpg',NULL,1,287,1),
	(299,'Image','2014-12-22 22:34:24','2014-12-22 22:34:24','AILA-directors.jpg','AILA directors','assets/AILA/AILA-directors.jpg',NULL,1,287,1),
	(300,'Image','2014-12-22 22:54:09','2014-12-22 22:54:09','AILA-graphic-type.jpg','AILA graphic type','assets/AILA/AILA-graphic-type.jpg',NULL,1,287,1),
	(301,'Image','2014-12-22 23:01:19','2014-12-22 23:01:19','wba-nab-interior-vector2.jpg','wba nab interior vector2','assets/NAB/wba-nab-interior-vector2.jpg',NULL,1,12,1),
	(302,'Image','2014-12-22 23:02:20','2014-12-22 23:02:20','AILA-tshirt.jpg','AILA tshirt','assets/AILA/AILA-tshirt.jpg',NULL,1,287,1),
	(303,'Image','2014-12-22 23:11:34','2014-12-22 23:11:34','AILA-logo-blue.jpg','AILA logo blue','assets/AILA/AILA-logo-blue.jpg',NULL,1,287,1),
	(304,'Image','2014-12-22 23:18:31','2014-12-22 23:18:31','AILA-radio.jpg','AILA radio','assets/AILA/AILA-radio.jpg',NULL,1,287,1),
	(305,'Image','2014-12-22 23:20:06','2014-12-22 23:20:06','wba-nab-interior-vector3.jpg','wba nab interior vector3','assets/NAB/wba-nab-interior-vector3.jpg',NULL,1,12,1),
	(306,'Image','2014-12-22 23:29:11','2014-12-22 23:29:11','AILA-bag.jpg','AILA bag','assets/AILA/AILA-bag.jpg',NULL,1,287,1),
	(307,'Image','2014-12-22 23:31:44','2014-12-22 23:31:44','AILA-logo-blue2.jpg','AILA logo blue2','assets/AILA/AILA-logo-blue2.jpg',NULL,1,287,1),
	(308,'Image','2014-12-22 23:40:53','2014-12-22 23:40:53','AILA-feature.jpg','AILA feature','assets/AILA/AILA-feature.jpg',NULL,1,287,1),
	(309,'Folder','2014-12-30 01:00:35','2014-12-30 01:00:35','AGDA','AGDA','assets/AGDA/',NULL,1,0,1),
	(310,'Image','2014-12-30 01:01:27','2014-12-30 01:01:27','jury.jpg','jury','assets/AGDA/jury.jpg',NULL,1,309,1),
	(311,'Image','2014-12-30 16:14:40','2014-12-30 16:14:40','Grab.spread.jpg','Grab.spread','assets/GETTY-IMAGES/Grab.spread.jpg',NULL,1,30,1),
	(312,'Image','2014-12-30 21:01:36','2014-12-30 21:01:36','weapon-spread.jpg','weapon spread','assets/GETTY-IMAGES/weapon-spread.jpg',NULL,1,30,1),
	(313,'Image','2014-12-30 21:01:37','2014-12-30 21:01:37','weapon.jpg','weapon','assets/GETTY-IMAGES/weapon.jpg',NULL,1,30,1),
	(314,'Folder','2014-12-30 21:02:27','2014-12-30 21:02:27','RODEO','RODEO','assets/RODEO/',NULL,1,0,1),
	(315,'Image','2014-12-30 21:02:51','2014-12-30 21:02:51','Studio4.jpg','Studio4','assets/RODEO/Studio4.jpg',NULL,1,314,1),
	(316,'Image','2014-12-30 22:08:38','2014-12-30 22:08:38','neon.jpg','neon','assets/RODEO/neon.jpg',NULL,1,314,1),
	(317,'Folder','2015-01-07 18:39:00','2015-01-07 18:39:00','CREWDSON','CREWDSON','assets/CREWDSON/',NULL,1,0,1),
	(319,'Image','2015-01-07 18:39:37','2015-01-07 18:39:37','Crewdson.talk.jpg','Crewdson.talk','assets/CREWDSON/Crewdson.talk.jpg',NULL,1,317,1),
	(320,'Image','2015-01-07 18:54:54','2015-01-07 18:54:54','oda-rah-exhibit4.jpg','oda rah exhibit4','assets/ODASA-RAH/oda-rah-exhibit4.jpg',NULL,1,49,1),
	(321,'Folder','2015-01-07 22:42:49','2015-01-07 22:42:49','SHOP','SHOP','assets/RODEO/SHOP/',NULL,1,314,1),
	(322,'Image','2015-01-07 22:44:24','2015-01-07 22:44:24','Rodeo.grey.t.jpeg','Rodeo.grey.t','assets/RODEO/SHOP/Rodeo.grey.t.jpeg',NULL,1,321,1),
	(323,'Image','2015-01-08 16:24:27','2015-01-08 16:24:27','Rodeo.white.t.jpeg','Rodeo.white.t','assets/RODEO/SHOP/Rodeo.white.t.jpeg',NULL,1,321,1),
	(324,'Image','2015-01-08 16:28:19','2015-01-08 16:28:19','wba-nab-interior11.jpg','wba nab interior11','assets/NAB/wba-nab-interior11.jpg',NULL,1,12,1),
	(325,'Image','2015-01-08 16:28:23','2015-01-08 16:28:23','wba-nab-interior9.jpg','wba nab interior9','assets/NAB/wba-nab-interior9.jpg',NULL,1,12,1),
	(326,'Image','2015-01-08 16:28:31','2015-01-08 16:28:31','wba-nab-interior10.jpg','wba nab interior10','assets/NAB/wba-nab-interior10.jpg',NULL,1,12,1),
	(327,'Image','2015-01-08 17:05:02','2015-01-08 17:05:02','Rodeo.frame.LA.jpeg','Rodeo.frame.LA','assets/RODEO/SHOP/Rodeo.frame.LA.jpeg',NULL,1,321,1),
	(328,'Image','2015-01-08 17:22:48','2015-01-08 17:22:48','oda-rah-menu.jpg','oda rah menu','assets/ODASA-RAH/oda-rah-menu.jpg',NULL,1,49,1),
	(329,'Image','2015-01-08 18:24:48','2015-01-08 18:24:48','Crewdson.wall.3.jpg','Crewdson.wall.3','assets/CREWDSON/Crewdson.wall.3.jpg',NULL,1,317,1),
	(330,'Image','2015-07-05 19:04:57','2015-07-05 19:05:39','wba-nab-feature.jpg','wba nab feature','assets/NAB/wba-nab-feature.jpg',NULL,1,12,1),
	(331,'Image','2015-07-05 19:07:36','2015-07-05 19:07:36','wba-nab-feature2.jpg','wba nab feature2','assets/NAB/wba-nab-feature2.jpg',NULL,1,12,1),
	(332,'Image','2015-07-05 19:19:47','2015-07-05 19:19:47','sto-wuh-feature.jpg','sto wuh feature','assets/STONE-CASTRO/sto-wuh-feature.jpg',NULL,1,97,1),
	(333,'Image','2015-07-05 19:36:23','2015-07-05 19:36:23','wba-nab-interior-home.jpg','wba nab interior home','assets/NAB/wba-nab-interior-home.jpg',NULL,1,12,1),
	(334,'Image','2015-07-05 19:38:36','2015-07-05 19:38:36','wba-nab-interior-home2.jpg','wba nab interior home2','assets/NAB/wba-nab-interior-home2.jpg',NULL,1,12,1),
	(335,'Image','2015-07-05 20:45:20','2015-07-05 20:45:20','sah-vac-feature.jpg','sah vac feature','assets/SA-HEALTH-VACCINATION/sah-vac-feature.jpg',NULL,1,73,1),
	(336,'Image','2015-07-06 00:00:02','2015-07-06 00:00:02','intro-logo-feature.jpg','intro logo feature','assets/INTRO/intro-logo-feature.jpg',NULL,1,143,1),
	(337,'Image','2015-07-06 00:22:53','2015-07-06 00:22:53','erg-logo-feature.jpg','erg logo feature','assets/ERGO/erg-logo-feature.jpg',NULL,1,244,1),
	(338,'Image','2015-07-06 00:29:51','2015-07-06 00:29:51','erg-logo-feature2.jpg','erg logo feature2','assets/ERGO/erg-logo-feature2.jpg',NULL,1,244,1),
	(339,'Image','2015-07-06 00:43:15','2015-07-06 00:43:15','Crewdson.ad.jpg','Crewdson.ad','assets/CREWDSON/Crewdson.ad.jpg',NULL,1,317,1),
	(340,'Image','2015-07-06 00:55:54','2015-07-06 00:55:54','aca-crewdson-broch.gif','aca crewdson broch','assets/CREWDSON/aca-crewdson-broch.gif',NULL,1,317,1),
	(341,'Image','2015-07-06 02:02:28','2015-07-06 02:02:28','AOC-INGITE-talk.jpg','AOC INGITE talk','assets/AOC/AOC-INGITE-talk.jpg',NULL,1,263,1),
	(342,'Image','2015-07-06 02:02:39','2015-07-07 18:18:35','aoc-feature.jpg','aoc feature','assets/AOC/aoc-feature.jpg',NULL,1,263,1),
	(343,'Folder','2015-07-06 19:38:54','2015-07-06 19:38:54','WDC','WDC','assets/WDC/',NULL,1,0,1),
	(344,'Image','2015-07-06 19:39:46','2015-07-06 19:39:46','WDC-BOOK-IMAGES-CONTENTS.jpg','WDC BOOK IMAGES CONTENTS','assets/WDC/WDC-BOOK-IMAGES-CONTENTS.jpg',NULL,1,343,1),
	(345,'Image','2015-07-06 19:39:53','2015-07-06 19:39:53','WDC-BOOK-IMAGES-CONTENTSCLOSE.jpg','WDC BOOK IMAGES CONTENTSCLOSE','assets/WDC/WDC-BOOK-IMAGES-CONTENTSCLOSE.jpg',NULL,1,343,1),
	(346,'Image','2015-07-06 19:39:53','2015-07-06 19:39:53','WDC-BOOK-IMAGES-INTRO.jpg','WDC BOOK IMAGES INTRO','assets/WDC/WDC-BOOK-IMAGES-INTRO.jpg',NULL,1,343,1),
	(347,'Image','2015-07-06 19:39:55','2015-07-06 19:39:55','WDC-BOOK-IMAGES-EXTEASCLOSE.jpg','WDC BOOK IMAGES EXTEASCLOSE','assets/WDC/WDC-BOOK-IMAGES-EXTEASCLOSE.jpg',NULL,1,343,1),
	(348,'Image','2015-07-06 19:39:56','2015-07-06 19:39:56','WDC-BOOK-IMAGES-GRAPH.jpg','WDC BOOK IMAGES GRAPH','assets/WDC/WDC-BOOK-IMAGES-GRAPH.jpg',NULL,1,343,1),
	(349,'Image','2015-07-06 19:39:59','2015-07-06 19:39:59','WDC-BOOK-IMAGES-DESIGNSPREAD.jpg','WDC BOOK IMAGES DESIGNSPREAD','assets/WDC/WDC-BOOK-IMAGES-DESIGNSPREAD.jpg',NULL,1,343,1),
	(350,'Image','2015-07-06 19:40:09','2015-07-06 19:40:09','WDC-BOOK-IMAGES-QUOTE.jpg','WDC BOOK IMAGES QUOTE','assets/WDC/WDC-BOOK-IMAGES-QUOTE.jpg',NULL,1,343,1),
	(351,'Image','2015-07-06 19:40:09','2015-07-06 19:40:09','WDC-BOOK-IMAGES-EXTRAS.jpg','WDC BOOK IMAGES EXTRAS','assets/WDC/WDC-BOOK-IMAGES-EXTRAS.jpg',NULL,1,343,1),
	(352,'Image','2015-07-06 19:40:10','2015-07-06 19:40:10','WDC-BOOK-IMAGES-REDDOTS.jpg','WDC BOOK IMAGES REDDOTS','assets/WDC/WDC-BOOK-IMAGES-REDDOTS.jpg',NULL,1,343,1),
	(353,'Image','2015-07-06 19:40:13','2015-07-06 19:40:13','WDC-BOOK-IMAGES-REDTYPE.jpg','WDC BOOK IMAGES REDTYPE','assets/WDC/WDC-BOOK-IMAGES-REDTYPE.jpg',NULL,1,343,1),
	(354,'Image','2015-07-06 19:40:14','2015-07-06 19:40:14','WDC-BOOK-IMAGES-DOT.jpg','WDC BOOK IMAGES DOT','assets/WDC/WDC-BOOK-IMAGES-DOT.jpg',NULL,1,343,1),
	(355,'Image','2015-07-06 19:40:16','2015-07-06 19:40:16','WDC-BOOK-IMAGES-QUOTESSPREAD.jpg','WDC BOOK IMAGES QUOTESSPREAD','assets/WDC/WDC-BOOK-IMAGES-QUOTESSPREAD.jpg',NULL,1,343,1),
	(356,'Image','2015-07-06 19:40:19','2015-07-06 19:40:19','WDC-BOOK-IMAGES-TRAJECTORY.jpg','WDC BOOK IMAGES TRAJECTORY','assets/WDC/WDC-BOOK-IMAGES-TRAJECTORY.jpg',NULL,1,343,1),
	(357,'Image','2015-07-06 19:40:22','2015-07-06 19:40:22','WDC-BOOK-IMAGES-TRAJECTORY2.jpg','WDC BOOK IMAGES TRAJECTORY2','assets/WDC/WDC-BOOK-IMAGES-TRAJECTORY2.jpg',NULL,1,343,1),
	(358,'Image','2015-07-06 19:40:23','2015-07-06 19:40:23','WDC-BOOK-IMAGES-YELLOWSPREAD.jpg','WDC BOOK IMAGES YELLOWSPREAD','assets/WDC/WDC-BOOK-IMAGES-YELLOWSPREAD.jpg',NULL,1,343,1),
	(359,'Image','2015-07-06 19:40:30','2015-07-06 19:40:30','WDC-CASES-0011.jpg','WDC CASES 0011','assets/WDC/WDC-CASES-0011.jpg',NULL,1,343,1),
	(360,'Image','2015-07-06 19:40:33','2015-07-06 19:40:33','WDC-BOOK-IMAGES-WHY.jpg','WDC BOOK IMAGES WHY','assets/WDC/WDC-BOOK-IMAGES-WHY.jpg',NULL,1,343,1),
	(361,'Image','2015-07-06 19:40:34','2015-07-06 19:40:34','WDC-CASE-OPEN-051.jpg','WDC CASE OPEN 051','assets/WDC/WDC-CASE-OPEN-051.jpg',NULL,1,343,1),
	(362,'Image','2015-07-06 19:40:36','2015-07-06 19:40:36','WDC-BOOK-IMAGES-SAMRI.jpg','WDC BOOK IMAGES SAMRI','assets/WDC/WDC-BOOK-IMAGES-SAMRI.jpg',NULL,1,343,1),
	(363,'Image','2015-07-06 19:40:37','2015-07-06 19:40:37','WDC-CASESOPEN-0004-150330.jpg','WDC CASESOPEN 0004 150330','assets/WDC/WDC-CASESOPEN-0004-150330.jpg',NULL,1,343,1),
	(364,'Image','2015-07-06 19:40:37','2015-07-06 19:40:37','WDC-STACK.jpg','WDC STACK','assets/WDC/WDC-STACK.jpg',NULL,1,343,1),
	(365,'Image','2015-07-06 19:40:39','2015-07-06 19:40:39','WDC-STANDING-036.jpg','WDC STANDING 036','assets/WDC/WDC-STANDING-036.jpg',NULL,1,343,1),
	(366,'Image','2015-07-06 19:40:39','2015-07-06 19:40:39','WDC-CASE-066.jpg','WDC CASE 066','assets/WDC/WDC-CASE-066.jpg',NULL,1,343,1),
	(367,'Image','2015-07-06 20:15:46','2015-07-06 20:15:46','WDC-STANDING-036-2.jpg','WDC STANDING 036 2','assets/WDC/WDC-STANDING-036-2.jpg',NULL,1,343,1),
	(368,'Image','2015-07-06 22:23:39','2015-07-06 22:23:39','WDC-WORKSHOP3.jpg','WDC WORKSHOP3','assets/WDC/WDC-WORKSHOP3.jpg',NULL,1,343,1),
	(369,'Image','2015-07-06 22:23:43','2015-07-06 22:23:43','WDC-WORKSHOP1.jpg','WDC WORKSHOP1','assets/WDC/WDC-WORKSHOP1.jpg',NULL,1,343,1),
	(370,'Image','2015-07-06 22:23:48','2015-07-06 22:23:48','WDC-WORKSHOP2.jpg','WDC WORKSHOP2','assets/WDC/WDC-WORKSHOP2.jpg',NULL,1,343,1),
	(371,'Image','2015-07-06 23:01:13','2015-07-06 23:01:13','WDC-STANDING-036-3.jpg','WDC STANDING 036 3','assets/WDC/WDC-STANDING-036-3.jpg',NULL,1,343,1),
	(372,'Image','2015-07-06 23:05:59','2015-07-06 23:05:59','WDC-STANDING-036-4.jpg','WDC STANDING 036 4','assets/WDC/WDC-STANDING-036-4.jpg',NULL,1,343,1),
	(373,'Image','2015-07-06 23:29:04','2015-07-06 23:29:04','WDC-STANDING-036-5.jpg','WDC STANDING 036 5','assets/WDC/WDC-STANDING-036-5.jpg',NULL,1,343,1),
	(374,'Image','2015-07-06 23:35:07','2016-06-01 22:46:30','wdc-feature.jpg','wdc feature','assets/WDC/wdc-feature.jpg',NULL,1,343,1),
	(375,'Image','2015-07-06 23:43:04','2015-07-06 23:43:04','gh-feature.jpg','gh feature','assets/GOODHOUSE/gh-feature.jpg',NULL,1,110,1),
	(376,'Image','2015-07-07 00:22:39','2015-07-07 00:22:39','dec-feature.jpg','dec feature','assets/DEC-WORKFORCE/dec-feature.jpg',NULL,1,159,1),
	(377,'Image','2015-07-07 00:37:21','2015-07-07 00:37:21','lms-feature.jpg','lms feature','assets/LMS-ENERGY/lms-feature.jpg',NULL,1,125,1),
	(378,'Image','2015-07-07 00:57:53','2015-07-07 00:57:53','kat-feature.jpg','kat feature','assets/Katrina-Webb/kat-feature.jpg',NULL,1,90,1),
	(379,'Image','2015-07-07 01:04:27','2015-07-07 01:04:27','oda-rah-feature.jpg','oda rah feature','assets/ODASA/oda-rah-feature.jpg',NULL,1,254,1),
	(380,'Image','2015-07-07 17:20:00','2015-07-07 17:20:00','gig-spikes2.jpg','gig spikes2','assets/GETTY-IMAGES/gig-spikes2.jpg',NULL,1,30,1),
	(381,'Image','2015-07-07 17:31:02','2015-07-07 17:33:28','gig-spikes-feature.jpg','gig spikes feature','assets/GETTY-IMAGES/gig-spikes-feature.jpg',NULL,1,30,1),
	(382,'Image','2015-07-07 18:07:36','2015-07-07 18:07:36','sto-blackout-feature.jpg','sto blackout feature','assets/STONE-CASTRO/sto-blackout-feature.jpg',NULL,1,97,1),
	(383,'Image','2015-07-07 18:18:07','2015-07-07 18:18:07','aoc-feature2.jpg','aoc feature2','assets/AOC/aoc-feature2.jpg',NULL,1,263,1),
	(384,'Image','2015-07-07 18:33:45','2015-07-07 18:33:45','aoc-feature3.jpg','aoc feature3','assets/AOC/aoc-feature3.jpg',NULL,1,263,1),
	(385,'Image','2015-07-07 20:28:30','2015-07-07 20:28:30','oda-typography.jpg','oda typography','assets/ODASA/oda-typography.jpg',NULL,1,254,1),
	(386,'Image','2015-07-07 20:28:33','2015-07-07 20:28:33','oda-typedark.jpg','oda typedark','assets/ODASA/oda-typedark.jpg',NULL,1,254,1),
	(387,'Image','2015-07-07 20:28:37','2015-07-07 20:28:37','oda-typeface.jpg','oda typeface','assets/ODASA/oda-typeface.jpg',NULL,1,254,1),
	(388,'Image','2015-07-07 20:29:03','2015-07-07 20:29:03','oda-colour.jpg','oda colour','assets/ODASA/oda-colour.jpg',NULL,1,254,1),
	(389,'Image','2015-07-07 20:42:23','2015-07-07 20:42:23','oda-colour2.jpg','oda colour2','assets/ODASA/oda-colour2.jpg',NULL,1,254,1),
	(390,'Image','2015-07-07 23:38:17','2015-07-07 23:38:17','ODA-DESIGNREVIEW-spread1.jpg','ODA DESIGNREVIEW spread1','assets/ODASA/ODA-DESIGNREVIEW-spread1.jpg',NULL,1,254,1),
	(391,'Image','2015-07-07 23:38:23','2015-07-07 23:38:23','ODA-DESIGNREVIEW-spread3.jpg','ODA DESIGNREVIEW spread3','assets/ODASA/ODA-DESIGNREVIEW-spread3.jpg',NULL,1,254,1),
	(392,'Image','2015-07-07 23:38:29','2015-07-07 23:38:29','ODA-DESIGNREVIEW-spread2.jpg','ODA DESIGNREVIEW spread2','assets/ODASA/ODA-DESIGNREVIEW-spread2.jpg',NULL,1,254,1),
	(393,'Image','2015-07-07 23:49:37','2015-07-07 23:49:37','ODA-DESIGNREVIEW-cover.jpg','ODA DESIGNREVIEW cover','assets/ODASA/ODA-DESIGNREVIEW-cover.jpg',NULL,1,254,1),
	(394,'Image','2015-07-08 00:24:37','2015-07-08 00:24:37','ODA-DESIGNREVIEW-diagram.jpg','ODA DESIGNREVIEW diagram','assets/ODASA/ODA-DESIGNREVIEW-diagram.jpg',NULL,1,254,1),
	(395,'Image','2015-07-08 00:32:49','2015-07-08 00:32:49','ODA-DESIGNREVIEW-diagram2.jpg','ODA DESIGNREVIEW diagram2','assets/ODASA/ODA-DESIGNREVIEW-diagram2.jpg',NULL,1,254,1),
	(396,'Image','2015-07-08 01:21:07','2015-07-08 01:21:07','ODA-DESIGNREVIEW-spine.jpg','ODA DESIGNREVIEW spine','assets/ODASA/ODA-DESIGNREVIEW-spine.jpg',NULL,1,254,1),
	(397,'Image','2015-07-08 01:34:38','2015-07-08 01:34:38','gig-services-feature.jpg','gig services feature','assets/GETTY-IMAGES/gig-services-feature.jpg',NULL,1,30,1),
	(398,'Image','2015-07-09 19:27:56','2015-07-09 19:27:56','ODA-DESIGNREVIEW-spread1v2.jpg','ODA DESIGNREVIEW spread1v2','assets/ODASA/ODA-DESIGNREVIEW-spread1v2.jpg',NULL,1,254,1),
	(399,'Image','2015-07-09 19:28:13','2015-07-09 19:28:13','ODA-DESIGNREVIEW-spread3v2.jpg','ODA DESIGNREVIEW spread3v2','assets/ODASA/ODA-DESIGNREVIEW-spread3v2.jpg',NULL,1,254,1),
	(400,'Image','2015-07-09 19:28:23','2015-07-09 19:28:23','ODA-DESIGNREVIEW-spread2v2.jpg','ODA DESIGNREVIEW spread2v2','assets/ODASA/ODA-DESIGNREVIEW-spread2v2.jpg',NULL,1,254,1),
	(401,'Image','2015-07-09 19:44:43','2015-07-09 19:44:43','ODA-logo.jpg','ODA logo','assets/ODASA/ODA-logo.jpg',NULL,1,254,1),
	(402,'Folder','2015-12-14 22:00:07','2015-12-14 22:00:07','SHOP','SHOP','assets/SHOP/',NULL,1,0,1),
	(403,'Image','2015-12-14 22:00:35','2015-12-14 22:00:35','White.T.jpg','White.T','assets/SHOP/White.T.jpg',NULL,1,402,1),
	(404,'Image','2015-12-14 22:00:35','2015-12-14 22:00:35','Grey.T.jpg','Grey.T','assets/SHOP/Grey.T.jpg',NULL,1,402,1),
	(406,'Image','2015-12-14 22:00:37','2015-12-14 22:00:37','LA.Frame.jpg','LA.Frame','assets/SHOP/LA.Frame.jpg',NULL,1,402,1),
	(407,'Image','2015-12-14 22:07:47','2015-12-14 22:07:47','weapon-spread.shop2.jpg','weapon spread.shop2','assets/SHOP/weapon-spread.shop2.jpg',NULL,1,402,1),
	(408,'Image','2015-12-19 18:45:23','2015-12-19 18:45:23','gi-services-feature.jpg','gi services feature','assets/gi-services-feature.jpg',NULL,1,0,1),
	(409,'Image','2015-12-19 18:46:36','2015-12-19 18:46:36','gi-services-feature.jpg','gi services feature','assets/GETTY-IMAGES/gi-services-feature.jpg',NULL,1,30,1),
	(410,'Image','2016-01-01 22:03:29','2016-01-01 22:03:29','kat-dream-rio-Rodeo-web.jpg','kat dream rio Rodeo web','assets/Katrina-Webb/kat-dream-rio-Rodeo-web.jpg',NULL,1,90,1),
	(411,'Image','2016-01-01 22:03:30','2016-01-01 22:03:30','kat-TEDx-web.jpg','kat TEDx web','assets/Katrina-Webb/kat-TEDx-web.jpg',NULL,1,90,1),
	(415,'Image','2016-01-03 22:02:06','2016-01-03 22:02:06','Rodeo-web.ST.jpg','Rodeo web.ST','assets/RODEO/Rodeo-web.ST.jpg',NULL,1,314,1),
	(416,'Image','2016-01-03 22:02:12','2016-01-03 22:02:12','Rodeo-web.SP.jpg','Rodeo web.SP','assets/RODEO/Rodeo-web.SP.jpg',NULL,1,314,1),
	(417,'Image','2016-01-03 22:02:13','2016-01-03 22:02:13','Rodeo-web.TH.jpg','Rodeo web.TH','assets/RODEO/Rodeo-web.TH.jpg',NULL,1,314,1),
	(418,'Image','2016-01-05 03:25:37','2016-01-05 03:25:37','idc.nth.tce.jpg','idc.nth.tce','assets/IDC/idc.nth.tce.jpg',NULL,1,188,1),
	(419,'Image','2016-01-05 03:25:38','2016-01-05 03:25:38','MD.sketch.jpg','MD.sketch','assets/IDC/MD.sketch.jpg',NULL,1,188,1),
	(420,'Image','2016-01-05 03:53:35','2016-01-05 03:53:35','KL.poster.jpg','KL.poster','assets/IDC/KL.poster.jpg',NULL,1,188,1),
	(421,'Image','2016-01-05 04:32:19','2016-01-05 04:32:19','event.bw.jpg','event.bw','assets/IDC/event.bw.jpg',NULL,1,188,1),
	(422,'Image','2016-01-05 15:43:51','2016-01-05 15:43:51','design-tracking.jpg','design tracking','assets/IDC/design-tracking.jpg',NULL,1,188,1),
	(423,'Image','2016-01-05 15:43:53','2016-01-05 15:43:53','you-think.jpg','you think','assets/IDC/you-think.jpg',NULL,1,188,1),
	(424,'Image','2016-01-05 15:43:55','2016-01-05 15:43:55','ideo.jpg','ideo','assets/IDC/ideo.jpg',NULL,1,188,1),
	(425,'Image','2016-01-05 15:43:57','2016-01-05 15:43:57','collab-more-bw.jpg','collab more bw','assets/IDC/collab-more-bw.jpg',NULL,1,188,1),
	(426,'Image','2016-01-05 17:25:46','2016-01-05 17:25:46','large-type.jpg','large type','assets/IDC/large-type.jpg',NULL,1,188,1),
	(427,'Image','2016-01-05 17:28:19','2016-01-05 17:28:19','MD.sketch.2.jpg','MD.sketch.2','assets/IDC/MD.sketch.2.jpg',NULL,1,188,1),
	(428,'Image','2016-01-05 17:37:52','2016-01-05 17:37:52','large-type.2.jpg','large type.2','assets/IDC/large-type.2.jpg',NULL,1,188,1),
	(429,'Image','2016-04-26 19:17:37','2016-04-26 19:17:37','crew-feature.jpg','crew feature','assets/CREWDSON/crew-feature.jpg',NULL,1,317,1),
	(430,'Image','2016-04-26 19:18:13','2016-04-26 19:18:13','apbsa-feature.jpg','apbsa feature','assets/APBSA/apbsa-feature.jpg',NULL,1,260,1),
	(431,'Image','2016-04-26 19:19:25','2016-04-26 19:19:25','vita-feature.jpg','vita feature','assets/ACH-GROUP/vita-feature.jpg',NULL,1,184,1),
	(432,'Image','2016-06-01 22:21:48','2016-06-01 22:21:48','aoc-menu.jpg','aoc menu','assets/AOC/aoc-menu.jpg',NULL,1,263,1),
	(433,'Image','2016-06-01 22:45:55','2016-06-01 22:45:55','wdc-menu.jpg','wdc menu','assets/WDC/wdc-menu.jpg',NULL,1,343,1),
	(434,'Image','2016-06-01 22:55:23','2016-06-01 22:55:23','wdc-menu.2.jpg','wdc menu.2','assets/WDC/wdc-menu.2.jpg',NULL,1,343,1),
	(435,'Image','2016-06-01 22:58:07','2016-06-01 22:58:07','wdc-menu.3.jpg','wdc menu.3','assets/WDC/wdc-menu.3.jpg',NULL,1,343,1),
	(436,'Folder','2016-06-01 23:11:25','2016-06-01 23:11:25','PAULA','PAULA','assets/PAULA/',NULL,1,0,1),
	(437,'Image','2016-06-01 23:11:49','2016-06-01 23:11:49','paula-menu.jpg','paula menu','assets/PAULA/paula-menu.jpg',NULL,1,436,1),
	(438,'Image','2016-06-02 19:55:43','2016-06-02 19:55:43','paula-grid.jpg','paula grid','assets/PAULA/paula-grid.jpg',NULL,1,436,1),
	(439,'Image','2016-06-02 19:55:47','2016-06-02 19:55:47','paula.nyskyline.jpg','paula.nyskyline','assets/PAULA/paula.nyskyline.jpg',NULL,1,436,1),
	(440,'Image','2016-06-02 20:14:59','2016-06-02 20:14:59','paula.pentagram.50.jpg','paula.pentagram.50','assets/PAULA/paula.pentagram.50.jpg',NULL,1,436,1),
	(441,'Image','2016-06-02 20:15:00','2016-06-02 20:15:00','paula.history.50.jpg','paula.history.50','assets/PAULA/paula.history.50.jpg',NULL,1,436,1),
	(442,'Image','2016-06-02 20:15:06','2016-06-02 20:15:06','paula.half.graphics.jpg','paula.half.graphics','assets/PAULA/paula.half.graphics.jpg',NULL,1,436,1),
	(443,'Image','2016-06-02 20:33:33','2016-06-02 20:33:33','paula.filming.50.jpg','paula.filming.50','assets/PAULA/paula.filming.50.jpg',NULL,1,436,1),
	(444,'Image','2016-06-02 20:46:45','2016-06-02 20:46:45','paula.walk.50.jpg','paula.walk.50','assets/PAULA/paula.walk.50.jpg',NULL,1,436,1),
	(445,'Image','2016-06-02 20:57:09','2016-06-02 20:57:09','paula.27.ad.jpg','paula.27.ad','assets/PAULA/paula.27.ad.jpg',NULL,1,436,1),
	(446,'Image','2016-06-02 22:29:29','2016-06-02 22:29:29','paula.27L2.jpg','paula.27L2','assets/PAULA/paula.27L2.jpg',NULL,1,436,1),
	(447,'Image','2016-06-02 22:29:32','2016-06-02 22:29:32','paula.27L1.jpg','paula.27L1','assets/PAULA/paula.27L1.jpg',NULL,1,436,1),
	(448,'Image','2016-06-02 22:41:13','2016-06-02 22:41:13','gig-xseg-wall.jpg','gig xseg wall','assets/GETTY-IMAGES/gig-xseg-wall.jpg',NULL,1,30,1),
	(449,'Image','2016-06-02 22:53:52','2016-06-02 22:53:52','getty.xseg.invites.jpg','getty.xseg.invites','assets/GETTY-IMAGES/getty.xseg.invites.jpg',NULL,1,30,1),
	(450,'Image','2016-06-02 22:53:52','2016-06-02 22:53:52','getty.xseg.invite.jpg','getty.xseg.invite','assets/GETTY-IMAGES/getty.xseg.invite.jpg',NULL,1,30,1),
	(451,'Image','2016-06-02 22:54:31','2016-06-02 22:54:31','getty.look-not-read.jpg','getty.look not read','assets/GETTY-IMAGES/getty.look-not-read.jpg',NULL,1,30,1),
	(452,'Image','2016-06-02 23:06:06','2016-06-02 23:06:06','paula.27L4.jpg','paula.27L4','assets/PAULA/paula.27L4.jpg',NULL,1,436,1),
	(453,'Image','2016-06-02 23:06:07','2016-06-02 23:06:07','paula.27L3.jpg','paula.27L3','assets/PAULA/paula.27L3.jpg',NULL,1,436,1),
	(454,'Image','2016-06-02 23:06:08','2016-06-02 23:06:08','paula.27L5.jpg','paula.27L5','assets/PAULA/paula.27L5.jpg',NULL,1,436,1),
	(455,'Image','2016-06-02 23:59:34','2016-06-02 23:59:34','paula.27L.phone.jpg','paula.27L.phone','assets/PAULA/paula.27L.phone.jpg',NULL,1,436,1),
	(456,'Image','2016-06-03 00:56:31','2016-06-03 00:56:31','atl.menu.jpg','atl.menu','assets/Atlas/atl.menu.jpg',NULL,1,21,1),
	(457,'Image','2016-06-03 01:28:55','2016-06-03 01:28:55','atl-spaniard.2.jpg','atl spaniard.2','assets/Atlas/atl-spaniard.2.jpg',NULL,1,21,1),
	(458,'Image','2016-06-03 01:38:24','2016-06-03 01:38:24','atlastanks.jpg','atlastanks','assets/Atlas/atlastanks.jpg',NULL,1,21,1),
	(459,'Image','2016-06-03 02:01:10','2016-06-03 02:01:10','atl.vines.jpg','atl.vines','assets/Atlas/atl.vines.jpg',NULL,1,21,1),
	(460,'Image','2016-06-03 02:08:29','2016-06-03 02:08:29','atl-blacklabel.jpg','atl blacklabel','assets/Atlas/atl-blacklabel.jpg',NULL,1,21,1),
	(461,'Image','2016-06-06 16:03:06','2016-06-06 16:03:06','apbsa.shoot.50.jpg','apbsa.shoot.50','assets/APBSA/apbsa.shoot.50.jpg',NULL,1,260,1),
	(462,'Image','2016-06-06 16:03:07','2016-06-06 16:03:07','apbsa.shoot.full.jpg','apbsa.shoot.full','assets/APBSA/apbsa.shoot.full.jpg',NULL,1,260,1),
	(463,'Image','2016-07-01 01:32:36','2016-07-01 01:32:36','AILA-webhome.jpg','AILA webhome','assets/AILA/AILA-webhome.jpg',NULL,1,287,1),
	(464,'Image','2016-07-01 01:32:37','2016-07-01 01:32:37','AILA-websessions.jpg','AILA websessions','assets/AILA/AILA-websessions.jpg',NULL,1,287,1),
	(465,'Image','2016-07-01 01:32:42','2016-07-01 01:32:42','AILA-webprogram.jpg','AILA webprogram','assets/AILA/AILA-webprogram.jpg',NULL,1,287,1);

/*!40000 ALTER TABLE `File` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Group`;

CREATE TABLE `Group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Group') CHARACTER SET utf8 DEFAULT 'Group',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8,
  `Code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HtmlEditorConfig` mediumtext CHARACTER SET utf8,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Group` WRITE;
/*!40000 ALTER TABLE `Group` DISABLE KEYS */;

INSERT INTO `Group` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `HtmlEditorConfig`, `ParentID`)
VALUES
	(1,'Group','2014-11-11 13:25:47','2014-11-11 13:25:47','Content Authors',NULL,'content-authors',0,1,NULL,0),
	(2,'Group','2014-11-11 13:25:47','2014-11-11 13:25:47','Administrators',NULL,'administrators',0,0,NULL,0);

/*!40000 ALTER TABLE `Group` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Group_Members
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Group_Members`;

CREATE TABLE `Group_Members` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Group_Members` WRITE;
/*!40000 ALTER TABLE `Group_Members` DISABLE KEYS */;

INSERT INTO `Group_Members` (`ID`, `GroupID`, `MemberID`)
VALUES
	(1,2,1);

/*!40000 ALTER TABLE `Group_Members` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Group_Roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Group_Roles`;

CREATE TABLE `Group_Roles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `PermissionRoleID` (`PermissionRoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table HomePage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `HomePage`;

CREATE TABLE `HomePage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MainImageID` int(11) NOT NULL DEFAULT '0',
  `TwitterURL` mediumtext CHARACTER SET utf8,
  `TumblrURL` mediumtext CHARACTER SET utf8,
  `InstagramURL` mediumtext CHARACTER SET utf8,
  `VimeoURL` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`),
  KEY `MainImageID` (`MainImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `HomePage` WRITE;
/*!40000 ALTER TABLE `HomePage` DISABLE KEYS */;

INSERT INTO `HomePage` (`ID`, `MainImageID`, `TwitterURL`, `TumblrURL`, `InstagramURL`, `VimeoURL`)
VALUES
	(1,33,'http://www.twitter.com/tobinlush','http://thinkingisaweapon.com','http://www.instagram.com/rodeo_studio','http://www.vimeo.com/rodeo');

/*!40000 ALTER TABLE `HomePage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table HomePage_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `HomePage_Live`;

CREATE TABLE `HomePage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MainImageID` int(11) NOT NULL DEFAULT '0',
  `TwitterURL` mediumtext CHARACTER SET utf8,
  `TumblrURL` mediumtext CHARACTER SET utf8,
  `InstagramURL` mediumtext CHARACTER SET utf8,
  `VimeoURL` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`),
  KEY `MainImageID` (`MainImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `HomePage_Live` WRITE;
/*!40000 ALTER TABLE `HomePage_Live` DISABLE KEYS */;

INSERT INTO `HomePage_Live` (`ID`, `MainImageID`, `TwitterURL`, `TumblrURL`, `InstagramURL`, `VimeoURL`)
VALUES
	(1,33,'http://www.twitter.com/tobinlush','http://thinkingisaweapon.com','http://www.instagram.com/rodeo_studio','http://www.vimeo.com/rodeo');

/*!40000 ALTER TABLE `HomePage_Live` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table HomePage_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `HomePage_versions`;

CREATE TABLE `HomePage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `MainImageID` int(11) NOT NULL DEFAULT '0',
  `TwitterURL` mediumtext CHARACTER SET utf8,
  `TumblrURL` mediumtext CHARACTER SET utf8,
  `InstagramURL` mediumtext CHARACTER SET utf8,
  `VimeoURL` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `MainImageID` (`MainImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `HomePage_versions` WRITE;
/*!40000 ALTER TABLE `HomePage_versions` DISABLE KEYS */;

INSERT INTO `HomePage_versions` (`ID`, `RecordID`, `Version`, `MainImageID`, `TwitterURL`, `TumblrURL`, `InstagramURL`, `VimeoURL`)
VALUES
	(1,1,4,33,NULL,NULL,NULL,NULL),
	(2,1,5,33,'http://www.twitter.com','http://www.tumblr.com','http://www.instagram.com','http://www.vimeo.com'),
	(3,1,6,33,'http://www.twitter.com/tobinlush','http://thinkingisaweapon.com','http://www.instagram.com/samchisholm','http://www.vimeo.com/rodeo'),
	(4,1,7,33,'http://www.twitter.com/tobinlush','http://thinkingisaweapon.com','http://www.instagram.com/rodeo_studio','http://www.vimeo.com/rodeo'),
	(5,1,8,33,'http://www.twitter.com/tobinlush','http://thinkingisaweapon.com','http://www.instagram.com/rodeo_studio','http://www.vimeo.com/rodeo'),
	(6,1,9,33,'http://www.twitter.com/tobinlush','http://thinkingisaweapon.com','http://www.instagram.com/rodeo_studio','http://www.vimeo.com/rodeo');

/*!40000 ALTER TABLE `HomePage_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table HomeProjectElement
# ------------------------------------------------------------

DROP TABLE IF EXISTS `HomeProjectElement`;

CREATE TABLE `HomeProjectElement` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('HomeProjectElement') CHARACTER SET utf8 DEFAULT 'HomeProjectElement',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Size` int(11) NOT NULL DEFAULT '0',
  `SortID` int(11) NOT NULL DEFAULT '0',
  `ProjectID` int(11) NOT NULL DEFAULT '0',
  `HomeProjectID` int(11) NOT NULL DEFAULT '0',
  `HeroImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ProjectID` (`ProjectID`),
  KEY `HomeProjectID` (`HomeProjectID`),
  KEY `ClassName` (`ClassName`),
  KEY `HeroImageID` (`HeroImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `HomeProjectElement` WRITE;
/*!40000 ALTER TABLE `HomeProjectElement` DISABLE KEYS */;

INSERT INTO `HomeProjectElement` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Size`, `SortID`, `ProjectID`, `HomeProjectID`, `HeroImageID`)
VALUES
	(2,'HomeProjectElement','2014-12-04 04:58:58','2015-04-15 05:09:51','50 Atlas 360',3,3,15,1,22),
	(3,'HomeProjectElement','2014-12-04 04:59:23','2015-07-05 19:39:27','100 NAB',1,1,14,1,334),
	(4,'HomeProjectElement','2014-12-08 20:21:15','2015-04-15 05:13:24','ODASA',1,5,45,1,272),
	(5,'HomeProjectElement','2014-12-08 20:22:16','2015-04-15 05:09:51','The Spaniard',1,6,22,1,0),
	(6,'HomeProjectElement','2014-12-19 00:14:05','2015-04-15 05:10:46','AOC',3,8,29,1,264),
	(7,'HomeProjectElement','2015-04-15 04:04:56','2015-04-15 05:09:51','Wake up hate',1,2,24,1,98),
	(8,'HomeProjectElement','2015-04-15 04:10:24','2015-04-15 05:09:51','Crewdson',1,7,50,1,329),
	(9,'HomeProjectElement','2015-04-15 05:06:19','2015-04-15 05:09:51','Goodhouse',1,9,26,1,123),
	(10,'HomeProjectElement','2015-04-15 05:09:28','2015-04-15 05:11:37','24 Frames',1,10,29,1,253);

/*!40000 ALTER TABLE `HomeProjectElement` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table LoginAttempt
# ------------------------------------------------------------

DROP TABLE IF EXISTS `LoginAttempt`;

CREATE TABLE `LoginAttempt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('LoginAttempt') CHARACTER SET utf8 DEFAULT 'LoginAttempt',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Status` enum('Success','Failure') CHARACTER SET utf8 DEFAULT 'Success',
  `IP` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table Member
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Member`;

CREATE TABLE `Member` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Member') CHARACTER SET utf8 DEFAULT 'Member',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `FirstName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Surname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `RememberLoginToken` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `AutoLoginHash` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `DateFormat` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `TimeFormat` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Email` (`Email`(255)),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Member` WRITE;
/*!40000 ALTER TABLE `Member` DISABLE KEYS */;

INSERT INTO `Member` (`ID`, `ClassName`, `Created`, `LastEdited`, `FirstName`, `Surname`, `Email`, `Password`, `RememberLoginToken`, `NumVisit`, `LastVisited`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`, `FailedLoginCount`, `DateFormat`, `TimeFormat`)
VALUES
	(1,'Member','2014-11-11 13:25:47','2016-06-30 23:53:35','Default Admin',NULL,'cms@hello-rodeo.com','$2y$10$3f34e326f434d7a159600OlSeo.hwffGI0XQBcqlM.eiPPGR3qfVq',NULL,92,'2016-07-03 06:20:20',NULL,NULL,'blowfish','10$3f34e326f434d7a159600d',NULL,NULL,'en_US',0,NULL,NULL);

/*!40000 ALTER TABLE `Member` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table MemberPassword
# ------------------------------------------------------------

DROP TABLE IF EXISTS `MemberPassword`;

CREATE TABLE `MemberPassword` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('MemberPassword') CHARACTER SET utf8 DEFAULT 'MemberPassword',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `MemberPassword` WRITE;
/*!40000 ALTER TABLE `MemberPassword` DISABLE KEYS */;

INSERT INTO `MemberPassword` (`ID`, `ClassName`, `Created`, `LastEdited`, `Password`, `Salt`, `PasswordEncryption`, `MemberID`)
VALUES
	(1,'MemberPassword','2014-11-11 13:25:48','2014-11-11 13:25:48','$2y$10$3f34e326f434d7a159600OlSeo.hwffGI0XQBcqlM.eiPPGR3qfVq','10$3f34e326f434d7a159600d','blowfish',1);

/*!40000 ALTER TABLE `MemberPassword` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table NewsElement
# ------------------------------------------------------------

DROP TABLE IF EXISTS `NewsElement`;

CREATE TABLE `NewsElement` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('NewsElement') CHARACTER SET utf8 DEFAULT 'NewsElement',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `SortID` int(11) NOT NULL DEFAULT '0',
  `BackgroundColour` mediumtext CHARACTER SET utf8,
  `Content` mediumtext CHARACTER SET utf8,
  `HeroImageID` int(11) NOT NULL DEFAULT '0',
  `NewsID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroImageID` (`HeroImageID`),
  KEY `NewsID` (`NewsID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `NewsElement` WRITE;
/*!40000 ALTER TABLE `NewsElement` DISABLE KEYS */;

INSERT INTO `NewsElement` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `SortID`, `BackgroundColour`, `Content`, `HeroImageID`, `NewsID`)
VALUES
	(1,'NewsElement','2014-12-08 06:15:56','2016-06-02 02:14:49','AOC',1,NULL,'<p>Australian Olympic Committee</p>\n<p>In 2014 we commenced partnering with the Australian Olympic Committee on strategy, design and communications in the lead up to the 2016 Rio games. Most recently we had the pleasure of designing all the environmental signage for the Australian Team in the Olympic Village in Rio. We’re delighted to be connecting with audiences everywhere, unfolding dynamic and compelling stories as Australian athletes ignite the dream. <a title=\"@AUSOlympicTeam\" href=\"https://twitter.com/ausolympicteam\" target=\"_blank\">@AUSOlymplicTeam</a></p>',264,29),
	(2,'NewsElement','2014-12-08 06:18:32','2016-06-02 02:14:35','AGDA',2,'FFD4E1','<p>Judging AGDA Australian Design Biennale Awards</p>\n<p>Tobin Lush was invited to spend three long, eye bending days on the jury for the 2014 AGDA Awards. He was in the smart company of Jonathan Ellery - Browns, London / Shane Greeves - ECD FutureBrand Worldwide, London / Mike Rigby - R/GA, New York / Karin Seja - KSD, Adelaide / Sue Mawer - Turner Design, Perth / Tanja Hall - JOLT, Queensland / Graham Barton - Folk, Sydney / Che Douglas - BTP, New York / James Brown - MASH, Adelaide / Justin Smith - End of Work, Sydney. <br><br>You can not loose if you do not play! Congratulations and high fives to all entrants, winners, losers and assistants.</p>\n<p> </p>',310,29),
	(3,'NewsElement','2014-12-08 06:19:36','2016-06-02 01:53:53','News item 3',3,NULL,'<p>24 Frames per second @ Carriageworks</p>\n<p>In 2015 we filmed and produced Alison Currie’s dance film I Can Relate, which premiered as part of 24 Frames Per Second at Carriageworks, Sydney. The exhibition was developed in response to the major shifts occurring in the cross-disciplinary collaborative nature of choreography, visual arts and film for which18 Australian and 6 international artists created new works. Supported by the Australia Council for the Arts, the project culminated in a major exhibition which represented the most dynamic and innovative expressions of contemporary multi-arts practice of that time.</p>',253,29),
	(4,'NewsElement','2014-12-17 22:34:36','2016-06-02 01:52:58','APBSA',4,'FFD4E1','<p>APBSA — What does an Architect do?</p>\n<p>Rodeo was engaged to make16 films for the Architectural Practice Board of South Australia exploring the question What does an Architect do? The films capture key insights into the people, projects, locations, processes, opportunities and the design of the stuff of life. The project was launched at the Festival of Architecture and Design (FAD) at the end of 2015. The films represent a diverse and dynamic expression of contemporary architectural practice in South Australia as it shapes our structural and social landscapes to deliver good outcomes now and into the future.</p>\n<p> </p>',261,29),
	(5,'NewsElement','2014-12-30 14:15:41','2016-06-02 01:51:58','Grab',5,'FFD4E1','<p>Flickr/Nikon/Getty Images partnership project extends with \'Show us your Canada\'.</p>\n<p>Devised by Rodeo in Australia, the Grab - Australian life captured Campaign for Getty Images has been successfully extended by regional agencies in New Zealand, Scandinavia, Japan and now Canada. We\'re pretty happy about it as it continues to demonstrate our core competency as a strategically-led agency.</p>',311,29);

/*!40000 ALTER TABLE `NewsElement` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table PageElement
# ------------------------------------------------------------

DROP TABLE IF EXISTS `PageElement`;

CREATE TABLE `PageElement` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PageElement') CHARACTER SET utf8 DEFAULT 'PageElement',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `TextStyle` int(11) NOT NULL DEFAULT '0',
  `SortID` int(11) NOT NULL DEFAULT '0',
  `Content` mediumtext CHARACTER SET utf8,
  `HeroImageID` int(11) NOT NULL DEFAULT '0',
  `PageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroImageID` (`HeroImageID`),
  KEY `PageID` (`PageID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `PageElement` WRITE;
/*!40000 ALTER TABLE `PageElement` DISABLE KEYS */;

INSERT INTO `PageElement` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `TextStyle`, `SortID`, `Content`, `HeroImageID`, `PageID`)
VALUES
	(1,'PageElement','2014-12-08 05:59:05','2016-01-03 21:50:52','Image',0,3,NULL,316,2),
	(5,'PageElement','2014-12-08 06:02:54','2016-01-03 21:50:52','Big text newspaper',2,2,'<p>– Communication strategy<br>– Creative direction<br>– Brand identity<br>– Brand strategy<br>– Brand experiences<br>– Moving image<br>– Advertising<br>– Media strategy<br>– Graphic design<br>– Brochure and book design<br>– Environmental design<br>– Digital and interactive design<br>– Web design<br>– Production coordination</p>',0,2),
	(7,'PageElement','2014-12-08 06:05:26','2016-01-03 22:09:13','Image',0,1,NULL,417,6),
	(8,'PageElement','2014-12-08 06:11:38','2016-01-03 22:05:03','Image',0,1,NULL,415,7),
	(11,'PageElement','2014-12-18 22:33:55','2016-01-03 21:50:52','Subscribe',1,4,'<p>Now you know a little more about us, Let\'s talk some more! Or at least stay in touch. <br>We send out irregular but insightful news. </p>',0,2),
	(12,'PageElement','2014-12-30 21:05:12','2015-04-21 00:15:44','IMAGE',0,2,NULL,312,0),
	(13,'PageElement','2015-01-07 22:46:56','2015-04-21 00:15:40','Rodeo Grey T',0,1,NULL,322,0),
	(14,'PageElement','2015-01-08 16:26:01','2015-04-21 00:15:47','RODEO WHITE T',0,3,NULL,323,0),
	(17,'PageElement','2016-01-03 21:49:35','2016-01-03 21:50:52','image',0,1,NULL,412,2),
	(18,'PageElement','2016-01-03 22:03:23','2016-06-02 02:15:04','image',0,5,NULL,416,2);

/*!40000 ALTER TABLE `PageElement` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Permission
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Permission`;

CREATE TABLE `Permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Permission') CHARACTER SET utf8 DEFAULT 'Permission',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `Code` (`Code`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Permission` WRITE;
/*!40000 ALTER TABLE `Permission` DISABLE KEYS */;

INSERT INTO `Permission` (`ID`, `ClassName`, `Created`, `LastEdited`, `Code`, `Arg`, `Type`, `GroupID`)
VALUES
	(1,'Permission','2014-11-11 13:25:47','2014-11-11 13:25:47','CMS_ACCESS_CMSMain',0,1,1),
	(2,'Permission','2014-11-11 13:25:47','2014-11-11 13:25:47','CMS_ACCESS_AssetAdmin',0,1,1),
	(3,'Permission','2014-11-11 13:25:47','2014-11-11 13:25:47','CMS_ACCESS_ReportAdmin',0,1,1),
	(4,'Permission','2014-11-11 13:25:47','2014-11-11 13:25:47','SITETREE_REORGANISE',0,1,1),
	(5,'Permission','2014-11-11 13:25:47','2014-11-11 13:25:47','ADMIN',0,1,2);

/*!40000 ALTER TABLE `Permission` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table PermissionRole
# ------------------------------------------------------------

DROP TABLE IF EXISTS `PermissionRole`;

CREATE TABLE `PermissionRole` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRole') CHARACTER SET utf8 DEFAULT 'PermissionRole',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table PermissionRoleCode
# ------------------------------------------------------------

DROP TABLE IF EXISTS `PermissionRoleCode`;

CREATE TABLE `PermissionRoleCode` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRoleCode') CHARACTER SET utf8 DEFAULT 'PermissionRoleCode',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RoleID` (`RoleID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table ProjectElement
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ProjectElement`;

CREATE TABLE `ProjectElement` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('ProjectElement') CHARACTER SET utf8 DEFAULT 'ProjectElement',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `SortID` int(11) NOT NULL DEFAULT '0',
  `HeroImageID` int(11) NOT NULL DEFAULT '0',
  `ProjectID` int(11) NOT NULL DEFAULT '0',
  `Size` int(11) NOT NULL DEFAULT '0',
  `Content` mediumtext CHARACTER SET utf8,
  `VideoURL` mediumtext CHARACTER SET utf8,
  `VideoAutoplay` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroImageID` (`HeroImageID`),
  KEY `ProjectID` (`ProjectID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `ProjectElement` WRITE;
/*!40000 ALTER TABLE `ProjectElement` DISABLE KEYS */;

INSERT INTO `ProjectElement` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `SortID`, `HeroImageID`, `ProjectID`, `Size`, `Content`, `VideoURL`, `VideoAutoplay`)
VALUES
	(1,'ProjectElement','2014-11-13 09:31:23','2014-12-22 18:22:59','25',2,5,9,1,NULL,NULL,0),
	(2,'ProjectElement','2014-11-13 09:34:04','2014-12-22 18:22:59','25',3,8,9,2,NULL,NULL,0),
	(3,'ProjectElement','2014-11-13 10:02:31','2014-12-22 18:22:59','25',4,6,9,3,NULL,NULL,0),
	(4,'ProjectElement','2014-11-13 10:23:25','2014-12-08 19:17:33','25',3,0,0,0,NULL,NULL,0),
	(5,'ProjectElement','2014-11-13 10:23:49','2014-12-22 18:22:59','Text 1',1,0,9,1,'<p>Establishing a reputable independent gallery based on 30 years of knowledge and experience in the sector, Gallery82 required clear positioning and identity to support it\'s core proposition. </p>',NULL,0),
	(6,'ProjectElement','2014-11-13 10:25:14','2014-12-08 19:17:37','50',6,4,0,1,NULL,NULL,0),
	(7,'ProjectElement','2014-11-17 12:56:27','2014-12-22 18:33:39','bus stop',1,14,12,2,NULL,NULL,0),
	(8,'ProjectElement','2014-11-17 12:57:13','2014-12-21 20:58:34','50',1,17,13,3,NULL,NULL,0),
	(9,'ProjectElement','2014-11-17 12:57:29','2014-12-21 20:58:34','50',2,96,13,1,NULL,NULL,0),
	(10,'ProjectElement','2014-11-17 12:58:22','2016-06-02 02:40:40','100',1,19,14,3,NULL,NULL,0),
	(11,'ProjectElement','2014-11-24 02:15:51','2014-12-08 19:17:08','50 Video test 1',1,0,0,1,NULL,'http://vimeo.com/trailburning/trailburning-newtrailexperience',0),
	(12,'ProjectElement','2014-11-24 02:16:23','2014-12-08 19:17:11','50 Video test 2',2,0,0,1,NULL,'https://vimeo.com/44431765',1),
	(14,'ProjectElement','2014-11-27 20:01:30','2014-12-21 20:59:33','Stationery',4,20,13,3,NULL,NULL,0),
	(16,'ProjectElement','2014-11-27 20:15:57','2014-12-18 23:36:23','360 closeup',2,22,15,3,NULL,NULL,0),
	(17,'ProjectElement','2014-11-27 20:28:11','2014-12-22 18:33:08','AILA POSTER',3,29,12,3,NULL,NULL,0),
	(18,'ProjectElement','2014-11-27 20:47:23','2014-12-10 17:03:03','Paula Scher Vimeo',1,0,0,3,NULL,'https://vimeo.com/29758887',1),
	(20,'ProjectElement','2014-11-27 21:09:42','2016-06-02 02:40:40','22',4,38,14,3,NULL,NULL,0),
	(21,'ProjectElement','2014-11-27 21:10:18','2016-06-02 02:40:40','Brochure cover',3,39,14,1,NULL,NULL,0),
	(22,'ProjectElement','2014-11-27 21:10:48','2016-06-02 02:40:40','Brochure open',7,40,14,3,NULL,NULL,0),
	(23,'ProjectElement','2014-11-27 21:18:50','2015-07-05 23:31:17','OPAL 3D',1,47,17,3,NULL,NULL,0),
	(24,'ProjectElement','2014-11-27 21:19:19','2015-07-05 23:31:17','OPAL BALL',3,42,17,2,NULL,NULL,0),
	(25,'ProjectElement','2014-11-27 21:21:34','2014-12-14 19:19:55','OPAL BILLBOARD',3,44,0,1,NULL,NULL,0),
	(26,'ProjectElement','2014-11-27 21:22:26','2014-12-14 19:20:00','OPAL WATER POSTER',2,45,0,1,NULL,NULL,0),
	(27,'ProjectElement','2014-11-27 21:23:05','2014-11-27 23:47:37','OPAL POSTER 2',6,46,0,1,NULL,NULL,0),
	(28,'ProjectElement','2014-11-27 21:27:13','2015-07-05 23:31:17','Text 1',2,0,17,0,'<p>South Australian Government department, SA Health appointed Rodeo to brand the Opal initiative. A 5 year multi-strategy program bringing together federal, state and local governments and community organisations to promote <br>better health.</p>',NULL,0),
	(29,'ProjectElement','2014-11-27 21:31:00','2014-11-27 23:47:41','OPAL BROCHURE',7,48,0,1,NULL,NULL,0),
	(30,'ProjectElement','2014-11-27 21:39:10','2016-01-05 21:46:07','ODASA EXHIBITION INTERIOR',10,51,18,2,NULL,NULL,0),
	(31,'ProjectElement','2014-11-27 21:40:14','2015-01-08 18:04:38','ODASA EXHIBIT 2',2,52,18,2,NULL,NULL,0),
	(32,'ProjectElement','2014-11-27 21:40:52','2015-01-08 18:04:38','ODASA BOOK COVER',4,53,18,1,'<p><br><br></p>',NULL,0),
	(33,'ProjectElement','2014-11-27 21:41:32','2014-11-27 22:02:29','ODASA POSTER',3,55,0,1,NULL,NULL,0),
	(34,'ProjectElement','2014-11-27 21:42:14','2015-01-08 18:04:38','ODASA COVER OPEN',6,54,18,0,NULL,NULL,0),
	(35,'ProjectElement','2014-11-27 21:42:47','2015-01-08 18:04:38','ODASA SPREAD',5,66,18,1,NULL,NULL,0),
	(36,'ProjectElement','2014-11-27 21:43:32','2015-01-08 18:04:38','ODASA SPREAD 2',7,59,18,0,NULL,NULL,0),
	(37,'ProjectElement','2014-11-27 21:44:16','2015-01-08 18:04:38','ODASA SPREAD 3',8,57,18,2,NULL,NULL,0),
	(38,'ProjectElement','2014-11-27 21:45:04','2015-01-08 18:04:38','ODASA SPREAD 4',9,60,18,0,NULL,NULL,0),
	(39,'ProjectElement','2014-11-27 21:45:50','2016-01-05 21:47:13','ODASA SPREAD 5',11,56,18,3,NULL,NULL,0),
	(40,'ProjectElement','2014-11-27 21:46:39','2015-01-08 18:04:38','ODASA SPREAD 6',12,61,18,2,NULL,NULL,0),
	(41,'ProjectElement','2014-11-27 21:47:12','2015-01-08 18:04:38','ODASA SPREAD 7',13,62,18,1,NULL,NULL,0),
	(42,'ProjectElement','2014-11-27 21:47:50','2014-12-22 16:10:17','ODASA SPREAD 8',2,71,0,1,NULL,NULL,0),
	(43,'ProjectElement','2014-11-27 21:48:24','2014-11-27 23:21:59','ODASA SPREAD 9',15,63,0,1,NULL,NULL,0),
	(44,'ProjectElement','2014-11-27 21:49:04','2014-11-27 22:02:42','ODASA RAH WEB',15,0,0,1,NULL,NULL,0),
	(45,'ProjectElement','2014-11-27 21:49:43','2014-12-22 16:10:23','ODASA RAH WEB 2',10,69,0,1,NULL,NULL,0),
	(46,'ProjectElement','2014-11-27 21:50:19','2014-11-30 18:59:05','ODASA RAH WEB 3',14,68,0,1,NULL,NULL,0),
	(47,'ProjectElement','2014-11-27 21:53:00','2014-11-27 23:22:39','OPEN IDEAS COMP',3,0,0,1,NULL,NULL,0),
	(48,'ProjectElement','2014-11-27 23:33:50','2014-11-27 23:37:52',NULL,3,0,0,1,NULL,NULL,0),
	(49,'ProjectElement','2014-11-30 18:57:35','2015-01-08 18:04:38','ODASA BOOK PROJECT PAGE',14,64,18,1,NULL,NULL,0),
	(50,'ProjectElement','2014-11-30 22:35:55','2014-12-21 20:23:25','COVER',7,80,20,3,NULL,NULL,0),
	(51,'ProjectElement','2014-11-30 22:40:06','2014-12-21 20:22:41','Drawing',6,81,20,1,NULL,NULL,0),
	(52,'ProjectElement','2014-11-30 22:41:00','2014-12-21 20:22:41',NULL,12,79,20,2,NULL,NULL,0),
	(53,'ProjectElement','2014-11-30 22:42:17','2014-12-21 20:24:06',NULL,13,85,20,3,NULL,NULL,0),
	(54,'ProjectElement','2014-11-30 22:43:41','2014-12-21 20:22:41',NULL,9,86,20,2,NULL,NULL,0),
	(55,'ProjectElement','2014-11-30 22:45:49','2014-12-21 20:22:41',NULL,1,89,20,2,NULL,NULL,0),
	(56,'ProjectElement','2014-11-30 22:47:28','2014-12-21 20:22:41',NULL,3,88,20,3,NULL,NULL,0),
	(57,'ProjectElement','2014-11-30 22:51:06','2014-11-30 22:59:45',NULL,8,87,0,1,NULL,NULL,0),
	(58,'ProjectElement','2014-11-30 22:52:52','2014-12-21 20:22:41',NULL,10,78,20,3,NULL,NULL,0),
	(59,'ProjectElement','2014-11-30 22:58:15','2014-12-21 20:22:41',NULL,4,82,20,3,NULL,NULL,0),
	(60,'ProjectElement','2014-11-30 23:22:31','2014-12-21 20:25:28',NULL,2,0,20,0,'<p>Targeting both parents and children across all socio-economic demographics and cultural groups. Rodeo developed an integrated social marketing campaign to raise awareness, education and increase vaccination rates for pre-entry four year olds. </p>',NULL,0),
	(61,'ProjectElement','2014-11-30 23:27:34','2014-12-21 20:22:41',NULL,11,77,20,3,NULL,NULL,0),
	(62,'ProjectElement','2014-11-30 23:34:53','2016-01-01 22:07:10',NULL,3,91,21,3,NULL,NULL,0),
	(63,'ProjectElement','2014-11-30 23:35:25','2016-01-01 22:07:10',NULL,4,92,21,1,NULL,NULL,0),
	(64,'ProjectElement','2014-11-30 23:35:56','2016-01-01 22:07:10',NULL,5,94,21,1,NULL,NULL,0),
	(65,'ProjectElement','2014-11-30 23:42:36','2016-06-03 02:12:26',NULL,8,25,22,2,NULL,NULL,0),
	(66,'ProjectElement','2014-11-30 23:43:17','2016-06-03 01:41:46',NULL,2,457,0,3,NULL,NULL,0),
	(67,'ProjectElement','2014-12-01 16:19:11','2016-06-02 02:40:40','Text 1',2,0,14,1,'<p>nab is the highest ranked financial brand in Australia. Woods Bagot are renowned architects with a global presence. Rodeo partnered with both companies, devising a brand identity for the bank’s headquarters in South Australia and an interior graphic package across the 11 floors of the building.</p>',NULL,0),
	(68,'ProjectElement','2014-12-01 17:56:49','2015-04-15 05:03:29',NULL,2,99,24,3,NULL,NULL,0),
	(69,'ProjectElement','2014-12-01 18:08:04','2014-12-11 15:22:56',NULL,4,101,25,3,NULL,NULL,0),
	(70,'ProjectElement','2014-12-01 18:08:47','2014-12-11 15:22:56',NULL,5,103,25,3,NULL,NULL,0),
	(71,'ProjectElement','2014-12-01 18:09:15','2014-12-11 15:22:56',NULL,6,108,25,3,NULL,NULL,0),
	(72,'ProjectElement','2014-12-01 18:09:39','2014-12-11 15:22:56',NULL,7,107,25,1,NULL,NULL,0),
	(73,'ProjectElement','2014-12-01 18:10:06','2014-12-11 15:22:56',NULL,8,109,25,1,NULL,NULL,0),
	(74,'ProjectElement','2014-12-01 18:10:40','2014-12-11 15:22:56',NULL,9,106,25,1,NULL,NULL,0),
	(75,'ProjectElement','2014-12-01 18:11:09','2014-12-11 15:22:56',NULL,10,105,25,1,NULL,NULL,0),
	(76,'ProjectElement','2014-12-03 22:46:11','2014-12-19 00:24:22',NULL,2,119,26,2,NULL,NULL,0),
	(77,'ProjectElement','2014-12-03 22:46:40','2014-12-19 00:24:22',NULL,9,115,26,2,NULL,NULL,0),
	(78,'ProjectElement','2014-12-03 22:47:16','2014-12-19 00:24:22',NULL,3,114,26,1,NULL,NULL,0),
	(79,'ProjectElement','2014-12-03 22:47:48','2014-12-19 00:24:22',NULL,6,120,26,1,NULL,NULL,0),
	(80,'ProjectElement','2014-12-03 22:48:30','2014-12-19 00:24:22',NULL,4,111,26,1,NULL,NULL,0),
	(81,'ProjectElement','2014-12-03 22:49:00','2014-12-19 00:24:22',NULL,5,113,26,1,NULL,NULL,0),
	(82,'ProjectElement','2014-12-03 22:49:26','2014-12-19 00:24:22',NULL,7,118,26,2,NULL,NULL,0),
	(83,'ProjectElement','2014-12-03 22:49:55','2014-12-19 00:24:22',NULL,8,123,26,3,NULL,NULL,0),
	(84,'ProjectElement','2014-12-03 22:50:29','2014-12-19 00:24:22',NULL,11,122,26,1,NULL,NULL,0),
	(85,'ProjectElement','2014-12-03 22:50:56','2014-12-19 00:24:22',NULL,12,121,26,1,NULL,NULL,0),
	(86,'ProjectElement','2014-12-03 22:59:50','2014-12-19 00:24:22',NULL,1,0,26,0,'<p>With a innovative system of construction and design in place. Rodeo\'s brief was at it\'s core positioning and communication to drive awareness, articulate values, benefits with the shorthand of the brand.</p>',NULL,0),
	(87,'ProjectElement','2014-12-07 22:59:06','2015-01-08 18:04:38',NULL,15,55,18,3,NULL,NULL,0),
	(90,'ProjectElement','2014-12-07 23:26:15','2014-12-10 21:55:52',NULL,7,131,27,3,NULL,NULL,0),
	(91,'ProjectElement','2014-12-07 23:26:40','2014-12-10 21:55:40',NULL,8,130,0,1,NULL,NULL,0),
	(92,'ProjectElement','2014-12-07 23:27:12','2014-12-10 21:55:45',NULL,9,128,0,1,NULL,NULL,0),
	(93,'ProjectElement','2014-12-07 23:27:45','2014-12-10 21:53:43','LMS VIMEO',2,0,27,1,NULL,'https://vimeo.com/84725663',0),
	(94,'ProjectElement','2014-12-07 23:29:10','2014-12-10 21:53:43',NULL,1,0,27,1,'<p>Rodeo partnered with LMS to create ... </p>',NULL,0),
	(95,'ProjectElement','2014-12-07 23:43:14','2014-12-07 23:43:22',NULL,1,0,28,1,NULL,NULL,0),
	(96,'ProjectElement','2014-12-08 17:59:51','2014-12-22 17:09:23',NULL,2,34,30,2,NULL,NULL,0),
	(97,'ProjectElement','2014-12-08 18:00:44','2014-12-08 18:44:58',NULL,1,0,0,1,'<p>Global Services guide for Getty Images </p>',NULL,0),
	(98,'ProjectElement','2014-12-08 18:01:57','2014-12-22 17:09:23',NULL,5,36,30,3,NULL,NULL,0),
	(99,'ProjectElement','2014-12-08 18:03:41','2014-12-10 21:53:43',NULL,3,129,27,3,NULL,NULL,0),
	(100,'ProjectElement','2014-12-08 18:24:19','2014-12-22 17:09:23',NULL,3,133,30,3,NULL,NULL,0),
	(101,'ProjectElement','2014-12-08 18:25:10','2016-06-03 00:22:19',NULL,9,139,30,2,NULL,NULL,0),
	(102,'ProjectElement','2014-12-08 18:26:16','2016-06-03 00:21:37',NULL,7,134,30,1,NULL,NULL,0),
	(103,'ProjectElement','2014-12-08 18:27:17','2016-06-03 00:21:56',NULL,8,136,30,1,NULL,NULL,0),
	(104,'ProjectElement','2014-12-08 18:28:42','2014-12-08 18:52:03',NULL,9,137,0,1,NULL,NULL,0),
	(105,'ProjectElement','2014-12-08 18:32:46','2014-12-22 17:09:23',NULL,4,140,30,1,NULL,NULL,0),
	(106,'ProjectElement','2014-12-08 18:50:09','2014-12-22 17:09:23',NULL,6,141,30,3,NULL,NULL,0),
	(107,'ProjectElement','2014-12-08 19:53:11','2014-12-22 18:22:59',NULL,7,142,9,3,NULL,NULL,0),
	(108,'ProjectElement','2014-12-08 19:53:36','2014-12-22 18:22:59',NULL,5,7,9,1,NULL,NULL,0),
	(109,'ProjectElement','2014-12-08 20:09:30','2014-12-18 23:29:57',NULL,1,145,31,2,NULL,NULL,0),
	(110,'ProjectElement','2014-12-08 20:10:05','2014-12-18 23:29:57',NULL,3,144,31,1,NULL,NULL,0),
	(111,'ProjectElement','2014-12-08 20:10:38','2014-12-18 23:29:57',NULL,4,147,31,1,NULL,NULL,0),
	(112,'ProjectElement','2014-12-08 20:11:17','2014-12-18 23:29:57',NULL,6,148,31,1,NULL,NULL,0),
	(113,'ProjectElement','2014-12-08 20:11:52','2014-12-18 23:29:57',NULL,5,149,31,3,NULL,NULL,0),
	(114,'ProjectElement','2014-12-08 20:12:33','2014-12-18 23:29:57',NULL,7,150,31,1,NULL,NULL,0),
	(115,'ProjectElement','2014-12-08 20:14:39','2014-12-18 23:29:57',NULL,2,0,31,0,'<p>As in all our work, the naming and positioning strategies dictated the design development. The Intro name expresses what is unique about the service offer and is visually articulated in the single minded strength and vibrancy of the brand language.</p>',NULL,0),
	(116,'ProjectElement','2014-12-08 20:16:34','2014-12-18 23:29:57',NULL,8,151,31,3,NULL,NULL,0),
	(117,'ProjectElement','2014-12-10 18:52:05','2014-12-21 20:11:23',NULL,1,167,32,2,NULL,NULL,0),
	(118,'ProjectElement','2014-12-10 18:52:41','2014-12-10 19:00:14',NULL,1,169,0,3,NULL,NULL,0),
	(119,'ProjectElement','2014-12-10 18:53:15','2014-12-21 20:11:23',NULL,3,168,32,3,NULL,NULL,0),
	(120,'ProjectElement','2014-12-10 18:54:25','2014-12-21 20:11:23',NULL,4,170,32,3,NULL,NULL,0),
	(121,'ProjectElement','2014-12-10 18:55:13','2014-12-21 20:11:23',NULL,7,171,32,3,NULL,NULL,0),
	(122,'ProjectElement','2014-12-10 18:55:43','2014-12-21 20:11:23',NULL,8,172,32,3,NULL,NULL,0),
	(123,'ProjectElement','2014-12-10 18:56:11','2014-12-21 20:11:23',NULL,9,173,32,3,NULL,NULL,0),
	(124,'ProjectElement','2014-12-10 18:56:41','2014-12-21 20:11:23',NULL,6,174,32,1,NULL,NULL,0),
	(125,'ProjectElement','2014-12-10 19:03:00','2014-12-21 20:11:23','Text 1',2,0,32,0,'<p>\'On the ground when you need us most\' was the positioning we devised for DEC and this strategy also shaped the brand and all the company communications.</p>',NULL,0),
	(126,'ProjectElement','2014-12-10 21:19:28','2014-12-10 21:53:43',NULL,4,127,27,1,NULL,NULL,0),
	(127,'ProjectElement','2014-12-10 21:41:20','2014-12-10 21:53:43',NULL,5,175,27,1,NULL,NULL,0),
	(128,'ProjectElement','2014-12-10 21:53:21','2014-12-10 21:53:52',NULL,6,176,27,3,NULL,NULL,0),
	(129,'ProjectElement','2014-12-11 15:15:14','2014-12-11 15:22:56',NULL,1,104,25,3,NULL,NULL,0),
	(130,'ProjectElement','2014-12-11 15:19:13','2014-12-11 15:22:56',NULL,2,153,25,1,NULL,NULL,0),
	(131,'ProjectElement','2014-12-11 15:22:35','2014-12-11 15:22:56',NULL,3,0,25,1,'<p>Rodeo developed photographic imagery and program for Paulo Castro\'s direction of Motortown.  </p>',NULL,0),
	(132,'ProjectElement','2014-12-11 15:29:42','2014-12-11 15:36:37',NULL,1,177,0,3,NULL,NULL,0),
	(133,'ProjectElement','2014-12-11 15:30:13','2016-06-30 01:05:40',NULL,4,181,34,3,NULL,NULL,0),
	(135,'ProjectElement','2014-12-11 15:31:10','2016-06-30 01:05:40',NULL,1,183,34,2,NULL,NULL,0),
	(136,'ProjectElement','2014-12-11 15:31:36','2016-06-30 01:05:40',NULL,3,182,34,3,NULL,NULL,0),
	(137,'ProjectElement','2014-12-11 15:31:59','2016-06-30 01:05:40',NULL,7,179,34,3,NULL,NULL,0),
	(138,'ProjectElement','2014-12-11 15:32:29','2016-06-30 01:05:40',NULL,6,178,34,2,NULL,NULL,0),
	(139,'ProjectElement','2014-12-11 15:38:00','2016-06-30 01:05:40','Text 1',2,0,34,0,'<p>Image concept, photography and identity developed to connect to the Adelaide Festival of Arts master brand and reach our audience in a saturated market place.</p>',NULL,0),
	(140,'ProjectElement','2014-12-14 17:27:03','2014-12-14 17:27:10',NULL,1,186,35,3,NULL,NULL,0),
	(141,'ProjectElement','2014-12-14 17:27:33','2014-12-14 17:27:36',NULL,2,185,35,3,NULL,NULL,0),
	(142,'ProjectElement','2014-12-14 17:31:18','2014-12-14 17:31:30',NULL,3,187,35,1,NULL,NULL,0),
	(143,'ProjectElement','2014-12-14 18:01:13','2014-12-14 18:05:23',NULL,1,189,0,3,NULL,NULL,0),
	(144,'ProjectElement','2014-12-14 18:01:38','2016-01-05 21:19:50',NULL,5,190,36,3,NULL,NULL,0),
	(145,'ProjectElement','2014-12-14 18:02:07','2016-01-05 21:19:50',NULL,1,191,36,3,NULL,NULL,0),
	(146,'ProjectElement','2014-12-14 18:02:33','2016-01-05 21:19:50',NULL,9,200,36,1,NULL,NULL,0),
	(147,'ProjectElement','2014-12-14 18:02:56','2016-01-05 21:19:50',NULL,10,193,36,2,NULL,NULL,0),
	(148,'ProjectElement','2014-12-14 18:03:20','2016-01-05 21:19:50',NULL,11,194,36,3,NULL,NULL,0),
	(149,'ProjectElement','2014-12-14 18:03:45','2016-01-05 21:19:50',NULL,12,195,36,1,NULL,NULL,0),
	(150,'ProjectElement','2014-12-14 18:04:14','2016-01-05 21:19:50',NULL,13,196,36,1,NULL,NULL,0),
	(151,'ProjectElement','2014-12-14 18:04:46','2016-01-05 21:19:50',NULL,18,197,36,3,NULL,NULL,0),
	(152,'ProjectElement','2014-12-14 18:05:15','2016-01-05 21:19:50',NULL,19,198,36,3,NULL,NULL,0),
	(153,'ProjectElement','2014-12-14 18:27:39','2016-01-05 21:19:50','Integrated Design Commission vimeo',3,0,36,1,NULL,'https://vimeo.com/150771055',0),
	(154,'ProjectElement','2014-12-14 18:28:51','2016-06-02 02:29:45','Text 1',2,0,36,1,'<p>The Integrated Design Commission worked across a number of sectors through a multi-disciplinary, design led approach to enhance quality of life for South Australians. The Commission was positively disruptive before the public sector knew it as buzzword. Yet sometimes, the things that burn brightest aren\'t meant to last – but they are meant to be leveraged.</p>',NULL,0),
	(155,'ProjectElement','2014-12-14 19:18:21','2015-07-05 23:31:17',NULL,4,202,17,1,NULL,NULL,0),
	(156,'ProjectElement','2014-12-14 20:07:35','2016-06-03 00:01:34','Grid',16,438,16,3,NULL,NULL,0),
	(157,'ProjectElement','2014-12-14 20:23:11','2014-12-14 21:50:43',NULL,1,0,38,1,NULL,'https://vimeo.com/6140291',0),
	(158,'ProjectElement','2014-12-14 20:28:25','2014-12-14 21:50:43',NULL,10,208,38,3,NULL,NULL,0),
	(159,'ProjectElement','2014-12-14 20:29:02','2014-12-14 21:50:43',NULL,3,213,38,3,NULL,NULL,0),
	(160,'ProjectElement','2014-12-14 20:29:38','2014-12-14 21:50:43',NULL,5,214,38,1,NULL,NULL,0),
	(161,'ProjectElement','2014-12-14 20:30:10','2014-12-14 21:50:43',NULL,6,212,38,1,NULL,NULL,0),
	(162,'ProjectElement','2014-12-14 20:30:39','2014-12-14 21:50:43',NULL,7,215,38,1,NULL,NULL,0),
	(163,'ProjectElement','2014-12-14 20:31:27','2014-12-14 21:50:43',NULL,8,210,38,1,NULL,NULL,0),
	(164,'ProjectElement','2014-12-14 20:32:00','2014-12-14 21:50:43',NULL,12,207,38,3,NULL,NULL,0),
	(165,'ProjectElement','2014-12-14 20:32:34','2014-12-14 21:50:43',NULL,4,209,38,3,NULL,NULL,0),
	(166,'ProjectElement','2014-12-14 20:33:01','2014-12-14 21:50:43',NULL,11,217,38,3,NULL,NULL,0),
	(167,'ProjectElement','2014-12-14 20:38:45','2014-12-14 21:50:43',NULL,2,0,38,1,'<p>National brand, positioning statement and communications strategy and development. </p>',NULL,0),
	(168,'ProjectElement','2014-12-14 20:47:15','2014-12-14 21:50:43',NULL,13,219,38,3,NULL,NULL,0),
	(169,'ProjectElement','2014-12-14 21:50:23','2014-12-14 21:50:43',NULL,9,211,38,3,NULL,NULL,0),
	(170,'ProjectElement','2014-12-14 22:59:10','2014-12-21 22:30:02',NULL,2,224,39,2,NULL,NULL,0),
	(171,'ProjectElement','2014-12-14 22:59:36','2014-12-21 22:29:26',NULL,3,222,39,3,NULL,NULL,0),
	(172,'ProjectElement','2014-12-14 23:00:03','2014-12-21 22:28:21',NULL,4,221,39,2,NULL,NULL,0),
	(173,'ProjectElement','2014-12-14 23:00:27','2014-12-21 22:28:21',NULL,6,223,39,3,NULL,NULL,0),
	(174,'ProjectElement','2014-12-14 23:27:22','2014-12-21 22:38:23',NULL,3,228,40,3,NULL,NULL,0),
	(175,'ProjectElement','2014-12-14 23:27:54','2014-12-21 22:38:23',NULL,2,232,40,2,NULL,NULL,0),
	(176,'ProjectElement','2014-12-14 23:28:21','2014-12-21 22:38:23',NULL,6,231,40,3,NULL,NULL,0),
	(177,'ProjectElement','2014-12-14 23:28:48','2014-12-21 22:38:48',NULL,4,233,40,2,NULL,NULL,0),
	(178,'ProjectElement','2014-12-15 16:56:11','2014-12-16 20:21:32',NULL,5,28,0,1,NULL,NULL,0),
	(179,'ProjectElement','2014-12-15 16:58:32','2014-12-15 17:18:39',NULL,2,238,0,1,NULL,NULL,0),
	(180,'ProjectElement','2014-12-15 17:16:51','2014-12-22 15:51:21',NULL,3,240,42,1,NULL,NULL,0),
	(181,'ProjectElement','2014-12-15 17:26:55','2014-12-22 15:52:03',NULL,5,28,42,2,NULL,NULL,0),
	(182,'ProjectElement','2014-12-15 17:30:55','2014-12-22 15:51:21',NULL,7,241,42,3,NULL,NULL,0),
	(183,'ProjectElement','2014-12-15 17:31:38','2014-12-22 15:51:21',NULL,8,242,42,3,NULL,NULL,0),
	(184,'ProjectElement','2014-12-15 18:08:18','2014-12-22 15:51:21',NULL,2,243,42,1,'<p>Terros is derived from the Italian Terre, meaning Earth. The Range was devised to provide a contemporary positioning in the earths ancient past which was documented by etching landscapes and creatures. </p>',NULL,0),
	(185,'ProjectElement','2014-12-16 19:01:07','2014-12-21 21:02:30',NULL,3,246,44,3,NULL,NULL,0),
	(186,'ProjectElement','2014-12-16 20:04:44','2014-12-22 15:51:21',NULL,4,247,42,3,NULL,NULL,0),
	(187,'ProjectElement','2014-12-16 20:18:47','2014-12-22 15:51:21',NULL,1,248,42,3,NULL,NULL,0),
	(188,'ProjectElement','2014-12-17 22:29:16','2015-07-09 20:57:07',NULL,16,256,45,3,NULL,NULL,0),
	(189,'ProjectElement','2014-12-17 22:29:48','2015-07-09 20:57:07',NULL,17,255,45,3,NULL,NULL,0),
	(190,'ProjectElement','2014-12-17 22:42:03','2014-12-18 22:55:00',NULL,2,257,0,1,NULL,NULL,0),
	(191,'ProjectElement','2014-12-17 22:45:08','2015-07-09 20:57:07',NULL,7,258,45,1,NULL,NULL,0),
	(192,'ProjectElement','2014-12-17 22:51:03','2015-01-08 18:04:38',NULL,21,259,18,3,NULL,NULL,0),
	(193,'ProjectElement','2014-12-18 16:05:56','2014-12-21 21:07:49',NULL,2,266,44,1,NULL,NULL,0),
	(194,'ProjectElement','2014-12-18 17:07:07','2014-12-21 21:08:07',NULL,1,0,44,1,'<p>Performance cycling </p>',NULL,0),
	(195,'ProjectElement','2014-12-18 21:19:47','2015-07-09 20:57:07',NULL,4,269,45,1,NULL,NULL,0),
	(196,'ProjectElement','2014-12-18 21:21:02','2015-07-09 20:57:07',NULL,6,267,45,3,NULL,NULL,0),
	(197,'ProjectElement','2014-12-18 21:21:52','2015-07-09 20:57:07',NULL,10,268,45,3,NULL,NULL,0),
	(198,'ProjectElement','2014-12-18 22:32:03','2015-07-09 20:57:07',NULL,12,271,45,3,NULL,NULL,0),
	(199,'ProjectElement','2014-12-18 22:32:30','2015-07-09 20:57:07',NULL,15,270,45,3,NULL,NULL,0),
	(200,'ProjectElement','2014-12-18 22:53:44','2015-07-09 20:57:07',NULL,13,272,45,1,NULL,NULL,0),
	(201,'ProjectElement','2014-12-18 23:11:27','2016-01-01 22:07:10','Katrina Webb text',1,0,21,1,'<p>Personal branding can be a complex game. Our approach is based on clarity, openness and connection. It\'s focused on powering your personal best across the spectrum of life and re-framing challenge as opportunity.</p>',NULL,0),
	(202,'ProjectElement','2014-12-18 23:15:05','2015-07-09 20:57:07',NULL,14,273,45,1,NULL,NULL,0),
	(203,'ProjectElement','2014-12-18 23:19:51','2014-12-19 00:24:22','Goodhouse name and brand',10,0,26,0,'<p>The Goodhouse name and brand were devised to be intrinsically integrated with the values, benefits and the unique Goodhouse system of design. From day one the response has been, and continues to be overwhelmingly successful. Here\'s to many more Goodhouses.</p>',NULL,0),
	(204,'ProjectElement','2014-12-18 23:33:37','2014-12-18 23:36:23','body text',1,0,15,3,'<p>An exquisite example of purity, this handmade wine required an equal level of detailing to package. With 898 individual line elements forming its graphic pattern wrap, it\'s designed to \'game the form\'. The graphic is tactile, layered, responds to the material by employing distortion and the transfer of light to express its value.</p>',NULL,0),
	(205,'ProjectElement','2014-12-18 23:34:14','2015-07-09 20:57:07',NULL,11,274,45,3,NULL,NULL,0),
	(206,'ProjectElement','2014-12-18 23:40:51','2016-06-03 02:12:26','Body text',2,0,22,0,'<p>The story of the wine is elegantly simple and in juxtaposition the label identity employs a complex beauty to support the textures of the grape varieties.</p>',NULL,0),
	(207,'ProjectElement','2014-12-18 23:43:19','2016-06-03 02:12:26','Body text 2',7,0,22,0,'<p>Mostly described by a range of random people as beautiful — Even when it\'s surrounded by plastic flowers from our mexican party.</p>',NULL,0),
	(208,'ProjectElement','2014-12-18 23:46:20','2015-07-09 19:47:07',NULL,9,275,0,3,NULL,NULL,0),
	(209,'ProjectElement','2014-12-19 00:22:42','2014-12-19 00:24:22',NULL,13,117,26,3,NULL,NULL,0),
	(210,'ProjectElement','2014-12-19 00:25:22','2014-12-19 00:26:23','white space',14,0,26,0,NULL,NULL,0),
	(211,'ProjectElement','2014-12-21 17:47:43','2016-01-01 22:07:10',NULL,2,276,21,1,NULL,NULL,0),
	(212,'ProjectElement','2014-12-21 19:02:53','2014-12-21 20:11:23','Text 2',5,0,32,1,'<p>Driving significant awareness in the sector nationally and across the Pacific the integrated brand language has activated business development, project opportunities and overall revenue.</p>',NULL,0),
	(213,'ProjectElement','2014-12-21 20:13:28','2014-12-21 20:22:41','Text 2',5,0,20,1,'<p>Get ready for Life positioned the campaign and all communications including online, press, OOH, posters, activity packs, storybook and social media.</p>',NULL,0),
	(214,'ProjectElement','2014-12-21 20:14:18','2014-12-21 20:22:41',NULL,8,0,20,0,'<p>Driving high response rates, awareness and take up the campaign continues, with federal health planning to extend the campaign nationwide.</p>',NULL,0),
	(215,'ProjectElement','2014-12-21 20:28:54','2016-06-03 00:01:34','Text 1',2,0,16,0,'<p>Iconic, smart and unabashedly populist, the work of Paula Scher has entered into the American vernacular. A Letter from Paula Scher is the first in a series of short films by Rodeo for  27Letters. A worldwide campaign Rodeo devised, developed and managed for Getty Images. </p>',NULL,0),
	(216,'ProjectElement','2014-12-21 20:31:33','2016-06-03 00:01:34','Text 2',4,0,16,1,'<p>More than expected<br>This initiative arose from a campaign brief to drive customer registrations on gettyimages.com while also supporting Getty Images’ positioning within the creative industry. As creatives ourselves, we knew that the value exchange needed to be significantly different from the usual in order to cut through inbox clutter. It also had to resonate with our audience, fueling their own passions for creating outstanding work, delivering inspiration and generating excitement around the campaign.</p>',NULL,0),
	(217,'ProjectElement','2014-12-21 20:32:26','2016-06-03 00:01:34','Text 3',10,0,16,1,'<p>Another point of view<br>We decided to capture real insights and real experiences from some of the leaders in global visual language. Recognising that inspiration often comes from outside one’s own industry, Rodeo negotiated with several of the world’s most iconic names from across filmmaking, fashion, advertising, art and design. Paula Scher of Pentagram was the first of these to be interviewed.</p>',NULL,0),
	(218,'ProjectElement','2014-12-21 20:41:48','2014-12-21 21:06:47',NULL,4,279,44,2,NULL,NULL,0),
	(219,'ProjectElement','2014-12-21 20:48:23','2016-06-02 02:30:31','Text 3',8,0,36,1,'<p>Whole experience<br>Our first brief focused on the brand architecture. With limited brand awareness beyond the existing converts of design, the Commission appeared incomprehensible from the outside; members of government didn\'t understand them and the public weren’t clear on what they stood for. Commissioner Timothy Horton wanted to network and connect with public and government in a way that represented the core values of the Commission. And he understood that identity and integrated communications offered a route to do this.</p>',NULL,0),
	(220,'ProjectElement','2014-12-21 20:49:18','2016-06-02 02:33:13','Text 4',14,0,36,1,'<p>A reason for being<br>What they needed next was a core positioning to inspire and drive the Commission forward: a set of values that would guide decisions and also outwardly outline what the Commission was set up to do. This provided an entry into simple stories that could both excite and unite people. Having adopted a people-centric brand architecture, we gave them a modern dynamic and flexible identity to articulate and celebrate possibility. The identity used a system based around 14 colours that allowed the Commission to adapt their mood or tone based on the context. In all cases they would appear friendly and approachable.</p>',NULL,0),
	(221,'ProjectElement','2014-12-21 20:58:15','2014-12-21 20:58:34','Text 1',3,0,13,1,'<p>Positioning a contemporary take on authentic Italian winemaking into the national and international marketplace. BABO represents a unique brand producing exceptional wines that capture the regional and varietal character of Italy</p>',NULL,0),
	(222,'ProjectElement','2014-12-21 21:00:15','2014-12-21 21:00:38','Text 2',5,0,13,1,'<p>Devising the communication strategy and revising the brand narrative. Rodeo developed the brand guidelines, associated collateral, product packaging, online and marketing communications.</p>',NULL,0),
	(223,'ProjectElement','2014-12-21 21:01:03','2014-12-21 21:06:09',NULL,6,281,44,3,NULL,NULL,0),
	(224,'ProjectElement','2014-12-21 21:02:17','2014-12-21 21:07:02',NULL,5,0,44,0,'<p>More text </p>',NULL,0),
	(225,'ProjectElement','2014-12-21 21:09:47','2015-07-05 23:31:17','Text 2',5,0,17,1,'<p>Creating effective social marketing programs has a lions share of complexities. Fortunately that\'s right up our street. We developed transmedia communication strategies, devised the modular identity system and developed guidelines for application across all media channels and the subsequent marketing campaigns.</p>',NULL,0),
	(226,'ProjectElement','2014-12-21 21:12:33','2015-07-05 23:31:17','Text 3',7,0,17,0,'<p>Trans-creating the successful French methodology for Opal, we were able to develop innovative and effective strategies that resonated with diverse audiences. Maximising engagement and delivering targeted messaging to drive social change. All good things. </p>',NULL,0),
	(227,'ProjectElement','2014-12-21 21:16:44','2016-06-02 02:40:40','Text 2',6,0,14,1,'<p>A breath of fresh air<br>nab wanted the building to reflect the organisation’s values and priorities of transparency, flexibility, customer, collaboration, communication, connected community and wellness. With the bank having a mobile workforce that utiised hot desking, they also wanted to imbue the open plan spaces with a warmth that encouraged interaction, communication and creativity.</p>',NULL,0),
	(228,'ProjectElement','2014-12-21 21:18:45','2016-06-02 02:40:40','Text 3',11,0,14,0,'<p>Layers of meaning<br>Based around the theme of \'home\', the graphic system was devised by us to provide expression, assist wayfinding and integrate across all levels of the building, with specific graphic variation between floors. Distinctive and engaging touch points communicated the personal, individual and dynamic nature of the environment. This included playful and unexpected messaging in areas, such as the open kitchens, to spark conversations and build the on the notion of home.</p>',NULL,0),
	(229,'ProjectElement','2014-12-21 22:06:57','2016-06-02 02:40:40',NULL,5,286,14,1,NULL,NULL,0),
	(230,'ProjectElement','2014-12-21 22:07:37','2016-06-02 02:40:40',NULL,10,285,14,2,NULL,NULL,0),
	(231,'ProjectElement','2014-12-21 22:08:16','2016-06-02 02:40:40',NULL,16,282,14,3,NULL,NULL,0),
	(232,'ProjectElement','2014-12-21 22:09:01','2016-06-02 02:40:40',NULL,13,284,14,1,NULL,NULL,0),
	(233,'ProjectElement','2014-12-21 22:25:14','2014-12-21 22:29:51','Text 1',1,0,39,0,'<p>One of only a handful of Scope 3 carbon analysis tools in the world. Scope 3 emissions arise across the value chain, from suppliers, transporters and consumers and is essenecial in defining true carbon.</p>',NULL,0),
	(234,'ProjectElement','2014-12-21 22:25:50','2014-12-21 22:28:21','Text 2',5,0,39,0,'<p>Modular brand platform designed to communicate across sectors and articulate complex information with clarity that resinates with the audeience and also counters the \'greenwash\'in relation to the issues of carbon management.</p>',NULL,0),
	(235,'ProjectElement','2014-12-21 22:32:12','2014-12-21 22:32:20','Text 1',1,0,41,3,'<p>With a focus on neuro-developmental physiotherapy programs for children. Rodeo developed a playful brand specifically designed to move.</p>',NULL,0),
	(236,'ProjectElement','2014-12-21 22:35:11','2014-12-21 22:39:22','Text 1',1,0,40,0,'<p>The Design Institute of Australia represents all professional designers in Australia and is Australia’s only multi-disciplinary organisation of professional designers, representing all disciplines of design.</p>',NULL,0),
	(237,'ProjectElement','2014-12-21 22:38:03','2014-12-21 22:38:23','Text 2',5,0,40,0,'<p>With an integrated theme, visual identity and messaging structure we were able to significantly increase the profile of the Awards and publicly evaluate, recognise and celebrate the outstanding design projects represented.</p>',NULL,0),
	(238,'ProjectElement','2014-12-22 15:37:15','2016-06-30 01:05:40','Text 2',5,0,34,0,'<p>Suggest, don\'t show. We devised and developed the show image to communicate a lateral visual narrative. The image was graphically supported to meet it\'s communication objectives in the market. </p>',NULL,0),
	(239,'ProjectElement','2014-12-22 15:39:12','2016-06-30 01:05:52','Text 3',10,0,34,0,'<p>Driving a near sold out season in a very competitive festival, the campaign received exceptionally high recognition rates across media channels. All the pain from the repeated falling during the photo shoot was worth it.</p>',NULL,0),
	(240,'ProjectElement','2014-12-22 15:50:46','2014-12-22 15:51:43','Text 2',6,0,42,0,'<p>Geological data and art provides some fantastical results and this echoes the science and art in wine making. The range identity collapses visual languages in combining traditional etching, label structure and colour together.</p>',NULL,0),
	(241,'ProjectElement','2014-12-22 16:07:02','2015-01-08 18:04:38','Text 1',3,0,18,0,'<p>The Open Ideas campaign for the former Royal Adelaide Hospital site represents the states largest and most significant global architecture competition.</p>',NULL,0),
	(242,'ProjectElement','2014-12-22 16:16:33','2015-01-08 18:04:38','Text 2',17,0,18,1,'<p>Devising a modular identity system, messaging, collateral, cross-platform website, content based communications and extensive publications. The work was developed in true client and government collaboration to meet key social marketing and community engagement outcomes.</p>',NULL,0),
	(243,'ProjectElement','2014-12-22 16:21:59','2015-01-08 18:04:38','Text 3',19,0,18,1,'<p>Connecting with our audiences across sectors and demographics the Open Ideas campaign reached significant engagement targets. Driving community debate, high response rates with press and industry coverage locally and internationally, it\'s success was grounded in design and collaboration at every development stage.</p>',NULL,0),
	(244,'ProjectElement','2014-12-22 17:05:34','2014-12-22 17:09:23','Text 1',1,0,30,0,'<p>There are times you just need to tell the whole story. Rodeo devised, wrote and designed the Getty Images Services Guide for distribution worldwide.</p>',NULL,0),
	(245,'ProjectElement','2014-12-22 18:20:09','2014-12-22 18:22:59','Text 2',6,0,9,0,'<p>The brand strategy was devised to be modular, adaptive and provide considered space and context to express the personality of the brand through the art exhibited. </p>',NULL,0),
	(246,'ProjectElement','2014-12-22 18:32:20','2014-12-22 18:36:26','Text 1',2,0,12,0,'<p>Form and function provided the framework for this identity concept for AIDA awards campaign. Our approach provided a core branded experience designed to extend online and drive registration response and engagement.</p>\n<p> </p>',NULL,0),
	(247,'ProjectElement','2014-12-22 18:37:34','2014-12-22 18:37:53','Text 2',4,0,12,3,'<p>The AIDA is a partnership between the Design Institute of Australia, designEX and Artichoke magazine, the awards celebrate excellence in interior design.</p>',NULL,0),
	(248,'ProjectElement','2014-12-22 19:02:04','2016-07-01 01:53:07',NULL,1,0,19,3,NULL,NULL,0),
	(249,'ProjectElement','2014-12-22 19:02:47','2016-07-01 01:57:17',NULL,4,288,19,1,NULL,NULL,0),
	(250,'ProjectElement','2014-12-22 19:03:19','2016-07-01 01:53:07',NULL,10,293,19,3,NULL,NULL,0),
	(251,'ProjectElement','2014-12-22 19:03:59','2016-07-01 01:53:07',NULL,6,292,19,3,NULL,NULL,0),
	(252,'ProjectElement','2014-12-22 19:04:32','2016-07-01 01:53:07',NULL,11,295,19,2,NULL,NULL,0),
	(253,'ProjectElement','2014-12-22 19:05:37','2016-07-01 01:53:07',NULL,12,289,19,3,NULL,NULL,0),
	(254,'ProjectElement','2014-12-22 19:10:57','2016-07-01 01:53:07','Text 1',3,0,19,1,'<p>The Australian Institute of Landscape Architects asked us to make them a new beginning. They needed to signal that AILA was no longer a nuts and berries organisation from the past. It was moving future-forward, promoting the importance of the profession today and showcasing its work in designing and creating a better Australia – landscape architects can shape the spaces we live in. Since AILA was seeking a dynamic platform to define a new relevance and awareness, we created a simple, confident identity platform that could reveal ever-changing expression, just like the places and spaces we all share.</p>',NULL,0),
	(255,'ProjectElement','2014-12-22 22:28:01','2015-01-08 16:35:55',NULL,9,297,0,1,NULL,NULL,0),
	(256,'ProjectElement','2014-12-22 22:28:39','2016-06-02 02:40:40',NULL,9,296,14,1,NULL,NULL,0),
	(257,'ProjectElement','2014-12-22 22:34:55','2016-07-01 01:53:07',NULL,2,299,19,2,NULL,NULL,0),
	(258,'ProjectElement','2014-12-22 22:35:26','2016-07-01 01:53:07',NULL,8,0,19,1,NULL,NULL,0),
	(259,'ProjectElement','2014-12-22 22:50:40','2016-07-01 01:53:07',NULL,5,294,19,3,NULL,NULL,0),
	(260,'ProjectElement','2014-12-22 22:54:41','2016-07-01 01:53:07',NULL,7,300,19,1,NULL,NULL,0),
	(261,'ProjectElement','2014-12-22 23:02:15','2016-06-02 02:40:40',NULL,12,305,14,1,NULL,NULL,0),
	(262,'ProjectElement','2014-12-22 23:02:53','2016-07-01 01:53:07',NULL,14,302,19,1,NULL,NULL,0),
	(263,'ProjectElement','2014-12-22 23:12:04','2016-07-01 01:53:07',NULL,16,307,19,1,NULL,NULL,0),
	(264,'ProjectElement','2014-12-22 23:19:03','2016-07-01 01:53:07',NULL,15,304,19,3,NULL,NULL,0),
	(265,'ProjectElement','2014-12-22 23:29:42','2016-07-01 01:53:07',NULL,18,306,19,2,NULL,NULL,0),
	(266,'ProjectElement','2015-01-07 18:44:00','2016-04-26 19:22:35','ROOM',2,319,50,1,NULL,NULL,0),
	(267,'ProjectElement','2015-01-07 18:45:04','2015-01-07 18:48:21','WALL',1,318,0,3,NULL,NULL,0),
	(268,'ProjectElement','2015-01-07 18:56:20','2016-01-05 21:48:12',' EXHIB FITOUT ',20,320,18,1,NULL,NULL,0),
	(269,'ProjectElement','2015-01-08 16:30:23','2016-06-02 02:40:40','Level 11 rooms',14,325,14,2,NULL,NULL,0),
	(270,'ProjectElement','2015-01-08 16:31:58','2016-06-02 02:40:40','Quiet room',8,326,14,1,NULL,NULL,0),
	(271,'ProjectElement','2015-01-08 18:03:54','2015-07-07 01:19:12','Main',1,50,0,3,NULL,NULL,0),
	(273,'ProjectElement','2015-04-15 05:03:13','2015-04-15 05:03:29','Text 1',1,0,24,3,'<p>Rodeo worked with Stone/Castro to create a graphic and powerful image for Castro\'s solo violent production, while tipping the hat to Jan Fabre. Note: No animal was harmed in creating this work.</p>',NULL,0),
	(274,'ProjectElement','2015-07-05 23:25:40','2015-07-05 23:32:00',NULL,8,45,17,2,NULL,NULL,0),
	(275,'ProjectElement','2015-07-05 23:27:15','2015-07-05 23:31:49',NULL,6,44,17,3,NULL,NULL,0),
	(276,'ProjectElement','2015-07-06 00:45:21','2016-04-26 19:22:35',NULL,3,339,50,1,NULL,NULL,0),
	(277,'ProjectElement','2015-07-06 00:56:40','2016-04-26 19:22:53','brochure gif',1,340,50,3,NULL,NULL,0),
	(278,'ProjectElement','2015-07-06 02:03:58','2015-07-06 02:04:03',NULL,1,341,51,3,NULL,NULL,0),
	(279,'ProjectElement','2015-07-06 19:44:06','2016-01-01 14:31:14',NULL,2,364,52,1,NULL,NULL,0),
	(280,'ProjectElement','2015-07-06 19:44:50','2016-01-01 14:31:14',NULL,8,366,52,3,NULL,NULL,0),
	(281,'ProjectElement','2015-07-06 19:45:42','2015-07-06 20:10:23',NULL,2,361,0,3,NULL,NULL,0),
	(282,'ProjectElement','2015-07-06 19:46:21','2016-01-01 14:31:14',NULL,5,359,52,1,NULL,NULL,0),
	(283,'ProjectElement','2015-07-06 19:46:54','2016-01-01 14:31:14',NULL,12,363,52,1,NULL,NULL,0),
	(284,'ProjectElement','2015-07-06 19:47:33','2016-01-01 14:31:14',NULL,21,373,52,1,NULL,NULL,0),
	(285,'ProjectElement','2015-07-06 19:48:31','2016-01-01 14:31:14',NULL,15,352,52,3,NULL,NULL,0),
	(286,'ProjectElement','2015-07-06 19:49:36','2015-07-06 22:50:21',NULL,12,344,0,3,NULL,NULL,0),
	(287,'ProjectElement','2015-07-06 19:50:01','2016-01-01 14:31:14',NULL,4,345,52,3,NULL,NULL,0),
	(288,'ProjectElement','2015-07-06 19:51:53','2016-01-01 14:31:14',NULL,7,353,52,3,NULL,NULL,0),
	(289,'ProjectElement','2015-07-06 19:53:53','2016-01-01 14:31:14',NULL,18,348,52,1,NULL,NULL,0),
	(290,'ProjectElement','2015-07-06 19:54:36','2016-01-01 14:31:14',NULL,19,349,52,3,NULL,NULL,0),
	(291,'ProjectElement','2015-07-06 19:55:35','2016-01-01 14:31:14',NULL,10,356,52,3,NULL,NULL,0),
	(292,'ProjectElement','2015-07-06 19:56:49','2016-01-01 14:31:14',NULL,13,362,52,3,NULL,NULL,0),
	(293,'ProjectElement','2015-07-06 19:58:08','2015-07-06 23:10:52',NULL,15,355,0,1,NULL,NULL,0),
	(294,'ProjectElement','2015-07-06 19:59:38','2016-01-01 14:32:42',NULL,14,360,52,2,NULL,NULL,0),
	(295,'ProjectElement','2015-07-06 20:05:02','2016-01-01 14:31:14',NULL,17,358,52,1,NULL,NULL,0),
	(296,'ProjectElement','2015-07-06 20:22:06','2016-01-01 14:31:14',NULL,23,347,52,2,NULL,NULL,0),
	(297,'ProjectElement','2015-07-06 20:23:54','2016-01-01 14:31:14',NULL,3,346,52,3,NULL,NULL,0),
	(298,'ProjectElement','2015-07-06 20:30:37','2016-06-02 02:47:15',NULL,1,0,52,1,'<p>A targeted approach to positioning and defining a culture of innovation helped us to put possibility at the heart of Adelaide’s bid to become World Design Capital. While politicians and policymakers sometimes hold skewed views on innovation, there can be moments when a meaningful opportunity leans in on the public sector and they choose to pursue it. </p>\n<p>In making a submission to the International Council of Societies of Industrial Design to be World Design Capital, the Department of State Development needed help to rethink what makes Adelaide special on the global stage. World Design Capital is a global city promotion project celebrating the accomplishments of cities that have used design as a tool to reinvent themselves and improve social, cultural and economic life.</p>',NULL,0),
	(299,'ProjectElement','2015-07-06 20:45:21','2016-06-02 02:57:14','Text 3',11,0,52,1,'<p>An open book<br>As part of the working group formed by the Department of State Development, Rodeo was tasked with turning the insights defined in our positioning into a bid submission reality. Working closely as communication consultants and designers, we determined that the bid architecture needed to provide both a strategic interface and a compelling object with multiple content entry points for the jury.</p>\n<p>To help communicate with the jury’s global design professionals, the submission needed to express itself differently and so we partnered with Christian Hall at the Jam Factory to develop the custom steel enclosure. This enabled us to develop a system to make the experience both individual and integrated; provide a Wow! response, yet also be perfectly functional; and present an object instilled with the core values, vision, personality and collaborative can-do of our bid proposition. More than anything, the framework and design of the bid provided the communication architecture to broaden the conversations between jurors in the context of Adelaide as a city and how innovation here could provide defined strategies that are globally relevant and potentially transferable.</p>',NULL,0),
	(300,'ProjectElement','2015-07-06 22:24:43','2016-01-01 14:31:14',NULL,9,369,52,2,NULL,NULL,0),
	(301,'ProjectElement','2015-07-06 22:25:12','2016-01-01 14:31:14',NULL,16,370,52,2,NULL,NULL,0),
	(302,'ProjectElement','2015-07-06 22:25:49','2016-01-01 14:31:14',NULL,22,368,52,3,NULL,NULL,0),
	(303,'ProjectElement','2015-07-06 22:47:52','2016-06-02 02:48:14','Text 2',6,0,52,1,'<p>Finding direction<br>Our approach started with idea of ‘failure’— that as a city we’re large enough to face significant social, economic and environmental challenges, but small, nimble and smart enough to be responsive and chart possible trajectories to make positive change. The state has a strong history of innovation and a physical framework conducive to divergent thinking. We could see Adelaide being authentically positioned as a pilot city. We talked to people about failure, change and opportunity, distilling what we learned into the driving principle of Trajectory. Digging around the edges of thinking, making, prototyping and testing, we could see what Trajectory was about — A better life through design. </p>',NULL,0),
	(304,'ProjectElement','2015-07-06 23:17:57','2016-01-01 14:31:14',NULL,24,350,52,3,NULL,NULL,0),
	(305,'ProjectElement','2015-07-07 20:30:00','2015-07-09 20:57:07',NULL,8,388,45,1,NULL,NULL,0),
	(306,'ProjectElement','2015-07-07 20:36:40','2015-07-09 20:57:07',NULL,3,257,45,1,NULL,NULL,0),
	(307,'ProjectElement','2015-07-07 20:37:45','2015-07-09 20:57:07',NULL,9,386,45,1,NULL,NULL,0),
	(308,'ProjectElement','2015-07-07 20:39:56','2015-07-09 20:57:07',NULL,5,385,45,1,NULL,NULL,0),
	(309,'ProjectElement','2015-07-07 20:43:04','2015-07-07 20:47:21',NULL,17,389,0,1,NULL,NULL,0),
	(310,'ProjectElement','2015-07-07 23:38:54','2015-07-09 20:57:07',NULL,21,398,45,3,NULL,NULL,0),
	(311,'ProjectElement','2015-07-07 23:39:53','2015-07-09 20:57:07',NULL,22,400,45,3,NULL,NULL,0),
	(312,'ProjectElement','2015-07-07 23:40:27','2015-07-09 20:57:07',NULL,20,399,45,3,NULL,NULL,0),
	(313,'ProjectElement','2015-07-07 23:50:35','2015-07-09 20:57:07',NULL,19,393,45,2,NULL,NULL,0),
	(314,'ProjectElement','2015-07-08 00:26:38','2015-07-09 20:57:07',NULL,23,394,45,1,NULL,NULL,0),
	(315,'ProjectElement','2015-07-08 00:33:49','2015-07-09 20:57:07',NULL,24,395,45,1,NULL,NULL,0),
	(316,'ProjectElement','2015-07-08 00:37:05','2015-07-09 20:57:07',NULL,18,0,45,0,'<p>Design Review copy ....</p>',NULL,0),
	(317,'ProjectElement','2015-07-08 01:22:06','2015-07-09 20:57:07',NULL,25,396,45,1,NULL,NULL,0),
	(318,'ProjectElement','2015-07-08 01:40:49','2016-06-06 17:31:11','Danielle O\'Dea',1,0,53,1,NULL,'https://vimeo.com/119946215',0),
	(319,'ProjectElement','2015-07-08 01:41:23','2016-06-06 17:31:11','Jason Schulz',2,0,53,1,NULL,'https://vimeo.com/119913003',0),
	(320,'ProjectElement','2015-07-08 01:42:21','2016-06-06 17:31:11','Text',3,0,53,0,'<p>What does an architect do? </p>',NULL,0),
	(321,'ProjectElement','2015-07-09 19:45:29','2015-07-09 20:57:07',NULL,2,401,45,1,NULL,NULL,0),
	(322,'ProjectElement','2015-07-09 19:47:38','2015-07-09 20:57:07',NULL,1,0,45,1,'<p>Office for Design + Architecture SA ...</p>',NULL,0),
	(323,'ProjectElement','2015-11-05 04:34:49','2016-07-01 01:53:07','Text 2',9,0,19,1,'<p>Evolution<br>Re-positioning and re-imagining the Forecast Festival with the AILA management and the festival’s creative directors, we helped define and translate their vision into an identity to provide a platform for a more relevant and progressive positioning of the festival content. With a program of participatory experiences and conversations, the new Forecast is designed to inspire and engage by re-imagining the way we meet and celebrate the profession, share our stories and learn through discourse and debate. The festival has prototyped a new approach for landscape architecture, reflecting the way we work as designers – transparently, collaboratively and iteratively.</p>',NULL,0),
	(324,'ProjectElement','2016-01-01 14:16:17','2016-06-02 02:52:17','Text 4',20,0,52,1,'<p>The road less travelled<br>Even with strategy, teams of smart people and supportive partners locked in, it proved impossible for some government stakeholders to be brilliant at listening. This challenge wasn’t part of our brief and, in the end, the policymakers weren’t able to recognise the ambition and opportunity to globally amplify the benefits of Adelaide becoming the World Design Capital. </p>\n<p>True to the working principles of design, failure sets up a new opportunity rather than an end point… The World Design Capital project has shaped a new trajectory, which is currently evolving into other projects and opportunities, including an ambitious initiative exploring the possibilities for a more inclusive and dynamic system of democracy. We are very proud to be part of that journey. </p>\n<p> </p>',NULL,0),
	(325,'ProjectElement','2016-01-01 20:59:55','2016-07-01 01:53:07','three',13,0,19,1,'<p>Sowing the seeds<br>It is a festival for designers, thinkers, collaborators and innovators to take part in conversations and events to help build a momentum that will underpin the future of the profession. The festival provided a new focus towards being more creative, more designed, more dynamic and more original, building confidence and pride in the ALIA membership in a way that is both tangible and exciting.</p>',NULL,0),
	(326,'ProjectElement','2016-01-01 21:02:35','2016-07-01 01:53:07','four',17,0,19,1,'<p>A new beginning<br>Since the initial Forecast in Brisbane, the annual Festival of Landscape Architecture has extended its commitment to relevant visual communications with This Public Life Festival in Melbourne. AILA has successfully reinvigorated itself as an organisation that is committed to contemporary relevance to industry, education, government and to the public by investing in experiences that inform, entertain, celebrate and connect us all within the landscapes of the public realm.</p>',NULL,0),
	(327,'ProjectElement','2016-01-01 22:04:31','2016-01-01 22:07:10',NULL,7,411,21,3,NULL,NULL,0),
	(328,'ProjectElement','2016-01-01 22:05:25','2016-01-01 22:09:14',NULL,6,410,21,3,NULL,NULL,0),
	(329,'ProjectElement','2016-01-05 03:29:25','2016-01-05 21:19:50','Sketch',7,427,36,1,NULL,NULL,0),
	(330,'ProjectElement','2016-01-05 03:54:35','2016-01-05 21:19:50','KL poster',6,420,36,1,NULL,NULL,0),
	(331,'ProjectElement','2016-01-05 15:46:10','2016-01-05 21:19:50','Street image',21,425,36,3,NULL,NULL,0),
	(332,'ProjectElement','2016-01-05 15:47:24','2016-01-05 21:19:50','collab image',4,423,36,2,NULL,NULL,0),
	(333,'ProjectElement','2016-01-05 15:48:18','2016-01-05 21:19:50','graphic design tracking',16,422,36,1,NULL,NULL,0),
	(334,'ProjectElement','2016-01-05 15:49:12','2016-01-05 21:19:50','ideo graphic',15,424,36,1,NULL,NULL,0),
	(335,'ProjectElement','2016-01-05 16:31:26','2016-01-05 21:19:50','big type',17,428,36,1,NULL,NULL,0),
	(336,'ProjectElement','2016-01-05 21:19:09','2016-06-02 02:32:32','TEXT 4',20,0,36,3,'<p>Future think<br>All art, design and architecture is a promise, just as a logo or an identity is a promise of what that organisation might be like. Although change can be a challenge, the scope and activity of the Integrated Design Commission was a mere moment in time. However, beyond the parameters of policy, funding and personalities, this moment powerfully informs the next. The customers and advocates of design continue to grow, which means we\'re all discussing more and thinking harder — often it\'s architects and designers that are ahead of the curve making a promise that we can then catch up with.</p>',NULL,0),
	(337,'ProjectElement','2016-04-26 18:27:00','2016-06-03 02:12:26','Atlas 360',4,22,22,3,NULL,NULL,0),
	(338,'ProjectElement','2016-04-26 18:28:00','2016-06-03 02:12:26','360 body text',10,0,22,1,'<p>An exquisite example of purity, this handmade wine required an equal level of detailing to package. With 898 individual line elements forming its graphic pattern wrap, it\'s designed to \'game the form\'. The graphic is tactile, layered, responds to the material by employing distortion and the transfer of light to express its value.</p>',NULL,0),
	(339,'ProjectElement','2016-04-26 18:28:55','2016-06-03 02:12:26','360 full bottle',3,23,22,3,NULL,NULL,0),
	(340,'ProjectElement','2016-04-26 18:33:38','2016-06-03 02:12:26',NULL,1,458,22,2,NULL,NULL,0),
	(341,'ProjectElement','2016-04-26 18:35:37','2016-06-03 02:12:26','Terror wide',9,27,22,3,NULL,NULL,0),
	(342,'ProjectElement','2016-06-02 02:40:05','2016-06-02 02:40:40','Text 4',15,0,14,1,'<p>Bringing it home<br>The response to the graphic fit out was one of widespread approval coming from NAB’s general staff through to the bank’s then CEO Cameron Clyne. The project has also gone on to receive a number of awards.</p>',NULL,0),
	(343,'ProjectElement','2016-06-02 19:57:08','2016-06-03 00:01:34','Skyline',1,439,16,2,NULL,NULL,0),
	(344,'ProjectElement','2016-06-02 20:16:12','2016-06-03 00:01:34','History',13,441,16,1,NULL,NULL,0),
	(345,'ProjectElement','2016-06-02 20:16:46','2016-06-03 00:01:34','Entrance',12,440,16,1,NULL,NULL,0),
	(346,'ProjectElement','2016-06-02 20:17:30','2016-06-03 00:01:34','graphics',11,442,16,1,NULL,NULL,0),
	(347,'ProjectElement','2016-06-02 20:19:50','2016-06-03 00:01:34','text 4',15,0,16,1,'<p>Strong result<br>A Letter From Paula Scher generated extensive press coverage worldwide and doubled site registrations through the 27Letters platform since its launch. Audience interest, interaction and networking were also high, contributing to the desired registration response. While its success was indisputable, the campaign’s other films were put on hold due to budget changes.</p>',NULL,0),
	(348,'ProjectElement','2016-06-02 20:34:51','2016-06-03 00:01:34','Filming',5,443,16,1,NULL,NULL,0),
	(349,'ProjectElement','2016-06-02 20:47:29','2016-06-03 00:01:34','walk',14,444,16,1,NULL,NULL,0),
	(350,'ProjectElement','2016-06-02 20:57:46','2016-06-03 00:01:34','27L ad',3,445,16,3,NULL,NULL,0),
	(351,'ProjectElement','2016-06-02 22:30:36','2016-06-03 00:01:34','27L1',6,446,16,3,NULL,NULL,0),
	(352,'ProjectElement','2016-06-02 22:31:24','2016-06-03 00:01:34','27L2',8,447,16,1,NULL,NULL,0),
	(353,'ProjectElement','2016-06-02 23:08:57','2016-06-03 00:01:34','27L3',7,452,16,1,NULL,NULL,0),
	(354,'ProjectElement','2016-06-03 00:00:43','2016-06-03 00:01:34','27L phone',9,455,16,2,NULL,NULL,0),
	(355,'ProjectElement','2016-06-03 00:12:38','2016-06-03 00:13:49','Cross Segment',10,448,30,3,NULL,NULL,0),
	(356,'ProjectElement','2016-06-03 00:15:08','2016-06-03 00:15:22','Cross segment invite',11,450,30,1,NULL,NULL,0),
	(357,'ProjectElement','2016-06-03 00:18:13','2016-06-03 00:19:47',NULL,12,37,30,1,NULL,NULL,0),
	(358,'ProjectElement','2016-06-03 02:02:24','2016-06-03 02:12:26','vines',11,459,22,3,NULL,NULL,0),
	(359,'ProjectElement','2016-06-03 02:05:26','2016-06-03 02:12:26','Beards',6,237,22,1,NULL,NULL,0),
	(360,'ProjectElement','2016-06-03 02:11:07','2016-06-03 02:12:26','BL wall',5,460,22,1,NULL,NULL,0),
	(361,'ProjectElement','2016-06-05 23:44:25','2016-06-06 17:31:11','Woods Bagot',5,0,53,3,NULL,'https://vimeo.com/141869396',0),
	(362,'ProjectElement','2016-06-05 23:46:59','2016-06-06 17:31:11','Ben Hewitt',8,0,53,3,NULL,'https://vimeo.com/141873298',0),
	(363,'ProjectElement','2016-06-05 23:48:24','2016-06-06 17:31:11','Alison Stacy',6,0,53,1,NULL,'https://vimeo.com/141871021',0),
	(364,'ProjectElement','2016-06-06 00:02:52','2016-06-06 17:31:11','Kirsty Hewitt',7,0,53,1,NULL,'https://vimeo.com/141866940',0),
	(365,'ProjectElement','2016-06-06 00:03:37','2016-06-06 17:31:11','Phil Harris',9,0,53,1,NULL,'https://vimeo.com/141862328',0),
	(366,'ProjectElement','2016-06-06 00:06:44','2016-06-06 17:31:11','Sue Phillips',11,0,53,3,NULL,'https://vimeo.com/141855061',0),
	(367,'ProjectElement','2016-06-06 00:09:29','2016-06-06 17:31:11','Sean Humphries',12,0,53,2,NULL,'https://vimeo.com/141848006',0),
	(368,'ProjectElement','2016-06-06 00:10:16','2016-06-06 17:31:11','Lolita Mohyla',14,0,53,1,NULL,'https://vimeo.com/141749410',0),
	(369,'ProjectElement','2016-06-06 00:10:48','2016-06-06 17:31:11','Lu Balsamo',17,0,53,3,NULL,'https://vimeo.com/141747485',0),
	(370,'ProjectElement','2016-06-06 00:11:35','2016-06-06 17:31:11','Sally Wilson',15,0,53,1,NULL,'https://vimeo.com/141744456',0),
	(371,'ProjectElement','2016-06-06 00:12:19','2016-06-06 17:31:11','Mario Dreosti',16,0,53,1,NULL,'https://vimeo.com/141741727',0),
	(372,'ProjectElement','2016-06-06 00:13:19','2016-06-06 17:31:11','APBSA Promo',10,0,53,1,NULL,'https://vimeo.com/91377650',0),
	(373,'ProjectElement','2016-06-06 16:03:52','2016-06-06 17:31:11','Factory Shoot',4,462,53,2,NULL,NULL,0),
	(374,'ProjectElement','2016-06-06 16:04:57','2016-06-06 17:32:20','Roof shoot',13,461,53,2,NULL,NULL,0),
	(375,'ProjectElement','2016-06-30 00:38:30','2016-06-30 01:05:40','Wake up hate',8,98,34,3,NULL,NULL,0),
	(376,'ProjectElement','2016-06-30 00:40:37','2016-06-30 01:06:25','Motor Town',9,104,34,3,NULL,NULL,0),
	(377,'ProjectElement','2016-06-30 00:41:43','2016-06-30 01:05:40','Motor Town',11,108,34,2,NULL,NULL,0),
	(378,'ProjectElement','2016-06-30 00:43:14','2016-06-30 01:05:40','MT booklet',12,107,34,1,NULL,NULL,0),
	(379,'ProjectElement','2016-06-30 00:44:10','2016-06-30 01:05:40','MT Booklet',13,106,34,1,NULL,NULL,0),
	(380,'ProjectElement','2016-06-30 00:45:08','2016-06-30 01:05:40','MT book back',15,105,34,1,NULL,NULL,0),
	(381,'ProjectElement','2016-06-30 00:57:55','2016-06-30 01:05:40','MT',14,109,34,1,NULL,NULL,0),
	(382,'ProjectElement','2016-07-01 01:35:08','2016-07-01 01:53:07','web',19,463,19,3,NULL,NULL,0),
	(383,'ProjectElement','2016-07-01 01:37:11','2016-07-01 01:53:07','web 2',21,0,19,1,NULL,NULL,0),
	(384,'ProjectElement','2016-07-01 01:38:06','2016-07-01 01:53:07','web 3',20,464,19,3,NULL,NULL,0);

/*!40000 ALTER TABLE `ProjectElement` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ProjectPage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ProjectPage`;

CREATE TABLE `ProjectPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MainImageID` int(11) NOT NULL DEFAULT '0',
  `FeatureImageID` int(11) NOT NULL DEFAULT '0',
  `VideoURL` mediumtext CHARACTER SET utf8,
  `VideoAutoplay` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MainImageID` (`MainImageID`),
  KEY `FeatureImageID` (`FeatureImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `ProjectPage` WRITE;
/*!40000 ALTER TABLE `ProjectPage` DISABLE KEYS */;

INSERT INTO `ProjectPage` (`ID`, `MainImageID`, `FeatureImageID`, `VideoURL`, `VideoAutoplay`)
VALUES
	(9,4,203,NULL,0),
	(12,13,205,NULL,0),
	(13,15,154,NULL,0),
	(14,18,331,NULL,0),
	(15,23,158,NULL,0),
	(16,0,437,'https://vimeo.com/29758887',1),
	(17,43,201,NULL,0),
	(18,50,379,NULL,0),
	(19,290,308,NULL,0),
	(20,83,335,NULL,0),
	(21,93,378,NULL,0),
	(22,457,456,NULL,0),
	(24,98,332,NULL,0),
	(25,100,204,NULL,0),
	(26,116,375,NULL,0),
	(27,126,377,NULL,0),
	(30,33,409,NULL,0),
	(31,146,336,NULL,0),
	(32,169,376,NULL,0),
	(34,177,382,NULL,0),
	(35,185,431,'https://vimeo.com/52655143',0),
	(36,418,199,NULL,0),
	(37,380,381,NULL,0),
	(38,218,265,NULL,0),
	(39,225,226,NULL,0),
	(40,229,230,NULL,0),
	(41,0,235,'https://vimeo.com/6275443',0),
	(42,239,278,NULL,0),
	(44,245,338,NULL,0),
	(45,275,262,NULL,0),
	(48,0,277,'https://vimeo.com/6079398',0),
	(50,329,429,NULL,0),
	(51,0,432,NULL,0),
	(52,361,435,NULL,0),
	(53,430,0,'https://vimeo.com/119992913',1);

/*!40000 ALTER TABLE `ProjectPage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ProjectPage_Categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ProjectPage_Categories`;

CREATE TABLE `ProjectPage_Categories` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ProjectPageID` int(11) NOT NULL DEFAULT '0',
  `CategoryElementID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ProjectPageID` (`ProjectPageID`),
  KEY `CategoryElementID` (`CategoryElementID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `ProjectPage_Categories` WRITE;
/*!40000 ALTER TABLE `ProjectPage_Categories` DISABLE KEYS */;

INSERT INTO `ProjectPage_Categories` (`ID`, `ProjectPageID`, `CategoryElementID`)
VALUES
	(1,9,3),
	(2,9,5),
	(3,12,5),
	(4,12,6),
	(5,13,3),
	(6,13,4),
	(7,14,3),
	(9,14,5),
	(10,9,6),
	(11,13,13),
	(12,15,16),
	(13,15,13),
	(14,16,10),
	(15,16,8),
	(16,16,6),
	(17,17,3),
	(18,17,8),
	(19,17,7),
	(20,17,4),
	(21,17,11),
	(22,22,16),
	(23,22,13),
	(24,21,4),
	(25,20,3),
	(26,20,8),
	(27,20,7),
	(28,20,11),
	(29,20,12),
	(30,31,3),
	(31,31,15),
	(32,31,4),
	(33,31,5),
	(35,21,3),
	(36,21,18),
	(37,32,10),
	(38,32,4),
	(39,32,14),
	(40,9,4),
	(41,12,4),
	(42,14,9),
	(43,14,14),
	(44,27,3),
	(45,27,10),
	(46,27,4),
	(47,27,14),
	(48,28,3),
	(49,28,9),
	(50,28,8),
	(51,28,4),
	(52,28,14),
	(53,28,11),
	(54,30,3),
	(55,30,14),
	(56,35,3),
	(57,35,15),
	(58,35,9),
	(59,35,8),
	(60,35,14),
	(61,35,11),
	(62,36,3),
	(63,36,10),
	(64,36,4),
	(65,36,17),
	(66,17,12),
	(67,17,17),
	(68,18,3),
	(69,18,10),
	(70,18,4),
	(71,18,17),
	(72,18,5),
	(73,37,14),
	(74,37,6),
	(75,40,8),
	(76,40,4),
	(77,42,16),
	(78,42,13),
	(79,45,3),
	(80,45,10),
	(81,45,8),
	(82,45,7),
	(83,45,4),
	(84,45,17),
	(85,45,5),
	(86,44,4),
	(87,44,18),
	(88,38,3),
	(89,38,7),
	(90,38,4),
	(91,48,14),
	(92,48,6),
	(93,36,7),
	(94,14,7),
	(95,14,4),
	(96,50,3),
	(97,50,10),
	(98,50,8),
	(99,50,7),
	(100,50,6),
	(101,24,3),
	(102,24,8),
	(103,24,6),
	(104,51,8),
	(105,51,18),
	(106,53,7),
	(107,53,17),
	(108,53,12),
	(109,53,5),
	(110,26,15),
	(111,26,7),
	(112,26,4),
	(113,26,5),
	(114,48,8),
	(115,48,7),
	(116,44,7),
	(117,42,4),
	(118,41,4),
	(119,41,11),
	(120,40,5),
	(121,39,15),
	(122,39,7),
	(123,39,4),
	(124,38,10),
	(125,38,8),
	(126,36,5),
	(127,34,3),
	(128,34,8),
	(129,34,7),
	(130,34,4),
	(131,34,6),
	(132,18,7),
	(133,31,7),
	(134,30,7),
	(135,21,10),
	(136,21,7),
	(137,52,3),
	(138,52,15),
	(139,52,8),
	(140,52,7),
	(141,52,4),
	(142,52,14),
	(143,52,12),
	(144,52,6),
	(145,52,5),
	(146,52,17),
	(147,20,4),
	(148,20,17),
	(149,20,10),
	(150,25,8),
	(151,25,7),
	(152,25,4),
	(153,25,12),
	(154,25,6),
	(155,13,7),
	(156,15,4),
	(157,19,3),
	(158,19,10),
	(159,19,8),
	(160,19,7),
	(161,19,4),
	(162,19,5),
	(163,51,7),
	(164,51,4),
	(165,51,14),
	(166,24,7),
	(167,12,3),
	(168,12,10),
	(169,16,7),
	(170,19,9),
	(171,19,12),
	(172,19,6),
	(173,22,3),
	(174,22,15),
	(175,22,10),
	(176,22,7),
	(177,22,4);

/*!40000 ALTER TABLE `ProjectPage_Categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ProjectPage_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ProjectPage_Live`;

CREATE TABLE `ProjectPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MainImageID` int(11) NOT NULL DEFAULT '0',
  `FeatureImageID` int(11) NOT NULL DEFAULT '0',
  `VideoURL` mediumtext CHARACTER SET utf8,
  `VideoAutoplay` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MainImageID` (`MainImageID`),
  KEY `FeatureImageID` (`FeatureImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `ProjectPage_Live` WRITE;
/*!40000 ALTER TABLE `ProjectPage_Live` DISABLE KEYS */;

INSERT INTO `ProjectPage_Live` (`ID`, `MainImageID`, `FeatureImageID`, `VideoURL`, `VideoAutoplay`)
VALUES
	(9,4,203,NULL,0),
	(12,13,205,NULL,0),
	(13,15,154,NULL,0),
	(14,18,331,NULL,0),
	(16,0,437,'https://vimeo.com/29758887',1),
	(17,43,201,NULL,0),
	(18,50,379,NULL,0),
	(19,290,308,NULL,0),
	(20,83,335,NULL,0),
	(21,93,378,NULL,0),
	(22,457,456,NULL,0),
	(26,116,375,NULL,0),
	(27,126,377,NULL,0),
	(30,33,409,NULL,0),
	(31,146,336,NULL,0),
	(34,177,382,NULL,0),
	(35,185,431,'https://vimeo.com/52655143',0),
	(36,418,199,NULL,0),
	(40,229,230,NULL,0),
	(41,0,235,'https://vimeo.com/6275443',0),
	(50,329,429,NULL,0),
	(51,0,432,NULL,0),
	(52,361,435,NULL,0),
	(53,430,0,'https://vimeo.com/119992913',1);

/*!40000 ALTER TABLE `ProjectPage_Live` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ProjectPage_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ProjectPage_versions`;

CREATE TABLE `ProjectPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `MainImageID` int(11) NOT NULL DEFAULT '0',
  `FeatureImageID` int(11) NOT NULL DEFAULT '0',
  `VideoURL` mediumtext CHARACTER SET utf8,
  `VideoAutoplay` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `MainImageID` (`MainImageID`),
  KEY `FeatureImageID` (`FeatureImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `ProjectPage_versions` WRITE;
/*!40000 ALTER TABLE `ProjectPage_versions` DISABLE KEYS */;

INSERT INTO `ProjectPage_versions` (`ID`, `RecordID`, `Version`, `MainImageID`, `FeatureImageID`, `VideoURL`, `VideoAutoplay`)
VALUES
	(1,9,3,4,0,NULL,0),
	(2,9,4,4,0,NULL,0),
	(3,11,1,0,0,NULL,0),
	(4,12,3,0,0,NULL,0),
	(5,12,4,13,0,NULL,0),
	(6,13,1,0,0,NULL,0),
	(7,13,2,15,0,NULL,0),
	(8,14,1,0,0,NULL,0),
	(9,14,2,18,0,NULL,0),
	(10,12,5,13,0,NULL,0),
	(11,13,3,15,0,NULL,0),
	(12,14,3,18,0,NULL,0),
	(13,9,5,4,0,NULL,0),
	(14,9,6,4,0,NULL,0),
	(15,9,7,4,0,NULL,0),
	(16,12,6,13,0,NULL,0),
	(17,13,4,15,0,NULL,0),
	(18,14,4,18,0,NULL,0),
	(19,15,1,0,0,NULL,0),
	(20,15,2,0,0,NULL,0),
	(21,15,3,23,0,NULL,0),
	(22,15,4,23,0,NULL,0),
	(23,15,5,23,0,NULL,0),
	(24,16,1,0,0,NULL,0),
	(25,16,2,0,0,NULL,0),
	(26,16,3,0,0,NULL,0),
	(27,16,4,35,0,NULL,0),
	(28,16,5,0,0,NULL,0),
	(29,16,6,32,0,NULL,0),
	(30,17,1,0,0,NULL,0),
	(31,17,2,0,0,NULL,0),
	(32,17,3,47,0,NULL,0),
	(33,17,4,47,0,NULL,0),
	(34,18,1,0,0,NULL,0),
	(35,18,2,50,0,NULL,0),
	(36,18,3,50,0,NULL,0),
	(37,18,4,50,0,NULL,0),
	(38,19,1,0,0,NULL,0),
	(39,19,2,72,0,NULL,0),
	(40,15,6,23,0,NULL,0),
	(41,20,1,0,0,NULL,0),
	(42,20,2,0,0,NULL,0),
	(43,20,3,89,0,NULL,0),
	(44,20,4,83,0,NULL,0),
	(45,21,1,0,0,NULL,0),
	(46,21,2,0,0,NULL,0),
	(47,21,3,93,0,NULL,0),
	(48,21,4,93,0,NULL,0),
	(49,22,1,0,0,NULL,0),
	(50,22,2,0,0,NULL,0),
	(51,22,3,95,0,NULL,0),
	(52,14,5,18,0,NULL,0),
	(53,24,1,0,0,NULL,0),
	(54,24,2,98,0,NULL,0),
	(55,25,1,0,0,NULL,0),
	(56,25,2,100,0,NULL,0),
	(57,25,3,100,0,NULL,0),
	(58,26,1,0,0,NULL,0),
	(59,26,2,116,0,NULL,0),
	(60,26,3,116,0,NULL,0),
	(61,18,5,50,0,NULL,0),
	(62,27,1,0,0,NULL,0),
	(63,27,2,126,0,NULL,0),
	(64,15,7,23,0,NULL,0),
	(65,28,1,0,0,NULL,0),
	(66,28,2,0,0,NULL,0),
	(67,13,5,15,0,NULL,0),
	(68,13,6,15,0,NULL,0),
	(69,12,7,13,0,NULL,0),
	(70,20,5,83,0,NULL,0),
	(71,15,8,23,0,NULL,0),
	(72,30,1,0,0,NULL,0),
	(73,30,2,33,0,NULL,0),
	(74,28,3,0,0,NULL,0),
	(75,30,3,33,32,NULL,0),
	(76,30,4,33,0,NULL,0),
	(77,22,4,95,0,NULL,0),
	(78,31,1,0,0,NULL,0),
	(79,31,2,146,0,NULL,0),
	(80,31,3,146,0,NULL,0),
	(81,16,7,0,32,NULL,0),
	(82,16,8,0,32,NULL,0),
	(83,25,4,100,153,NULL,0),
	(84,13,7,15,154,NULL,0),
	(85,13,8,15,154,NULL,0),
	(86,13,9,15,154,NULL,0),
	(87,9,8,4,0,'https://vimeo.com/44431765',0),
	(88,9,9,4,0,NULL,0),
	(89,25,5,100,153,NULL,0),
	(90,16,9,0,32,NULL,0),
	(91,16,10,0,32,'https://vimeo.com/29758887',0),
	(92,16,11,0,32,'https://vimeo.com/29758887',1),
	(93,17,5,47,0,NULL,0),
	(94,22,5,95,155,NULL,0),
	(95,22,6,95,155,NULL,0),
	(96,22,7,95,155,NULL,0),
	(97,21,5,93,0,NULL,0),
	(98,15,9,23,158,NULL,0),
	(99,12,8,13,0,NULL,0),
	(100,32,1,0,0,NULL,0),
	(101,32,2,0,0,NULL,0),
	(102,32,3,0,0,NULL,0),
	(103,32,4,169,0,NULL,0),
	(104,19,3,72,0,NULL,0),
	(105,27,3,126,0,NULL,0),
	(106,19,4,0,0,NULL,0),
	(107,34,1,0,0,NULL,0),
	(108,34,2,0,0,NULL,0),
	(109,34,3,177,0,NULL,0),
	(110,35,1,0,0,NULL,0),
	(111,35,2,0,0,NULL,0),
	(112,35,3,0,0,'https://vimeo.com/52655143',0),
	(113,35,4,0,0,'https://vimeo.com/52655143',0),
	(114,36,1,0,0,NULL,0),
	(115,36,2,0,0,NULL,0),
	(116,36,3,189,199,NULL,0),
	(117,17,6,43,0,NULL,0),
	(118,17,7,43,201,NULL,0),
	(119,17,8,43,201,NULL,0),
	(120,18,6,50,0,NULL,0),
	(121,18,7,50,0,NULL,0),
	(122,37,1,0,0,NULL,0),
	(123,37,2,0,0,NULL,0),
	(124,37,3,37,0,NULL,0),
	(125,37,4,37,0,NULL,0),
	(126,37,5,37,0,NULL,0),
	(127,9,10,4,203,NULL,0),
	(128,9,11,4,203,NULL,0),
	(129,25,6,100,204,NULL,0),
	(130,12,9,13,205,NULL,0),
	(131,12,10,13,205,NULL,0),
	(132,16,12,0,35,'https://vimeo.com/29758887',1),
	(133,15,10,23,158,NULL,0),
	(134,38,1,0,0,NULL,0),
	(135,38,2,0,0,NULL,0),
	(136,38,3,218,0,NULL,0),
	(137,39,1,0,0,NULL,0),
	(138,39,2,225,0,NULL,0),
	(139,39,3,225,226,NULL,0),
	(140,39,4,225,226,NULL,0),
	(141,40,1,0,0,NULL,0),
	(142,40,2,0,0,NULL,0),
	(143,40,3,229,230,NULL,0),
	(144,37,6,37,0,NULL,0),
	(145,37,7,37,0,NULL,0),
	(146,21,6,93,0,NULL,0),
	(147,41,1,0,0,NULL,0),
	(148,41,2,0,0,'https://vimeo.com/6275443',0),
	(149,41,3,0,235,'https://vimeo.com/6275443',0),
	(150,27,4,126,0,NULL,0),
	(151,42,1,0,0,NULL,0),
	(152,42,2,27,0,NULL,0),
	(153,42,3,239,0,NULL,0),
	(154,44,1,0,0,NULL,0),
	(155,44,2,245,0,NULL,0),
	(156,14,6,18,249,NULL,0),
	(157,16,13,0,0,'https://vimeo.com/29758887',1),
	(158,16,14,0,250,'https://vimeo.com/29758887',1),
	(159,45,1,0,0,NULL,0),
	(160,45,2,0,0,NULL,0),
	(161,45,3,0,262,NULL,0),
	(162,38,4,218,265,NULL,0),
	(163,21,7,93,0,NULL,0),
	(164,26,4,116,0,NULL,0),
	(165,26,5,116,0,NULL,0),
	(166,31,4,146,0,NULL,0),
	(167,15,11,23,158,NULL,0),
	(168,22,8,95,155,NULL,0),
	(169,46,1,0,0,NULL,0),
	(170,47,1,0,0,NULL,0),
	(171,48,1,0,0,NULL,0),
	(172,48,2,0,0,'https://vimeo.com/6079398',0),
	(173,48,3,0,277,'https://vimeo.com/6079398',0),
	(174,42,4,239,278,NULL,0),
	(175,32,5,169,0,NULL,0),
	(176,45,4,0,262,NULL,0),
	(177,16,15,0,250,'https://vimeo.com/29758887',1),
	(178,20,6,83,0,NULL,0),
	(179,20,7,83,0,NULL,0),
	(180,20,8,83,0,NULL,0),
	(181,16,16,0,250,'https://vimeo.com/29758887',1),
	(182,34,4,177,0,NULL,0),
	(183,19,5,0,0,NULL,0),
	(184,14,7,18,249,NULL,0),
	(185,39,5,225,226,NULL,0),
	(186,41,4,0,235,'https://vimeo.com/6275443',0),
	(187,40,4,229,230,NULL,0),
	(188,34,5,177,0,NULL,0),
	(189,42,5,239,278,NULL,0),
	(190,18,8,50,0,NULL,0),
	(191,30,5,33,0,NULL,0),
	(192,30,6,33,0,NULL,0),
	(193,9,12,4,203,NULL,0),
	(194,12,11,13,205,NULL,0),
	(195,19,6,0,308,NULL,0),
	(196,49,1,0,0,NULL,0),
	(197,50,1,0,0,NULL,0),
	(198,50,2,0,0,NULL,0),
	(199,50,3,0,318,NULL,0),
	(200,50,4,318,0,NULL,0),
	(201,35,5,185,0,'https://vimeo.com/52655143',0),
	(202,18,9,328,0,NULL,0),
	(203,18,10,0,328,NULL,0),
	(204,50,5,0,0,NULL,0),
	(205,9,13,4,203,NULL,0),
	(206,20,9,83,0,NULL,0),
	(207,21,8,93,0,NULL,0),
	(208,22,9,95,155,NULL,0),
	(209,19,7,0,308,NULL,0),
	(210,24,3,98,0,NULL,0),
	(211,17,9,43,201,NULL,0),
	(212,18,11,0,328,NULL,0),
	(213,26,6,116,0,NULL,0),
	(214,22,10,95,155,NULL,0),
	(215,27,5,126,0,NULL,0),
	(216,24,4,98,0,NULL,0),
	(217,14,8,18,330,NULL,0),
	(218,14,9,18,331,NULL,0),
	(219,24,5,98,332,NULL,0),
	(220,20,10,83,335,NULL,0),
	(221,31,5,146,336,NULL,0),
	(222,44,3,245,337,NULL,0),
	(223,44,4,245,338,NULL,0),
	(224,50,6,329,0,NULL,0),
	(225,51,1,0,0,NULL,0),
	(226,51,2,0,0,NULL,0),
	(227,51,3,0,342,NULL,0),
	(228,51,4,0,342,NULL,0),
	(229,51,5,0,342,NULL,0),
	(230,52,1,0,0,NULL,0),
	(231,52,2,0,0,NULL,0),
	(232,52,3,0,0,NULL,0),
	(233,52,4,361,0,NULL,0),
	(234,52,5,361,374,NULL,0),
	(235,26,7,116,375,NULL,0),
	(236,32,6,169,376,NULL,0),
	(237,27,6,126,377,NULL,0),
	(238,21,9,93,378,NULL,0),
	(239,18,12,50,379,NULL,0),
	(240,37,8,380,0,NULL,0),
	(241,37,9,380,381,NULL,0),
	(242,34,6,177,382,NULL,0),
	(243,51,6,0,383,NULL,0),
	(244,51,7,0,384,NULL,0),
	(245,30,7,33,397,NULL,0),
	(246,53,1,0,0,NULL,0),
	(247,53,2,0,0,'https://vimeo.com/119992913',1),
	(248,53,3,0,261,'https://vimeo.com/119992913',1),
	(249,53,4,0,261,'https://vimeo.com/119992913',1),
	(250,45,5,275,262,NULL,0),
	(251,19,8,0,308,NULL,0),
	(252,26,8,116,375,NULL,0),
	(253,19,9,0,308,NULL,0),
	(254,19,10,0,308,NULL,0),
	(255,16,17,0,250,'https://vimeo.com/29758887',1),
	(256,51,8,0,384,NULL,0),
	(257,45,6,275,262,NULL,0),
	(258,25,7,100,204,NULL,0),
	(259,20,11,83,335,NULL,0),
	(260,22,11,95,155,NULL,0),
	(261,27,7,126,377,NULL,0),
	(262,21,10,93,378,NULL,0),
	(263,30,8,33,397,NULL,0),
	(264,30,9,33,397,NULL,0),
	(265,31,6,146,336,NULL,0),
	(266,17,10,43,201,NULL,0),
	(267,34,7,177,382,NULL,0),
	(268,30,10,33,409,NULL,0),
	(269,52,6,361,374,NULL,0),
	(270,52,7,361,374,NULL,0),
	(271,19,11,0,308,NULL,0),
	(272,9,14,4,203,NULL,0),
	(273,36,4,418,199,NULL,0),
	(274,36,5,418,199,NULL,0),
	(275,36,6,418,199,NULL,0),
	(276,22,12,95,155,NULL,0),
	(277,53,5,430,0,'https://vimeo.com/119992913',1),
	(278,14,10,18,331,NULL,0),
	(279,30,11,33,409,NULL,0),
	(280,36,7,418,199,NULL,0),
	(281,53,6,430,0,'https://vimeo.com/119992913',1),
	(282,50,7,329,0,NULL,0),
	(283,50,8,329,429,NULL,0),
	(284,35,6,185,431,'https://vimeo.com/52655143',0),
	(285,52,8,361,374,NULL,0),
	(286,9,15,4,203,NULL,0),
	(287,50,9,329,429,NULL,0),
	(288,19,12,290,308,NULL,0),
	(289,51,9,0,384,NULL,0),
	(290,30,12,33,409,NULL,0),
	(291,17,11,43,201,NULL,0),
	(292,34,8,177,382,NULL,0),
	(293,51,10,0,432,NULL,0),
	(294,52,9,361,433,NULL,0),
	(295,52,10,361,434,NULL,0),
	(296,52,11,361,435,NULL,0),
	(297,16,18,0,437,'https://vimeo.com/29758887',1),
	(298,22,13,95,456,NULL,0),
	(299,22,14,457,456,NULL,0);

/*!40000 ALTER TABLE `ProjectPage_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table RedirectorPage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `RedirectorPage`;

CREATE TABLE `RedirectorPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table RedirectorPage_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `RedirectorPage_Live`;

CREATE TABLE `RedirectorPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table RedirectorPage_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `RedirectorPage_versions`;

CREATE TABLE `RedirectorPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table ShopElement
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ShopElement`;

CREATE TABLE `ShopElement` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('ShopElement') CHARACTER SET utf8 DEFAULT 'ShopElement',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Size` int(11) NOT NULL DEFAULT '0',
  `SortID` int(11) NOT NULL DEFAULT '0',
  `HeroImageID` int(11) NOT NULL DEFAULT '0',
  `ShopElementID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroImageID` (`HeroImageID`),
  KEY `ShopElementID` (`ShopElementID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `ShopElement` WRITE;
/*!40000 ALTER TABLE `ShopElement` DISABLE KEYS */;

INSERT INTO `ShopElement` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Size`, `SortID`, `HeroImageID`, `ShopElementID`)
VALUES
	(1,'ShopElement','2015-04-21 00:19:54','2015-12-14 22:10:26','Item',1,1,404,43),
	(2,'ShopElement','2015-04-21 00:22:33','2015-12-14 21:56:09','Item',1,2,312,0),
	(3,'ShopElement','2015-04-21 00:23:45','2015-12-14 22:10:26','Item',1,2,403,43),
	(4,'ShopElement','2015-04-21 00:25:16','2015-12-14 22:10:26','Item',1,4,406,43),
	(5,'ShopElement','2015-12-14 22:03:07','2015-12-14 22:10:26','Item',1,5,405,43),
	(6,'ShopElement','2015-12-14 22:08:27','2015-12-14 22:10:26','Item',1,3,407,43);

/*!40000 ALTER TABLE `ShopElement` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ShopPage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ShopPage`;

CREATE TABLE `ShopPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Colour` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `ShopPage` WRITE;
/*!40000 ALTER TABLE `ShopPage` DISABLE KEYS */;

INSERT INTO `ShopPage` (`ID`, `Colour`)
VALUES
	(43,'000');

/*!40000 ALTER TABLE `ShopPage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ShopPage_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ShopPage_Live`;

CREATE TABLE `ShopPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Colour` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `ShopPage_Live` WRITE;
/*!40000 ALTER TABLE `ShopPage_Live` DISABLE KEYS */;

INSERT INTO `ShopPage_Live` (`ID`, `Colour`)
VALUES
	(43,'000');

/*!40000 ALTER TABLE `ShopPage_Live` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ShopPage_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ShopPage_versions`;

CREATE TABLE `ShopPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Colour` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `ShopPage_versions` WRITE;
/*!40000 ALTER TABLE `ShopPage_versions` DISABLE KEYS */;

INSERT INTO `ShopPage_versions` (`ID`, `RecordID`, `Version`, `Colour`)
VALUES
	(1,43,11,'000'),
	(2,43,12,'000');

/*!40000 ALTER TABLE `ShopPage_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SiteConfig
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteConfig`;

CREATE TABLE `SiteConfig` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteConfig') CHARACTER SET utf8 DEFAULT 'SiteConfig',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Tagline` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Theme` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `SiteConfig` WRITE;
/*!40000 ALTER TABLE `SiteConfig` DISABLE KEYS */;

INSERT INTO `SiteConfig` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Tagline`, `Theme`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`)
VALUES
	(1,'SiteConfig','2014-11-11 13:25:47','2014-11-27 16:24:15','Rodeo','Rodeo',NULL,'Anyone','LoggedInUsers','LoggedInUsers');

/*!40000 ALTER TABLE `SiteConfig` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SiteConfig_CreateTopLevelGroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteConfig_CreateTopLevelGroups`;

CREATE TABLE `SiteConfig_CreateTopLevelGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table SiteConfig_EditorGroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteConfig_EditorGroups`;

CREATE TABLE `SiteConfig_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table SiteConfig_ViewerGroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteConfig_ViewerGroups`;

CREATE TABLE `SiteConfig_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table SiteTree
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree`;

CREATE TABLE `SiteTree` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteTree','Page','AboutPage','ContactPage','SubscribePage','CategoriesPage','CategoryHolderPage','FeedPage','HomePage','NewsPage','ProjectsPage','ProjectPage','ShopPage','ErrorPage','RedirectorPage','VirtualPage') CHARACTER SET utf8 DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `SiteTree` WRITE;
/*!40000 ALTER TABLE `SiteTree` DISABLE KEYS */;

INSERT INTO `SiteTree` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`)
VALUES
	(1,'HomePage','2014-11-11 13:25:47','2015-12-17 23:21:50','home','Home',NULL,'<p>Rodeo</p>\n<p>Design is an elastic term and it succeeds most when upstream innovation and thinking creates downstream outcomes that are meaningful to people. </p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',9,0),
	(2,'AboutPage','2014-11-11 13:25:47','2016-06-02 02:20:36','about','About',NULL,'<p>Rodeo was founded in 2005 as a design and communications company. Over the past ten years there’s been a lot of change—our industry has evolved, our clients’ challenges have become more complex, communication has diversified—and so have we. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>\n<p>Rodeo develops strategies based on communication and applied design thinking at every stage of project development. We turn these insights and strategies into experiences that people engage with, connect with and interact with. We believe we have a responsibility to innovate — to find new expressions and solutions for common issues. We do this on a daily basis for our clients, but also seek to have an impact on the wider community, be it local, national or global. We also believe our work should contribute to the cultural landscape – lasting beyond the campaign timeframe and be more meaningful than merely meeting the objectives of a brief.<br><br>Lets start something amazing!</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',15,0),
	(4,'ErrorPage','2014-11-11 13:25:47','2014-12-10 18:26:53','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,0,0,10,0,0,NULL,'Inherit','Inherit',2,0),
	(5,'ErrorPage','2014-11-11 13:25:48','2014-12-10 18:26:53','server-error','Server error',NULL,'<p>Sorry, there was a problem with handling your request.</p>',NULL,NULL,0,0,11,0,0,NULL,'Inherit','Inherit',2,0),
	(6,'SubscribePage','2014-11-11 14:00:07','2014-12-19 19:21:39','subscribe','Subscribe',NULL,'<p>Now you know a little more about us, let\'s start something awesome! Or at least stay in touch. We send out irregular but insightful news. </p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',5,0),
	(7,'ContactPage','2014-11-11 14:21:30','2016-06-02 01:50:48','contact','Contact',NULL,'<p>We\'re into design because we\'re into people. There\'s a lot of talk about design thinking as a work process and although it has always been the framework for developing our strategy and creative we also believe it needs to function hand in glove with community engagement. When the community can engage it forces good design to be responsive, to change, to face emerging ideas, meet new challenges and mobilise opportunity.</p>\n<p>The story behind our work space is essentially a real expression of this concept. We shared the idea with other smart people who were also up for ideas. Together we designed and adapted an empty mechanics warehouse on the city fringe into a dynamic cafe with awesome coffee, design studios, specialist art gallery and a flexible event space. It is equal parts an expression of our thinking and an experiment in action. When we discover something that doesn\'t work, we just re-design it.</p>\n<p>Come and visit, drink fine coffee and talk some more!</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',30,0),
	(8,'ProjectsPage','2014-11-12 14:01:42','2015-07-06 02:06:44','projects','Projects',NULL,NULL,NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',3,0),
	(9,'ProjectPage','2014-11-12 14:03:00','2016-05-18 06:23:27','g82','Gallery 82',NULL,'<p>Brand identity and communications for independent art gallery.</p>',NULL,NULL,1,1,16,0,0,NULL,'Inherit','Inherit',15,8),
	(10,'CategoryHolderPage','2014-11-17 11:59:05','2014-12-10 18:26:53','medium','Medium',NULL,NULL,NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',11,23),
	(11,'CategoryHolderPage','2014-11-17 11:59:05','2014-12-10 18:26:53','sector','Sector',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',11,23),
	(12,'ProjectPage','2014-11-17 12:55:38','2015-11-05 03:43:31','aida','AIDA',NULL,'<p>The Australian Interior Design Awards concept.</p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',11,8),
	(13,'ProjectPage','2014-11-17 12:56:39','2015-11-05 03:41:08','babo','Babo',NULL,'<p>Bespoke Italian wine brand identity. Yes we get to drink it. </p>',NULL,NULL,1,1,14,0,0,NULL,'Inherit','Inherit',9,8),
	(14,'ProjectPage','2014-11-17 12:57:42','2016-06-02 02:41:02','nab','nab',NULL,'<p>Building identity and interior graphic package for NAB South Australian headquarters.</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',10,8),
	(15,'ProjectPage','2014-11-27 20:05:16','2016-04-26 18:25:08','atlas-360','Atlas 360º',NULL,'<p>Limited premium packaging for an limited premium wine. </p>',NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',11,8),
	(16,'ProjectPage','2014-11-27 20:30:55','2016-06-03 00:01:36','paula-scher','Paula Scher',NULL,'<p>Shot at Pentagram in New York, a series of films for Getty Images Global. </p>\n<p> </p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',18,8),
	(17,'ProjectPage','2014-11-27 21:11:49','2016-05-19 23:38:44','opal','SA Health',NULL,'<p>Social marketing branding and communications campaign.</p>',NULL,NULL,1,1,22,0,0,NULL,'Inherit','Inherit',11,8),
	(18,'ProjectPage','2014-11-27 21:37:10','2016-01-05 21:44:00','open-ideas','Open Ideas',NULL,'<p>Open Ideas International architecture competition.</p>',NULL,NULL,1,1,23,0,0,NULL,'Inherit','Inherit',12,8),
	(19,'ProjectPage','2014-11-27 23:40:50','2016-06-02 03:01:15','aila','AILA Forecast Festival',NULL,'<p>Visualise the change.</p>',NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',12,8),
	(20,'ProjectPage','2014-11-30 22:18:04','2015-12-17 23:51:40','vaccination','SA Health Vaccination Initiative ',NULL,'<p>Integrated muti-channel social marketing initiative.</p>',NULL,NULL,1,1,17,0,0,NULL,'Inherit','Inherit',11,8),
	(21,'ProjectPage','2014-11-30 23:29:10','2016-01-01 22:07:15','katrina-webb','Katrina Webb',NULL,'<p>Greatness in multiple Paralympics and greatness in connecting with people.</p>',NULL,NULL,1,1,20,0,0,NULL,'Inherit','Inherit',10,8),
	(22,'ProjectPage','2014-11-30 23:41:03','2016-06-03 02:12:30','atlas-wines','Atlas Wines',NULL,'<p>The past that\'s in the earth makes a certain grape.</p>',NULL,NULL,1,1,18,0,0,NULL,'Inherit','Inherit',14,8),
	(23,'CategoriesPage','2014-12-01 04:37:06','2014-12-10 18:26:53','categories','categories','Categories',NULL,NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',3,0),
	(24,'ProjectPage','2014-12-01 17:51:41','2016-05-19 17:27:29','wake-up-hate','Wake Up Hate',NULL,'<p>No animal was harmed in creating this work.</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',5,8),
	(25,'ProjectPage','2014-12-01 18:05:58','2016-05-19 17:28:01','motor-town','Motor Town',NULL,'<p>Branding Simon Stevens most violent play.</p>',NULL,NULL,1,1,15,0,0,NULL,'Inherit','Inherit',7,8),
	(26,'ProjectPage','2014-12-03 22:43:45','2015-12-17 23:40:38','goodhouse','Goodhouse',NULL,'<p>Smart systems that puts good design in reach.</p>',NULL,NULL,1,1,34,0,0,NULL,'Inherit','Inherit',8,8),
	(27,'ProjectPage','2014-12-07 23:24:53','2015-12-17 23:59:08','lms-energy','LMS Energy',NULL,'<p>Branding innovation in the energy sector. </p>',NULL,NULL,1,1,19,0,0,NULL,'Inherit','Inherit',7,8),
	(29,'NewsPage','2014-12-08 05:55:50','2014-12-30 14:17:21','news','news','News',NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',3,0),
	(30,'ProjectPage','2014-12-08 17:58:43','2016-06-03 00:22:34','getty-image-services-guide','Getty Images',NULL,'<p>We\'ve done 15 years of smart work together.</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',12,8),
	(31,'ProjectPage','2014-12-08 20:07:34','2015-12-18 00:04:57','intro','Intro',NULL,'<p>When planning and architecture start projects together the work is clever.</p>',NULL,NULL,1,1,21,0,0,NULL,'Inherit','Inherit',6,8),
	(32,'ProjectPage','2014-12-10 18:49:19','2016-05-19 17:26:18','dec-workforce','Dec Workforce',NULL,'<p>DEC Aviation Workforce is about the power of providing the best qualified people for the job.</p>\n<p> </p>',NULL,NULL,1,1,24,0,0,NULL,'Inherit','Inherit',6,8),
	(33,'FeedPage','2014-12-11 05:08:29','2014-12-22 23:12:07','feed','feed','Feed',NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',5,0),
	(34,'ProjectPage','2014-12-11 15:28:41','2016-05-19 23:39:29','blackout','Stone/Castro',NULL,'<p>Integrated communications for Stone/Castro\'s world premiere of Blackout.</p>',NULL,NULL,1,1,25,0,0,NULL,'Inherit','Inherit',8,8),
	(35,'ProjectPage','2014-12-14 16:38:41','2016-04-26 20:12:39','ach-group-2','ACH Group',NULL,'<p>Future Films </p>',NULL,NULL,1,1,26,0,0,NULL,'Inherit','Inherit',6,8),
	(36,'ProjectPage','2014-12-14 17:58:08','2016-06-02 02:31:05','integrated-design-commission','Integrated Design Commission',NULL,'<p>Designing opportunities that matter</p>',NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',7,8),
	(37,'ProjectPage','2014-12-14 19:44:34','2016-05-19 17:34:36','getty-images-spikes-asia','Getty Images + Spikes Asia',NULL,'<p>We developed 40 minute dual screen projection and collateral for Spikes Advertising Festival Asia.</p>',NULL,NULL,1,1,27,0,0,NULL,'Inherit','Inherit',9,8),
	(38,'ProjectPage','2014-12-14 20:22:37','2016-05-19 17:29:09','pfitzner-furniture','Pfitzner Furniture',NULL,NULL,NULL,NULL,1,1,28,0,0,NULL,'Inherit','Inherit',4,8),
	(39,'ProjectPage','2014-12-14 22:56:27','2016-04-26 18:14:48','ecoscore','Ecoscore',NULL,'<p>Strategy and branding for Scope 3 carbon tool.</p>',NULL,NULL,1,1,29,0,0,NULL,'Inherit','Inherit',5,8),
	(40,'ProjectPage','2014-12-14 23:25:24','2015-11-05 03:34:07','dia-awards','DIA Awards',NULL,'<p>Rodeo partners with the DIA to brand the SA Awards season.</p>',NULL,NULL,1,1,30,0,0,NULL,'Inherit','Inherit',4,8),
	(41,'ProjectPage','2014-12-14 23:42:56','2015-11-05 03:33:47','kis','Kids Move',NULL,'<p>Kids Move brand identity</p>',NULL,NULL,1,1,31,0,0,NULL,'Inherit','Inherit',4,8),
	(42,'ProjectPage','2014-12-15 16:54:35','2016-05-19 17:25:41','altas-terros','Altas Terros',NULL,'<p>Subverting visual language on a new Atlas wine range.</p>',NULL,NULL,1,1,32,0,0,NULL,'Inherit','Inherit',5,8),
	(43,'ShopPage','2014-12-16 04:54:23','2016-06-02 01:48:46','shop','shop','Shop','<p>Rodeo Shop is our online store. It’s a space where you can view some of our personal projects. Posters, books and other things. We’re still sorting out the ordering system, but in the meantime join our mailing list for future shop talk and other info.</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',12,0),
	(44,'ProjectPage','2014-12-16 18:18:10','2016-04-26 18:15:13','ergo','Ergo',NULL,NULL,NULL,NULL,1,1,33,0,0,NULL,'Inherit','Inherit',4,8),
	(45,'ProjectPage','2014-12-17 22:28:13','2015-12-19 18:32:06','odasa','ODASA',NULL,'<p>Sometimes the best response is to not do a building.</p>',NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',6,8),
	(48,'ProjectPage','2014-12-21 18:11:48','2016-05-19 17:36:09','getty-images-bangkok-art-directors-awards','Getty Images Bangkok Art Directors Awards',NULL,NULL,NULL,NULL,1,1,35,0,0,NULL,'Inherit','Inherit',3,8),
	(50,'ProjectPage','2015-01-07 18:40:52','2016-05-18 06:23:47','gregory-crewdson','Gregory Crewdson',NULL,'<p>Campaign identity and communications for Gregory Crewdson\'s Masterclass.</p>',NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',9,8),
	(51,'ProjectPage','2015-07-06 01:23:23','2016-06-01 22:22:36','aoc','Australian Olympic Committee',NULL,'<p>Positioning the Australian Olympic Team.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',10,8),
	(52,'ProjectPage','2015-07-06 19:41:15','2016-06-02 02:57:22','wdc','World Design Capital',NULL,'<p>Better life through Design</p>',NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',11,8),
	(53,'ProjectPage','2015-07-08 01:37:43','2016-06-06 17:31:33','new-project-page','What does and architect do?',NULL,NULL,NULL,NULL,1,1,13,0,0,NULL,'Inherit','Inherit',6,8);

/*!40000 ALTER TABLE `SiteTree` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SiteTree_EditorGroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree_EditorGroups`;

CREATE TABLE `SiteTree_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table SiteTree_ImageTracking
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree_ImageTracking`;

CREATE TABLE `SiteTree_ImageTracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `FileID` (`FileID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table SiteTree_LinkTracking
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree_LinkTracking`;

CREATE TABLE `SiteTree_LinkTracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table SiteTree_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree_Live`;

CREATE TABLE `SiteTree_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteTree','Page','AboutPage','ContactPage','SubscribePage','CategoriesPage','CategoryHolderPage','FeedPage','HomePage','NewsPage','ProjectsPage','ProjectPage','ShopPage','ErrorPage','RedirectorPage','VirtualPage') CHARACTER SET utf8 DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `SiteTree_Live` WRITE;
/*!40000 ALTER TABLE `SiteTree_Live` DISABLE KEYS */;

INSERT INTO `SiteTree_Live` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`)
VALUES
	(1,'HomePage','2014-11-11 13:25:47','2015-12-17 23:21:50','home','Home',NULL,'<p>Rodeo</p>\n<p>Design is an elastic term and it succeeds most when upstream innovation and thinking creates downstream outcomes that are meaningful to people. </p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',9,0),
	(2,'AboutPage','2014-11-11 13:25:47','2016-06-02 02:20:36','about','About',NULL,'<p>Rodeo was founded in 2005 as a design and communications company. Over the past ten years there’s been a lot of change—our industry has evolved, our clients’ challenges have become more complex, communication has diversified—and so have we. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>\n<p>Rodeo develops strategies based on communication and applied design thinking at every stage of project development. We turn these insights and strategies into experiences that people engage with, connect with and interact with. We believe we have a responsibility to innovate — to find new expressions and solutions for common issues. We do this on a daily basis for our clients, but also seek to have an impact on the wider community, be it local, national or global. We also believe our work should contribute to the cultural landscape – lasting beyond the campaign timeframe and be more meaningful than merely meeting the objectives of a brief.<br><br>Lets start something amazing!</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',15,0),
	(4,'ErrorPage','2014-11-11 13:25:47','2014-11-11 13:26:15','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,0,0,10,0,0,NULL,'Inherit','Inherit',1,0),
	(5,'ErrorPage','2014-11-11 13:25:48','2014-11-11 13:25:48','server-error','Server error',NULL,'<p>Sorry, there was a problem with handling your request.</p>',NULL,NULL,0,0,11,0,0,NULL,'Inherit','Inherit',1,0),
	(6,'SubscribePage','2014-11-11 14:00:07','2014-12-19 19:21:40','subscribe','Subscribe',NULL,'<p>Now you know a little more about us, let\'s start something awesome! Or at least stay in touch. We send out irregular but insightful news. </p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',5,0),
	(7,'ContactPage','2014-11-11 14:21:30','2016-06-02 01:50:48','contact','Contact',NULL,'<p>We\'re into design because we\'re into people. There\'s a lot of talk about design thinking as a work process and although it has always been the framework for developing our strategy and creative we also believe it needs to function hand in glove with community engagement. When the community can engage it forces good design to be responsive, to change, to face emerging ideas, meet new challenges and mobilise opportunity.</p>\n<p>The story behind our work space is essentially a real expression of this concept. We shared the idea with other smart people who were also up for ideas. Together we designed and adapted an empty mechanics warehouse on the city fringe into a dynamic cafe with awesome coffee, design studios, specialist art gallery and a flexible event space. It is equal parts an expression of our thinking and an experiment in action. When we discover something that doesn\'t work, we just re-design it.</p>\n<p>Come and visit, drink fine coffee and talk some more!</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',30,0),
	(8,'ProjectsPage','2014-11-12 14:01:42','2014-12-21 18:42:59','projects','Projects',NULL,NULL,NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',3,0),
	(9,'ProjectPage','2014-11-12 14:03:00','2016-01-02 02:11:29','g82','Gallery 82',NULL,'<p>Brand identity and communications for independent art gallery.</p>',NULL,NULL,1,1,16,0,0,NULL,'Inherit','Inherit',14,8),
	(10,'CategoryHolderPage','2014-11-17 11:59:05','2014-12-08 06:51:15','medium','Medium',NULL,NULL,NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',11,23),
	(11,'CategoryHolderPage','2014-11-17 11:59:05','2014-12-08 19:25:51','sector','Sector',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',11,23),
	(12,'ProjectPage','2014-11-17 12:55:38','2015-11-05 03:43:31','aida','AIDA',NULL,'<p>The Australian Interior Design Awards concept.</p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',11,8),
	(13,'ProjectPage','2014-11-17 12:56:39','2015-11-05 03:41:08','babo','Babo',NULL,'<p>Bespoke Italian wine brand identity. Yes we get to drink it. </p>',NULL,NULL,1,1,14,0,0,NULL,'Inherit','Inherit',9,8),
	(14,'ProjectPage','2014-11-17 12:57:42','2016-06-02 02:41:02','nab','nab',NULL,'<p>Building identity and interior graphic package for NAB South Australian headquarters.</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',10,8),
	(16,'ProjectPage','2014-11-27 20:30:55','2016-06-03 00:01:36','paula-scher','Paula Scher',NULL,'<p>Shot at Pentagram in New York, a series of films for Getty Images Global. </p>\n<p> </p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',18,8),
	(17,'ProjectPage','2014-11-27 21:11:49','2016-05-19 23:38:44','opal','SA Health',NULL,'<p>Social marketing branding and communications campaign.</p>',NULL,NULL,1,1,22,0,0,NULL,'Inherit','Inherit',11,8),
	(18,'ProjectPage','2014-11-27 21:37:10','2016-01-05 21:44:00','open-ideas','Open Ideas',NULL,'<p>Open Ideas International architecture competition.</p>',NULL,NULL,1,1,23,0,0,NULL,'Inherit','Inherit',12,8),
	(19,'ProjectPage','2014-11-27 23:40:50','2016-06-02 03:01:16','aila','AILA Forecast Festival',NULL,'<p>Visualise the change.</p>',NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',12,8),
	(20,'ProjectPage','2014-11-30 22:18:04','2015-12-17 23:51:40','vaccination','SA Health Vaccination Initiative ',NULL,'<p>Integrated muti-channel social marketing initiative.</p>',NULL,NULL,1,1,17,0,0,NULL,'Inherit','Inherit',11,8),
	(21,'ProjectPage','2014-11-30 23:29:10','2016-01-01 22:07:15','katrina-webb','Katrina Webb',NULL,'<p>Greatness in multiple Paralympics and greatness in connecting with people.</p>',NULL,NULL,1,1,20,0,0,NULL,'Inherit','Inherit',10,8),
	(22,'ProjectPage','2014-11-30 23:41:03','2016-06-03 02:12:30','atlas-wines','Atlas Wines',NULL,'<p>The past that\'s in the earth makes a certain grape.</p>',NULL,NULL,1,1,18,0,0,NULL,'Inherit','Inherit',14,8),
	(23,'CategoriesPage','2014-12-01 04:37:06','2014-12-08 06:50:45','categories','categories','Categories',NULL,NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',3,0),
	(26,'ProjectPage','2014-12-03 22:43:45','2015-12-17 23:40:38','goodhouse','Goodhouse',NULL,'<p>Smart systems that puts good design in reach.</p>',NULL,NULL,1,1,34,0,0,NULL,'Inherit','Inherit',8,8),
	(27,'ProjectPage','2014-12-07 23:24:53','2015-12-17 23:59:08','lms-energy','LMS Energy',NULL,'<p>Branding innovation in the energy sector. </p>',NULL,NULL,1,1,19,0,0,NULL,'Inherit','Inherit',7,8),
	(29,'NewsPage','2014-12-08 05:55:50','2014-12-30 14:17:21','news','news','News',NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',3,0),
	(30,'ProjectPage','2014-12-08 17:58:43','2016-06-03 00:22:34','getty-image-services-guide','Getty Images',NULL,'<p>We\'ve done 15 years of smart work together.</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',12,8),
	(31,'ProjectPage','2014-12-08 20:07:34','2015-12-18 00:04:57','intro','Intro',NULL,'<p>When planning and architecture start projects together the work is clever.</p>',NULL,NULL,1,1,21,0,0,NULL,'Inherit','Inherit',6,8),
	(33,'FeedPage','2014-12-11 05:08:29','2014-12-22 23:12:07','feed','feed','Feed',NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',5,0),
	(34,'ProjectPage','2014-12-11 15:28:41','2016-05-19 23:39:29','blackout','Stone/Castro',NULL,'<p>Integrated communications for Stone/Castro\'s world premiere of Blackout.</p>',NULL,NULL,1,1,25,0,0,NULL,'Inherit','Inherit',8,8),
	(35,'ProjectPage','2014-12-14 16:38:41','2016-04-26 20:12:39','ach-group-2','ACH Group',NULL,'<p>Future Films </p>',NULL,NULL,1,1,26,0,0,NULL,'Inherit','Inherit',6,8),
	(36,'ProjectPage','2014-12-14 17:58:08','2016-06-02 02:31:05','integrated-design-commission','Integrated Design Commission',NULL,'<p>Designing opportunities that matter</p>',NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',7,8),
	(40,'ProjectPage','2014-12-14 23:25:24','2015-11-05 03:34:07','dia-awards','DIA Awards',NULL,'<p>Rodeo partners with the DIA to brand the SA Awards season.</p>',NULL,NULL,1,1,30,0,0,NULL,'Inherit','Inherit',4,8),
	(41,'ProjectPage','2014-12-14 23:42:56','2015-11-05 03:33:47','kis','Kids Move',NULL,'<p>Kids Move brand identity</p>',NULL,NULL,1,1,31,0,0,NULL,'Inherit','Inherit',4,8),
	(43,'ShopPage','2014-12-16 04:54:23','2016-06-02 01:48:46','shop','shop','Shop','<p>Rodeo Shop is our online store. It’s a space where you can view some of our personal projects. Posters, books and other things. We’re still sorting out the ordering system, but in the meantime join our mailing list for future shop talk and other info.</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',12,0),
	(50,'ProjectPage','2015-01-07 18:40:52','2016-04-26 20:11:45','gregory-crewdson','Gregory Crewdson',NULL,'<p>Campaign identity and communications for Gregory Crewdson\'s Masterclass.</p>',NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',8,8),
	(51,'ProjectPage','2015-07-06 01:23:23','2016-06-01 22:22:36','aoc','Australian Olympic Committee',NULL,'<p>Positioning the Australian Olympic Team.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',10,8),
	(52,'ProjectPage','2015-07-06 19:41:15','2016-06-02 02:57:23','wdc','World Design Capital',NULL,'<p>Better life through Design</p>',NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',11,8),
	(53,'ProjectPage','2015-07-08 01:37:43','2016-06-06 17:31:33','new-project-page','What does and architect do?',NULL,NULL,NULL,NULL,1,1,13,0,0,NULL,'Inherit','Inherit',6,8);

/*!40000 ALTER TABLE `SiteTree_Live` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SiteTree_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree_versions`;

CREATE TABLE `SiteTree_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SiteTree','Page','AboutPage','ContactPage','SubscribePage','CategoriesPage','CategoryHolderPage','FeedPage','HomePage','NewsPage','ProjectsPage','ProjectPage','ShopPage','ErrorPage','RedirectorPage','VirtualPage') CHARACTER SET utf8 DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `SiteTree_versions` WRITE;
/*!40000 ALTER TABLE `SiteTree_versions` DISABLE KEYS */;

INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`)
VALUES
	(1,1,1,1,0,0,'Page','2014-11-11 13:25:47','2014-11-11 13:25:47','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.org\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.org/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(2,2,1,1,0,0,'Page','2014-11-11 13:25:47','2014-11-11 13:25:47','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),
	(3,3,1,1,0,0,'Page','2014-11-11 13:25:47','2014-11-11 13:25:47','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',0),
	(4,4,1,1,0,0,'ErrorPage','2014-11-11 13:25:47','2014-11-11 13:25:47','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,0,0,4,0,0,NULL,'Inherit','Inherit',0),
	(5,5,1,1,0,0,'ErrorPage','2014-11-11 13:25:48','2014-11-11 13:25:48','server-error','Server error',NULL,'<p>Sorry, there was a problem with handling your request.</p>',NULL,NULL,0,0,5,0,0,NULL,'Inherit','Inherit',0),
	(6,1,2,1,1,1,'Page','2014-11-11 13:25:47','2014-11-11 13:43:03','home','Home',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(7,1,3,1,1,1,'HomePage','2014-11-11 13:25:47','2014-11-11 13:43:11','home','Home',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(8,2,2,1,1,1,'Page','2014-11-11 13:25:47','2014-11-11 13:51:45','about-us','About',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),
	(9,2,3,1,1,1,'AboutPage','2014-11-11 13:25:47','2014-11-11 13:52:59','about-us','About',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),
	(10,2,4,1,1,1,'AboutPage','2014-11-11 13:25:47','2014-11-11 13:54:40','about','About',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),
	(11,6,1,0,1,0,'SubscribePage','2014-11-11 14:00:07','2014-11-11 14:00:07','new-subscribe-page','New Subscribe Page',NULL,NULL,NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(12,6,2,1,1,1,'SubscribePage','2014-11-11 14:00:07','2014-11-11 14:00:17','subscribe','Subscribe',NULL,NULL,NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(13,7,1,0,1,0,'ContactPage','2014-11-11 14:21:30','2014-11-11 14:21:30','new-contact-page','New Contact Page',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',0),
	(14,7,2,1,1,1,'ContactPage','2014-11-11 14:21:30','2014-11-11 14:21:39','contact','Contact',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',0),
	(15,8,1,0,1,0,'ProjectPage','2014-11-12 14:01:42','2014-11-12 14:01:42','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',0),
	(16,8,2,1,1,1,'ProjectPage','2014-11-12 14:01:42','2014-11-12 14:01:51','projects','Projects',NULL,NULL,NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',0),
	(17,8,3,1,1,1,'ProjectsPage','2014-11-12 14:01:42','2014-11-12 14:02:45','projects','Projects',NULL,NULL,NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',0),
	(18,9,1,0,1,0,'ProjectPage','2014-11-12 14:03:00','2014-11-12 14:03:00','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',8),
	(19,9,2,1,1,1,'ProjectPage','2014-11-12 14:03:00','2014-11-12 14:03:43','g82','g82','G82',NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',8),
	(20,9,3,1,1,1,'ProjectPage','2014-11-12 14:03:00','2014-11-12 14:07:12','g82','g82','G82',NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',8),
	(21,9,4,1,1,1,'ProjectPage','2014-11-12 14:03:00','2014-11-12 14:07:29','g82','g82','G82','<p>This is a project.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',8),
	(22,10,1,1,1,1,'ProjectsPage','2014-11-12 14:25:49','2014-11-12 14:25:49','new-projects-page','New Projects Page',NULL,NULL,NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',0),
	(23,11,1,0,1,0,'ProjectPage','2014-11-12 14:26:01','2014-11-12 14:26:01','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',10),
	(24,10,2,1,1,1,'','2014-11-12 14:25:49','2014-11-12 14:27:03','new-projects-page','New Projects Page',NULL,NULL,NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',0),
	(25,12,1,1,1,1,'','2014-11-12 14:27:09','2014-11-12 14:27:09','new-project','New Project',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',10),
	(26,12,2,1,1,1,'','2014-11-12 14:27:09','2014-11-12 14:28:35','new-project','Test',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',10),
	(27,10,3,0,1,0,'CategoryHolderPage','2014-11-17 11:59:05','2014-11-17 11:59:05','new-category-holder-page','New Category Holder Page',NULL,NULL,NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',0),
	(28,10,4,1,1,1,'CategoryHolderPage','2014-11-17 11:59:05','2014-11-17 11:59:32','category-medium','Category - Medium',NULL,NULL,NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',0),
	(29,11,2,1,1,1,'CategoryHolderPage','2014-11-17 11:59:05','2014-11-17 11:59:47','category-medium-2','Category - Sector',NULL,NULL,NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',0),
	(30,12,3,0,1,0,'ProjectPage','2014-11-17 12:55:38','2014-11-17 12:55:38','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',8),
	(31,12,4,1,1,1,'ProjectPage','2014-11-17 12:55:38','2014-11-17 12:56:10','aida','Aida',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',8),
	(32,13,1,0,1,0,'ProjectPage','2014-11-17 12:56:39','2014-11-17 12:56:39','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',8),
	(33,13,2,1,1,1,'ProjectPage','2014-11-17 12:56:39','2014-11-17 12:56:59','bab','BAB',NULL,NULL,NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',8),
	(34,14,1,0,1,0,'ProjectPage','2014-11-17 12:57:42','2014-11-17 12:57:42','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',8),
	(35,14,2,1,1,1,'ProjectPage','2014-11-17 12:57:42','2014-11-17 12:58:06','nab','NAB',NULL,NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',8),
	(36,12,5,1,1,1,'ProjectPage','2014-11-17 12:55:38','2014-11-17 13:03:04','aida','Aida',NULL,'<p>This is a project.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',8),
	(37,13,3,1,1,1,'ProjectPage','2014-11-17 12:56:39','2014-11-17 13:03:09','bab','BAB',NULL,'<p>This is a project.</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',8),
	(38,14,3,1,1,1,'ProjectPage','2014-11-17 12:57:42','2014-11-17 13:03:14','nab','NAB',NULL,'<p>This is a project.</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',8),
	(39,10,5,1,1,1,'CategoryHolderPage','2014-11-17 11:59:05','2014-11-17 14:39:20','medium','Medium',NULL,NULL,NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',0),
	(40,11,3,1,1,1,'CategoryHolderPage','2014-11-17 11:59:05','2014-11-17 14:39:32','sector','Sector',NULL,NULL,NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',0),
	(41,9,5,1,1,1,'ProjectPage','2014-11-12 14:03:00','2014-11-27 16:10:44','g82','g82','G82','<p>Rodeo</p>\n<p> </p>\n<p>This is a project, we\'ll write some information in here when we get around to it. </p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',8),
	(42,9,6,1,1,1,'ProjectPage','2014-11-12 14:03:00','2014-11-27 16:12:19','g82','g82','G82','<p>Rodeo</p>\n<p>This is a project, we\'ll write some information in here when we get around to it. </p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',8),
	(43,9,7,1,1,1,'ProjectPage','2014-11-12 14:03:00','2014-11-27 16:16:49','g82','g82','G82','<p>Rodeo</p>\n<p>Gallery82 identity development. We\'ll write some clever information in here when we have some time.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',8),
	(44,12,6,1,1,1,'ProjectPage','2014-11-17 12:55:38','2014-11-27 16:17:37','aida','Aida',NULL,'<p>Rodeo</p>\n<p>Making something from nothing is easier said than done. We do it all the time.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',8),
	(45,13,4,1,1,1,'ProjectPage','2014-11-17 12:56:39','2014-11-27 16:18:25','bab','BAB',NULL,'<p>Rodeo</p>\n<p>Bespoke Italian wine brand identity. Yes we get to drink it. </p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',8),
	(46,14,4,1,1,1,'ProjectPage','2014-11-17 12:57:42','2014-11-27 16:19:28','nab','NAB',NULL,'<p>Rodeo</p>\n<p>Building identity and interior graphic package for nab South Australian head quarters. </p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',8),
	(47,15,1,0,1,0,'ProjectPage','2014-11-27 20:05:16','2014-11-27 20:05:16','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',8),
	(48,15,2,0,1,0,'ProjectPage','2014-11-27 20:05:16','2014-11-27 20:11:34','atlas','Atlas',NULL,NULL,NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',8),
	(49,15,3,1,1,1,'ProjectPage','2014-11-27 20:05:16','2014-11-27 20:18:56','atlas','Atlas',NULL,NULL,NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',8),
	(50,15,4,1,1,1,'ProjectPage','2014-11-27 20:05:16','2014-11-27 20:23:56','atlas','Atlas',NULL,'<p>Rodeo</p>\n<p>Premium wine / premium packaging.  </p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',8),
	(51,15,5,1,1,1,'ProjectPage','2014-11-27 20:05:16','2014-11-27 20:25:08','atlas','Atlas',NULL,'<p><a href=\"[sitetree_link,id=1]\">Rodeo</a></p>\n<p>Premium wine / premium packaging.  </p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',8),
	(52,16,1,0,1,0,'ProjectPage','2014-11-27 20:30:55','2014-11-27 20:30:55','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',8),
	(53,16,2,0,1,0,'ProjectPage','2014-11-27 20:30:55','2014-11-27 20:32:56','paula-scher','Paula Scher',NULL,NULL,NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',8),
	(54,16,3,1,1,1,'ProjectPage','2014-11-27 20:30:55','2014-11-27 20:45:24','paula-scher','Paula Scher',NULL,'<p>Rodeo</p>\n<p>A letter from Paula Scher</p>\n<p> </p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',8),
	(55,16,4,1,1,1,'ProjectPage','2014-11-27 20:30:55','2014-11-27 20:49:12','paula-scher','Paula Scher',NULL,'<p>Rodeo</p>\n<p>A letter from Paula Scher</p>\n<p> </p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',8),
	(56,16,5,1,1,1,'ProjectPage','2014-11-27 20:30:55','2014-11-27 21:02:21','paula-scher','Paula Scher',NULL,'<p>Rodeo</p>\n<p>A letter from Paula Scher</p>\n<p> </p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',8),
	(57,16,6,1,1,1,'ProjectPage','2014-11-27 20:30:55','2014-11-27 21:03:57','paula-scher','Paula Scher',NULL,'<p>Rodeo</p>\n<p>A letter from Paula Scher</p>\n<p> </p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',8),
	(58,17,1,0,1,0,'ProjectPage','2014-11-27 21:11:49','2014-11-27 21:11:49','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',8),
	(59,17,2,0,1,0,'ProjectPage','2014-11-27 21:11:49','2014-11-27 21:13:51','opal','Opal',NULL,'<p>Rodeo</p>\n<p> </p>\n<p> </p>',NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',8),
	(60,17,3,1,1,1,'ProjectPage','2014-11-27 21:11:49','2014-11-27 21:18:16','opal','Opal',NULL,'<p>Rodeo</p>\n<p> </p>\n<p> </p>',NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',8),
	(61,17,4,1,1,1,'ProjectPage','2014-11-27 21:11:49','2014-11-27 21:32:28','opal','Opal',NULL,'<p><a href=\"[sitetree_link,id=1]\">Rodeo</a></p>\n<p> </p>\n<p> </p>',NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',8),
	(62,18,1,0,1,0,'ProjectPage','2014-11-27 21:37:10','2014-11-27 21:37:10','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',8),
	(63,18,2,1,1,1,'ProjectPage','2014-11-27 21:37:10','2014-11-27 21:38:25','odasa','ODASA',NULL,'<p><a href=\"[sitetree_link,id=1]\">Rodeo</a></p>\n<p> </p>',NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',8),
	(64,18,3,0,1,0,'ProjectPage','2014-11-27 21:37:10','2014-11-27 22:44:44','odasa','ODASA',NULL,'<p><a href=\"[sitetree_link,id=1]\">Rodeo</a></p>\n<p>Open Ideas International Design Competition  </p>',NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',8),
	(65,18,4,1,1,1,'ProjectPage','2014-11-27 21:37:10','2014-11-27 22:45:04','odasa','ODASA',NULL,'<p><a href=\"[sitetree_link,id=1]\">Rodeo</a></p>\n<p>Open Ideas <br>International Design Competition  </p>',NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',8),
	(66,19,1,0,1,0,'ProjectPage','2014-11-27 23:40:50','2014-11-27 23:40:50','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',8),
	(67,19,2,1,1,1,'ProjectPage','2014-11-27 23:40:50','2014-11-27 23:41:19','aila','AILA',NULL,NULL,NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',8),
	(68,15,6,1,1,1,'ProjectPage','2014-11-27 20:05:16','2014-11-30 19:06:07','atlas-360','Atlas 360',NULL,'<p><a href=\"[sitetree_link,id=1]\">Rodeo</a></p>\n<p>Premium wine / premium packaging.  </p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',8),
	(69,20,1,0,1,0,'ProjectPage','2014-11-30 22:18:04','2014-11-30 22:18:04','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',8),
	(70,20,2,1,1,1,'ProjectPage','2014-11-30 22:18:04','2014-11-30 22:19:33','vaccination','VACCINATION',NULL,'<p>Rodeo </p>\n<p>SA Health Vaccination Initiative </p>',NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',8),
	(71,20,3,1,1,1,'ProjectPage','2014-11-30 22:18:04','2014-11-30 22:34:29','vaccination','VACCINATION',NULL,'<p>Rodeo </p>\n<p>SA Health Vaccination Initiative </p>',NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',8),
	(72,20,4,1,1,1,'ProjectPage','2014-11-30 22:18:04','2014-11-30 23:24:50','vaccination','VACCINATION',NULL,'<p>Rodeo </p>\n<p>SA Health Vaccination Initiative </p>',NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',8),
	(73,21,1,0,1,0,'ProjectPage','2014-11-30 23:29:10','2014-11-30 23:29:10','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',8),
	(74,21,2,1,1,1,'ProjectPage','2014-11-30 23:29:10','2014-11-30 23:30:30','katrina-webb','Katrina Webb',NULL,NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',8),
	(75,21,3,1,1,1,'ProjectPage','2014-11-30 23:29:10','2014-11-30 23:34:23','katrina-webb','Katrina Webb',NULL,NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',8),
	(76,21,4,1,1,1,'ProjectPage','2014-11-30 23:29:10','2014-11-30 23:37:42','katrina-webb','Katrina Webb',NULL,'<p>Rodeo</p>\n<p>Katrina Webb</p>',NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',8),
	(77,22,1,0,1,0,'ProjectPage','2014-11-30 23:41:03','2014-11-30 23:41:03','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',8),
	(78,22,2,1,1,1,'ProjectPage','2014-11-30 23:41:03','2014-11-30 23:41:20','the-spaniard','The Spaniard',NULL,NULL,NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',8),
	(79,22,3,1,1,1,'ProjectPage','2014-11-30 23:41:03','2014-11-30 23:46:58','the-spaniard','The Spaniard',NULL,'<p>Rodeo</p>\n<p>The Spaniard</p>\n<p> </p>',NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',8),
	(80,23,1,0,1,0,'CategoriesPage','2014-12-01 04:37:06','2014-12-01 04:37:06','new-categories-page','New Categories Page',NULL,NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',0),
	(81,23,2,1,1,1,'CategoriesPage','2014-12-01 04:37:06','2014-12-01 04:37:13','categories-page','Categories Page',NULL,NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',0),
	(82,10,6,0,1,0,'CategoryHolderPage','2014-11-17 11:59:05','2014-12-01 04:37:19','medium','Medium',NULL,NULL,NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',23),
	(83,10,7,0,1,0,'CategoryHolderPage','2014-11-17 11:59:05','2014-12-01 04:37:19','medium','Medium',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',23),
	(84,11,4,0,1,0,'CategoryHolderPage','2014-11-17 11:59:05','2014-12-01 04:37:21','sector','Sector',NULL,NULL,NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',23),
	(85,11,5,0,1,0,'CategoryHolderPage','2014-11-17 11:59:05','2014-12-01 04:37:21','sector','Sector',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',23),
	(86,14,5,1,1,1,'ProjectPage','2014-11-17 12:57:42','2014-12-01 16:34:37','nab','NAB',NULL,'<p>Rodeo</p>\n<p>Building identity and interior graphic package for NAB South Australian head quarters. </p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',8),
	(87,24,1,0,1,0,'ProjectPage','2014-12-01 17:51:41','2014-12-01 17:51:41','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,13,0,0,NULL,'Inherit','Inherit',8),
	(88,24,2,1,1,1,'ProjectPage','2014-12-01 17:51:41','2014-12-01 17:56:29','wake-up-hate','Wake Up Hate',NULL,'<p>Rodeo worked with Stone/Castro to create a graphic and powerful image for Castro\'s solo violent production, while tipping the hat to Jan Fabre. Note: No animal was harmed in creating this work.</p>',NULL,NULL,1,1,13,0,0,NULL,'Inherit','Inherit',8),
	(89,25,1,0,1,0,'ProjectPage','2014-12-01 18:05:58','2014-12-01 18:05:58','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,14,0,0,NULL,'Inherit','Inherit',8),
	(90,25,2,1,1,1,'ProjectPage','2014-12-01 18:05:58','2014-12-01 18:07:25','motor-town','Motor Town',NULL,'<p>Stone/Castro — Motor Town Branding Simon Stevens most violent play.</p>',NULL,NULL,1,1,14,0,0,NULL,'Inherit','Inherit',8),
	(91,25,3,0,1,0,'ProjectPage','2014-12-01 18:05:58','2014-12-01 18:16:57','motor-town','Motor Town',NULL,'<p>Stone/Castro — Motor Town Branding Simon Stevens most violent play.</p>',NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',8),
	(92,26,1,0,1,0,'ProjectPage','2014-12-03 22:43:45','2014-12-03 22:43:45','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,15,0,0,NULL,'Inherit','Inherit',8),
	(93,26,2,1,1,1,'ProjectPage','2014-12-03 22:43:45','2014-12-03 22:45:32','goodhouse','GOODHOUSE',NULL,NULL,NULL,NULL,1,1,15,0,0,NULL,'Inherit','Inherit',8),
	(94,26,3,1,1,1,'ProjectPage','2014-12-03 22:43:45','2014-12-03 23:08:06','goodhouse','GOODHOUSE',NULL,'<p>Goodhouse</p>',NULL,NULL,1,1,15,0,0,NULL,'Inherit','Inherit',8),
	(95,1,4,1,1,1,'HomePage','2014-11-11 13:25:47','2014-12-04 04:57:45','home','Home',NULL,'<p>Hello. We\'re Rodeo, an integrated communications agency. We use creativity, design, technology and media to craft strategically inspired communications that connect with people.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(96,18,5,1,1,1,'ProjectPage','2014-11-27 21:37:10','2014-12-07 23:04:10','odasa','ODASA',NULL,'<p>Open Ideas </p>\n<p>International Design Competition  </p>',NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',8),
	(97,27,1,0,1,0,'ProjectPage','2014-12-07 23:24:53','2014-12-07 23:24:53','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,16,0,0,NULL,'Inherit','Inherit',8),
	(98,27,2,1,1,1,'ProjectPage','2014-12-07 23:24:53','2014-12-07 23:25:46','lms','LMS',NULL,NULL,NULL,NULL,1,1,16,0,0,NULL,'Inherit','Inherit',8),
	(99,15,7,1,1,1,'ProjectPage','2014-11-27 20:05:16','2014-12-07 23:42:31','atlas-360','Atlas 360',NULL,'<p><a href=\"[sitetree_link,id=1]\"><span style=\"color: #333333;\">Premium wine / premium packaging.  </span></a></p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',8),
	(100,28,1,0,1,0,'ProjectPage','2014-12-07 23:42:46','2014-12-07 23:42:46','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,17,0,0,NULL,'Inherit','Inherit',8),
	(101,28,2,1,1,1,'ProjectPage','2014-12-07 23:42:46','2014-12-07 23:43:47','ach-group','ACH Group',NULL,'<p>ACH Group</p>',NULL,NULL,1,1,17,0,0,NULL,'Inherit','Inherit',8),
	(102,4,2,0,1,0,'ErrorPage','2014-11-11 13:25:47','2014-12-08 05:55:24','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,0,0,8,0,0,NULL,'Inherit','Inherit',0),
	(103,5,2,0,1,0,'ErrorPage','2014-11-11 13:25:48','2014-12-08 05:55:28','server-error','Server error',NULL,'<p>Sorry, there was a problem with handling your request.</p>',NULL,NULL,0,0,8,0,0,NULL,'Inherit','Inherit',0),
	(104,29,1,0,1,0,'NewsPage','2014-12-08 05:55:50','2014-12-08 05:55:50','new-news-page','New News Page',NULL,NULL,NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',0),
	(105,29,2,1,1,1,'NewsPage','2014-12-08 05:55:50','2014-12-08 05:56:01','news','news','News',NULL,NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',0),
	(106,29,3,1,1,1,'NewsPage','2014-12-08 05:55:50','2014-12-08 05:56:33','news','news','News',NULL,NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',0),
	(107,1,5,1,1,1,'HomePage','2014-11-11 13:25:47','2014-12-08 05:57:00','home','Home',NULL,'<p>Hello. We\'re Rodeo, an integrated communications agency. We use creativity, design, technology and media to craft strategically inspired communications that connect with people.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(108,2,5,1,1,1,'AboutPage','2014-11-11 13:25:47','2014-12-08 05:58:04','about','About',NULL,'<p>We <a href=\"http://google.com\">design</a> things etc.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),
	(109,6,3,1,1,1,'SubscribePage','2014-11-11 14:00:07','2014-12-08 06:04:33','subscribe','Subscribe',NULL,'<p>Now you know a little about us lets start something awesome.</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',0),
	(110,7,3,1,1,1,'ContactPage','2014-11-11 14:21:30','2014-12-08 06:06:56','contact','Contact',NULL,'<p>Hello. We\'re Rodeo, an integrated communications agency. We use creativity, design, technology and media to craft strategically inspired communications that connect with people. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet dictum ante. Curabitur tellus nibh, efficitur sit amet ornare ut, auctor viverra diam. Quisque semper dui orci, in rutrum metus placerat nec. Morbi consectetur sapien sem, eu lacinia nisi vestibulum at. Ut tempor lorem rutrum diam gravida, nec euismod justo euismod. Nulla egestas sem eu diam efficitur, sit amet ullamcorper eros mollis. Nam malesuada dui in dolor scelerisque tincidunt.</p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',0),
	(111,7,4,1,1,1,'ContactPage','2014-11-11 14:21:30','2014-12-08 06:10:18','contact','Contact',NULL,'<p>Hello. We\'re Rodeo, an integrated communications agency. We use creativity, design, technology and media to craft strategically inspired communications that connect with people. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet dictum ante. Curabitur tellus nibh, efficitur sit amet ornare ut, auctor viverra diam. Quisque semper dui orci, in rutrum metus placerat nec. Morbi consectetur sapien sem, eu lacinia nisi vestibulum at. Ut tempor lorem rutrum diam gravida, nec euismod justo euismod. Nulla egestas sem eu diam efficitur, sit amet ullamcorper eros mollis. Nam malesuada dui in dolor scelerisque tincidunt.</p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',0),
	(112,7,5,1,1,1,'ContactPage','2014-11-11 14:21:30','2014-12-08 06:10:45','contact','Contact',NULL,'<p>Hello. We\'re Rodeo, an integrated communications agency. We use creativity, design, technology and media to craft strategically inspired communications that connect with people. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet dictum ante. Curabitur tellus nibh, efficitur sit amet ornare ut, auctor viverra diam. Quisque semper dui orci, in rutrum metus placerat nec. Morbi consectetur sapien sem, eu lacinia nisi vestibulum at. Ut tempor lorem rutrum diam gravida, nec euismod justo euismod. Nulla egestas sem eu diam efficitur, sit amet ullamcorper eros mollis. Nam malesuada dui in dolor scelerisque tincidunt.</p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',0),
	(113,10,8,0,1,0,'CategoryHolderPage','2014-11-17 11:59:05','2014-12-08 06:49:31','medium','Medium',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(114,10,9,0,1,0,'CategoryHolderPage','2014-11-17 11:59:05','2014-12-08 06:49:31','medium','Medium',NULL,NULL,NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',0),
	(115,11,6,0,1,0,'CategoryHolderPage','2014-11-17 11:59:05','2014-12-08 06:49:33','sector','Sector',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),
	(116,11,7,0,1,0,'CategoryHolderPage','2014-11-17 11:59:05','2014-12-08 06:49:33','sector','Sector',NULL,NULL,NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',0),
	(117,11,8,0,1,0,'CategoryHolderPage','2014-11-17 11:59:05','2014-12-08 06:49:35','sector','Sector',NULL,NULL,NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',23),
	(118,11,9,0,1,0,'CategoryHolderPage','2014-11-17 11:59:05','2014-12-08 06:49:35','sector','Sector',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',23),
	(119,23,3,1,1,1,'CategoriesPage','2014-12-01 04:37:06','2014-12-08 06:50:45','categories','categories','Categories',NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',0),
	(120,10,10,1,1,1,'CategoryHolderPage','2014-11-17 11:59:05','2014-12-08 06:50:50','medium','Medium',NULL,NULL,NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',0),
	(121,10,11,1,1,1,'CategoryHolderPage','2014-11-17 11:59:05','2014-12-08 06:51:15','medium','Medium',NULL,NULL,NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',23),
	(122,11,10,1,1,1,'CategoryHolderPage','2014-11-17 11:59:05','2014-12-08 06:51:43','sector','Sector',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',1),
	(123,11,11,1,1,1,'CategoryHolderPage','2014-11-17 11:59:05','2014-12-08 06:51:51','sector','Sector',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',23),
	(124,13,5,1,1,1,'ProjectPage','2014-11-17 12:56:39','2014-12-08 17:51:58','babo','Babo',NULL,'<p>Rodeo</p>\n<p>Bespoke Italian wine brand identity. Yes we get to drink it. </p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',8),
	(125,13,6,1,1,1,'ProjectPage','2014-11-17 12:56:39','2014-12-08 17:52:39','babo','Babo',NULL,'<p>Bespoke Italian wine brand identity. Yes we get to drink it. </p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',8),
	(126,12,7,1,1,1,'ProjectPage','2014-11-17 12:55:38','2014-12-08 17:53:11','aida','AIDA',NULL,'<p>Rodeo</p>\n<p>Making something from nothing is easier said than done. We do it all the time.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',8),
	(127,20,5,1,1,1,'ProjectPage','2014-11-30 22:18:04','2014-12-08 17:53:45','vaccination','VACCINATION',NULL,'<p>SA Health Vaccination Initiative </p>',NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',8),
	(128,15,8,1,1,1,'ProjectPage','2014-11-27 20:05:16','2014-12-08 17:55:20','atlas-360','Atlas 360º',NULL,'<p><a href=\"[sitetree_link,id=1]\"><span style=\"color: #333333;\">Premium wine / premium packaging.</span></a></p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',8),
	(129,30,1,0,1,0,'ProjectPage','2014-12-08 17:58:43','2014-12-08 17:58:43','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,18,0,0,NULL,'Inherit','Inherit',8),
	(130,30,2,1,1,1,'ProjectPage','2014-12-08 17:58:43','2014-12-08 17:59:24','getty-image-services-guide','Getty Image Services Guide',NULL,NULL,NULL,NULL,1,1,18,0,0,NULL,'Inherit','Inherit',8),
	(131,28,3,1,1,1,'ProjectPage','2014-12-07 23:42:46','2014-12-08 18:57:26','ach-group','ACH Group',NULL,'<p>Progressive Partnerships </p>',NULL,NULL,1,1,17,0,0,NULL,'Inherit','Inherit',8),
	(132,30,3,1,1,1,'ProjectPage','2014-12-08 17:58:43','2014-12-08 19:01:16','getty-image-services-guide','Getty Image Services Guide',NULL,NULL,NULL,NULL,1,1,18,0,0,NULL,'Inherit','Inherit',8),
	(133,30,4,1,1,1,'ProjectPage','2014-12-08 17:58:43','2014-12-08 19:11:29','getty-image-services-guide','Getty Image Services Guide',NULL,NULL,NULL,NULL,1,1,18,0,0,NULL,'Inherit','Inherit',8),
	(134,22,4,1,1,1,'ProjectPage','2014-11-30 23:41:03','2014-12-08 19:15:00','the-spaniard','The Spaniard',NULL,'<p>The Spaniard</p>\n<p> </p>',NULL,NULL,1,1,13,0,0,NULL,'Inherit','Inherit',8),
	(135,31,1,0,1,0,'ProjectPage','2014-12-08 20:07:34','2014-12-08 20:07:34','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,19,0,0,NULL,'Inherit','Inherit',8),
	(136,31,2,1,1,1,'ProjectPage','2014-12-08 20:07:34','2014-12-08 20:08:45','intro','INTRO',NULL,NULL,NULL,NULL,1,1,19,0,0,NULL,'Inherit','Inherit',8),
	(137,31,3,1,1,1,'ProjectPage','2014-12-08 20:07:34','2014-12-08 20:09:05','intro','INTRO',NULL,'<p>Intro </p>',NULL,NULL,1,1,19,0,0,NULL,'Inherit','Inherit',8),
	(138,16,7,1,1,1,'ProjectPage','2014-11-27 20:30:55','2014-12-08 20:26:12','paula-scher','Paula Scher',NULL,'<p>Rodeo</p>\n<p>A letter from Paula Scher</p>\n<p> </p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',8),
	(139,16,8,1,1,1,'ProjectPage','2014-11-27 20:30:55','2014-12-08 22:28:24','paula-scher','Paula Scher',NULL,'<p>A letter from Paula Scher</p>\n<p> </p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',8),
	(140,25,4,1,1,1,'ProjectPage','2014-12-01 18:05:58','2014-12-08 22:34:39','motor-town','Motor Town',NULL,'<p>Stone/Castro — Motor Town Branding Simon Stevens most violent play.</p>',NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',8),
	(141,13,7,1,1,1,'ProjectPage','2014-11-17 12:56:39','2014-12-08 23:31:51','babo','Babo',NULL,'<p>Bespoke Italian wine brand identity. Yes we get to drink it. </p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',8),
	(142,13,8,1,1,1,'ProjectPage','2014-11-17 12:56:39','2014-12-08 23:56:43','babo','Babo',NULL,'<p>Bespoke Italian wine brand identity. Yes we get to drink it. </p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',8),
	(143,13,9,1,1,1,'ProjectPage','2014-11-17 12:56:39','2014-12-08 23:57:10','babo','Babo',NULL,'<p>Bespoke Italian wine brand identity. Yes we get to drink it. </p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',8),
	(144,9,8,1,1,1,'ProjectPage','2014-11-12 14:03:00','2014-12-09 10:30:46','g82','g82','G82','<p>Rodeo</p>\n<p>Gallery82 identity development. We\'ll write some clever information in here when we have some time.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',8),
	(145,9,9,1,1,1,'ProjectPage','2014-11-12 14:03:00','2014-12-09 10:32:29','g82','g82','G82','<p>Rodeo</p>\n<p>Gallery82 identity development. We\'ll write some clever information in here when we have some time.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',8),
	(146,25,5,1,1,1,'ProjectPage','2014-12-01 18:05:58','2014-12-10 16:48:34','motor-town','Motor Town',NULL,'<p>Stone/Castro — Motor Town Branding Simon Stevens most violent play.</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',8),
	(147,16,9,1,1,1,'ProjectPage','2014-11-27 20:30:55','2014-12-10 17:02:09','paula-scher','Paula Scher',NULL,'<p>A Letter From Paula Scher</p>\n<p> </p>',NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',8),
	(148,16,10,1,1,1,'ProjectPage','2014-11-27 20:30:55','2014-12-10 17:03:37','paula-scher','Paula Scher',NULL,'<p>A Letter From Paula Scher</p>\n<p> </p>',NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',8),
	(149,16,11,1,1,1,'ProjectPage','2014-11-27 20:30:55','2014-12-10 17:04:11','paula-scher','Paula Scher',NULL,'<p>A Letter From Paula Scher</p>\n<p> </p>',NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',8),
	(150,17,5,1,1,1,'ProjectPage','2014-11-27 21:11:49','2014-12-10 17:33:02','opal','Opal',NULL,NULL,NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',8),
	(151,22,5,1,1,1,'ProjectPage','2014-11-30 23:41:03','2014-12-10 17:42:23','the-spaniard','The Spaniard',NULL,'<p>The Spaniard</p>\n<p> </p>',NULL,NULL,1,1,13,0,0,NULL,'Inherit','Inherit',8),
	(152,22,6,1,1,1,'ProjectPage','2014-11-30 23:41:03','2014-12-10 17:47:17','the-spaniard','The Spaniard',NULL,'<p>The Spaniard<br>Created for Atlas Wines. </p>',NULL,NULL,1,1,13,0,0,NULL,'Inherit','Inherit',8),
	(153,22,7,1,1,1,'ProjectPage','2014-11-30 23:41:03','2014-12-10 17:47:30','the-spaniard','The Spaniard',NULL,'<p>The Spaniard<br>Created for Atlas Wines</p>',NULL,NULL,1,1,13,0,0,NULL,'Inherit','Inherit',8),
	(154,21,5,1,1,1,'ProjectPage','2014-11-30 23:29:10','2014-12-10 17:54:49','katrina-webb','Katrina Webb',NULL,'<p>Katrina Webb</p>',NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',8),
	(155,15,9,1,1,1,'ProjectPage','2014-11-27 20:05:16','2014-12-10 18:29:35','atlas-360','Atlas 360º',NULL,'<p><a href=\"[sitetree_link,id=1]\"><span style=\"color: #333333;\">Premium wine / premium packaging.</span></a></p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',8),
	(156,12,8,1,1,1,'ProjectPage','2014-11-17 12:55:38','2014-12-10 18:46:38','aida','AIDA',NULL,'<p>Making something from nothing is easier said than done. We do it all the time.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',8),
	(157,32,1,0,1,0,'ProjectPage','2014-12-10 18:49:19','2014-12-10 18:49:19','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,20,0,0,NULL,'Inherit','Inherit',8),
	(158,32,2,1,1,1,'ProjectPage','2014-12-10 18:49:19','2014-12-10 18:49:47','dec-workforce','DEC WORKFORCE',NULL,NULL,NULL,NULL,1,1,20,0,0,NULL,'Inherit','Inherit',8),
	(159,32,3,1,1,1,'ProjectPage','2014-12-10 18:49:19','2014-12-10 18:57:39','dec-workforce','DEC WORKFORCE',NULL,'<p>DEC WORKFORCE</p>\n<p> </p>',NULL,NULL,1,1,20,0,0,NULL,'Inherit','Inherit',8),
	(160,32,4,1,1,1,'ProjectPage','2014-12-10 18:49:19','2014-12-10 19:00:07','dec-workforce','DEC WORKFORCE',NULL,'<p>DEC WORKFORCE</p>\n<p> </p>',NULL,NULL,1,1,20,0,0,NULL,'Inherit','Inherit',8),
	(161,19,3,1,1,1,'ProjectPage','2014-11-27 23:40:50','2014-12-10 21:04:48','aila','AILA',NULL,'<p>AILA</p>\n<p>Forecast — <br>Festival of Landscape Architecture</p>',NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',8),
	(162,27,3,1,1,1,'ProjectPage','2014-12-07 23:24:53','2014-12-10 21:56:45','lms','LMS',NULL,'<p>LME Energy</p>',NULL,NULL,1,1,16,0,0,NULL,'Inherit','Inherit',8),
	(163,19,4,1,1,1,'ProjectPage','2014-11-27 23:40:50','2014-12-10 23:08:41','aila','AILA',NULL,'<p>AILA</p>\n<p>Forecast — <br>Festival of Landscape Architecture</p>',NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',8),
	(164,33,1,0,1,0,'FeedPage','2014-12-11 05:08:29','2014-12-11 05:08:29','new-feed-page','New Feed Page',NULL,NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',0),
	(165,33,2,1,1,1,'FeedPage','2014-12-11 05:08:29','2014-12-11 05:08:46','feed','feed',NULL,NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',0),
	(166,33,3,1,1,1,'FeedPage','2014-12-11 05:08:29','2014-12-11 05:09:04','feed','feed','Feed',NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',0),
	(167,33,4,1,1,1,'FeedPage','2014-12-11 05:08:29','2014-12-11 05:09:25','feed','feed','Feed',NULL,NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(168,34,1,0,1,0,'ProjectPage','2014-12-11 15:28:41','2014-12-11 15:28:41','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,21,0,0,NULL,'Inherit','Inherit',8),
	(169,34,2,1,1,1,'ProjectPage','2014-12-11 15:28:41','2014-12-11 15:29:10','blackout','Blackout',NULL,'<p>Blackout</p>',NULL,NULL,1,1,21,0,0,NULL,'Inherit','Inherit',8),
	(170,34,3,1,1,1,'ProjectPage','2014-12-11 15:28:41','2014-12-11 15:36:31','blackout','Blackout',NULL,'<p>Blackout</p>',NULL,NULL,1,1,21,0,0,NULL,'Inherit','Inherit',8),
	(171,35,1,0,1,0,'ProjectPage','2014-12-14 16:38:41','2014-12-14 16:38:41','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,22,0,0,NULL,'Inherit','Inherit',8),
	(172,35,2,1,1,1,'ProjectPage','2014-12-14 16:38:41','2014-12-14 16:38:57','ach-group-2','ACH Group',NULL,NULL,NULL,NULL,1,1,22,0,0,NULL,'Inherit','Inherit',8),
	(173,35,3,1,1,1,'ProjectPage','2014-12-14 16:38:41','2014-12-14 16:40:41','ach-group-2','ACH Group',NULL,NULL,NULL,NULL,1,1,22,0,0,NULL,'Inherit','Inherit',8),
	(174,35,4,1,1,1,'ProjectPage','2014-12-14 16:38:41','2014-12-14 16:42:14','ach-group-2','ACH Group',NULL,'<p>Future Films </p>',NULL,NULL,1,1,22,0,0,NULL,'Inherit','Inherit',8),
	(175,36,1,0,1,0,'ProjectPage','2014-12-14 17:58:08','2014-12-14 17:58:08','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,23,0,0,NULL,'Inherit','Inherit',8),
	(176,36,2,1,1,1,'ProjectPage','2014-12-14 17:58:08','2014-12-14 18:00:47','integrated-design-commission','Integrated Design Commission',NULL,'<p>Branding the first state level inter-disciplinary design, cross government advisory team.  </p>',NULL,NULL,1,1,23,0,0,NULL,'Inherit','Inherit',8),
	(177,36,3,1,1,1,'ProjectPage','2014-12-14 17:58:08','2014-12-14 18:06:01','integrated-design-commission','Integrated Design Commission',NULL,'<p>Branding the first state level inter-disciplinary design, cross government advisory team.  </p>',NULL,NULL,1,1,23,0,0,NULL,'Inherit','Inherit',8),
	(178,17,6,1,1,1,'ProjectPage','2014-11-27 21:11:49','2014-12-14 18:59:41','opal','Opal',NULL,NULL,NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',8),
	(179,17,7,1,1,1,'ProjectPage','2014-11-27 21:11:49','2014-12-14 19:03:35','opal','Opal',NULL,NULL,NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',8),
	(180,17,8,1,1,1,'ProjectPage','2014-11-27 21:11:49','2014-12-14 19:04:36','opal','Opal',NULL,'<p>Social marketing branding and communications campaign</p>',NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',8),
	(181,18,6,1,1,1,'ProjectPage','2014-11-27 21:37:10','2014-12-14 19:29:34','open-ideas','Open Ideas',NULL,'<p>The largest Architectural competition ever held in SA</p>',NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',8),
	(182,18,7,1,1,1,'ProjectPage','2014-11-27 21:37:10','2014-12-14 19:30:15','open-ideas','Open Ideas',NULL,'<p>Partnering with ODASA to brand the largest Architectural competition ever held in SA</p>',NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',8),
	(183,37,1,0,1,0,'ProjectPage','2014-12-14 19:44:34','2014-12-14 19:44:34','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,24,0,0,NULL,'Inherit','Inherit',8),
	(184,37,2,1,1,1,'ProjectPage','2014-12-14 19:44:34','2014-12-14 19:44:55','spikes','Spikes',NULL,NULL,NULL,NULL,1,1,24,0,0,NULL,'Inherit','Inherit',8),
	(185,37,3,1,1,1,'ProjectPage','2014-12-14 19:44:34','2014-12-14 19:46:34','spikes','Spikes',NULL,NULL,NULL,NULL,1,1,24,0,0,NULL,'Inherit','Inherit',8),
	(186,37,4,1,1,1,'ProjectPage','2014-12-14 19:44:34','2014-12-14 19:50:23','spikes','Spikes',NULL,'<p>Getty Images + Spikes Asia<br>We developed 40 minute dual screen projection and collateral for Spikes Advertising Festival Asia. </p>',NULL,NULL,1,1,24,0,0,NULL,'Inherit','Inherit',8),
	(187,37,5,1,1,1,'ProjectPage','2014-12-14 19:44:34','2014-12-14 19:52:41','spikes','Spikes',NULL,'<p>Getty Images + Spikes Asia<br>We developed 40 minute dual screen projection and collateral for Spikes Advertising Festival Asia.</p>',NULL,NULL,1,1,24,0,0,NULL,'Inherit','Inherit',8),
	(188,9,10,1,1,1,'ProjectPage','2014-11-12 14:03:00','2014-12-14 19:57:09','g82','g82','G82','<p>Rodeo</p>\n<p>Gallery82 identity development. We\'ll write some clever information in here when we have some time.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',8),
	(189,9,11,1,1,1,'ProjectPage','2014-11-12 14:03:00','2014-12-14 19:57:34','g82','g82','G82','<p>Gallery82 identity development. We\'ll write some clever information in here when we have some time.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',8),
	(190,25,6,1,1,1,'ProjectPage','2014-12-01 18:05:58','2014-12-14 20:02:15','motor-town','Motor Town',NULL,'<p>Stone/Castro — Motor Town Branding Simon Stevens most violent play.</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',8),
	(191,12,9,1,1,1,'ProjectPage','2014-11-17 12:55:38','2014-12-14 20:04:53','aida','AIDA',NULL,'<p>Making something from nothing is easier said than done. We do it all the time.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',8),
	(192,12,10,1,1,1,'ProjectPage','2014-11-17 12:55:38','2014-12-14 20:05:37','aida','AIDA',NULL,'<p>The Australian Interior Design Awards pitch</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',8),
	(193,16,12,1,1,1,'ProjectPage','2014-11-27 20:30:55','2014-12-14 20:08:24','paula-scher','Paula Scher',NULL,'<p>A Letter From Paula Scher</p>\n<p> </p>',NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',8),
	(194,15,10,1,1,1,'ProjectPage','2014-11-27 20:05:16','2014-12-14 20:12:38','atlas-360','Atlas 360º',NULL,'<p>Premium wine / premium packaging.</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',8),
	(195,38,1,0,1,0,'ProjectPage','2014-12-14 20:22:37','2014-12-14 20:22:37','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,25,0,0,NULL,'Inherit','Inherit',8),
	(196,38,2,1,1,1,'ProjectPage','2014-12-14 20:22:37','2014-12-14 20:23:00','pfitzner-furniture','Pfitzner Furniture',NULL,NULL,NULL,NULL,1,1,25,0,0,NULL,'Inherit','Inherit',8),
	(197,38,3,1,1,1,'ProjectPage','2014-12-14 20:22:37','2014-12-14 20:36:13','pfitzner-furniture','Pfitzner Furniture',NULL,NULL,NULL,NULL,1,1,25,0,0,NULL,'Inherit','Inherit',8),
	(198,39,1,0,1,0,'ProjectPage','2014-12-14 22:56:27','2014-12-14 22:56:27','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,26,0,0,NULL,'Inherit','Inherit',8),
	(199,39,2,1,1,1,'ProjectPage','2014-12-14 22:56:27','2014-12-14 22:58:17','ecoscore','ECOSCORE',NULL,NULL,NULL,NULL,1,1,26,0,0,NULL,'Inherit','Inherit',8),
	(200,39,3,1,1,1,'ProjectPage','2014-12-14 22:56:27','2014-12-14 22:58:37','ecoscore','ECOSCORE',NULL,NULL,NULL,NULL,1,1,26,0,0,NULL,'Inherit','Inherit',8),
	(201,39,4,1,1,1,'ProjectPage','2014-12-14 22:56:27','2014-12-14 23:06:44','ecoscore','ECOSCORE',NULL,'<p>Branding and communications strategy. </p>',NULL,NULL,1,1,26,0,0,NULL,'Inherit','Inherit',8),
	(202,40,1,0,1,0,'ProjectPage','2014-12-14 23:25:24','2014-12-14 23:25:24','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,27,0,0,NULL,'Inherit','Inherit',8),
	(203,40,2,1,1,1,'ProjectPage','2014-12-14 23:25:24','2014-12-14 23:25:41','dia-awards','DIA AWARDS',NULL,NULL,NULL,NULL,1,1,27,0,0,NULL,'Inherit','Inherit',8),
	(204,40,3,1,1,1,'ProjectPage','2014-12-14 23:25:24','2014-12-14 23:26:21','dia-awards','DIA AWARDS',NULL,NULL,NULL,NULL,1,1,27,0,0,NULL,'Inherit','Inherit',8),
	(205,37,6,1,1,1,'ProjectPage','2014-12-14 19:44:34','2014-12-14 23:33:42','spikes','Spikes',NULL,'<p>Getty Images + Spikes Asia</p>\n<p>We developed 40 minute dual screen projection and collateral for Spikes Advertising Festival Asia.</p>',NULL,NULL,1,1,24,0,0,NULL,'Inherit','Inherit',8),
	(206,37,7,1,1,1,'ProjectPage','2014-12-14 19:44:34','2014-12-14 23:34:04','getty-images-spikes-asia','Getty Images + Spikes Asia',NULL,'<p>We developed 40 minute dual screen projection and collateral for Spikes Advertising Festival Asia.</p>',NULL,NULL,1,1,24,0,0,NULL,'Inherit','Inherit',8),
	(207,21,6,1,1,1,'ProjectPage','2014-11-30 23:29:10','2014-12-14 23:35:31','katrina-webb','Katrina Webb',NULL,NULL,NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',8),
	(208,41,1,0,1,0,'ProjectPage','2014-12-14 23:42:56','2014-12-14 23:42:56','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,28,0,0,NULL,'Inherit','Inherit',8),
	(209,41,2,0,1,0,'ProjectPage','2014-12-14 23:42:56','2014-12-14 23:44:37','kis','Kids Move',NULL,NULL,NULL,NULL,1,1,28,0,0,NULL,'Inherit','Inherit',8),
	(210,41,3,1,1,1,'ProjectPage','2014-12-14 23:42:56','2014-12-14 23:51:19','kis','Kids Move',NULL,NULL,NULL,NULL,1,1,28,0,0,NULL,'Inherit','Inherit',8),
	(211,27,4,1,1,1,'ProjectPage','2014-12-07 23:24:53','2014-12-14 23:55:42','lms-energy','LMS Energy',NULL,NULL,NULL,NULL,1,1,16,0,0,NULL,'Inherit','Inherit',8),
	(212,42,1,0,1,0,'ProjectPage','2014-12-15 16:54:35','2014-12-15 16:54:35','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,29,0,0,NULL,'Inherit','Inherit',8),
	(213,42,2,1,1,1,'ProjectPage','2014-12-15 16:54:35','2014-12-15 16:55:24','altas-terros','Altas Terros',NULL,NULL,NULL,NULL,1,1,29,0,0,NULL,'Inherit','Inherit',8),
	(214,42,3,1,1,1,'ProjectPage','2014-12-15 16:54:35','2014-12-15 17:06:56','altas-terros','Altas Terros',NULL,NULL,NULL,NULL,1,1,29,0,0,NULL,'Inherit','Inherit',8),
	(215,43,1,0,1,0,'AboutPage','2014-12-16 04:54:23','2014-12-16 04:54:23','new-about-page','New About Page',NULL,NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',0),
	(216,43,2,1,1,1,'AboutPage','2014-12-16 04:54:23','2014-12-16 04:54:38','shop','shop','Shop','<p>Shop Coming Soon.</p>',NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',0),
	(217,43,3,0,1,0,'AboutPage','2014-12-16 04:54:23','2014-12-16 04:54:44','shop','shop','Shop','<p>Shop Coming Soon.</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',0),
	(218,43,4,1,1,1,'AboutPage','2014-12-16 04:54:23','2014-12-16 04:59:01','shop','shop','Shop','<p>Shop Coming Soon.</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',0),
	(219,44,1,0,1,0,'ProjectPage','2014-12-16 18:18:10','2014-12-16 18:18:10','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,30,0,0,NULL,'Inherit','Inherit',8),
	(220,44,2,1,1,1,'ProjectPage','2014-12-16 18:18:10','2014-12-16 18:18:41','ergo','Ergo',NULL,NULL,NULL,NULL,1,1,30,0,0,NULL,'Inherit','Inherit',8),
	(221,14,6,1,1,1,'ProjectPage','2014-11-17 12:57:42','2014-12-16 22:06:11','nab','NAB',NULL,'<p>Rodeo</p>\n<p>Building identity and interior graphic package for NAB South Australian head quarters. </p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',8),
	(222,16,13,1,1,1,'ProjectPage','2014-11-27 20:30:55','2014-12-16 22:11:39','paula-scher','Paula Scher',NULL,'<p>A Letter From Paula Scher</p>\n<p> </p>',NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',8),
	(223,16,14,1,1,1,'ProjectPage','2014-11-27 20:30:55','2014-12-16 22:13:08','paula-scher','Paula Scher',NULL,'<p>A Letter From Paula Scher</p>\n<p> </p>',NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',8),
	(224,45,1,0,1,0,'ProjectPage','2014-12-17 22:28:13','2014-12-17 22:28:13','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,31,0,0,NULL,'Inherit','Inherit',8),
	(225,45,2,1,1,1,'ProjectPage','2014-12-17 22:28:13','2014-12-17 22:28:47','odasa','ODASA',NULL,'<p>Office for Design + Architecture SA</p>',NULL,NULL,1,1,31,0,0,NULL,'Inherit','Inherit',8),
	(226,45,3,1,1,1,'ProjectPage','2014-12-17 22:28:13','2014-12-17 23:33:18','odasa','ODASA',NULL,'<p>Office for Design + Architecture SA</p>',NULL,NULL,1,1,31,0,0,NULL,'Inherit','Inherit',8),
	(227,38,4,1,1,1,'ProjectPage','2014-12-14 20:22:37','2014-12-18 00:21:53','pfitzner-furniture','Pfitzner Furniture',NULL,NULL,NULL,NULL,1,1,25,0,0,NULL,'Inherit','Inherit',8),
	(228,43,5,1,1,1,'ShopPage','2014-12-16 04:54:23','2014-12-18 03:48:21','shop','shop','Shop','<p>Shop Coming Soon.</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',0),
	(229,43,6,1,1,1,'ShopPage','2014-12-16 04:54:23','2014-12-18 03:48:35','shop','shop','Shop','<p>Shop Coming Soon.</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',0),
	(230,2,6,1,1,1,'AboutPage','2014-11-11 13:25:47','2014-12-18 21:29:57','about','About',NULL,'<p>We work with well-known and not-so-well-known Australian and multinational brands who are operating in highly competitive markets, facing challenging profit margins, launching new products from scratch, dealing with customers who demand more, seeking better communication channels, confronting rapidly changing web and multimedia options, trying to crack foreign markets, wanting creative ideas plus ROI, and craving transparent working relationships with people who are equally passionate about their brands.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),
	(231,2,7,1,1,1,'AboutPage','2014-11-11 13:25:47','2014-12-18 21:31:11','about','About',NULL,'<p>We work with well-known and not-so-well-known Australian and multinational brands who are operating in highly competitive markets, facing challenging profit margins, launching new products, dealing with customers who want more, seeking better communication channels, trying to crack foreign markets, wanting creative ideas plus ROI, and craving transparent working relationships with people who are equally passionate about their brands.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),
	(232,21,7,1,1,1,'ProjectPage','2014-11-30 23:29:10','2014-12-18 23:08:49','katrina-webb','Katrina Webb',NULL,'<p>Greatness on the track at multiple paralympic games and greatness in connecting with people is a good way to describe Katrina Webb.</p>',NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',8),
	(233,26,4,1,1,1,'ProjectPage','2014-12-03 22:43:45','2014-12-18 23:15:43','goodhouse','GOODHOUSE',NULL,'<p>Design is an elastic term and it succeeds most when upstream innovation and thinking creates downstream outcomes that are meaningful to people. This is Goodhouse.</p>',NULL,NULL,1,1,15,0,0,NULL,'Inherit','Inherit',8),
	(234,26,5,1,1,1,'ProjectPage','2014-12-03 22:43:45','2014-12-18 23:16:02','goodhouse','Goodhouse',NULL,'<p>Design is an elastic term and it succeeds most when upstream innovation and thinking creates downstream outcomes that are meaningful to people. This is Goodhouse.</p>',NULL,NULL,1,1,15,0,0,NULL,'Inherit','Inherit',8),
	(235,31,4,1,1,1,'ProjectPage','2014-12-08 20:07:34','2014-12-18 23:27:17','intro','Intro',NULL,'<p>When planning and architecture start projects together the work is smart. Intro is exactly that, and they\'re busy Activating Human Space.</p>',NULL,NULL,1,1,19,0,0,NULL,'Inherit','Inherit',8),
	(236,15,11,1,1,1,'ProjectPage','2014-11-27 20:05:16','2014-12-18 23:32:05','atlas-360','Atlas 360º',NULL,'<p>Limited premium packaging for an limited premium wine. </p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',8),
	(237,22,8,1,1,1,'ProjectPage','2014-11-30 23:41:03','2014-12-18 23:39:47','the-spaniard','The Spaniard',NULL,'<p>The past that\'s in the earth makes a certain grape. Three varieties of grape of Spanish origin grown in the Clare Valley make this wine what it is.</p>',NULL,NULL,1,1,13,0,0,NULL,'Inherit','Inherit',8),
	(238,6,4,1,1,1,'SubscribePage','2014-11-11 14:00:07','2014-12-19 19:19:54','subscribe','Subscribe',NULL,'<p>Now you know a little more about us, let\'s start something awesome! Or at least stay in touch. <br>We send out irregular but insightful news. </p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',0),
	(239,6,5,1,1,1,'SubscribePage','2014-11-11 14:00:07','2014-12-19 19:21:39','subscribe','Subscribe',NULL,'<p>Now you know a little more about us, let\'s start something awesome! Or at least stay in touch. We send out irregular but insightful news. </p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',0),
	(240,46,1,0,1,0,'ProjectPage','2014-12-21 18:10:58','2014-12-21 18:10:58','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,32,0,0,NULL,'Inherit','Inherit',8),
	(241,47,1,0,1,0,'ProjectPage','2014-12-21 18:11:08','2014-12-21 18:11:08','new-project-page-2','New Project Page',NULL,NULL,NULL,NULL,1,1,33,0,0,NULL,'Inherit','Inherit',8),
	(242,48,1,0,1,0,'ProjectPage','2014-12-21 18:11:48','2014-12-21 18:11:48','new-project-page-3','New Project Page',NULL,NULL,NULL,NULL,1,1,34,0,0,NULL,'Inherit','Inherit',8),
	(243,48,2,1,1,1,'ProjectPage','2014-12-21 18:11:48','2014-12-21 18:15:25','getty-images-bangkok-art-directors-awards','Getty Images Bangkok Art Directors Awards',NULL,NULL,NULL,NULL,1,1,34,0,0,NULL,'Inherit','Inherit',8),
	(244,48,3,1,1,1,'ProjectPage','2014-12-21 18:11:48','2014-12-21 18:16:54','getty-images-bangkok-art-directors-awards','Getty Images Bangkok Art Directors Awards',NULL,NULL,NULL,NULL,1,1,34,0,0,NULL,'Inherit','Inherit',8),
	(245,42,4,1,1,1,'ProjectPage','2014-12-15 16:54:35','2014-12-21 18:53:13','altas-terros','Altas Terros',NULL,NULL,NULL,NULL,1,1,29,0,0,NULL,'Inherit','Inherit',8),
	(246,32,5,1,1,1,'ProjectPage','2014-12-10 18:49:19','2014-12-21 19:00:01','dec-workforce','Dec Workforce',NULL,'<p>DEC Aviation Workforce is about the power of providing the best qualified people for the job.</p>\n<p> </p>',NULL,NULL,1,1,20,0,0,NULL,'Inherit','Inherit',8),
	(247,45,4,1,1,1,'ProjectPage','2014-12-17 22:28:13','2014-12-21 19:00:21','odasa','ODASA',NULL,'<p>Office for Design + Architecture SA</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',8),
	(248,16,15,0,1,0,'ProjectPage','2014-11-27 20:30:55','2014-12-21 19:02:55','paula-scher','Paula Scher',NULL,'<p>A Letter From Paula Scher</p>\n<p> </p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',8),
	(249,20,6,1,1,1,'ProjectPage','2014-11-30 22:18:04','2014-12-21 19:05:31','vaccination','SA Health Vaccination Initiative ',NULL,'<p>Integrated muti-channel social marketing initiative designed to increase awareness, education and drive immunisation take up for pre-entry 4 year olds.</p>',NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',8),
	(250,20,7,1,1,1,'ProjectPage','2014-11-30 22:18:04','2014-12-21 20:12:53','vaccination','SA Health Vaccination Initiative ',NULL,'<p>Integrated muti-channel social marketing initiative designed to increase awareness, education and drive immunisation take up for pre-entry 4 year olds. Targeting both parents and children across all socio-economic demographics and cultural groups.</p>',NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',8),
	(251,20,8,1,1,1,'ProjectPage','2014-11-30 22:18:04','2014-12-21 20:25:45','vaccination','SA Health Vaccination Initiative ',NULL,'<p>Integrated muti-channel social marketing initiative designed to increase awareness, education and drive immunisation take up for pre-entry 4 year olds.</p>',NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',8),
	(252,16,16,1,1,1,'ProjectPage','2014-11-27 20:30:55','2014-12-21 20:27:28','paula-scher','Paula Scher',NULL,'<p>Shot on location at Pentagram in New York, part of series of films for Getty Images Global. </p>\n<p> </p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',8),
	(253,34,4,1,1,1,'ProjectPage','2014-12-11 15:28:41','2014-12-21 21:10:53','blackout','Blackout',NULL,NULL,NULL,NULL,1,1,22,0,0,NULL,'Inherit','Inherit',8),
	(254,19,5,1,1,1,'ProjectPage','2014-11-27 23:40:50','2014-12-21 21:11:11','aila','AILA',NULL,'<p>Forecast — <br>Festival of Landscape Architecture</p>',NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',8),
	(255,14,7,1,1,1,'ProjectPage','2014-11-17 12:57:42','2014-12-21 21:14:37','nab','nab',NULL,'<p>Building identity and interior graphic package for NAB South Australian headquarters.</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',8),
	(256,39,5,1,1,1,'ProjectPage','2014-12-14 22:56:27','2014-12-21 22:24:39','ecoscore','Ecoscore',NULL,'<p>Strategy and branding for Scope 3 carbon tool.</p>',NULL,NULL,1,1,27,0,0,NULL,'Inherit','Inherit',8),
	(257,41,4,1,1,1,'ProjectPage','2014-12-14 23:42:56','2014-12-21 22:32:55','kis','Kids Move',NULL,'<p>Kids Move brand identity</p>',NULL,NULL,1,1,29,0,0,NULL,'Inherit','Inherit',8),
	(258,40,4,1,1,1,'ProjectPage','2014-12-14 23:25:24','2014-12-21 22:34:44','dia-awards','DIA Awards',NULL,'<p>Rodeo partners with the DIA to brand the SA Awards season.</p>',NULL,NULL,1,1,28,0,0,NULL,'Inherit','Inherit',8),
	(259,34,5,1,1,1,'ProjectPage','2014-12-11 15:28:41','2014-12-22 15:34:10','blackout','Blackout',NULL,'<p>Integrated communications for Stone/Castro\'s world premiere of Blackout for Adelaide Festival of Arts.</p>',NULL,NULL,1,1,22,0,0,NULL,'Inherit','Inherit',8),
	(260,42,5,1,1,1,'ProjectPage','2014-12-15 16:54:35','2014-12-22 15:48:30','altas-terros','Altas Terros',NULL,'<p>Subverting visual language on a new Atlas wine range.</p>',NULL,NULL,1,1,30,0,0,NULL,'Inherit','Inherit',8),
	(261,18,8,1,1,1,'ProjectPage','2014-11-27 21:37:10','2014-12-22 15:54:16','open-ideas','Open Ideas',NULL,'<p>Open Ideas International architecture competition.</p>',NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',8),
	(262,30,5,1,1,1,'ProjectPage','2014-12-08 17:58:43','2014-12-22 17:01:26','getty-image-services-guide','Getty Image Services Guide',NULL,'<p>Getty Images Global Services Guide</p>',NULL,NULL,1,1,19,0,0,NULL,'Inherit','Inherit',8),
	(263,30,6,1,1,1,'ProjectPage','2014-12-08 17:58:43','2014-12-22 17:11:44','getty-image-services-guide','Getty Image Services Guide',NULL,'<p>Getty Images Global Services Guide.</p>',NULL,NULL,1,1,19,0,0,NULL,'Inherit','Inherit',8),
	(264,9,12,1,1,1,'ProjectPage','2014-11-12 14:03:00','2014-12-22 18:14:10','g82','g82','G82','<p>Brand identity and communications for independent art gallery.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',8),
	(265,12,11,1,1,1,'ProjectPage','2014-11-17 12:55:38','2014-12-22 18:35:07','aida','AIDA',NULL,'<p>The Australian Interior Design Awards concept.</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',8),
	(266,7,6,1,1,1,'ContactPage','2014-11-11 14:21:30','2014-12-22 18:46:12','contact','Contact',NULL,'<p>We\'re thinkers and makers.<br>Rodeo was founded in 2005 as a design and communications company. Nine years later, the landscape has changed—our industry has evolved, our clients’ challenges have become more complex, communication has changed—and we have changed. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.<br>Rodeo develops highly effective strategies based on communication and applied design process at every stage of project development. We turn insights and strategies into experiences that people engage with, connect with and interact with. These experiences, created in partnership with our clients and collaborators, positively contribute to and shape the visual language of our social landscapes. <br>We work in close partnership with all our clients, friends and collaborators. We believe that apply a true design process provides meaningful outcomes.</p>\n<p> </p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(267,7,7,1,1,1,'ContactPage','2014-11-11 14:21:30','2014-12-22 18:47:27','contact','Contact',NULL,'<p>We\'re thinkers and makers.<br>Rodeo was founded in 2005 as a design and communications company. Nine years later, the landscape has changed—our industry has evolved, our clients’ challenges have become more complex, communication has changed—and we have changed. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>\n<p>Rodeo develops highly effective strategies based on communication and applied design process at every stage of project development. We turn insights and strategies into experiences that people engage with, connect with and interact with. These experiences, created in partnership with our clients and collaborators, positively contribute to and shape the visual language of our social landscapes. <br><br></p>\n<p> </p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(268,7,8,1,1,1,'ContactPage','2014-11-11 14:21:30','2014-12-22 18:47:45','contact','Contact',NULL,'<p>We\'re thinkers and makers.<br>Rodeo was founded in 2005 as a design and communications company. Nine years later, the landscape has changed—our industry has evolved, our clients’ challenges have become more complex, communication has changed—and we have changed. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>\n<p>Rodeo develops highly effective strategies based on communication and applied design process at every stage of project development. We turn insights and strategies into experiences that people engage with, connect with and interact with. These experiences, created in partnership with our clients and collaborators, positively contribute to and shape the visual language of our social landscapes.</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(269,7,9,1,1,1,'ContactPage','2014-11-11 14:21:30','2014-12-22 18:49:15','contact','Contact',NULL,'<p>We\'re thinkers and makers.<br>Rodeo was founded in 2005 as a design and communications company. Nine years later, the landscape has changed—our industry has evolved, our clients’ challenges have become more complex, communication has changed—and we have changed. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>\n<p>Rodeo develops highly effective strategies based on communication and applied design process at every stage of project development. We turn insights and strategies into experiences that people engage with, connect with and interact with. These experiences, created in partnership with our clients and collaborators, positively contribute to and shape the visual language of our social landscapes.</p>\n<p>Now you know a little about us, let\'s start something amazing!</p>\n<p> </p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(270,7,10,1,1,1,'ContactPage','2014-11-11 14:21:30','2014-12-22 18:49:28','contact','Contact',NULL,'<p>We\'re thinkers and makers.<br>Rodeo was founded in 2005 as a design and communications company. Nine years later, the landscape has changed—our industry has evolved, our clients’ challenges have become more complex, communication has changed—and we have changed. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>\n<p>Rodeo develops highly effective strategies based on communication and applied design process at every stage of project development. We turn insights and strategies into experiences that people engage with, connect with and interact with. These experiences, created in partnership with our clients and collaborators, positively contribute to and shape the visual language of our social landscapes.</p>\n<p>Now you know a little about us, let\'s start something amazing!</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(271,7,11,1,1,1,'ContactPage','2014-11-11 14:21:30','2014-12-22 18:52:32','contact','Contact',NULL,'<p>We\'re thinkers and makers.</p>\n<p>Rodeo was founded in 2005 as a design and communications company. Nine years later, the landscape has changed—our industry has evolved, our clients’ challenges have become more complex, communication has changed—and we have changed. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>\n<p>Rodeo develops highly effective strategies based on communication and applied design process at every stage of project development. We turn insights and strategies into experiences that people engage with, connect with and interact with. These experiences, created in partnership with our clients and collaborators, positively contribute to and shape the visual language of our social landscapes.</p>\n<p>Now you know a little about us, let\'s start something amazing!</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(272,7,12,1,1,1,'ContactPage','2014-11-11 14:21:30','2014-12-22 18:54:06','contact','Contact',NULL,'<p>We\'re thinkers and makers.</p>\n<p>Rodeo was founded in 2005 as a design and communications company. Nine years later, the landscape has changed—our industry has evolved, our clients’ challenges have become more complex, communication has changed—and we have changed. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>\n<p>Rodeo develops highly effective strategies based on communication and applied design process at every stage of project development. We turn insights and strategies into experiences that people engage with, connect with and interact with. These experiences, created in partnership with our clients and collaborators, positively contribute to and shape the visual language of our social landscapes.</p>\n<p>Now you know a little about us, let\'s start something amazing!</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(273,7,13,1,1,1,'ContactPage','2014-11-11 14:21:30','2014-12-22 18:57:46','contact','Contact',NULL,'<p>We\'re thinkers and makers.</p>\n<p>Rodeo was founded in 2005 as a design and communications company. Nine years later, the landscape has changed—our industry has evolved, our clients’ challenges have become more complex, communication has changed—and we have changed. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>\n<p>Rodeo develops highly effective strategies based on communication and applied design process at every stage of project development. We turn insights and strategies into experiences that people engage with, connect with and interact with. These experiences, created in partnership with our clients and collaborators, positively contribute to and shape the visual language of our social landscapes.</p>\n<p>Now you know a little about us, let\'s start something amazing!</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(274,7,14,1,1,1,'ContactPage','2014-11-11 14:21:30','2014-12-22 18:58:03','contact','Contact',NULL,'<p>We\'re thinkers and makers.</p>\n<p>Rodeo was founded in 2005 as a design and communications company. Nine years later, the landscape has changed—our industry has evolved, our clients’ challenges have become more complex, communication has changed—and we have changed. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>\n<p>Rodeo develops highly effective strategies based on communication and applied design process at every stage of project development. We turn insights and strategies into experiences that people engage with, connect with and interact with. These experiences, created in partnership with our clients and collaborators, positively contribute to and shape the visual language of our social landscapes.</p>\n<p>Now you know a little about us, let\'s start something amazing!</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(275,7,15,1,1,1,'ContactPage','2014-11-11 14:21:30','2014-12-22 18:59:39','contact','Contact',NULL,'<p>We\'re thinkers and makers.</p>\n<p>Rodeo was founded in 2005 as a design and communications company. Nine years later, the landscape has changed—our industry has evolved, our clients’ challenges have become more complex, communication has changed—and we have changed. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>\n<p>Rodeo develops highly effective strategies based on communication and applied design process at every stage of project development. We turn insights and strategies into experiences that people engage with, connect with and interact with. These experiences, created in partnership with our clients and collaborators, positively contribute to and shape the visual language of our social landscapes.</p>\n<p>Now you know a little about us, let\'s start something amazing!</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(276,7,16,1,1,1,'ContactPage','2014-11-11 14:21:30','2014-12-22 18:59:57','contact','Contact',NULL,'<p>We\'re thinkers and makers.</p>\n<p>Rodeo was founded in 2005 as a design and communications company. Nine years later, the landscape has changed—our industry has evolved, our clients’ challenges have become more complex, communication has changed—and we have changed. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>\n<p>Rodeo develops highly effective strategies based on communication and applied design process at every stage of project development. We turn insights and strategies into experiences that people engage with, connect with and interact with. These experiences, created in partnership with our clients and collaborators, positively contribute to and shape the visual language of our social landscapes.</p>\n<p>Now you know a little about us, let\'s start something amazing!</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(277,7,17,1,1,1,'ContactPage','2014-11-11 14:21:30','2014-12-22 19:00:10','contact','Contact',NULL,'<p>We\'re thinkers and makers.</p>\n<p>Rodeo was founded in 2005 as a design and communications company. Nine years later, the landscape has changed—our industry has evolved, our clients’ challenges have become more complex, communication has changed—and we have changed. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>\n<p>Rodeo develops highly effective strategies based on communication and applied design process at every stage of project development. We turn insights and strategies into experiences that people engage with, connect with and interact with. These experiences, created in partnership with our clients and collaborators, positively contribute to and shape the visual language of our social landscapes.</p>\n<p>Now you know a little about us, let\'s start something amazing!</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(278,7,18,1,1,1,'ContactPage','2014-11-11 14:21:30','2014-12-22 19:04:06','contact','Contact',NULL,'<p>We\'re thinkers and makers.</p>\n<p>Rodeo was founded in 2005 as a design and communications company. Nine years later, the landscape has changed—our industry has evolved, our clients’ challenges have become more complex, communication has changed—and we have changed. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>\n<p>Rodeo develops highly effective strategies based on communication and applied design process at every stage of project development. We turn insights and strategies into experiences that people engage with, connect with and interact with. These experiences, created in partnership with our clients and collaborators, positively contribute to and shape the visual language of our social landscapes.</p>\n<p>Now you know a little about us, let\'s start something amazing!</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(279,7,19,1,1,1,'ContactPage','2014-11-11 14:21:30','2014-12-22 19:04:36','contact','Contact',NULL,'<p>We\'re thinkers and makers.</p>\n<p>Rodeo was founded in 2005 as a design and communications company. Nine years later, the landscape has changed—our industry has evolved, our clients’ challenges have become more complex, communication has changed—and we have changed. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>\n<p>Rodeo develops highly effective strategies based on communication and applied design process at every stage of project development. We turn insights and strategies into experiences that people engage with, connect with and interact with. These experiences, created in partnership with our clients and collaborators, positively contribute to and shape the visual language of our social landscapes.</p>\n<p>Now you know a little about us, let\'s start something amazing!</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(280,7,20,1,1,1,'ContactPage','2014-11-11 14:21:30','2014-12-22 19:10:14','contact','Contact',NULL,'<p>We\'re thinkers and makers.</p>\n<p>Rodeo was founded in 2005 as a design and communications company. Nine years later, the landscape has changed—our industry has evolved, our clients’ challenges have become more complex, communication has changed—and we have changed. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>\n<p>Rodeo develops highly effective strategies based on communication and applied design process at every stage of project development. We turn insights and strategies into experiences that people engage with, connect with and interact with. These experiences, created in partnership with our clients and collaborators, positively contribute to and shape the visual language of our social landscapes.</p>\n<p>Now you know a little about us, let\'s start something amazing!</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(281,7,21,1,1,1,'ContactPage','2014-11-11 14:21:30','2014-12-22 19:11:19','contact','Contact',NULL,'<p>We\'re thinkers and makers.</p>\n<p>Rodeo was founded in 2005 as a design and communications company. Nine years later, the landscape has changed—our industry has evolved, our clients’ challenges have become more complex, communication has changed—and we have changed. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>\n<p>Rodeo develops highly effective strategies based on communication and applied design process at every stage of project development. We turn insights and strategies into experiences that people engage with, connect with and interact with. These experiences, created in partnership with our clients and collaborators, positively contribute to and shape the visual language of our social landscapes. Let\'s start something amazing!</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(282,7,22,1,1,1,'ContactPage','2014-11-11 14:21:30','2014-12-22 19:14:41','contact','Contact',NULL,'<p>We\'re thinkers and makers.</p>\n<p>Rodeo was founded in 2005 as a design and communications company. Nine years later, the landscape has changed—our industry has evolved, our clients’ challenges have become more complex, communication has changed—and we have changed. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>\n<p>Rodeo develops highly effective strategies based on communication and applied design process at every stage of project development. We turn insights and strategies into experiences that people engage with, connect with and interact with. These experiences, created in partnership with our clients and collaborators, positively contribute to and shape the visual language of our social landscapes. Lets start something amazing!</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(283,7,23,1,1,1,'ContactPage','2014-11-11 14:21:30','2014-12-22 21:15:50','contact','Contact',NULL,'<p>Rodeo was founded in 2005 as a design and communications company. Nine years later, the landscape has changed—our industry has evolved, our clients’ challenges have become more complex, communication has changed—and we have changed. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>\n<p>Rodeo develops highly effective strategies based on communication and applied design process at every stage of project development. We turn insights and strategies into experiences that people engage with, connect with and interact with. These experiences, created in partnership with our clients and collaborators, positively contribute to and shape the visual language of our social landscapes. Lets start something amazing!</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(284,33,5,1,1,1,'FeedPage','2014-12-11 05:08:29','2014-12-22 23:12:07','feed','feed','Feed',NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',0),
	(285,19,6,1,1,1,'ProjectPage','2014-11-27 23:40:50','2014-12-22 23:41:38','aila','AILA',NULL,'<p>Forecast — <br>Festival of Landscape Architecture</p>',NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',8),
	(286,1,6,1,1,1,'HomePage','2014-11-11 13:25:47','2014-12-30 15:50:50','home','Home',NULL,'<p>Hello. We\'re Rodeo, an integrated communications agency. We use creativity, design, technology and media to craft strategically inspired communications that connect with people.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(287,43,7,1,1,1,'ShopPage','2014-12-16 04:54:23','2014-12-30 18:55:43','shop','shop','Shop','<p>Rodeo Shop is our online store. It’s a space where where you can view some of our personal projects. Posters, books and other things. We’re still sorting out the ordering system, but in the meantime join our mailing list for future shop talk and other info. </p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',0),
	(288,43,8,1,1,1,'ShopPage','2014-12-16 04:54:23','2014-12-30 18:55:55','shop','shop','Shop','<p>Rodeo Shop is our online store. It’s a space where where you can view some of our personal projects. Posters, books and other things. <br>We’re still sorting out the ordering system, but in the meantime join our mailing list for future shop talk and other info. </p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',0),
	(289,43,9,1,1,1,'ShopPage','2014-12-16 04:54:23','2014-12-30 18:56:05','shop','shop','Shop','<p>Rodeo Shop is our online store. It’s a space where where you can view some of our personal projects. Posters, books and other things. </p>\n<p>We’re still sorting out the ordering system, but in the meantime join our mailing list for future shop talk and other info. </p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',0),
	(290,43,10,1,1,1,'ShopPage','2014-12-16 04:54:23','2014-12-30 21:06:22','shop','shop','Shop','<p>Rodeo Shop is our online store. It’s a space where where you can view some of our personal projects. Posters, books and other things. We’re still sorting out the ordering system, but in the meantime join our mailing list for future shop talk and other info. </p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',0),
	(291,49,1,0,1,0,'ProjectPage','2015-01-07 18:40:06','2015-01-07 18:40:06','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',0),
	(292,50,1,0,1,0,'ProjectPage','2015-01-07 18:40:52','2015-01-07 18:40:52','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,35,0,0,NULL,'Inherit','Inherit',8),
	(293,50,2,1,1,1,'ProjectPage','2015-01-07 18:40:52','2015-01-07 18:42:15','gregory-crewdson','Gregory Crewdson',NULL,'<p>Something to go in here</p>',NULL,NULL,1,1,35,0,0,NULL,'Inherit','Inherit',8),
	(294,50,3,1,1,1,'ProjectPage','2015-01-07 18:40:52','2015-01-07 18:42:55','gregory-crewdson','Gregory Crewdson',NULL,'<p>Something to go in here</p>',NULL,NULL,1,1,35,0,0,NULL,'Inherit','Inherit',8),
	(295,50,4,1,1,1,'ProjectPage','2015-01-07 18:40:52','2015-01-07 18:48:01','gregory-crewdson','Gregory Crewdson',NULL,'<p>Campaign identity and communications for Gregory Crewdson\'s Masterclass.</p>',NULL,NULL,1,1,35,0,0,NULL,'Inherit','Inherit',8),
	(296,35,5,1,1,1,'ProjectPage','2014-12-14 16:38:41','2015-01-08 17:16:27','ach-group-2','ACH Group',NULL,'<p>Future Films </p>',NULL,NULL,1,1,23,0,0,NULL,'Inherit','Inherit',8),
	(297,18,9,1,1,1,'ProjectPage','2014-11-27 21:37:10','2015-01-08 17:24:08','open-ideas','Open Ideas',NULL,'<p>Open Ideas International architecture competition.</p>',NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',8),
	(298,18,10,1,1,1,'ProjectPage','2014-11-27 21:37:10','2015-01-08 18:02:26','open-ideas','Open Ideas',NULL,'<p>Open Ideas International architecture competition.</p>',NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',8),
	(299,50,5,1,1,1,'ProjectPage','2015-01-07 18:40:52','2015-01-08 18:26:17','gregory-crewdson','Gregory Crewdson',NULL,'<p>Campaign identity and communications for Gregory Crewdson\'s Masterclass.</p>',NULL,NULL,1,1,35,0,0,NULL,'Inherit','Inherit',8),
	(300,9,13,1,1,1,'ProjectPage','2014-11-12 14:03:00','2015-04-15 04:26:16','g82','g82','G82','<p>Brand identity and communications for independent art gallery.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',8),
	(301,20,9,1,1,1,'ProjectPage','2014-11-30 22:18:04','2015-04-15 04:27:19','vaccination','SA Health Vaccination Initiative ',NULL,'<p>Integrated muti-channel social marketing initiative designed to increase awareness, education and drive immunisation take up for pre-entry 4 year olds.</p>',NULL,NULL,1,1,16,0,0,NULL,'Inherit','Inherit',8),
	(302,21,8,0,1,0,'ProjectPage','2014-11-30 23:29:10','2015-04-15 04:29:08','katrina-webb','Katrina Webb',NULL,'<p>Greatness on the track at multiple paralympic games and greatness in connecting with people is a good way to describe Katrina Webb.</p>',NULL,NULL,1,1,17,0,0,NULL,'Inherit','Inherit',8),
	(303,22,9,0,1,0,'ProjectPage','2014-11-30 23:41:03','2015-04-15 04:30:05','the-spaniard','The Spaniard',NULL,'<p>The past that\'s in the earth makes a certain grape. Three varieties of grape of Spanish origin grown in the Clare Valley make this wine what it is.</p>',NULL,NULL,1,1,17,0,0,NULL,'Inherit','Inherit',8),
	(304,19,7,1,1,1,'ProjectPage','2014-11-27 23:40:50','2015-04-15 04:31:14','aila','AILA',NULL,'<p>Forecast — <br>Festival of Landscape Architecture</p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',8),
	(305,24,3,0,1,0,'ProjectPage','2014-12-01 17:51:41','2015-04-15 04:31:59','wake-up-hate','Wake Up Hate',NULL,'<p>Rodeo worked with Stone/Castro to create a graphic and powerful image for Castro\'s solo violent production, while tipping the hat to Jan Fabre. Note: No animal was harmed in creating this work.</p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',8),
	(306,17,9,1,1,1,'ProjectPage','2014-11-27 21:11:49','2015-04-15 04:32:34','opal','Opal',NULL,'<p>Social marketing branding and communications campaign</p>',NULL,NULL,1,1,19,0,0,NULL,'Inherit','Inherit',8),
	(307,18,11,0,1,0,'ProjectPage','2014-11-27 21:37:10','2015-04-15 04:33:08','open-ideas','Open Ideas',NULL,'<p>Open Ideas International architecture competition.</p>',NULL,NULL,1,1,19,0,0,NULL,'Inherit','Inherit',8),
	(308,26,6,0,1,0,'ProjectPage','2014-12-03 22:43:45','2015-04-15 04:33:55','goodhouse','Goodhouse',NULL,'<p>Design is an elastic term and it succeeds most when upstream innovation and thinking creates downstream outcomes that are meaningful to people. This is Goodhouse.</p>',NULL,NULL,1,1,30,0,0,NULL,'Inherit','Inherit',8),
	(309,22,10,0,1,0,'ProjectPage','2014-11-30 23:41:03','2015-04-15 04:35:09','the-spaniard','The Spaniard',NULL,'<p>The past that\'s in the earth makes a certain grape. Three varieties of grape of Spanish origin grown in the Clare Valley make this wine what it is.</p>',NULL,NULL,1,1,13,0,0,NULL,'Inherit','Inherit',8),
	(310,27,5,0,1,0,'ProjectPage','2014-12-07 23:24:53','2015-04-15 04:36:02','lms-energy','LMS Energy',NULL,NULL,NULL,NULL,1,1,13,0,0,NULL,'Inherit','Inherit',8),
	(311,24,4,1,1,1,'ProjectPage','2014-12-01 17:51:41','2015-04-15 05:01:36','wake-up-hate','Wake Up Hate',NULL,'<p>No animal was harmed in creating this work.</p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',8),
	(312,43,11,1,1,1,'ShopPage','2014-12-16 04:54:23','2015-04-21 00:18:08','shop','shop','Shop','<p>Rodeo Shop is our online store. It’s a space where where you can view some of our personal projects. Posters, books and other things. We’re still sorting out the ordering system, but in the meantime join our mailing list for future shop talk and other info. </p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',0),
	(313,14,8,1,1,1,'ProjectPage','2014-11-17 12:57:42','2015-07-05 19:06:56','nab','nab',NULL,'<p>Building identity and interior graphic package for NAB South Australian headquarters.</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',8),
	(314,14,9,1,1,1,'ProjectPage','2014-11-17 12:57:42','2015-07-05 19:08:29','nab','nab',NULL,'<p>Building identity and interior graphic package for NAB South Australian headquarters.</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',8),
	(315,24,5,1,1,1,'ProjectPage','2014-12-01 17:51:41','2015-07-05 19:21:27','wake-up-hate','Wake Up Hate',NULL,'<p>No animal was harmed in creating this work.</p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',8),
	(316,20,10,1,1,1,'ProjectPage','2014-11-30 22:18:04','2015-07-05 20:46:02','vaccination','SA Health Vaccination Initiative ',NULL,'<p>Integrated muti-channel social marketing initiative designed to increase awareness, education and drive immunisation take up for pre-entry 4 year olds.</p>',NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',8),
	(317,31,5,1,1,1,'ProjectPage','2014-12-08 20:07:34','2015-07-06 00:00:44','intro','Intro',NULL,'<p>When planning and architecture start projects together the work is smart. Intro is exactly that, and they\'re busy Activating Human Space.</p>',NULL,NULL,1,1,16,0,0,NULL,'Inherit','Inherit',8),
	(318,44,3,1,1,1,'ProjectPage','2014-12-16 18:18:10','2015-07-06 00:23:51','ergo','Ergo',NULL,NULL,NULL,NULL,1,1,29,0,0,NULL,'Inherit','Inherit',8),
	(319,44,4,1,1,1,'ProjectPage','2014-12-16 18:18:10','2015-07-06 00:30:25','ergo','Ergo',NULL,NULL,NULL,NULL,1,1,29,0,0,NULL,'Inherit','Inherit',8),
	(320,50,6,1,1,1,'ProjectPage','2015-01-07 18:40:52','2015-07-06 00:40:13','gregory-crewdson','Gregory Crewdson',NULL,'<p>Campaign identity and communications for Gregory Crewdson\'s Masterclass.</p>',NULL,NULL,1,1,32,0,0,NULL,'Inherit','Inherit',8),
	(321,51,1,0,1,0,'ProjectPage','2015-07-06 01:23:23','2015-07-06 01:23:23','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,33,0,0,NULL,'Inherit','Inherit',8),
	(322,51,2,1,1,1,'ProjectPage','2015-07-06 01:23:23','2015-07-06 01:23:48','aoc','AOC',NULL,NULL,NULL,NULL,1,1,33,0,0,NULL,'Inherit','Inherit',8),
	(323,51,3,1,1,1,'ProjectPage','2015-07-06 01:23:23','2015-07-06 02:03:33','aoc','AOC',NULL,NULL,NULL,NULL,1,1,33,0,0,NULL,'Inherit','Inherit',8),
	(324,51,4,0,1,0,'ProjectPage','2015-07-06 01:23:23','2015-07-06 02:06:34','aoc','AOC',NULL,NULL,NULL,NULL,1,1,32,0,0,NULL,'Inherit','Inherit',8),
	(325,51,5,1,1,1,'ProjectPage','2015-07-06 01:23:23','2015-07-06 02:06:41','aoc','AOC',NULL,NULL,NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',8),
	(326,52,1,0,1,0,'ProjectPage','2015-07-06 19:41:15','2015-07-06 19:41:15','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',0),
	(327,52,2,1,1,1,'ProjectPage','2015-07-06 19:41:15','2015-07-06 19:42:20','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',8),
	(328,52,3,1,1,1,'ProjectPage','2015-07-06 19:41:15','2015-07-06 19:42:52','wdc','WDC',NULL,NULL,NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',8),
	(329,52,4,1,1,1,'ProjectPage','2015-07-06 19:41:15','2015-07-06 20:10:09','wdc','WDC',NULL,NULL,NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',8),
	(330,52,5,1,1,1,'ProjectPage','2015-07-06 19:41:15','2015-07-06 23:36:36','wdc','WDC',NULL,NULL,NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',8),
	(331,26,7,1,1,1,'ProjectPage','2014-12-03 22:43:45','2015-07-06 23:43:57','goodhouse','Goodhouse',NULL,'<p>Design is an elastic term and it succeeds most when upstream innovation and thinking creates downstream outcomes that are meaningful to people. This is Goodhouse.</p>',NULL,NULL,1,1,31,0,0,NULL,'Inherit','Inherit',8),
	(332,32,6,1,1,1,'ProjectPage','2014-12-10 18:49:19','2015-07-07 00:23:21','dec-workforce','Dec Workforce',NULL,'<p>DEC Aviation Workforce is about the power of providing the best qualified people for the job.</p>\n<p> </p>',NULL,NULL,1,1,20,0,0,NULL,'Inherit','Inherit',8),
	(333,27,6,1,1,1,'ProjectPage','2014-12-07 23:24:53','2015-07-07 00:38:03','lms-energy','LMS Energy',NULL,NULL,NULL,NULL,1,1,14,0,0,NULL,'Inherit','Inherit',8),
	(334,21,9,1,1,1,'ProjectPage','2014-11-30 23:29:10','2015-07-07 00:58:53','katrina-webb','Katrina Webb',NULL,'<p>Greatness on the track at multiple paralympic games and greatness in connecting with people is a good way to describe Katrina Webb.</p>',NULL,NULL,1,1,15,0,0,NULL,'Inherit','Inherit',8),
	(335,18,12,1,1,1,'ProjectPage','2014-11-27 21:37:10','2015-07-07 01:19:02','open-ideas','Open Ideas',NULL,'<p>Open Ideas International architecture competition.</p>',NULL,NULL,1,1,19,0,0,NULL,'Inherit','Inherit',8),
	(336,37,8,1,1,1,'ProjectPage','2014-12-14 19:44:34','2015-07-07 17:27:19','getty-images-spikes-asia','Getty Images + Spikes Asia',NULL,'<p>We developed 40 minute dual screen projection and collateral for Spikes Advertising Festival Asia.</p>',NULL,NULL,1,1,24,0,0,NULL,'Inherit','Inherit',8),
	(337,37,9,1,1,1,'ProjectPage','2014-12-14 19:44:34','2015-07-07 17:33:40','getty-images-spikes-asia','Getty Images + Spikes Asia',NULL,'<p>We developed 40 minute dual screen projection and collateral for Spikes Advertising Festival Asia.</p>',NULL,NULL,1,1,24,0,0,NULL,'Inherit','Inherit',8),
	(338,34,6,1,1,1,'ProjectPage','2014-12-11 15:28:41','2015-07-07 18:09:12','blackout','Blackout',NULL,'<p>Integrated communications for Stone/Castro\'s world premiere of Blackout for Adelaide Festival of Arts.</p>',NULL,NULL,1,1,21,0,0,NULL,'Inherit','Inherit',8),
	(339,51,6,1,1,1,'ProjectPage','2015-07-06 01:23:23','2015-07-07 18:19:13','aoc','AOC',NULL,NULL,NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',8),
	(340,51,7,1,1,1,'ProjectPage','2015-07-06 01:23:23','2015-07-07 18:34:16','aoc','AOC',NULL,NULL,NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',8),
	(341,30,7,1,1,1,'ProjectPage','2014-12-08 17:58:43','2015-07-08 01:35:29','getty-image-services-guide','Getty Image Services Guide',NULL,'<p>Getty Images Global Services Guide.</p>',NULL,NULL,1,1,16,0,0,NULL,'Inherit','Inherit',8),
	(342,53,1,0,1,0,'ProjectPage','2015-07-08 01:37:43','2015-07-08 01:37:43','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,34,0,0,NULL,'Inherit','Inherit',8),
	(343,53,2,1,1,1,'ProjectPage','2015-07-08 01:37:43','2015-07-08 01:39:54','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,34,0,0,NULL,'Inherit','Inherit',8),
	(344,53,3,1,1,1,'ProjectPage','2015-07-08 01:37:43','2015-07-08 01:43:28','new-project-page','New Project Page',NULL,NULL,NULL,NULL,1,1,34,0,0,NULL,'Inherit','Inherit',8),
	(345,53,4,1,1,1,'ProjectPage','2015-07-08 01:37:43','2015-07-08 01:48:19','new-project-page','What does and architect do?',NULL,NULL,NULL,NULL,1,1,34,0,0,NULL,'Inherit','Inherit',8),
	(346,45,5,1,1,1,'ProjectPage','2014-12-17 22:28:13','2015-07-09 19:46:54','odasa','ODASA',NULL,'<p>Office for Design + Architecture SA</p>',NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',8),
	(347,1,7,1,1,1,'HomePage','2014-11-11 13:25:47','2015-11-05 03:29:08','home','Home',NULL,'<p>Hello. We\'re Rodeo, an integrated communications agency. We use creativity, design, technology and media to craft strategically inspired communications that connect with people.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(348,7,24,1,1,1,'ContactPage','2014-11-11 14:21:30','2015-11-05 03:45:50','contact','Contact',NULL,'<p>Rodeo was founded in 2005 as a design and communications company. Nine years later, the landscape has changed—our industry has evolved, our clients’ challenges have become more complex, communication has changed—and we have changed. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>\n<p>Rodeo develops highly effective strategies based on communication and applied design process at every stage of project development. We turn insights and strategies into experiences that people engage with, connect with and interact with. These experiences, created in partnership with our clients and collaborators, positively contribute to and shape the visual language of our social landscapes. Lets start something amazing!</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(349,7,25,1,1,1,'ContactPage','2014-11-11 14:21:30','2015-11-05 03:46:40','contact','Contact',NULL,'<p>Rodeo was founded in 2005 as a design and communications company. Nine years later, the landscape has changed—our industry has evolved, our clients’ challenges have become more complex, communication has changed—and we have changed. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>\n<p>Rodeo develops highly effective strategies based on communication and applied design process at every stage of project development. We turn insights and strategies into experiences that people engage with, connect with and interact with. These experiences, created in partnership with our clients and collaborators, positively contribute to and shape the visual language of our social landscapes. Lets start something amazing!</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(350,19,8,1,1,1,'ProjectPage','2014-11-27 23:40:50','2015-11-05 04:00:11','aila','AILA',NULL,'<p>Forecast<br>Festival of Landscape Architecture<br>Australian Institute of Landscape Architecture </p>',NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',8),
	(351,2,8,1,1,1,'AboutPage','2014-11-11 13:25:47','2015-12-14 22:24:42','about','About',NULL,'<p>Rodeo was founded in 2005 as a design and communications company. All these years later, the landscape has changed—our industry has evolved, our clients’ challenges have become more complex, communication has changed—and we have changed. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),
	(352,2,9,1,1,1,'AboutPage','2014-11-11 13:25:47','2015-12-14 22:31:04','about','About',NULL,'<p>Rodeo was founded in 2005 as a design and communications company. Since then, the landscape has changed—our industry has evolved, our clients’ challenges have become more complex, communication has changed—and we have changed. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),
	(353,2,10,1,1,1,'AboutPage','2014-11-11 13:25:47','2015-12-14 22:31:22','about','About',NULL,'<p>Rodeo was founded in 2005 as a design and communications company. <br><br>Now the landscape has changed—our industry has evolved, our clients’ challenges have become more complex, communication has changed—and we have changed. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),
	(354,2,11,1,1,1,'AboutPage','2014-11-11 13:25:47','2015-12-14 22:36:31','about','About',NULL,'<p>Rodeo was founded in 2005 as a design and communications company. Now the landscape has changed—our industry has evolved, our clients’ challenges have become more complex, communication has changed—and we have changed. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),
	(355,2,12,1,1,1,'AboutPage','2014-11-11 13:25:47','2015-12-14 22:48:02','about','About',NULL,'<p>Rodeo was founded in 2005 as a design and communications company. Now the landscape has changed—our industry has evolved, our clients’ challenges have become more complex, communication has changed—and we have changed. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>\n<p>Rodeo develops highly effective strategies based on communication and applied design thinking at every stage of project development. We turn insights and strategies into experiences that people engage with, connect with and interact with. We believe we have a responsibility to innovate, to find new expressions and solutions for common issues. We do this on a daily basis for our clients, but also seek to have an impact on the wider community, be it local, national or global. We also believe our work should contribute to the cultural landscape – lasting beyond the campaign timeframe and being more meaningful than merely meeting the objectives of a brief.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),
	(356,2,13,1,1,1,'AboutPage','2014-11-11 13:25:47','2015-12-14 22:50:57','about','About',NULL,'<p>Rodeo was founded in 2005 as a design and communications company. Now the landscape has changed—our industry has evolved, our clients’ challenges have become more complex, communication has changed—and we have changed. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>\n<p>Rodeo develops highly effective strategies based on communication and applied design thinking at every stage of project development. We turn insights and strategies into experiences that people engage with, connect with and interact with. We believe we have a responsibility to innovate, to find new expressions and solutions for common issues. We do this on a daily basis for our clients, but also seek to have an impact on the wider community, be it local, national or global. We also believe our work should contribute to the cultural landscape – lasting beyond the campaign timeframe and being more meaningful than merely meeting the objectives of a brief.<br><br>Lets start something amazing!</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),
	(357,7,26,1,1,1,'ContactPage','2014-11-11 14:21:30','2015-12-17 23:09:58','contact','Contact',NULL,'<p><span>Design is an elastic term and it succeeds most when upstream innovation and thinking creates downstream outcomes that are meaningful to people. </span>We\'re into design because we\'re into people. There\'s a lot of talk of design thinking as a work process and although it\'s always been the framework for developing our strategy and creative we also believe it has to function hand in glove with community engagement. When the community can engage it forces good design to be responsive, to change, to address emerging ideas, meet new challenges and mobilise opportunity.</p>\n<p>The story behind where we work is essentially a real expression of this idea. We shared the idea with other smart people who were also up for ideas. Together we designed and adapted an empty mechanics warehouse on the city fringe into a dynamic cafe with awesome coffee, design studios, specialist art gallery and a flexible event space. At it\'s core it\'s about being open, providing an inside experience and it connects us all.  </p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(358,7,27,1,1,1,'ContactPage','2014-11-11 14:21:30','2015-12-17 23:13:08','contact','Contact',NULL,'<p>We\'re into design because we\'re into people. There\'s a lot of talk of design thinking as a work process and although it\'s always been the framework for developing our strategy and creative we also believe it has to function hand in glove with community engagement. When the community can engage it forces good design to be responsive, to change, to address emerging ideas, meet new challenges and mobilise opportunity.</p>\n<p>The story behind where we work is essentially a real expression of this idea. We shared the idea with other smart people who were also up for ideas. Together we designed and adapted an empty mechanics warehouse on the city fringe into a dynamic cafe with awesome coffee, design studios, specialist art gallery and a flexible event space. It\'s an experiment and an expression, what doesn\'t work, we\'ll just re-design.</p>\n<p>Come and visit, drink fine coffee and let\'s talk some more!</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(359,1,8,1,1,1,'HomePage','2014-11-11 13:25:47','2015-12-17 23:14:07','home','Home',NULL,'<p>Design is an elastic term and it succeeds most when upstream innovation and thinking creates downstream outcomes that are meaningful to people. </p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(360,1,9,1,1,1,'HomePage','2014-11-11 13:25:47','2015-12-17 23:21:50','home','Home',NULL,'<p>Rodeo</p>\n<p>Design is an elastic term and it succeeds most when upstream innovation and thinking creates downstream outcomes that are meaningful to people. </p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(361,2,14,1,1,1,'AboutPage','2014-11-11 13:25:47','2015-12-17 23:26:37','about','About',NULL,'<p>Rodeo was founded in 2005 as a design and communications company. Now the landscape has changed—our industry has evolved, our clients’ challenges have become more complex, communication has changed—and we have changed. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>\n<p>Rodeo develops strategies based on communication and applied design thinking at every stage of project development. We turn these insights and strategies into experiences that people engage with, connect with and interact with. We believe we have a responsibility to innovate, to find new expressions and solutions for common issues. We do this on a daily basis for our clients, but also seek to have an impact on the wider community, be it local, national or global. We also believe our work should contribute to the cultural landscape – lasting beyond the campaign timeframe and be more meaningful than merely meeting the objectives of a brief.<br><br>Lets start something amazing!</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),
	(362,7,28,1,1,1,'ContactPage','2014-11-11 14:21:30','2015-12-17 23:32:11','contact','Contact',NULL,'<p>We\'re into design because we\'re into people. There\'s a lot of talk of design thinking as a work process and although it has always been the framework for developing our strategy and creative we also believe it needs to function hand in glove with community engagement. When the community can engage it forces good design to be responsive, to change, to face emerging ideas, meet new challenges and mobilise opportunity.</p>\n<p>The story behind our work space is essentially a real expression of this concept. We shared the idea with other smart people who were also up for ideas. Together we designed and adapted an empty mechanics warehouse on the city fringe into a dynamic cafe with awesome coffee, design studios, specialist art gallery and a flexible event space. It is equal parts an expression of our thinking and an experiment in action. When we discover something that doesn\'t work, we\'ll just need to re-design it.</p>\n<p>Come and visit, drink fine coffee and let\'s talk some more!</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(363,7,29,1,1,1,'ContactPage','2014-11-11 14:21:30','2015-12-17 23:35:41','contact','Contact',NULL,'<p>We\'re into design because we\'re into people. There\'s a lot of talk of design thinking as a work process and although it has always been the framework for developing our strategy and creative we also believe it needs to function hand in glove with community engagement. When the community can engage it forces good design to be responsive, to change, to face emerging ideas, meet new challenges and mobilise opportunity.</p>\n<p>The story behind our work space is essentially a real expression of this concept. We shared the idea with other smart people who were also up for ideas. Together we designed and adapted an empty mechanics warehouse on the city fringe into a dynamic cafe with awesome coffee, design studios, specialist art gallery and a flexible event space. It is equal parts an expression of our thinking and an experiment in action. When we discover something that doesn\'t work, we just re-design it.</p>\n<p>Come and visit, drink fine coffee and talk some more!</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(364,26,8,1,1,1,'ProjectPage','2014-12-03 22:43:45','2015-12-17 23:40:38','goodhouse','Goodhouse',NULL,'<p>Smart systems that puts good design in reach.</p>',NULL,NULL,1,1,31,0,0,NULL,'Inherit','Inherit',8),
	(365,19,9,1,1,1,'ProjectPage','2014-11-27 23:40:50','2015-12-17 23:42:29','aila','AILA',NULL,'<p>Forecasting the Festival of Landscape Architecture</p>',NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',8),
	(366,19,10,1,1,1,'ProjectPage','2014-11-27 23:40:50','2015-12-17 23:43:00','aila','AILA',NULL,'<p>Forecasting the Festival of Landscape Architecture.</p>',NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',8),
	(367,16,17,1,1,1,'ProjectPage','2014-11-27 20:30:55','2015-12-17 23:44:08','paula-scher','Paula Scher',NULL,'<p>Shot at Pentagram in New York, a series of films for Getty Images Global. </p>\n<p> </p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',8),
	(368,51,8,1,1,1,'ProjectPage','2015-07-06 01:23:23','2015-12-17 23:45:26','aoc','AOC',NULL,'<p>Positioning the Australian Olympic Team.</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',8),
	(369,45,6,1,1,1,'ProjectPage','2014-12-17 22:28:13','2015-12-17 23:48:47','odasa','ODASA',NULL,'<p>Sometimes the best response is to not do a building.</p>',NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',8),
	(370,25,7,1,1,1,'ProjectPage','2014-12-01 18:05:58','2015-12-17 23:50:20','motor-town','Motor Town',NULL,'<p>Branding Simon Stevens most violent play.</p>',NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',8),
	(371,20,11,1,1,1,'ProjectPage','2014-11-30 22:18:04','2015-12-17 23:51:40','vaccination','SA Health Vaccination Initiative ',NULL,'<p>Integrated muti-channel social marketing initiative.</p>',NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',8),
	(372,22,11,1,1,1,'ProjectPage','2014-11-30 23:41:03','2015-12-17 23:54:17','the-spaniard','The Spaniard',NULL,'<p>The past that\'s in the earth makes a certain grape.</p>',NULL,NULL,1,1,13,0,0,NULL,'Inherit','Inherit',8),
	(373,27,7,1,1,1,'ProjectPage','2014-12-07 23:24:53','2015-12-17 23:59:08','lms-energy','LMS Energy',NULL,'<p>Branding innovation in the energy sector. </p>',NULL,NULL,1,1,14,0,0,NULL,'Inherit','Inherit',8),
	(374,21,10,1,1,1,'ProjectPage','2014-11-30 23:29:10','2015-12-18 00:00:52','katrina-webb','Katrina Webb',NULL,'<p>Greatness in multiple Paralympics and greatness in connecting with people.</p>',NULL,NULL,1,1,15,0,0,NULL,'Inherit','Inherit',8),
	(375,30,8,1,1,1,'ProjectPage','2014-12-08 17:58:43','2015-12-18 00:02:46','getty-image-services-guide','Getty Images Global Services Guide',NULL,'<p>Getty Images Global Services Guide.</p>',NULL,NULL,1,1,16,0,0,NULL,'Inherit','Inherit',8),
	(376,30,9,1,1,1,'ProjectPage','2014-12-08 17:58:43','2015-12-18 00:03:44','getty-image-services-guide','Getty Images Global Services Guide',NULL,'<p>We\'ve done 15 years of smart work together.</p>',NULL,NULL,1,1,16,0,0,NULL,'Inherit','Inherit',8),
	(377,31,6,1,1,1,'ProjectPage','2014-12-08 20:07:34','2015-12-18 00:04:57','intro','Intro',NULL,'<p>When planning and architecture start projects together the work is clever.</p>',NULL,NULL,1,1,17,0,0,NULL,'Inherit','Inherit',8),
	(378,17,10,1,1,1,'ProjectPage','2014-11-27 21:11:49','2015-12-18 00:05:34','opal','Opal SA Health',NULL,'<p>Social marketing branding and communications campaign.</p>',NULL,NULL,1,1,18,0,0,NULL,'Inherit','Inherit',8),
	(379,34,7,1,1,1,'ProjectPage','2014-12-11 15:28:41','2015-12-18 00:11:04','blackout','Blackout Adelaide Festival of Arts.',NULL,'<p>Integrated communications for Stone/Castro\'s world premiere of Blackout.</p>',NULL,NULL,1,1,21,0,0,NULL,'Inherit','Inherit',8),
	(380,30,10,1,1,1,'ProjectPage','2014-12-08 17:58:43','2015-12-19 18:47:55','getty-image-services-guide','Getty Images Global Services Guide',NULL,'<p>We\'ve done 15 years of smart work together.</p>',NULL,NULL,1,1,16,0,0,NULL,'Inherit','Inherit',8),
	(381,52,6,1,1,1,'ProjectPage','2015-07-06 19:41:15','2016-01-01 14:12:24','wdc','World Design Capital',NULL,'<p>Targeted approach to positioning and defining a culture of innovation helped us to put possibility at the heart of Adelaide’s bid to become World Design Capital.</p>',NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',8),
	(382,52,7,1,1,1,'ProjectPage','2015-07-06 19:41:15','2016-01-01 15:22:24','wdc','World Design Capital',NULL,'<p>Better life through Design</p>',NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',8),
	(383,19,11,1,1,1,'ProjectPage','2014-11-27 23:40:50','2016-01-01 21:07:48','aila','AILA Forecast Festival',NULL,'<p>Visualise the change.</p>',NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',8),
	(384,9,14,1,1,1,'ProjectPage','2014-11-12 14:03:00','2016-01-02 02:11:28','g82','Gallery 82',NULL,'<p>Brand identity and communications for independent art gallery.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',8),
	(385,36,4,1,1,1,'ProjectPage','2014-12-14 17:58:08','2016-01-05 03:27:50','integrated-design-commission','Integrated Design Commission',NULL,'<p>Branding the first state level inter-disciplinary design, cross government advisory team.  </p>',NULL,NULL,1,1,23,0,0,NULL,'Inherit','Inherit',8),
	(386,36,5,1,1,1,'ProjectPage','2014-12-14 17:58:08','2016-01-05 21:12:28','integrated-design-commission','Integrated Design Commission',NULL,'<p>Designing pportunities that matter</p>',NULL,NULL,1,1,23,0,0,NULL,'Inherit','Inherit',8),
	(387,36,6,1,1,1,'ProjectPage','2014-12-14 17:58:08','2016-01-05 21:18:28','integrated-design-commission','Integrated Design Commission',NULL,'<p>Designing opportunities that matter</p>',NULL,NULL,1,1,23,0,0,NULL,'Inherit','Inherit',8),
	(388,22,12,1,1,1,'ProjectPage','2014-11-30 23:41:03','2016-04-26 18:20:51','atlas-wines','Atlas Wines',NULL,'<p>The past that\'s in the earth makes a certain grape.</p>',NULL,NULL,1,1,13,0,0,NULL,'Inherit','Inherit',8),
	(389,53,5,1,1,1,'ProjectPage','2015-07-08 01:37:43','2016-04-26 19:21:10','new-project-page','What does and architect do?',NULL,NULL,NULL,NULL,1,1,34,0,0,NULL,'Inherit','Inherit',8),
	(390,14,10,1,1,1,'ProjectPage','2014-11-17 12:57:42','2016-04-26 20:00:35','nab','nab',NULL,'<p>Building identity and interior graphic package for NAB South Australian headquarters.</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',8),
	(391,30,11,1,1,1,'ProjectPage','2014-12-08 17:58:43','2016-04-26 20:00:49','getty-image-services-guide','Getty Images Global Services Guide',NULL,'<p>We\'ve done 15 years of smart work together.</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',8),
	(392,36,7,1,1,1,'ProjectPage','2014-12-14 17:58:08','2016-04-26 20:03:58','integrated-design-commission','Integrated Design Commission',NULL,'<p>Designing opportunities that matter</p>',NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',8),
	(393,53,6,1,1,1,'ProjectPage','2015-07-08 01:37:43','2016-04-26 20:04:14','new-project-page','What does and architect do?',NULL,NULL,NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',8),
	(394,50,7,1,1,1,'ProjectPage','2015-01-07 18:40:52','2016-04-26 20:04:24','gregory-crewdson','Gregory Crewdson',NULL,'<p>Campaign identity and communications for Gregory Crewdson\'s Masterclass.</p>',NULL,NULL,1,1,14,0,0,NULL,'Inherit','Inherit',8),
	(395,50,8,1,1,1,'ProjectPage','2015-01-07 18:40:52','2016-04-26 20:10:03','gregory-crewdson','Gregory Crewdson',NULL,'<p>Campaign identity and communications for Gregory Crewdson\'s Masterclass.</p>',NULL,NULL,1,1,14,0,0,NULL,'Inherit','Inherit',8),
	(396,35,6,1,1,1,'ProjectPage','2014-12-14 16:38:41','2016-04-26 20:12:39','ach-group-2','ACH Group',NULL,'<p>Future Films </p>',NULL,NULL,1,1,26,0,0,NULL,'Inherit','Inherit',8),
	(397,52,8,0,1,0,'ProjectPage','2015-07-06 19:41:15','2016-05-18 06:23:02','wdc','World Design Capital',NULL,'<p>Better life through Design</p>',NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',8),
	(398,9,15,0,1,0,'ProjectPage','2014-11-12 14:03:00','2016-05-18 06:23:27','g82','Gallery 82',NULL,'<p>Brand identity and communications for independent art gallery.</p>',NULL,NULL,1,1,16,0,0,NULL,'Inherit','Inherit',8),
	(399,50,9,0,1,0,'ProjectPage','2015-01-07 18:40:52','2016-05-18 06:23:47','gregory-crewdson','Gregory Crewdson',NULL,'<p>Campaign identity and communications for Gregory Crewdson\'s Masterclass.</p>',NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',8),
	(400,19,12,1,1,1,'ProjectPage','2014-11-27 23:40:50','2016-05-18 06:50:22','aila','AILA Forecast Festival',NULL,'<p>Visualise the change.</p>',NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',8),
	(401,51,9,1,1,1,'ProjectPage','2015-07-06 01:23:23','2016-05-19 23:31:53','aoc','Australian Olympic Committee',NULL,'<p>Positioning the Australian Olympic Team.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',8),
	(402,30,12,1,1,1,'ProjectPage','2014-12-08 17:58:43','2016-05-19 23:37:21','getty-image-services-guide','Getty Images',NULL,'<p>We\'ve done 15 years of smart work together.</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',8),
	(403,17,11,1,1,1,'ProjectPage','2014-11-27 21:11:49','2016-05-19 23:38:44','opal','SA Health',NULL,'<p>Social marketing branding and communications campaign.</p>',NULL,NULL,1,1,22,0,0,NULL,'Inherit','Inherit',8),
	(404,34,8,1,1,1,'ProjectPage','2014-12-11 15:28:41','2016-05-19 23:39:29','blackout','Stone/Castro',NULL,'<p>Integrated communications for Stone/Castro\'s world premiere of Blackout.</p>',NULL,NULL,1,1,25,0,0,NULL,'Inherit','Inherit',8),
	(405,51,10,1,1,1,'ProjectPage','2015-07-06 01:23:23','2016-06-01 22:22:36','aoc','Australian Olympic Committee',NULL,'<p>Positioning the Australian Olympic Team.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',8),
	(406,52,9,1,1,1,'ProjectPage','2015-07-06 19:41:15','2016-06-01 22:47:51','wdc','World Design Capital',NULL,'<p>Better life through Design</p>',NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',8),
	(407,52,10,1,1,1,'ProjectPage','2015-07-06 19:41:15','2016-06-01 22:56:15','wdc','World Design Capital',NULL,'<p>Better life through Design</p>',NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',8),
	(408,52,11,1,1,1,'ProjectPage','2015-07-06 19:41:15','2016-06-01 22:58:40','wdc','World Design Capital',NULL,'<p>Better life through Design</p>',NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',8),
	(409,16,18,1,1,1,'ProjectPage','2014-11-27 20:30:55','2016-06-01 23:12:32','paula-scher','Paula Scher',NULL,'<p>Shot at Pentagram in New York, a series of films for Getty Images Global. </p>\n<p> </p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',8),
	(410,43,12,1,1,1,'ShopPage','2014-12-16 04:54:23','2016-06-02 01:48:21','shop','shop','Shop','<p>Rodeo Shop is our online store. It’s a space where you can view some of our personal projects. Posters, books and other things. We’re still sorting out the ordering system, but in the meantime join our mailing list for future shop talk and other info.</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',0),
	(411,7,30,1,1,1,'ContactPage','2014-11-11 14:21:30','2016-06-02 01:50:12','contact','Contact',NULL,'<p>We\'re into design because we\'re into people. There\'s a lot of talk about design thinking as a work process and although it has always been the framework for developing our strategy and creative we also believe it needs to function hand in glove with community engagement. When the community can engage it forces good design to be responsive, to change, to face emerging ideas, meet new challenges and mobilise opportunity.</p>\n<p>The story behind our work space is essentially a real expression of this concept. We shared the idea with other smart people who were also up for ideas. Together we designed and adapted an empty mechanics warehouse on the city fringe into a dynamic cafe with awesome coffee, design studios, specialist art gallery and a flexible event space. It is equal parts an expression of our thinking and an experiment in action. When we discover something that doesn\'t work, we just re-design it.</p>\n<p>Come and visit, drink fine coffee and talk some more!</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(412,2,15,1,1,1,'AboutPage','2014-11-11 13:25:47','2016-06-02 02:19:25','about','About',NULL,'<p>Rodeo was founded in 2005 as a design and communications company. Over the past ten years there’s been a lot of change—our industry has evolved, our clients’ challenges have become more complex, communication has diversified—and so have we. But the belief that we started with, that intuitive and engaging experiences will move people, is still fundamental to everything we do.</p>\n<p>Rodeo develops strategies based on communication and applied design thinking at every stage of project development. We turn these insights and strategies into experiences that people engage with, connect with and interact with. We believe we have a responsibility to innovate — to find new expressions and solutions for common issues. We do this on a daily basis for our clients, but also seek to have an impact on the wider community, be it local, national or global. We also believe our work should contribute to the cultural landscape – lasting beyond the campaign timeframe and be more meaningful than merely meeting the objectives of a brief.<br><br>Lets start something amazing!</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),
	(413,22,13,1,1,1,'ProjectPage','2014-11-30 23:41:03','2016-06-03 01:00:55','atlas-wines','Atlas Wines',NULL,'<p>The past that\'s in the earth makes a certain grape.</p>',NULL,NULL,1,1,18,0,0,NULL,'Inherit','Inherit',8),
	(414,22,14,1,1,1,'ProjectPage','2014-11-30 23:41:03','2016-06-03 01:41:34','atlas-wines','Atlas Wines',NULL,'<p>The past that\'s in the earth makes a certain grape.</p>',NULL,NULL,1,1,18,0,0,NULL,'Inherit','Inherit',8);

/*!40000 ALTER TABLE `SiteTree_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SiteTree_ViewerGroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree_ViewerGroups`;

CREATE TABLE `SiteTree_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table Student
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Student`;

CREATE TABLE `Student` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Student') CHARACTER SET utf8 DEFAULT 'Student',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `University` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ProjectID` int(11) NOT NULL DEFAULT '0',
  `SortID` int(11) NOT NULL DEFAULT '0',
  `MainImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ProjectID` (`ProjectID`),
  KEY `ClassName` (`ClassName`),
  KEY `MainImageID` (`MainImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Student` WRITE;
/*!40000 ALTER TABLE `Student` DISABLE KEYS */;

INSERT INTO `Student` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `University`, `ProjectID`, `SortID`, `MainImageID`)
VALUES
	(1,'Student','2014-11-12 14:27:41','2014-11-12 14:28:57','Fred Blogs','Berlin',0,0,0),
	(2,'Student','2014-11-12 14:28:10','2014-11-12 14:38:55','Hello World','Adelaide',0,1,0),
	(3,'Student','2014-11-12 14:39:11','2014-11-13 09:25:45','A','B',12,2,8),
	(4,'Student','2014-11-12 14:39:27','2014-11-13 09:25:27','ACE','D',12,1,5);

/*!40000 ALTER TABLE `Student` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table VirtualPage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `VirtualPage`;

CREATE TABLE `VirtualPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table VirtualPage_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `VirtualPage_Live`;

CREATE TABLE `VirtualPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table VirtualPage_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `VirtualPage_versions`;

CREATE TABLE `VirtualPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
