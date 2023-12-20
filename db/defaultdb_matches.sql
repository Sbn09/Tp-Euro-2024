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

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '3480bdaa-9e59-11ee-9075-7e5231e2a079:1-1206';

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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matches`
--

LOCK TABLES `matches` WRITE;
/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
INSERT INTO `matches` VALUES (1,0,0,'draw',16,23,13,1),(2,2,4,'loss',16,23,8,1),(3,3,1,'win',16,23,6,1),(4,1,2,'loss',16,13,8,1),(5,0,4,'loss',16,13,6,1),(6,0,2,'loss',16,8,6,1),(7,4,0,'win',16,21,14,1),(8,2,0,'win',16,21,11,1),(9,3,1,'win',16,21,5,1),(10,2,1,'win',16,14,11,1),(11,2,4,'loss',16,14,5,1),(12,2,3,'loss',16,11,5,1),(13,3,2,'win',16,27,17,1),(14,4,0,'win',16,27,10,1),(15,4,0,'win',16,27,2,1),(16,4,1,'win',16,17,10,1),(17,2,4,'loss',16,17,2,1),(18,1,4,'loss',16,10,2,1),(19,4,2,'win',16,25,15,1),(20,2,2,'draw',16,25,9,1),(21,2,0,'win',16,25,4,1),(22,2,2,'draw',16,15,9,1),(23,0,1,'loss',16,15,4,1),(24,1,3,'loss',16,9,4,1),(25,2,4,'loss',16,31,16,1),(26,2,3,'loss',16,31,7,1),(27,4,3,'win',16,31,3,1),(28,3,3,'draw',16,31,1,1),(29,3,2,'win',16,16,7,1),(30,3,4,'loss',16,16,3,1),(31,2,1,'win',16,16,1,1),(32,0,0,'draw',16,7,3,1),(33,3,4,'loss',16,7,1,1),(34,2,3,'loss',16,3,1,1),(35,4,2,'win',16,33,29,1),(36,1,0,'win',16,33,18,1),(37,4,4,'draw',16,33,12,1),(38,1,3,'loss',16,29,18,1),(39,3,3,'draw',16,29,12,1),(40,1,3,'loss',16,18,12,1),(41,2,4,'loss',99,23,13,1),(42,0,0,'draw',99,23,8,1),(43,0,1,'loss',99,23,6,1),(44,4,4,'draw',99,13,8,1),(45,0,0,'draw',99,13,6,1),(46,4,0,'win',99,8,6,1),(47,4,4,'draw',99,21,14,1),(48,1,3,'loss',99,21,11,1),(49,4,2,'win',99,21,5,1),(50,2,1,'win',99,14,11,1),(51,0,4,'loss',99,14,5,1),(52,4,4,'draw',99,11,5,1),(53,0,2,'loss',99,27,17,1),(54,0,2,'loss',99,27,10,1),(55,4,1,'win',99,27,2,1),(56,0,0,'draw',99,17,10,1),(57,2,3,'loss',99,17,2,1),(58,1,0,'win',99,10,2,1),(59,1,4,'loss',99,25,15,1),(60,3,3,'draw',99,25,9,1),(61,0,0,'draw',99,25,4,1),(62,4,2,'win',99,15,9,1),(63,1,3,'loss',99,15,4,1),(64,4,1,'win',99,9,4,1),(65,2,3,'loss',99,31,16,1),(66,1,2,'loss',99,31,7,1),(67,3,3,'draw',99,31,3,1),(68,2,3,'loss',99,31,1,1),(69,2,3,'loss',99,16,7,1),(70,4,4,'draw',99,16,3,1),(71,1,2,'loss',99,16,1,1),(72,2,3,'loss',99,7,3,1),(73,4,2,'win',99,7,1,1),(74,3,0,'win',99,3,1,1),(75,4,2,'win',99,33,29,1),(76,4,0,'win',99,33,18,1),(77,2,1,'win',99,33,12,1),(78,3,1,'win',99,29,18,1),(79,0,0,'draw',99,29,12,1),(80,0,2,'loss',99,18,12,1),(81,0,0,'draw',99,23,13,2),(82,1,4,'loss',99,23,8,2),(83,1,3,'loss',99,23,6,2),(84,3,4,'loss',99,13,8,2),(85,2,2,'draw',99,13,6,2),(86,1,1,'draw',99,8,6,2),(87,0,0,'draw',99,21,14,2),(88,0,0,'draw',99,21,11,2),(89,0,4,'loss',99,21,5,2),(90,0,4,'loss',99,14,11,2),(91,1,3,'loss',99,14,5,2),(92,2,0,'win',99,11,5,2),(93,3,4,'loss',99,27,17,2),(94,1,1,'draw',99,27,10,2),(95,4,4,'draw',99,27,2,2),(96,1,3,'loss',99,17,10,2),(97,4,0,'win',99,17,2,2),(98,1,3,'loss',99,10,2,2),(99,4,2,'win',99,25,15,2),(100,2,1,'win',99,25,9,2),(101,2,0,'win',99,25,4,2),(102,1,2,'loss',99,15,9,2),(103,0,1,'loss',99,15,4,2),(104,1,2,'loss',99,9,4,2),(105,0,2,'loss',99,31,16,2),(106,4,1,'win',99,31,7,2),(107,0,4,'loss',99,31,3,2),(108,1,4,'loss',99,31,1,2),(109,0,1,'loss',99,16,7,2),(110,2,4,'loss',99,16,3,2),(111,2,3,'loss',99,16,1,2),(112,3,4,'loss',99,7,3,2),(113,2,4,'loss',99,7,1,2),(114,1,3,'loss',99,3,1,2),(115,2,2,'draw',99,33,29,2),(116,2,1,'win',99,33,18,2),(117,2,0,'win',99,33,12,2),(118,3,1,'win',99,29,18,2),(119,4,1,'win',99,29,12,2),(120,4,2,'win',99,18,12,2),(121,4,0,'win',16,1,3,2),(122,1,4,'loss',16,25,8,2),(123,2,4,'loss',16,17,29,2),(124,3,4,'loss',16,5,11,2),(125,2,1,'win',16,33,4,2),(126,3,4,'loss',16,2,7,2),(127,0,1,'loss',16,6,16,2),(128,4,1,'win',16,18,10,2),(129,4,3,'win',4,1,25,2),(130,4,1,'win',4,17,5,2),(131,1,0,'win',4,33,2,2),(132,4,3,'win',4,6,18,2),(133,0,1,'loss',2,1,17,2),(134,4,4,'win',2,33,6,2),(135,4,3,'win',1,1,33,2);
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

-- Dump completed on 2023-12-20  9:58:47
