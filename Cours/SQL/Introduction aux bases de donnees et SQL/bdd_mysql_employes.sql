CREATE DATABASE  IF NOT EXISTS `bdd_mysql` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bdd_mysql`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: bdd_mysql
-- ------------------------------------------------------
-- Server version	5.7.16-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employes`
--

DROP TABLE IF EXISTS `employes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employes` (
  `NO_EMPLOYE` decimal(6,0) NOT NULL,
  `REND_COMPTE` decimal(6,0) DEFAULT NULL,
  `NOM` varchar(20) NOT NULL,
  `PRENOM` varchar(10) NOT NULL,
  `FONCTION` varchar(30) NOT NULL,
  `TITRE` varchar(5) NOT NULL,
  `DATE_NAISSANCE` date NOT NULL,
  `DATE_EMBAUCHE` date NOT NULL,
  `SALAIRE` decimal(8,2) NOT NULL,
  `COMMISSION` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`NO_EMPLOYE`),
  KEY `EMPLOYES_REND_COMPTE_FK` (`REND_COMPTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employes`
--

LOCK TABLES `employes` WRITE;
/*!40000 ALTER TABLE `employes` DISABLE KEYS */;
INSERT INTO `employes` VALUES (1,2,'Davolio','Nancy','Représentant(e)','Mlle','1968-12-08','1992-05-01',3135.00,1500.00),(2,2,'Fuller','Andrew','Vice-Président','Dr.','1952-02-19','1992-08-14',10000.00,null),(3,2,'Leverling','Janet','Représentant(e)','Mlle','1963-08-30','1992-04-01',3500.00,1000.00),(4,2,'Peacock','Margaret','Représentant(e)','Mme','1958-09-19','1993-05-03',2856.00,250.00),(5,2,'Buchanan','Steven','Chef des ventes','M.','1955-03-04','1993-10-17',8000.00,null),(6,5,'Suyama','Michael','Représentant(e)','M.','1963-07-02','1993-10-17',2534.00,600.00),(7,5,'King','Robert','Représentant(e)','M.','1960-05-29','1994-01-02',2356.00,800.00),(8,2,'Callahan','Laura','Assistante commerciale','Mlle','1958-01-09','1994-03-05',2000.00,null),(9,5,'Dodsworth','Anne','Représentant(e)','Mlle','1969-07-02','1994-11-15',2180.00,null);
/*!40000 ALTER TABLE `employes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-23 10:28:30
