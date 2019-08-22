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
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `name` varchar(45) NOT NULL,
  `league` varchar(45) DEFAULT NULL,
  `hometown` varchar(45) DEFAULT NULL,
  `establishment` int(11) NOT NULL,
  `stadium` varchar(45) DEFAULT NULL,
  `coach` varchar(45) DEFAULT NULL,
  `played` int(11) NOT NULL,
  `win` int(11) NOT NULL,
  `draw` int(11) NOT NULL,
  `lose` int(11) NOT NULL,
  `goalFor` int(11) NOT NULL,
  `goalAgainst` int(11) NOT NULL,
  `goalDifference` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES ('Arsenal','Premier League','London',1886,'Emirates Stadium','Unai Emery',0,0,0,0,0,0,0,0),('Aston Villa','Premier League','Birmingham',1874,'Villa Park','Dean Smith',0,0,0,0,0,0,0,0),('Bournemouth','Premier League','Bournemouth',1899,'Vitality Stadium','Eddie Howe',0,0,0,0,0,0,0,0),('Brighton','Premier League','Brighton',1901,'American Express Community Stadium','Graham Potter',0,0,0,0,0,0,0,0),('Burnley','Premier League','Burnley',1882,'Turf Moor','Sean Dyche',0,0,0,0,0,0,0,0),('Chelsea','Premier League','London',1905,'Stamford Bridge','Frank Lampard',0,0,0,0,0,0,0,0),('Crystal Palace','Premier League','London',1905,'Selhurst Park','Roy Hodgson',0,0,0,0,0,0,0,0),('Everton','Premier League','Liverpool',1878,'Goodison Park','Marco Silva',0,0,0,0,0,0,0,0),('Leicester City','Premier League','Leicester',1884,'King Power Stadium','Brendan Rodgers',0,0,0,0,0,0,0,0),('Liverpool','Premier League','Liverpool',1892,'Anfield','Jurgen Klopp',0,0,0,0,0,0,0,0),('Manchester City','Premier League','Manchester',1894,'Etihad Stadium','Josep Guardiola',0,0,0,0,0,0,0,0),('Manchester United','Premier League','Manchester',1878,'Old Trafford','Ole Gunnar Solskjær',0,0,0,0,0,0,0,0),('Newcastle','Premier League','Newcastle upon Tyne',1892,'(St James\' Park','Steve Bruce',0,0,0,0,0,0,0,0),('Norwich','Premier League','Norwich',1902,'Carrow Road','Daniel Farke',0,0,0,0,0,0,0,0),('Sheffield United','Premier League','Sheffield',1889,'Bramall Lane','Chris Wilder',0,0,0,0,0,0,0,0),('Southampton','Premier League','Southampton',1885,'St. Mary\'s Stadium','Ralph Hasenhüttl',0,0,0,0,0,0,0,0),('Tottenham','Premier League','London',1882,'Tottenham Hotspur Stadium','Mauricio Pochettino',0,0,0,0,0,0,0,0),('Watford','Premier League','Watford',1898,'Vicarage Road','Javi Gracia',0,0,0,0,0,0,0,0),('West Ham','Premier League','London',1895,'London Stadium','Manuel Pellegrini',0,0,0,0,0,0,0,0),('Wolverhampton','Premier League','Wolverhampton',1877,'Molineux Stadium','Nuno Espírito Santo',0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-22 17:14:23
