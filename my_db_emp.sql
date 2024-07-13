CREATE DATABASE  IF NOT EXISTS `my_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `my_db`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: my_db
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp` (
  `EMPNO` int(11) NOT NULL,
  `ENAME` varchar(10) DEFAULT NULL,
  `JOB` varchar(9) DEFAULT NULL,
  `MGR` int(11) DEFAULT NULL,
  `HIREDATE` datetime DEFAULT NULL,
  `SAL` decimal(7,2) DEFAULT NULL,
  `COMM` decimal(7,2) DEFAULT NULL,
  `DEPTNO` int(11) NOT NULL,
  PRIMARY KEY (`EMPNO`),
  KEY `EMP_DEPTNO_FK` (`DEPTNO`),
  KEY `EMP_MGR_FK` (`MGR`),
  CONSTRAINT `EMP_DEPTNO_FK` FOREIGN KEY (`DEPTNO`) REFERENCES `dept` (`DEPTNO`),
  CONSTRAINT `EMP_MGR_FK` FOREIGN KEY (`MGR`) REFERENCES `emp` (`EMPNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES (7369,'SMITH','CLERK',7902,'1980-12-17 00:00:00',800.00,NULL,20),(7499,'ALLEN','SALESMAN',7698,'1981-02-20 00:00:00',1600.00,300.00,30),(7521,'WARD','SALESMAN',7698,'1981-02-22 00:00:00',1250.00,500.00,30),(7566,'JONES','MANAGER',7839,'1981-04-02 00:00:00',2975.00,NULL,20),(7654,'MARTIN','SALESMAN',7698,'1981-09-28 00:00:00',1250.00,1400.00,30),(7698,'BLAKE','MANAGER',7839,'1981-05-01 00:00:00',2850.00,NULL,30),(7782,'CLARK','MANAGER',7839,'1981-06-09 00:00:00',2450.00,NULL,10),(7788,'SCOTT','ANALYST',7566,'1982-12-09 00:00:00',3000.00,NULL,20),(7839,'KING','PRESIDENT',NULL,'1981-11-17 00:00:00',5000.00,NULL,10),(7844,'TURNER','SALESMAN',7698,'1981-09-08 00:00:00',1500.00,0.00,30),(7876,'ADAMS','CLERK',7788,'1983-01-12 00:00:00',1100.00,NULL,20),(7900,'JAMES','CLERK',7698,'1981-12-03 00:00:00',950.00,NULL,30),(7902,'FORD','ANALYST',7566,'1981-12-03 00:00:00',3000.00,NULL,20),(7934,'MILLER','CLERK',7782,'1982-01-23 00:00:00',1300.00,NULL,10);
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-15 11:59:06
