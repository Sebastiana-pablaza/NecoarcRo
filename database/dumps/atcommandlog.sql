/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: rathena
-- ------------------------------------------------------
-- Server version	11.8.6-MariaDB-5ubuntu0.1 from Ubuntu

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `atcommandlog`
--

DROP TABLE IF EXISTS `atcommandlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `atcommandlog` (
  `atcommand_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `atcommand_date` datetime NOT NULL,
  `account_id` int(11) unsigned NOT NULL DEFAULT 0,
  `char_id` int(11) unsigned NOT NULL DEFAULT 0,
  `char_name` varchar(25) NOT NULL DEFAULT '',
  `map` varchar(11) NOT NULL DEFAULT '',
  `command` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`atcommand_id`),
  KEY `account_id` (`account_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atcommandlog`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `atcommandlog` WRITE;
/*!40000 ALTER TABLE `atcommandlog` DISABLE KEYS */;
INSERT INTO `atcommandlog` VALUES
(1,'2026-08-26 00:23:26',2000000,150000,'Mishu','izlude','@warp izlude'),
(2,'2026-08-26 00:23:31',2000000,150000,'Mishu','izlude','@warp izlude'),
(3,'2026-08-26 00:23:33',2000000,150000,'Mishu','izlude','@warp izlude'),
(4,'2026-08-26 00:23:39',2000000,150000,'Mishu','izlude','@speed 0'),
(5,'2026-08-26 00:26:11',2000000,150000,'Mishu','izlude','@speed 1'),
(6,'2026-08-26 00:26:16',2000000,150000,'Mishu','izlude','@speed 2'),
(7,'2026-08-26 00:26:22',2000000,150000,'Mishu','izlude','@speed  10'),
(8,'2026-08-26 00:26:33',2000000,150000,'Mishu','payon','@go payon'),
(9,'2026-08-26 00:28:15',2000000,150000,'Mishu','dic_dun01','@warp dic_dun01'),
(10,'2026-08-26 00:28:26',2000000,150000,'Mishu','prontera','@go prontera'),
(11,'2026-08-26 00:28:30',2000000,150000,'Mishu','prontera','@raise'),
(12,'2026-08-26 00:29:17',2000000,150000,'Mishu','rachel','@go rachel'),
(13,'2026-08-26 00:29:27',2000000,150000,'Mishu','rachel','@blvl 100'),
(14,'2026-08-26 00:29:41',2000000,150000,'Mishu','rachel','@jlvl 100'),
(15,'2026-08-26 00:35:31',2000000,150000,'Mishu','prontera','@go prontera'),
(16,'2026-08-26 00:36:10',2000000,150000,'Mishu','izlude','@go izlude'),
(17,'2026-08-26 00:37:29',2000000,150000,'Mishu','morocc','@go morroc'),
(18,'2026-08-26 00:38:35',2000000,150000,'Mishu','morocc','@item 1599'),
(19,'2026-08-26 00:39:59',2000000,150000,'Mishu','morocc','@item 2199'),
(20,'2026-08-29 00:00:18',2000000,150000,'Mishu','payon','@go payon');
/*!40000 ALTER TABLE `atcommandlog` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-09-11  3:05:33
