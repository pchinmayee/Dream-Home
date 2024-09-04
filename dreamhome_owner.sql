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
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owner` (
  `oid` varchar(10) NOT NULL,
  `oname` varchar(30) DEFAULT NULL,
  `addr` varchar(50) DEFAULT NULL,
  `bussid` varchar(10) DEFAULT '00',
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES ('O001','Amit Patel','123 Main St','00'),('O002','Priya Sharma','456 Elm St','01'),('O003','Rahul Gupta','789 Oak St','00'),('O004','Sneha Desai','456 Pine St','01'),('O005','Manish Shah','567 Maple Ave','00'),('O006','Shweta Singh','789 Oak St','00'),('O007','Aakash Verma','234 Cherry St','01'),('O008','Riya Sen','345 Cedar Ln','00'),('O009','Vikram Singh','678 Birch Rd','00'),('O010','Neha Patel','789 Oak St','00'),('O011','Akshay Kumar','12 Victoria Road, London','00'),('O012','Priyanka Chopra','25 Hillside Avenue, Birmingham','00'),('O013','Ranbir Kapoor','35 Union Street, Glasgow','00'),('O014','Deepika Padukone','1 Oxford Street, Manchester','00'),('O015','Amitabh Bachchan','5 Regent Street, Bristol','00'),('O016','Katrina Kaif','14 George Street, Edinburgh','00'),('O017','Shah Rukh Khan','40 High Street, Cardiff ','01'),('O018','Alia Bhatt','67 Chapel Street, Liverpool','00'),('O019','Rajinikanth','28 Castle Street, Newcastle','00'),('O020','Kangana Ranaut','9 Abbey Road, Cambridge','01'),('O021','Jaspreet Singh','28 New Road, Birmingham','00'),('O022','Suman Gupta','19 Station Road, Manchester','00'),('O023','Raj Patel','37 High Street, London','00'),('O024','Amit Shah','45 Park Street, Glasgow','00'),('O025','Anjali Desai','78 Queen Street, Liverpool','00'),('O026','Vivek Nair','13 Church Street, Bristol','00'),('O027','Nidhi Sharma','51 St. Mary Street, Cardiff','01'),('O028','Gaurav Gupta','89 St. Andrews Street, Cambridge','00'),('O029','Rahul Patel','33 Market Street, Newcastle','00'),('O030','Komal Singh','20 Queens Road, Edinburgh','00');
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
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

-- Dump completed on 2023-04-27 22:57:05
