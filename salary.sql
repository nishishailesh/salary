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
  `staff_position_id` int(11) NOT NULL,
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
INSERT INTO `salary` VALUES (587632527681,170304,58000,9000,14708,91923,33,14780,300,111,1600,0,0,0,0,49000,20000,200,240,234,0,0,0,0,0,0,0,0,0,0,0,'Salary','Shaileshkumar Manubhai Patel','002401007077','ICICI Bank','G31331','',1,'Pay March 2017'),(587632527681,170305,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','Shaileshkumar Manubhai Patel','','','','',1,''),(587632527681,170306,58000,10000,23000,23434,200,0,240,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','Shaileshkumar Manubhai Patel','','','','',1,''),(587632527682,170304,49830,9000,14708,91923,240,14780,300,100,1600,0,0,0,0,49000,0,200,240,160,9000,0,0,0,0,0,0,0,0,0,0,'Salary','Nimesh Verma','002401007078','DEna Bank','G31332','',2,''),(587632527682,170305,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','Nimesh Verma','','','','',2,''),(587632527682,170307,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','Nimesh Verma','','','G31332','',2,''),(587632527682,170308,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','Nimesh Verma','002401007078','DEna Bank','G31332','',2,'');
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
  `staff_position_id` int(11) NOT NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE KEY `staff_position_id` (`staff_position_id`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`staff_position_id`) REFERENCES `staff_position` (`staff_position_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (587632527681,'Shaileshkumar Manubhai Patel','002401007077','ICICI Bank','G31331','',1),(587632527682,'Nimesh Verma','002401007078','DEna Bank','G31332','',2);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_position`
--

DROP TABLE IF EXISTS `staff_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_position` (
  `staff_position_id` int(11) NOT NULL,
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
INSERT INTO `staff_position` VALUES (1,'Biochemistry','Professor'),(2,'General Surgery','Professor');
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

-- Dump completed on 2017-03-18 16:58:04
