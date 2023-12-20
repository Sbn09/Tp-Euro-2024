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
-- Table structure for table `groupes_countries_list_countries`
--

DROP TABLE IF EXISTS `groupes_countries_list_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groupes_countries_list_countries` (
  `groupesGroupId` int NOT NULL,
  `countriesId` int NOT NULL,
  PRIMARY KEY (`groupesGroupId`,`countriesId`),
  KEY `IDX_9f423462af62ffc492ee5d04fe` (`groupesGroupId`),
  KEY `IDX_2e1d96c1f2b8c4abf07547f7f9` (`countriesId`),
  CONSTRAINT `FK_2e1d96c1f2b8c4abf07547f7f9c` FOREIGN KEY (`countriesId`) REFERENCES `countries` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_9f423462af62ffc492ee5d04fed` FOREIGN KEY (`groupesGroupId`) REFERENCES `groupes` (`groupId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupes_countries_list_countries`
--

LOCK TABLES `groupes_countries_list_countries` WRITE;
/*!40000 ALTER TABLE `groupes_countries_list_countries` DISABLE KEYS */;
INSERT INTO `groupes_countries_list_countries` VALUES (85,5),(85,9),(85,17),(85,23),(86,2),(86,8),(86,15),(86,25),(87,4),(87,7),(87,13),(87,28),(88,3),(88,10),(88,14),(88,21),(89,6),(89,11),(89,16),(89,31),(90,12),(90,18),(90,19),(90,33);
/*!40000 ALTER TABLE `groupes_countries_list_countries` ENABLE KEYS */;
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

-- Dump completed on 2023-12-20 14:46:09
