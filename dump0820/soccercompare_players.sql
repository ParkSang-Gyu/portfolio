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
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `team` varchar(45) DEFAULT NULL,
  `player` varchar(45) DEFAULT NULL,
  `nationality` varchar(45) DEFAULT NULL,
  `age` int(11) NOT NULL,
  `backNum` int(11) NOT NULL,
  `position` varchar(45) DEFAULT NULL,
  `height` varchar(45) DEFAULT NULL,
  `weight` varchar(45) DEFAULT NULL,
  `appearances` int(11) NOT NULL,
  `minutes` int(11) NOT NULL,
  `goals` int(11) NOT NULL,
  `assists` int(11) NOT NULL,
  `yellowCard` int(11) NOT NULL,
  `redCard` int(11) NOT NULL,
  `psr` double NOT NULL,
  `rating` double NOT NULL,
  `motm` int(11) NOT NULL,
  PRIMARY KEY (`num`),
  KEY `team_idx` (`team`),
  CONSTRAINT `team` FOREIGN KEY (`team`) REFERENCES `teams` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Liverpool','Roberto Firmino','Brazil',28,9,'FW','181cm','76kg',0,0,0,0,0,0,0,0,0),(2,'Liverpool','Mohamed Salah','Egypt',27,11,'FW','175cm','71kg',0,0,0,0,0,0,0,0,0),(3,'Liverpool','Sadio Mane','Senegal',27,10,'FW','175cm','69kg',0,0,0,0,0,0,0,0,0),(4,'Liverpool','Andrew Robertson','Scotland',25,26,'DF','178cm','64kg',0,0,0,0,0,0,0,0,0),(5,'Liverpool','Trent Alexander-Arnold','England',21,66,'DF','175cm','69kg',0,0,0,0,0,0,0,0,0),(6,'Liverpool','Virgil van Dijk','Netherland',28,4,'DF','193cm','92kg',0,0,0,0,0,0,0,0,0),(7,'Liverpool','Joel Matip','Cameroon',28,32,'DF','195cm','90kg',0,0,0,0,0,0,0,0,0),(8,'Liverpool','Alex Oxlade Chamberlain','England',26,15,'MF','180cm','70kg',0,0,0,0,0,0,0,0,0),(9,'Liverpool','Divock Origi','Belgium',24,27,'FW','185cm','75kg',0,0,0,0,0,0,0,0,0),(10,'Liverpool','Fabinho','Brazil',25,3,'MF','188cm','78kg',0,0,0,0,0,0,0,0,0),(11,'Liverpool','Joe Gomez','England',22,12,'DF','188cm','77kg',0,0,0,0,0,0,0,0,0),(12,'Liverpool','Jordan Henderson','England',29,14,'MF','182cm','67kg',0,0,0,0,0,0,0,0,0),(13,'Liverpool','Georginio Wijnaldum','Netherland',28,5,'MF','175cm','69kg',0,0,0,0,0,0,0,0,0),(14,'Liverpool','Alisson','Brazil',26,1,'GK','191cm','91kg',0,0,0,0,0,0,0,0,0),(15,'Liverpool','James Milner','England',33,7,'MF','175cm','70kg',0,0,0,0,0,0,0,0,0),(16,'Liverpool','Adrian','Spain',32,13,'GK','190cm','80kg',0,0,0,0,0,0,0,0,0),(17,'Tottenham','Son Heung-Min','Korea',27,7,'FW','183cm','77kg',0,0,0,0,0,0,0,0,0),(18,'Tottenham','Erik Lamela','Argentina',27,7,'MF','181cm','79kg',0,0,0,0,0,0,0,0,0),(19,'Tottenham','Tanguy Ndombele','France',22,7,'MF','181cm','76kg',0,0,0,0,0,0,0,0,0),(20,'Tottenham','Lukas Moura','Brazil',27,7,'FW','172cm','72kg',0,0,0,0,0,0,0,0,0),(21,'Tottenham','Harry Kane','England',26,10,'FW','188cm','86kg',0,0,0,0,0,0,0,0,0),(22,'Tottenham','Hugo Lloris','France',32,7,'GK','188cm','82kg',0,0,0,0,0,0,0,0,0),(23,'Tottenham','Kyle Walker-Peters','England',22,7,'DF','173cm','62kg',0,0,0,0,0,0,0,0,0),(24,'Tottenham','Toby Alderweireld','Belgium',30,7,'DF','187cm','90kg',0,0,0,0,0,0,0,0,0),(25,'Tottenham','Davinson Sanchez','Colombia',23,7,'DF','187cm','81kg',0,0,0,0,0,0,0,0,0),(26,'Tottenham','Moussa Sissoko','France',30,7,'MF','187cm','83kg',0,0,0,0,0,0,0,0,0),(27,'Tottenham','Christian Eriksen','Denmark',27,7,'MF','182cm','76kg',0,0,0,0,0,0,0,0,0),(28,'Tottenham','Harry Winks','England',23,7,'MF','178cm','65kg',0,0,0,0,0,0,0,0,0),(29,'Tottenham','Danny Rose','England',29,7,'DF','173cm','72kg',0,0,0,0,0,0,0,0,0),(30,'Tottenham','Georges-Kevin_Nkoudou','France',24,7,'MF','174cm','68kg',0,0,0,0,0,0,0,0,0),(31,'Tottenham','Giovani Lo Celso','Argentina',23,7,'MF','177cm','68kg',0,0,0,0,0,0,0,0,0),(32,'Tottenham','Oliver Skipp','England',18,7,'MF','175cm','70kg',0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
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
