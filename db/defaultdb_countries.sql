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
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `name` varchar(255) DEFAULT NULL,
  `primary_color` varchar(7) DEFAULT NULL,
  `secondary_color` varchar(7) DEFAULT NULL,
  `fifa_rank` int DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `hat` int DEFAULT NULL,
  `playoff` varchar(1) DEFAULT NULL,
  `ID` int NOT NULL,
  `groupGroupId` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES ('Italy','#3399FF','#FFFFFF',9,'it',4,NULL,1,23),('Germany','#FFFFFF','#18222F',16,'de',1,NULL,2,21),('Portugal','#E35169','#2ECDA7',6,'pt',1,NULL,3,23),('Spain','#E35169','#FFC23B',8,'es',1,NULL,4,22),('Belgium','#E35169','#18222F',5,'be',1,NULL,5,20),('England','#FFFFFF','#E35169',4,'gb-eng',1,NULL,6,19),('Hungary','#E35169','#2ECDA7',30,'hu',2,NULL,7,23),('Turkey','#E35169','#FFFFFF',38,'tr',2,NULL,8,19),('Romania','#FFC23B','#005FFF',48,'ro',2,NULL,9,22),('Denmark','#E35169','#FFFFFF',19,'dk',2,NULL,10,21),('Albania','#E35169','#18222F',59,'al',2,NULL,11,20),('Austria','#FFFFFF','#18222F',25,'at',2,NULL,12,24),('Netherlands','#FFA439','#FFFFFF',7,'nl',3,NULL,13,19),('Scotland','#000080','#FFFFFF',34,'gb-sct',3,NULL,14,20),('Croatia','#FFFFFF','#E35169',10,'hr',3,NULL,15,22),('Slovenia','#FFFFFF','#E35169',54,'si',3,NULL,16,23),('Slovakia','#FFFFFF','#E35169',50,'sk',3,NULL,17,21),('Czech','#E35169','#0051FF',41,'cz',3,NULL,18,24),('Serbia','#E35169','#0026FF',29,'rs',4,NULL,19,17),('Switzerland','#E35169','#FFFFFF',14,'ch',4,NULL,20,16),('Wales','#FFFFFF','#09BB75',28,'gb-wls',4,'A',21,20),('Finland','#FFFFFF','#3399FF',62,'fi',4,'A',22,15),('Poland','#FFFFFF','#E35169',31,'pl',4,'A',23,19),('Estonia','#FFFFFF','#3399FF',118,'ee',4,'A',24,14),('Bosnia Herzegovina','#FFC23B','#3399FF',63,'ba',4,'B',25,22),('Ukraine','#FFC23B','#3399FF',22,'ua',4,'B',26,4),('Israël','#FFFFFF','#3399FF',71,'il',4,'B',27,21),('Island','#272CFF','#E35169',67,'is',4,'B',28,14),('Georgia','#FFFFFF','#E35169',76,'ge',4,'C',29,24),('Luxembourg','#E35169','#3399FF',87,'lu',4,'C',30,2),('Greece','#3399FF','#FFFFFF',51,'gr',4,'C',31,23),('Kazakhstan','#FFC23B','#3399FF',98,'kz',4,'C',32,NULL),('France','#0000BA','#E35169',2,'fr',1,NULL,33,24);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
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

-- Dump completed on 2023-12-20  9:58:45
