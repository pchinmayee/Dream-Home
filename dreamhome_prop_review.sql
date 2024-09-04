CREATE DATABASE  IF NOT EXISTS `dreamhome` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dreamhome`;
-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: database-1.cdpq8ovfuj4r.us-east-1.rds.amazonaws.com    Database: dreamhome
-- ------------------------------------------------------
-- Server version	8.0.32

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

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `prop_review`
--

DROP TABLE IF EXISTS `prop_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prop_review` (
  `pid` varchar(10) NOT NULL,
  `cid` varchar(10) NOT NULL,
  `comments` varchar(200) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`pid`,`cid`),
  KEY `cid` (`cid`),
  CONSTRAINT `prop_review_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `property` (`pid`),
  CONSTRAINT `prop_review_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `client` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prop_review`
--

LOCK TABLES `prop_review` WRITE;
/*!40000 ALTER TABLE `prop_review` DISABLE KEYS */;
INSERT INTO `prop_review` VALUES ('P001','C001','The apartment was in great condition and had all the amenities I needed.','2023-01-05'),('P006','C003','The land was perfect for my agricultural needs and had easy access to water.','2023-04-08'),('P007','C002','The apartment was spacious and had a great view of the city.','2023-01-20'),('P009','C005','The apartment was beautiful and had a great location near shops and restaurants.','2023-02-06'),('P010','C004','The apartment was small but perfect for a single person.','2023-03-15'),('P012','C002','The flat was cozy and had a great location near public transportation.','2023-03-15'),('P016','C006','The apartment was cozy and had a great location near my workplace.','2023-02-15'),('P020','C007','The flat was in great condition and had a beautiful view of the city.','2023-02-20');
/*!40000 ALTER TABLE `prop_review` ENABLE KEYS */;
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

-- Dump completed on 2023-04-27 22:56:22
