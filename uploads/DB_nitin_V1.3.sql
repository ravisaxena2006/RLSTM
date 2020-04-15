/*
SQLyog Community v11.31 (32 bit)
MySQL - 5.5.20 : Database - rls_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`rls_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `rls_db`;

/*Table structure for table `m_amortize` */

DROP TABLE IF EXISTS `m_amortize`;

CREATE TABLE `m_amortize` (
  `AMORTIZE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `AMORTIZE` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`AMORTIZE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `m_amortize` */

insert  into `m_amortize`(`AMORTIZE_ID`,`AMORTIZE`,`RECORD_STATUS`) values (1,'O','C'),(2,'1','C'),(3,'2','C'),(4,'3','C'),(5,'4','C'),(6,'5','C'),(7,'6','C'),(8,'7','C'),(9,'8','C'),(10,'9','C'),(11,'10','C');

/*Table structure for table `m_band` */

DROP TABLE IF EXISTS `m_band`;

CREATE TABLE `m_band` (
  `BAND_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `BAND` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`BAND_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `m_band` */

insert  into `m_band`(`BAND_ID`,`BAND`,`RECORD_STATUS`) values (1,'U1','C'),(2,'U2','C'),(3,'U3','C'),(4,'U4','C'),(5,'P1','C'),(6,'P2','C'),(7,'E1','C'),(8,'E2','C');

/*Table structure for table `m_bid_details` */

DROP TABLE IF EXISTS `m_bid_details`;

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

/*Data for the table `m_bid_details` */

/*Table structure for table `m_billable` */

DROP TABLE IF EXISTS `m_billable`;

CREATE TABLE `m_billable` (
  `BILLABLE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `BILLABLE` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`BILLABLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `m_billable` */

insert  into `m_billable`(`BILLABLE_ID`,`BILLABLE`,`RECORD_STATUS`) values (1,'YES','C'),(2,'NO','C');

/*Table structure for table `m_cost_category` */

DROP TABLE IF EXISTS `m_cost_category`;

CREATE TABLE `m_cost_category` (
  `COST_CATEGORY_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `COST_CATEGORY` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`COST_CATEGORY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `m_cost_category` */

insert  into `m_cost_category`(`COST_CATEGORY_ID`,`COST_CATEGORY`,`RECORD_STATUS`) values (1,'ShiftAllowance','C'),(2,'ProjectTravels','C'),(3,'Communication','C'),(4,'Laptop','C'),(5,'Training','C'),(6,'Others','C');

/*Table structure for table `m_cost_item` */

DROP TABLE IF EXISTS `m_cost_item`;

CREATE TABLE `m_cost_item` (
  `COST_ITEM_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `COST_ITEM` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`COST_ITEM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `m_cost_item` */

insert  into `m_cost_item`(`COST_ITEM_ID`,`COST_ITEM`,`RECORD_STATUS`) values (1,'X1','C'),(2,'X2','C'),(3,'X3','C'),(4,'X4','C');

/*Table structure for table `m_cost_type` */

DROP TABLE IF EXISTS `m_cost_type`;

CREATE TABLE `m_cost_type` (
  `COST_TYPE_CD` bigint(20) NOT NULL AUTO_INCREMENT,
  `COST_TYPE` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`COST_TYPE_CD`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `m_cost_type` */

insert  into `m_cost_type`(`COST_TYPE_CD`,`COST_TYPE`,`RECORD_STATUS`) values (1,'Variable','C'),(2,'Absolute','C');

/*Table structure for table `m_location` */

DROP TABLE IF EXISTS `m_location`;

CREATE TABLE `m_location` (
  `LOCATION_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `LOCATION` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`LOCATION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `m_location` */

insert  into `m_location`(`LOCATION_ID`,`LOCATION`,`RECORD_STATUS`) values (1,'India','C'),(2,'Bangladesh','C'),(3,'Sri-Lanka','C'),(4,'Nepal','C'),(5,'Bhutan','C'),(6,'Maldives','C'),(7,'Australia','C'),(8,'United States','C'),(9,'United Kingdom','C');

/*Table structure for table `m_premises` */

DROP TABLE IF EXISTS `m_premises`;

CREATE TABLE `m_premises` (
  `PREMISES_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PREMISES` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`PREMISES_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `m_premises` */

insert  into `m_premises`(`PREMISES_ID`,`PREMISES`,`RECORD_STATUS`) values (1,'Tech-M',NULL),(2,'Customer',NULL);

/*Table structure for table `m_pricing_model` */

DROP TABLE IF EXISTS `m_pricing_model`;

CREATE TABLE `m_pricing_model` (
  `PRICING_MODEL_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PRICING_MODEL` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`PRICING_MODEL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `m_pricing_model` */

insert  into `m_pricing_model`(`PRICING_MODEL_ID`,`PRICING_MODEL`,`RECORD_STATUS`) values (1,'T&M','C'),(2,'FIXED BID','C'),(3,'FIXED CAPACITY','C'),(4,'FIXED BID + T&M','C'),(5,'APPLICATION BASED','C'),(6,'TRANSACTION_BASED','C'),(7,'DEVISED_BASED','C'),(8,'DELIVERY_UNIT','C'),(9,'SERVICE CATALOGUE','C'),(10,'PAY ON PERFORMANCE','C'),(11,'GAIN SHARE','C'),(12,'OTHERS','C');

/*Table structure for table `m_project_id_status` */

DROP TABLE IF EXISTS `m_project_id_status`;

CREATE TABLE `m_project_id_status` (
  `PROJECT_STATUS_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PROJECT_STATUS` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`PROJECT_STATUS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `m_project_id_status` */

insert  into `m_project_id_status`(`PROJECT_STATUS_ID`,`PROJECT_STATUS`,`RECORD_STATUS`) values (1,'CRM ID PROVIDED',NULL),(2,'CRM ID YET TO RECEIVE',NULL),(3,'CRM/PROJECTID NOT APPLICABLE',NULL),(4,'PROJECT ID PROVIDED',NULL);

/*Table structure for table `m_project_phase` */

DROP TABLE IF EXISTS `m_project_phase`;

CREATE TABLE `m_project_phase` (
  `PROJECT_PHASE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PROJECT_PHASE` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varbinary(10) DEFAULT NULL,
  KEY `PROJECT_PHASE_ID` (`PROJECT_PHASE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `m_project_phase` */

insert  into `m_project_phase`(`PROJECT_PHASE_ID`,`PROJECT_PHASE`,`RECORD_STATUS`) values (1,'Transition','C'),(2,'Transformation','C'),(3,'Steady State','C');

/*Table structure for table `m_quote_currency` */

DROP TABLE IF EXISTS `m_quote_currency`;

CREATE TABLE `m_quote_currency` (
  `QUOTE_CURRENCY_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `QUOTE_CURRENCY` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`QUOTE_CURRENCY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

/*Data for the table `m_quote_currency` */

insert  into `m_quote_currency`(`QUOTE_CURRENCY_ID`,`QUOTE_CURRENCY`,`RECORD_STATUS`) values (1,'EUR','C'),(2,'USD','C'),(3,'GBP','C'),(4,'AED','C'),(5,'ALL','C'),(6,'AUD','C'),(7,'BHD','C'),(8,'BRL','C'),(9,'CAD','C'),(10,'CHF','C'),(11,'CNY','C'),(12,'CZK','C'),(13,'DKK','C'),(14,'ETB','C'),(15,'GHS','C'),(16,'HKD','C'),(17,'HRK','C'),(18,'HUF','C'),(19,'IDR','C'),(20,'JPY','C'),(21,'KES','C'),(22,'KHR','C'),(23,'KRW','C'),(24,'KWD','C'),(25,'MMK','C'),(26,'MUR','C'),(27,'MXN','C'),(28,'MYR','C'),(29,'NGN','C'),(30,'NOK','C'),(31,'NZD','C'),(32,'OMR','C'),(33,'PHP','C'),(34,'PLN','C'),(35,'QAR','C'),(36,'ROL','C'),(37,'RON','C'),(38,'RWF','C'),(39,'SAR','C'),(40,'SEK','C'),(41,'SGD','C'),(42,'THB','C'),(43,'TWD','C'),(44,'TZS','C'),(45,'VND','C'),(46,'XAF','C'),(47,'XOF','C'),(48,'ZAR','C'),(49,'ZMW','C');

/*Table structure for table `m_quote_exists` */

DROP TABLE IF EXISTS `m_quote_exists`;

CREATE TABLE `m_quote_exists` (
  `QUOTE_EXISTS_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `QUOTE_EXISTS` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`QUOTE_EXISTS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `m_quote_exists` */

insert  into `m_quote_exists`(`QUOTE_EXISTS_ID`,`QUOTE_EXISTS`,`RECORD_STATUS`) values (1,'YES','C'),(2,'NO','C');

/*Table structure for table `m_resource_type` */

DROP TABLE IF EXISTS `m_resource_type`;

CREATE TABLE `m_resource_type` (
  `M_RESOURCE_TYPE` bigint(20) NOT NULL AUTO_INCREMENT,
  `RESOURCE_TYPE` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`M_RESOURCE_TYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `m_resource_type` */

insert  into `m_resource_type`(`M_RESOURCE_TYPE`,`RESOURCE_TYPE`,`RECORD_STATUS`) values (1,'Local','C'),(2,'Expat','C'),(3,'SubCon','C');

/*Table structure for table `m_skill_type` */

DROP TABLE IF EXISTS `m_skill_type`;

CREATE TABLE `m_skill_type` (
  `SKILL_TYPE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `SKILL_TYPE` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`SKILL_TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `m_skill_type` */

insert  into `m_skill_type`(`SKILL_TYPE_ID`,`SKILL_TYPE`,`RECORD_STATUS`) values (1,'ADMS','C'),(2,'IMS','C'),(3,'TELECOM','C');

/*Table structure for table `m_tower` */

DROP TABLE IF EXISTS `m_tower`;

CREATE TABLE `m_tower` (
  `TOWER_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TOWER` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`TOWER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `m_tower` */

insert  into `m_tower`(`TOWER_ID`,`TOWER`,`RECORD_STATUS`) values (1,'Tower1','C'),(2,'Tower2','C'),(3,'Tower3','C'),(4,'Tower4','C'),(5,'Tower5','C'),(6,'Tower6','C'),(7,'Tower7','C'),(8,'Tower8','C'),(9,'Tower9','C'),(10,'Tower10','C');

/*Table structure for table `m_vertical` */

DROP TABLE IF EXISTS `m_vertical`;

CREATE TABLE `m_vertical` (
  `VERTICAL_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERTICAL` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`VERTICAL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `m_vertical` */

insert  into `m_vertical`(`VERTICAL_ID`,`VERTICAL`,`RECORD_STATUS`) values (1,'IMS','C'),(2,'IBG','C'),(3,'BSG STATE','C'),(4,'BFSI','C'),(5,'INSURANCE','C');

/*Table structure for table `m_work_place` */

DROP TABLE IF EXISTS `m_work_place`;

CREATE TABLE `m_work_place` (
  `WORK_PLACE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `WORK_PLACE` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`WORK_PLACE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `m_work_place` */

insert  into `m_work_place`(`WORK_PLACE_ID`,`WORK_PLACE`,`RECORD_STATUS`) values (1,'Onsite','C'),(2,'Onshore','C'),(3,'Offshore','C');

/*Table structure for table `t_user_info` */

DROP TABLE IF EXISTS `t_user_info`;

CREATE TABLE `t_user_info` (
  `USER_SRNO` bigint(20) NOT NULL AUTO_INCREMENT,
  `LOGIN_ID` varchar(50) NOT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  `RECORD_STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`USER_SRNO`,`LOGIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_user_info` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
