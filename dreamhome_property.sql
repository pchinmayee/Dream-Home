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
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property` (
  `pid` varchar(10) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `rooms` float DEFAULT NULL,
  `rent` float DEFAULT NULL,
  `prop_addr` varchar(50) DEFAULT NULL,
  `oid` varchar(10) DEFAULT NULL,
  `reg_by` varchar(30) DEFAULT NULL,
  `reg_at` varchar(10) DEFAULT NULL,
  `reg_date` varchar(10) DEFAULT NULL,
  `rented` varchar(10) DEFAULT 'No',
  PRIMARY KEY (`pid`),
  KEY `oid` (`oid`),
  KEY `reg_at` (`reg_at`),
  CONSTRAINT `property_ibfk_1` FOREIGN KEY (`oid`) REFERENCES `owner` (`oid`),
  CONSTRAINT `property_ibfk_2` FOREIGN KEY (`reg_at`) REFERENCES `branch` (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES ('20196548-d','Flat',2,300000,'Dharwad, Karnataka, India ','O006','S004','B004','2023-04-20','No'),('9e4dcdd0-7','villa',5,60000,'Ittigati Road','O005','S008','B003','2023-04-21','No'),('P001','Apartment',2,1000,'23 Elm Street, Birmingham','O012','S001','B001','2023-01-02','Yes'),('P002','Flat',1,600,'14 Main Road, Manchester','O013','S007','B002','2023-04-04','No'),('P003','Land',NULL,500,'10 Park Avenue, Liverpool','O014','S009','B003','2023-02-04','No'),('P004','Apartment',3,1500,'12 High Street, London','O015','S015','B004','2023-01-07','No'),('P005','Flat',2,800,'221B Baker street, Aberdween','O016','S019','B005','2023-03-07','No'),('P006','Land',NULL,1000,'8 George Street, Newcastle','O017','S024','B006','2023-04-07','Yes'),('P007','Apartment',1,700,'21 Queen Street, Glasgow','O018','S025','B007','2023-01-09','Yes'),('P008','Flat',2,900,'16 Castle Street, Edinburgh','O019','S031','B008','2023-02-09','No'),('P009','Land',NULL,700,'19 Abbey Road, Oxford','O020','S036','B009','2023-02-03','No'),('P010','Apartment',3,1800,'3 New Road, Bristol','O021','S039','B010','2023-03-09','Yes'),('P011','Land',NULL,500,'20 Main Street, Liverpool','O014','S009','B003','2023-01-10','No'),('P012','Flat',2,900,'25 Queen Street, London','O015','S015','B004','2023-03-10','Yes'),('P013','Apartment',4,2000,'30 High Street, Newcastle','O017','S024','B006','2023-04-10','No'),('P014','Flat',1,600,'35 New Road, Oxford','O020','S036','B009','2023-01-17','No'),('P015','Land',NULL,300,'40 Station Road, Cambridge','O026','S043','B011','2023-01-14','No'),('P016','Apartment',2,1200,'45 Regent Street, Glasgow','O016','S046','B012','2023-02-14','No'),('P017','Flat',3,1000,'50 George Street, Leicester','O020','S056','B014','2023-03-14','No'),('P018','Land',NULL,700,'55 Abbey Road, London','O027','S058','B015','2023-04-14','No'),('P019','Apartment',1,800,'60 Castle Street, London','O029','S068','B018','2023-01-15','No'),('P020','Flat',2,950,'65 Park Street, Cambridge','O024','S073','B020','2023-01-31','Yes');
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
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

-- Dump completed on 2023-04-27 22:56:04
