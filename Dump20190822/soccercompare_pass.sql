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
-- Table structure for table `pass`
--

DROP TABLE IF EXISTS `pass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pass` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `roundNum` int(11) NOT NULL,
  `team` varchar(45) DEFAULT NULL,
  `player` varchar(45) DEFAULT NULL,
  `passAtt` int(11) NOT NULL DEFAULT '0',
  `passScc` int(11) NOT NULL DEFAULT '0',
  `ps(%)` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pass`
--

LOCK TABLES `pass` WRITE;
/*!40000 ALTER TABLE `pass` DISABLE KEYS */;
INSERT INTO `pass` VALUES (2,1,'Liverpool','Alisson',11,9,81.8),(3,1,'Liverpool','Trent Alexander-Arnold',40,24,60),(4,1,'Liverpool','Virgil van Dijk',57,50,87.7),(5,1,'Liverpool','Joe Gomez',54,45,83.3),(6,1,'Liverpool','Andrew Robertson',70,64,91.4),(7,1,'Liverpool','Fabinho',42,33,78.6),(8,1,'Liverpool','Georginio Wijnaldum',39,36,92.3),(9,1,'Liverpool','Jordan Henderson',54,45,83.3),(10,1,'Liverpool','Mohamed Salah',30,22,73.3),(11,1,'Liverpool','Roberto Firmino',30,23,76.7),(12,1,'Liverpool','Divock Origi',18,11,61.1),(13,1,'Liverpool','Sadio Mane',11,9,81.8),(14,1,'Liverpool','Adrian',18,14,77.8),(15,1,'Liverpool','James Milner',3,2,66.7),(16,1,'Norwich','Tim Krul',46,25,54.4),(17,1,'Norwich','Max Arons',25,18,72),(18,1,'Norwich','Ben Godfrey',43,35,81.4),(19,1,'Norwich','Grant Hanley',26,24,92.3),(20,1,'Norwich','Jamal Lewis',33,25,75.8),(21,1,'Norwich','Tom Trybull',35,31,88.6),(22,1,'Norwich','Kenny McLean',32,29,90.6),(23,1,'Norwich','Emiliano Buendia',34,24,70.6),(24,1,'Norwich','Marco Stiepermann',16,11,68.8),(25,1,'Norwich','Todd Cantwell',34,28,82.4),(26,1,'Norwich','Teemu Pukki',14,9,64.3),(27,1,'Norwich','Moritz Leitner',16,14,87.5),(28,1,'Norwich','Onel Hernandez',6,3,50),(29,1,'Norwich','Josip Drmic',3,2,66.7);
/*!40000 ALTER TABLE `pass` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-22 17:14:25
