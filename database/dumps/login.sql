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
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `account_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(23) NOT NULL DEFAULT '',
  `user_pass` varchar(32) NOT NULL DEFAULT '',
  `sex` enum('M','F','S') NOT NULL DEFAULT 'M',
  `email` varchar(39) NOT NULL DEFAULT '',
  `group_id` tinyint(3) NOT NULL DEFAULT 0,
  `state` int(11) unsigned NOT NULL DEFAULT 0,
  `unban_time` int(11) unsigned NOT NULL DEFAULT 0,
  `expiration_time` int(11) unsigned NOT NULL DEFAULT 0,
  `logincount` mediumint(9) unsigned NOT NULL DEFAULT 0,
  `lastlogin` datetime DEFAULT NULL,
  `last_ip` varchar(100) NOT NULL DEFAULT '',
  `birthdate` date DEFAULT NULL,
  `character_slots` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `pincode` varchar(4) NOT NULL DEFAULT '',
  `pincode_change` int(11) unsigned NOT NULL DEFAULT 0,
  `vip_time` int(11) unsigned NOT NULL DEFAULT 0,
  `old_group` tinyint(3) NOT NULL DEFAULT 0,
  `web_auth_token` varchar(17) DEFAULT NULL,
  `web_auth_token_enabled` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`account_id`),
  UNIQUE KEY `web_auth_token_key` (`web_auth_token`),
  KEY `name` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=2000101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES
(1,'s1','p1','S','athena@athena.com',0,0,0,0,26,'2026-08-30 07:39:09','172.31.11.87',NULL,0,'',0,0,0,NULL,0),
(2000000,'MISHUUUU','panchito42','F','a@a.com',99,0,0,0,15,'2026-08-30 07:43:16','186.10.41.57',NULL,15,'0358',1787206043,0,0,'3f90206f881c5974',0),
(2000001,'usu_m01','123456','M','user1@mail.com',0,0,0,0,4,'2026-08-30 08:28:47','186.10.41.57',NULL,0,'0358',1788074213,0,0,'7223f02402cc9f28',0),
(2000002,'usu_f01','123456','F','user2@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000003,'usu_m02','123456','M','user3@mail.com',0,0,0,0,2,'2026-08-30 07:39:30','186.10.41.57',NULL,0,'',0,0,0,'08c7dceaa25a04ef',0),
(2000004,'usu_f02','123456','F','user4@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000005,'usu_m03','123456','M','user5@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000006,'usu_f03','123456','F','user6@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000007,'usu_m04','123456','M','user7@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000008,'usu_f04','123456','F','user8@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000009,'usu_m05','123456','M','user9@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000010,'usu_f05','123456','F','user10@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000011,'usu_m06','123456','M','user11@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000012,'usu_f06','123456','F','user12@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000013,'usu_m07','123456','M','user13@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000014,'usu_f07','123456','F','user14@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000015,'usu_m08','123456','M','user15@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000016,'usu_f08','123456','F','user16@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000017,'usu_m09','123456','M','user17@mail.com',0,0,0,0,1,'2026-08-30 07:42:44','186.10.41.57',NULL,0,'',0,0,0,'0bf6ffd5f832b8e2',0),
(2000018,'usu_f09','123456','F','user18@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000019,'usu_m10','123456','M','user19@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000020,'usu_f10','123456','F','user20@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000021,'usu_m11','123456','M','user21@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000022,'usu_f11','123456','F','user22@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000023,'usu_m12','123456','M','user23@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000024,'usu_f12','123456','F','user24@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000025,'usu_m13','123456','M','user25@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000026,'usu_f13','123456','F','user26@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000027,'usu_m14','123456','M','user27@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000028,'usu_f14','123456','F','user28@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000029,'usu_m15','123456','M','user29@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000030,'usu_f15','123456','F','user30@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000031,'usu_m16','123456','M','user31@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000032,'usu_f16','123456','F','user32@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000033,'usu_m17','123456','M','user33@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000034,'usu_f17','123456','F','user34@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000035,'usu_m18','123456','M','user35@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000036,'usu_f18','123456','F','user36@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000037,'usu_m19','123456','M','user37@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000038,'usu_f19','123456','F','user38@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000039,'usu_m20','123456','M','user39@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000040,'usu_f20','123456','F','user40@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000041,'usu_m21','123456','M','user41@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000042,'usu_f21','123456','F','user42@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000043,'usu_m22','123456','M','user43@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000044,'usu_f22','123456','F','user44@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000045,'usu_m23','123456','M','user45@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000046,'usu_f23','123456','F','user46@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000047,'usu_m24','123456','M','user47@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000048,'usu_f24','123456','F','user48@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000049,'usu_m25','123456','M','user49@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000050,'usu_f25','123456','F','user50@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000051,'usu_m26','123456','M','user51@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000052,'usu_f26','123456','F','user52@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000053,'usu_m27','123456','M','user53@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000054,'usu_f27','123456','F','user54@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000055,'usu_m28','123456','M','user55@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000056,'usu_f28','123456','F','user56@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000057,'usu_m29','123456','M','user57@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000058,'usu_f29','123456','F','user58@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000059,'usu_m30','123456','M','user59@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000060,'usu_f30','123456','F','user60@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000061,'usu_m31','123456','M','user61@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000062,'usu_f31','123456','F','user62@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000063,'usu_m32','123456','M','user63@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000064,'usu_f32','123456','F','user64@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000065,'usu_m33','123456','M','user65@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000066,'usu_f33','123456','F','user66@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000067,'usu_m34','123456','M','user67@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000068,'usu_f34','123456','F','user68@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000069,'usu_m35','123456','M','user69@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000070,'usu_f35','123456','F','user70@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000071,'usu_m36','123456','M','user71@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000072,'usu_f36','123456','F','user72@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000073,'usu_m37','123456','M','user73@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000074,'usu_f37','123456','F','user74@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000075,'usu_m38','123456','M','user75@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000076,'usu_f38','123456','F','user76@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000077,'usu_m39','123456','M','user77@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000078,'usu_f39','123456','F','user78@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000079,'usu_m40','123456','M','user79@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000080,'usu_f40','123456','F','user80@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000081,'usu_m41','123456','M','user81@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000082,'usu_f41','123456','F','user82@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000083,'usu_m42','123456','M','user83@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000084,'usu_f42','123456','F','user84@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000085,'usu_m43','123456','M','user85@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000086,'usu_f43','123456','F','user86@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000087,'usu_m44','123456','M','user87@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000088,'usu_f44','123456','F','user88@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000089,'usu_m45','123456','M','user89@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000090,'usu_f45','123456','F','user90@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000091,'usu_m46','123456','M','user91@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000092,'usu_f46','123456','F','user92@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000093,'usu_m47','123456','M','user93@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000094,'usu_f47','123456','F','user94@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000095,'usu_m48','123456','M','user95@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000096,'usu_f48','123456','F','user96@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000097,'usu_m49','123456','M','user97@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000098,'usu_f49','123456','F','user98@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000099,'usu_m50','123456','M','user99@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0),
(2000100,'usu_f50','123456','F','user100@mail.com',0,0,0,0,0,NULL,'',NULL,0,'',0,0,0,NULL,0);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
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

-- Dump completed on 2026-08-30  9:06:15
