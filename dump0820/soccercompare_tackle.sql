-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: soccercompare
-- ------------------------------------------------------
-- Server version	8.0.15

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

--
-- Table structure for table `tackle`
--

DROP TABLE IF EXISTS `tackle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tackle` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `roundNum` int(11) NOT NULL,
  `team` varchar(45) DEFAULT NULL,
  `player` varchar(45) DEFAULT NULL,
  `tackleAtt` int(11) NOT NULL DEFAULT '0',
  `tackleScc` int(11) NOT NULL DEFAULT '0',
  `tackle(%)` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`num`),
  KEY `team_idx` (`team`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tackle`
--

LOCK TABLES `tackle` WRITE;
/*!40000 ALTER TABLE `tackle` DISABLE KEYS */;
INSERT INTO `tackle` VALUES (1,1,'Liverpool','Trent Alexander-Arnold',2,1,50),(2,1,'Liverpool','Virgil van Dijk',3,3,100),(3,1,'Liverpool','Joe Gomez',2,2,100),(4,1,'Liverpool','Andrew Robertson',1,1,100),(5,1,'Liverpool','Fabinho',9,8,88.8),(6,1,'Liverpool','Jordan Henderson',4,2,50),(7,1,'Liverpool','Roberto Firmino',3,1,33.3),(8,1,'Liverpool','Divock Origi',3,3,100),(9,1,'Liverpool','Georginio Wijnaldum',1,0,0),(10,1,'Liverpool','mohamed Salah',2,0,0),(11,1,'Liverpool','Sadio Mane',1,0,0),(12,1,'Norwich','Max Arons',3,3,100),(13,1,'Norwich','Grant Hanley',2,0,0),(14,1,'Norwich','Jamal Lewis',1,1,100),(15,1,'Norwich','Tom Trybull',5,1,20),(16,1,'Norwich','Kenny McLean',2,2,100),(17,1,'Norwich','Emiliano Buendia',2,1,50),(18,1,'Norwich','Marco Stiepermann',1,1,100),(19,1,'Norwich','Todd Cantwell',4,2,50),(20,1,'Norwich','Teemu Pukki',1,1,100),(21,1,'Norwich','Moritz Leitner',2,0,0);
/*!40000 ALTER TABLE `tackle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-20 17:19:44
