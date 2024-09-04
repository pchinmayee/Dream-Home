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
-- Table structure for table `client_int`
--

DROP TABLE IF EXISTS `client_int`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_int` (
  `cid` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `branch_loc` varchar(50) NOT NULL,
  `bid` varchar(10) DEFAULT NULL,
  `max_rent` float NOT NULL,
  `reg_by` varchar(30) DEFAULT NULL,
  `reg_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cid`,`type`,`branch_loc`,`max_rent`),
  KEY `bid` (`bid`),
  CONSTRAINT `client_int_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `client` (`cid`),
  CONSTRAINT `client_int_ibfk_2` FOREIGN KEY (`bid`) REFERENCES `branch` (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_int`
--

LOCK TABLES `client_int` WRITE;
/*!40000 ALTER TABLE `client_int` DISABLE KEYS */;
INSERT INTO `client_int` VALUES ('C001','Apartment','Birmingham','B001',1200,'John Smith','2022-03-15'),('C001','Land','Manchester','B002',800,'David Kim','2022-03-15'),('C002','Apartment','Glasgow','B007',1000,'John Smith','2022-03-15'),('C002','Flat','London','B004',1500,'Sarah Wilson','2022-03-15'),('C003','Land','Newcastle','B006',1000,'Robert Brown','2022-03-15'),('C004','Apartment','Bristol','B010',1800,'Luke Wilson','2022-03-15'),('C004','Flat','Liverpool','B003',700,'Tom Wilson','2022-03-15'),('C005','Flat','London','B015',900,'Thomas Allen','2022-03-15'),('C005','Land','Oxford','B009',700,'Ava Brown','2022-03-15'),('C006','Apartment','Glasgow','B012',1200,'Chloe Smith','2022-03-15'),('C007','Flat','Cambridge','B020',950,'Mia Davis','2022-03-15'),('C007','Land','London','B015',500,'Thomas Allen','2022-03-15'),('C008','Apartment','Liverpool','B003',1500,'Tom Wilson','2022-03-15'),('C008','Flat','Newcastle','B006',900,'Robert Brown','2022-03-15'),('C009','Land','Oxford','B009',500,'Ava Brown','2022-03-15'),('C010','Apartment','London','B015',800,'Thomas Allen','2022-03-15');
/*!40000 ALTER TABLE `client_int` ENABLE KEYS */;
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

-- Dump completed on 2023-04-27 22:55:47
