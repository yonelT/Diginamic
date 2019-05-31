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
-- Table structure for table `produits`
--

DROP TABLE IF EXISTS `produits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produits` (
  `REF_PRODUIT` decimal(6,0) NOT NULL,
  `NOM_PRODUIT` varchar(40) NOT NULL,
  `NO_FOURNISSEUR` decimal(6,0) NOT NULL,
  `CODE_CATEGORIE` decimal(6,0) NOT NULL,
  `QUANTITE` varchar(30) DEFAULT NULL,
  `PRIX_UNITAIRE` decimal(8,2) NOT NULL,
  `UNITES_STOCK` decimal(5,0) DEFAULT NULL,
  `UNITES_COMMANDEES` decimal(5,0) DEFAULT NULL,
  `INDISPONIBLE` decimal(1,0) DEFAULT NULL,
  PRIMARY KEY (`REF_PRODUIT`),
  KEY `FOURNISEURS_PRODUITS_FK` (`NO_FOURNISSEUR`),
  KEY `CATEGORIES_PRODUITS_FK` (`CODE_CATEGORIE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produits`
--

LOCK TABLES `produits` WRITE;
/*!40000 ALTER TABLE `produits` DISABLE KEYS */;
INSERT INTO `produits` VALUES (1,'Chai',1,1,'10 boîtes x 20 sacs',90.00,39,0,0),(2,'Chang',1,1,'24 bouteilles (1 litre)',95.00,17,40,0),(3,'Aniseed Syrup',1,2,'12 bouteilles (550 ml)',50.00,13,70,0),(4,'Chef Anton\'s Cajun Seasoning',2,2,'48 pots (6 onces)',110.00,53,0,0),(5,'Chef Anton\'s Gumbo Mix',2,2,'36 boîtes',106.00,0,0,1),(6,'Grandma\'s Boysenberry Spread',3,2,'12 pots (8 onces)',125.00,120,0,0),(7,'Uncle Bob\'s Organic Dried Pears',3,7,'12 cartons (1 kg)',150.00,15,0,0),(8,'Northwoods Cranberry Sauce',3,2,'12 pots (12 onces)',200.00,6,0,0),(9,'Mishi Kobe Niku',4,6,'18 cartons (500 g)',485.00,29,0,-1),(10,'Ikura',4,8,'12 pots (200 g)',155.00,31,0,0),(11,'Queso Cabrales',5,4,'1 carton (1 kg)',105.00,22,30,0),(12,'Queso Manchego La Pastora',5,4,'10 cartons (500 g)',190.00,86,0,0),(13,'Konbu',6,8,'1 boîtes (2 kg)',30.00,24,0,0),(14,'Tofu',6,7,'40 cartons (100 g)',116.00,35,0,0),(15,'Genen Shouyu',6,2,'24 bouteilles (250 ml)',78.00,39,0,0),(16,'Pavlova',7,3,'32 boîtes (500 g)',87.00,29,0,0),(17,'Alice Mutton',7,6,'20 boîtes (1 kg)',195.00,0,0,-1),(18,'Carnarvon Tigers',7,8,'1 carton (16 kg)',313.00,42,0,0),(19,'Teatime Chocolate Biscuits',8,3,'10 boîtes x 12 pièces',46.00,25,0,0),(20,'Sir Rodney\'s Marmalade',8,3,'30 boîtes',405.00,40,0,0),(21,'Sir Rodney\'s Scones',8,3,'24 cartons x 4 pièces',50.00,3,40,0),(22,'Gustaf\'s Knäckebröd',9,5,'24 cartons (500 g)',105.00,104,0,0),(23,'Tunnbröd',9,5,'12 cartons (250 g)',45.00,61,0,0),(24,'Guaraná Fantástica',10,1,'12 canettes (355 ml)',23.00,20,0,-1),(25,'NuNuCa Nuß-Nougat-Creme',11,3,'20 verres (450 g)',70.00,76,0,0),(26,'Gumbär Gummibärchen',11,3,'100 sacs (250 g)',156.00,15,0,0),(27,'Schoggi Schokolade',11,3,'100 pièces (100 g)',220.00,49,0,0),(28,'Rössle Sauerkraut',12,7,'25 canettes (825 g)',228.00,26,0,-1),(29,'Thüringer Rostbratwurst',12,6,'50 sacs x 30 saucisses',619.00,0,0,-1),(30,'Nord-Ost Matjeshering',13,8,'10 verres (200 g)',129.00,10,0,0),(31,'Gorgonzola Telino',14,4,'12 cartons (100 g)',63.00,0,70,0),(32,'Mascarpone Fabioli',14,4,'24 cartons (200 g)',160.00,9,40,0),(33,'Geitost',15,4,'1 carton (500 g)',13.00,112,0,0),(34,'Sasquatch Ale',16,1,'24 bouteilles (70 cl)',70.00,111,0,0),(35,'Steeleye Stout',16,1,'24 bouteilles (1 litre)',90.00,20,0,0),(36,'Inlagd Sill',17,8,'24 pots (250 g)',95.00,112,0,0),(37,'Gravad lax',17,8,'12 cartons (500 g)',130.00,11,50,0),(38,'Côte de Blaye',18,1,'12 bouteilles (75 cl)',1318.00,17,0,0),(39,'Chartreuse verte',18,1,'1 bouteille (750 cc)',90.00,69,0,0),(40,'Boston Crab Meat',19,8,'24 boîtes (4 onces)',92.00,123,0,0),(41,'Jack\'s New England Clam Chowder',19,8,'12 canettes (330 ml)',48.00,85,0,0),(42,'Singaporean Hokkien Fried Mee',20,5,'32 cartons (1 kg)',70.00,26,0,-1),(43,'Ipoh Coffee',20,1,'16 boîtes (500 g)',230.00,17,10,0),(44,'Gula Malacca',20,2,'20 cartons (2 kg)',97.00,27,0,0),(45,'Røgede sild',21,8,'1 carton (1kg)',48.00,5,70,0),(46,'Spegesild',21,8,'4 boîtes (250 g)',60.00,95,0,0),(47,'Zaanse koeken',22,3,'10 boîtes (4 onces)',48.00,36,0,0),(48,'Chocolade',22,3,'10 cartons',64.00,15,70,0),(49,'Maxilaku',23,3,'24 cartons (50 g)',100.00,10,60,0),(50,'Valkoinen suklaa',23,3,'12 plaquettes (100 g)',81.00,65,0,0),(51,'Manjimup Dried Apples',24,7,'50 cartons (300 g)',265.00,20,0,0),(52,'Filo Mix',24,5,'16 boîtes (2 kg)',35.00,38,0,0),(53,'Perth Pasties',24,6,'48 pièces',164.00,0,0,-1),(54,'Tourtière',25,6,'16 tartes',37.00,21,0,0),(55,'Pâté chinois',25,6,'24 boîtes x 2 tartes',120.00,115,0,0),(56,'Gnocchi di nonna Alice',26,5,'24 cartons (250 g)',190.00,21,10,0),(57,'Ravioli Angelo',26,5,'24 cartons (250 g)',98.00,36,0,0),(58,'Escargots de Bourgogne',27,8,'24 pièces',66.00,62,0,0),(59,'Raclette Courdavault',28,4,'1 carton (5 kg)',275.00,79,0,0),(60,'Camembert Pierrot',28,4,'15 unités (300 g)',170.00,19,0,0),(61,'Sirop d\'érable',29,2,'24 bouteilles (500 ml)',143.00,113,0,0),(62,'Tarte au sucre',29,3,'48 tartes',247.00,17,0,0),(63,'Vegie-spread',7,2,'15 pots (625 g)',220.00,24,0,0),(64,'Wimmers gute Semmelknödel',12,5,'20 sacs x 4 pièces',166.00,22,80,0),(65,'Louisiana Fiery Hot Pepper Sauce',2,2,'32 bouteilles (8 onces)',105.00,76,0,0),(66,'Louisiana Hot Spiced Okra',2,2,'24 pots (8 onces)',85.00,4,100,0),(67,'Laughing Lumberjack Lager',16,1,'24 bouteilles (12 onces)',70.00,52,0,0),(68,'Scottish Longbreads',8,3,'10 sacs x 8 pièces',63.00,6,10,0),(69,'Gudbrandsdalsost',15,4,'1 carton (10 kg)',180.00,26,0,0),(70,'Outback Lager',7,1,'24 bouteilles (355 ml)',75.00,15,10,0),(71,'Fløtemysost',15,4,'10 cartons (500 g)',108.00,26,0,0),(72,'Mozzarella di Giovanni',14,4,'24 cartons (200 g)',174.00,14,0,0),(73,'Röd Kaviar',17,8,'24 pots (150 g)',75.00,101,0,0),(74,'Longlife Tofu',4,7,'1 carton (5 kg)',50.00,4,20,0),(75,'Rhönbräu Klosterbier',12,1,'24 bouteilles (0,5 litre)',39.00,125,0,0),(76,'Lakkalikööri',23,1,'1 bouteille (500 ml)',90.00,57,0,0),(77,'Original Frankfurter grüne Soße',12,2,'12 boîtes',65.00,32,0,0);
/*!40000 ALTER TABLE `produits` ENABLE KEYS */;
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

