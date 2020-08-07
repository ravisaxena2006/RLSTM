-- MySQL dump 10.13  Distrib 5.5.27, for Win32 (x86)
--
-- Host: localhost    Database: rls_db
-- ------------------------------------------------------
-- Server version	5.5.27

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
-- Table structure for table `bought_outs`
--

DROP TABLE IF EXISTS `bought_outs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bought_outs` (
  `bought_outs_id` int(11) NOT NULL,
  `amortize_id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `creation_date` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `dl_id` varchar(255) DEFAULT NULL,
  `licence_total` int(11) NOT NULL,
  `licence_year1` varchar(255) DEFAULT NULL,
  `licence_year10` varchar(255) DEFAULT NULL,
  `licence_year2` varchar(255) DEFAULT NULL,
  `licence_year3` varchar(255) DEFAULT NULL,
  `licence_year4` varchar(255) DEFAULT NULL,
  `licence_year5` varchar(255) DEFAULT NULL,
  `licence_year6` varchar(255) DEFAULT NULL,
  `licence_year7` varchar(255) DEFAULT NULL,
  `licence_year8` varchar(255) DEFAULT NULL,
  `licence_year9` varchar(255) DEFAULT NULL,
  `other_total` int(11) NOT NULL,
  `other_year1` varchar(255) DEFAULT NULL,
  `other_year10` varchar(255) DEFAULT NULL,
  `other_year2` varchar(255) DEFAULT NULL,
  `other_year3` varchar(255) DEFAULT NULL,
  `other_year4` varchar(255) DEFAULT NULL,
  `other_year5` varchar(255) DEFAULT NULL,
  `other_year6` varchar(255) DEFAULT NULL,
  `other_year7` varchar(255) DEFAULT NULL,
  `other_year8` varchar(255) DEFAULT NULL,
  `other_year9` varchar(255) DEFAULT NULL,
  `price_total` int(11) NOT NULL,
  `product_description` varchar(255) DEFAULT NULL,
  `professional_service` int(11) NOT NULL,
  `project_duration` varchar(255) DEFAULT NULL,
  `quote_currency_id` int(11) NOT NULL,
  `quote_exists_id` int(11) NOT NULL,
  `support_total` int(11) NOT NULL,
  `support_year1` varchar(255) DEFAULT NULL,
  `support_year10` varchar(255) DEFAULT NULL,
  `support_year2` varchar(255) DEFAULT NULL,
  `support_year3` varchar(255) DEFAULT NULL,
  `support_year4` varchar(255) DEFAULT NULL,
  `support_year5` varchar(255) DEFAULT NULL,
  `support_year6` varchar(255) DEFAULT NULL,
  `support_year7` varchar(255) DEFAULT NULL,
  `support_year8` varchar(255) DEFAULT NULL,
  `support_year9` varchar(255) DEFAULT NULL,
  `time_stamp` varchar(255) DEFAULT NULL,
  `tower_id` int(11) NOT NULL,
  `training` int(11) NOT NULL,
  `vendor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bought_outs_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bought_outs`
--

LOCK TABLES `bought_outs` WRITE;
/*!40000 ALTER TABLE `bought_outs` DISABLE KEYS */;
/*!40000 ALTER TABLE `bought_outs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bout_table`
--

DROP TABLE IF EXISTS `bout_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bout_table` (
  `bought_outs_id` int(11) NOT NULL,
  `amortize_id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `creation_date` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `dl_id` varchar(255) DEFAULT NULL,
  `freeze` varchar(255) DEFAULT NULL,
  `licence_total` int(11) NOT NULL,
  `licence_year1` varchar(255) DEFAULT NULL,
  `licence_year10` varchar(255) DEFAULT NULL,
  `licence_year2` varchar(255) DEFAULT NULL,
  `licence_year3` varchar(255) DEFAULT NULL,
  `licence_year4` varchar(255) DEFAULT NULL,
  `licence_year5` varchar(255) DEFAULT NULL,
  `licence_year6` varchar(255) DEFAULT NULL,
  `licence_year7` varchar(255) DEFAULT NULL,
  `licence_year8` varchar(255) DEFAULT NULL,
  `licence_year9` varchar(255) DEFAULT NULL,
  `other_total` int(11) NOT NULL,
  `other_year1` varchar(255) DEFAULT NULL,
  `other_year10` varchar(255) DEFAULT NULL,
  `other_year2` varchar(255) DEFAULT NULL,
  `other_year3` varchar(255) DEFAULT NULL,
  `other_year4` varchar(255) DEFAULT NULL,
  `other_year5` varchar(255) DEFAULT NULL,
  `other_year6` varchar(255) DEFAULT NULL,
  `other_year7` varchar(255) DEFAULT NULL,
  `other_year8` varchar(255) DEFAULT NULL,
  `other_year9` varchar(255) DEFAULT NULL,
  `price_total` int(11) NOT NULL,
  `product_description` varchar(255) DEFAULT NULL,
  `professional_service` int(11) NOT NULL,
  `project_duration` varchar(255) DEFAULT NULL,
  `quote_currency_id` int(11) NOT NULL,
  `quote_exists_id` int(11) NOT NULL,
  `review` varchar(255) DEFAULT NULL,
  `support_total` int(11) NOT NULL,
  `support_year1` varchar(255) DEFAULT NULL,
  `support_year10` varchar(255) DEFAULT NULL,
  `support_year2` varchar(255) DEFAULT NULL,
  `support_year3` varchar(255) DEFAULT NULL,
  `support_year4` varchar(255) DEFAULT NULL,
  `support_year5` varchar(255) DEFAULT NULL,
  `support_year6` varchar(255) DEFAULT NULL,
  `support_year7` varchar(255) DEFAULT NULL,
  `support_year8` varchar(255) DEFAULT NULL,
  `support_year9` varchar(255) DEFAULT NULL,
  `time_stamp` varchar(255) DEFAULT NULL,
  `tower_id` int(11) NOT NULL,
  `training` int(11) NOT NULL,
  `vendor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bought_outs_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bout_table`
--

LOCK TABLES `bout_table` WRITE;
/*!40000 ALTER TABLE `bout_table` DISABLE KEYS */;
INSERT INTO `bout_table` VALUES (565,3,'Sales SPOC','29/04/2020 14:32:10','jgjh','316',NULL,19,'8','','9','2','','','','','','',18,'8','','2','8','','','','','','',78,'jhjg',8,'3',4,2,NULL,38,'22','','8','8','','','','','','','20200429143210336',4,8,'Vendor2'),(566,4,'Sales SPOC','29/04/2020 14:32:10','ghhjh','316',NULL,24,'8','','8','8','','','','','','',24,'8','','8','8','','','','','','',9,'jhk',8,'3',14,2,NULL,24,'8','','8','8','','','','','','','20200429143210336',8,9,'hgjh');
/*!40000 ALTER TABLE `bout_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dealspecs`
--

DROP TABLE IF EXISTS `dealspecs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dealspecs` (
  `bid_details_id` bigint(20) NOT NULL,
  `additional_cost` bigint(20) DEFAULT NULL,
  `annual_it_spend_of_customer` varchar(255) DEFAULT NULL,
  `any_other_bussiness_intl` varchar(255) DEFAULT NULL,
  `any_other_info_for_pricing` varchar(255) DEFAULT NULL,
  `any_rebadging` varchar(255) DEFAULT NULL,
  `bank_guarantee` bigint(20) DEFAULT NULL,
  `baseline` varchar(255) DEFAULT NULL,
  `ba_commission` varchar(255) DEFAULT NULL,
  `bidding_competitors` varchar(255) DEFAULT NULL,
  `bid_creation_date` datetime DEFAULT NULL,
  `bid_manager` varchar(255) NOT NULL,
  `bid_submission_date` datetime DEFAULT NULL,
  `contract_signed_status` varchar(255) DEFAULT NULL,
  `currency_quote_id` bigint(20) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `delivery_contingency` bigint(20) NOT NULL,
  `delivery_manager` varchar(255) NOT NULL,
  `discount` bigint(20) DEFAULT NULL,
  `effort_approved_by` varchar(255) NOT NULL,
  `effort_estimate_by` varchar(255) NOT NULL,
  `hours_billing_offsource` varchar(255) DEFAULT NULL,
  `incumbents` varchar(255) DEFAULT NULL,
  `intimation_to_bid_audit_team` varchar(255) DEFAULT NULL,
  `is_prime_sub` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `location_status` varchar(255) DEFAULT NULL,
  `matured_outsourced` varchar(255) DEFAULT NULL,
  `onsite_location` varchar(255) NOT NULL,
  `opportunity_description` varchar(255) DEFAULT NULL,
  `pre_sales_contact_name` varchar(255) NOT NULL,
  `pricing_model_id` bigint(20) DEFAULT NULL,
  `project_duration` int(11) NOT NULL,
  `project_id` varchar(255) DEFAULT NULL,
  `project_id_status` bigint(20) NOT NULL,
  `project_statrt_date` datetime DEFAULT NULL,
  `rebadging_status` varchar(255) DEFAULT NULL,
  `received_date` datetime DEFAULT NULL,
  `received_from` varchar(255) DEFAULT NULL,
  `risk_to_techm` varchar(255) DEFAULT NULL,
  `sales_contact_name` varchar(255) NOT NULL,
  `sla_probability` bigint(20) DEFAULT NULL,
  `target_price` bigint(20) NOT NULL,
  `warranty_period` int(11) NOT NULL,
  `transition` varchar(255) DEFAULT NULL,
  `tower_id` int(11) NOT NULL,
  `vertical_id` int(11) NOT NULL,
  PRIMARY KEY (`bid_details_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealspecs`
--

LOCK TABLES `dealspecs` WRITE;
/*!40000 ALTER TABLE `dealspecs` DISABLE KEYS */;
INSERT INTO `dealspecs` VALUES (40,NULL,'dsf','','',NULL,NULL,'','','',NULL,'Tarun','2021-11-03 00:00:00',NULL,17,'navy',1,'somya',NULL,'somys','somya2',NULL,'','somya','','Hindi','','','noida','','Shubham',9,3,'sdf01',2,'2021-11-03 00:00:00','','2022-05-03 00:00:00','mittal','','Poonam',NULL,1324,1,NULL,0,0),(41,NULL,'','','',NULL,NULL,'','','',NULL,'dsfs','2021-11-03 00:00:00',NULL,2,'navy',1,'somya',NULL,'somys','somya2',NULL,'','somya','','Hindi','','','noida','navy','prem2',8,4,'sdf01',2,'2021-11-03 00:00:00','','2022-01-03 00:00:00','mittal','','prem1',NULL,1324,1,NULL,0,0),(44,NULL,'','','',NULL,NULL,'','','',NULL,'prem','2021-11-03 00:00:00',NULL,16,'navy',1,'somya',NULL,'ravi','ravi',NULL,'','somya','','','','','noida','','prem2',8,5,'sdf02',1,'2021-11-03 00:00:00','','2022-05-03 00:00:00','mittal','','ravi',NULL,1324,1,NULL,0,0),(45,NULL,'dsf','','',NULL,NULL,'','','',NULL,'prem','2021-11-03 00:00:00',NULL,17,'navy',1,'Tarun',NULL,'somys','somya2',NULL,'','som','','','','','noida','navy','prem2',10,4,'sdf01',1,'2021-11-03 00:00:00','','2022-05-03 00:00:00','somya','','prem1',NULL,3466,1,NULL,0,0),(46,NULL,'','','',NULL,NULL,'','','',NULL,'Anita','2021-11-03 00:00:00',NULL,16,'sdf',1,'Anil',NULL,'ravi','Hemant',NULL,'','somya','','','','','noida','','Anita',9,1,'sdf01',2,'2021-11-03 00:00:00','','2022-05-03 00:00:00','somya','','prem1',NULL,1324,1,NULL,0,0),(51,NULL,'sfd','','',NULL,1,'','','',NULL,'daya','2021-11-03 00:00:00',NULL,18,'navy',1,'daya',NULL,'daya','daya',NULL,'','asfs','','','','','noida','navy','daya',2,1,'sdf',1,'2022-07-03 00:00:00','','2022-05-03 00:00:00','somya','','daya',NULL,1324,1,NULL,0,0),(52,1,'dsf','dg','no',NULL,1,'adc','sf','df',NULL,'Anil','2021-11-03 00:00:00',NULL,18,'Railways',1,'Ankit',NULL,'Nitin','Anil',NULL,'dg','somya','fgh','Hindi','no','dg','noida','navy','ankit',8,1,'sdf01',2,'2022-07-03 00:00:00','zcf','2022-05-03 00:00:00','somya','sf','Anil',1,1324,1,NULL,0,0),(53,NULL,'','','',NULL,1,'','','',NULL,'Tarun','2021-11-03 00:00:00',NULL,13,'Railways',1,'somya',NULL,'somys','Poonam',NULL,'','asfs','','','','','noida','','Shubham',10,1,'sdf02',3,'2021-11-03 00:00:00','','2022-05-03 00:00:00','somya','','Poonam',NULL,1324,1,NULL,0,0),(54,NULL,'','','',NULL,NULL,'','','',NULL,'Tarun','2021-11-03 00:00:00',NULL,19,'Railways',1,'Tarun',NULL,'somys','somya2',NULL,'','asfs','','','','','noida','','Shubham',9,1,'sdf02',2,'2021-11-03 00:00:00','','2022-05-03 00:00:00','mittal','','prem1',NULL,1324,1,NULL,0,0),(55,NULL,'','','',NULL,NULL,'','','',NULL,'Tarun','2020-04-09 00:00:00',NULL,3,'navy',1,'Tarun',NULL,'somys','somya2',NULL,'','somya','','','','','noida','','Shubham',8,1,'sdf01',1,'2021-11-03 00:00:00','','2020-04-02 00:00:00','somya','','Poonam',NULL,1324,1,NULL,0,0),(56,NULL,'sfd','','no',NULL,NULL,'','','',NULL,'Tarun','2020-04-25 00:00:00',NULL,16,'Railways',1,'Tarun',NULL,'Shubham','somya2',NULL,'','somya','','','','','noida','navy','Shubham',11,1,'sdf01',1,'2020-08-28 00:00:00','','2020-04-25 00:00:00','somya','','Poonam',NULL,1324,1,NULL,0,0),(269,NULL,'','','',NULL,NULL,'','','',NULL,'RK Singh','2020-04-25 00:00:00',NULL,17,'Railways',1,'TK Singh',NULL,'Tata Jay','SUnil Yadav',NULL,'','somya','','','','','noida','navy','Vinay Chauhan',1,2,'sdf02',1,'2020-04-25 00:00:00','','2020-04-25 00:00:00','somya','','VK Singh',NULL,1324,1,NULL,0,0),(271,NULL,'','','no',NULL,NULL,'','','',NULL,'Test1','2020-04-11 00:00:00',NULL,3,'Railways',1,'Test1',NULL,'test3','test2',NULL,'','asfs','','','','','noida','','Test3',7,2,'sdf02',2,'2020-04-25 00:00:00','','2020-04-03 00:00:00','somya','','Test2',NULL,1324,1,NULL,1,0);
/*!40000 ALTER TABLE `dealspecs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (571),(571),(571),(571),(571);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_access_right`
--

DROP TABLE IF EXISTS `m_access_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_access_right` (
  `ACCESS_RIGHT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACCESS_RIGHT` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ACCESS_RIGHT_ID`),
  KEY `ACCESS_RIGHT_ID` (`ACCESS_RIGHT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_access_right`
--

LOCK TABLES `m_access_right` WRITE;
/*!40000 ALTER TABLE `m_access_right` DISABLE KEYS */;
INSERT INTO `m_access_right` VALUES (1,'CREATE','C'),(2,'SUBMIT','C'),(3,'REVIEW','C'),(4,'READ','C');
/*!40000 ALTER TABLE `m_access_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_amortize`
--

DROP TABLE IF EXISTS `m_amortize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_amortize` (
  `AMORTIZE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `AMORTIZE` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`AMORTIZE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_amortize`
--

LOCK TABLES `m_amortize` WRITE;
/*!40000 ALTER TABLE `m_amortize` DISABLE KEYS */;
INSERT INTO `m_amortize` VALUES (1,'O','C'),(2,'1','C'),(3,'2','C'),(4,'3','C'),(5,'4','C'),(6,'5','C'),(7,'6','C'),(8,'7','C'),(9,'8','C'),(10,'9','C'),(11,'10','C');
/*!40000 ALTER TABLE `m_amortize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_band`
--

DROP TABLE IF EXISTS `m_band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_band` (
  `BAND_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `BAND` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`BAND_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_band`
--

LOCK TABLES `m_band` WRITE;
/*!40000 ALTER TABLE `m_band` DISABLE KEYS */;
INSERT INTO `m_band` VALUES (1,'U1','C'),(2,'U2','C'),(3,'U3','C'),(4,'U4','C'),(5,'P1','C'),(6,'P2','C'),(7,'E1','C'),(8,'E2','C');
/*!40000 ALTER TABLE `m_band` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_bid_details`
--

DROP TABLE IF EXISTS `m_bid_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_bid_details` (
  `BID_DETAILS_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `BID_CREATION_DATE` datetime DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  `BID_MANAGER` varchar(500) DEFAULT NULL,
  `DELIVERY_MANAGER` varchar(500) DEFAULT NULL,
  `SALES_CONTACT_NAME` varchar(500) DEFAULT NULL,
  `EFFORT_ESTIMATE_BY` varchar(500) DEFAULT NULL,
  `PRE_SALES_CONTACT_NAME` varchar(500) DEFAULT NULL,
  `EFFORT_APPROVED_BY` varchar(500) DEFAULT NULL,
  `PROJECT_ID` varchar(500) DEFAULT NULL,
  `CUSTOMER_NAME` varchar(500) DEFAULT NULL,
  `PROJECT_ID_STATUS` bigint(20) DEFAULT NULL,
  `OPPORTUNITY_DESCRIPTION` varchar(1000) DEFAULT NULL,
  `BID_SUBMISSION_DATE` datetime DEFAULT NULL,
  `INTIMATION_TO_BID_AUDIT_TEAM` varchar(100) DEFAULT NULL,
  `ANNUAL_IT_SPEND_OF_CUSTOMER` varchar(100) DEFAULT NULL,
  `CONTRACT_SIGNED_STATUS` varchar(100) DEFAULT NULL,
  `PROJECT_DURATION` int(11) DEFAULT NULL,
  `PROJECT_STATRT_DATE` datetime DEFAULT NULL,
  `BIDDING_COMPETITORS` varchar(100) DEFAULT NULL,
  `BASELINE` varchar(100) DEFAULT NULL,
  `INCUMBENTS` varchar(100) DEFAULT NULL,
  `MATURED_OUTSOURCED` varchar(100) DEFAULT NULL,
  `TARGET_PRICE` bigint(20) DEFAULT NULL,
  `ANY_OTHER_BUSSINESS_INTL` varchar(100) DEFAULT NULL,
  `ONSITE_LOCATION` varchar(100) DEFAULT NULL,
  `LANGUAGE` varchar(100) DEFAULT NULL,
  `ANY_REBADGING` varchar(100) DEFAULT NULL,
  `REBADGING_STATUS` varchar(100) DEFAULT NULL,
  `LOCATION_STATUS` varchar(100) DEFAULT NULL,
  `IS_PRIME_SUB` varchar(100) DEFAULT NULL,
  `HOURS_BILLING_OFFSOURCE` varchar(100) DEFAULT NULL,
  `WARRANTY_PERIOD` int(11) DEFAULT NULL,
  `BANK_GUARANTEE` bigint(20) DEFAULT NULL,
  `RISK_TO_TECHM` varchar(100) DEFAULT NULL,
  `ADDITIONAL_COST` bigint(20) DEFAULT NULL,
  `DISCOUNT` bigint(20) DEFAULT NULL,
  `ANY_OTHER_INFO_FOR_PRICING` varchar(500) DEFAULT NULL,
  `SLA_PROBABILITY` bigint(20) DEFAULT NULL,
  `DELIVERY_CONTINGENCY` bigint(20) DEFAULT NULL,
  `CURRENCY_QUOTE_ID` bigint(20) DEFAULT NULL,
  `BA_COMMISSION` varchar(100) DEFAULT NULL,
  `RECEIVED_FROM` varchar(100) DEFAULT NULL,
  `RECEIVED_DATE` datetime DEFAULT NULL,
  `PRICING_MODEL_ID` bigint(20) DEFAULT NULL,
  `RECORD_CREATED_BY` varchar(50) DEFAULT NULL,
  `RECORD_CREATED_ON` datetime DEFAULT NULL,
  PRIMARY KEY (`BID_DETAILS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_bid_details`
--

LOCK TABLES `m_bid_details` WRITE;
/*!40000 ALTER TABLE `m_bid_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_bid_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_billable`
--

DROP TABLE IF EXISTS `m_billable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_billable` (
  `BILLABLE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `BILLABLE` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`BILLABLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_billable`
--

LOCK TABLES `m_billable` WRITE;
/*!40000 ALTER TABLE `m_billable` DISABLE KEYS */;
INSERT INTO `m_billable` VALUES (1,'YES','C'),(2,'NO','C');
/*!40000 ALTER TABLE `m_billable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_city`
--

DROP TABLE IF EXISTS `m_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_city` (
  `city_id` int(11) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `record_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_city`
--

LOCK TABLES `m_city` WRITE;
/*!40000 ALTER TABLE `m_city` DISABLE KEYS */;
INSERT INTO `m_city` VALUES (1,'New Delhi',1,'C'),(2,'Pune',1,'C'),(3,'Hydrabad',1,'C'),(4,'Chandigarh',1,'C'),(5,'Shimla',1,'C'),(6,'Noida',1,'C');
/*!40000 ALTER TABLE `m_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_cost_category`
--

DROP TABLE IF EXISTS `m_cost_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_cost_category` (
  `COST_CATEGORY_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `COST_CATEGORY` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`COST_CATEGORY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_cost_category`
--

LOCK TABLES `m_cost_category` WRITE;
/*!40000 ALTER TABLE `m_cost_category` DISABLE KEYS */;
INSERT INTO `m_cost_category` VALUES (1,'ShiftAllowance','C'),(2,'ProjectTravels','C'),(3,'Communication','C'),(4,'Laptop','C'),(5,'Training','C'),(6,'Others','C');
/*!40000 ALTER TABLE `m_cost_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_cost_item`
--

DROP TABLE IF EXISTS `m_cost_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_cost_item` (
  `COST_ITEM_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `COST_ITEM` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`COST_ITEM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_cost_item`
--

LOCK TABLES `m_cost_item` WRITE;
/*!40000 ALTER TABLE `m_cost_item` DISABLE KEYS */;
INSERT INTO `m_cost_item` VALUES (1,'X1','C'),(2,'X2','C'),(3,'X3','C'),(4,'X4','C');
/*!40000 ALTER TABLE `m_cost_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_cost_type`
--

DROP TABLE IF EXISTS `m_cost_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_cost_type` (
  `COST_TYPE` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  `cost_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_cost_type`
--

LOCK TABLES `m_cost_type` WRITE;
/*!40000 ALTER TABLE `m_cost_type` DISABLE KEYS */;
INSERT INTO `m_cost_type` VALUES ('Variable','C',1),('Absolute','C',2);
/*!40000 ALTER TABLE `m_cost_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_crm_details`
--

DROP TABLE IF EXISTS `m_crm_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_crm_details` (
  `CRM_DETAIL_ID` int(11) NOT NULL,
  `CRM_ID` varchar(20) DEFAULT NULL,
  `CRM_CREATION_DATE` datetime DEFAULT NULL,
  `CRM_CREATED_BY` varchar(500) DEFAULT NULL,
  `RECORD_STATUS` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CRM_DETAIL_ID`),
  UNIQUE KEY `UNIQUe` (`CRM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_crm_details`
--

LOCK TABLES `m_crm_details` WRITE;
/*!40000 ALTER TABLE `m_crm_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_crm_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_location`
--

DROP TABLE IF EXISTS `m_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_location` (
  `LOCATION_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `LOCATION` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`LOCATION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_location`
--

LOCK TABLES `m_location` WRITE;
/*!40000 ALTER TABLE `m_location` DISABLE KEYS */;
INSERT INTO `m_location` VALUES (1,'India','C'),(2,'Bangladesh','C'),(3,'Sri-Lanka','C'),(4,'Nepal','C'),(5,'Bhutan','C'),(6,'Maldives','C'),(7,'Australia','C'),(8,'United States','C'),(9,'United Kingdom','C');
/*!40000 ALTER TABLE `m_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_module`
--

DROP TABLE IF EXISTS `m_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_module` (
  `MODULE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MODULE` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MODULE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_module`
--

LOCK TABLES `m_module` WRITE;
/*!40000 ALTER TABLE `m_module` DISABLE KEYS */;
INSERT INTO `m_module` VALUES (1,'DEAL SPEC','C'),(2,'RLS','C'),(3,'PROJECT COST','C'),(4,'BOUGHT OUT','C');
/*!40000 ALTER TABLE `m_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_premises`
--

DROP TABLE IF EXISTS `m_premises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_premises` (
  `PREMISES_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PREMISES` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`PREMISES_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_premises`
--

LOCK TABLES `m_premises` WRITE;
/*!40000 ALTER TABLE `m_premises` DISABLE KEYS */;
INSERT INTO `m_premises` VALUES (1,'Tech-M',NULL),(2,'Customer',NULL);
/*!40000 ALTER TABLE `m_premises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_pricing_model`
--

DROP TABLE IF EXISTS `m_pricing_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_pricing_model` (
  `PRICING_MODEL_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PRICING_MODEL` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`PRICING_MODEL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_pricing_model`
--

LOCK TABLES `m_pricing_model` WRITE;
/*!40000 ALTER TABLE `m_pricing_model` DISABLE KEYS */;
INSERT INTO `m_pricing_model` VALUES (1,'T&M','C'),(2,'FIXED BID','C'),(3,'FIXED CAPACITY','C'),(4,'FIXED BID + T&M','C'),(5,'APPLICATION BASED','C'),(6,'TRANSACTION_BASED','C'),(7,'DEVISED_BASED','C'),(8,'DELIVERY_UNIT','C'),(9,'SERVICE CATALOGUE','C'),(10,'PAY ON PERFORMANCE','C'),(11,'GAIN SHARE','C'),(12,'OTHERS','C');
/*!40000 ALTER TABLE `m_pricing_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_project_id_status`
--

DROP TABLE IF EXISTS `m_project_id_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_project_id_status` (
  `PROJECT_STATUS_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PROJECT_STATUS` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`PROJECT_STATUS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_project_id_status`
--

LOCK TABLES `m_project_id_status` WRITE;
/*!40000 ALTER TABLE `m_project_id_status` DISABLE KEYS */;
INSERT INTO `m_project_id_status` VALUES (1,'CRM ID PROVIDED',NULL),(2,'CRM ID YET TO RECEIVE',NULL),(3,'CRM/PROJECTID NOT APPLICABLE',NULL),(4,'PROJECT ID PROVIDED',NULL);
/*!40000 ALTER TABLE `m_project_id_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_project_phase`
--

DROP TABLE IF EXISTS `m_project_phase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_project_phase` (
  `PROJECT_PHASE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PROJECT_PHASE` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varbinary(10) DEFAULT NULL,
  KEY `PROJECT_PHASE_ID` (`PROJECT_PHASE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_project_phase`
--

LOCK TABLES `m_project_phase` WRITE;
/*!40000 ALTER TABLE `m_project_phase` DISABLE KEYS */;
INSERT INTO `m_project_phase` VALUES (1,'Transition','C'),(2,'Transformation','C'),(3,'Steady State','C');
/*!40000 ALTER TABLE `m_project_phase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_quote_currency`
--

DROP TABLE IF EXISTS `m_quote_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_quote_currency` (
  `QUOTE_CURRENCY_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `QUOTE_CURRENCY` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`QUOTE_CURRENCY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_quote_currency`
--

LOCK TABLES `m_quote_currency` WRITE;
/*!40000 ALTER TABLE `m_quote_currency` DISABLE KEYS */;
INSERT INTO `m_quote_currency` VALUES (1,'EUR','C'),(2,'USD','C'),(3,'GBP','C'),(4,'AED','C'),(5,'ALL','C'),(6,'AUD','C'),(7,'BHD','C'),(8,'BRL','C'),(9,'CAD','C'),(10,'CHF','C'),(11,'CNY','C'),(12,'CZK','C'),(13,'DKK','C'),(14,'ETB','C'),(15,'GHS','C'),(16,'HKD','C'),(17,'HRK','C'),(18,'HUF','C'),(19,'IDR','C'),(20,'JPY','C'),(21,'KES','C'),(22,'KHR','C'),(23,'KRW','C'),(24,'KWD','C'),(25,'MMK','C'),(26,'MUR','C'),(27,'MXN','C'),(28,'MYR','C'),(29,'NGN','C'),(30,'NOK','C'),(31,'NZD','C'),(32,'OMR','C'),(33,'PHP','C'),(34,'PLN','C'),(35,'QAR','C'),(36,'ROL','C'),(37,'RON','C'),(38,'RWF','C'),(39,'SAR','C'),(40,'SEK','C'),(41,'SGD','C'),(42,'THB','C'),(43,'TWD','C'),(44,'TZS','C'),(45,'VND','C'),(46,'XAF','C'),(47,'XOF','C'),(48,'ZAR','C'),(49,'ZMW','C');
/*!40000 ALTER TABLE `m_quote_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_quote_exists`
--

DROP TABLE IF EXISTS `m_quote_exists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_quote_exists` (
  `QUOTE_EXISTS_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `QUOTE_EXISTS` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`QUOTE_EXISTS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_quote_exists`
--

LOCK TABLES `m_quote_exists` WRITE;
/*!40000 ALTER TABLE `m_quote_exists` DISABLE KEYS */;
INSERT INTO `m_quote_exists` VALUES (1,'YES','C'),(2,'NO','C');
/*!40000 ALTER TABLE `m_quote_exists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_resource_type`
--

DROP TABLE IF EXISTS `m_resource_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_resource_type` (
  `resource_type_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `RESOURCE_TYPE` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`resource_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_resource_type`
--

LOCK TABLES `m_resource_type` WRITE;
/*!40000 ALTER TABLE `m_resource_type` DISABLE KEYS */;
INSERT INTO `m_resource_type` VALUES (1,'Local','C'),(2,'Expat','C'),(3,'SubCon','C');
/*!40000 ALTER TABLE `m_resource_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_roles`
--

DROP TABLE IF EXISTS `m_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_roles` (
  `ROLE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLE` varchar(500) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_roles`
--

LOCK TABLES `m_roles` WRITE;
/*!40000 ALTER TABLE `m_roles` DISABLE KEYS */;
INSERT INTO `m_roles` VALUES (1,'Bid Manager','C'),(2,'Solution Architect','C'),(3,'Delivery SPOCS','C'),(4,'Sales SPOC','C'),(5,'Competency SPOCs','C'),(6,'CMC SPOC','C'),(7,'PreSales Head','C'),(8,'Solution Head','C'),(9,'IBU Delivery Head','C'),(10,'SBU Delivery Head','C'),(11,'Sales Head','C'),(12,'Competency Head','C'),(13,'CMC Head','C'),(14,'Legal Head','C'),(15,'CFO','C'),(16,'Admin','c');
/*!40000 ALTER TABLE `m_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_skill_type`
--

DROP TABLE IF EXISTS `m_skill_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_skill_type` (
  `SKILL_TYPE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `SKILL_TYPE` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`SKILL_TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_skill_type`
--

LOCK TABLES `m_skill_type` WRITE;
/*!40000 ALTER TABLE `m_skill_type` DISABLE KEYS */;
INSERT INTO `m_skill_type` VALUES (1,'ADMS','C'),(2,'IMS','C'),(3,'TELECOM','C');
/*!40000 ALTER TABLE `m_skill_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_tower`
--

DROP TABLE IF EXISTS `m_tower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_tower` (
  `TOWER_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TOWER` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`TOWER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_tower`
--

LOCK TABLES `m_tower` WRITE;
/*!40000 ALTER TABLE `m_tower` DISABLE KEYS */;
INSERT INTO `m_tower` VALUES (1,'Tower1','C'),(2,'Tower2','C'),(3,'Tower3','C'),(4,'Tower4','C'),(5,'Tower5','C'),(6,'Tower6','C'),(7,'Tower7','C'),(8,'Tower8','C'),(9,'Tower9','C'),(10,'Tower10','C');
/*!40000 ALTER TABLE `m_tower` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_vertical`
--

DROP TABLE IF EXISTS `m_vertical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_vertical` (
  `VERTICAL_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERTICAL` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`VERTICAL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_vertical`
--

LOCK TABLES `m_vertical` WRITE;
/*!40000 ALTER TABLE `m_vertical` DISABLE KEYS */;
INSERT INTO `m_vertical` VALUES (1,'IMS','C'),(2,'IBG','C'),(3,'BSG STATE','C'),(4,'BFSI','C'),(5,'INSURANCE','C');
/*!40000 ALTER TABLE `m_vertical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_work_place`
--

DROP TABLE IF EXISTS `m_work_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_work_place` (
  `WORK_PLACE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `WORK_PLACE` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`WORK_PLACE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_work_place`
--

LOCK TABLES `m_work_place` WRITE;
/*!40000 ALTER TABLE `m_work_place` DISABLE KEYS */;
INSERT INTO `m_work_place` VALUES (1,'Onsite','C'),(2,'Onshore','C'),(3,'Offshore','C');
/*!40000 ALTER TABLE `m_work_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_costs`
--

DROP TABLE IF EXISTS `project_costs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_costs` (
  `project_id` int(11) NOT NULL,
  `bid_details_id` int(11) NOT NULL,
  `cost_category_id` int(11) NOT NULL,
  `cost_item_id` int(11) NOT NULL,
  `cost_type_id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `creation_date` varchar(255) DEFAULT NULL,
  `days_year1` varchar(255) DEFAULT NULL,
  `days_year10` varchar(255) DEFAULT NULL,
  `days_year2` varchar(255) DEFAULT NULL,
  `days_year3` varchar(255) DEFAULT NULL,
  `days_year4` varchar(255) DEFAULT NULL,
  `days_year5` varchar(255) DEFAULT NULL,
  `days_year6` varchar(255) DEFAULT NULL,
  `days_year7` varchar(255) DEFAULT NULL,
  `days_year8` varchar(255) DEFAULT NULL,
  `days_year9` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `dl_id` varchar(255) DEFAULT NULL,
  `filepath` varchar(255) DEFAULT NULL,
  `project_duration` varchar(255) DEFAULT NULL,
  `time_stamp` varchar(255) DEFAULT NULL,
  `total` int(11) NOT NULL,
  `tower_id` int(11) NOT NULL,
  `freeze` varchar(255) DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_costs`
--

LOCK TABLES `project_costs` WRITE;
/*!40000 ALTER TABLE `project_costs` DISABLE KEYS */;
INSERT INTO `project_costs` VALUES (319,0,1,1,0,'Solution Architect','22/04/2020 20:40:21','8','','8','8','','','','','','','test','316','C:\\Users\\Administrator\\git\\RLSTM_new/uploads','3','20200422204021960',24,4,'f','y'),(320,0,1,1,0,NULL,NULL,'9','','9','9','','','','','','','test','316','C:\\Users\\Administrator\\git\\RLSTM_new/uploads','3','20200422204021960',27,2,'f','y'),(328,0,1,1,0,'solution architect','23/04/2020 13:13:09','8','','8','8','','','','','','','test','316','C:\\Users\\dc00497892\\git\\RLSTM/uploads','3','20200423131309290',24,4,'f','y'),(329,0,1,1,0,'solution architect','23/04/2020 13:13:09','9','','9','9','','','','','','','test','316','C:\\Users\\dc00497892\\git\\RLSTM/uploads','3','20200423131309290',27,2,'f','y'),(330,0,2,3,0,NULL,NULL,'2','','8','2','','','','','','','jhkjh','316','C:\\Users\\dc00497892\\git\\RLSTM/uploads','3','20200423131309290',12,8,'f','y'),(331,0,1,1,0,'solution architect','23/04/2020 13:16:32','8','','8','8','','','','','','','test','316','C:\\Users\\dc00497892\\git\\RLSTM/uploads','3','20200423131632097',24,4,'f','y'),(332,0,1,1,0,'solution architect','23/04/2020 13:16:32','9','','9','9','','','','','','','test','316','C:\\Users\\dc00497892\\git\\RLSTM/uploads','3','20200423131632097',27,2,'f','y'),(333,0,2,3,0,'solution architect','23/04/2020 13:16:32','2','','8','2','','','','','','','jhkjh','316','C:\\Users\\dc00497892\\git\\RLSTM/uploads','3','20200423131632097',12,8,'f','y'),(334,0,4,2,0,NULL,NULL,'9','','2','9','','','','','','','kjkl','316','C:\\Users\\dc00497892\\git\\RLSTM/uploads','3','20200423131632097',20,2,'f','y'),(335,0,1,1,0,'solution architect','23/04/2020 13:23:46','8','','8','8','','','','','','','test','316','C:\\Users\\dc00497892\\git\\RLSTM/uploads','3','20200423132454231',24,4,'f','y'),(336,0,1,1,0,'solution architect','23/04/2020 13:23:46','9','','9','9','','','','','','','test','316','C:\\Users\\dc00497892\\git\\RLSTM/uploads','3','20200423132454231',27,2,'f','y'),(337,0,2,3,0,'solution architect','23/04/2020 13:23:46','2','','8','2','','','','','','','jhkjh','316','C:\\Users\\dc00497892\\git\\RLSTM/uploads','3','20200423132454231',12,8,'f','y'),(338,0,4,2,0,'solution architect','23/04/2020 13:23:46','9','','2','9','','','','','','','kjkl','316','C:\\Users\\dc00497892\\git\\RLSTM/uploads','3','20200423132454231',20,2,'f','y'),(339,0,5,4,0,NULL,NULL,'9','','9','9','','','','','','','hjkh','316','C:\\Users\\dc00497892\\git\\RLSTM/uploads','3','20200423132454231',27,8,'f','y'),(340,0,1,1,0,'solution architect','23/04/2020 13:33:28','8','','8','8','','','','','','','test','316','C:\\Users\\dc00497892\\git\\RLSTM/uploads','3','20200423133334468',24,4,'f','y'),(341,0,1,1,0,'solution architect','23/04/2020 13:33:28','9','','9','9','','','','','','','test','316','C:\\Users\\dc00497892\\git\\RLSTM/uploads','3','20200423133334468',27,2,'f','y'),(342,0,2,3,0,'solution architect','23/04/2020 13:33:28','2','','8','2','','','','','','','jhkjh','316','C:\\Users\\dc00497892\\git\\RLSTM/uploads','3','20200423133334468',12,8,'f','y'),(343,0,4,2,0,'solution architect','23/04/2020 13:33:28','9','','2','9','','','','','','','kjkl','316','C:\\Users\\dc00497892\\git\\RLSTM/uploads','3','20200423133334468',20,2,'f','y'),(344,0,5,4,0,'solution architect','23/04/2020 13:33:28','9','','9','9','','','','','','','hjkh','316','C:\\Users\\dc00497892\\git\\RLSTM/uploads','3','20200423133334468',27,8,'f','y'),(345,0,6,2,0,NULL,NULL,'5','','5','5','','','','','','','hjk','316','C:\\Users\\dc00497892\\git\\RLSTM/uploads','3','20200423133334468',15,2,'f','y'),(346,0,1,1,0,'solution architect','23/04/2020 13:46:36','8','','8','8','','','','','','','test','316','C:\\Users\\dc00497892\\git\\RLSTM/uploads','3','20200423134636218',24,4,'f','y'),(347,0,1,1,0,'solution architect','23/04/2020 13:46:36','9','','9','9','','','','','','','test','316','C:\\Users\\dc00497892\\git\\RLSTM/uploads','3','20200423134636218',27,2,'f','y'),(348,0,5,4,0,NULL,NULL,'7','','7','7','','','','','','','jhkjh','316','C:\\Users\\dc00497892\\git\\RLSTM/uploads','3','20200423134636218',21,8,'f','y'),(349,0,1,1,0,'solution architect','23/04/2020 13:57:07','8','','8','8','','','','','','','test','316','C:\\Users\\dc00497892\\git\\RLSTM/uploads','3','20200423135741649',24,4,'f','y'),(350,0,1,1,0,'solution architect','23/04/2020 13:57:07','9','','9','9','','','','','','','test','316','C:\\Users\\dc00497892\\git\\RLSTM/uploads','3','20200423135741649',27,2,'f','y'),(351,0,3,4,0,NULL,NULL,'7','','7','7','','','','','','','gjhg','316','C:\\Users\\dc00497892\\git\\RLSTM/uploads','3','20200423135741649',21,8,'f','y'),(358,0,1,1,0,'solution architect','23/04/2020 15:43:21','8','','8','8','','','','','','','test','316','D:\\Spring\\NewRLS\\RLSTM/uploads','3','20200423154321339',24,4,'f','y'),(359,0,1,1,0,'solution architect','23/04/2020 15:43:21','9','','9','9','','','','','','','test','316','D:\\Spring\\NewRLS\\RLSTM/uploads','3','20200423154321339',27,2,'f','y'),(360,0,3,4,0,'solution architect','23/04/2020 15:43:21','7','','7','7','','','','','','','gjhg','316','D:\\Spring\\NewRLS\\RLSTM/uploads','3','20200423154321339',21,8,'f','y'),(361,0,2,3,0,NULL,NULL,'9','','2','2','','','','','','','kjkl','316','D:\\Spring\\NewRLS\\RLSTM/uploads','3','20200423154321339',13,2,'f','y'),(371,0,3,2,2,'solution architect','23/04/2020 16:13:56','1','','1','','','','','','','','khkjhjk','365','D:\\Spring\\NewRLS\\RLSTM/uploads','2','20200423161356822',2,2,'f',NULL),(372,0,4,3,0,NULL,NULL,'6','','2','','','','','','','','jhjh','365','D:\\Spring\\NewRLS\\RLSTM/uploads','2','20200423161356822',8,4,'f',NULL),(373,0,3,2,2,'solution architect','23/04/2020 16:14:40','1','','1','','','','','','','','khkjhjk','365','D:\\Spring\\NewRLS\\RLSTM/uploads','2','20200423161440727',2,2,'f',NULL),(374,0,4,3,1,'solution architect','23/04/2020 16:14:40','6','','2','','','','','','','','jhjh','365','D:\\Spring\\NewRLS\\RLSTM/uploads','2','20200423161440727',8,4,'f',NULL),(375,0,5,4,0,NULL,NULL,'2','','8','','','','','','','','jhkjh','365','D:\\Spring\\NewRLS\\RLSTM/uploads','2','20200423161440727',10,6,'f',NULL);
/*!40000 ALTER TABLE `project_costs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rls`
--

DROP TABLE IF EXISTS `rls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rls` (
  `rlsid` int(11) NOT NULL,
  `band_id` int(11) NOT NULL,
  `billable_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `creation_date` varchar(255) DEFAULT NULL,
  `days_year1` varchar(255) DEFAULT NULL,
  `days_year10` varchar(255) DEFAULT NULL,
  `days_year2` varchar(255) DEFAULT NULL,
  `days_year3` varchar(255) DEFAULT NULL,
  `days_year4` varchar(255) DEFAULT NULL,
  `days_year5` varchar(255) DEFAULT NULL,
  `days_year6` varchar(255) DEFAULT NULL,
  `days_year7` varchar(255) DEFAULT NULL,
  `days_year8` varchar(255) DEFAULT NULL,
  `days_year9` varchar(255) DEFAULT NULL,
  `ds_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `premises_id` int(11) NOT NULL,
  `project_duration` varchar(255) DEFAULT NULL,
  `project_phase_id` int(11) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `resource_type_id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `skill_type_id` int(11) NOT NULL,
  `sub_tower` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `tower_id` int(11) NOT NULL,
  `tracking_number` varchar(255) DEFAULT NULL,
  `vertical_id` int(11) NOT NULL,
  `work_place_id` int(11) NOT NULL,
  `freeze` varchar(255) DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rlsid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rls`
--

LOCK TABLES `rls` WRITE;
/*!40000 ALTER TABLE `rls` DISABLE KEYS */;
/*!40000 ALTER TABLE `rls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_dealspecs`
--

DROP TABLE IF EXISTS `t_dealspecs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_dealspecs` (
  `bid_details_id` bigint(20) NOT NULL,
  `additional_cost` bigint(20) DEFAULT NULL,
  `annual_it_spend_of_customer` varchar(255) DEFAULT NULL,
  `any_other_bussiness_intl` varchar(255) DEFAULT NULL,
  `any_other_info_for_pricing` varchar(255) DEFAULT NULL,
  `any_rebadging` varchar(255) DEFAULT NULL,
  `bank_guarantee` bigint(20) DEFAULT NULL,
  `baseline` varchar(255) DEFAULT NULL,
  `ba_commission` varchar(255) DEFAULT NULL,
  `bidding_competitors` varchar(255) DEFAULT NULL,
  `bid_creation_date` date DEFAULT NULL,
  `bid_manager` varchar(255) DEFAULT NULL,
  `bid_submission_date` date DEFAULT NULL,
  `contract_signed_status` varchar(255) DEFAULT NULL,
  `currency_quote_id` bigint(20) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `delivery_contingency` bigint(20) DEFAULT NULL,
  `delivery_manager` varchar(255) DEFAULT NULL,
  `discount` bigint(20) DEFAULT NULL,
  `effort_approved_by` varchar(255) DEFAULT NULL,
  `effort_estimate_by` varchar(255) DEFAULT NULL,
  `hours_billing_offsource` varchar(255) DEFAULT NULL,
  `incumbents` varchar(255) DEFAULT NULL,
  `intimation_to_bid_audit_team` varchar(255) DEFAULT NULL,
  `is_prime_sub` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `location_status` varchar(255) DEFAULT NULL,
  `matured_outsourced` varchar(255) DEFAULT NULL,
  `onsite_location` varchar(255) DEFAULT NULL,
  `opportunity_description` varchar(255) DEFAULT NULL,
  `pre_sales_contact_name` varchar(255) DEFAULT NULL,
  `pricing_model_id` bigint(20) DEFAULT NULL,
  `project_duration` int(11) NOT NULL,
  `project_id` varchar(255) DEFAULT NULL,
  `project_id_status` bigint(20) DEFAULT NULL,
  `project_statrt_date` date DEFAULT NULL,
  `rebadging_status` varchar(255) DEFAULT NULL,
  `received_date` date DEFAULT NULL,
  `received_from` varchar(255) DEFAULT NULL,
  `risk_to_techm` varchar(255) DEFAULT NULL,
  `sales_contact_name` varchar(255) DEFAULT NULL,
  `sla_probability` bigint(20) DEFAULT NULL,
  `target_price` bigint(20) DEFAULT NULL,
  `warranty_period` int(11) NOT NULL,
  `transition` varchar(255) DEFAULT NULL,
  `project_start_date` varchar(255) DEFAULT NULL,
  `freeze` varchar(255) DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  `optional_duration` int(11) NOT NULL,
  `total_duration` int(11) NOT NULL,
  PRIMARY KEY (`bid_details_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dealspecs`
--

LOCK TABLES `t_dealspecs` WRITE;
/*!40000 ALTER TABLE `t_dealspecs` DISABLE KEYS */;
INSERT INTO `t_dealspecs` VALUES (316,NULL,'test','','No',NULL,NULL,'','','',NULL,'test','2020-06-11',NULL,14,'test',1,'test',NULL,'test','test',NULL,'','test','','','','','noida','','tst',9,3,'test01',1,'2020-06-25','','2020-04-22','Somya','','test',NULL,3566,1,NULL,NULL,NULL,'n',0,0),(365,NULL,'','','',NULL,NULL,'77','','djakj',NULL,'Daya','2020-04-21',NULL,16,'Tarun',66,'Ravi',NULL,'Deepak','Nitin',NULL,'','77','','','','','jnhj','jghjg','Renu',3,2,'1',4,'2020-04-15','','2020-04-29','','','Ankit',NULL,88,6,NULL,NULL,NULL,'n',0,0);
/*!40000 ALTER TABLE `t_dealspecs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_tower_mapping`
--

DROP TABLE IF EXISTS `t_tower_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_tower_mapping` (
  `bid_id` bigint(20) NOT NULL,
  `tower_id` int(11) DEFAULT NULL,
  `tower_mapping_id` int(11) NOT NULL AUTO_INCREMENT,
  `record_status` varchar(255) DEFAULT NULL,
  KEY `FKby0ctsxgdo1eave4rsbur54s6` (`bid_id`),
  KEY `tower_mapping_id` (`tower_mapping_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_tower_mapping`
--

LOCK TABLES `t_tower_mapping` WRITE;
/*!40000 ALTER TABLE `t_tower_mapping` DISABLE KEYS */;
INSERT INTO `t_tower_mapping` VALUES (316,2,25,NULL),(316,4,26,NULL),(316,8,27,NULL),(365,1,28,NULL),(365,2,29,NULL),(365,4,30,NULL),(365,6,31,NULL);
/*!40000 ALTER TABLE `t_tower_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_info`
--

DROP TABLE IF EXISTS `t_user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user_info` (
  `USER_SRNO` bigint(20) NOT NULL AUTO_INCREMENT,
  `LOGIN_ID` varchar(50) NOT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`USER_SRNO`,`LOGIN_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_info`
--

LOCK TABLES `t_user_info` WRITE;
/*!40000 ALTER TABLE `t_user_info` DISABLE KEYS */;
INSERT INTO `t_user_info` VALUES (1,'Tarun','admin','C'),(2,'Deepak','admin','C'),(3,'Pankaj','admin','C'),(4,'Rahul','admin','C'),(5,'Ratan','admin','C'),(6,'Divya','admin','C'),(7,'Karamjeet','admin','C'),(8,'Ravi','admin','c');
/*!40000 ALTER TABLE `t_user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_role`
--

DROP TABLE IF EXISTS `t_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user_role` (
  `USER_ROLE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `ROLE_ID` int(11) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  `CRM_ID` varchar(20) NOT NULL,
  PRIMARY KEY (`USER_ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_role`
--

LOCK TABLES `t_user_role` WRITE;
/*!40000 ALTER TABLE `t_user_role` DISABLE KEYS */;
INSERT INTO `t_user_role` VALUES (1,1,1,'C','xxx1234'),(2,2,2,'d','xxx1234'),(3,3,3,'C','xxx1234'),(4,4,4,'C','xxx1234'),(5,5,5,'C','xxx1234'),(6,6,6,'C','xxx1234'),(7,7,7,'C','xxx1234'),(8,8,16,'C','xxx1234'),(9,9,9,'C','xxx1234'),(10,1,2,'d','xxx1234'),(11,1,3,'d','xxx1234'),(12,1,6,'d','xxx1234'),(13,1,2,'d','xxx1234'),(14,1,3,'d','xxx1234'),(15,1,2,'d','xxx1234'),(16,2,3,'d','xxx1234'),(17,2,4,'d','xxx1234'),(18,2,2,'c','xxx1234'),(20,8,2,'d','xxx1234'),(21,1,6,'d','xxx1234'),(22,8,2,'d','xxx1234'),(23,8,3,'d','xxx1234'),(24,1,2,'d','xxx1234'),(25,1,4,'d','xxx1234'),(26,2,3,'d','xxx1234'),(27,1,2,'d','xxx1234'),(28,1,2,'d','xxx1234'),(29,1,2,'d','xxx1234'),(30,1,3,'d','xxx1234'),(31,1,3,'d','xxx1234'),(32,1,4,'d','xxx1234');
/*!40000 ALTER TABLE `t_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_role_access`
--

DROP TABLE IF EXISTS `t_user_role_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user_role_access` (
  `USER_ROLE_ACCESS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLE_ACCESS_ID` int(11) DEFAULT NULL,
  `ROLE_ID` int(11) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  `Module_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`USER_ROLE_ACCESS_ID`),
  UNIQUE KEY `ROLE_ACCESS_ID` (`ROLE_ACCESS_ID`,`ROLE_ID`,`Module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_role_access`
--

LOCK TABLES `t_user_role_access` WRITE;
/*!40000 ALTER TABLE `t_user_role_access` DISABLE KEYS */;
INSERT INTO `t_user_role_access` VALUES (1,1,1,'d',1),(2,2,1,'d',1),(3,3,2,'C',1),(4,1,2,'C',1),(5,2,2,'C',1),(6,3,2,'C',2),(7,1,2,'C',2),(9,1,2,'C',3),(10,2,2,'C',3),(11,3,2,'C',3),(12,1,2,'C',4),(13,2,2,'C',4),(14,3,2,'C',4),(15,1,7,'d',2),(16,2,7,'d',2),(24,1,1,'d',2),(25,2,1,'d',2),(26,1,1,'d',4),(27,2,1,'d',4),(29,1,7,'d',3),(30,2,7,'d',3),(31,1,7,'d',4),(32,2,7,'d',4),(34,4,1,'d',3);
/*!40000 ALTER TABLE `t_user_role_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_vertical_mapping`
--

DROP TABLE IF EXISTS `t_vertical_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_vertical_mapping` (
  `bid_id` bigint(20) NOT NULL,
  `vertical_id` int(11) DEFAULT NULL,
  `vertical_mapping_id` int(11) NOT NULL AUTO_INCREMENT,
  `record_status` varchar(255) DEFAULT NULL,
  KEY `FKc18k7x0kun7vmkrysn4d5cy42` (`bid_id`),
  KEY `vertical_mapping_id` (`vertical_mapping_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_vertical_mapping`
--

LOCK TABLES `t_vertical_mapping` WRITE;
/*!40000 ALTER TABLE `t_vertical_mapping` DISABLE KEYS */;
INSERT INTO `t_vertical_mapping` VALUES (316,2,17,NULL),(316,4,18,NULL),(365,1,19,NULL),(365,2,20,NULL),(365,3,21,NULL),(365,4,22,NULL);
/*!40000 ALTER TABLE `t_vertical_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersmaster`
--

DROP TABLE IF EXISTS `usersmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersmaster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `roles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersmaster`
--

LOCK TABLES `usersmaster` WRITE;
/*!40000 ALTER TABLE `usersmaster` DISABLE KEYS */;
INSERT INTO `usersmaster` VALUES (1,'somy@abc.com','somya','123som','ADMIN');
/*!40000 ALTER TABLE `usersmaster` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-07 18:37:36
