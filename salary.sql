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
-- Table structure for table `bill_group`
--

DROP TABLE IF EXISTS `bill_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill_group` (
  `bill_number` int(11) NOT NULL,
  `date_of_preparation` date NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `head` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `remark` varchar(100) NOT NULL,
  PRIMARY KEY (`bill_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_group`
--

LOCK TABLES `bill_group` WRITE;
/*!40000 ALTER TABLE `bill_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_type`
--

DROP TABLE IF EXISTS `bill_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill_type` (
  `bill_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_type`
--

LOCK TABLES `bill_type` WRITE;
/*!40000 ALTER TABLE `bill_type` DISABLE KEYS */;
INSERT INTO `bill_type` VALUES ('Pay Bill'),('Arrears Bill'),('Supplimentary bill');
/*!40000 ALTER TABLE `bill_type` ENABLE KEYS */;
UNLOCK TABLES;

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
  `bill_group` int(11) NOT NULL,
  `bill_number` int(11) NOT NULL,
  `fullname` varchar(300) NOT NULL,
  `department` varchar(200) NOT NULL,
  `post` varchar(100) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `bill_type` varchar(100) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `Pay_of_Officer_0101(+)` float NOT NULL,
  `Grade_Pay_of_Officer_0101(+)` float NOT NULL,
  `Pay_of_Establishment_0102(+)` float NOT NULL,
  `Grade_Pay_of_Establishment_0102(+)` float NOT NULL,
  `0128(+)` float NOT NULL,
  `Dearness_Allowance_0103(+)` float NOT NULL,
  `Compansatory_Local_Allowance_0111(+)` float NOT NULL,
  `House_Rent_Allowance_0110(+)` float NOT NULL,
  `Medical_Allowance_0107(+)` float NOT NULL,
  `ba_104(+)` float NOT NULL,
  `Transport_Allowance_0113(+)` float NOT NULL,
  `Interim_Relief_0112(+)` float NOT NULL,
  `Washing_Allowance_0132(+)` float NOT NULL,
  `Uniform_Allowance_0131(+)` float NOT NULL,
  `Nursing_Allownace_0129(+)` float NOT NULL,
  `sp1(+)` float NOT NULL,
  `sp2(+)` float NOT NULL,
  `sp3(+)` float NOT NULL,
  `sp4(+)` float NOT NULL,
  `Income_Tax_9510(-)` float NOT NULL,
  `9560(-)` float NOT NULL,
  `GPF_non_CIV_9570(-)` float NOT NULL,
  `SIS_I_9581(-)` float NOT NULL,
  `SIS_S_9582(-)` float NOT NULL,
  `9670(-)` float NOT NULL,
  `9690(-)` float NOT NULL,
  `gpfa(-)` float NOT NULL,
  `0101(-)` float NOT NULL,
  `0102(-)` float NOT NULL,
  `7057(-)` float NOT NULL,
  `7058(-)` float NOT NULL,
  `ded1(-)` float NOT NULL,
  `ded2(-)` float NOT NULL,
  `ded3(-)` float NOT NULL,
  `ded4(-)` float NOT NULL,
  `bank_acc_number` varchar(50) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `gpf_acc` varchar(50) NOT NULL,
  `cpf_acc` varchar(100) NOT NULL,
  `pan` varchar(20) NOT NULL,
  `quarter` varchar(20) NOT NULL,
  `budget_head` varchar(100) NOT NULL,
  PRIMARY KEY (`staff_id`,`bill_group`),
  CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES (30,1,1,'NIDHI D. PATEL','','','0000-00-00','0000-00-00','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110005996','Dena Bank',' ','','','',''),(32,1,2,'NIRALI P. PATEL','','','0000-00-00','0000-00-00','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110027606','Dena Bank','','','','',''),(32,2,4,'NIRALI P. PATEL','','','2017-05-01','2017-05-31','Arrears Bill','ABC FGH',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110027606','Dena Bank','','','','','DFG'),(33,144,0,'P. Z. WADIA','','','1899-11-18','1899-11-17','','',2220,0,33,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,330,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110003983','Dena Bank','MED/GUJ/26384','','','','try'),(36,1,2,'PRAKASH PATEL','','','0000-00-00','0000-00-00','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110027142','Dena Bank','','','','',''),(36,2,3,'PRAKASH PATEL','','','2017-05-01','2017-05-31','Arrears Bill','ABC FGH',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110027142','Dena Bank','','','','','DFG'),(36,22,3,'PRAKASH PATEL','','','2017-03-10','2017-03-03','Supplimentary bill','xyz',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110027142','Dena Bank','','','','','hh'),(36,123,2,'PRAKASH PATEL','','','0000-00-00','0000-00-00','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110027142','Dena Bank','','','','',''),(36,124,2,'PRAKASH PATEL','','','0000-00-00','0000-00-00','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110027142','Dena Bank','','','','',''),(36,11228,2,'PRAKASH PATEL','','','1899-11-01','1899-11-30','Arrears Bill','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110027142','Dena Bank','','','','',''),(50,2,4,'VIPUL D. PATEL','','','2017-03-01','2017-03-02','Arrears Bill','xyz',10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0','Dena Bank','MED/GUJ/12490','','','','DFG'),(50,52,1,'VIPUL D. PATEL','Dentistry','','2017-03-02','2017-03-31','Arrears Bill','New',220,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,224,0,24,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0','Dena Bank','MED/GUJ/12490','','','','Salary(110)'),(50,90,0,'VIPUL D. PATEL','Dentistry','Dean','1899-11-03','1899-11-17','Supplimentary bill','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0','Dena Bank','MED/GUJ/12490','','','',''),(50,123,1,'VIPUL D. PATEL','Dentistry','','2029-11-03','2139-11-07','Supplimentary bill','xyz',220,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,224,0,24,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0','Dena Bank','MED/GUJ/12490','','','','hh'),(50,144,1,'VIPUL D. PATEL','','','2017-03-01','2017-03-31','Pay Bill','xyz',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0','Dena Bank','MED/GUJ/12490','','','','hh'),(50,1111,0,'VIPUL D. PATEL','','','0000-00-00','0000-00-00','','',10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0','Dena Bank','MED/GUJ/12490','','','',''),(50,11223,1,'VIPUL D. PATEL','','','0000-00-00','0000-00-00','Arrears Bill','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0','Dena Bank','MED/GUJ/12490','','','',''),(50,11228,1,'VIPUL D. PATEL','','','0000-00-00','0000-00-00','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0','Dena Bank','MED/GUJ/12490','','','',''),(50,170301,1,'VIPUL D. PATEL','','','0000-00-00','0000-00-00','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0','Dena Bank','MED/GUJ/12490','','','',''),(50,170302,0,'VIPUL D. PATEL','','','0000-00-00','0000-00-00','','',10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0','Dena Bank','MED/GUJ/12490','','','','');
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_head`
--

DROP TABLE IF EXISTS `salary_head`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary_head` (
  `edp` varchar(20) NOT NULL,
  `ooe` varchar(100) NOT NULL,
  `bc` varchar(20) NOT NULL,
  PRIMARY KEY (`edp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_head`
--

LOCK TABLES `salary_head` WRITE;
/*!40000 ALTER TABLE `salary_head` DISABLE KEYS */;
INSERT INTO `salary_head` VALUES ('0101(+)','Pay of Officers','0101'),('0102(+)','Pay of Establishment','0102'),('0103(+)','Dearness Allow.','0103'),('9510(-)','Income Tax','');
/*!40000 ALTER TABLE `salary_head` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_old`
--

DROP TABLE IF EXISTS `salary_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary_old` (
  `staff_id` bigint(20) NOT NULL,
  `bill_number` int(11) NOT NULL,
  `fullname` varchar(300) NOT NULL,
  `department` varchar(200) NOT NULL,
  `_post` varchar(100) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `pbasic_pay` float NOT NULL,
  `pgrade_pay` float NOT NULL,
  `pnppa` float NOT NULL,
  `pda` float NOT NULL,
  `pcla` float NOT NULL,
  `phra` float NOT NULL,
  `pma` float NOT NULL,
  `pba` float NOT NULL,
  `pta` float NOT NULL,
  `pinterim_relief` double NOT NULL,
  `pwa` double NOT NULL,
  `pua` double NOT NULL,
  `pmess_a` double NOT NULL,
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
  `bank_acc_number` varchar(50) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `gpf_acc` varchar(50) NOT NULL,
  `cpf_acc` varchar(100) NOT NULL,
  `basic_catagory` varchar(20) NOT NULL,
  `_pan` varchar(20) NOT NULL,
  `quarter` varchar(20) NOT NULL,
  `budget_head` varchar(100) NOT NULL,
  PRIMARY KEY (`staff_id`,`bill_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_old`
--

LOCK TABLES `salary_old` WRITE;
/*!40000 ALTER TABLE `salary_old` DISABLE KEYS */;
INSERT INTO `salary_old` VALUES (1,1,'ALKA UDAYANIYA','Anatomy','Professor','',37000,45,0,0,200,9,0,0,0,0,0,0,0,0,0,0,0,0,1200,0,0,0,0,0,0,345,0,0,0,0,0,0,0,'111110003687','Dena Bank','MED/GUJ/37969','','','','',''),(1,2,'ALKA UDAYANIYA','Anatomy','Professor','',44444,444,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5555,0,0,0,0,0,'111110003687','Dena Bank','MED/GUJ/37969','','','','',''),(1,4,'ALKA UDAYANIYA','Anatomy','Professor','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110003687','Dena Bank','MED/GUJ/37969','','','','',''),(1,5,'ALKA UDAYANIYA','Anatomy','Professor','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110003687','Dena Bank','MED/GUJ/37969','','','','',''),(1,12,'ALKA UDAYANIYA','Anatomy','Professor','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110003687','Dena Bank','MED/GUJ/37969','','','','',''),(1,32,'ALKA UDAYANIYA','Anatomy','Professor','',45666,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,345,0,0,0,'111110003687','Dena Bank','MED/GUJ/37969','','','','',''),(1,34,'ALKA UDAYANIYA','Anatomy','Professor','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110003687','Dena Bank','MED/GUJ/37969','','','','',''),(1,43,'ALKA UDAYANIYA','Anatomy','Professor','',34000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110003687','Dena Bank','MED/GUJ/37969','','','','',''),(1,46,'ALKA UDAYANIYA','Anatomy','Professor','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110003687','Dena Bank','MED/GUJ/37969','','','','',''),(1,67,'ALKA UDAYANIYA','Anatomy','Professor','',34,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110003687','Dena Bank','MED/GUJ/37969','','','','',''),(1,101,'ALKA UDAYANIYA','Anatomy','Professor','',23022,334,444,0,0,0,0,0,0,0,0,0,0,0,0,0,0,345,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110003687','Dena Bank','MED/GUJ/37969','','','XYZAA','A/24',''),(1,666,'ALKA UDAYANIYA','Opthalmology','Professor','salary of Feb 2017',5340,10000,15863,99101,240,0,300,100,0,0,0,0,0,0,0,0,0,35500,600,200,120,280,50000,0,0,0,0,0,0,0,0,0,0,'111110003687','Dena Bank','MED/GUJ/37969','','','','','salary'),(1,777,'ALKA UDAYANIYA','Opthalmology','Professor','salary of Feb 2017',5340,10000,15863,99101,240,0,300,100,0,0,0,0,0,0,0,0,0,35500,600,200,120,280,50000,0,0,0,0,0,0,0,0,0,0,'111110003687','Dena Bank','MED/GUJ/37969','','','','','salary'),(1,888,'ALKA UDAYANIYA','Opthalmology','Professor','salary of Feb 2017',5340,10000,15863,99101,240,0,300,100,0,0,0,0,0,0,0,0,0,35500,600,200,120,280,50000,0,0,0,0,0,0,0,0,0,0,'111110003687','Dena Bank','MED/GUJ/37969','','','','','salary'),(1,999,'ALKA UDAYANIYA','Opthalmology','Professor','salary of Feb 2017',5340,10000,15863,99101,240,0,300,100,0,0,0,0,0,0,0,0,0,35500,600,200,120,280,50000,0,0,0,0,0,0,0,0,0,0,'111110003687','Dena Bank','MED/GUJ/37969','','','','','salary'),(1,1501,'ALKA UDAYANIYA','Anatomy','Professor','',34000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3400,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110003687','Dena Bank','MED/GUJ/37969','','','','',''),(1,1502,'ALKA UDAYANIYA','Anatomy','Professor','',34000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3400,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110003687','Dena Bank','MED/GUJ/37969','','','','',''),(1,1503,'ALKA UDAYANIYA','Anatomy','Professor','',34000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3400,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110003687','Dena Bank','MED/GUJ/37969','','','','',''),(1,1888,'ALKA UDAYANIYA','Opthalmology','Professor','salary of Feb 2017',5340,10000,15863,99101,240,0,300,100,0,0,0,0,0,0,0,0,0,35500,600,200,120,280,50000,0,0,0,0,0,0,0,0,0,0,'111110003687','Dena Bank','MED/GUJ/37969','','','','','salary'),(4,1,'ANAND V. CHAUDHARY','','','salary of Feb 2017',18600,7000,6400,40000,240,6400,300,100,1600,0,0,0,0,0,0,0,0,6000,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110025106','Dena Bank','NOT ALLOTED','','','','','salary'),(5,888,'ANJANI SHRIVASTAVA','','','salary of Feb 2017',48110,9000,14278,89235,240,0,300,100,0,0,0,0,0,0,0,0,0,39000,600,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110003050','Dena Bank','NOT ALLOTED','','','','','salary'),(5,999,'ANJANI SHRIVASTAVA','','','salary of Feb 2017',48110,9000,14278,89235,240,0,300,100,0,0,0,0,0,0,0,0,0,39000,600,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110003050','Dena Bank','NOT ALLOTED','','','','','salary'),(5,1888,'ANJANI SHRIVASTAVA','','','salary of Feb 2017',48110,9000,14278,89235,240,0,300,100,0,0,0,0,0,0,0,0,0,39000,600,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110003050','Dena Bank','NOT ALLOTED','','','','','salary'),(6,888,'B. DIVAKAR','','','salary of Feb 2017',20170,7000,6793,42454,240,0,300,100,0,0,0,0,0,0,0,0,0,0,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110005458','Dena Bank','','','','','','salary'),(6,999,'B. DIVAKAR','','','salary of Feb 2017',20170,7000,6793,42454,240,0,300,100,0,0,0,0,0,0,0,0,0,0,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110005458','Dena Bank','','','','','','salary'),(6,1888,'B. DIVAKAR','','','salary of Feb 2017',20170,7000,6793,42454,240,0,300,100,0,0,0,0,0,0,0,0,0,0,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110005458','Dena Bank','','','','','','salary'),(7,888,'B.M. JHA','','','salary of Feb 2017',59000,9000,17000,106250,240,17000,300,100,1600,0,0,0,0,0,0,0,0,57000,0,200,120,280,25000,0,0,0,0,0,0,0,0,0,0,'111110001993','Dena Bank','MED/GUJ/26424','','','','','salary'),(7,999,'B.M. JHA','','','salary of Feb 2017',59000,9000,17000,106250,240,17000,300,100,1600,0,0,0,0,0,0,0,0,57000,0,200,120,280,25000,0,0,0,0,0,0,0,0,0,0,'111110001993','Dena Bank','MED/GUJ/26424','','','','','salary'),(7,1888,'B.M. JHA','','','salary of Feb 2017',59000,9000,17000,106250,240,17000,300,100,1600,0,0,0,0,0,0,0,0,57000,0,200,120,280,25000,0,0,0,0,0,0,0,0,0,0,'111110001993','Dena Bank','MED/GUJ/26424','','','','','salary'),(8,22,'BHARATI V. UMARVANSHI','','','salary of Feb 2017',51600,9000,15150,94688,240,0,300,100,0,0,0,0,0,0,0,0,0,67500,600,200,120,280,50000,0,0,0,0,0,0,0,0,0,0,'111110002377','Dena Bank','MED/GUJ/26613','','','','','salary'),(8,888,'BHARATI V. UMARVANSHI','','','salary of Feb 2017',51600,9000,15150,94688,240,0,300,100,0,0,0,0,0,0,0,0,0,67500,600,200,120,280,50000,0,0,0,0,0,0,0,0,0,0,'111110002377','Dena Bank','MED/GUJ/26613','','','','','salary'),(8,999,'BHARATI V. UMARVANSHI','','','salary of Feb 2017',51600,9000,15150,94688,240,0,300,100,0,0,0,0,0,0,0,0,0,67500,600,200,120,280,50000,0,0,0,0,0,0,0,0,0,0,'111110002377','Dena Bank','MED/GUJ/26613','','','','','salary'),(8,1888,'BHARATI V. UMARVANSHI','','','salary of Feb 2017',51600,9000,15150,94688,240,0,300,100,0,0,0,0,0,0,0,0,0,67500,600,200,120,280,50000,0,0,0,0,0,0,0,0,0,0,'111110002377','Dena Bank','MED/GUJ/26613','','','','','salary'),(10,22,'BINA B. VAIDYA','','','salary of Feb 2017',56890,9000,16473,102954,240,0,300,100,0,0,0,0,0,0,0,0,0,58000,600,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'111110001983','Dena Bank','MED/GUJ/36762','','','','','salary'),(10,103,'BINA B. VAIDYA','','','salary of Feb 2017',56890,9000,16473,102954,240,0,300,100,0,0,0,0,0,0,0,0,0,58000,600,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'111110001983','Dena Bank','MED/GUJ/36762','','','','','salary'),(10,888,'BINA B. VAIDYA','','','salary of Feb 2017',56890,9000,16473,102954,240,0,300,100,0,0,0,0,0,0,0,0,0,58000,600,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'111110001983','Dena Bank','MED/GUJ/36762','','','','','salary'),(10,999,'BINA B. VAIDYA','','','salary of Feb 2017',56890,9000,16473,102954,240,0,300,100,0,0,0,0,0,0,0,0,0,58000,600,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'111110001983','Dena Bank','MED/GUJ/36762','','','','','salary'),(10,1888,'BINA B. VAIDYA','','','salary of Feb 2017',56890,9000,16473,102954,240,0,300,100,0,0,0,0,0,0,0,0,0,58000,600,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'111110001983','Dena Bank','MED/GUJ/36762','','','','','salary'),(10,170204,'BINA B. VAIDYA','','','salary of Feb 2017',56890,9000,16473,102954,240,0,300,100,0,0,0,0,0,0,0,0,0,58000,600,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'111110001983','Dena Bank','MED/GUJ/36762','','','','','salary'),(11,103,'BRIJESH V. PARMAR','','','salary of Feb 2017',37400,9000,11600,72500,240,11600,0,100,1600,0,0,0,0,0,0,0,0,4000,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110023761','Dena Bank','NOT ALLOTED','','','','','salary'),(11,888,'BRIJESH V. PARMAR','','','salary of Feb 2017',37400,9000,11600,72500,240,11600,0,100,1600,0,0,0,0,0,0,0,0,4000,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110023761','Dena Bank','NOT ALLOTED','','','','','salary'),(11,999,'BRIJESH V. PARMAR','','','salary of Feb 2017',37400,9000,11600,72500,240,11600,0,100,1600,0,0,0,0,0,0,0,0,4000,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110023761','Dena Bank','NOT ALLOTED','','','','','salary'),(11,1888,'BRIJESH V. PARMAR','','','salary of Feb 2017',37400,9000,11600,72500,240,11600,0,100,1600,0,0,0,0,0,0,0,0,4000,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110023761','Dena Bank','NOT ALLOTED','','','','','salary'),(11,170204,'BRIJESH V. PARMAR','','','salary of Feb 2017',37400,9000,11600,72500,240,11600,0,100,1600,0,0,0,0,0,0,0,0,4000,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110023761','Dena Bank','NOT ALLOTED','','','','','salary'),(12,22,'CHETAN ACHARYA','','','salary of Feb 2017',53420,9000,15605,97531,240,15605,300,100,1600,0,0,0,0,0,0,0,0,43000,0,200,120,280,75000,0,0,0,0,0,0,0,0,0,0,'111110002900','Dena Bank','MED/GUJ/26627','','','','','salary'),(12,103,'CHETAN ACHARYA','','','salary of Feb 2017',53420,9000,15605,97531,240,15605,300,100,1600,0,0,0,0,0,0,0,0,43000,0,200,120,280,75000,0,0,0,0,0,0,0,0,0,0,'111110002900','Dena Bank','MED/GUJ/26627','','','','','salary'),(12,888,'CHETAN ACHARYA','','','salary of Feb 2017',53420,9000,15605,97531,240,15605,300,100,1600,0,0,0,0,0,0,0,0,43000,0,200,120,280,75000,0,0,0,0,0,0,0,0,0,0,'111110002900','Dena Bank','MED/GUJ/26627','','','','','salary'),(12,999,'CHETAN ACHARYA','','','salary of Feb 2017',53420,9000,15605,97531,240,15605,300,100,1600,0,0,0,0,0,0,0,0,43000,0,200,120,280,75000,0,0,0,0,0,0,0,0,0,0,'111110002900','Dena Bank','MED/GUJ/26627','','','','','salary'),(12,1888,'CHETAN ACHARYA','','','salary of Feb 2017',53420,9000,15605,97531,240,15605,300,100,1600,0,0,0,0,0,0,0,0,43000,0,200,120,280,75000,0,0,0,0,0,0,0,0,0,0,'111110002900','Dena Bank','MED/GUJ/26627','','','','','salary'),(12,170204,'CHETAN ACHARYA','','','salary of Feb 2017',53420,9000,15605,97531,240,15605,300,100,1600,0,0,0,0,0,0,0,0,43000,0,200,120,280,75000,0,0,0,0,0,0,0,0,0,0,'111110002900','Dena Bank','MED/GUJ/26627','','','','','salary'),(13,22,'D.M. PARMAR','','','salary of Feb 2017',56440,10000,16610,103813,240,0,300,100,0,0,0,0,0,0,0,0,0,0,0,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110002284','Dena Bank','MED/GUJ/26656','','','','','salary'),(13,888,'D.M. PARMAR','','','salary of Feb 2017',56440,10000,16610,103813,240,0,300,100,0,0,0,0,0,0,0,0,0,0,0,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110002284','Dena Bank','MED/GUJ/26656','','','','','salary'),(13,999,'D.M. PARMAR','','','salary of Feb 2017',56440,10000,16610,103813,240,0,300,100,0,0,0,0,0,0,0,0,0,0,0,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110002284','Dena Bank','MED/GUJ/26656','','','','','salary'),(13,1888,'D.M. PARMAR','','','salary of Feb 2017',56440,10000,16610,103813,240,0,300,100,0,0,0,0,0,0,0,0,0,0,0,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110002284','Dena Bank','MED/GUJ/26656','','','','','salary'),(13,170204,'D.M. PARMAR','','','salary of Feb 2017',56440,10000,16610,103813,240,0,300,100,0,0,0,0,0,0,0,0,0,0,0,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110002284','Dena Bank','MED/GUJ/26656','','','','','salary'),(15,22,'GANESH GOVEKAR','ENT','Professor','salary of Feb 2017',58000,10000,17000,106250,240,0,300,100,0,0,0,0,0,0,0,0,0,46000,0,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'111110023976','Dena Bank','MED/GUJ/35072','','','','','salary'),(15,888,'GANESH GOVEKAR','ENT','Professor','salary of Feb 2017',58000,10000,17000,106250,240,0,300,100,0,0,0,0,0,0,0,0,0,46000,0,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'111110023976','Dena Bank','MED/GUJ/35072','','','','','salary'),(15,999,'GANESH GOVEKAR','ENT','Professor','salary of Feb 2017',58000,10000,17000,106250,240,0,300,100,0,0,0,0,0,0,0,0,0,46000,0,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'111110023976','Dena Bank','MED/GUJ/35072','','','','','salary'),(15,1888,'GANESH GOVEKAR','ENT','Professor','salary of Feb 2017',58000,10000,17000,106250,240,0,300,100,0,0,0,0,0,0,0,0,0,46000,0,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'111110023976','Dena Bank','MED/GUJ/35072','','','','','salary'),(15,170204,'GANESH GOVEKAR','ENT','Professor','salary of Feb 2017',58000,10000,17000,106250,240,0,300,100,0,0,0,0,0,0,0,0,0,46000,0,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'111110023976','Dena Bank','MED/GUJ/35072','','','','','salary'),(16,22,'GUNVANT R. PARMAR','','','salary of Feb 2017',57360,10000,16840,105250,240,0,300,100,0,0,0,0,0,0,0,0,0,54200,600,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'111110003109','Dena Bank','MED/GUJ/26701','','','','','salary'),(16,888,'GUNVANT R. PARMAR','','','salary of Feb 2017',57360,10000,16840,105250,240,0,300,100,0,0,0,0,0,0,0,0,0,54200,600,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'111110003109','Dena Bank','MED/GUJ/26701','','','','','salary'),(16,999,'GUNVANT R. PARMAR','','','salary of Feb 2017',57360,10000,16840,105250,240,0,300,100,0,0,0,0,0,0,0,0,0,54200,600,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'111110003109','Dena Bank','MED/GUJ/26701','','','','','salary'),(16,1888,'GUNVANT R. PARMAR','','','salary of Feb 2017',57360,10000,16840,105250,240,0,300,100,0,0,0,0,0,0,0,0,0,54200,600,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'111110003109','Dena Bank','MED/GUJ/26701','','','','','salary'),(16,170204,'GUNVANT R. PARMAR','','','salary of Feb 2017',57360,10000,16840,105250,240,0,300,100,0,0,0,0,0,0,0,0,0,54200,600,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'111110003109','Dena Bank','MED/GUJ/26701','','','','','salary'),(17,22,'HARI J. MENON','','','salary of Feb 2017',44850,10000,13713,85704,240,0,300,100,0,0,0,0,0,0,0,0,0,44500,600,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110025108','Dena Bank','NOT ALLOTED','','','','','salary'),(17,888,'HARI J. MENON','','','salary of Feb 2017',44850,10000,13713,85704,240,0,300,100,0,0,0,0,0,0,0,0,0,44500,600,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110025108','Dena Bank','NOT ALLOTED','','','','','salary'),(17,999,'HARI J. MENON','','','salary of Feb 2017',44850,10000,13713,85704,240,0,300,100,0,0,0,0,0,0,0,0,0,44500,600,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110025108','Dena Bank','NOT ALLOTED','','','','','salary'),(17,1888,'HARI J. MENON','','','salary of Feb 2017',44850,10000,13713,85704,240,0,300,100,0,0,0,0,0,0,0,0,0,44500,600,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110025108','Dena Bank','NOT ALLOTED','','','','','salary'),(17,170204,'HARI J. MENON','','','salary of Feb 2017',44850,10000,13713,85704,240,0,300,100,0,0,0,0,0,0,0,0,0,44500,600,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110025108','Dena Bank','NOT ALLOTED','','','','','salary'),(18,22,'HARSHAD M. PATEL','','','salary of Feb 2017',46440,9000,13860,86625,240,13860,300,100,1600,0,0,0,0,0,0,0,0,0,0,200,120,280,7000,0,0,0,0,0,0,0,0,0,0,'111110002403','Dena Bank','MED/GUJ/40421','','','','','salary'),(18,888,'HARSHAD M. PATEL','','','salary of Feb 2017',46440,9000,13860,86625,240,13860,300,100,1600,0,0,0,0,0,0,0,0,0,0,200,120,280,7000,0,0,0,0,0,0,0,0,0,0,'111110002403','Dena Bank','MED/GUJ/40421','','','','','salary'),(18,999,'HARSHAD M. PATEL','','','salary of Feb 2017',46440,9000,13860,86625,240,13860,300,100,1600,0,0,0,0,0,0,0,0,0,0,200,120,280,7000,0,0,0,0,0,0,0,0,0,0,'111110002403','Dena Bank','MED/GUJ/40421','','','','','salary'),(18,1888,'HARSHAD M. PATEL','','','salary of Feb 2017',46440,9000,13860,86625,240,13860,300,100,1600,0,0,0,0,0,0,0,0,0,0,200,120,280,7000,0,0,0,0,0,0,0,0,0,0,'111110002403','Dena Bank','MED/GUJ/40421','','','','','salary'),(18,170204,'HARSHAD M. PATEL','','','salary of Feb 2017',46440,9000,13860,86625,240,13860,300,100,1600,0,0,0,0,0,0,0,0,0,0,200,120,280,7000,0,0,0,0,0,0,0,0,0,0,'111110002403','Dena Bank','MED/GUJ/40421','','','','','salary'),(19,22,'HETAL THAKAR','','','salary of Feb 2017',31220,7000,9555,59719,240,9555,300,100,1600,0,0,0,0,0,0,0,0,24000,0,200,120,280,40000,0,0,0,0,0,0,0,0,0,0,'111110002952','Dena Bank','MED/GUJ/37915','','','','','salary'),(19,888,'HETAL THAKAR','','','salary of Feb 2017',31220,7000,9555,59719,240,9555,300,100,1600,0,0,0,0,0,0,0,0,24000,0,200,120,280,40000,0,0,0,0,0,0,0,0,0,0,'111110002952','Dena Bank','MED/GUJ/37915','','','','','salary'),(19,999,'HETAL THAKAR','','','salary of Feb 2017',31220,7000,9555,59719,240,9555,300,100,1600,0,0,0,0,0,0,0,0,24000,0,200,120,280,40000,0,0,0,0,0,0,0,0,0,0,'111110002952','Dena Bank','MED/GUJ/37915','','','','','salary'),(19,1888,'HETAL THAKAR','','','salary of Feb 2017',31220,7000,9555,59719,240,9555,300,100,1600,0,0,0,0,0,0,0,0,24000,0,200,120,280,40000,0,0,0,0,0,0,0,0,0,0,'111110002952','Dena Bank','MED/GUJ/37915','','','','','salary'),(19,170204,'HETAL THAKAR','','','salary of Feb 2017',31220,7000,9555,59719,240,9555,300,100,1600,0,0,0,0,0,0,0,0,24000,0,200,120,280,40000,0,0,0,0,0,0,0,0,0,0,'111110002952','Dena Bank','MED/GUJ/37915','','','','','salary'),(20,22,'HINAL BHAGAT','','','salary of Feb 2017',22700,7000,7425,46406,240,7425,300,100,1600,0,0,0,0,0,0,0,0,32500,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110004606','Dena Bank','NOT ALLOTED','','','','','salary'),(20,888,'HINAL BHAGAT','','','salary of Feb 2017',22700,7000,7425,46406,240,7425,300,100,1600,0,0,0,0,0,0,0,0,32500,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110004606','Dena Bank','NOT ALLOTED','','','','','salary'),(20,999,'HINAL BHAGAT','','','salary of Feb 2017',22700,7000,7425,46406,240,7425,300,100,1600,0,0,0,0,0,0,0,0,32500,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110004606','Dena Bank','NOT ALLOTED','','','','','salary'),(20,1888,'HINAL BHAGAT','','','salary of Feb 2017',22700,7000,7425,46406,240,7425,300,100,1600,0,0,0,0,0,0,0,0,32500,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110004606','Dena Bank','NOT ALLOTED','','','','','salary'),(20,170204,'HINAL BHAGAT','','','salary of Feb 2017',22700,7000,7425,46406,240,7425,300,100,1600,0,0,0,0,0,0,0,0,32500,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110004606','Dena Bank','NOT ALLOTED','','','','','salary'),(21,22,'J.K. KOSAMBIYA','','','salary of Feb 2017',57210,9000,16553,103454,240,0,300,100,0,0,0,0,0,0,0,0,0,25000,600,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110001248','Dena Bank','MED/GUJ/23914','','','','','salary'),(21,888,'J.K. KOSAMBIYA','','','salary of Feb 2017',57210,9000,16553,103454,240,0,300,100,0,0,0,0,0,0,0,0,0,25000,600,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110001248','Dena Bank','MED/GUJ/23914','','','','','salary'),(21,999,'J.K. KOSAMBIYA','','','salary of Feb 2017',57210,9000,16553,103454,240,0,300,100,0,0,0,0,0,0,0,0,0,25000,600,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110001248','Dena Bank','MED/GUJ/23914','','','','','salary'),(21,1888,'J.K. KOSAMBIYA','','','salary of Feb 2017',57210,9000,16553,103454,240,0,300,100,0,0,0,0,0,0,0,0,0,25000,600,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110001248','Dena Bank','MED/GUJ/23914','','','','','salary'),(21,170204,'J.K. KOSAMBIYA','','','salary of Feb 2017',57210,9000,16553,103454,240,0,300,100,0,0,0,0,0,0,0,0,0,25000,600,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110001248','Dena Bank','MED/GUJ/23914','','','','','salary'),(22,22,'JAYMIN CONTRACTOR','','','salary of Feb 2017',58000,10000,17000,106250,240,17000,300,100,1600,0,0,0,0,0,0,0,0,57000,0,200,120,280,10000,0,0,0,0,0,0,0,0,0,0,'111110004017','Dena Bank','MED/GUJ/37997','','','','','salary'),(22,888,'JAYMIN CONTRACTOR','','','salary of Feb 2017',58000,10000,17000,106250,240,17000,300,100,1600,0,0,0,0,0,0,0,0,57000,0,200,120,280,10000,0,0,0,0,0,0,0,0,0,0,'111110004017','Dena Bank','MED/GUJ/37997','','','','','salary'),(22,999,'JAYMIN CONTRACTOR','','','salary of Feb 2017',58000,10000,17000,106250,240,17000,300,100,1600,0,0,0,0,0,0,0,0,57000,0,200,120,280,10000,0,0,0,0,0,0,0,0,0,0,'111110004017','Dena Bank','MED/GUJ/37997','','','','','salary'),(22,1888,'JAYMIN CONTRACTOR','','','salary of Feb 2017',58000,10000,17000,106250,240,17000,300,100,1600,0,0,0,0,0,0,0,0,57000,0,200,120,280,10000,0,0,0,0,0,0,0,0,0,0,'111110004017','Dena Bank','MED/GUJ/37997','','','','','salary'),(22,170204,'JAYMIN CONTRACTOR','','','salary of Feb 2017',58000,10000,17000,106250,240,17000,300,100,1600,0,0,0,0,0,0,0,0,57000,0,200,120,280,10000,0,0,0,0,0,0,0,0,0,0,'111110004017','Dena Bank','MED/GUJ/37997','','','','','salary'),(23,22,'JIGNESH PATEL','','','salary of Feb 2017',22700,7000,7425,46406,240,7425,300,100,1600,0,0,0,0,0,0,0,0,4000,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110026088','Dena Bank','NOT ALLOTED','','','','','salary'),(23,888,'JIGNESH PATEL','','','salary of Feb 2017',22700,7000,7425,46406,240,7425,300,100,1600,0,0,0,0,0,0,0,0,4000,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110026088','Dena Bank','NOT ALLOTED','','','','','salary'),(23,999,'JIGNESH PATEL','','','salary of Feb 2017',22700,7000,7425,46406,240,7425,300,100,1600,0,0,0,0,0,0,0,0,4000,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110026088','Dena Bank','NOT ALLOTED','','','','','salary'),(23,1888,'JIGNESH PATEL','','','salary of Feb 2017',22700,7000,7425,46406,240,7425,300,100,1600,0,0,0,0,0,0,0,0,4000,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110026088','Dena Bank','NOT ALLOTED','','','','','salary'),(23,170204,'JIGNESH PATEL','','','salary of Feb 2017',22700,7000,7425,46406,240,7425,300,100,1600,0,0,0,0,0,0,0,0,4000,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110026088','Dena Bank','NOT ALLOTED','','','','','salary'),(24,22,'KAMLESH DAVE','','','salary of Feb 2017',51600,9000,15150,94688,240,0,300,100,0,0,0,0,0,0,0,0,0,11600,0,200,120,280,10000,0,0,0,0,0,0,0,0,0,0,'111110003195','Dena Bank','MED/GUJ/40181','','','','','salary'),(24,888,'KAMLESH DAVE','','','salary of Feb 2017',51600,9000,15150,94688,240,0,300,100,0,0,0,0,0,0,0,0,0,11600,0,200,120,280,10000,0,0,0,0,0,0,0,0,0,0,'111110003195','Dena Bank','MED/GUJ/40181','','','','','salary'),(24,999,'KAMLESH DAVE','','','salary of Feb 2017',51600,9000,15150,94688,240,0,300,100,0,0,0,0,0,0,0,0,0,11600,0,200,120,280,10000,0,0,0,0,0,0,0,0,0,0,'111110003195','Dena Bank','MED/GUJ/40181','','','','','salary'),(24,1888,'KAMLESH DAVE','','','salary of Feb 2017',51600,9000,15150,94688,240,0,300,100,0,0,0,0,0,0,0,0,0,11600,0,200,120,280,10000,0,0,0,0,0,0,0,0,0,0,'111110003195','Dena Bank','MED/GUJ/40181','','','','','salary'),(24,170204,'KAMLESH DAVE','','','salary of Feb 2017',51600,9000,15150,94688,240,0,300,100,0,0,0,0,0,0,0,0,0,11600,0,200,120,280,10000,0,0,0,0,0,0,0,0,0,0,'111110003195','Dena Bank','MED/GUJ/40181','','','','','salary'),(25,22,'KHYATI D. SHAMALIYA','','','salary of Feb 2017',20990,7000,6998,43735,240,6998,300,100,1600,0,0,0,0,0,0,0,0,6400,0,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110005792','Dena Bank','STOP PAYMENT','','','','','salary'),(25,888,'KHYATI D. SHAMALIYA','','','salary of Feb 2017',20990,7000,6998,43735,240,6998,300,100,1600,0,0,0,0,0,0,0,0,6400,0,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110005792','Dena Bank','STOP PAYMENT','','','','','salary'),(25,999,'KHYATI D. SHAMALIYA','','','salary of Feb 2017',20990,7000,6998,43735,240,6998,300,100,1600,0,0,0,0,0,0,0,0,6400,0,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110005792','Dena Bank','STOP PAYMENT','','','','','salary'),(25,1888,'KHYATI D. SHAMALIYA','','','salary of Feb 2017',20990,7000,6998,43735,240,6998,300,100,1600,0,0,0,0,0,0,0,0,6400,0,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110005792','Dena Bank','STOP PAYMENT','','','','','salary'),(25,170204,'KHYATI D. SHAMALIYA','','','salary of Feb 2017',20990,7000,6998,43735,240,6998,300,100,1600,0,0,0,0,0,0,0,0,6400,0,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110005792','Dena Bank','STOP PAYMENT','','','','','salary'),(26,22,'LATIKA N. PUROHITH','','','salary of Feb 2017',29820,7000,9205,57531,240,9205,300,100,1600,0,0,0,0,0,0,0,0,3000,0,200,120,280,6000,0,0,0,0,0,0,0,0,0,0,'111110003353','Dena Bank','MED/GUJ/26699','','','','','salary'),(26,888,'LATIKA N. PUROHITH','','','salary of Feb 2017',29820,7000,9205,57531,240,9205,300,100,1600,0,0,0,0,0,0,0,0,3000,0,200,120,280,6000,0,0,0,0,0,0,0,0,0,0,'111110003353','Dena Bank','MED/GUJ/26699','','','','','salary'),(26,999,'LATIKA N. PUROHITH','','','salary of Feb 2017',29820,7000,9205,57531,240,9205,300,100,1600,0,0,0,0,0,0,0,0,3000,0,200,120,280,6000,0,0,0,0,0,0,0,0,0,0,'111110003353','Dena Bank','MED/GUJ/26699','','','','','salary'),(26,1888,'LATIKA N. PUROHITH','','','salary of Feb 2017',29820,7000,9205,57531,240,9205,300,100,1600,0,0,0,0,0,0,0,0,3000,0,200,120,280,6000,0,0,0,0,0,0,0,0,0,0,'111110003353','Dena Bank','MED/GUJ/26699','','','','','salary'),(26,170204,'LATIKA N. PUROHITH','','','salary of Feb 2017',29820,7000,9205,57531,240,9205,300,100,1600,0,0,0,0,0,0,0,0,3000,0,200,120,280,6000,0,0,0,0,0,0,0,0,0,0,'111110003353','Dena Bank','MED/GUJ/26699','','','','','salary'),(27,22,'M. K. VADEL','','','salary of Feb 2017',58000,10000,17000,106250,240,17000,300,100,0,0,0,0,0,0,0,0,0,50000,0,200,120,280,35000,0,0,0,0,0,0,0,0,0,0,'111110001909','Dena Bank','MED/GUJ/22841','','','','','salary'),(27,888,'M. K. VADEL','','','salary of Feb 2017',58000,10000,17000,106250,240,17000,300,100,0,0,0,0,0,0,0,0,0,50000,0,200,120,280,35000,0,0,0,0,0,0,0,0,0,0,'111110001909','Dena Bank','MED/GUJ/22841','','','','','salary'),(27,999,'M. K. VADEL','','','salary of Feb 2017',58000,10000,17000,106250,240,17000,300,100,0,0,0,0,0,0,0,0,0,50000,0,200,120,280,35000,0,0,0,0,0,0,0,0,0,0,'111110001909','Dena Bank','MED/GUJ/22841','','','','','salary'),(27,1888,'M. K. VADEL','','','salary of Feb 2017',58000,10000,17000,106250,240,17000,300,100,0,0,0,0,0,0,0,0,0,50000,0,200,120,280,35000,0,0,0,0,0,0,0,0,0,0,'111110001909','Dena Bank','MED/GUJ/22841','','','','','salary'),(27,170204,'M. K. VADEL','','','salary of Feb 2017',58000,10000,17000,106250,240,17000,300,100,0,0,0,0,0,0,0,0,0,50000,0,200,120,280,35000,0,0,0,0,0,0,0,0,0,0,'111110001909','Dena Bank','MED/GUJ/22841','','','','','salary'),(28,22,'MANDAKINI PATEL','','','salary of Feb 2017',58880,9000,16970,106063,240,16970,300,100,1600,0,0,0,0,0,0,0,0,64000,0,200,120,280,50000,0,0,0,0,0,0,0,0,0,0,'111110001925','Dena Bank','MED/GUJ/23847','','','','','salary'),(28,888,'MANDAKINI PATEL','','','salary of Feb 2017',58880,9000,16970,106063,240,16970,300,100,1600,0,0,0,0,0,0,0,0,64000,0,200,120,280,50000,0,0,0,0,0,0,0,0,0,0,'111110001925','Dena Bank','MED/GUJ/23847','','','','','salary'),(28,999,'MANDAKINI PATEL','','','salary of Feb 2017',58880,9000,16970,106063,240,16970,300,100,1600,0,0,0,0,0,0,0,0,64000,0,200,120,280,50000,0,0,0,0,0,0,0,0,0,0,'111110001925','Dena Bank','MED/GUJ/23847','','','','','salary'),(28,1888,'MANDAKINI PATEL','','','salary of Feb 2017',58880,9000,16970,106063,240,16970,300,100,1600,0,0,0,0,0,0,0,0,64000,0,200,120,280,50000,0,0,0,0,0,0,0,0,0,0,'111110001925','Dena Bank','MED/GUJ/23847','','','','','salary'),(28,170204,'MANDAKINI PATEL','','','salary of Feb 2017',58880,9000,16970,106063,240,16970,300,100,1600,0,0,0,0,0,0,0,0,64000,0,200,120,280,50000,0,0,0,0,0,0,0,0,0,0,'111110001925','Dena Bank','MED/GUJ/23847','','','','','salary'),(29,103,'NEELAM N. PARMAR','','','',103,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110004581','Dena Bank','','','','','',''),(30,22,'NIDHI D. PATEL','','','salary of Feb 2017',21830,7000,7208,45048,240,7208,300,100,1600,0,0,0,0,0,0,0,0,12700,0,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110005996','Dena Bank',' NOT ALLOTED','','','','','salary'),(30,888,'NIDHI D. PATEL','','','salary of Feb 2017',21830,7000,7208,45048,240,7208,300,100,1600,0,0,0,0,0,0,0,0,12700,0,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110005996','Dena Bank',' NOT ALLOTED','','','','','salary'),(30,1888,'NIDHI D. PATEL','','','salary of Feb 2017',21830,7000,7208,45048,240,7208,300,100,1600,0,0,0,0,0,0,0,0,12700,0,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110005996','Dena Bank',' NOT ALLOTED','','','','','salary'),(30,170204,'NIDHI D. PATEL','','','salary of Feb 2017',21830,7000,7208,45048,240,7208,300,100,1600,0,0,0,0,0,0,0,0,12700,0,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110005996','Dena Bank',' NOT ALLOTED','','','','','salary'),(31,888,'NIMESH VERMA','','','salary of Feb 2017',57250,9000,16563,103516,240,0,300,100,0,0,0,0,0,0,0,0,0,65000,1040,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110029623','Dena Bank','MED/GUJ/36764','','','','','salary'),(31,999,'NIMESH VERMA','','','salary of Feb 2017',57250,9000,16563,103516,240,0,300,100,0,0,0,0,0,0,0,0,0,65000,1040,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110029623','Dena Bank','MED/GUJ/36764','','','','','salary'),(31,1888,'NIMESH VERMA','','','salary of Feb 2017',57250,9000,16563,103516,240,0,300,100,0,0,0,0,0,0,0,0,0,65000,1040,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110029623','Dena Bank','MED/GUJ/36764','','','','','salary'),(33,22,'P. Z. WADIA','','','salary of Feb 2017',59000,9000,17000,106250,240,17000,0,100,1600,0,0,0,0,0,0,0,0,53000,0,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'111110003983','Dena Bank','MED/GUJ/26384','','','','','salary'),(33,888,'P. Z. WADIA','','','salary of Feb 2017',59000,9000,17000,106250,240,17000,0,100,1600,0,0,0,0,0,0,0,0,53000,0,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'111110003983','Dena Bank','MED/GUJ/26384','','','','','salary'),(33,999,'P. Z. WADIA','','','salary of Feb 2017',59000,9000,17000,106250,240,17000,0,100,1600,0,0,0,0,0,0,0,0,53000,0,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'111110003983','Dena Bank','MED/GUJ/26384','','','','','salary'),(33,1888,'P. Z. WADIA','','','salary of Feb 2017',59000,9000,17000,106250,240,17000,0,100,1600,0,0,0,0,0,0,0,0,53000,0,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'111110003983','Dena Bank','MED/GUJ/26384','','','','','salary'),(33,170204,'P. Z. WADIA','','','salary of Feb 2017',59000,9000,17000,106250,240,17000,0,100,1600,0,0,0,0,0,0,0,0,53000,0,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'111110003983','Dena Bank','MED/GUJ/26384','','','','','salary'),(34,22,'PINAL C. SHAH','','','salary of Feb 2017',25470,7000,8118,50735,240,8118,300,100,1600,0,0,0,0,0,0,0,0,27000,0,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110006246','Dena Bank','MED/GUJ/40504','','','','','salary'),(34,888,'PINAL C. SHAH','','','salary of Feb 2017',25470,7000,8118,50735,240,8118,300,100,1600,0,0,0,0,0,0,0,0,27000,0,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110006246','Dena Bank','MED/GUJ/40504','','','','','salary'),(34,999,'PINAL C. SHAH','','','salary of Feb 2017',25470,7000,8118,50735,240,8118,300,100,1600,0,0,0,0,0,0,0,0,27000,0,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110006246','Dena Bank','MED/GUJ/40504','','','','','salary'),(34,1888,'PINAL C. SHAH','','','salary of Feb 2017',25470,7000,8118,50735,240,8118,300,100,1600,0,0,0,0,0,0,0,0,27000,0,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110006246','Dena Bank','MED/GUJ/40504','','','','','salary'),(34,170204,'PINAL C. SHAH','','','salary of Feb 2017',25470,7000,8118,50735,240,8118,300,100,1600,0,0,0,0,0,0,0,0,27000,0,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110006246','Dena Bank','MED/GUJ/40504','','','','','salary'),(35,10,'PRADHYUMAN CHAUDHARI','Opthalmology','Associate Professor','',333330,0,0,0,0,0,0,0,0,0,0,0,110,10,110,110,110,22,220,220,20,0,0,0,0,0,0,0,0,0,0,0,0,'111110032803','Dena Bank','','','officer','','',''),(35,22,'PRADHYUMAN CHAUDHARI','','','salary of Feb 2017',19370,7000,6593,41204,240,6593,0,100,1600,0,0,0,0,0,0,0,0,14400,0,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110032803','Dena Bank','NOT ALLOTED','','','','','salary'),(35,170204,'PRADHYUMAN CHAUDHARI','','','salary of Feb 2017',19370,7000,6593,41204,240,6593,0,100,1600,0,0,0,0,0,0,0,0,14400,0,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110032803','Dena Bank','NOT ALLOTED','','','','','salary'),(35,170404,'PRADHYUMAN CHAUDHARI','','','salary of Feb 2017',19370,7000,6593,41204,240,6593,0,100,1600,0,0,0,0,0,0,0,0,14400,0,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110032803','Dena Bank','NOT ALLOTED','','','','','salary'),(35,170504,'PRADHYUMAN CHAUDHARI','','','salary of Feb 2017',19370,7000,6593,41204,240,6593,0,100,1600,0,0,0,0,0,0,0,0,14400,0,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110032803','Dena Bank','NOT ALLOTED','','','','','salary'),(35,170604,'PRADHYUMAN CHAUDHARI','','','salary of Feb 2017',19370,7000,6593,41204,240,6593,0,100,1600,0,0,0,0,0,0,0,0,14400,0,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110032803','Dena Bank','NOT ALLOTED','','','','','salary'),(36,0,'PRAKASH PATEL','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110027142','Dena Bank','','','','','',''),(36,22,'PRAKASH PATEL','','','salary of Feb 2017',21830,7000,7208,45048,240,7208,300,100,1600,0,0,0,0,0,0,0,0,9900,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110027142','Dena Bank','NOT ALLOTED','','','','','salary'),(36,888,'PRAKASH PATEL','','','salary of Feb 2017',21830,7000,7208,45048,240,7208,300,100,1600,0,0,0,0,0,0,0,0,9900,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110027142','Dena Bank','NOT ALLOTED','','','','','salary'),(36,999,'PRAKASH PATEL','','','salary of Feb 2017',21830,7000,7208,45048,240,7208,300,100,1600,0,0,0,0,0,0,0,0,9900,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110027142','Dena Bank','NOT ALLOTED','','','','','salary'),(36,1888,'PRAKASH PATEL','','','salary of Feb 2017',21830,7000,7208,45048,240,7208,300,100,1600,0,0,0,0,0,0,0,0,9900,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110027142','Dena Bank','NOT ALLOTED','','','','','salary'),(36,170204,'PRAKASH PATEL','','','salary of Feb 2017',21830,7000,7208,45048,240,7208,300,100,1600,0,0,0,0,0,0,0,0,9900,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110027142','Dena Bank','NOT ALLOTED','','','','','salary'),(38,10,'PRITI KAPADIYA','Opthalmology','Professor','',1110,1110,110,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,111,0,0,0,0,0,0,0,0,0,0,0,0,'111110004725','Dena Bank','MED/GUJ/26639','','officer','','',''),(38,22,'PRITI KAPADIYA','','','salary of Feb 2017',58000,10000,17000,106250,240,17000,300,100,1600,0,0,0,0,0,0,0,0,41000,0,200,120,280,20000,0,0,0,0,0,0,0,0,0,0,'111110004725','Dena Bank','MED/GUJ/26639','','','','','salary'),(38,888,'PRITI KAPADIYA','','','salary of Feb 2017',58000,10000,17000,106250,240,17000,300,100,1600,0,0,0,0,0,0,0,0,41000,0,200,120,280,20000,0,0,0,0,0,0,0,0,0,0,'111110004725','Dena Bank','MED/GUJ/26639','','','','','salary'),(38,999,'PRITI KAPADIYA','','','salary of Feb 2017',58000,10000,17000,106250,240,17000,300,100,1600,0,0,0,0,0,0,0,0,41000,0,200,120,280,20000,0,0,0,0,0,0,0,0,0,0,'111110004725','Dena Bank','MED/GUJ/26639','','','','','salary'),(38,1888,'PRITI KAPADIYA','','','salary of Feb 2017',58000,10000,17000,106250,240,17000,300,100,1600,0,0,0,0,0,0,0,0,41000,0,200,120,280,20000,0,0,0,0,0,0,0,0,0,0,'111110004725','Dena Bank','MED/GUJ/26639','','','','','salary'),(38,170204,'PRITI KAPADIYA','','','salary of Feb 2017',58000,10000,17000,106250,240,17000,300,100,1600,0,0,0,0,0,0,0,0,41000,0,200,120,280,20000,0,0,0,0,0,0,0,0,0,0,'111110004725','Dena Bank','MED/GUJ/26639','','','','','salary'),(39,11,'PUNEET SAXENA','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110004349','Dena Bank','MED/GUJ/40050','','officer','','',''),(39,33,'PUNEET SAXENA','','','salary of Feb 2017',49830,9000,14708,91923,240,14708,300,100,1600,0,0,0,0,0,0,0,0,49000,0,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'111110004349','Dena Bank','MED/GUJ/40050','','','','','salary'),(39,34,'PUNEET SAXENA','','','Arrears of Feb 2017',333450,0,0,0,0,0,0,0,0,0,0,0,0,0,0,33330,220,4456,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110004349','Dena Bank','MED/GUJ/40050','','','','',''),(40,22,'R. N. HATHILA','','','salary of Feb 2017',57090,9000,16523,103266,240,16523,300,100,1600,0,0,0,0,0,0,0,0,53100,0,200,120,280,12000,0,0,0,0,0,0,0,0,0,0,'111110002299','Dena Bank','MED/GUJ/26651','','','','','salary'),(40,888,'R. N. HATHILA','','','salary of Feb 2017',57090,9000,16523,103266,240,16523,300,100,1600,0,0,0,0,0,0,0,0,53100,0,200,120,280,12000,0,0,0,0,0,0,0,0,0,0,'111110002299','Dena Bank','MED/GUJ/26651','','','','','salary'),(40,999,'R. N. HATHILA','','','salary of Feb 2017',57090,9000,16523,103266,240,16523,300,100,1600,0,0,0,0,0,0,0,0,53100,0,200,120,280,12000,0,0,0,0,0,0,0,0,0,0,'111110002299','Dena Bank','MED/GUJ/26651','','','','','salary'),(40,1888,'R. N. HATHILA','','','salary of Feb 2017',57090,9000,16523,103266,240,16523,300,100,1600,0,0,0,0,0,0,0,0,53100,0,200,120,280,12000,0,0,0,0,0,0,0,0,0,0,'111110002299','Dena Bank','MED/GUJ/26651','','','','','salary'),(40,170204,'R. N. HATHILA','','','salary of Feb 2017',57090,9000,16523,103266,240,16523,300,100,1600,0,0,0,0,0,0,0,0,53100,0,200,120,280,12000,0,0,0,0,0,0,0,0,0,0,'111110002299','Dena Bank','MED/GUJ/26651','','','','','salary'),(41,0,'RAGINI VERMA','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110003290','Dena Bank','MED/GUJ/36765','','','','',''),(41,22,'RAGINI VERMA','','','salary of Feb 2017',57500,10000,16875,105469,240,0,300,100,0,0,0,0,0,0,0,0,0,65000,0,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110003290','Dena Bank','MED/GUJ/36765','','','','','salary'),(41,55,'RAGINI VERMA','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110003290','Dena Bank','MED/GUJ/36765','','','','',''),(41,77,'RAGINI VERMA','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110003290','Dena Bank','MED/GUJ/36765','','','','',''),(41,90,'RAGINI VERMA','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110003290','Dena Bank','MED/GUJ/36765','','','','',''),(41,111,'RAGINI VERMA','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110003290','Dena Bank','MED/GUJ/36765','','','','',''),(41,888,'RAGINI VERMA','','','salary of Feb 2017',57500,10000,16875,105469,240,0,300,100,0,0,0,0,0,0,0,0,0,65000,0,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110003290','Dena Bank','MED/GUJ/36765','','','','','salary'),(41,900,'RAGINI VERMA','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110003290','Dena Bank','MED/GUJ/36765','','','','',''),(41,999,'RAGINI VERMA','','','salary of Feb 2017',57500,10000,16875,105469,240,0,300,100,0,0,0,0,0,0,0,0,0,65000,0,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110003290','Dena Bank','MED/GUJ/36765','','','','','salary'),(41,1000,'RAGINI VERMA','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110003290','Dena Bank','MED/GUJ/36765','','','','',''),(41,1888,'RAGINI VERMA','','','salary of Feb 2017',57500,10000,16875,105469,240,0,300,100,0,0,0,0,0,0,0,0,0,65000,0,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110003290','Dena Bank','MED/GUJ/36765','','','','','salary'),(41,170204,'RAGINI VERMA','','','salary of Feb 2017',57500,10000,16875,105469,240,0,300,100,0,0,0,0,0,0,0,0,0,65000,0,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110003290','Dena Bank','MED/GUJ/36765','','','','','salary'),(41,170304,'RAGINI VERMA','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110003290','Dena Bank','MED/GUJ/36765','','','','',''),(41,170305,'RAGINI VERMA','OG','Professor','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110003290','Dena Bank','MED/GUJ/36765','','','','',''),(42,22,'SANGEETA TRIVEDI','','','salary of Feb 2017',57210,9000,16553,103454,240,0,300,100,0,0,0,0,0,0,0,0,0,51000,1040,200,120,280,10000,0,0,0,0,0,0,0,0,0,0,'111110002508','Dena Bank','MED/GUJ/26696','','','','','salary'),(42,888,'SANGEETA TRIVEDI','','','salary of Feb 2017',57210,9000,16553,103454,240,0,300,100,0,0,0,0,0,0,0,0,0,51000,1040,200,120,280,10000,0,0,0,0,0,0,0,0,0,0,'111110002508','Dena Bank','MED/GUJ/26696','','','','','salary'),(42,999,'SANGEETA TRIVEDI','','','salary of Feb 2017',57210,9000,16553,103454,240,0,300,100,0,0,0,0,0,0,0,0,0,51000,1040,200,120,280,10000,0,0,0,0,0,0,0,0,0,0,'111110002508','Dena Bank','MED/GUJ/26696','','','','','salary'),(42,1888,'SANGEETA TRIVEDI','','','salary of Feb 2017',57210,9000,16553,103454,240,0,300,100,0,0,0,0,0,0,0,0,0,51000,1040,200,120,280,10000,0,0,0,0,0,0,0,0,0,0,'111110002508','Dena Bank','MED/GUJ/26696','','','','','salary'),(42,170204,'SANGEETA TRIVEDI','','','salary of Feb 2017',57210,9000,16553,103454,240,0,300,100,0,0,0,0,0,0,0,0,0,51000,1040,200,120,280,10000,0,0,0,0,0,0,0,0,0,0,'111110002508','Dena Bank','MED/GUJ/26696','','','','','salary'),(43,22,'SARITA H. PATEL','','','salary of Feb 2017',20170,7000,6793,42454,240,0,300,100,0,0,0,0,0,0,0,0,0,7000,600,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110024853','Dena Bank','NOT ALLOTED','','','','','salary'),(43,888,'SARITA H. PATEL','','','salary of Feb 2017',20170,7000,6793,42454,240,0,300,100,0,0,0,0,0,0,0,0,0,7000,600,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110024853','Dena Bank','NOT ALLOTED','','','','','salary'),(43,999,'SARITA H. PATEL','','','salary of Feb 2017',20170,7000,6793,42454,240,0,300,100,0,0,0,0,0,0,0,0,0,7000,600,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110024853','Dena Bank','NOT ALLOTED','','','','','salary'),(43,1888,'SARITA H. PATEL','','','salary of Feb 2017',20170,7000,6793,42454,240,0,300,100,0,0,0,0,0,0,0,0,0,7000,600,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110024853','Dena Bank','NOT ALLOTED','','','','','salary'),(43,170204,'SARITA H. PATEL','','','salary of Feb 2017',20170,7000,6793,42454,240,0,300,100,0,0,0,0,0,0,0,0,0,7000,600,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110024853','Dena Bank','NOT ALLOTED','','','','','salary'),(44,22,'SHAILEE N. VYAS','','','salary of Feb 2017',20990,7000,6998,43735,240,6998,300,100,1600,0,0,0,0,0,0,0,0,17000,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110024497','Dena Bank','NOT ALLOTED','','','','','salary'),(44,888,'SHAILEE N. VYAS','','','salary of Feb 2017',20990,7000,6998,43735,240,6998,300,100,1600,0,0,0,0,0,0,0,0,17000,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110024497','Dena Bank','NOT ALLOTED','','','','','salary'),(44,999,'SHAILEE N. VYAS','','','salary of Feb 2017',20990,7000,6998,43735,240,6998,300,100,1600,0,0,0,0,0,0,0,0,17000,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110024497','Dena Bank','NOT ALLOTED','','','','','salary'),(44,1888,'SHAILEE N. VYAS','','','salary of Feb 2017',20990,7000,6998,43735,240,6998,300,100,1600,0,0,0,0,0,0,0,0,17000,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110024497','Dena Bank','NOT ALLOTED','','','','','salary'),(44,170204,'SHAILEE N. VYAS','','','salary of Feb 2017',20990,7000,6998,43735,240,6998,300,100,1600,0,0,0,0,0,0,0,0,17000,0,200,120,280,0,0,0,0,0,0,0,0,0,0,0,'111110024497','Dena Bank','NOT ALLOTED','','','','','salary'),(45,22,'SHARMISTHA PATEL','','','salary of Feb 2017',32530,7000,9883,61766,240,9883,300,100,1600,0,0,0,0,0,0,0,0,22000,0,200,120,280,30000,0,0,0,0,0,0,0,0,0,0,'111110002447','Dena Bank','MED/GUJ/26581','','','','','salary'),(45,888,'SHARMISTHA PATEL','','','salary of Feb 2017',32530,7000,9883,61766,240,9883,300,100,1600,0,0,0,0,0,0,0,0,22000,0,200,120,280,30000,0,0,0,0,0,0,0,0,0,0,'111110002447','Dena Bank','MED/GUJ/26581','','','','','salary'),(45,999,'SHARMISTHA PATEL','','','salary of Feb 2017',32530,7000,9883,61766,240,9883,300,100,1600,0,0,0,0,0,0,0,0,22000,0,200,120,280,30000,0,0,0,0,0,0,0,0,0,0,'111110002447','Dena Bank','MED/GUJ/26581','','','','','salary'),(45,1888,'SHARMISTHA PATEL','','','salary of Feb 2017',32530,7000,9883,61766,240,9883,300,100,1600,0,0,0,0,0,0,0,0,22000,0,200,120,280,30000,0,0,0,0,0,0,0,0,0,0,'111110002447','Dena Bank','MED/GUJ/26581','','','','','salary'),(45,170204,'SHARMISTHA PATEL','','','salary of Feb 2017',32530,7000,9883,61766,240,9883,300,100,1600,0,0,0,0,0,0,0,0,22000,0,200,120,280,30000,0,0,0,0,0,0,0,0,0,0,'111110002447','Dena Bank','MED/GUJ/26581','','','','','salary'),(46,22,'SNEHLATA J. CHAUDHARI','','','salary of Feb 2017',51600,9000,15150,94688,240,15150,300,100,1600,0,0,0,0,0,0,0,0,21000,0,200,120,280,40000,0,0,0,0,0,0,0,0,0,0,'111110003601','Dena Bank','MED/GUJ/26375','','','','','salary'),(46,101,'SNEHLATA J. CHAUDHARI','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110003601','Dena Bank','MED/GUJ/26375','','officer','','',''),(46,888,'SNEHLATA J. CHAUDHARI','','','salary of Feb 2017',51600,9000,15150,94688,240,15150,300,100,1600,0,0,0,0,0,0,0,0,21000,0,200,120,280,40000,0,0,0,0,0,0,0,0,0,0,'111110003601','Dena Bank','MED/GUJ/26375','','','','','salary'),(46,999,'SNEHLATA J. CHAUDHARI','','','salary of Feb 2017',51600,9000,15150,94688,240,15150,300,100,1600,0,0,0,0,0,0,0,0,21000,0,200,120,280,40000,0,0,0,0,0,0,0,0,0,0,'111110003601','Dena Bank','MED/GUJ/26375','','','','','salary'),(46,1888,'SNEHLATA J. CHAUDHARI','','','salary of Feb 2017',51600,9000,15150,94688,240,15150,300,100,1600,0,0,0,0,0,0,0,0,21000,0,200,120,280,40000,0,0,0,0,0,0,0,0,0,0,'111110003601','Dena Bank','MED/GUJ/26375','','','','','salary'),(46,170204,'SNEHLATA J. CHAUDHARI','','','salary of Feb 2017',51600,9000,15150,94688,240,15150,300,100,1600,0,0,0,0,0,0,0,0,21000,0,200,120,280,40000,0,0,0,0,0,0,0,0,0,0,'111110003601','Dena Bank','MED/GUJ/26375','','','','','salary'),(47,22,'TEJAL A. CHAUDHARI','','','salary of Feb 2017',19370,7000,6593,41204,240,0,300,100,0,0,0,0,0,0,0,0,0,9400,400,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110032641','Dena Bank','NOT ALLOTED','','','','','salary'),(47,888,'TEJAL A. CHAUDHARI','','','salary of Feb 2017',19370,7000,6593,41204,240,0,300,100,0,0,0,0,0,0,0,0,0,9400,400,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110032641','Dena Bank','NOT ALLOTED','','','','','salary'),(47,999,'TEJAL A. CHAUDHARI','','','salary of Feb 2017',19370,7000,6593,41204,240,0,300,100,0,0,0,0,0,0,0,0,0,9400,400,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110032641','Dena Bank','NOT ALLOTED','','','','','salary'),(47,1888,'TEJAL A. CHAUDHARI','','','salary of Feb 2017',19370,7000,6593,41204,240,0,300,100,0,0,0,0,0,0,0,0,0,9400,400,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110032641','Dena Bank','NOT ALLOTED','','','','','salary'),(47,170204,'TEJAL A. CHAUDHARI','','','salary of Feb 2017',19370,7000,6593,41204,240,0,300,100,0,0,0,0,0,0,0,0,0,9400,400,200,0,0,0,0,0,0,0,0,0,0,0,0,0,'111110032641','Dena Bank','NOT ALLOTED','','','','','salary'),(48,22,'VASUDHA M. BHAGAT','','','salary of Feb 2017',59000,9000,17000,106250,240,0,300,100,0,0,0,0,0,0,0,0,0,55000,1040,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110001928','Dena Bank','MED/GUJ/26423','','','','','salary'),(48,888,'VASUDHA M. BHAGAT','','','salary of Feb 2017',59000,9000,17000,106250,240,0,300,100,0,0,0,0,0,0,0,0,0,55000,1040,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110001928','Dena Bank','MED/GUJ/26423','','','','','salary'),(48,999,'VASUDHA M. BHAGAT','','','salary of Feb 2017',59000,9000,17000,106250,240,0,300,100,0,0,0,0,0,0,0,0,0,55000,1040,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110001928','Dena Bank','MED/GUJ/26423','','','','','salary'),(48,1888,'VASUDHA M. BHAGAT','','','salary of Feb 2017',59000,9000,17000,106250,240,0,300,100,0,0,0,0,0,0,0,0,0,55000,1040,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110001928','Dena Bank','MED/GUJ/26423','','','','','salary'),(48,170204,'VASUDHA M. BHAGAT','','','salary of Feb 2017',59000,9000,17000,106250,240,0,300,100,0,0,0,0,0,0,0,0,0,55000,1040,200,120,280,15000,0,0,0,0,0,0,0,0,0,0,'111110001928','Dena Bank','MED/GUJ/26423','','','','','salary'),(49,22,'VIJAY B. SHAH','','','salary of Feb 2017',58000,10000,17000,106250,240,17000,300,100,1600,0,0,0,0,0,0,0,0,28000,0,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'111110001812','Dena Bank','MED/GUJ/26508','','','','','salary'),(49,888,'VIJAY B. SHAH','','','salary of Feb 2017',58000,10000,17000,106250,240,17000,300,100,1600,0,0,0,0,0,0,0,0,28000,0,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'111110001812','Dena Bank','MED/GUJ/26508','','','','','salary'),(49,999,'VIJAY B. SHAH','','','salary of Feb 2017',58000,10000,17000,106250,240,17000,300,100,1600,0,0,0,0,0,0,0,0,28000,0,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'111110001812','Dena Bank','MED/GUJ/26508','','','','','salary'),(49,1888,'VIJAY B. SHAH','','','salary of Feb 2017',58000,10000,17000,106250,240,17000,300,100,1600,0,0,0,0,0,0,0,0,28000,0,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'111110001812','Dena Bank','MED/GUJ/26508','','','','','salary'),(49,170204,'VIJAY B. SHAH','','','salary of Feb 2017',58000,10000,17000,106250,240,17000,300,100,1600,0,0,0,0,0,0,0,0,28000,0,200,120,280,9000,0,0,0,0,0,0,0,0,0,0,'111110001812','Dena Bank','MED/GUJ/26508','','','','','salary'),(50,0,'VIPUL D. PATEL','Medicine','Professor','',23456,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0','Dena Bank','MED/GUJ/12490','','','','',''),(50,1,'VIPUL D. PATEL','Medicine','Professor','',23456,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0','Dena Bank','MED/GUJ/12490','','','','',''),(50,10,'VIPUL D. PATEL','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0','Dena Bank','MED/GUJ/12490','','officer','','',''),(50,22,'VIPUL D. PATEL','Medicine','Professor','',23456,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0','Dena Bank','MED/GUJ/12490','','','','',''),(50,101,'VIPUL D. PATEL','Medicine','Associate Professor','',23456,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0','Dena Bank','MED/GUJ/12490','','','','',''),(50,170312,'VIPUL D. PATEL','Medicine','Professor','',23456,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0','Dena Bank','MED/GUJ/12490','','','','',''),(50,170404,'VIPUL D. PATEL','Medicine','Professor','',23456,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0','Dena Bank','MED/GUJ/12490','','','','',''),(50,170804,'VIPUL D. PATEL','Medicine','Professor','',23456,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0','Dena Bank','MED/GUJ/12490','','','','',''),(50,171204,'VIPUL D. PATEL','Medicine','Professor','',23456,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0','Dena Bank','MED/GUJ/12490','','','','',''),(50,171207,'VIPUL D. PATEL','Medicine','Professor','',23456,333,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0','Dena Bank','MED/GUJ/12490','','','','','');
/*!40000 ALTER TABLE `salary_old` ENABLE KEYS */;
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
  `pan` varchar(20) NOT NULL,
  `quarter` varchar(20) NOT NULL,
  `basic_catagory` varchar(20) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'ALKA UDAYANIYA','111110003687','Dena Bank','MED/GUJ/37969','','Anatomy','Professor','XYZAA','A/24','officer'),(2,'ALOK N. PAREKH','111110028844','Dena Bank','','','Biochemistry','Assistant Professor','','','officer'),(3,'AMIT L. GAMIT','111110024884','Dena Bank','','','','','','','officer'),(4,'ANAND V. CHAUDHARY','111110025106','Dena Bank','','','','','','','officer'),(5,'ANJANI SHRIVASTAVA','111110003050','Dena Bank','','','','','','','officer'),(6,'B. DIVAKAR','111110005458','Dena Bank','','','','','','','officer'),(7,'B.M. JHA','111110001993','Dena Bank','MED/GUJ/26424','','','','','','officer'),(8,'BHARATI V. UMARVANSHI','111110002377','Dena Bank','MED/GUJ/26613','','','','','','officer'),(9,'BHAVNA GAMIT','111110002834','Dena Bank','MED/GUJ/26657','','','','','','officer'),(10,'BINA B. VAIDYA','111110001983','Dena Bank','MED/GUJ/36762','','','','','','officer'),(11,'BRIJESH V. PARMAR','111110023761','Dena Bank','','','','','','','officer'),(12,'CHETAN ACHARYA','111110002900','Dena Bank','MED/GUJ/26627','','','','','','officer'),(13,'D.M. PARMAR','111110002284','Dena Bank','MED/GUJ/26656','','','','','','officer'),(14,'DIPTI THAKUR','111110035210','Dena Bank','','','','','','','officer'),(15,'GANESH GOVEKAR','111110023976','Dena Bank','MED/GUJ/35072','','','','','','officer'),(16,'GUNVANT R. PARMAR','111110003109','Dena Bank','MED/GUJ/26701','','','','','','officer'),(17,'HARI J. MENON','111110025108','Dena Bank','','','','','','','officer'),(18,'HARSHAD M. PATEL','111110002403','Dena Bank','MED/GUJ/40421','','','','','','officer'),(19,'HETAL THAKAR','111110002952','Dena Bank','MED/GUJ/37915','','','','','','officer'),(20,'HINAL BHAGAT','111110004606','Dena Bank','','','','','','','officer'),(21,'J.K. KOSAMBIYA','111110001248','Dena Bank','MED/GUJ/23914','','','','','','officer'),(22,'JAYMIN CONTRACTOR','111110004017','Dena Bank','MED/GUJ/37997','','','','','','officer'),(23,'JIGNESH PATEL','111110026088','Dena Bank','','','','','','','officer'),(24,'KAMLESH DAVE','111110003195','Dena Bank','MED/GUJ/40181','','','','','','officer'),(25,'KHYATI D. SHAMALIYA','111110005792','Dena Bank','','','','','','','officer'),(26,'LATIKA N. PUROHITH','111110003353','Dena Bank','MED/GUJ/26699','','','','','','officer'),(27,'M. K. VADEL','111110001909','Dena Bank','MED/GUJ/22841','','','','','','officer'),(28,'MANDAKINI PATEL','111110001925','Dena Bank','MED/GUJ/23847','','','','','','officer'),(29,'NEELAM N. PARMAR','111110004581','Dena Bank','','','','','','','officer'),(30,'NIDHI D. PATEL','111110005996','Dena Bank',' ','','','','','','officer'),(31,'NIMESH VERMA','111110029623','Dena Bank','MED/GUJ/36764','','','','','','officer'),(32,'NIRALI P. PATEL','111110027606','Dena Bank','','','','','','','officer'),(33,'P. Z. WADIA','111110003983','Dena Bank','MED/GUJ/26384','','','','','','officer'),(34,'PINAL C. SHAH','111110006246','Dena Bank','MED/GUJ/40504','','','','','','officer'),(35,'PRADHYUMAN CHAUDHARI','111110032803','Dena Bank','','','','','','','officer'),(36,'PRAKASH PATEL','111110027142','Dena Bank','','','','','','','officer'),(37,'PRASHANT CHOTALIYA','111110025896','Dena Bank','','','','','','','officer'),(38,'PRITI KAPADIYA','111110004725','Dena Bank','MED/GUJ/26639','','','','','','officer'),(39,'PUNEET SAXENA','111110004349','Dena Bank','MED/GUJ/40050','','','','','','officer'),(40,'R. N. HATHILA','111110002299','Dena Bank','MED/GUJ/26651','','','','','','officer'),(41,'RAGINI VERMA','111110003290','Dena Bank','MED/GUJ/36765','','','','','','officer'),(42,'SANGEETA TRIVEDI','111110002508','Dena Bank','MED/GUJ/26696','','','','','','officer'),(43,'SARITA H. PATEL','111110024853','Dena Bank','','','','','','','officer'),(44,'SHAILEE N. VYAS','111110024497','Dena Bank','','','','','','','officer'),(45,'SHARMISTHA PATEL','111110002447','Dena Bank','MED/GUJ/26581','','','','','','officer'),(46,'SNEHLATA J. CHAUDHARI','111110003601','Dena Bank','MED/GUJ/26375','','','','','','officer'),(47,'TEJAL A. CHAUDHARI','111110032641','Dena Bank','','','','','','','officer'),(48,'VASUDHA M. BHAGAT','111110001928','Dena Bank','MED/GUJ/26423','','','','','','officer'),(49,'VIJAY B. SHAH','111110001812','Dena Bank','MED/GUJ/26508','','','','','','officer'),(50,'VIPUL D. PATEL','0','Dena Bank','MED/GUJ/12490','','','','','','officer');
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
  `_post` varchar(100) NOT NULL,
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
INSERT INTO `user` VALUES (1,'one','c4988dbf8716d62d17180dd114f15c71','','',0);
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

-- Dump completed on 2017-03-28  8:57:28
