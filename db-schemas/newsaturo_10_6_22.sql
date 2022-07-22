-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.9


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema newsaturo
--

CREATE DATABASE IF NOT EXISTS newsaturo;
USE newsaturo;

--
-- Definition of table `assay001wb`
--

DROP TABLE IF EXISTS `assay001wb`;
CREATE TABLE `assay001wb` (
  `assayId` int(11) NOT NULL AUTO_INCREMENT,
  `ordinal` varchar(20) DEFAULT NULL,
  `collectionId` varchar(30) DEFAULT NULL,
  `ligand_slno` int(30) DEFAULT NULL,
  `assayType_slno` int(30) DEFAULT NULL,
  `toxiCity_slno` int(30) DEFAULT NULL,
  `route_slno` int(20) DEFAULT NULL,
  `ligandSvalue` varchar(30) DEFAULT NULL,
  `unit_slno` int(30) DEFAULT NULL,
  `ligandHvalue` varchar(20) DEFAULT NULL,
  `ligandLvalue` varchar(30) DEFAULT NULL,
  `administration` varchar(50) DEFAULT NULL,
  `procedure` varchar(30) DEFAULT NULL,
  `conditionType` varchar(100) DEFAULT NULL,
  `conditionMaterial` varchar(50) DEFAULT NULL,
  `conditionMaterialid` varchar(30) DEFAULT NULL,
  `singleCondition` varchar(50) DEFAULT NULL,
  `singleUnit` varchar(50) DEFAULT NULL,
  `highCondition` varchar(50) DEFAULT NULL,
  `lowCondition` varchar(50) DEFAULT NULL,
  `highLowUnit` varchar(50) DEFAULT NULL,
  `united_slno` int(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `dataLocator` varchar(30) DEFAULT NULL,
  `category_slno` int(100) DEFAULT NULL,
  `function_slno` int(100) DEFAULT NULL,
  `parameter` varchar(30) DEFAULT NULL,
  `parameterDetail` varchar(100) DEFAULT NULL,
  `singleValue` varchar(50) DEFAULT NULL,
  `unit` varchar(30) DEFAULT NULL,
  `originalPrefix_slno` int(20) DEFAULT NULL,
  `highEndValue` varchar(30) DEFAULT NULL,
  `lowEndValue` varchar(30) DEFAULT NULL,
  `units` varchar(30) DEFAULT NULL,
  `nonNumeric` varchar(100) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `type_slno` int(50) DEFAULT NULL,
  `cell` varchar(50) DEFAULT NULL,
  `cellDetail` varchar(100) DEFAULT NULL,
  `organ` varchar(100) DEFAULT NULL,
  `organDetail` varchar(100) DEFAULT NULL,
  `species` varchar(100) DEFAULT NULL,
  `speciesDetail` varchar(150) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `ageGroup` varchar(50) DEFAULT NULL,
  `target` varchar(150) DEFAULT NULL,
  `targetVersion` varchar(20) DEFAULT NULL,
  `targetStatus` varchar(50) DEFAULT NULL,
  `collectionId1` varchar(30) DEFAULT NULL,
  `original` varchar(50) DEFAULT NULL,
  `acronym` varchar(30) DEFAULT NULL,
  `organism` varchar(30) DEFAULT NULL,
  `variant` varchar(30) DEFAULT NULL,
  `insert_user` varchar(40) DEFAULT NULL,
  `insert_datetime` datetime DEFAULT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`assayId`),
  KEY `assayType_slno` (`assayType_slno`),
  KEY `toxiCity_slno` (`toxiCity_slno`),
  KEY `route_slno` (`route_slno`),
  KEY `unit_slno` (`unit_slno`),
  KEY `united_slno` (`united_slno`),
  KEY `ligand_slno` (`ligand_slno`),
  KEY `category_slno` (`category_slno`),
  KEY `function_slno` (`function_slno`),
  KEY `originalPrefix_slno` (`originalPrefix_slno`),
  KEY `type_slno` (`type_slno`),
  CONSTRAINT `assay001wb_ibfk_1` FOREIGN KEY (`assayType_slno`) REFERENCES `assaytype001mb` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `assay001wb_ibfk_2` FOREIGN KEY (`toxiCity_slno`) REFERENCES `toxicity001mb` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `assay001wb_ibfk_3` FOREIGN KEY (`route_slno`) REFERENCES `routeofadministration001mb` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `assay001wb_ibfk_4` FOREIGN KEY (`unit_slno`) REFERENCES `unitsinglevalue001mb` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `assay001wb_ibfk_5` FOREIGN KEY (`united_slno`) REFERENCES `unitlowendvalue001mb` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `assay001wb_ibfk_6` FOREIGN KEY (`ligand_slno`) REFERENCES `ligand001wb` (`ligandId`) ON DELETE CASCADE,
  CONSTRAINT `assay001wb_ibfk_7` FOREIGN KEY (`category_slno`) REFERENCES `category001mb` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `assay001wb_ibfk_8` FOREIGN KEY (`function_slno`) REFERENCES `categoryfunction001mb` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `assay001wb_ibfk_9` FOREIGN KEY (`originalPrefix_slno`) REFERENCES `originalprefix001mb` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `assay001wb_ibfk_10` FOREIGN KEY (`type_slno`) REFERENCES `type001mb` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assay001wb`
--

/*!40000 ALTER TABLE `assay001wb` DISABLE KEYS */;
INSERT INTO `assay001wb` (`assayId`,`ordinal`,`collectionId`,`ligand_slno`,`assayType_slno`,`toxiCity_slno`,`route_slno`,`ligandSvalue`,`unit_slno`,`ligandHvalue`,`ligandLvalue`,`administration`,`procedure`,`conditionType`,`conditionMaterial`,`conditionMaterialid`,`singleCondition`,`singleUnit`,`highCondition`,`lowCondition`,`highLowUnit`,`united_slno`,`status`,`dataLocator`,`category_slno`,`function_slno`,`parameter`,`parameterDetail`,`singleValue`,`unit`,`originalPrefix_slno`,`highEndValue`,`lowEndValue`,`units`,`nonNumeric`,`remark`,`type_slno`,`cell`,`cellDetail`,`organ`,`organDetail`,`species`,`speciesDetail`,`gender`,`ageGroup`,`target`,`targetVersion`,`targetStatus`,`collectionId1`,`original`,`acronym`,`organism`,`variant`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (6,'1','47498009Q-1',10,1,18,19,'200',19,'sdsds','NA','NA','NA','Drug Interactions','NA','NA','NA','NA','NA','NA','NA',20,'SUBMITTED TO QC','NA',2,19,'NA','NA','NA','19',2,'NA','NA','18','NA','NA',2,'NA','NA','NA','NA','NA','NA','Male','','bioactivity-target/SaturoGlobal/tan1/1>bioactivity-target/40cbbd77-d31d-4f2b-bfca-84a9809f19d3','NA','embargoed','NA','NA','NA','NA','NA','moorthy','2022-06-09 16:32:38',NULL,NULL),
 (7,'2','47498009Q-1',10,4,18,19,'NA',16,'jhmjm','NA','NA','NA','Combination Chemotherapy','NA','NA','NA','NA','NA','NA','NA',19,'SUBMITTED TO QC','NA',2,19,'NA','NA','NA','20',4,'NA','NA','5','NA','NA',1,'NA','NA','NA','NA','NA','NA','Male','NA','bioactivity-target/SaturoGlobal/tan1/2>bioactivity-target/256927d6-aea5-44bc-8ad4-ef201aed63d0','NA','embargoed','NA','NA','NA','NA','NA','moorthy','2022-06-09 16:33:51',NULL,NULL),
 (8,'1','47498009Q-1',11,1,2,3,'200',19,'NA','NA','NA','NA','Combination Chemotherapy','jmjj','jmm','55','um','sdsd','NA','NA',19,'SUBMITTED TO QC','5000',3,19,'NA','0','1','20',13,'NA','NA','4','NA','NA',2,'NA','NA','NA','NA','NA','NA','Male','NA','bioactivity-target/SaturoGlobal/tan2/1>bioactivity-target/7413ab21-ae29-4eb0-bcc7-bb3be5c56954','','embargoed','','','','','','moorthy','2022-06-09 16:40:44',NULL,NULL),
 (9,'2','47498009Q-1',11,1,2,3,'200',19,'NA','NA','NA','NA','Combination Chemotherapy','jmjj','jmm','55','um','sdsd','NA','NA',19,'SUBMITTED TO QC','5000',3,19,'NA','0','1','20',13,'NA','NA','4','NA','NA',2,'NA','NA','NA','NA','NA','NA','Male','NA','bioactivity-target/SaturoGlobal/tan2/2>bioactivity-target/ec18c792-7f8e-4366-8f33-bd3c32c623d1','NA','embargoed','NA','NA','NA','NA','NA','moorthy','2022-06-09 16:41:12',NULL,NULL),
 (10,'2','47498009Q-1',10,6,2,3,'200',19,'NA','NA','NA','NA','Combination Chemotherapy','jmjj','jmm','55','um','sdsd','NA','NA',19,'SUBMITTED TO QC','5000',3,19,'NA','0','1','20',13,'NA','NA','4','NA','NA',2,'NA','NA','NA','NA','NA','NA','Male','NA','bioactivity-target/SaturoGlobal/tan1/2>bioactivity-target/1a3ad656-4609-4d9d-806e-801b3d989292','NA','embargoed','NA','NA','NA','NA','NA','moorthy','2022-06-09 16:52:34',NULL,NULL),
 (12,'2','47498009Q-1',11,6,2,3,'200',19,'NA','NA','NA','NA','Combination Chemotherapy','jmjj','jmm','55','um','sdsd','NA','NA',19,'SUBMITTED TO QC','5000',3,19,'NA','0','1','20',13,'NA','NA','4','NA','NA',2,'NA','NA','NA','NA','NA','NA','Male','NA','','','','','','','','','moorthy','2022-06-09 17:08:58',NULL,NULL),
 (13,'','47498009Q-1',11,3,19,3,'200',21,'','','0','NA','Drug Interactions','','','','','','','',5,'SUBMITTED TO QC','',2,19,'','','','16',4,'','','5','','',2,'','','','','','','Male','','bioactivity-target/SaturoGlobal/tan1/Version-1  /100>bioactivity-target/694f3082-bd5b-4955-b40c-ce4683bdbe85','100','embargoed','NA','NA','NA','NA','NA','','2022-06-09 21:20:13','moorthy','2022-06-09 21:20:45'),
 (14,'','47498009Q-1',NULL,NULL,NULL,NULL,'',NULL,'','','','','','','','','','','','',NULL,'SUBMITTED TO QC','',NULL,NULL,'','','','',NULL,'','','','','',NULL,'','','','','','','','','','','','','','','','','moorthy','2022-06-09 21:26:40',NULL,NULL);
/*!40000 ALTER TABLE `assay001wb` ENABLE KEYS */;


--
-- Definition of table `assaytype001mb`
--

DROP TABLE IF EXISTS `assaytype001mb`;
CREATE TABLE `assaytype001mb` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `assayType` varchar(50) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assaytype001mb`
--

/*!40000 ALTER TABLE `assaytype001mb` DISABLE KEYS */;
INSERT INTO `assaytype001mb` (`Id`,`assayType`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,'Binding','siva','2022-05-10 16:19:37',NULL,NULL),
 (3,'Functional','siva','2022-05-27 18:30:21',NULL,NULL),
 (4,'Non-clinical trial ADME study','siva','2022-05-27 18:30:30',NULL,NULL),
 (5,'Clinical Trial (using humans)','siva','2022-05-27 18:30:39',NULL,NULL),
 (6,'Clinical Trial (animal study)','siva','2022-05-27 18:31:44',NULL,NULL);
/*!40000 ALTER TABLE `assaytype001mb` ENABLE KEYS */;


--
-- Definition of table `bom001mb`
--

DROP TABLE IF EXISTS `bom001mb`;
CREATE TABLE `bom001mb` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bom` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bom001mb`
--

/*!40000 ALTER TABLE `bom001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `bom001mb` ENABLE KEYS */;


--
-- Definition of table `bomtype001mb`
--

DROP TABLE IF EXISTS `bomtype001mb`;
CREATE TABLE `bomtype001mb` (
  `bomId` int(11) NOT NULL AUTO_INCREMENT,
  `bomName` varchar(100) NOT NULL,
  `bomType` varchar(40) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`bomId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bomtype001mb`
--

/*!40000 ALTER TABLE `bomtype001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `bomtype001mb` ENABLE KEYS */;


--
-- Definition of table `category001mb`
--

DROP TABLE IF EXISTS `category001mb`;
CREATE TABLE `category001mb` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category001mb`
--

/*!40000 ALTER TABLE `category001mb` DISABLE KEYS */;
INSERT INTO `category001mb` (`Id`,`category`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,'PAC','siva','2022-05-10 17:40:40',NULL,NULL),
 (2,'ADME','siva','2022-05-11 11:49:20',NULL,NULL),
 (3,'TOX','siva','2022-05-11 11:49:34',NULL,NULL),
 (4,'ADME/PAC','siva','2022-05-11 11:49:48',NULL,NULL),
 (5,'PAC/TOX','siva','2022-05-11 11:49:56',NULL,NULL),
 (6,'ADME/TOX','siva','2022-05-11 11:50:06',NULL,NULL);
/*!40000 ALTER TABLE `category001mb` ENABLE KEYS */;


--
-- Definition of table `categoryfunction001mb`
--

DROP TABLE IF EXISTS `categoryfunction001mb`;
CREATE TABLE `categoryfunction001mb` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `function` varchar(50) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categoryfunction001mb`
--

/*!40000 ALTER TABLE `categoryfunction001mb` DISABLE KEYS */;
INSERT INTO `categoryfunction001mb` (`Id`,`function`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,'Allergy inhibitor','siva','2022-05-10 17:55:41',NULL,NULL),
 (2,'Amebicide','siva','2022-05-27 18:50:55',NULL,NULL),
 (3,'Analgesic','siva','2022-05-27 18:51:02',NULL,NULL),
 (4,'Anesthetic','siva','2022-05-27 18:51:11',NULL,NULL),
 (5,'Anthelmintic','siva','2022-05-27 18:51:18',NULL,NULL),
 (6,'Anti-aging agent','siva','2022-05-27 18:51:26',NULL,NULL),
 (7,'Anti-AIDS agent','siva','2022-05-27 18:51:33',NULL,NULL),
 (8,'Anti-Alzheimer agent','siva','2022-05-27 18:51:40',NULL,NULL),
 (9,'Antiangiogenic agent','siva','2022-05-27 18:51:50',NULL,NULL),
 (10,'Antiasthmatic agent','siva','2022-05-27 18:52:01',NULL,NULL),
 (11,'Antiatherosclerotic','siva','2022-05-27 18:52:09',NULL,NULL),
 (12,'Antibacterial agent','siva','2022-05-27 18:52:17',NULL,NULL),
 (13,'Antibiotic','siva','2022-05-27 18:52:24',NULL,NULL),
 (14,'Anticoagulation agent','siva','2022-05-27 18:52:32',NULL,NULL),
 (15,'Anticonvulsant','siva','2022-05-27 18:52:40',NULL,NULL),
 (16,'Anticoronaviral agent','siva','2022-05-27 18:52:48',NULL,NULL),
 (17,'Antidiabetic agent','siva','2022-05-27 18:52:56',NULL,NULL),
 (18,'Anti-hemorrhoidal agent','siva','2022-05-27 18:53:05',NULL,NULL),
 (19,'Antihypertensive agent','siva','2022-05-27 18:53:15',NULL,NULL),
 (20,'Cardioprotective agent','siva','2022-05-27 18:53:24',NULL,NULL),
 (21,'Antiviral agent','siva','2022-05-27 18:54:45',NULL,NULL),
 (22,'Antitumor agent','siva','2022-05-27 18:55:08',NULL,NULL),
 (23,'Cytoprotective agent','siva','2022-05-27 18:55:21',NULL,NULL),
 (24,'Fungicide','siva','2022-05-27 18:55:27',NULL,NULL),
 (25,'Gastroprotective agent','siva','2022-05-27 18:55:34',NULL,NULL),
 (26,'Hepatoprotective agent','siva','2022-05-27 18:55:41',NULL,NULL),
 (27,'Immuno-modulator','siva','2022-05-27 18:55:48',NULL,NULL),
 (28,'Immuno-stimulator','siva','2022-05-27 18:55:55',NULL,NULL),
 (29,'Inhibitor','siva','2022-05-27 18:56:06',NULL,NULL),
 (30,'Nephroprotective agent','siva','2022-05-27 18:56:12',NULL,NULL),
 (31,'Neuroprotective agent','siva','2022-05-27 18:56:19',NULL,NULL),
 (32,'Parasiticide','siva','2022-05-27 18:56:26',NULL,NULL),
 (33,'Photosensitizer','siva','2022-05-27 18:56:32',NULL,NULL),
 (34,'Protozoacide','siva','2022-05-27 18:56:40',NULL,NULL),
 (35,'Radiosensitizer','siva','2022-05-27 18:56:47',NULL,NULL),
 (36,'Sensitizer','siva','2022-05-27 18:56:54',NULL,NULL),
 (37,'Stimulator','siva','2022-05-27 18:57:00',NULL,NULL),
 (38,'Vasodilator','siva','2022-05-27 18:57:10',NULL,NULL),
 (39,'Agonist','siva','2022-05-27 18:57:17',NULL,NULL),
 (40,'Antagonist','siva','2022-05-27 18:57:24',NULL,NULL),
 (41,'Inhibitor','siva','2022-05-27 18:57:30',NULL,NULL),
 (42,'Inverse agonist','siva','2022-05-27 18:57:36',NULL,NULL),
 (43,'Activator','siva','2022-05-27 18:57:43',NULL,NULL),
 (44,'Covalent inhibitor','siva','2022-05-27 18:57:51',NULL,NULL),
 (45,'Modulator','siva','2022-05-27 18:57:57',NULL,NULL),
 (46,'Positive allosteric modulator','siva','2022-05-27 18:58:04',NULL,NULL),
 (47,'Stimulator','siva','2022-05-27 18:58:11',NULL,NULL),
 (48,'Cytochrome P450 inhibitor','siva','2022-05-27 18:58:19',NULL,NULL);
/*!40000 ALTER TABLE `categoryfunction001mb` ENABLE KEYS */;


--
-- Definition of table `compprodorder001mb`
--

DROP TABLE IF EXISTS `compprodorder001mb`;
CREATE TABLE `compprodorder001mb` (
  `prodId` int(11) NOT NULL AUTO_INCREMENT,
  `prorderCode` varchar(30) NOT NULL,
  `itemtoManufacture` varchar(40) NOT NULL,
  `toProduce` varchar(30) DEFAULT NULL,
  `produced` varchar(30) NOT NULL,
  `empCompany` varchar(30) NOT NULL,
  `date` datetime NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`prodId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `compprodorder001mb`
--

/*!40000 ALTER TABLE `compprodorder001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `compprodorder001mb` ENABLE KEYS */;


--
-- Definition of table `email001mb`
--

DROP TABLE IF EXISTS `email001mb`;
CREATE TABLE `email001mb` (
  `emailId` int(11) NOT NULL AUTO_INCREMENT,
  `emailFrom` varchar(50) NOT NULL,
  `emailTo` varchar(50) NOT NULL,
  `emailCC` text NOT NULL,
  `emailBCC` text NOT NULL,
  `emailDate` datetime DEFAULT NULL,
  `emailSubject` varchar(100) DEFAULT NULL,
  `emailBody` text,
  `emailCurrentPlace` varchar(30) DEFAULT NULL,
  `isEmailViewed` varchar(30) DEFAULT NULL,
  `isEmailAttachmentExists` varchar(10) DEFAULT NULL,
  `multipleEmailId` varchar(255) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`emailId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email001mb`
--

/*!40000 ALTER TABLE `email001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `email001mb` ENABLE KEYS */;


--
-- Definition of table `emailattachment001mb`
--

DROP TABLE IF EXISTS `emailattachment001mb`;
CREATE TABLE `emailattachment001mb` (
  `emailattachmentid` int(11) NOT NULL AUTO_INCREMENT,
  `content` tinyblob,
  `contenttype` varchar(255) DEFAULT NULL,
  `emailId` varchar(225) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `filesize` varchar(255) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`emailattachmentid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emailattachment001mb`
--

/*!40000 ALTER TABLE `emailattachment001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailattachment001mb` ENABLE KEYS */;


--
-- Definition of table `emailsignature001mb`
--

DROP TABLE IF EXISTS `emailsignature001mb`;
CREATE TABLE `emailsignature001mb` (
  `emailSignatureId` int(11) NOT NULL AUTO_INCREMENT,
  `companyName` varchar(255) DEFAULT NULL,
  `companyWebsite` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `emailAddress` varchar(255) DEFAULT NULL,
  `employeeDesignation` varchar(255) DEFAULT NULL,
  `employeeId` int(11) DEFAULT NULL,
  `employeeName` varchar(255) DEFAULT NULL,
  `employeeNamePrefix` varchar(255) DEFAULT NULL,
  `logoLink` varchar(255) DEFAULT NULL,
  `mobileNumber` int(10) DEFAULT NULL,
  `phoneNumber` int(10) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`emailSignatureId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emailsignature001mb`
--

/*!40000 ALTER TABLE `emailsignature001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailsignature001mb` ENABLE KEYS */;


--
-- Definition of table `gender001mb`
--

DROP TABLE IF EXISTS `gender001mb`;
CREATE TABLE `gender001mb` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `gender` varchar(20) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gender001mb`
--

/*!40000 ALTER TABLE `gender001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `gender001mb` ENABLE KEYS */;


--
-- Definition of table `issueditem001mb`
--

DROP TABLE IF EXISTS `issueditem001mb`;
CREATE TABLE `issueditem001mb` (
  `issueId` int(11) NOT NULL AUTO_INCREMENT,
  `porderCode` varchar(50) NOT NULL,
  `Itemcode` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `uom` varchar(30) NOT NULL,
  `amount` decimal(12,4) NOT NULL,
  `serialNo` varchar(50) NOT NULL,
  `sourceWH` varchar(50) NOT NULL,
  `targetWH` varchar(50) NOT NULL,
  `stockEntry` varchar(40) NOT NULL,
  `company` varchar(50) NOT NULL,
  `issueDate` datetime NOT NULL,
  `quantity` int(11) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`issueId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issueditem001mb`
--

/*!40000 ALTER TABLE `issueditem001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `issueditem001mb` ENABLE KEYS */;


--
-- Definition of table `itemdt001mb`
--

DROP TABLE IF EXISTS `itemdt001mb`;
CREATE TABLE `itemdt001mb` (
  `Itemid` int(11) NOT NULL AUTO_INCREMENT,
  `Itemcode` varchar(50) DEFAULT NULL,
  `Quantity` smallint(6) NOT NULL,
  `Rate` decimal(12,4) DEFAULT NULL,
  `Amount` decimal(12,4) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`Itemid`),
  UNIQUE KEY `Itemcode` (`Itemcode`),
  UNIQUE KEY `IDX_edae62f88dd06a0f27b760ad00` (`Itemcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemdt001mb`
--

/*!40000 ALTER TABLE `itemdt001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `itemdt001mb` ENABLE KEYS */;


--
-- Definition of table `itemst001mb`
--

DROP TABLE IF EXISTS `itemst001mb`;
CREATE TABLE `itemst001mb` (
  `itemstId` int(11) NOT NULL AUTO_INCREMENT,
  `itemcode` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL,
  `itemGroup` varchar(40) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`itemstId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemst001mb`
--

/*!40000 ALTER TABLE `itemst001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `itemst001mb` ENABLE KEYS */;


--
-- Definition of table `ligand001wb`
--

DROP TABLE IF EXISTS `ligand001wb`;
CREATE TABLE `ligand001wb` (
  `ligandId` int(11) NOT NULL AUTO_INCREMENT,
  `tanNumber` varchar(30) DEFAULT NULL,
  `ligandUri` varchar(150) DEFAULT NULL,
  `ligandVersion_slno` int(30) DEFAULT NULL,
  `ligandStatus` varchar(50) DEFAULT NULL,
  `collection` varchar(30) DEFAULT NULL,
  `ligandType_slno` int(30) DEFAULT NULL,
  `ligandDetail` varchar(100) DEFAULT NULL,
  `Identifier1` varchar(100) DEFAULT NULL,
  `Identifier2` varchar(100) DEFAULT NULL,
  `Identifier3` varchar(100) DEFAULT NULL,
  `collectionId` varchar(30) DEFAULT NULL,
  `locator` varchar(30) DEFAULT NULL,
  `sourceType` varchar(30) DEFAULT NULL,
  `citation` varchar(30) DEFAULT NULL,
  `diseaseName1` varchar(30) DEFAULT NULL,
  `diseaseName2` varchar(30) DEFAULT NULL,
  `diseaseName3` varchar(30) DEFAULT NULL,
  `target` varchar(150) DEFAULT NULL,
  `targetVersion` varchar(20) DEFAULT NULL,
  `targetStatus` varchar(50) DEFAULT NULL,
  `collectionId1` varchar(30) DEFAULT NULL,
  `original` varchar(50) DEFAULT NULL,
  `acronym` varchar(30) DEFAULT NULL,
  `organism` varchar(30) DEFAULT NULL,
  `variant` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `insert_user` varchar(40) DEFAULT NULL,
  `insert_datetime` datetime DEFAULT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`ligandId`),
  KEY `ligandVersion_slno` (`ligandVersion_slno`),
  KEY `ligandType_slno` (`ligandType_slno`),
  CONSTRAINT `ligand001wb_ibfk_1` FOREIGN KEY (`ligandVersion_slno`) REFERENCES `ligandversion001mb` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `ligand001wb_ibfk_2` FOREIGN KEY (`ligandType_slno`) REFERENCES `ligandtype001mb` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ligand001wb`
--

/*!40000 ALTER TABLE `ligand001wb` DISABLE KEYS */;
INSERT INTO `ligand001wb` (`ligandId`,`tanNumber`,`ligandUri`,`ligandVersion_slno`,`ligandStatus`,`collection`,`ligandType_slno`,`ligandDetail`,`Identifier1`,`Identifier2`,`Identifier3`,`collectionId`,`locator`,`sourceType`,`citation`,`diseaseName1`,`diseaseName2`,`diseaseName3`,`target`,`targetVersion`,`targetStatus`,`collectionId1`,`original`,`acronym`,`organism`,`variant`,`status`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (10,'tan1','bioactivity-ligand/SaturoGlobal/tan1/2>bioactivity-ligand/56999666-7bde-43de-8ae6-34ed028678fd',2,'embargoed','cas',1,'Antibody-drug conjugate','1','CP1','DOX','hgmgm','Compound 3a','journal','tan1','cancer','NA','NA','','','','','','','','','','moorthy','2022-06-09 16:31:20',NULL,NULL),
 (11,'tan2','bioactivity-ligand/SaturoGlobal/tan2/3>bioactivity-ligand/57506c20-d4f8-430d-bd11-9fbdf417e089',3,'embargoed','cas',1,'Antibody-drug conjugate','Caspase probe 1','CP1','DOX','hgmgm','Compound 3a','journal','tan2','cancer1','NA','NA','','','','','','','','','','moorthy','2022-06-09 16:39:07',NULL,NULL);
/*!40000 ALTER TABLE `ligand001wb` ENABLE KEYS */;


--
-- Definition of table `ligandtype001mb`
--

DROP TABLE IF EXISTS `ligandtype001mb`;
CREATE TABLE `ligandtype001mb` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ligandtype` varchar(50) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ligandtype001mb`
--

/*!40000 ALTER TABLE `ligandtype001mb` DISABLE KEYS */;
INSERT INTO `ligandtype001mb` (`Id`,`ligandtype`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,'BLG-Antibody','siva','2022-05-10 15:11:16','siva','2022-05-10 15:11:21'),
 (2,'BLG-Protein','siva','2022-05-10 15:13:01',NULL,NULL),
 (3,'BLG-Peptide','siva','2022-05-10 15:13:20',NULL,NULL),
 (4,'BLG-Nucleic acid','siva','2022-05-10 15:13:31',NULL,NULL),
 (5,'BLG-Gene/cell therapeutic','siva','2022-05-10 15:14:05',NULL,NULL),
 (6,'BLG-Vaccine','siva','2022-05-10 15:14:14',NULL,NULL),
 (7,'Natural extract','siva','2022-05-10 15:14:25',NULL,NULL),
 (8,'Small molecule','siva','2022-05-27 18:26:14',NULL,NULL),
 (9,'Other','siva','2022-05-27 18:30:03',NULL,NULL),
 (10,'BLG-Protein (non-antibody containing)','siva','2022-05-30 10:03:10',NULL,NULL);
/*!40000 ALTER TABLE `ligandtype001mb` ENABLE KEYS */;


--
-- Definition of table `ligandversion001mb`
--

DROP TABLE IF EXISTS `ligandversion001mb`;
CREATE TABLE `ligandversion001mb` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ligandVersion` varchar(30) NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ligandversion001mb`
--

/*!40000 ALTER TABLE `ligandversion001mb` DISABLE KEYS */;
INSERT INTO `ligandversion001mb` (`Id`,`ligandVersion`,`updated_datetime`,`insert_user`,`insert_datetime`,`updated_user`) VALUES 
 (2,'Version-1  ',NULL,'siva','2022-05-10 14:38:00',NULL),
 (3,'Version-2',NULL,'siva','2022-05-10 14:38:23',NULL),
 (4,'Version-3',NULL,'siva','2022-05-10 14:38:35',NULL),
 (6,'Version-4',NULL,'siva','2022-05-27 18:23:06',NULL),
 (7,'Version-5',NULL,'siva','2022-05-27 18:23:11',NULL),
 (8,'Version-6',NULL,'siva','2022-05-27 18:23:15',NULL),
 (10,'Version-7',NULL,'siva','2022-05-27 18:23:33',NULL),
 (11,'Version-8',NULL,'siva','2022-05-27 18:23:40',NULL),
 (12,'Version-9',NULL,'siva','2022-05-27 18:23:44',NULL),
 (13,'Version-10',NULL,'siva','2022-05-27 18:23:49',NULL),
 (14,'Version-11',NULL,'siva','2022-05-27 18:23:54',NULL),
 (15,'Version-12',NULL,'siva','2022-05-27 18:24:01',NULL),
 (16,'Version-13',NULL,'siva','2022-05-27 18:24:05',NULL),
 (17,'Version-14',NULL,'siva','2022-05-27 18:24:16',NULL),
 (18,'Version-15',NULL,'siva','2022-05-27 18:24:24',NULL),
 (19,'Version-16',NULL,'siva','2022-05-27 18:24:32',NULL),
 (20,'Version-17',NULL,'siva','2022-05-27 18:24:38',NULL),
 (21,'Version-18',NULL,'siva','2022-05-27 18:24:43',NULL),
 (22,'Version-19',NULL,'siva','2022-05-27 18:24:51',NULL),
 (24,'Version-20',NULL,'siva','2022-05-27 18:25:06',NULL),
 (25,'Version-21',NULL,'siva','2022-05-27 18:25:12',NULL),
 (26,'Version-22',NULL,'siva','2022-05-27 18:25:16',NULL),
 (27,'Version-23',NULL,'siva','2022-05-27 18:25:20',NULL),
 (28,'Version-24',NULL,'siva','2022-05-27 18:25:24',NULL),
 (29,'Version-25',NULL,'siva','2022-05-27 18:25:29',NULL);
/*!40000 ALTER TABLE `ligandversion001mb` ENABLE KEYS */;


--
-- Definition of table `manufactureset001mb`
--

DROP TABLE IF EXISTS `manufactureset001mb`;
CREATE TABLE `manufactureset001mb` (
  `mansetId` int(11) NOT NULL AUTO_INCREMENT,
  `prodPercent` decimal(12,4) NOT NULL,
  `backflushRM` varchar(40) NOT NULL,
  `capacityPlan` varchar(30) NOT NULL,
  `timebwOpern` varchar(30) DEFAULT NULL,
  `defworkinProgWH` varchar(50) NOT NULL,
  `defFingoodsWH` varchar(50) NOT NULL,
  `disableCPandTT` char(20) NOT NULL,
  `allowOT` char(20) NOT NULL,
  `allowProdinholy` char(20) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`mansetId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufactureset001mb`
--

/*!40000 ALTER TABLE `manufactureset001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `manufactureset001mb` ENABLE KEYS */;


--
-- Definition of table `openprodorder001mb`
--

DROP TABLE IF EXISTS `openprodorder001mb`;
CREATE TABLE `openprodorder001mb` (
  `prodId` int(11) NOT NULL AUTO_INCREMENT,
  `prorderCode` varchar(30) NOT NULL,
  `itemtoManufacture` varchar(40) NOT NULL,
  `toProduce` varchar(30) DEFAULT NULL,
  `produced` varchar(30) NOT NULL,
  `empCompany` varchar(30) NOT NULL,
  `date` datetime NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`prodId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `openprodorder001mb`
--

/*!40000 ALTER TABLE `openprodorder001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `openprodorder001mb` ENABLE KEYS */;


--
-- Definition of table `operationbom001mb`
--

DROP TABLE IF EXISTS `operationbom001mb`;
CREATE TABLE `operationbom001mb` (
  `opId` int(11) NOT NULL AUTO_INCREMENT,
  `opName` varchar(50) NOT NULL,
  `workstName` varchar(50) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`opId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operationbom001mb`
--

/*!40000 ALTER TABLE `operationbom001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `operationbom001mb` ENABLE KEYS */;


--
-- Definition of table `order001mb`
--

DROP TABLE IF EXISTS `order001mb`;
CREATE TABLE `order001mb` (
  `Orderid` int(11) NOT NULL AUTO_INCREMENT,
  `Ordername` varchar(50) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`Orderid`),
  UNIQUE KEY `Ordername` (`Ordername`),
  UNIQUE KEY `IDX_3568b8d6f99a332cda5e2e2fdb` (`Ordername`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order001mb`
--

/*!40000 ALTER TABLE `order001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `order001mb` ENABLE KEYS */;


--
-- Definition of table `originalprefix001mb`
--

DROP TABLE IF EXISTS `originalprefix001mb`;
CREATE TABLE `originalprefix001mb` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `originalPrefix` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `originalprefix001mb`
--

/*!40000 ALTER TABLE `originalprefix001mb` DISABLE KEYS */;
INSERT INTO `originalprefix001mb` (`Id`,`originalPrefix`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,' >','siva','2022-05-10 18:10:45',NULL,NULL),
 (2,'=','siva','2022-05-10 18:49:36',NULL,NULL),
 (3,' <','siva','2022-05-10 18:50:00',NULL,NULL),
 (4,' ~','siva','2022-05-10 18:52:22',NULL,NULL),
 (5,'>=','siva','2022-05-10 18:52:37',NULL,NULL),
 (7,' ≥','siva','2022-05-30 12:12:38',NULL,NULL),
 (8,' ≤','siva','2022-05-30 12:12:52',NULL,NULL),
 (9,' -','siva','2022-05-30 12:13:04',NULL,NULL),
 (10,'≈','siva','2022-05-30 12:13:13',NULL,NULL),
 (11,'>=','siva','2022-05-30 12:13:22',NULL,NULL),
 (12,'<=','siva','2022-05-30 12:13:31',NULL,NULL),
 (13,'>~','siva','2022-05-30 12:13:40',NULL,NULL),
 (14,'<~','siva','2022-05-30 12:13:58',NULL,NULL);
/*!40000 ALTER TABLE `originalprefix001mb` ENABLE KEYS */;


--
-- Definition of table `person001mb`
--

DROP TABLE IF EXISTS `person001mb`;
CREATE TABLE `person001mb` (
  `person_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `sex` varchar(30) DEFAULT NULL,
  `maritalstatus` varchar(30) DEFAULT NULL,
  `bloodgroup` varchar(30) DEFAULT NULL,
  `address1` varchar(50) DEFAULT NULL,
  `address2` varchar(50) DEFAULT NULL,
  `address3` varchar(50) DEFAULT NULL,
  `religion` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `mobileno` int(15) DEFAULT NULL,
  `workphoneno` int(11) DEFAULT NULL,
  `homephoneno` int(11) DEFAULT NULL,
  `primaryemail` varchar(30) DEFAULT NULL,
  `secondaryemail` varchar(30) DEFAULT NULL,
  `occupationtype` varchar(30) DEFAULT NULL,
  `occupationrole` varchar(30) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  UNIQUE KEY `UNI_firstname` (`firstname`),
  UNIQUE KEY `UNI_lastname` (`lastname`),
  UNIQUE KEY `UNI_dob` (`dob`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person001mb`
--

/*!40000 ALTER TABLE `person001mb` DISABLE KEYS */;
INSERT INTO `person001mb` (`person_id`,`firstname`,`lastname`,`age`,`dob`,`sex`,`maritalstatus`,`bloodgroup`,`address1`,`address2`,`address3`,`religion`,`city`,`state`,`country`,`zipcode`,`mobileno`,`workphoneno`,`homephoneno`,`primaryemail`,`secondaryemail`,`occupationtype`,`occupationrole`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,'sivakumar','karunamoorthy',35,'1986-09-06 13:18:33','male','married','o+','#25, 7th Cross Rd','Narayana Garden','Thalakkudi-Tiruchirappalli','hindu','Trichy','TamilNadu','India',621216,98765432,98765432,98765432,'adc@gmail.com','adc@gmail.com','fulltime','manager','siva','2021-09-06 13:18:33','siva','2021-09-06 13:18:33'),
 (9,'Moorthy','Perumal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'siva','2022-05-17 16:05:12',NULL,NULL),
 (12,'sekar','l',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'siva','2022-05-17 16:18:39',NULL,NULL),
 (13,'Aravinth','Ajay',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'siva','2022-05-18 13:12:40',NULL,NULL);
/*!40000 ALTER TABLE `person001mb` ENABLE KEYS */;


--
-- Definition of table `prodorder001mb`
--

DROP TABLE IF EXISTS `prodorder001mb`;
CREATE TABLE `prodorder001mb` (
  `prId` int(11) NOT NULL AUTO_INCREMENT,
  `itemtoManufacture` varchar(40) NOT NULL,
  `status` varchar(30) NOT NULL,
  `prorderCode` varchar(30) NOT NULL,
  `insert_user` varchar(15) DEFAULT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`prId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodorder001mb`
--

/*!40000 ALTER TABLE `prodorder001mb` DISABLE KEYS */;
INSERT INTO `prodorder001mb` (`prId`,`itemtoManufacture`,`status`,`prorderCode`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,'material','Draft','yy','siva','2022-04-26 16:37:58','siva','2022-04-26 16:38:03');
/*!40000 ALTER TABLE `prodorder001mb` ENABLE KEYS */;


--
-- Definition of table `prodplan001mb`
--

DROP TABLE IF EXISTS `prodplan001mb`;
CREATE TABLE `prodplan001mb` (
  `prplanId` int(11) NOT NULL AUTO_INCREMENT,
  `getItems` varchar(40) NOT NULL,
  `itemCode` varchar(40) NOT NULL,
  `bomNo` varchar(30) NOT NULL,
  `plannedQty` varchar(40) NOT NULL,
  `pendingQty` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`prplanId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodplan001mb`
--

/*!40000 ALTER TABLE `prodplan001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `prodplan001mb` ENABLE KEYS */;


--
-- Definition of table `prodstockentry001mb`
--

DROP TABLE IF EXISTS `prodstockentry001mb`;
CREATE TABLE `prodstockentry001mb` (
  `prstockId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `status` varchar(40) NOT NULL,
  `purpose` varchar(50) NOT NULL,
  `stockEntry` varchar(30) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`prstockId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodstockentry001mb`
--

/*!40000 ALTER TABLE `prodstockentry001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `prodstockentry001mb` ENABLE KEYS */;


--
-- Definition of table `prodtimesheet001mb`
--

DROP TABLE IF EXISTS `prodtimesheet001mb`;
CREATE TABLE `prodtimesheet001mb` (
  `prtId` int(11) NOT NULL AUTO_INCREMENT,
  `empName` varchar(40) NOT NULL,
  `tsName` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `empCompany` varchar(40) NOT NULL,
  `twhrs` varchar(40) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`prtId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodtimesheet001mb`
--

/*!40000 ALTER TABLE `prodtimesheet001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `prodtimesheet001mb` ENABLE KEYS */;


--
-- Definition of table `progprodorder001mb`
--

DROP TABLE IF EXISTS `progprodorder001mb`;
CREATE TABLE `progprodorder001mb` (
  `prodId` int(11) NOT NULL AUTO_INCREMENT,
  `prorderCode` varchar(30) NOT NULL,
  `itemtoManufacture` varchar(40) NOT NULL,
  `toProduce` varchar(30) DEFAULT NULL,
  `produced` varchar(30) NOT NULL,
  `empCompany` varchar(30) NOT NULL,
  `date` datetime NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`prodId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `progprodorder001mb`
--

/*!40000 ALTER TABLE `progprodorder001mb` DISABLE KEYS */;
INSERT INTO `progprodorder001mb` (`prodId`,`prorderCode`,`itemtoManufacture`,`toProduce`,`produced`,`empCompany`,`date`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,'Dummy1','material','kh','lkh','dell','2022-04-27 00:00:00','siva','2022-04-27 11:51:27',NULL,NULL);
/*!40000 ALTER TABLE `progprodorder001mb` ENABLE KEYS */;


--
-- Definition of table `reqitemorder001mb`
--

DROP TABLE IF EXISTS `reqitemorder001mb`;
CREATE TABLE `reqitemorder001mb` (
  `mrsId` int(11) NOT NULL AUTO_INCREMENT,
  `mrSeries` varchar(50) NOT NULL,
  `itemCode` varchar(50) NOT NULL,
  `description` varchar(150) DEFAULT NULL,
  `company` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `quantity` int(11) NOT NULL,
  `orderedqty` int(11) DEFAULT NULL,
  `qtyrtoorder` int(11) DEFAULT NULL,
  `qtytoorder` int(11) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`mrsId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reqitemorder001mb`
--

/*!40000 ALTER TABLE `reqitemorder001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `reqitemorder001mb` ENABLE KEYS */;


--
-- Definition of table `role001mb`
--

DROP TABLE IF EXISTS `role001mb`;
CREATE TABLE `role001mb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(40) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role001mb`
--

/*!40000 ALTER TABLE `role001mb` DISABLE KEYS */;
INSERT INTO `role001mb` (`id`,`rolename`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,'Admin','siva','2021-09-06 13:18:33','siva','2021-09-06 13:18:33'),
 (2,'User','siva','2021-09-06 13:18:33','siva','2021-09-06 13:18:33'),
 (3,'Reviewer','siva','2021-09-06 13:18:33','siva','2021-09-06 13:18:33');
/*!40000 ALTER TABLE `role001mb` ENABLE KEYS */;


--
-- Definition of table `routeofadministration001mb`
--

DROP TABLE IF EXISTS `routeofadministration001mb`;
CREATE TABLE `routeofadministration001mb` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `route` varchar(50) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routeofadministration001mb`
--

/*!40000 ALTER TABLE `routeofadministration001mb` DISABLE KEYS */;
INSERT INTO `routeofadministration001mb` (`Id`,`route`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,'Auricular','siva','2022-05-10 17:14:11','siva','2022-05-10 17:17:32'),
 (2,'Otic','siva','2022-05-27 18:37:31',NULL,NULL),
 (3,'Buccal','siva','2022-05-27 18:37:38',NULL,NULL),
 (4,'Epidural','siva','2022-05-27 18:37:45',NULL,NULL),
 (5,'Intra-arterial','siva','2022-05-27 18:37:54',NULL,NULL),
 (6,'Intra-articular','siva','2022-05-27 18:38:06',NULL,NULL),
 (7,'Intracardiac','siva','2022-05-27 18:38:15',NULL,NULL),
 (8,'Intraductal','siva','2022-05-27 18:38:46',NULL,NULL),
 (9,'Intrafollicular','siva','2022-05-27 18:38:55',NULL,NULL),
 (10,'Intragastric','siva','2022-05-27 18:39:04',NULL,NULL),
 (11,'Intralesional','siva','2022-05-27 18:39:12',NULL,NULL),
 (12,'Intramuscular','siva','2022-05-27 18:39:19',NULL,NULL),
 (13,'Intramammary','siva','2022-05-27 18:39:27',NULL,NULL),
 (14,'Immersion','siva','2022-05-27 18:39:36',NULL,NULL),
 (15,'Infiltration','siva','2022-05-27 18:39:44',NULL,NULL),
 (16,'Respiratory','siva','2022-05-27 18:40:09',NULL,NULL),
 (17,'Inhalation','siva','2022-05-27 18:40:20',NULL,NULL),
 (18,'Intraperitoneal','siva','2022-05-27 18:40:28',NULL,NULL),
 (19,'Intrasinal','siva','2022-05-27 18:40:38',NULL,NULL),
 (20,'Intrasynovial','siva','2022-05-27 18:40:45',NULL,NULL),
 (21,'Intrathecal','siva','2022-05-27 18:40:54',NULL,NULL),
 (22,'Intratesticular','siva','2022-05-27 18:41:02',NULL,NULL),
 (23,'Intrauterine','siva','2022-05-27 18:41:10',NULL,NULL),
 (24,'Intravenous','siva','2022-05-27 18:41:17',NULL,NULL),
 (25,'Intravesical','siva','2022-05-27 18:41:25',NULL,NULL),
 (26,'Nasal','siva','2022-05-27 18:41:34',NULL,NULL),
 (27,'Nasogastric','siva','2022-05-27 18:41:48',NULL,NULL),
 (28,'Ophthalmic','siva','2022-05-27 18:41:56',NULL,NULL),
 (29,'Parenteral','siva','2022-05-27 18:42:05',NULL,NULL),
 (30,'Perineural','siva','2022-05-27 18:42:13',NULL,NULL),
 (31,'Oral','siva','2022-05-27 18:42:21',NULL,NULL),
 (32,'Gavaged','siva','2022-05-27 18:42:29',NULL,NULL),
 (33,'Intragastric gavage','siva','2022-05-27 18:42:42',NULL,NULL),
 (34,'Peroral','siva','2022-05-27 18:42:52',NULL,NULL),
 (35,'Vaginal','siva','2022-05-27 18:43:00',NULL,NULL),
 (36,'Rectal','siva','2022-05-27 18:43:07',NULL,NULL),
 (37,'Subcutaneous','siva','2022-05-27 18:43:16',NULL,NULL),
 (38,'Subcutaneous implant','siva','2022-05-27 18:43:25',NULL,NULL),
 (39,'Sublingual','siva','2022-05-27 18:43:33',NULL,NULL),
 (40,'Topical','siva','2022-05-27 18:43:40',NULL,NULL),
 (41,'Topical-pour on','siva','2022-05-27 18:43:53',NULL,NULL),
 (42,'Transdermal','siva','2022-05-27 18:44:09',NULL,NULL),
 (43,'Intracerebroventricular','siva','2022-05-30 10:12:04',NULL,NULL);
/*!40000 ALTER TABLE `routeofadministration001mb` ENABLE KEYS */;


--
-- Definition of table `systemproperties001mb`
--

DROP TABLE IF EXISTS `systemproperties001mb`;
CREATE TABLE `systemproperties001mb` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(60) NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `systemproperties001mb`
--

/*!40000 ALTER TABLE `systemproperties001mb` DISABLE KEYS */;
INSERT INTO `systemproperties001mb` (`ID`,`name`,`description`,`type`,`status`) VALUES 
 (1,'Login.Domain','Manufacturing','Domain','Y'),
 (2,'Login.Domain','Construction','Domain','Y'),
 (3,'Login.Domain','Buying House','Domain','Y'),
 (4,'Login.Domain','Calibration Labs','Domain','Y'),
 (5,'Login.Domain','School','Domain','Y'),
 (6,'Registration.SecurityQuestion','What was your childhood nickname ?','SecurityQuestion','Y'),
 (7,'Registration.SecurityQuestion','In what city did you meet your spouse/significant other ?','SecurityQuestion','Y'),
 (8,'Registration.SecurityQuestion','What is the name of your favorite childhood friend ?','SecurityQuestion','Y'),
 (9,'Registration.SecurityQuestion','What street did you live on in third grade ?','SecurityQuestion','Y'),
 (10,'Registration.SecurityQuestion','What is your oldest sibling\'s middle name ?','SecurityQuestion','Y'),
 (11,'Registration.SecurityQuestion','What school did you attend for sixth grade ?','SecurityQuestion','Y'),
 (12,'Item.Status','To Deliver','Status','Y'),
 (13,'Item.Status','To Bill','Status','Y'),
 (14,'Item.Status','Draft','Status','Y'),
 (15,'Item.Status','Completed','Status','Y'),
 (16,'Item.Status','Closed','Status','Y'),
 (17,'Item.Status','Cancelled','Status','Y'),
 (18,'EmpStatus.status','Active','status','Y'),
 (19,'EmpStatus.status','Inactive','status','Y'),
 (20,'EmpGender.gender','Male','gender','Y'),
 (21,'EmpGender.gender','Female','gender','Y'),
 (22,'Recruit.JobOpening','open','JobOpening','Y'),
 (23,'Recruit.JobOpening','closed','JobOpening','Y'),
 (24,'Recruit.JobApplicant','open','JobApplicant','Y'),
 (25,'Recruit.JobApplicant','replied','JobApplicant','Y'),
 (26,'Recruit.JobApplicant','rejected','JobApplicant','Y'),
 (27,'Recruit.JobApplicant','hold','JobApplicant','Y'),
 (28,'Recruit.OfferLetter','Draft','OfferLetter','Y'),
 (29,'Recruit.OfferLetter','Submitted','OfferLetter','Y'),
 (30,'Recruit.OfferLetter','Cancelled','OfferLetter','Y'),
 (31,'Recruit.OfferLetter','Queued for Saving','OfferLetter','Y'),
 (32,'Recruit.OfferLetter','Queued for Submission','OfferLetter','Y'),
 (33,'Recruit.OfferLetter','Queued for Cancellation','OfferLetter','Y'),
 (34,'Name.Prefix','Mr','Prefix','Y'),
 (35,'Name.Prefix','Mrs','Prefix','Y'),
 (36,'Name.Prefix','Ms','Prefix','Y'),
 (37,'Name.Prefix','Other','Prefix','Y'),
 (38,'Leave.leaveApp','Open','leaveApp','Y'),
 (39,'Leave.leaveApp','Approved','leaveApp','Y'),
 (40,'Leave.leaveApp','Rejected','leaveApp','Y'),
 (41,'Leave.leaveType','Sick','leaveType','Y'),
 (42,'Leave.leaveType','Casual','leaveType','Y'),
 (43,'Leave.leaveType','Vacation','leaveType','Y'),
 (44,'Leave.leaveType','Paternity','leaveType','Y'),
 (45,'Leave.leaveType','Maternity','leaveType','Y'),
 (46,'Leave.leaveType','Privilege','leaveType','Y'),
 (47,'Leave.leaveType','Compensetory','leaveType','Y'),
 (48,'Holiday.Week','Monday','Week','Y'),
 (49,'Holiday.Week','Tuesday','Week','Y'),
 (50,'Holiday.Week','Wednesday','Week','Y'),
 (51,'Holiday.Week','Thursday','Week','Y'),
 (52,'Holiday.Week','Friday','Week','Y'),
 (53,'Holiday.Week','Saturday','Week','Y'),
 (54,'Holiday.Week','Sunday','Week','Y'),
 (55,'processpr.Month','1','Month','Y'),
 (56,'processpr.Month','2','Month','Y'),
 (57,'processpr.Month','3','Month','Y'),
 (58,'processpr.Month','4','Month','Y'),
 (59,'processpr.Month','5','Month','Y'),
 (60,'processpr.Month','6','Month','Y'),
 (61,'processpr.Month','7','Month','Y'),
 (62,'processpr.Month','8','Month','Y'),
 (63,'processpr.Month','9','Month','Y'),
 (64,'processpr.Month','10','Month','Y'),
 (65,'processpr.Month','11','Month','Y'),
 (66,'processpr.Month','12','Month','Y'),
 (67,'Salary.Mode','Yes','Mode','Y'),
 (68,'Salary.Mode','No','Mode','Y'),
 (69,'Expense.Type','Food','Type','Y'),
 (70,'Expense.Type','Medical','Type','Y'),
 (71,'Expense.Type','Travel','Type','Y'),
 (72,'Expense.Type','Calls','Type','Y'),
 (73,'Expense.Type','Others','Type','Y'),
 (74,'Product.Planning','Sales Order','Planning','Y'),
 (75,'Product.Planning','Material Request','Planning','Y'),
 (76,'Product.Planning','Material Delivery','Planning','Y'),
 (77,'Itembom.status','Enabled','status','Y'),
 (78,'Itembom.status','Variant','status','Y'),
 (79,'Itembom.status','Template','status','Y'),
 (80,'Itembom.status','Disabled','status','Y'),
 (81,'Item.Group','Products','Group','Y'),
 (82,'Item.Group','Raw Materials','Group','Y'),
 (83,'Item.Group','Sub Assemblies','Group','Y'),
 (84,'Item.Group','All ItemGroups','Group','Y'),
 (85,'Manufacture.List','Sales-WPL','List','Y'),
 (86,'Manufacture.List','Supplier-WPL','List','Y'),
 (87,'Manufacture.List','Work-in Progress-WPL','List','Y'),
 (88,'Manufacture.List','Finished Goods-WPL','List','Y'),
 (89,'Manufacture.List','All Warehouses-WPL','List','Y'),
 (90,'PRMatReq.Type','Purchase','Type','Y'),
 (91,'PRMatReq.Type','Material Transfer','Type','Y'),
 (92,'PRMatReq.Type','Material Issue','Type','Y'),
 (93,'PRMatReq.Type','Manufacture','Type','Y'),
 (94,'PRSupp.Type','Asiatic Solution','Type','Y'),
 (95,'PRSupp.Type','Eagle Hardware','Type','Y'),
 (96,'PRSupp.Type','KSMerchandise','Type','Y'),
 (97,'PRSupp.Type','New World Reality','Type','Y'),
 (98,'PRSupp.Type','HomeBase','Type','Y'),
 (99,'PRSupp.Type','Scotier','Type','Y'),
 (100,'PRSupp.Type','HeliosAir','Type','Y'),
 (101,'PRRawmat.List','Yes','List','Y'),
 (102,'PRRawmat.List','No','List','Y'),
 (103,'SuAddress.Type','Billing','Type','Y'),
 (104,'SuAddress.Type','Shipping','Type','Y'),
 (105,'SuAddress.Type','Office','Type','Y'),
 (106,'SuAddress.Type','Personal','Type','Y'),
 (107,'SuAddress.Type','Plant','Type','Y'),
 (108,'SuAddress.Type','Postal','Type','Y'),
 (109,'SuAddress.Type','Shop','Type','Y'),
 (110,'SuAddress.Type','Subsidiary','Type','Y'),
 (111,'SuAddress.Type','Warehouse','Type','Y'),
 (112,'SuAddress.Type','Other','Type','Y'),
 (113,'Supplier.Type','Distributor','Type','Y'),
 (114,'Supplier.Type','Electrical','Type','Y'),
 (115,'Supplier.Type','Hardware','Type','Y'),
 (116,'Supplier.Type','Local','Type','Y'),
 (117,'Supplier.Type','Pharmaceutical','Type','Y'),
 (118,'Supplier.Type','Raw Material','Type','Y'),
 (119,'Supplier.Type','Services','Type','Y'),
 (120,'Supplier.Status','Open','Status','Y'),
 (121,'Supplier.Status','Enabled','Status','Y'),
 (122,'Supplier.Status','Passive','Status','Y'),
 (123,'Supplier.Status','Replied','Status','Y'),
 (124,'Putree.type','Supplier Type','type','Y'),
 (125,'Putree.type','Supplier','type','Y'),
 (126,'Putree.type','Item Group','type','Y'),
 (127,'Putree.type','Item','type','Y'),
 (128,'PuBase.type','Purchase Invoice','type','Y'),
 (129,'PuBase.type','Purchase Order','type','Y'),
 (130,'PuBase.type','Purchase Receipt','type','Y'),
 (131,'valqty.choose','Value','choose','Y'),
 (132,'valqty.choose','Quantity','choose','Y'),
 (133,'range.type','Daily','type','Y'),
 (134,'range.type','Monthly','type','Y'),
 (135,'range.type','Weekly','type','Y'),
 (136,'range.type','Quarterly','type','Y'),
 (137,'range.type','Half-Yearly','type','Y'),
 (138,'range.type','Yearly','type','Y'),
 (139,'crms.status','Lead','status','Y'),
 (140,'crms.status','Replied','status','Y'),
 (141,'crms.status','Open','status','Y'),
 (142,'crms.status','Opportunity','status','Y'),
 (143,'crms.status','Interested','status','Y'),
 (144,'crms.status','Converted','status','Y'),
 (145,'crms.status','Do Not Contact','status','Y'),
 (146,'crmscust.status','Open','status','Y'),
 (147,'crmscust.status','Dormant','status','Y'),
 (148,'crmscust.status','Active','status','Y'),
 (149,'crmcontact.status','Passive','status','Y'),
 (150,'crmcontact.status','Open','status','Y'),
 (151,'crmcontact.status','Replied','status','Y'),
 (152,'crmoppo.type','Sales','type','Y'),
 (153,'crmoppo.type','Maintainence','type','Y'),
 (154,'crmoppo.from','Lead','from','Y'),
 (155,'crmoppo.from','Customer','from','Y'),
 (156,'crmsoppo.status','Open','status','Y'),
 (157,'crmsoppo.status','Quotation','status','Y'),
 (158,'crmsoppo.status','Converted','status','Y'),
 (159,'crmsoppo.status','Lost','status','Y'),
 (160,'crmsoppo.status','Replied','status','Y'),
 (161,'crmsoppo.status','Closed','status','Y'),
 (162,'crmcommunics.status','Open','status','Y'),
 (163,'crmcommunics.status','Replied','status','Y'),
 (164,'crmcommunics.status','Closed','status','Y'),
 (165,'crmcommunics.status','Linked','status','Y'),
 (166,'crmcommunics.sentrec','Sent','sentrec','Y'),
 (167,'crmcommunics.sentrec','Received','sentrec','Y'),
 (168,'inactivecust.type','Sales Person','type','Y'),
 (169,'inactivecust.type','Sales Invoice','type','Y'),
 (170,'stktransent.title','Material issue','title','Y'),
 (171,'stktransent.title','Material Receipt','title','Y'),
 (172,'stktransent.title','Material Transfer','title','Y'),
 (173,'stktransent.title','Material Transfer for Manufacture','title','Y'),
 (174,'stktransent.title','Manufacture','title','Y'),
 (175,'stktransent.title','Replace','title','Y'),
 (176,'stktransent.title','Sub-Contract','title','Y'),
 (177,'stkvoucher.type','Delivery Note','type','Y'),
 (178,'stkvoucher.type','Purchase Receipt','type','Y'),
 (179,'stkvoucher.type','Stock Entry','type','Y'),
 (180,'stkvoucher.type','Sales inVoice','type','Y'),
 (181,'shipping.status','Enabled','status','Y'),
 (182,'shipping.status','Disabled','status','Y'),
 (183,'receiptdoc.type','Purchase Invoice','type','Y'),
 (184,'receiptdoc.type','Purchase Receipt','type','Y'),
 (185,'itemnaming.select','ItemCode','select','Y'),
 (186,'itemnaming.select','NamingServices','select','Y'),
 (187,'defvalue.method','FIFO','method','Y'),
 (188,'defvalue.method','Moving Average','method','Y'),
 (189,'party.type','Customer','type','Y'),
 (190,'party.type','Supplier','type','Y'),
 (191,'letterhead.list','Manager','list','Y'),
 (192,'letterhead.list','Human Resource','list','Y'),
 (193,'letterhead.list','Finance head','list','Y'),
 (194,'account.type','Cost of Goods Sold','type','Y'),
 (195,'account.type','Sales','type','Y'),
 (196,'account.type','Debtors','type','Y'),
 (197,'account.type','National Bank','type','Y'),
 (198,'account.type','Cash','type','Y'),
 (199,'account.type','Stores','type','Y'),
 (200,'account.type','Creditors','type','Y'),
 (201,'account.type','Freight and Forwarding','type','Y'),
 (202,'account.type','Changes','type','Y'),
 (203,'account.type','Stock Received','type','Y'),
 (204,'account.type','Not Billed','type','Y'),
 (205,'payment.mode','Cash','mode','Y'),
 (206,'payment.mode','Wire Transfer','mode','Y'),
 (207,'payment.mode','Check','mode','Y'),
 (208,'payment.mode','Credit Card','mode','Y'),
 (209,'payment.mode','Bank Draft','mode','Y'),
 (210,'currency.type','INR','type','Y'),
 (211,'currency.type','USD','type','Y'),
 (212,'currency.type','EUR','type','Y'),
 (213,'currency.type','JPN','type','Y'),
 (214,'payment.type','Receive','type','Y'),
 (215,'payment.type','Pay','type','Y'),
 (216,'payment.type','Internal Transfer','type','Y'),
 (217,'payreq.status','Paid','status','Y'),
 (218,'payreq.status','Initiated','status','Y'),
 (219,'payreq.status','Failed','status','Y'),
 (220,'payreq.status','Cancelled','status','Y'),
 (221,'payreq.status','Draft','status','Y'),
 (222,'journal.satus','Bank Entry','satus','Y'),
 (223,'journal.satus','Cash Entry','satus','Y'),
 (224,'journal.satus','Credit Card Entry','satus','Y'),
 (225,'journal.satus','Debit Note','satus','Y'),
 (226,'journal.satus','Credit Note','satus','Y'),
 (227,'journal.satus','Centre Entry','satus','Y'),
 (228,'journal.satus','Excise Entry','satus','Y'),
 (229,'journal.satus','Wire off Entry','satus','Y'),
 (230,'journal.satus','Opening Entry','satus','Y'),
 (231,'journal.satus','Depreciation Entry','satus','Y'),
 (232,'accounttype.name','Savings','name','Y'),
 (233,'accounttype.name','Current','name','Y'),
 (234,'company.domain','Manufacturing','domain','Y'),
 (235,'company.domain','IT','domain','Y'),
 (236,'company.domain','BPO','domain','Y'),
 (237,'chartacc.type','Standard','type','Y'),
 (238,'chartacc.type','Customized','type','Y'),
 (239,'task.status','Accepted','status','Y'),
 (240,'task.status','Approved','status','Y'),
 (241,'task.status','Assigned','status','Y'),
 (242,'task.status','AutoReject','status','Y'),
 (243,'task.status','Closed','status','Y'),
 (244,'task.status','Completed','status','Y'),
 (245,'task.status','Failed','status','Y'),
 (246,'task.status','In Planning','status','Y'),
 (247,'task.status','In Progress','status','Y'),
 (248,'task.status','Interrupted','status','Y'),
 (249,'task.status','Not Started','status','Y'),
 (250,'task.status','On hold','status','Y'),
 (251,'task.status','Open','status','Y'),
 (252,'task.status','Planned','status','Y'),
 (253,'task.status','Rejected','status','Y'),
 (254,'task.status','Unassigned','status','Y'),
 (255,'task.status','Waiting for Approval','status','Y'),
 (256,'Working','Working','task.status','Y'),
 (257,'Receivable','Receivable','type.account','Y'),
 (258,'type.account','Payable','account','Y'),
 (259,'bc.type','Bank','type','Y'),
 (260,'bc.type','Cash','type','Y'),
 (261,'month.name','January','name','Y'),
 (262,'month.name','February','name','Y'),
 (263,'month.name','March','name','Y'),
 (264,'month.name','April','name','Y'),
 (265,'month.name','May','name','Y'),
 (266,'month.name','June','name','Y'),
 (267,'month.name','July','name','Y'),
 (268,'month.name','August','name','Y'),
 (269,'month.name','September','name','Y'),
 (270,'month.name','October','name','Y'),
 (271,'month.name','November','name','Y'),
 (272,'month.name','December','name','Y'),
 (273,'attend.status','Present','status','Y'),
 (274,'attend.status','Absent','status','Y'),
 (275,'emp.holiday','Sunday','holiday','Y'),
 (276,'emp.holiday','Monday','holiday','Y'),
 (277,'emp.holiday','Tuesday','holiday','Y'),
 (278,'emp.holiday','Wednesday','holiday','Y'),
 (279,'emp.holiday','Thursday','holiday','Y'),
 (280,'emp.holiday','Friday','holiday','Y'),
 (281,'emp.holiday','Saturday','holiday','Y'),
 (282,'purchase.taxstatus','Enabled','taxstatus','Y'),
 (283,'purchase.taxstatus','Disabled','taxstatus','Y'),
 (284,'exceed.type','Warn','type','Y'),
 (285,'exceed.type','Stop','type','Y'),
 (286,'exceed.type','Ignore','type','Y'),
 (287,'ProdOrder.status','Draft','status','Y'),
 (288,'ProdOrder.status','Notstarted','status','Y'),
 (289,'ProdOrder.status','Submitted','status','Y'),
 (290,'ProdOrder.status','Stopped','status','Y'),
 (291,'ProdOrder.status','Unstopped','status','Y'),
 (292,'ProdOrder.status','In-Process','status','Y'),
 (293,'ProdOrder.status','Completed','status','Y'),
 (294,'ProdOrder.status','Cancelled','status','Y'),
 (295,'Dummy.status','Dummy1','dummy','Y'),
 (296,'Dummy.status','Dummy2','dummy','Y'),
 (297,'Dummy.status','Dummy3','dummy','Y'),
 (298,'Year.status','2020','year','Y'),
 (299,'Year.status','2021','year','Y'),
 (300,'Year.status','2022','year','Y'),
 (301,'Year.status','2023','year','Y'),
 (302,'Year.status','2024','year','Y'),
 (303,'Year.status','2025','year','Y'),
 (304,'StartYear.status','2021','startyear','Y'),
 (305,'StartYear.status','2022','startyear','Y'),
 (306,'StartYear.status','2023','startyear','Y'),
 (307,'StartYear.status','2024','startyear','Y'),
 (308,'StartYear.status','2025','startyear','Y'),
 (309,'StartYear.status','2026','startyear','Y'),
 (310,'StartYear.status','2027','startyear','Y'),
 (311,'StartYear.status','2028','startyear','Y'),
 (312,'StartYear.status','2029','startyear','Y'),
 (313,'StartYear.status','2030','startyear','Y'),
 (314,'StartYear.status','2031','startyear','Y'),
 (315,'StartYear.status','2032','startyear','Y'),
 (316,'StartYear.status','2033','startyear','Y'),
 (317,'StartYear.status','2034','startyear','Y'),
 (318,'StartYear.status','2035','startyear','Y'),
 (319,'StartYear.status','2036','startyear','Y'),
 (320,'StartYear.status','2037','startyear','Y'),
 (321,'StartYear.status','2038','startyear','Y'),
 (322,'StartYear.status','2039','startyear','Y'),
 (323,'StartYear.status','2040','startyear','Y'),
 (324,'EndYear.status','2021','endyear','Y'),
 (325,'EndYear.status','2022','endyear','Y'),
 (326,'EndYear.status','2023','endyear','Y'),
 (327,'EndYear.status','2024','endyear','Y'),
 (328,'EndYear.status','2025','endyear','Y'),
 (329,'EndYear.status','2026','endyear','Y'),
 (330,'EndYear.status','2027','endyear','Y'),
 (331,'EndYear.status','2028','endyear','Y'),
 (332,'EndYear.status','2029','endyear','Y'),
 (333,'EndYear.status','2030','endyear','Y'),
 (334,'EndYear.status','2031','endyear','Y'),
 (335,'EndYear.status','2032','endyear','Y'),
 (336,'EndYear.status','2033','endyear','Y'),
 (337,'EndYear.status','2034','endyear','Y'),
 (338,'EndYear.status','2035','endyear','Y'),
 (339,'EndYear.status','2036','endyear','Y'),
 (340,'EndYear.status','2037','endyear','Y'),
 (341,'EndYear.status','2038','endyear','Y'),
 (342,'EndYear.status','2039','endyear','Y'),
 (343,'EndYear.status','2040','endyear','Y'),
 (344,'Register.status','In Progress','register','Y'),
 (345,'Register.status','Pending','register','Y'),
 (346,'Register.status','Cancel','register','Y'),
 (347,'Register.status','Authorization','register','Y'),
 (348,'Register.status','New','register','Y');
/*!40000 ALTER TABLE `systemproperties001mb` ENABLE KEYS */;


--
-- Definition of table `taskallocation001wb`
--

DROP TABLE IF EXISTS `taskallocation001wb`;
CREATE TABLE `taskallocation001wb` (
  `curator_id` int(11) NOT NULL AUTO_INCREMENT,
  `curator_name` varchar(50) DEFAULT NULL,
  `cbatch_no` varchar(50) DEFAULT NULL,
  `curator_tan_no` varchar(50) DEFAULT NULL,
  `curator_allocate_date` datetime DEFAULT NULL,
  `reviewer_name` varchar(50) DEFAULT NULL,
  `rbatch_no` varchar(50) DEFAULT NULL,
  `reviewer_tan_no` varchar(50) DEFAULT NULL,
  `reviewer_allocate_date` datetime DEFAULT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `insert_user` varchar(40) DEFAULT NULL,
  `insert_datetime` datetime DEFAULT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`curator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taskallocation001wb`
--

/*!40000 ALTER TABLE `taskallocation001wb` DISABLE KEYS */;
INSERT INTO `taskallocation001wb` (`curator_id`,`curator_name`,`cbatch_no`,`curator_tan_no`,`curator_allocate_date`,`reviewer_name`,`rbatch_no`,`reviewer_tan_no`,`reviewer_allocate_date`,`filename`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (2,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (3,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (4,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (5,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (6,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (7,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (8,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (9,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (10,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (11,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (12,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (13,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (14,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (15,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (16,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (17,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (18,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (19,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (20,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (21,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (22,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (23,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (24,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (25,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (26,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (27,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (28,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (29,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (30,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (31,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (32,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (33,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (34,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (35,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (36,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (37,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (38,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (39,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (40,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (41,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (42,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (43,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (44,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (45,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL),
 (46,NULL,'B1',NULL,'2022-06-07 11:55:34',NULL,'B1',NULL,'2022-06-07 11:55:34','task allocation',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `taskallocation001wb` ENABLE KEYS */;


--
-- Definition of table `toxicity001mb`
--

DROP TABLE IF EXISTS `toxicity001mb`;
CREATE TABLE `toxicity001mb` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `toxiCity` varchar(50) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toxicity001mb`
--

/*!40000 ALTER TABLE `toxicity001mb` DISABLE KEYS */;
INSERT INTO `toxicity001mb` (`Id`,`toxiCity`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,'Carcinogenicity','siva','2022-05-10 16:47:58','siva','2022-05-10 16:48:01'),
 (2,'Cardiotoxicity','siva','2022-05-27 18:32:00',NULL,NULL),
 (3,'Cytotoxicity','siva','2022-05-27 18:32:07',NULL,NULL),
 (4,'Dose-limiting toxicity','siva','2022-05-27 18:32:21',NULL,NULL),
 (5,'Ecotoxicity','siva','2022-05-27 18:32:29',NULL,NULL),
 (6,'Embryotoxicity','siva','2022-05-27 18:32:37',NULL,NULL),
 (7,'Endocrine disruption','siva','2022-05-27 18:32:49',NULL,NULL),
 (8,'Gastrointestinal toxicity','siva','2022-05-27 18:33:00',NULL,NULL),
 (9,'Genotoxicity','siva','2022-05-27 18:33:09',NULL,NULL),
 (10,'Hematotoxicity','siva','2022-05-27 18:33:19',NULL,NULL),
 (11,'Hepatotoxicity','siva','2022-05-27 18:33:27',NULL,NULL),
 (12,'Immunotoxicity','siva','2022-05-27 18:33:37',NULL,NULL),
 (13,'Inhalation toxicity','siva','2022-05-27 18:33:51',NULL,NULL),
 (14,'Mutagenicity','siva','2022-05-27 18:34:02',NULL,NULL),
 (15,'Myelotoxicity','siva','2022-05-27 18:34:19',NULL,NULL),
 (16,'Myotoxicity','siva','2022-05-27 18:34:31',NULL,NULL),
 (17,'Nephrotoxicity','siva','2022-05-27 18:34:44',NULL,NULL),
 (18,'Neurotoxicity','siva','2022-05-27 18:34:54',NULL,NULL),
 (19,'Ocular toxicity','siva','2022-05-27 18:35:06',NULL,NULL),
 (20,'Ototoxicity','siva','2022-05-27 18:35:15',NULL,NULL),
 (21,'Pulmonary toxicity','siva','2022-05-27 18:35:27',NULL,NULL),
 (22,'Reproductive toxicity','siva','2022-05-27 18:35:37',NULL,NULL),
 (23,'Skin toxicity','siva','2022-05-27 18:35:47',NULL,NULL),
 (24,'Gastrointestinal toxicity','siva','2022-05-30 10:12:30',NULL,NULL);
/*!40000 ALTER TABLE `toxicity001mb` ENABLE KEYS */;


--
-- Definition of table `type001mb`
--

DROP TABLE IF EXISTS `type001mb`;
CREATE TABLE `type001mb` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type001mb`
--

/*!40000 ALTER TABLE `type001mb` DISABLE KEYS */;
INSERT INTO `type001mb` (`Id`,`type`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,'in vitro','siva','2022-05-10 18:34:50',NULL,NULL),
 (2,'in vivo','siva','2022-05-10 18:35:02',NULL,NULL);
/*!40000 ALTER TABLE `type001mb` ENABLE KEYS */;


--
-- Definition of table `unithighendvalue001mb`
--

DROP TABLE IF EXISTS `unithighendvalue001mb`;
CREATE TABLE `unithighendvalue001mb` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `units` varchar(50) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unithighendvalue001mb`
--

/*!40000 ALTER TABLE `unithighendvalue001mb` DISABLE KEYS */;
INSERT INTO `unithighendvalue001mb` (`Id`,`units`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,'aravinth','siva','2022-05-11 17:59:42',NULL,NULL);
/*!40000 ALTER TABLE `unithighendvalue001mb` ENABLE KEYS */;


--
-- Definition of table `unitlowendvalue001mb`
--

DROP TABLE IF EXISTS `unitlowendvalue001mb`;
CREATE TABLE `unitlowendvalue001mb` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `united` varchar(50) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unitlowendvalue001mb`
--

/*!40000 ALTER TABLE `unitlowendvalue001mb` DISABLE KEYS */;
INSERT INTO `unitlowendvalue001mb` (`Id`,`united`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (2,'Kg m^2 s^-1','siva','2022-05-27 18:48:02',NULL,NULL),
 (3,'Kg m^2 s^-3','siva','2022-05-27 18:48:14',NULL,NULL),
 (4,'L/h','siva','2022-05-27 18:48:24',NULL,NULL),
 (5,'m s^-1','siva','2022-05-27 18:48:33',NULL,NULL),
 (6,'m s^-2','siva','2022-05-27 18:48:41',NULL,NULL),
 (7,'m/s','siva','2022-05-27 18:48:47',NULL,NULL),
 (8,'mg/dL','siva','2022-05-27 18:48:53',NULL,NULL),
 (9,'mg/kg','siva','2022-05-27 18:49:01',NULL,NULL),
 (10,'mL/kg/min','siva','2022-05-27 18:49:11',NULL,NULL),
 (11,'mmol x g^-1','siva','2022-05-27 18:49:24',NULL,NULL),
 (12,'ng/mL/h^-3','siva','2022-05-27 18:49:34',NULL,NULL),
 (13,'%','siva','2022-05-30 11:08:29',NULL,NULL),
 (14,'CFU','siva','2022-05-30 11:08:57',NULL,NULL),
 (15,'cm','siva','2022-05-30 11:09:09',NULL,NULL),
 (16,'dm^3','siva','2022-05-30 11:09:31',NULL,NULL),
 (17,'g/dL','siva','2022-05-30 11:09:47',NULL,NULL),
 (18,'gm','siva','2022-05-30 11:09:58',NULL,NULL),
 (19,'h','siva','2022-05-30 11:10:11',NULL,NULL),
 (20,'h^2/mL','siva','2022-05-30 11:12:19',NULL,NULL),
 (21,'IU','siva','2022-05-30 11:12:38',NULL,NULL),
 (22,'IU/L','siva','2022-05-30 11:12:49',NULL,NULL),
 (23,'Kg','siva','2022-05-30 11:13:03',NULL,NULL),
 (24,'Kg m s^-2','siva','2022-05-30 11:13:28',NULL,NULL),
 (25,'Kg m^2 s^-3','siva','2022-05-30 11:15:38',NULL,NULL),
 (26,'Kg m^-3','siva','2022-05-30 11:15:51',NULL,NULL),
 (27,'Km^3','siva','2022-05-30 11:16:02',NULL,NULL),
 (28,'L','siva','2022-05-30 11:16:11',NULL,NULL),
 (29,'L/h','siva','2022-05-30 11:16:20',NULL,NULL),
 (30,'m','siva','2022-05-30 11:16:29',NULL,NULL),
 (31,'M','siva','2022-05-30 11:16:38',NULL,NULL),
 (32,'m s^-1','siva','2022-05-30 11:16:47',NULL,NULL),
 (33,'m s^-2','siva','2022-05-30 11:16:55',NULL,NULL),
 (34,'m/s','siva','2022-05-30 11:17:05',NULL,NULL),
 (35,'m^2','siva','2022-05-30 11:17:14',NULL,NULL),
 (36,'m^3','siva','2022-05-30 11:17:22',NULL,NULL),
 (37,'mg','siva','2022-05-30 11:17:30',NULL,NULL),
 (38,'mg/dL','siva','2022-05-30 11:17:39',NULL,NULL),
 (39,'mg/kg','siva','2022-05-30 11:17:47',NULL,NULL),
 (40,'mg/L','siva','2022-05-30 11:17:56',NULL,NULL),
 (41,'mg/L x h','siva','2022-05-30 11:18:06',NULL,NULL),
 (42,'mg/mL','siva','2022-05-30 11:18:15',NULL,NULL),
 (43,'min','siva','2022-05-30 11:18:32',NULL,NULL),
 (44,'mL','siva','2022-05-30 11:18:40',NULL,NULL),
 (45,'mL/h','siva','2022-05-30 11:18:47',NULL,NULL),
 (46,'mL/kg/min','siva','2022-05-30 11:18:55',NULL,NULL),
 (47,'mL/min','siva','2022-05-30 11:19:03',NULL,NULL),
 (48,'mm','siva','2022-05-30 11:30:11',NULL,NULL),
 (49,'mM','siva','2022-05-30 11:30:22',NULL,NULL),
 (50,'mm^2','siva','2022-05-30 11:30:57',NULL,NULL),
 (51,'mm^3','siva','2022-05-30 11:31:05',NULL,NULL),
 (52,'mmol x g^-1','siva','2022-05-30 11:31:17',NULL,NULL),
 (53,'mol','siva','2022-05-30 11:31:28',NULL,NULL),
 (54,'mol/L','siva','2022-05-30 11:31:36',NULL,NULL),
 (55,'ms^2','siva','2022-05-30 11:31:44',NULL,NULL),
 (56,'ng','siva','2022-05-30 11:31:51',NULL,NULL),
 (57,'ng x h/mL','siva','2022-05-30 11:31:59',NULL,NULL),
 (58,'ng/mL','siva','2022-05-30 11:32:07',NULL,NULL),
 (59,'ng/L','siva','2022-05-30 11:32:17',NULL,NULL),
 (60,'ng/mL/h^-3','siva','2022-05-30 11:32:31',NULL,NULL),
 (61,'nL','siva','2022-05-30 11:32:38',NULL,NULL),
 (62,'nm','siva','2022-05-30 11:32:50',NULL,NULL),
 (63,'nM','siva','2022-05-30 11:33:02',NULL,NULL),
 (64,'nM to µM','siva','2022-05-30 11:33:13',NULL,NULL),
 (65,'pg','siva','2022-05-30 11:33:28',NULL,NULL),
 (66,'pg/mL','siva','2022-05-30 11:33:43',NULL,NULL),
 (67,'pg/L','siva','2022-05-30 11:33:52',NULL,NULL),
 (68,'pL','siva','2022-05-30 11:34:07',NULL,NULL),
 (69,'pm','siva','2022-05-30 11:34:18',NULL,NULL),
 (70,'pM','siva','2022-05-30 11:34:28',NULL,NULL),
 (71,'pM to nM','siva','2022-05-30 11:34:38',NULL,NULL),
 (72,'ppb','siva','2022-05-30 11:34:48',NULL,NULL),
 (73,'ppm','siva','2022-05-30 11:34:56',NULL,NULL),
 (74,'s','siva','2022-05-30 11:35:08',NULL,NULL),
 (75,'µg','siva','2022-05-30 11:36:36',NULL,NULL),
 (76,'µL','siva','2022-05-30 11:36:45',NULL,NULL);
/*!40000 ALTER TABLE `unitlowendvalue001mb` ENABLE KEYS */;


--
-- Definition of table `unitsinglevalue001mb`
--

DROP TABLE IF EXISTS `unitsinglevalue001mb`;
CREATE TABLE `unitsinglevalue001mb` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `unit` varchar(30) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unitsinglevalue001mb`
--

/*!40000 ALTER TABLE `unitsinglevalue001mb` DISABLE KEYS */;
INSERT INTO `unitsinglevalue001mb` (`Id`,`unit`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (2,'%','siva','2022-05-27 18:44:42',NULL,NULL),
 (3,'CFU','siva','2022-05-27 18:44:54',NULL,NULL),
 (4,'cm','siva','2022-05-27 18:45:04',NULL,NULL),
 (5,'dm^3','siva','2022-05-27 18:45:14',NULL,NULL),
 (6,'g/dL','siva','2022-05-27 18:45:20',NULL,NULL),
 (7,'gm','siva','2022-05-27 18:45:29',NULL,NULL),
 (8,'h','siva','2022-05-27 18:45:36',NULL,NULL),
 (9,'Kg m s^-1','siva','2022-05-27 18:46:32',NULL,NULL),
 (10,'h^2/mL','siva','2022-05-27 18:46:44',NULL,NULL),
 (11,'IU','siva','2022-05-27 18:47:11',NULL,NULL),
 (12,'IU/L','siva','2022-05-27 18:47:22',NULL,NULL),
 (13,'IU/mL','siva','2022-05-27 18:47:29',NULL,NULL),
 (14,'mg/mL','siva','2022-05-27 19:00:22',NULL,NULL),
 (15,'min','siva','2022-05-27 19:00:30',NULL,NULL),
 (16,'mL','siva','2022-05-27 19:00:39',NULL,NULL),
 (17,'mL/h','siva','2022-05-27 19:00:47',NULL,NULL),
 (18,'mL/kg/min','siva','2022-05-27 19:00:55',NULL,NULL),
 (19,'mL/min','siva','2022-05-27 19:01:02',NULL,NULL),
 (20,'mm','siva','2022-05-27 19:01:09',NULL,NULL),
 (21,'mM','siva','2022-05-27 19:01:18',NULL,NULL),
 (22,'mm^2','siva','2022-05-27 19:01:25',NULL,NULL),
 (23,'mmol x g^-1','siva','2022-05-27 19:01:33',NULL,NULL),
 (24,'mol','siva','2022-05-27 19:01:42',NULL,NULL),
 (25,'mol/L','siva','2022-05-27 19:01:50',NULL,NULL),
 (26,'ng','siva','2022-05-27 19:01:58',NULL,NULL),
 (27,'ng x h/mL','siva','2022-05-27 19:02:06',NULL,NULL),
 (28,'nL','siva','2022-05-27 19:02:16',NULL,NULL),
 (29,'nm','siva','2022-05-27 19:02:23',NULL,NULL),
 (30,'nM to µM','siva','2022-05-27 19:02:32',NULL,NULL),
 (31,'pg/mL','siva','2022-05-27 19:02:45',NULL,NULL),
 (32,'pg/L','siva','2022-05-27 19:02:55',NULL,NULL),
 (33,'pL','siva','2022-05-27 19:03:04',NULL,NULL),
 (34,'pm','siva','2022-05-27 19:03:11',NULL,NULL),
 (35,'pM to nM','siva','2022-05-27 19:03:21',NULL,NULL),
 (36,'ppb','siva','2022-05-27 19:03:31',NULL,NULL),
 (37,'ppm','siva','2022-05-27 19:03:38',NULL,NULL),
 (38,'Kg m s^-1','siva','2022-05-27 19:04:09',NULL,NULL),
 (39,'Kg m^2 s^-1','siva','2022-05-27 18:48:02',NULL,NULL),
 (40,'Kg m^2 s^-3','siva','2022-05-27 18:48:14',NULL,NULL),
 (41,'L/h','siva','2022-05-27 18:48:24',NULL,NULL),
 (42,'m s^-1','siva','2022-05-27 18:48:33',NULL,NULL),
 (43,'m s^-2','siva','2022-05-27 18:48:41',NULL,NULL),
 (44,'m/s','siva','2022-05-27 18:48:47',NULL,NULL),
 (45,'mg/dL','siva','2022-05-27 18:48:53',NULL,NULL),
 (46,'mg/kg','siva','2022-05-27 18:49:01',NULL,NULL),
 (47,'mL/kg/min','siva','2022-05-27 18:49:11',NULL,NULL),
 (48,'mmol x g^-1','siva','2022-05-27 18:49:24',NULL,NULL),
 (49,'ng/mL/h^-3','siva','2022-05-27 18:49:34',NULL,NULL),
 (50,'%','siva','2022-05-30 11:08:29',NULL,NULL),
 (51,'CFU','siva','2022-05-30 11:08:57',NULL,NULL),
 (52,'cm','siva','2022-05-30 11:09:09',NULL,NULL),
 (53,'dm^3','siva','2022-05-30 11:09:31',NULL,NULL),
 (54,'g/dL','siva','2022-05-30 11:09:47',NULL,NULL),
 (55,'gm','siva','2022-05-30 11:09:58',NULL,NULL),
 (56,'h','siva','2022-05-30 11:10:11',NULL,NULL),
 (57,'h^2/mL','siva','2022-05-30 11:12:19',NULL,NULL),
 (58,'IU','siva','2022-05-30 11:12:38',NULL,NULL),
 (59,'IU/L','siva','2022-05-30 11:12:49',NULL,NULL),
 (60,'Kg','siva','2022-05-30 11:13:03',NULL,NULL),
 (61,'Kg m s^-2','siva','2022-05-30 11:13:28',NULL,NULL),
 (62,'Kg m^2 s^-3','siva','2022-05-30 11:15:38',NULL,NULL),
 (63,'Kg m^-3','siva','2022-05-30 11:15:51',NULL,NULL),
 (64,'Km^3','siva','2022-05-30 11:16:02',NULL,NULL),
 (65,'L','siva','2022-05-30 11:16:11',NULL,NULL),
 (66,'L/h','siva','2022-05-30 11:16:20',NULL,NULL),
 (67,'m','siva','2022-05-30 11:16:29',NULL,NULL),
 (68,'M','siva','2022-05-30 11:16:38',NULL,NULL),
 (69,'m s^-1','siva','2022-05-30 11:16:47',NULL,NULL),
 (70,'m s^-2','siva','2022-05-30 11:16:55',NULL,NULL),
 (71,'m/s','siva','2022-05-30 11:17:05',NULL,NULL),
 (72,'m^2','siva','2022-05-30 11:17:14',NULL,NULL),
 (73,'m^3','siva','2022-05-30 11:17:22',NULL,NULL),
 (74,'mg','siva','2022-05-30 11:17:30',NULL,NULL),
 (75,'mg/dL','siva','2022-05-30 11:17:39',NULL,NULL),
 (76,'mg/kg','siva','2022-05-30 11:17:47',NULL,NULL),
 (77,'mg/L','siva','2022-05-30 11:17:56',NULL,NULL),
 (78,'mg/L x h','siva','2022-05-30 11:18:06',NULL,NULL),
 (79,'mg/mL','siva','2022-05-30 11:18:15',NULL,NULL),
 (80,'min','siva','2022-05-30 11:18:32',NULL,NULL),
 (81,'mL','siva','2022-05-30 11:18:40',NULL,NULL),
 (82,'mL/h','siva','2022-05-30 11:18:47',NULL,NULL),
 (83,'mL/kg/min','siva','2022-05-30 11:18:55',NULL,NULL),
 (84,'mL/min','siva','2022-05-30 11:19:03',NULL,NULL),
 (85,'mm','siva','2022-05-30 11:30:11',NULL,NULL),
 (86,'mM','siva','2022-05-30 11:30:22',NULL,NULL),
 (87,'mm^2','siva','2022-05-30 11:30:57',NULL,NULL),
 (88,'mm^3','siva','2022-05-30 11:31:05',NULL,NULL),
 (89,'mmol x g^-1','siva','2022-05-30 11:31:17',NULL,NULL),
 (90,'mol','siva','2022-05-30 11:31:28',NULL,NULL),
 (91,'mol/L','siva','2022-05-30 11:31:36',NULL,NULL),
 (92,'ms^2','siva','2022-05-30 11:31:44',NULL,NULL),
 (93,'ng','siva','2022-05-30 11:31:51',NULL,NULL),
 (94,'ng x h/mL','siva','2022-05-30 11:31:59',NULL,NULL),
 (95,'ng/mL','siva','2022-05-30 11:32:07',NULL,NULL),
 (96,'ng/L','siva','2022-05-30 11:32:17',NULL,NULL),
 (97,'ng/mL/h^-3','siva','2022-05-30 11:32:31',NULL,NULL),
 (98,'nL','siva','2022-05-30 11:32:38',NULL,NULL),
 (99,'nm','siva','2022-05-30 11:32:50',NULL,NULL),
 (100,'nM','siva','2022-05-30 11:33:02',NULL,NULL),
 (101,'nM to µM','siva','2022-05-30 11:33:13',NULL,NULL),
 (102,'pg','siva','2022-05-30 11:33:28',NULL,NULL),
 (103,'pg/mL','siva','2022-05-30 11:33:43',NULL,NULL),
 (104,'pg/L','siva','2022-05-30 11:33:52',NULL,NULL),
 (105,'pL','siva','2022-05-30 11:34:07',NULL,NULL),
 (106,'pm','siva','2022-05-30 11:34:18',NULL,NULL),
 (107,'pM','siva','2022-05-30 11:34:28',NULL,NULL),
 (108,'pM to nM','siva','2022-05-30 11:34:38',NULL,NULL),
 (109,'ppb','siva','2022-05-30 11:34:48',NULL,NULL),
 (110,'ppm','siva','2022-05-30 11:34:56',NULL,NULL),
 (111,'s','siva','2022-05-30 11:35:08',NULL,NULL),
 (112,'µg','siva','2022-05-30 11:36:36',NULL,NULL),
 (113,'µL','siva','2022-05-30 11:36:45',NULL,NULL);
/*!40000 ALTER TABLE `unitsinglevalue001mb` ENABLE KEYS */;


--
-- Definition of table `user001mb`
--

DROP TABLE IF EXISTS `user001mb`;
CREATE TABLE `user001mb` (
  `person_id` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` char(1) NOT NULL,
  `email` varchar(30) NOT NULL,
  `securityquestion` varchar(250) NOT NULL,
  `securityanswer` varchar(250) NOT NULL,
  `theme` varchar(10) DEFAULT '#286090',
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  KEY `roleid` (`roleid`),
  CONSTRAINT `user001mb_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person001mb` (`person_id`),
  CONSTRAINT `user001mb_ibfk_2` FOREIGN KEY (`roleid`) REFERENCES `role001mb` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user001mb`
--

/*!40000 ALTER TABLE `user001mb` DISABLE KEYS */;
INSERT INTO `user001mb` (`person_id`,`roleid`,`username`,`password`,`status`,`email`,`securityquestion`,`securityanswer`,`theme`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,'siva','$2b$10$8xe6b3pcuGvl0jNRxzJlVeetMM96.Y.p4jqEceYHbPnkkVTUYIIGa','A','adc@gmail.com','What was your childhood nickname ?','ss','#1687e7','siva','2021-09-06 13:18:33','siva','2021-09-06 13:18:33'),
 (9,2,'moorthy','$2b$10$juQ8/Mh4ZN33FB9v8slr3ug6RvG0JNqEvV/hZ7SUhTtk8KBhXptLG','A','latha0707hema@gmail.com','What was your childhood nickname ?','latha','#ca2121','latha','2022-01-20 08:59:58','latha','2022-02-09 12:07:18'),
 (12,3,'sekar','$2b$10$KaCVPYAmn0qA1G9z8vzzdOA/63sSyQcagYOGe.Y/zxP76EgpAb.Wq','A','kavichandran877@gmail.com','What was your childhood nickname ?','sekar','#286090','siva','2022-05-17 16:18:39',NULL,NULL),
 (13,2,'aravinth','$2b$10$GhF9Nnb4zqtdw.S0rK0p7Opz.IC3hMZ207H4t59coA.9dx.rrA6ia','A','ajayaravind797@gmail.com','What was your childhood nickname ?','Aravinth','#160303','siva','2022-05-18 13:12:40',NULL,NULL);
/*!40000 ALTER TABLE `user001mb` ENABLE KEYS */;


--
-- Definition of table `workstation001mb`
--

DROP TABLE IF EXISTS `workstation001mb`;
CREATE TABLE `workstation001mb` (
  `workstId` int(11) NOT NULL AUTO_INCREMENT,
  `workstName` varchar(40) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`workstId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workstation001mb`
--

/*!40000 ALTER TABLE `workstation001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `workstation001mb` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
