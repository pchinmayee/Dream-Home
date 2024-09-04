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
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `sid` varchar(10) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `position` varchar(20) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `ssid` varchar(10) DEFAULT NULL,
  `mid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  KEY `mid` (`mid`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `manager` (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('efd9a93f-5','Shashank G','M','2023-04-13','Assistant',9750,'S002','M001'),('S001','John Smith','Male','1990-05-10','Manager',50000,NULL,'M001'),('S002','Jane Doe','Female','1995-02-20','Supervisor',40000,NULL,'M001'),('S003','Bob Johnson','Male','1998-11-15','Assistant',25000,'S002','M001'),('S004','Samantha Lee','Female','1993-07-28','Assistant',28000,'S002','M001'),('S005','Mike Chen','Male','1991-09-03','Manager',55000,NULL,'M002'),('S006','Emily Davis','Female','1996-04-11','Supervisor',42000,NULL,'M002'),('S007','David Kim','Male','1997-12-01','Assistant',26000,'S006','M002'),('S008','Olivia Lopez','Female','1994-08-22','Assistant',29000,'S006','M002'),('S009','Tom Wilson','Male','1992-06-05','Manager',52000,NULL,'M003'),('S010','Jessica Brown','Female','1995-03-18','Supervisor',41000,NULL,'M003'),('S011','Eric Davis','Male','1999-10-11','Assistant',27000,'S010','M003'),('S012','Linda Martin','Female','1993-05-12','Assistant',30000,'S010','M003'),('S013','Amy Rodriguez','Female','1992-08-07','Manager',51000,NULL,'M004'),('S014','Mark Davis','Male','1996-01-02','Supervisor',38000,NULL,'M004'),('S015','Sarah Wilson','Female','1999-06-15','Assistant',24000,'S014','M004'),('S016','Peter Lee','Male','1994-11-22','Assistant',27000,'S014','M004'),('S017','Emily Brown','Female','1991-03-04','Manager',53000,NULL,'M005'),('S018','Michael Johnson','Male','1995-10-18','Supervisor',39000,NULL,'M005'),('S019','Lisa Kim','Female','1998-02-01','Assistant',26000,'S018','M005'),('S020','Daniel Chen','Male','1993-05-12','Assistant',29000,'S018','M005'),('S021','Julia Smith','Female','1990-09-17','Manager',49000,NULL,'M006'),('S022','Alex Johnson','Male','1994-04-09','Supervisor',37000,NULL,'M006'),('S023','Christine Lee','Female','1997-01-22','Assistant',23000,'S022','M006'),('S024','Robert Brown','Male','1992-07-02','Assistant',28000,'S022','M006'),('S025','John Smith','Male','1990-03-16','Manager',50000,NULL,'M007'),('S026','Jane Wilson','Female','1995-12-29','Supervisor',37000,NULL,'M007'),('S027','David Lee','Male','1999-05-10','Assistant',24000,'S026','M007'),('S028','Rachel Brown','Female','1993-10-23','Assistant',27000,'S026','M007'),('S029','Brandon Davis','Male','1992-02-07','Manager',52000,NULL,'M008'),('S030','Laura Kim','Female','1996-07-11','Supervisor',39000,NULL,'M008'),('S031','Ryan Chen','Male','1998-04-04','Assistant',25000,'S030','M008'),('S032','Grace Rodriguez','Female','1994-09-27','Assistant',28000,'S030','M008'),('S033','Jacob Wilson','Male','1991-01-30','Manager',51000,NULL,'M009'),('S034','Olivia Lee','Female','1995-06-14','Supervisor',38000,NULL,'M009'),('S035','Ethan Davis','Male','1998-11-06','Assistant',26000,'S034','M009'),('S036','Ava Brown','Female','1993-04-18','Assistant',29000,'S034','M009'),('S037','Mason Chen','Male','1990-08-21','Manager',53000,NULL,'M010'),('S038','Isabella Smith','Female','1994-03-15','Supervisor',40000,NULL,'M010'),('S039','Luke Wilson','Male','1997-12-08','Assistant',27000,'S038','M010'),('S040','Sophia Lee','Female','1992-06-01','Assistant',30000,'S038','M010'),('S041','William Davis','Male','1994-01-21','Manager',49000,NULL,'M011'),('S042','Emma Wilson','Female','1999-08-03','Supervisor',36000,NULL,'M011'),('S043','Michael Lee','Male','2000-03-14','Assistant',23000,'S042','M011'),('S044','Madison Brown','Female','1992-12-27','Assistant',26000,'S042','M011'),('S045','Benjamin Chen','Male','1991-07-10','Manager',51000,NULL,'M012'),('S046','Chloe Smith','Female','1995-02-18','Supervisor',38000,NULL,'M012'),('S047','Nathan Wilson','Male','1998-11-01','Assistant',25000,'S046','M012'),('S048','Hannah Lee','Female','1993-04-13','Assistant',28000,'S046','M012'),('S049','Christopher Davis','Male','1990-08-26','Manager',50000,NULL,'M013'),('S050','Zoe Wilson','Female','1996-05-19','Supervisor',37000,NULL,'M013'),('S051','Tyler Lee','Male','1999-12-12','Assistant',24000,'S050','M013'),('S052','Avery Brown','Female','1994-06-05','Assistant',27000,'S050','M013'),('S053','Elijah Chen','Male','1991-10-28','Manager',52000,NULL,'M014'),('S054','Natalie Smith','Female','1995-03-22','Supervisor',39000,NULL,'M014'),('S055','Gabriel Wilson','Male','1998-08-15','Assistant',26000,'S054','M014'),('S056','Mia Lee','Female','1993-02-07','Assistant',29000,'S054','M014'),('S057','Emily Jones','Female','1995-06-17','Manager',50000,NULL,'M015'),('S058','Thomas Allen','Male','1993-03-12','Supervisor',30000,NULL,'M015'),('S059','Maria Rodriguez','Female','1992-11-24','Assistant',28000,'S058','M015'),('S060','Daniel Lee','Male','1990-08-07','Manager',55000,NULL,'M016'),('S061','Sophie Turner','Female','1994-05-03','Supervisor',30000,NULL,'M016'),('S062','James Smith','Male','1987-12-19','Assistant',28000,'S061','M016'),('S063','Emma Brown','Female','1991-07-31','Manager',52000,NULL,'M017'),('S064','John Taylor','Male','1993-02-14','Supervisor',28000,NULL,'M017'),('S065','Linda Green','Female','1989-09-02','Assistant',27000,'S064','M017'),('S066','Andrew Davies','Male','1990-04-18','Manager',55000,NULL,'M018'),('S067','Laura Wilson','Female','1996-01-22','Supervisor',30000,NULL,'M018'),('S068','David Brown','Male','1988-10-06','Assistant',27000,'S067','M018'),('S069','Olivia Clark','Female','1993-09-08','Manager',50000,NULL,'M019'),('S070','Christopher Evans','Male','1991-04-15','Supervisor',28000,NULL,'M019'),('S071','Sophia Johnson','Female','1992-08-02','Assistant',27000,'S070','M019'),('S072','Jacob Williams','Male','1995-02-28','Manager',55000,NULL,'M020'),('S073','Mia Davis','Female','1994-06-05','Supervisor',30000,NULL,'M020'),('S074','Joshua Brown','Male','1989-03-11','Assistant',28000,'S073','M020');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
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

-- Dump completed on 2023-04-27 22:57:41
