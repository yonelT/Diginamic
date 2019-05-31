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
-- Table structure for table `fournisseurs`
--

DROP TABLE IF EXISTS `fournisseurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fournisseurs` (
  `NO_FOURNISSEUR` decimal(6,0) NOT NULL,
  `SOCIETE` varchar(40) NOT NULL,
  `ADRESSE` varchar(60) NOT NULL,
  `VILLE` varchar(20) NOT NULL,
  `CODE_POSTAL` varchar(10) NOT NULL,
  `PAYS` varchar(15) NOT NULL,
  `TELEPHONE` varchar(24) NOT NULL,
  `FAX` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`NO_FOURNISSEUR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fournisseurs`
--

LOCK TABLES `fournisseurs` WRITE;
/*!40000 ALTER TABLE `fournisseurs` DISABLE KEYS */;
INSERT INTO `fournisseurs` VALUES (1,'Exotic Liquids','49 Gilbert St.','London','EC1 4SD','Royaume-Uni','(171) 555-2222',''),(2,'Nouvelle-Orléans Cajun Delights','P.O. Box 78934','Nouvelle-Orléans','70117','Etats-Unis','(100) 555-4822',''),(3,'Grandma Kelly\'s Homestead','707 Oxford Rd.','Ann Arbor','48104','Etats-Unis','(313) 555-5735','(313) 555-3349'),(4,'Tokyo Traders','9-8 SekimaiMusashino-shi','Tokyo','100','Japon','(03) 3555-5011',''),(5,'Cooperativa de Quesos \'Las Cabras\'','Calle del Rosal 4','Oviedo','33007','Espagne','(98) 598 76 54',''),(6,'Mayumi\'s','92 SetsukoChuo-ku','Osaka','545','Japon','(06) 431-7877',''),(7,'Pavlova, Ltd.','74 Rose St.Moonie Ponds','Melbourne','3058','Australie','(059) 55-5450','(03) 444-6588'),(8,'Specialty Biscuits, Ltd.','29 King\'s Way','Manchester','M14 GSD','Royaume-Uni','(161) 555-4448',''),(9,'PB Knäckebröd AB','Kaloadagatan 13','Göteborg','S-345 67','Suède','031-987 65 43','031-987 65 91'),(10,'Refrescos Americanas LTDA','Av. das Americanas 12.890','São Paulo','5442','Brésil','(11) 555 4640',''),(11,'Heli Süßwaren GmbH  Co. KG','Tiergartenstraße 5','Berlin','10785','Allemagne','(010) 9984510',''),(12,'Plutzer Lebensmittelgroßmärkte AG','Bogenallee 51','Frankfurt','60439','Allemagne','(069) 992755',''),(13,'Nord-Ost-Fisch Handelsgesellschaft mbH','Frahmredder 112a','Cuxhaven','27478','Allemagne','(04721) 8713','(04721) 8714'),(14,'Formaggi Fortini s.r.l.','Viale Dante, 75','Ravenna','48100','Italie','(0544) 60323','(0544) 60603'),(15,'Norske Meierier','Hatlevegen 5','Sandvika','1320','Norvège','(0)2-953010',''),(16,'Bigfoot Breweries','3400 - 8th AvenueSuite 210','Bend','97101','Etats-Unis','(503) 555-9931',''),(17,'Svensk Sjöföda AB','Brovallavägen 231','Stockholm','S-123 45','Suède','08-123 45 67',''),(18,'Aux joyeux ecclésiastiques','203, Rue des Francs-Bourgeois','Paris','75004','France','01.03.83.00.68','01.03.83.00.62'),(19,'New England Seafood Cannery','Order Processing Dept.2100 Paul Revere Blvd.','Boston','02134','Etats-Unis','(617) 555-3267','(617) 555-3389'),(20,'Leka Trading','471 Serangoon Loop, Suite #402','Singapore','0512','Singapour','555-8787',''),(21,'Lyngbysild','LyngbysildFiskebakken 10','Lyngby','2800','Danemark','43844108','43844115'),(22,'Zaanse Snoepfabriek','VerkoopRijnweg 22','Zaandam','9999 ZZ','Pays-Bas','(12345)1212','(12345) 1210'),(23,'Karkki Oy','Valtakatu 12','Lappeenranta','53120','Finlande','(953) 10956',''),(24,'G\'day, Mate','170 Prince Edward ParadeHunter\'s Hill','Sydney','2042','Australie','(02) 555-4873','(02) 555-4873'),(25,'Ma Maison','2960 Rue St. Laurent','Montréal','H1J 1C3','Canada','(514) 555-9022',''),(26,'Pasta Buttini s.r.l.','Via dei Gelsomini, 153','Salerno','84100','Italie','(089) 6547665','(089) 6547667'),(27,'Escargots Nouveaux','22, rue H. Voiron','Montceau','71300','France','04.85.57.00.07',''),(28,'Gai pâturage','Bat. B3, rue des Alpes','Annecy','74000','France','04.38.76.98.06','04.38.76.98.58'),(29,'Forêts d\'érables','148 rue Chasseur','Ste-Hyacinthe','J2S 7S8','Canada','(514) 555-2955','(514) 555-2921');
/*!40000 ALTER TABLE `fournisseurs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-23 10:28:29
