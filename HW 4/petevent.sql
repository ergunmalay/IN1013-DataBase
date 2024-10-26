-- MySQL dump 10.13  Distrib 8.4.2, for Win64 (x86_64)
--
-- Host: localhost    Database: pet_database
-- ------------------------------------------------------
-- Server version	8.4.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `petevent`
--

DROP TABLE IF EXISTS `petevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `petevent` (
  `petname` varchar(50) NOT NULL,
  `eventdate` date NOT NULL,
  `eventtype` varchar(50) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`petname`,`eventdate`),
  CONSTRAINT `petevent_ibfk_1` FOREIGN KEY (`petname`) REFERENCES `petpet` (`petname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petevent`
--

LOCK TABLES `petevent` WRITE;
/*!40000 ALTER TABLE `petevent` DISABLE KEYS */;
INSERT INTO `petevent` VALUES ('Claws','1997-08-03','injury','broke rib'),('Fluffy','2020-10-15','vet','antibiotics'),('Hammy','2020-10-15','vet','antibiotics');
/*!40000 ALTER TABLE `petevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `petpet`
--

DROP TABLE IF EXISTS `petpet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `petpet` (
  `petname` varchar(50) NOT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `species` varchar(30) DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `death` date DEFAULT NULL,
  PRIMARY KEY (`petname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petpet`
--

LOCK TABLES `petpet` WRITE;
/*!40000 ALTER TABLE `petpet` DISABLE KEYS */;
INSERT INTO `petpet` VALUES ('Claws','Owner2','M','Male','1995-01-01',NULL),('Fluffy','Owner1','M','Female','2019-04-01',NULL),('Hammy','Diane','M','Male','2010-10-30',NULL);
/*!40000 ALTER TABLE `petpet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-26 13:20:35
