-- MySQL dump 10.13  Distrib 5.5.39, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: salary
-- ------------------------------------------------------
-- Server version	5.5.39-1

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
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `department` varchar(200) NOT NULL,
  PRIMARY KEY (`department`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('Anatomy'),('ART'),('Dentistry'),('Emergency Medicine'),('ENT'),('Medicine'),('OG'),('Opthalmology'),('Orthopaedics'),('Paediatrics'),('Plastic Surgery'),('Psychiatry'),('Skin'),('Surgery'),('TB-Chest'),('Unspecified');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `post` varchar(100) NOT NULL,
  PRIMARY KEY (`post`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES ('Assistant Professor'),('Associate Professor'),('Dean'),('Medical Superintendent'),('Professor'),('Tutor');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary` (
  `staff_id` bigint(20) NOT NULL,
  `bill_number` int(11) NOT NULL,
  `pbasic_pay` float NOT NULL,
  `pgrade_pay` float NOT NULL,
  `pnppa` float NOT NULL,
  `pda` float NOT NULL,
  `pcla` float NOT NULL,
  `phra` float NOT NULL,
  `pma` float NOT NULL,
  `pba` float NOT NULL,
  `pta` float NOT NULL,
  `pspecial1` float NOT NULL,
  `pspecial2` float NOT NULL,
  `pspecial3` float NOT NULL,
  `pspecial4` float NOT NULL,
  `mitax` float NOT NULL,
  `mhouse_rent` float NOT NULL,
  `mptax` float NOT NULL,
  `msis1` float NOT NULL,
  `msis2` float NOT NULL,
  `mgpf` float NOT NULL,
  `mcpf` float NOT NULL,
  `mgpf_advance` float NOT NULL,
  `madvance1` float NOT NULL,
  `madvance2` float NOT NULL,
  `madvance3` float NOT NULL,
  `madvance4` float NOT NULL,
  `mdeduction1` float NOT NULL,
  `mdeduction2` float NOT NULL,
  `mdeduction3` float NOT NULL,
  `mdeduction4` float NOT NULL,
  `budget_head` varchar(100) NOT NULL,
  `fullname` varchar(300) NOT NULL,
  `bank_acc_number` varchar(50) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `gpf_acc` varchar(50) NOT NULL,
  `cpf_acc` varchar(100) NOT NULL,
  `department` varchar(200) NOT NULL,
  `post` varchar(100) NOT NULL,
  `remark` varchar(100) NOT NULL,
  PRIMARY KEY (`staff_id`,`bill_number`),
  CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES (1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','ALKA UDAYANIYA','111110003687','Dena Bank','MED/GUJ/37969','','Anatomy','Professor',''),(1,1,37000,45,0,0,200,9,0,0,0,0,0,0,0,0,1200,0,0,0,0,0,0,345,0,0,0,0,0,0,0,'','ALKA UDAYANIYA','111110003687','Dena Bank','MED/GUJ/37969','','Anatomy','Professor',''),(1,2,44444,444,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5555,0,0,0,0,0,'','ALKA UDAYANIYA','111110003687','Dena Bank','MED/GUJ/37969','','Anatomy','Professor',''),(1,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','ALKA UDAYANIYA','111110003687','Dena Bank','MED/GUJ/37969','','Anatomy','Professor',''),(1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','ALKA UDAYANIYA','111110003687','Dena Bank','MED/GUJ/37969','','Anatomy','Professor',''),(1,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','ALKA UDAYANIYA','111110003687','Dena Bank','MED/GUJ/37969','','Anatomy','Professor',''),(1,32,45666,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,345,0,0,0,'','ALKA UDAYANIYA','111110003687','Dena Bank','MED/GUJ/37969','','Anatomy','Professor',''),(1,34,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','ALKA UDAYANIYA','111110003687','Dena Bank','MED/GUJ/37969','','Anatomy','Professor',''),(1,43,34000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','ALKA UDAYANIYA','111110003687','Dena Bank','MED/GUJ/37969','','Anatomy','Professor',''),(1,46,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','ALKA UDAYANIYA','111110003687','Dena Bank','MED/GUJ/37969','','Anatomy','Professor',''),(1,67,34,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','ALKA UDAYANIYA','111110003687','Dena Bank','MED/GUJ/37969','','Anatomy','Professor',''),(1,90,90,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','ALKA UDAYANIYA','111110003687','Dena Bank','MED/GUJ/37969','','Anatomy','Professor',''),(1,1501,34000,0,0,0,0,0,0,0,0,0,0,0,0,3400,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','ALKA UDAYANIYA','111110003687','Dena Bank','MED/GUJ/37969','','Anatomy','Professor',''),(1,170204,5340,10000,15863,99101,240,0,300,100,0,0,0,0,0,35500,600,200,120,280,50000,0,0,0,0,0,0,0,0,0,0,'salary','ALKA UDAYANIYA','111110003687','Dena Bank','MED/GUJ/37969','','Opthalmology','Professor','salary of Feb 2017'),(1,170308,456777,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,340,0,0,0,0,0,0,0,0,0,0,0,0,'','ALKA UDAYANIYA','111110003687','Dena Bank','MED/GUJ/37969','','Anatomy','Professor','gdfg'),(2,170304,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','ALOK N. PAREKH','111110028844','Dena Bank','','','','',''),(2,170308,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','ALOK N. PAREKH','111110028844','Dena Bank','','','','',''),(4,170204,18600,7000,6400,40000,240,6400,300,100,1600,0,0,0,0,6000,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'salary','ANAND V. CHAUDHARY','111110025106','Dena Bank','NOT ALLOTED','','','','salary of Feb 2017'),(5,170204,48110,9000,14278,89235,240,0,300,100,0,0,0,0,0,39000,600,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'salary','ANJANI SHRIVASTAVA','111110003050','Dena Bank','NOT ALLOTED','','','','salary of Feb 2017'),(6,170204,20170,7000,6793,42454,240,0,300,100,0,0,0,0,0,0,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'salary','B. DIVAKAR','111110005458','Dena Bank','','','','','salary of Feb 2017'),(7,170204,59000,9000,17000,106250,240,17000,300,100,1600,0,0,0,0,57000,0,200,120,280,25000,0,0,0,0,0,0,0,0,0,0,'salary','B.M. JHA','111110001993','Dena Bank','MED/GUJ/26424','','','','salary of Feb 2017'),(8,170204,51600,9000,15150,94688,240,0,300,100,0,0,0,0,0,67500,600,200,120,280,50000,0,0,0,0,0,0,0,0,0,0,'salary','BHARATI V. UMARVANSHI','111110002377','Dena Bank','MED/GUJ/26613','','','','salary of Feb 2017'),(9,170204,48110,9000,14278,89235,240,14278,300,100,1600,0,0,0,0,33000,0,200,120,280,20000,0,0,0,0,0,0,0,0,0,0,'salary','BHAVNA GAMIT','111110002834','Dena Bank','MED/GUJ/26657','','','','salary of Feb 2017'),(10,170204,56890,9000,16473,102954,240,0,300,100,0,0,0,0,0,58000,600,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'salary','BINA B. VAIDYA','111110001983','Dena Bank','MED/GUJ/36762','','','','salary of Feb 2017'),(11,170204,37400,9000,11600,72500,240,11600,0,100,1600,0,0,0,0,4000,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'salary','BRIJESH V. PARMAR','111110023761','Dena Bank','NOT ALLOTED','','','','salary of Feb 2017'),(12,170204,53420,9000,15605,97531,240,15605,300,100,1600,0,0,0,0,43000,0,200,120,280,75000,0,0,0,0,0,0,0,0,0,0,'salary','CHETAN ACHARYA','111110002900','Dena Bank','MED/GUJ/26627','','','','salary of Feb 2017'),(13,170204,56440,10000,16610,103813,240,0,300,100,0,0,0,0,0,0,0,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'salary','D.M. PARMAR','111110002284','Dena Bank','MED/GUJ/26656','','','','salary of Feb 2017'),(14,170204,19520,5400,6230,38938,240,6230,300,100,1600,0,0,0,0,0,0,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'salary','DIPTI THAKUR','111110035210','Dena Bank','NOT ALLOTED','','','','salary of Feb 2017'),(15,170204,58000,10000,17000,106250,240,0,300,100,0,0,0,0,0,46000,0,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'salary','GANESH GOVEKAR','111110023976','Dena Bank','MED/GUJ/35072','','','','salary of Feb 2017'),(16,170204,57360,10000,16840,105250,240,0,300,100,0,0,0,0,0,54200,600,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'salary','GUNVANT R. PARMAR','111110003109','Dena Bank','MED/GUJ/26701','','','','salary of Feb 2017'),(17,170204,44850,10000,13713,85704,240,0,300,100,0,0,0,0,0,44500,600,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'salary','HARI J. MENON','111110025108','Dena Bank','NOT ALLOTED','','','','salary of Feb 2017'),(18,170204,46440,9000,13860,86625,240,13860,300,100,1600,0,0,0,0,0,0,200,120,280,7000,0,0,0,0,0,0,0,0,0,0,'salary','HARSHAD M. PATEL','111110002403','Dena Bank','MED/GUJ/40421','','','','salary of Feb 2017'),(19,170204,31220,7000,9555,59719,240,9555,300,100,1600,0,0,0,0,24000,0,200,120,280,40000,0,0,0,0,0,0,0,0,0,0,'salary','HETAL THAKAR','111110002952','Dena Bank','MED/GUJ/37915','','','','salary of Feb 2017'),(20,170204,22700,7000,7425,46406,240,7425,300,100,1600,0,0,0,0,32500,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'salary','HINAL BHAGAT','111110004606','Dena Bank','NOT ALLOTED','','','','salary of Feb 2017'),(21,170204,57210,9000,16553,103454,240,0,300,100,0,0,0,0,0,25000,600,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'salary','J.K. KOSAMBIYA','111110001248','Dena Bank','MED/GUJ/23914','','','','salary of Feb 2017'),(22,170204,58000,10000,17000,106250,240,17000,300,100,1600,0,0,0,0,57000,0,200,120,280,10000,0,0,0,0,0,0,0,0,0,0,'salary','JAYMIN CONTRACTOR','111110004017','Dena Bank','MED/GUJ/37997','','','','salary of Feb 2017'),(23,170204,22700,7000,7425,46406,240,7425,300,100,1600,0,0,0,0,4000,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'salary','JIGNESH PATEL','111110026088','Dena Bank','NOT ALLOTED','','','','salary of Feb 2017'),(24,170204,51600,9000,15150,94688,240,0,300,100,0,0,0,0,0,11600,0,200,120,280,10000,0,0,0,0,0,0,0,0,0,0,'salary','KAMLESH DAVE','111110003195','Dena Bank','MED/GUJ/40181','','','','salary of Feb 2017'),(25,170204,20990,7000,6998,43735,240,6998,300,100,1600,0,0,0,0,6400,0,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'salary','KHYATI D. SHAMALIYA','111110005792','Dena Bank','STOP PAYMENT','','','','salary of Feb 2017'),(26,170204,29820,7000,9205,57531,240,9205,300,100,1600,0,0,0,0,3000,0,200,120,280,6000,0,0,0,0,0,0,0,0,0,0,'salary','LATIKA N. PUROHITH','111110003353','Dena Bank','MED/GUJ/26699','','','','salary of Feb 2017'),(27,170204,58000,10000,17000,106250,240,17000,300,100,0,0,0,0,0,50000,0,200,120,280,35000,0,0,0,0,0,0,0,0,0,0,'salary','M. K. VADEL','111110001909','Dena Bank','MED/GUJ/22841','','','','salary of Feb 2017'),(28,170204,58880,9000,16970,106063,240,16970,300,100,1600,0,0,0,0,64000,0,200,120,280,50000,0,0,0,0,0,0,0,0,0,0,'salary','MANDAKINI PATEL','111110001925','Dena Bank','MED/GUJ/23847','','','','salary of Feb 2017'),(30,170204,21830,7000,7208,45048,240,7208,300,100,1600,0,0,0,0,12700,0,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'salary','NIDHI D. PATEL','111110005996','Dena Bank',' NOT ALLOTED','','','','salary of Feb 2017'),(31,170204,57250,9000,16563,103516,240,0,300,100,0,0,0,0,0,65000,1040,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'salary','NIMESH VERMA','111110029623','Dena Bank','MED/GUJ/36764','','','','salary of Feb 2017'),(33,170204,59000,9000,17000,106250,240,17000,0,100,1600,0,0,0,0,53000,0,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'salary','P. Z. WADIA','111110003983','Dena Bank','MED/GUJ/26384','','','','salary of Feb 2017'),(34,170204,25470,7000,8118,50735,240,8118,300,100,1600,0,0,0,0,27000,0,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'salary','PINAL C. SHAH','111110006246','Dena Bank','MED/GUJ/40504','','','','salary of Feb 2017'),(35,170204,19370,7000,6593,41204,240,6593,0,100,1600,0,0,0,0,14400,0,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'salary','PRADHYUMAN CHAUDHARI','111110032803','Dena Bank','NOT ALLOTED','','','','salary of Feb 2017'),(36,170204,21830,7000,7208,45048,240,7208,300,100,1600,0,0,0,0,9900,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'salary','PRAKASH PATEL','111110027142','Dena Bank','NOT ALLOTED','','','','salary of Feb 2017'),(38,170204,58000,10000,17000,106250,240,17000,300,100,1600,0,0,0,0,41000,0,200,120,280,20000,0,0,0,0,0,0,0,0,0,0,'salary','PRITI KAPADIYA','111110004725','Dena Bank','MED/GUJ/26639','','','','salary of Feb 2017'),(39,170204,49830,9000,14708,91923,240,14708,300,100,1600,0,0,0,0,49000,0,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'salary','PUNEET SAXENA','111110004349','Dena Bank','MED/GUJ/40050','','','','salary of Feb 2017'),(40,170204,57090,9000,16523,103266,240,16523,300,100,1600,0,0,0,0,53100,0,200,120,280,12000,0,0,0,0,0,0,0,0,0,0,'salary','R. N. HATHILA','111110002299','Dena Bank','MED/GUJ/26651','','','','salary of Feb 2017'),(41,170204,57500,10000,16875,105469,240,0,300,100,0,0,0,0,0,65000,0,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'salary','RAGINI VERMA','111110003290','Dena Bank','MED/GUJ/36765','','','','salary of Feb 2017'),(41,170304,41000,0,0,0,0,0,0,0,0,0,0,0,0,3999,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','RAGINI VERMA','111110003290','Dena Bank','MED/GUJ/36765','','','',''),(41,170305,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','RAGINI VERMA','111110003290','Dena Bank','MED/GUJ/36765','','','',''),(41,170306,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','RAGINI VERMA','111110003290','Dena Bank','MED/GUJ/36765','','','',''),(41,170404,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','RAGINI VERMA','111110003290','Dena Bank','MED/GUJ/36765','','','',''),(41,170504,0,0,0,0,0,0,0,0,0,0,0,0,0,444,40,0,0,55,0,0,0,0,0,0,0,0,0,0,0,'Salary','RAGINI VERMA','111110003290','Dena Bank','MED/GUJ/36765','','','','Pay of May 2017'),(42,170204,57210,9000,16553,103454,240,0,300,100,0,0,0,0,0,51000,1040,200,120,280,10000,0,0,0,0,0,0,0,0,0,0,'salary','SANGEETA TRIVEDI','111110002508','Dena Bank','MED/GUJ/26696','','','','salary of Feb 2017'),(43,170204,20170,7000,6793,42454,240,0,300,100,0,0,0,0,0,7000,600,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'salary','SARITA H. PATEL','111110024853','Dena Bank','NOT ALLOTED','','','','salary of Feb 2017'),(44,170204,20990,7000,6998,43735,240,6998,300,100,1600,0,0,0,0,17000,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'salary','SHAILEE N. VYAS','111110024497','Dena Bank','NOT ALLOTED','','','','salary of Feb 2017'),(45,170204,32530,7000,9883,61766,240,9883,300,100,1600,0,0,0,0,22000,0,200,120,280,30000,0,0,0,0,0,0,0,0,0,0,'salary','SHARMISTHA PATEL','111110002447','Dena Bank','MED/GUJ/26581','','','','salary of Feb 2017'),(46,170204,51600,9000,15150,94688,240,15150,300,100,1600,0,0,0,0,21000,0,200,120,280,40000,0,0,0,0,0,0,0,0,0,0,'salary','SNEHLATA J. CHAUDHARI','111110003601','Dena Bank','MED/GUJ/26375','','','','salary of Feb 2017'),(47,170204,19370,7000,6593,41204,240,0,300,100,0,0,0,0,0,9400,400,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'salary','TEJAL A. CHAUDHARI','111110032641','Dena Bank','NOT ALLOTED','','','','salary of Feb 2017'),(48,170204,59000,9000,17000,106250,240,0,300,100,0,0,0,0,0,55000,1040,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'salary','VASUDHA M. BHAGAT','111110001928','Dena Bank','MED/GUJ/26423','','','','salary of Feb 2017'),(49,170204,58000,10000,17000,106250,240,17000,300,100,1600,0,0,0,0,28000,0,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'salary','VIJAY B. SHAH','111110001812','Dena Bank','MED/GUJ/26508','','','','salary of Feb 2017'),(50,170204,43250,9000,13063,81641,240,13063,300,100,1600,0,0,0,0,18200,0,200,120,280,25000,0,0,0,0,0,0,0,0,0,0,'salary','VIPUL D. PATEL','0','Dena Bank','MED/GUJ/12490','','','','salary of Feb 2017');
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `staff_id` bigint(20) NOT NULL,
  `fullname` varchar(300) NOT NULL,
  `bank_acc_number` varchar(50) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `gpf_acc` varchar(50) NOT NULL,
  `cpf_acc` varchar(100) NOT NULL,
  `department` varchar(200) NOT NULL,
  `post` varchar(100) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'ALKA UDAYANIYA','111110003687','Dena Bank','MED/GUJ/37969','','Anatomy','Professor'),(2,'ALOK N. PAREKH','111110028844','Dena Bank','','','Biochemistry','Assistant Professor'),(3,'AMIT L. GAMIT','111110024884','Dena Bank','','','',''),(4,'ANAND V. CHAUDHARY','111110025106','Dena Bank','','','',''),(5,'ANJANI SHRIVASTAVA','111110003050','Dena Bank','','','',''),(6,'B. DIVAKAR','111110005458','Dena Bank','','','',''),(7,'B.M. JHA','111110001993','Dena Bank','MED/GUJ/26424','','',''),(8,'BHARATI V. UMARVANSHI','111110002377','Dena Bank','MED/GUJ/26613','','',''),(9,'BHAVNA GAMIT','111110002834','Dena Bank','MED/GUJ/26657','','',''),(10,'BINA B. VAIDYA','111110001983','Dena Bank','MED/GUJ/36762','','',''),(11,'BRIJESH V. PARMAR','111110023761','Dena Bank','','','',''),(12,'CHETAN ACHARYA','111110002900','Dena Bank','MED/GUJ/26627','','',''),(13,'D.M. PARMAR','111110002284','Dena Bank','MED/GUJ/26656','','',''),(14,'DIPTI THAKUR','111110035210','Dena Bank','','','',''),(15,'GANESH GOVEKAR','111110023976','Dena Bank','MED/GUJ/35072','','',''),(16,'GUNVANT R. PARMAR','111110003109','Dena Bank','MED/GUJ/26701','','',''),(17,'HARI J. MENON','111110025108','Dena Bank','','','',''),(18,'HARSHAD M. PATEL','111110002403','Dena Bank','MED/GUJ/40421','','',''),(19,'HETAL THAKAR','111110002952','Dena Bank','MED/GUJ/37915','','',''),(20,'HINAL BHAGAT','111110004606','Dena Bank','','','',''),(21,'J.K. KOSAMBIYA','111110001248','Dena Bank','MED/GUJ/23914','','',''),(22,'JAYMIN CONTRACTOR','111110004017','Dena Bank','MED/GUJ/37997','','',''),(23,'JIGNESH PATEL','111110026088','Dena Bank','','','',''),(24,'KAMLESH DAVE','111110003195','Dena Bank','MED/GUJ/40181','','',''),(25,'KHYATI D. SHAMALIYA','111110005792','Dena Bank','','','',''),(26,'LATIKA N. PUROHITH','111110003353','Dena Bank','MED/GUJ/26699','','',''),(27,'M. K. VADEL','111110001909','Dena Bank','MED/GUJ/22841','','',''),(28,'MANDAKINI PATEL','111110001925','Dena Bank','MED/GUJ/23847','','',''),(29,'NEELAM N. PARMAR','111110004581','Dena Bank','','','',''),(30,'NIDHI D. PATEL','111110005996','Dena Bank',' ','','',''),(31,'NIMESH VERMA','111110029623','Dena Bank','MED/GUJ/36764','','',''),(32,'NIRALI P. PATEL','111110027606','Dena Bank','','','',''),(33,'P. Z. WADIA','111110003983','Dena Bank','MED/GUJ/26384','','',''),(34,'PINAL C. SHAH','111110006246','Dena Bank','MED/GUJ/40504','','',''),(35,'PRADHYUMAN CHAUDHARI','111110032803','Dena Bank','','','',''),(36,'PRAKASH PATEL','111110027142','Dena Bank','','','',''),(37,'PRASHANT CHOTALIYA','111110025896','Dena Bank','','','',''),(38,'PRITI KAPADIYA','111110004725','Dena Bank','MED/GUJ/26639','','',''),(39,'PUNEET SAXENA','111110004349','Dena Bank','MED/GUJ/40050','','',''),(40,'R. N. HATHILA','111110002299','Dena Bank','MED/GUJ/26651','','',''),(41,'RAGINI VERMA','111110003290','Dena Bank','MED/GUJ/36765','','',''),(42,'SANGEETA TRIVEDI','111110002508','Dena Bank','MED/GUJ/26696','','',''),(43,'SARITA H. PATEL','111110024853','Dena Bank','','','',''),(44,'SHAILEE N. VYAS','111110024497','Dena Bank','','','',''),(45,'SHARMISTHA PATEL','111110002447','Dena Bank','MED/GUJ/26581','','',''),(46,'SNEHLATA J. CHAUDHARI','111110003601','Dena Bank','MED/GUJ/26375','','',''),(47,'TEJAL A. CHAUDHARI','111110032641','Dena Bank','','','',''),(48,'VASUDHA M. BHAGAT','111110001928','Dena Bank','MED/GUJ/26423','','',''),(49,'VIJAY B. SHAH','111110001812','Dena Bank','MED/GUJ/26508','','',''),(50,'VIPUL D. PATEL','0','Dena Bank','MED/GUJ/12490','','','');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_position`
--

DROP TABLE IF EXISTS `staff_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_position` (
  `staff_position_id` int(11) NOT NULL DEFAULT '0',
  `department` varchar(100) NOT NULL,
  `post` varchar(100) NOT NULL,
  PRIMARY KEY (`staff_position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_position`
--

LOCK TABLES `staff_position` WRITE;
/*!40000 ALTER TABLE `staff_position` DISABLE KEYS */;
INSERT INTO `staff_position` VALUES (110101,'ANAESTHESI','PRO'),(110201,'ANAESTHESI','ASO'),(110301,'ANAESTHESI','A.P'),(110302,'ANAESTHESI','A.P'),(120101,'ANATOMY','PRO'),(120201,'ANATOMY','ASO'),(120202,'ANATOMY','ASO'),(120401,'ANATOMY','TUT'),(120402,'ANATOMY','TUT'),(120403,'ANATOMY','TUT'),(130301,'ANESTHESIA','A.P'),(130401,'ANESTHESIA','TUT'),(140101,'BIOCHEMIS','PRO'),(140201,'BIOCHEMIS','ASO'),(140301,'BIOCHEMIS','A.P'),(140302,'BIOCHEMIS','A.P'),(140401,'BIOCHEMIS','TUT'),(150101,'DENTISTRY','PRO'),(150201,'DENTESTRY','ASO'),(160101,'E.N.T.','PRO'),(160301,'E.N.T.','A.P'),(170301,'EM.MEDICIN','A.P'),(180101,'FOR.MEDI','PRO'),(180201,'FOR.MEDI','ASO'),(180202,'FOR.MEDI','ASO'),(180301,'FOR.MEDI','A.P'),(180302,'FOR.MEDI','A.P'),(180401,'FOR.MEDI','TUT'),(180402,'FOR.MEDI','TUT'),(190201,'MEDICINE','ASO'),(190202,'MEDICINE','ASO'),(190203,'MEDICINE','ASO'),(190204,'MEDICINE','ASO'),(190301,'MEDICINE','A.P'),(190302,'MEDICINE','A.P'),(190303,'MEDICINE','A.P'),(190304,'MEDICINE','A.P'),(190305,'MEDICINE','A.P'),(200101,'MICROBIOLO','PRO'),(200201,'MICROBIOLO','ASO'),(200205,'MICROBIOLO','ASO'),(200301,'MICROBIOLO','A.P'),(200401,'MICROBIOLO','TUT'),(200402,'MICROBIOLO','TUT'),(210101,'NEUR.SURG.','PRO'),(220101,'OBST.& GYN','PRO'),(220201,'OBST.& GYN','ASO'),(220301,'O.G.(MCHO)','A.P'),(220302,'OBST.GYNEC','A.P'),(220303,'OBST.GYNEC','A.P'),(230101,'ORTHOPADIC','PRO'),(230301,'ORTHOPEDIC','A.P'),(240101,'P.S.M.','PRO'),(240201,'P.S.M.','ASO'),(240202,'P.S.M.','ASO'),(240301,'P.S.M.','A.P'),(240501,'P.S.M.','ETM'),(240601,'P.S.M.','LMO'),(240602,'P.S.M.','LMO'),(240901,'P.S.M.','V.OF'),(250101,'PAEDIATRIC','PRO'),(250201,'PAEDIATRIC','ASO'),(250701,'PAEDIATRIC','CHIL'),(260201,'PATHOLOGY','ASO'),(260202,'PATHOLOGY','ASO'),(260203,'PATHOLOGY','ASO'),(260204,'PATHOLOGY','ASO'),(260301,'PATHOLOGY','A.P'),(260302,'PATHOLOGY','A.P'),(260303,'PATHOLOGY','A.P'),(260401,'PATHOLOGY','TUT'),(260402,'PATHOLOGY','TUT'),(270101,'PHARMACOLO','PRO'),(270201,'PHARMACOLO','ASO'),(270301,'PHARMACOLO','A.P'),(270302,'PHARMECOLO','A.P'),(270801,'PHARMACOLO','CHE'),(280101,'PHYSIOLOGY','PRO'),(280201,'PHYSIOLOGY','ASO'),(280303,'PHYSIOLOGY','A.P'),(280401,'PHYSIOLOGY','TUT'),(280402,'PHYSIOLOGY','TUT'),(280403,'PHYSIOLOGY','TUT'),(280404,'PHYSIOLOGY','TUT'),(290201,'PSYCHIATRY','ASO'),(290301,'PSYCHIATRY','A.P'),(290302,'PSYCHIATRY','A.P'),(300101,'RADIOTHERA','PRO'),(300303,'RADIOTHERA','A.P'),(310101,'RADIOLOGY','PRO'),(310304,'RADIOLOGY','A.P'),(310401,'RADIOLOGY','TUT'),(320201,'SKIN & V.D','ASO'),(330101,'SURGERY','PRO'),(330201,'SURGERY','ASO'),(330202,'SURGERY','ASO'),(330203,'SURGERY','ASO'),(330301,'SURGERY','A.P'),(330302,'SURGERY','A.P'),(330303,'SURGERY','A.P'),(340301,'T.B.','A.P'),(350101,'UROLOGY','PRO'),(350201,'UROLOGY','ASO'),(350301,'UROLOGY','A.P'),(360101,'OPHTHAMOLO','PRO');
/*!40000 ALTER TABLE `staff_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL,
  `department` varchar(100) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `right` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'one','f97c5d29941bfb1b2fdab0874906ab82','','',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-20  9:49:57
