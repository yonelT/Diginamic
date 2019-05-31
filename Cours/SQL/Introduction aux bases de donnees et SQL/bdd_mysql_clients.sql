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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `CODE_CLIENT` char(5) NOT NULL,
  `SOCIETE` varchar(40) NOT NULL,
  `ADRESSE` varchar(60) NOT NULL,
  `VILLE` varchar(15) NOT NULL,
  `CODE_POSTAL` varchar(10) NOT NULL,
  `PAYS` varchar(15) NOT NULL,
  `TELEPHONE` varchar(24) NOT NULL,
  `FAX` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`CODE_CLIENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES ('ALFKI','Alfreds Futterkiste','Obere Str. 57','Berlin','12209','Allemagne','030-0074321','030-0076545'),('ANATR','Ana Trujillo Emparedados y helados','Avda. de la Constitución 2222','México D.F.','05021','Mexique','(5) 555-4729','(5) 555-3745'),('ANTON','Antonio Moreno Taquería','Mataderos  2312','México D.F.','05023','Mexique','(5) 555-3932',''),('AROUT','Around the Horn','120 Hanover Sq.','London','WA1 1DP','Royaume-Uni','(71) 555-7788','(71) 555-6750'),('BERGS','Berglunds snabbköp','Berguvsvägen  8','Luleå','S-958 22','Suède','0921-12 34 65','0921-12 34 67'),('BLAUS','Blauer See Delikatessen','Forsterstr. 57','Mannheim','68306','Allemagne','0621-08460','0621-08924'),('BLONP','Blondel père et fils','24, place Kléber','Strasbourg','67000','France','03.88.60.15.31','03.88.60.15.32'),('BOLID','Bólido Comidas preparadas','C/ Araquil, 67','Madrid','28023','Espagne','(91) 555 22 82','(91) 555 91 99'),('BONAP','Bon app\'','12, rue des Bouchers','Marseille','13008','France','04.91.24.45.40','04.91.24.45.41'),('BOTTM','Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','T2F 8M4','Canada','(604) 555-4729','(604) 555-3745'),('BSBEV','B\'s Beverages','Fauntleroy Circus','London','EC2 5NT','Royaume-Uni','(71) 555-1212',''),('CACTU','Cactus Comidas para llevar','Cerrito 333','Buenos Aires','1010','Argentine','(1) 135-5555','(1) 135-4892'),('CENTC','Centro comercial Moctezuma','Sierras de Granada 9993','México D.F.','05022','Mexique','(5) 555-3392','(5) 555-7293'),('CHOPS','Chop-suey Chinese','Hauptstr. 29','Bern','3012','Suisse','0452-076545',''),('COMMI','Comércio Mineiro','Av. dos Lusíadas, 23','São Paulo','05432-043','Brésil','(11) 555-7647',''),('CONSH','Consolidated Holdings','Berkeley Gardens12  Brewery ','London','WX1 6LT','Royaume-Uni','(71) 555-2282','(71) 555-9199'),('DRACD','Drachenblut Delikatessen','Walserweg 21','Aachen','52066','Allemagne','0241-039123','0241-059428'),('DUMON','Du monde entier','67, rue des Cinquante Otages','Nantes','44000','France','02.40.67.88.88','02.40.67.89.89'),('EASTC','Eastern Connection','35 King George','London','WX3 6FW','Royaume-Uni','(71) 555-0297','(71) 555-3373'),('ERNSH','Ernst Handel','Kirchgasse 6','Graz','8010','Autriche','7675-3425','7675-3426'),('FAMIA','Familia Arquibaldo','Rua Orós, 92','São Paulo','05442-030','Brésil','(11) 555-9857',''),('FISSA','FISSA Fabrica Inter. Salchichas S.A.','C/ Moralzarzal, 86','Madrid','28034','Espagne','(91) 555 94 44','(91) 555 55 93'),('FOLIG','Folies gourmandes','184, chaussée de Tournai','Lille','59000','France','03.20.16.10.16','03.20.16.10.17'),('FOLKO','Folk och fä HB','Åkergatan 24','Bräcke','S-844 67','Suède','0695-34 67 21',''),('FRANK','Frankenversand','Berliner Platz 43','München','80805','Allemagne','089-0877310','089-0877451'),('FRANR','France restauration','54, rue Royale','Nantes','44000','France','02.40.32.21.21','02.40.32.21.20'),('FRANS','Franchi S.p.A.','Via Monte Bianco 34','Torino','10100','Italie','011-4988260','011-4988261'),('FURIB','Furia Bacalhau e Frutos do Mar','Jardim das rosas n. 32','Lisboa','1675','Portugal','(1) 354-2534','(1) 354-2535'),('GALED','Galería del gastrónomo','Rambla de Cataluña, 23','Barcelona','08022','Espagne','(93) 203 4560','(93) 203 4561'),('GODOS','Godos Cocina Típica','C/ Romero, 33','Sevilla','41101','Espagne','(95) 555 82 82',''),('GOURL','Gourmet Lanchonetes','Av. Brasil, 442','Campinas','04876-786','Brésil','(11) 555-9482',''),('GREAL','Great Lakes Food Market','2732 Baker Blvd.','Eugene','97403','États-Unis','(503) 555-7555',''),('GROSR','GROSELLA-Restaurante','5ª Ave. Los Palos Grandes','Caracas','1081','Venezuela','(2) 283-2951','(2) 283-3397'),('HANAR','Hanari Carnes','Rua do Paço, 67','Rio de Janeiro','05454-876','Brésil','(21) 555-0091','(21) 555-8765'),('HILAA','HILARIÓN-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristóbal','5022','Venezuela','(5) 555-1340','(5) 555-1948'),('HUNGC','Hungry Coyote Import Store','City Center Plaza516 Main St.','Elgin','97827','États-Unis','(503) 555-6874','(503) 555-2376'),('HUNGO','Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','2506','Irlande','2967 542','2967 3333'),('ISLAT','Island Trading','Garden HouseCrowther Way','Cowes','PO31 7PJ','Royaume-Uni','(198) 555-8888',''),('KOENE','Königlich Essen','Maubelstr. 90','Brandenburg','14776','Allemagne','0555-09876',''),('LACOR','La corne d\'abondance','67, avenue de l\'Europe','Versailles','78000','France','01.30.59.84.10','01.30.59.85.11'),('LAMAI','La maison d\'Asie','1 rue Alsace-Lorraine','Toulouse','31000','France','05.61.77.61.10','05.61.77.61.11'),('LAUGB','Laughing Bacchus Wine Cellars','1900 Oak St.','Vancouver','V3F 2K1','Canada','(604) 555-3392','(604) 555-7293'),('LAZYK','Lazy K Kountry Store','12 Orchestra Terrace','Walla Walla','99362','États-Unis','(509) 555-7969','(509) 555-6221'),('LEHMS','Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M. ','60528','Allemagne','069-0245984','069-0245874'),('LETSS','Let\'s Stop N Shop','87 Polk St.Suite 5','San Francisco','94117','États-Unis','(415) 555-5938',''),('LILAS','LILA-Supermercado','Carrera 52 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','3508','Venezuela','(9) 331-6954','(9) 331-7256'),('LINOD','LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','4980','Venezuela','(8) 34-56-12','(8) 34-93-93'),('LONEP','Lonesome Pine Restaurant','89 Chiaroscuro Rd.','Portland','97219','États-Unis','(503) 555-9573','(503) 555-9646'),('MAGAA','Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo','24100','Italie','035-640230','035-640231'),('MAISD','Maison Dewey','Rue Joseph-Bens 532','Bruxelles','B-1180','Belgique','(02) 201 24 67','(02) 201 24 68'),('MEREP','Mère Paillarde','43 rue St. Laurent','Montréal','H1J 1C3','Canada','(514) 555-8054','(514) 555-8055'),('MORGK','Morgenstern Gesundkost','Heerstr. 22','Leipzig','04179','Allemagne','0342-023176',''),('NORTS','North/South','South House300 Queensbridge','London','SW7 1RZ','Royaume-Uni','(71) 555-7733','(71) 555-2530'),('OCEAN','Océano Atlántico Ltda.','Ing. Gustavo Moncada 8585Piso 20-A','Buenos Aires','1010','Argentine','(1) 135-5333','(1) 135-5535'),('OLDWO','Old World Delicatessen','2743 Bering St.','Anchorage','99508','États-Unis','(907) 555-7584','(907) 555-2880'),('OTTIK','Ottilies Käseladen','Mehrheimerstr. 369','Köln','50739','Allemagne','0221-0644327','0221-0765721'),('PARIS','Paris spécialités','265, boulevard Charonne','Paris','75012','France','01.42.34.22.66','01.42.34.22.77'),('PERIC','Pericles Comidas clásicas','Calle Dr. Jorge Cash 321','México D.F.','05033','Mexique','(5) 552-3745','(5) 545-3745'),('PICCO','Piccolo und mehr','Geislweg 14','Salzburg','5020','Autriche','6562-9722','6562-9723'),('PRINI','Princesa Isabel Vinhos','Estrada da saúde n. 58','Lisboa','1756','Portugal','(1) 356-5634',''),('QUEDE','Que Delícia','Rua da Panificadora, 12','Rio de Janeiro','02389-673','Brésil','(21) 555-4252','(21) 555-4545'),('QUEEN','Queen Cozinha','Alameda dos Canàrios, 891','São Paulo','05487-020','Brésil','(11) 555-1189',''),('QUICK','QUICK-Stop','Taucherstraße 10','Cunewalde','01307','Allemagne','0372-035188',''),('RANCH','Rancho grande','Av. del Libertador 900','Buenos Aires','1010','Argentine','(1) 123-5555','(1) 123-5556'),('RATTC','Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','87110','États-Unis','(505) 555-5939','(505) 555-3620'),('REGGC','Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia','42100','Italie','0522-556721','0522-556722'),('RICAR','Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','02389-890','Brésil','(21) 555-3412',''),('RICSU','Richter Supermarkt','Grenzacherweg 237','Genève','1203','Suisse','0897-034214',''),('ROMEY','Romero y tomillo','Gran Vía, 1','Madrid','28001','Espagne','(91) 745 6200','(91) 745 6210'),('SANTG','Santé Gourmet','Erling Skakkes gate 78','Stavern','4110','Norvège','07-98 92 35','07-98 92 47'),('SAVEA','Save-a-lot Markets','187 Suffolk Ln.','Boise','83720','États-Unis','(208) 555-8097',''),('SEVES','Seven Seas Imports','90 Wadhurst Rd.','London','OX15 4NB','Royaume-Uni','(71) 555-1717','(71) 555-5646'),('SIMOB','Simons bistro','Vinbæltet 34','København','1734','Danemark','31 12 34 56','31 13 35 57'),('SPECD','Spécialités du monde','25, rue Lauriston','Paris','75016','France','01.47.55.60.10','01.47.55.60.20'),('SPLIR','Split Rail Beer  Ale','P.O. Box 555','Lander','82520','États-Unis','(307) 555-4680','(307) 555-6525'),('SUPRD','Suprêmes délices','Boulevard Tirou, 255','Charleroi','B-6000','Belgique','(071) 23 67 22 20','(071) 23 67 22 21'),('THEBI','The Big Cheese','89 Jefferson WaySuite 2','Portland','97201','États-Unis','(503) 555-3612',''),('THECR','The Cracker Box','55 Grizzly Peak Rd.','Butte','59801','États-Unis','(406) 555-5834','(406) 555-8083'),('TOMSP','Toms Spezialitäten','Luisenstr. 48','Münster','44087','Allemagne','0251-031259','0251-035695'),('TORTU','Tortuga Restaurante','Avda. Azteca 123','México D.F.','05033','Mexique','(5) 555-2933',''),('TRADH','Tradição Hipermercados','Av. Inês de Castro, 414','São Paulo','05634-030','Brésil','(11) 555-2167','(11) 555-2168'),('TRAIH','Trail\'s Head Gourmet Provisioners','722 DaVinci Blvd.','Kirkland','98034','États-Unis','(206) 555-8257','(206) 555-2174'),('VAFFE','Vaffeljernet','Smagsløget 45','Århus','8200','Danemark','86 21 32 43','86 22 33 44'),('VICTE','Victuailles en stock','2, rue du Commerce','Lyon','69004','France','04.78.32.54.86','04.78.32.54.87'),('VINET','Vins et alcools Chevalier','59 rue de l\'Abbaye','Reims','51100','France','03.26.47.15.10','03.26.47.15.11'),('WANDK','Die Wandernde Kuh','Adenauerallee 900','Stuttgart','70563','Allemagne','0711-020361','0711-035428'),('WARTH','Wartian Herkku','Torikatu 38','Oulu','90110','Finlande','981-443655','981-443655'),('WELLI','Wellington Importadora','Rua do Mercado, 12','Resende','08737-363','Brésil','(14) 555-8122',''),('WHITC','White Clover Markets','305 - 14th Ave. S.Suite 3B','Seattle','98128','États-Unis','(206) 555-4112','(206) 555-4115'),('WILMK','Wilman Kala','Keskuskatu 45','Helsinki','21240','Finlande','90-224 8858','90-224 8858'),('WOLZA','Wolski  Zajazd','ul. Filtrowa 68','Warszawa','01-012','Pologne','(26) 642-7012','(26) 642-7012');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
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
