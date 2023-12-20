-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: mysql-29f3fa79-remi-8c9e.a.aivencloud.com    Database: defaultdb
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '3480bdaa-9e59-11ee-9075-7e5231e2a079:1-1587';

--
-- Table structure for table `matches`
--

DROP TABLE IF EXISTS `matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matches` (
  `matchId` int NOT NULL AUTO_INCREMENT,
  `homeTeamGoals` int NOT NULL,
  `awayTeamGoals` int NOT NULL,
  `result` varchar(255) NOT NULL,
  `level` int NOT NULL,
  `homeTeamId` int DEFAULT NULL,
  `awayTeamId` int DEFAULT NULL,
  `competionId` int DEFAULT NULL,
  PRIMARY KEY (`matchId`),
  KEY `FK_999a74ecaebaf96816112445a09` (`homeTeamId`),
  KEY `FK_c5505de389fa5fca7ddce29fa49` (`awayTeamId`),
  KEY `FK_11da586b0ebe78394e70598e1b4` (`competionId`),
  CONSTRAINT `FK_11da586b0ebe78394e70598e1b4` FOREIGN KEY (`competionId`) REFERENCES `competitions` (`id`),
  CONSTRAINT `FK_999a74ecaebaf96816112445a09` FOREIGN KEY (`homeTeamId`) REFERENCES `countries` (`ID`),
  CONSTRAINT `FK_c5505de389fa5fca7ddce29fa49` FOREIGN KEY (`awayTeamId`) REFERENCES `countries` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=427 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matches`
--

LOCK TABLES `matches` WRITE;
/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
INSERT INTO `matches` VALUES (325,1,3,'loss',99,26,16,12),(326,4,3,'win',99,26,7,12),(327,3,4,'loss',99,26,3,12),(328,3,1,'win',99,16,7,12),(329,2,4,'loss',99,16,3,12),(330,4,4,'draw',99,7,3,12),(331,0,1,'loss',99,24,14,12),(332,3,0,'win',99,24,10,12),(333,3,2,'win',99,24,4,12),(334,4,2,'win',99,14,10,12),(335,2,0,'win',99,14,4,12),(336,0,3,'loss',99,10,4,12),(337,1,2,'loss',99,30,13,12),(338,1,2,'loss',99,30,8,12),(339,3,2,'win',99,30,5,12),(340,4,4,'draw',99,13,8,12),(341,1,0,'win',99,13,5,12),(342,2,1,'win',99,8,5,12),(343,2,0,'win',99,28,17,12),(344,3,1,'win',99,28,11,12),(345,4,1,'win',99,28,2,12),(346,2,3,'loss',99,17,11,12),(347,0,3,'loss',99,17,2,12),(348,1,3,'loss',99,11,2,12),(349,4,3,'win',99,25,15,12),(350,2,0,'win',99,25,9,12),(351,2,3,'loss',99,25,6,12),(352,3,0,'win',99,15,9,12),(353,0,0,'draw',99,15,6,12),(354,3,1,'win',99,9,6,12),(355,3,2,'win',99,33,31,12),(356,3,2,'win',99,33,18,12),(357,2,3,'loss',99,33,12,12),(358,1,1,'draw',99,31,18,12),(359,3,3,'draw',99,31,12,12),(360,0,2,'loss',99,18,12,12),(361,0,4,'loss',16,28,14,12),(362,4,2,'win',16,3,8,12),(363,3,1,'win',16,12,16,12),(364,0,1,'loss',16,25,33,12),(365,1,3,'loss',16,2,13,12),(366,1,2,'loss',16,24,26,12),(367,3,0,'win',16,15,4,12),(368,3,4,'loss',16,11,30,12),(369,2,3,'loss',4,28,3,12),(370,3,3,'loss',4,12,25,12),(371,1,3,'loss',4,2,24,12),(372,2,3,'loss',4,15,11,12),(373,1,4,'loss',2,28,12,12),(374,4,3,'win',2,2,15,12),(375,0,0,'loss',1,28,2,12),(376,3,3,'draw',99,5,9,15),(377,0,0,'draw',99,5,17,15),(378,3,4,'loss',99,5,23,15),(379,4,3,'win',99,9,17,15),(380,3,4,'loss',99,9,23,15),(381,4,4,'draw',99,17,23,15),(382,1,0,'win',99,2,8,15),(383,2,3,'loss',99,2,15,15),(384,0,2,'loss',99,2,25,15),(385,2,3,'loss',99,8,15,15),(386,1,3,'loss',99,8,25,15),(387,1,1,'draw',99,15,25,15),(388,3,0,'win',99,4,7,15),(389,1,1,'draw',99,4,13,15),(390,0,3,'loss',99,4,28,15),(391,3,4,'loss',99,7,13,15),(392,0,1,'loss',99,7,28,15),(393,1,1,'draw',99,13,28,15),(394,0,1,'loss',99,3,10,15),(395,0,3,'loss',99,3,14,15),(396,1,2,'loss',99,3,21,15),(397,3,1,'win',99,10,14,15),(398,3,4,'loss',99,10,21,15),(399,4,3,'win',99,14,21,15),(400,2,4,'loss',99,6,11,15),(401,4,4,'draw',99,6,16,15),(402,1,0,'win',99,6,31,15),(403,1,2,'loss',99,11,16,15),(404,4,1,'win',99,11,31,15),(405,4,0,'win',99,16,31,15),(406,1,0,'win',99,12,18,15),(407,3,3,'draw',99,12,19,15),(408,2,2,'draw',99,12,33,15),(409,3,1,'win',99,18,19,15),(410,4,1,'win',99,18,33,15),(411,1,3,'loss',99,19,33,15),(412,3,2,'win',16,23,16,15),(413,1,2,'loss',16,11,21,15),(414,2,4,'loss',16,14,10,15),(415,3,0,'win',16,15,18,15),(416,3,4,'loss',16,25,28,15),(417,0,2,'loss',16,9,6,15),(418,0,4,'loss',16,12,13,15),(419,4,1,'win',16,33,4,15),(420,1,1,'loss',4,23,11,15),(421,1,3,'loss',4,14,15,15),(422,2,3,'loss',4,25,9,15),(423,4,2,'win',4,12,33,15),(424,3,3,'win',2,23,14,15),(425,2,4,'loss',2,25,12,15),(426,1,1,'win',1,23,25,15);
/*!40000 ALTER TABLE `matches` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-20 14:46:11
