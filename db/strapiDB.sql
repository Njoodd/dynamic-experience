-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: strapi
-- ------------------------------------------------------
-- Server version	5.7.24-log

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED='f4aae335-63da-11ec-bb50-0a58c0a80891:1-2272';

--
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `actionType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `style` int(11) DEFAULT NULL,
  `styleId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorization` int(11) DEFAULT NULL,
  `header` longtext COLLATE utf8mb4_unicode_ci,
  `body` longtext COLLATE utf8mb4_unicode_ci,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pageId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addToBackstack` tinyint(1) DEFAULT NULL,
  `popBack` tinyint(1) DEFAULT NULL,
  `variableId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
INSERT INTO `actions` VALUES (1,'Navigation','en','2021-12-21 08:53:47',1,1,'2021-12-21 08:53:45','2021-12-21 08:53:47',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mobilyPlansPage',1,0,NULL,NULL),(2,'Navigation','en','2021-12-21 10:51:52',1,1,'2021-12-21 10:51:50','2021-12-21 10:51:52',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'planDetailsPage',1,0,NULL,NULL),(3,'Variable','en','2021-12-21 12:54:40',1,1,'2021-12-21 12:54:37','2021-12-21 12:57:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'isMobilyPlanPostpaid','false'),(4,'Variable','en','2021-12-21 12:54:52',1,1,'2021-12-21 12:54:51','2021-12-21 12:54:53',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'isMobilyPlanPostpaid','true'),(5,'Message','en','2021-12-21 13:02:53',1,1,'2021-12-21 13:02:51','2021-12-21 13:02:53',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Test',NULL,1,0,NULL,NULL),(6,'Variable','en','2021-12-28 06:11:40',1,1,'2021-12-28 06:11:38','2021-12-28 06:15:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'planName','${data.name}'),(7,'Navigation','en','2021-12-28 06:46:19',1,1,'2021-12-28 06:46:18','2021-12-28 06:46:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'startJourney',1,0,NULL,NULL),(8,'Navigation','en','2021-12-28 07:49:41',1,1,'2021-12-28 07:49:35','2021-12-28 07:49:41',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'chooseNumberPage',1,0,NULL,NULL),(9,'Message','en','2021-12-28 07:49:56',1,1,'2021-12-28 07:49:54','2021-12-28 07:49:56',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Not yet supported',NULL,1,0,NULL,NULL),(10,'Alert','en','2021-12-28 08:50:02',1,1,'2021-12-28 08:50:00','2021-12-28 08:51:38',NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL);
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actions__components`
--

DROP TABLE IF EXISTS `actions__components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actions__components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` int(11) DEFAULT NULL,
  `base-component_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions__components`
--

LOCK TABLES `actions__components` WRITE;
/*!40000 ALTER TABLE `actions__components` DISABLE KEYS */;
INSERT INTO `actions__components` VALUES (1,10,102);
/*!40000 ALTER TABLE `actions__components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actions__localizations`
--

DROP TABLE IF EXISTS `actions__localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actions__localizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` int(11) DEFAULT NULL,
  `related_action_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions__localizations`
--

LOCK TABLES `actions__localizations` WRITE;
/*!40000 ALTER TABLE `actions__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `actions__localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actions__on_fail`
--

DROP TABLE IF EXISTS `actions__on_fail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actions__on_fail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` int(11) DEFAULT NULL,
  `related_action_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions__on_fail`
--

LOCK TABLES `actions__on_fail` WRITE;
/*!40000 ALTER TABLE `actions__on_fail` DISABLE KEYS */;
/*!40000 ALTER TABLE `actions__on_fail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actions__on_success`
--

DROP TABLE IF EXISTS `actions__on_success`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actions__on_success` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` int(11) DEFAULT NULL,
  `related_action_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions__on_success`
--

LOCK TABLES `actions__on_success` WRITE;
/*!40000 ALTER TABLE `actions__on_success` DISABLE KEYS */;
/*!40000 ALTER TABLE `actions__on_success` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_calls`
--

DROP TABLE IF EXISTS `api_calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_calls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorization` int(11) DEFAULT NULL,
  `header` longtext COLLATE utf8mb4_unicode_ci,
  `body` longtext COLLATE utf8mb4_unicode_ci,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_calls`
--

LOCK TABLES `api_calls` WRITE;
/*!40000 ALTER TABLE `api_calls` DISABLE KEYS */;
INSERT INTO `api_calls` VALUES (1,'https://10.14.193.76:9002/catalog-agg-query/graphql','POST',NULL,'{\"Content-Type\":\"application/json\",\"x-mock-match-request-body\":true,\"x-api-key\":\"liCENcCCGpHUsEPHNhySYGXCnmhwzZ\",\"Authorization\":\"Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICI1Y1RIX21XZ1JpaDVqcTliSzFmelpwR1FoRXhORWcxVDMzanE1VXZ5SUJnIn0.eyJleHAiOjE2NDAyMDYxNzAsImlhdCI6MTY0MDE3MDE3MCwianRpIjoiN2Y4Mjg0Y2QtNWMxZi00YzViLTkyZDgtMzlmMjIwN2M4MWM2IiwiaXNzIjoiaHR0cHM6Ly9pZHAuZXNhbGVkZXYucHJvZC5tb2JpbHkubGFuL2F1dGgvcmVhbG1zL21vYmlseSIsImF1ZCI6ImFjY291bnQiLCJzdWIiOiJhYzJkZGNiZC1kZWUyLTQ4OTEtYjNmNC02MTU0NmIwM2FlNjAiLCJ0eXAiOiJCZWFyZXIiLCJhenAiOiJtb2JpbHktY2xpIiwic2Vzc2lvbl9zdGF0ZSI6ImE1YjAyMTEwLWE1NjctNDZlMy05ZThjLTE2MjY4MmM5ZDg2YyIsImFjciI6IjEiLCJhbGxvd2VkLW9yaWdpbnMiOlsiaHR0cDovL2xvY2FsaG9zdDo4MDgwIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJTSE9QUElOR0NBUlQtTE9CLUFMTCIsIlBPRl9BUElfTUFOQUdFUl9QRVJNIiwiQ0hBX0FQSV9NQU5BR0VSX1BFUk0iLCJQUklfQVBJX0FDQ0VTU19QRVJNIiwiU0NUX0FQSV9ERVNJR05fUEVSTSIsIkVESVRPUl9SRVRSSUVWRV9ERUYiLCJJTVBfQVBJX0FDQ0VTU19QRVJNIiwiU0hPUFBJTkdDQVJUX1BST0NfQ09OX01PIiwiU0VSX0FQSV9NQU5BR0VSX1BFUk0iLCJST0xFX0lCX0FEQVBURVJfQlQiLCJTQ19RVUVSWV9BTEwiLCJTSE9QUElOR0NBUlRfTE9CX1RWIiwidW1hX2F1dGhvcml6YXRpb24iLCJTQ1RfQVBJX01BTkFHRVJfUEVSTSIsIkNIRUNLT1VUX0FDQ0VTU19BTExfTk9fVkFMSURJVFkiLCJSQ1RfQVBJX0RFU0lHTl9QRVJNIiwiUFJNX0FQSV9NQU5BR0VSX1BFUk0iLCJTSE9QUElOR0NBUlRfUFJPQ19DT05fTUlHIiwiREVMRVRFX1JVTEUiLCJQUklfQVBJX01BTkdFUl9QRVJNIiwiQ0hFQ0tPVVRfUkVBRF9BTExfQUNDRVNTIiwiUFJPX0FQSV9BQ0NFU1NfUEVSTSIsIlNDX1NBVkVfRk9SX0xBVEVSIiwiRURJVE9SX1BVQkxJU0giLCJTQ19RVUVSWV9BTExfQllfU0NfSUQiLCJTVEFUVVNfQUNUSVZFIiwiRVhFQ19DT01QTEVURV9CQVRDSF9QRVJNIiwiRURJVE9SX0NPTlZFUlQiLCJTSE9QUElOR0NBUlQtUFJPQy1DT04tQUxMIiwiU0hPUFBJTkdDQVJUX0xPQl9BTEwiLCJVUERBVEVfUkVDT01NRU5EQVRJT04iLCJDSEFfQVBJX0RFU0lHTl9QRVJNIiwiU0NfREVMRVRFX0FMTCIsIlBST19BUElfREVTSUdOX1BFUk0iLCJQUk1fQVBJX01BTkdFUl9QRVJNIiwiUFJPX0FQSV9NQU5BR0VSX1BFUk0iLCJTSE9QUElOR0NBUlQtUFJPQy1DT04tQUMiLCJTVEFUVVNfVEVTVCIsIkFMTF9BUElfQURNSU5fUEVSTSIsIlBPUF9BUElfQUNDRVNTX1BFUk0iLCJSSF9FWFBPUlRfQVBJX0FDQ0VTU19QRVJNIiwiQ1RHX0FQSV9BQ0NFU1NfUEVSTSIsIlNUQVRVU19SRVRJUkVEIiwiVVBEQVRFX1JVTEUiLCJDUkVBVEVfUkVDT01NRU5EQVRJT04iLCJTVEFUVVNfTEFVTkNIRUQiLCJTSE9QUElOR0NBUlRfU0FWRV9BU19RVU9URSIsIlJFQURfUkVDT01NRU5EQVRJT04iLCJDSEVDS09VVF9DUkVBVEVfVVBEX0FMTF9BQ0NFU1MiLCJTSE9QUElOR0NBUlRfUFJPQ19DT05fUkUiLCJTQ19VUERBVEVfQUxMIiwiTU1fQVBJX0FDQ0VTU19QRVJNIiwiUlVMRV9NQU5BR0VNRU5UX0FQSSIsIlJFQURfUlVMRSIsIlBSTV9BUElfQUNDRVNTX1BFUk0iLCJDVEdfQVBJX0RFU0lHTl9QRVJNIiwiRVhFQ19ERUxUQV9CQVRDSF9QRVJNIiwiU0hPUFBJTkdDQVJUX1BST0NfQ09OX0FMTCIsIlJPTEVfSUJfQURBUFRFUl9ERU1PIiwiU0hPUFBJTkdDQVJUX1BST0NfQ09OX0lMQyIsIkNBVF9BUElfREVTSUdOX1BFUk0iLCJSRVNfQVBJX0FDQ0VTU19QRVJNIiwiU0hPUFBJTkdDQVJUX1BST0NfQ09OX0FDIiwiU0hPUFBJTkdDQVJUX0xPQl9NT0IiLCJQT1BfQVBJX01BTkFHRVJfUEVSTSIsIkRFTEVURV9SRUNPTU1FTkRBVElPTiIsIlBPQ19BUElfREVTSUdOX1BFUk0iLCJQUk1fQVBJX0RFU0lHTl9QRVJNIiwiUE9GX0FQSV9ERVNJR05fUEVSTSIsIlNFUl9BUElfREVTSUdOX1BFUk0iLCJQT0NfQVBJX01BTkFHRVJfUEVSTSIsIkNIQV9BUElfTUFOQUcgRVJfUEVSTSIsIkRFRkFVTFRfQVBJX0FDQ0VTU19QRVJNIiwiUkhfSU1QT1JUX0FQSV9BQ0NFU1NfUEVSTSIsIlNUQVRVU19ERVNJR04iLCJMQ1RfQVBJX0RFU0lHTl9QRVJNIiwiUE9GX0FQSV9BQ0NFU1NfUEVSTSIsIk1NX0FQSV9ERVNJR05fUEVSTSIsIlJFU19BUElfTUFOQUdFUl9QRVJNIiwiRVhQX0FQSV9BQ0NFU1NfUEVSTSIsIkNBVF9BUElfQUNDRVNTX1BFUk0iLCJTRVJfQVBJX0FDQ0VTU19QRVJNIiwiU1RBVFVTX09CU09MRVRFIiwiU1RBVFVTX1JFSkVDVEVEIiwib2ZmbGluZV9hY2Nlc3MiLCJDSEFfQVBJX0FDQ0VTU19QRVJNIiwiU0hPUFBJTkdDQVJUX0xPQl9CQiIsIlNIT1BQSU5HQ0FSVF9TVUJNSVQiLCJMQ1RfQVBJX01BTkFHRVJfUEVSTSIsIlJDVF9BUElfTUFOQUdFUl9QRVJNIiwiUkVTX0FQSV9ERVNJR05fUEVSTSIsIkNBVEVHT1JZX0xFVkVMX0NSRUFURSIsImJsdWVtYXJibGUtYW5vbnltb3VzIiwiU0NfU0FWRV9DQVJUIiwiUE9QX0FQSV9ERVNJR05fUEVSTSIsIkNSRUFURV9SVUxFIiwiQ1RHX0FQSV9NQU5BR0VSX1BFUk0iLCJTQ19RVUVSWV9BTExfQllfUEFSVFlfSUQiLCJSRUNPTU1FTkRBVElPTl9TRVJWSUNFIiwiSU1QX0VYUF9SRVFfTElTVF9BTEwiLCJDQVRfQVBJX01BTkFHRVJfUEVSTSJdfSwicmVzb3VyY2VfYWNjZXNzIjp7ImFjY291bnQiOnsicm9sZXMiOlsibWFuYWdlLWFjY291bnQiLCJtYW5hZ2UtYWNjb3VudC1saW5rcyIsInZpZXctcHJvZmlsZSJdfX0sInNjb3BlIjoib3BlbmlkIHByb2ZpbGUgZW1haWwiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwibmFtZSI6IkFkbWluIEFwaSIsInByZWZlcnJlZF91c2VybmFtZSI6Im1vYmlseWRldiIsImdpdmVuX25hbWUiOiJBZG1pbiIsImZhbWlseV9uYW1lIjoiQXBpIn0.bF5hU8ie-qz1DOKXcuoVqGMsLbhWHinZGV3KGP3wzW63w1hHHT843sxkcxE8IgwoM7RetNhVPojOLPAlBuLoXc3qc9-Lp3P9qvQOtIQ6p2yFcgeXI5f4nY9SMr2P82QbC8Li5RUj_bDmvNNIOISfbE2av2qtg2j-EJ44HBHZFo59jvFKUYCfOBMioyyKAqfVG7u3oFHDWsRJkwClaCqvmJlXbCwI2WqNlaiZvdlXGUalS0F3IAKLTVS4SjtiabBku-lHc_xap_03q5sJRC-FZBGbBm81Zryg9ImVLspH7438UjyFEZggdIBIyfIOpfO-S9_9WSP_Am8rUsWw6EP_SQ \"}','{\"query\":\"query { getCategoryByID(id: \\\"mobily_postpaid_packages-pc_wj6am\\\") { name createdBy createdOn productOffers { name id { key version } productOfferingPrice { price { unit value } priceType } productSpecification { id name } specCharValueUse { name specCharacteristicValue { value } } category { id name type parentId isAnchor isOfferContainer parentHierarchy { id name parentId isAnchor isOfferContainer } } productOfferingPrice { id code name externalID processContext { id name } priceType price { unit value } } } }}\"}','2021-12-22 11:02:35',1,1,'2021-12-22 11:02:33','2021-12-29 07:22:37'),(2,'https://39954b77-6143-4049-818a-b8e624bd7f84.mock.pstmn.io/resource-pool-management/services/resourcePoolManagement/AvailabilityCheck','POST',NULL,'{\"x-mock-match-request-body\":\"1\"}','{\"resourceCapacityDemand\":{\"resourceCapacityDemandAmount\":\"100\",\"resourcePool\":{\"id\":\"1\",\"options\":{\"vanity\":\"None\",\"msisdn\":\"9665*\",\"package\":\"\"}},\"@type\":\"phone number\"}}','2021-12-28 09:11:43',1,1,'2021-12-28 09:11:42','2021-12-28 09:11:43');
/*!40000 ALTER TABLE `api_calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` int(11) DEFAULT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `applications_version_unique` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications`
--

LOCK TABLES `applications` WRITE;
/*!40000 ALTER TABLE `applications` DISABLE KEYS */;
INSERT INTO `applications` VALUES (1,'EN',1,'main','en','2021-12-20 08:01:47',1,1,'2021-12-20 07:38:14','2021-12-28 08:32:13');
/*!40000 ALTER TABLE `applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applications__data`
--

DROP TABLE IF EXISTS `applications__data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applications__data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `application_id` int(11) DEFAULT NULL,
  `variable_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications__data`
--

LOCK TABLES `applications__data` WRITE;
/*!40000 ALTER TABLE `applications__data` DISABLE KEYS */;
INSERT INTO `applications__data` VALUES (1,1,1);
/*!40000 ALTER TABLE `applications__data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applications__localizations`
--

DROP TABLE IF EXISTS `applications__localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applications__localizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `application_id` int(11) DEFAULT NULL,
  `related_application_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications__localizations`
--

LOCK TABLES `applications__localizations` WRITE;
/*!40000 ALTER TABLE `applications__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `applications__localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applications__pages`
--

DROP TABLE IF EXISTS `applications__pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applications__pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `application_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications__pages`
--

LOCK TABLES `applications__pages` WRITE;
/*!40000 ALTER TABLE `applications__pages` DISABLE KEYS */;
INSERT INTO `applications__pages` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5);
/*!40000 ALTER TABLE `applications__pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applications__themes`
--

DROP TABLE IF EXISTS `applications__themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applications__themes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `application_id` int(11) DEFAULT NULL,
  `theme_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications__themes`
--

LOCK TABLES `applications__themes` WRITE;
/*!40000 ALTER TABLE `applications__themes` DISABLE KEYS */;
/*!40000 ALTER TABLE `applications__themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authorizations`
--

DROP TABLE IF EXISTS `authorizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authorizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `authType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorizations`
--

LOCK TABLES `authorizations` WRITE;
/*!40000 ALTER TABLE `authorizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `authorizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_components`
--

DROP TABLE IF EXISTS `base_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible` tinyint(1) DEFAULT NULL,
  `style` int(11) DEFAULT NULL,
  `styleId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `textAr` longtext COLLATE utf8mb4_unicode_ci,
  `disabled` tinyint(1) DEFAULT NULL,
  `action` int(11) DEFAULT NULL,
  `disableArrow` tinyint(1) DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `onChange` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min` int(11) DEFAULT NULL,
  `max` int(11) DEFAULT NULL,
  `inputType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validationError` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `src` longtext COLLATE utf8mb4_unicode_ci,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drawable` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enableJavascript` tinyint(1) DEFAULT NULL,
  `allowRedirection` tinyint(1) DEFAULT NULL,
  `spacing` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alignItems` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `columns` int(11) DEFAULT NULL,
  `rows` int(11) DEFAULT NULL,
  `bound` tinyint(1) DEFAULT NULL,
  `value1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conditionType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `searchVariableId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autoCollapse` tinyint(1) DEFAULT NULL,
  `scrollable` tinyint(1) DEFAULT NULL,
  `breakLine` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autoSnap` tinyint(1) DEFAULT NULL,
  `scaleAnimation` tinyint(1) DEFAULT NULL,
  `centerProduct` tinyint(1) DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titleComponent` int(11) DEFAULT NULL,
  `bottomComponent` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `api` int(11) DEFAULT NULL,
  `apiListPath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_components`
--

LOCK TABLES `base_components` WRITE;
/*!40000 ALTER TABLE `base_components` DISABLE KEYS */;
INSERT INTO `base_components` VALUES (1,'Label','Test label',1,NULL,'','Test label',NULL,0,NULL,0,NULL,'',NULL,NULL,'text','','','','','null','',0,0,'','both','center',NULL,NULL,0,'','','','',0,0,'',1,0,0,NULL,NULL,NULL,'en','2021-12-20 07:52:02',1,1,'2021-12-20 07:52:00','2021-12-20 08:23:07',NULL,NULL),(2,'Card','Mobile Plans Card',1,1,'','',NULL,0,NULL,0,NULL,'',NULL,NULL,'text','','','https://s3-alpha-sig.figma.com/img/81a1/c53f/cf95e9297c5fe7632518f0f7e68ed935?Expires=1641168000&Signature=hhGbLE6tQjMa-a73J0W0SGlWbYmlVbhxJQto6vSTInr5dlOmeQW9EPzTfzNyVw8HF5JRjhNDi3Bqhb7C~I14wcl2PU2h3UJoIN4bhfZDq0yL~6a~DSVpWnxVUemV5vFRyN54xyhY9vieNX2ZKvDMq508dRvjd9hoc71RsGsYu0-iwNnFHS7h~A5U6hQ179tlbkMhsBHuT15lcFpv-NhpZdlN0bqi92rrA99RnRmtKbQ-V7nzmdjddj6t~H3~u3jIsihVnvM06aEFgYS7ovL-jZCFVEF8dYSTX04uT39kMoxFD2uSsCz0u~tALNzJLUL9fjMdQw4tEcfgzY~hJ~XP6g__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA','','null','',0,0,'','both','center',NULL,NULL,0,'','','','',0,0,'',1,0,0,NULL,NULL,NULL,'en','2021-12-20 07:57:01',1,1,'2021-12-20 07:55:08','2021-12-21 08:54:04',NULL,NULL),(3,'Label','MobilePlansCardHeader',1,2,NULL,'Mobile Plans',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-20 08:43:06',1,1,'2021-12-20 08:37:11','2021-12-28 06:38:37',NULL,NULL),(4,'Label','MobilyPlansCardBottom',1,3,NULL,'SEE PLANS',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-20 08:53:38',1,1,'2021-12-20 08:53:31','2021-12-28 06:36:33',NULL,NULL),(5,'Condition','post/prepaidCondition',1,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',3,5,0,'${isMobilyPlanPostpaid}','true','==',NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-20 09:34:10',1,1,'2021-12-20 09:34:07','2021-12-22 06:03:48',NULL,NULL),(6,'Card','postPaidTransparentCard',1,4,NULL,NULL,NULL,0,NULL,0,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-20 09:42:55',1,1,'2021-12-20 09:42:53','2021-12-20 10:40:42',NULL,NULL),(7,'Card','postPaidBackgroundCard',1,5,NULL,NULL,NULL,0,NULL,0,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-20 09:45:14',1,1,'2021-12-20 09:45:10','2021-12-20 09:53:39',NULL,NULL),(8,'Hyperlink','postpaidSelectedButton',1,6,'','Postpaid',NULL,0,NULL,1,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-20 09:49:36',1,1,'2021-12-20 09:49:33','2021-12-21 13:39:20',NULL,NULL),(9,'Hyperlink','postpaidNonSelectedButton',1,7,NULL,'Prepaid',NULL,0,NULL,1,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-20 09:50:21',1,1,'2021-12-20 09:50:19','2021-12-21 13:39:00',NULL,NULL),(10,'Grid','planSelectorGrid',1,8,NULL,NULL,NULL,0,NULL,0,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',2,1,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-20 09:52:40',1,1,'2021-12-20 09:51:40','2021-12-20 09:55:12',NULL,NULL),(11,'ProductsList','postPaidPlans',1,9,NULL,NULL,NULL,0,NULL,0,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,'10','both','center',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,1,NULL,NULL,NULL,'en','2021-12-20 10:18:24',1,1,'2021-12-20 10:18:21','2021-12-22 14:03:17',1,'${response.data.getCategoryByID.productOffers}'),(12,'Card','postPaid50Card',1,14,'',NULL,NULL,0,NULL,0,NULL,'',NULL,NULL,'text',NULL,NULL,'https://s3-alpha-sig.figma.com/img/167c/6ed5/1a12aa19fe80f556c93588bb35d3e0f6?Expires=1641168000&Signature=XZFHkZbUtDqDXixONifNRhjaSV3zX7KCpwJkx6ngImHLK5vLKsb~L2HER1BKHXoHembnxCZZ9--rSgdxMi36s3GbRhYtrtSjPNJHq~t3dtrbDrYtNocugPR6xW3eSq486SXEoAg2KIVdET83CeooZcBvUWwlR2M3p0L~WMXlGrcW1KOgFO9SOky66x1I81gN2j8xx73Xj7as4ucdx5hZDNi4mNZWW6OMkEVUDfyAiEtBuN8zhUVaIfHIonuFcdNnVrn9TYzVIb9O8lDUgmYr4yF~mRZr1ZEpJVsCpahTYctZV~zsYrPxfhyFJLupbjsRyDQ3R24asCcFHLJvltRZ~A__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA','null','null',NULL,0,0,NULL,'both','start',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-20 10:23:00',1,1,'2021-12-20 10:21:23','2021-12-28 06:21:15',NULL,NULL),(13,'VerticalList','postPaid50ListContent',1,10,NULL,NULL,NULL,0,NULL,0,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,'0','both',NULL,3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-20 10:38:13',1,1,'2021-12-20 10:25:28','2021-12-22 13:48:01',NULL,NULL),(14,'Label','planName',1,49,NULL,'${data.name}',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-20 10:27:34',1,1,'2021-12-20 10:27:31','2021-12-28 06:15:55',NULL,NULL),(15,'Label','planId',1,11,NULL,'50',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-20 10:27:58',1,1,'2021-12-20 10:27:53','2021-12-20 10:34:30',NULL,NULL),(16,'Space','space10',1,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,'10','both','center',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-20 10:28:24',1,1,'2021-12-20 10:28:21','2021-12-20 10:28:24',NULL,NULL),(17,'Label','planData',1,11,NULL,'3 GB',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-20 10:28:59',1,1,'2021-12-20 10:28:57','2021-12-20 10:28:59',NULL,NULL),(18,'Label','planMinutesText',1,12,NULL,'Minutes',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-20 10:30:00',1,1,'2021-12-20 10:29:58','2021-12-22 07:58:42',NULL,NULL),(19,'Label','planMinutes',1,11,NULL,'300',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-20 10:30:21',1,1,'2021-12-20 10:30:14','2021-12-20 10:30:21',NULL,NULL),(20,'Label','planSMSText',1,12,NULL,'SMS',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-20 10:31:03',1,1,'2021-12-20 10:30:50','2021-12-21 09:55:39',NULL,NULL),(21,'Label','planSMS',1,11,NULL,'50',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-20 10:31:32',1,1,'2021-12-20 10:31:18','2021-12-20 10:31:32',NULL,NULL),(22,'Hyperlink','planDetailsButton',1,13,NULL,'AND MORE',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-20 10:33:42',1,1,'2021-12-20 10:33:35','2021-12-20 10:33:42',NULL,NULL),(23,'Label','planDataText',1,12,NULL,'Data',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-20 10:36:34',1,1,'2021-12-20 10:36:30','2021-12-20 10:36:45',NULL,NULL),(24,'Hyperlink','andMoreTextHyperlink',1,15,'null','AND MORE',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both','center',3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-21 10:01:14',1,1,'2021-12-21 10:01:12','2021-12-21 10:01:14',NULL,NULL),(25,'Grid','postPaid50BottomGrid',1,16,'','',NULL,0,NULL,0,NULL,'',NULL,NULL,'text','','',NULL,'','null','',0,0,'','both','center',NULL,NULL,0,'','','','',0,0,'',1,0,0,NULL,NULL,NULL,'en','2021-12-21 10:06:24',1,1,'2021-12-21 10:06:22','2021-12-21 10:38:21',NULL,NULL),(26,'Label','subscribtionLabelText',1,17,'null','Subscription',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both','center',3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-21 10:14:02',1,1,'2021-12-21 10:13:57','2021-12-21 10:14:02',NULL,NULL),(27,'Grid','planSubscriptionDetailsGrid',1,18,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,1,2,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-21 10:16:04',1,1,'2021-12-21 10:15:54','2021-12-21 10:41:57',NULL,NULL),(28,'Grid','planPriceDetailsGrid',1,19,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'0','both','center',2,1,1,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-21 10:21:48',1,1,'2021-12-21 10:20:01','2021-12-21 10:26:03',NULL,NULL),(29,'Label','planPriceLabel',1,20,'null','${data.productOfferingPrice[0].price.value}',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both','center',3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-21 10:23:10',1,1,'2021-12-21 10:22:26','2021-12-22 13:54:22',NULL,NULL),(30,'Label','sarPerMonthLabel',1,21,'null','SAR / month*',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both','center',3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-21 10:25:32',1,1,'2021-12-21 10:24:38','2021-12-21 10:25:32',NULL,NULL),(31,'Button','planSelectButton',1,22,'null','SELECT',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both','center',3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-21 10:38:13',1,1,'2021-12-21 10:38:11','2021-12-21 10:38:38',NULL,NULL),(32,'Label','includeVatLabel',1,23,'null','*All prices include 15% VAT. A [50] SAR setup fee is charged for new lines at checkout. Line transfers don\'t have setup fees.',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both','center',3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-21 12:52:04',1,1,'2021-12-21 12:50:10','2021-12-23 12:53:29',NULL,NULL),(33,'Card','prePaidTransparentCard',1,4,NULL,NULL,NULL,0,NULL,0,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-21 12:58:32',1,1,'2021-12-21 12:58:29','2021-12-21 13:28:52',NULL,NULL),(34,'Card','prePaidBackgroundCard',1,24,NULL,NULL,NULL,0,NULL,0,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-21 13:00:15',1,1,'2021-12-21 12:59:08','2021-12-22 06:01:52',NULL,NULL),(35,'VerticalList','mobilePlansSharedContentList',1,25,'','',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'5','both','start',3,5,0,'null','null','null','null',0,0,'',1,0,0,NULL,NULL,NULL,'en','2021-12-21 13:59:15',1,1,'2021-12-21 13:59:13','2021-12-21 14:15:10',NULL,NULL),(36,'Label','benefitsLabel',1,26,'null','Enjoy your postpaid benefits',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both','center',3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-21 14:00:53',1,1,'2021-12-21 14:00:44','2021-12-21 14:00:53',NULL,NULL),(37,'Image','fastShippingImage',1,27,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','fastShipping','null',0,0,'20','both','center',3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-21 14:01:41',1,1,'2021-12-21 14:01:35','2021-12-21 14:08:19',NULL,NULL),(38,'Label','fastDeliveryLabel',1,28,'null','SIM Fast delivery',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both','center',3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-21 14:04:42',1,1,'2021-12-21 14:04:40','2021-12-21 14:04:42',NULL,NULL),(39,'Label','doorToDoorLabel',1,29,'null','Same day, door to door',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both','center',3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-21 14:05:40',1,1,'2021-12-21 14:05:35','2021-12-21 14:08:10',NULL,NULL),(40,'Image','lightingImage',1,27,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','lighting','null',0,0,'20','both','center',3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-21 14:06:22',1,1,'2021-12-21 14:06:20','2021-12-21 14:08:38',NULL,NULL),(41,'Label','freeInstallationLabel',1,28,'null','Free installation',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both','center',3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-21 14:07:14',1,1,'2021-12-21 14:07:11','2021-12-21 14:07:14',NULL,NULL),(42,'Label','bestInKingdomLabel',1,29,'null','Choose only the best in the kingdom',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both','center',3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-21 14:12:07',1,1,'2021-12-21 14:12:05','2021-12-21 14:12:34',NULL,NULL),(43,'Image','rollOverImage',1,27,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','rollOver','null',0,0,'20','both','center',3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-21 14:13:03',1,1,'2021-12-21 14:13:00','2021-12-21 14:13:09',NULL,NULL),(44,'Label','rollAndEnjoyLabel',1,28,'null','Roll over and enjoy',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both','center',3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-21 14:13:55',1,1,'2021-12-21 14:13:52','2021-12-21 14:13:55',NULL,NULL),(45,'Label','neverLoseRoll',1,29,'null','Never lose what you haven\'t used. We will roll your data over to the next month',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both','center',3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-21 14:15:04',1,1,'2021-12-21 14:15:01','2021-12-23 12:52:43',NULL,NULL),(46,'Grid','prepaidPlanSelectorGrid',1,8,NULL,NULL,NULL,0,NULL,0,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',2,1,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-22 05:59:14',1,1,'2021-12-22 05:59:09','2021-12-22 06:01:02',NULL,NULL),(47,'Hyperlink','prepaidSelectedButton',1,6,'','Prepaid',NULL,0,NULL,1,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-22 05:59:50',1,1,'2021-12-22 05:59:47','2021-12-22 05:59:50',NULL,NULL),(48,'Hyperlink','prepaidNonSelectedButton',1,7,NULL,'Postpaid',NULL,0,NULL,1,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-22 06:00:26',1,1,'2021-12-22 06:00:22','2021-12-22 06:00:39',NULL,NULL),(49,'Label','prepaidIncludeVatLabel',1,23,'null','*All prices include 15% VAT. Once in a plan, VAT is collected upon recharge.',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both','center',3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-22 06:03:30',1,1,'2021-12-22 06:03:27','2021-12-22 06:03:30',NULL,NULL),(50,'Card','planDetailsCard',1,32,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null','https://s3-alpha-sig.figma.com/img/167c/6ed5/1a12aa19fe80f556c93588bb35d3e0f6?Expires=1641168000&Signature=XZFHkZbUtDqDXixONifNRhjaSV3zX7KCpwJkx6ngImHLK5vLKsb~L2HER1BKHXoHembnxCZZ9--rSgdxMi36s3GbRhYtrtSjPNJHq~t3dtrbDrYtNocugPR6xW3eSq486SXEoAg2KIVdET83CeooZcBvUWwlR2M3p0L~WMXlGrcW1KOgFO9SOky66x1I81gN2j8xx73Xj7as4ucdx5hZDNi4mNZWW6OMkEVUDfyAiEtBuN8zhUVaIfHIonuFcdNnVrn9TYzVIb9O8lDUgmYr4yF~mRZr1ZEpJVsCpahTYctZV~zsYrPxfhyFJLupbjsRyDQ3R24asCcFHLJvltRZ~A__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA','null','null','null',0,0,'20','both','start',3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-22 06:09:34',1,1,'2021-12-22 06:09:32','2021-12-22 06:21:30',NULL,NULL),(51,'VerticalList','planDetailsContentList',1,33,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'0','both','start',3,5,0,'null','null','null','null',0,0,'',1,0,0,NULL,NULL,NULL,'en','2021-12-22 06:17:56',1,1,'2021-12-22 06:17:39','2021-12-28 06:19:01',NULL,NULL),(52,'Label','chooseSimType',1,34,'null','choose esim or physical sim',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both','center',3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-22 06:19:14',1,1,'2021-12-22 06:19:09','2021-12-22 06:24:58',NULL,NULL),(53,'Label','nationalBenefitsLabel',1,35,'null','National benefits',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-22 06:37:18',1,1,'2021-12-22 06:37:15','2021-12-22 06:37:18',NULL,NULL),(54,'Grid','planDetailsDataGrid',1,40,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both','center',2,1,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-22 06:46:07',1,1,'2021-12-22 06:40:51','2021-12-22 07:30:20',NULL,NULL),(55,'Label','planDetailsDataText',1,36,NULL,'Data',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-22 06:52:21',1,1,'2021-12-22 06:52:18','2021-12-22 06:53:07',NULL,NULL),(56,'Label','planDetailsData',1,37,NULL,'5 GB   3GB',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-22 06:55:37',1,1,'2021-12-22 06:55:34','2021-12-22 07:01:19',NULL,NULL),(57,'Label','planDetailsDataDescription1',1,NULL,'null','Carry over feature works as carrying over the unused data to one month only with maximum 150 GB.',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-22 07:04:35',1,1,'2021-12-22 07:04:33','2021-12-22 07:09:40',NULL,NULL),(58,'Label','planDetailsDataDescription2',1,NULL,'null','Double local data available from 1 May, 2021 until 31 May, 2021.',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-22 07:04:56',1,1,'2021-12-22 07:04:54','2021-12-22 07:10:05',NULL,NULL),(59,'VerticalList','planDetailsDataDescriptionList',1,38,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'10','both',NULL,3,5,0,'null','null','null','null',0,0,'',1,0,0,NULL,NULL,NULL,'en','2021-12-22 07:05:17',1,1,'2021-12-22 07:05:14','2021-12-22 07:09:05',NULL,NULL),(60,'Image','wifiImage',1,39,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','wifi','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-22 07:23:11',1,1,'2021-12-22 07:23:07','2021-12-22 07:30:00',NULL,NULL),(61,'VerticalList','planDetailsDescriptionList',1,41,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'0','both',NULL,3,5,0,'null','null','null','null',0,0,'',1,0,0,NULL,NULL,NULL,'en','2021-12-22 07:46:29',1,1,'2021-12-22 07:33:12','2021-12-22 08:09:31',NULL,NULL),(62,'Image','helpImage',1,39,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','help','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-22 07:45:13',1,1,'2021-12-22 07:45:09','2021-12-22 07:45:13',NULL,NULL),(63,'Label','socialMediaLabel',1,36,'null','Social media',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-22 07:49:24',1,1,'2021-12-22 07:49:21','2021-12-22 07:49:24',NULL,NULL),(64,'Label','planDetailsSocielMediaData',1,37,NULL,'10 GB',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-22 07:50:13',1,1,'2021-12-22 07:50:10','2021-12-22 07:50:13',NULL,NULL),(65,'Grid','planDetailsSocielMediaGrid',1,40,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both','center',2,1,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-22 07:50:47',1,1,'2021-12-22 07:50:44','2021-12-22 07:50:47',NULL,NULL),(66,'Label','planDetailsSocielMediaDescription1',1,NULL,'null','Unlimited Social Media is limited to Apps and main SIM only.',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-22 07:52:01',1,1,'2021-12-22 07:51:58','2021-12-22 07:52:01',NULL,NULL),(67,'Label','planDetailsSocielMediaDescription2',1,NULL,'null','The included social media apps: Twitter, Instagram, Snapchat, Facebook, WhatsApp, and YouTube.',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-22 07:52:30',1,1,'2021-12-22 07:52:27','2021-12-22 07:52:30',NULL,NULL),(68,'VerticalList','planDetailsSocielMediaDescriptionList',1,38,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'10','both',NULL,3,5,0,'null','null','null','null',0,0,'',1,0,0,NULL,NULL,NULL,'en','2021-12-22 07:53:23',1,1,'2021-12-22 07:53:21','2021-12-22 07:53:23',NULL,NULL),(69,'Image','phoneImage',1,39,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','phone','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-22 07:54:22',1,1,'2021-12-22 07:54:20','2021-12-22 07:54:23',NULL,NULL),(70,'Label','planDetailsMinutesText',1,36,NULL,'Minutes',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-22 07:55:38',1,1,'2021-12-22 07:55:36','2021-12-22 07:55:38',NULL,NULL),(71,'Label','planDetailsMinutes',1,37,NULL,'300',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-22 07:56:07',1,1,'2021-12-22 07:56:04','2021-12-22 07:56:07',NULL,NULL),(72,'Grid','planDetailsMinutesGrid',1,40,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both','center',2,1,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-22 07:56:46',1,1,'2021-12-22 07:56:43','2021-12-22 07:59:39',NULL,NULL),(73,'Label','internationalBenefitsLabel',1,35,'null','International benefits',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-22 08:00:13',1,1,'2021-12-22 08:00:10','2021-12-22 08:00:13',NULL,NULL),(74,'Card','bottomBuyCard',1,42,'null','Buy',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-22 08:28:51',1,1,'2021-12-22 08:28:49','2021-12-22 09:13:51',NULL,NULL),(75,'Button','buyButton',1,43,'null','BUY',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-22 08:32:47',1,1,'2021-12-22 08:32:45','2021-12-28 06:46:32',NULL,NULL),(76,'Label','planDetailsSubscriptionLabel',1,45,'null','Subscription',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-22 09:07:24',1,1,'2021-12-22 09:07:22','2021-12-22 09:17:37',NULL,NULL),(77,'Label','planDetailsPrice',1,46,'null','200 ',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-22 09:07:55',1,1,'2021-12-22 09:07:52','2021-12-22 09:22:00',NULL,NULL),(78,'Grid','planDetailsPriceGrid',1,44,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,1,2,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-22 09:08:41',1,1,'2021-12-22 09:08:39','2021-12-22 09:21:40',NULL,NULL),(79,'Label','planDetailsPriceType',1,47,'null','SAR/per*',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-22 09:19:32',1,1,'2021-12-22 09:19:27','2021-12-22 09:22:56',NULL,NULL),(80,'Grid','planDetailsPriceTypeGrid',1,NULL,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,2,1,1,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-22 09:21:28',1,1,'2021-12-22 09:21:24','2021-12-22 09:21:28',NULL,NULL),(81,'Label','detailsPlanName',1,49,NULL,'${planName}',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text',NULL,NULL,NULL,'null','null',NULL,0,0,NULL,'both','center',3,5,0,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL,NULL,NULL,'en','2021-12-28 06:18:28',1,1,'2021-12-28 06:18:25','2021-12-28 06:18:28',NULL,NULL),(82,'Label','letsGetStratedLabel',1,55,'null','Let\'s get started',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-28 06:52:05',1,1,'2021-12-28 06:52:02','2021-12-28 07:50:49',NULL,NULL),(83,'Label','joinUsLabel',1,56,'null','How would you like to join us?',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-28 06:52:30',1,1,'2021-12-28 06:52:28','2021-12-28 07:53:09',NULL,NULL),(84,'Card','newNumberCard',1,50,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both','start',3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-28 06:53:58',1,1,'2021-12-28 06:53:12','2021-12-28 08:24:50',NULL,NULL),(85,'Card','keepNumberCard',1,50,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-28 06:54:24',1,1,'2021-12-28 06:54:22','2021-12-28 07:50:18',NULL,NULL),(86,'Image','newNumberImage',1,52,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null','https://cdn-icons.flaticon.com/png/512/3524/premium/3524388.png?token=exp=1638268031~hmac=56d762b082fc421ea1a610d0297a63f9','null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-28 06:57:29',1,1,'2021-12-28 06:57:27','2021-12-28 07:09:37',NULL,NULL),(87,'Image','keepNumberImage',1,52,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null','https://cdn-icons-png.flaticon.com/512/1828/1828743.png','null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-28 06:57:56',1,1,'2021-12-28 06:57:53','2021-12-28 07:10:03',NULL,NULL),(88,'Label','newNumberLabel',1,54,'null','New number',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-28 06:58:42',1,1,'2021-12-28 06:58:40','2021-12-28 07:48:50',NULL,NULL),(89,'Label','newNumberHintLabel',1,NULL,'null','Get a a new number from Mobily',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-28 06:59:06',1,1,'2021-12-28 06:59:03','2021-12-28 06:59:12',NULL,NULL),(90,'Image','rightArrowImage',1,52,'null','',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','frontArrow','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-28 06:59:42',1,1,'2021-12-28 06:59:40','2021-12-28 07:25:41',NULL,NULL),(91,'VerticalList','newNumberContentList',1,53,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'10','both',NULL,3,5,0,'null','null','null','null',0,0,'#00000000',1,0,0,NULL,NULL,NULL,'en','2021-12-28 07:00:21',1,1,'2021-12-28 07:00:18','2021-12-28 07:32:01',NULL,NULL),(92,'Grid','newNumberGrid',1,51,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both','center',3,1,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-28 07:00:44',1,1,'2021-12-28 07:00:42','2021-12-28 08:20:47',NULL,NULL),(93,'Label','keepNumberLabel',1,54,'null','Keep my number',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-28 07:01:34',1,1,'2021-12-28 07:01:33','2021-12-28 07:47:19',NULL,NULL),(94,'Label','keepNumberHintLabel',1,NULL,'null','Tranfer your number to Mobily',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-28 07:02:04',1,1,'2021-12-28 07:01:47','2021-12-28 07:02:04',NULL,NULL),(95,'VerticalList','keepNumberContentList',1,53,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'10','both','start',3,5,0,'null','null','null','null',0,0,'#00000000',1,0,0,NULL,NULL,NULL,'en','2021-12-28 07:02:26',1,1,'2021-12-28 07:02:24','2021-12-28 07:44:28',NULL,NULL),(96,'Grid','keepNumberGrid',1,51,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both','center',3,1,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-28 07:03:14',1,1,'2021-12-28 07:03:02','2021-12-28 07:43:50',NULL,NULL),(97,'Card','testCard',1,58,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-28 08:22:36',1,1,'2021-12-28 08:22:29','2021-12-28 08:23:40',NULL,NULL),(98,'Label','chooseNumberLabel',1,60,'null','Choose your number',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-28 08:45:10',1,1,'2021-12-28 08:45:07','2021-12-28 09:04:40',NULL,NULL),(99,'Image','chooseNumberImage',1,61,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-28 08:45:42',1,1,'2021-12-28 08:45:40','2021-12-28 09:05:12',NULL,NULL),(100,'VerticalList','numbersList',1,NULL,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-28 08:46:20',1,1,'2021-12-28 08:46:18','2021-12-28 09:17:15',2,'${response.appliedResourceCapacity.resource}'),(101,'Hyperlink','numberHyperLink',1,59,'null','${data.id}',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-28 08:47:49',1,1,'2021-12-28 08:47:48','2021-12-28 09:13:14',NULL,NULL),(102,'Card','confirmationAlertCard',1,NULL,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-28 08:51:18',1,1,'2021-12-28 08:51:17','2021-12-28 08:51:18',NULL,NULL),(103,'Card','numberCard',1,62,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-28 09:16:53',1,1,'2021-12-28 09:16:50','2021-12-28 09:40:04',NULL,NULL),(104,'Label','numberLabel',1,63,'null','${data.id}',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both',NULL,3,5,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-28 09:17:40',1,1,'2021-12-28 09:17:32','2021-12-28 09:41:06',NULL,NULL),(105,'Grid','numberGrid',1,NULL,'null','null',NULL,0,NULL,0,NULL,'null',NULL,NULL,'text','null','null',NULL,'null','null','null',0,0,'20','both','end',2,1,0,'null','null','null','null',0,0,'null',1,0,0,NULL,NULL,NULL,'en','2021-12-28 09:18:43',1,1,'2021-12-28 09:18:20','2021-12-28 09:40:35',NULL,NULL);
/*!40000 ALTER TABLE `base_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_components__action_ar`
--

DROP TABLE IF EXISTS `base_components__action_ar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_components__action_ar` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `base_component_id` int(11) DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_components__action_ar`
--

LOCK TABLES `base_components__action_ar` WRITE;
/*!40000 ALTER TABLE `base_components__action_ar` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_components__action_ar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_components__components`
--

DROP TABLE IF EXISTS `base_components__components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_components__components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `base_component_id` int(11) DEFAULT NULL,
  `child-component_id` int(11) DEFAULT NULL,
  `base-component_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_components__components`
--

LOCK TABLES `base_components__components` WRITE;
/*!40000 ALTER TABLE `base_components__components` DISABLE KEYS */;
INSERT INTO `base_components__components` VALUES (2,2,NULL,3),(3,2,NULL,4),(4,10,NULL,8),(5,10,NULL,9),(6,7,NULL,10),(7,6,NULL,7),(8,13,NULL,14),(12,13,NULL,23),(13,12,NULL,13),(15,6,NULL,11),(16,11,NULL,12),(17,13,NULL,17),(18,13,NULL,18),(19,13,NULL,19),(20,13,NULL,20),(21,13,NULL,21),(22,13,NULL,24),(23,12,NULL,25),(24,28,NULL,29),(25,28,NULL,30),(29,25,NULL,27),(30,27,NULL,26),(32,27,NULL,28),(33,25,NULL,31),(37,33,NULL,34),(38,33,NULL,11),(39,35,NULL,36),(40,35,NULL,37),(41,35,NULL,38),(42,35,NULL,39),(43,35,NULL,40),(44,35,NULL,41),(45,35,NULL,42),(46,35,NULL,43),(47,35,NULL,44),(48,35,NULL,45),(51,46,NULL,48),(52,46,NULL,47),(53,34,NULL,46),(54,51,NULL,52),(55,50,NULL,51),(58,51,NULL,23),(59,51,NULL,17),(60,51,NULL,18),(61,51,NULL,19),(62,51,NULL,20),(63,51,NULL,21),(66,54,NULL,55),(67,54,NULL,56),(68,59,NULL,57),(69,59,NULL,58),(74,61,NULL,53),(75,61,NULL,60),(76,61,NULL,54),(78,61,NULL,59),(79,61,NULL,16),(80,61,NULL,62),(81,65,NULL,63),(82,65,NULL,64),(83,61,NULL,65),(84,68,NULL,66),(85,68,NULL,67),(86,61,NULL,68),(89,61,NULL,69),(90,61,NULL,72),(92,72,NULL,70),(93,72,NULL,71),(94,61,NULL,73),(96,78,NULL,76),(98,74,NULL,78),(100,74,NULL,75),(101,80,NULL,77),(102,80,NULL,79),(103,78,NULL,80),(104,51,NULL,81),(105,91,NULL,88),(106,91,NULL,89),(112,96,NULL,87),(113,96,NULL,95),(114,96,NULL,90),(118,85,NULL,96),(129,92,NULL,86),(130,92,NULL,91),(131,92,NULL,90),(135,95,NULL,93),(136,95,NULL,94),(137,84,NULL,92),(139,100,NULL,103),(140,105,NULL,104),(141,105,NULL,90),(142,103,NULL,105);
/*!40000 ALTER TABLE `base_components__components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_components__components_list`
--

DROP TABLE IF EXISTS `base_components__components_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_components__components_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `base_component_id` int(11) DEFAULT NULL,
  `expandable-item_id` int(11) DEFAULT NULL,
  `base-component_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_components__components_list`
--

LOCK TABLES `base_components__components_list` WRITE;
/*!40000 ALTER TABLE `base_components__components_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_components__components_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_components__fail_components`
--

DROP TABLE IF EXISTS `base_components__fail_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_components__fail_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `base_component_id` int(11) DEFAULT NULL,
  `child-component_id` int(11) DEFAULT NULL,
  `base-component_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_components__fail_components`
--

LOCK TABLES `base_components__fail_components` WRITE;
/*!40000 ALTER TABLE `base_components__fail_components` DISABLE KEYS */;
INSERT INTO `base_components__fail_components` VALUES (10,5,NULL,33),(11,5,NULL,49);
/*!40000 ALTER TABLE `base_components__fail_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_components__localizations`
--

DROP TABLE IF EXISTS `base_components__localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_components__localizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `base_component_id` int(11) DEFAULT NULL,
  `base-component_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_components__localizations`
--

LOCK TABLES `base_components__localizations` WRITE;
/*!40000 ALTER TABLE `base_components__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_components__localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_components__on_click`
--

DROP TABLE IF EXISTS `base_components__on_click`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_components__on_click` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `base_component_id` int(11) DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_components__on_click`
--

LOCK TABLES `base_components__on_click` WRITE;
/*!40000 ALTER TABLE `base_components__on_click` DISABLE KEYS */;
INSERT INTO `base_components__on_click` VALUES (1,2,1),(6,9,3),(8,48,4),(9,12,6),(11,12,2),(12,75,7),(13,84,8),(14,85,9),(16,97,9),(17,101,10),(18,103,10);
/*!40000 ALTER TABLE `base_components__on_click` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_components__on_fail`
--

DROP TABLE IF EXISTS `base_components__on_fail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_components__on_fail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `base_component_id` int(11) DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_components__on_fail`
--

LOCK TABLES `base_components__on_fail` WRITE;
/*!40000 ALTER TABLE `base_components__on_fail` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_components__on_fail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_components__on_success`
--

DROP TABLE IF EXISTS `base_components__on_success`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_components__on_success` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `base_component_id` int(11) DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_components__on_success`
--

LOCK TABLES `base_components__on_success` WRITE;
/*!40000 ALTER TABLE `base_components__on_success` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_components__on_success` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_components__success_components`
--

DROP TABLE IF EXISTS `base_components__success_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_components__success_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `base_component_id` int(11) DEFAULT NULL,
  `child-component_id` int(11) DEFAULT NULL,
  `base-component_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_components__success_components`
--

LOCK TABLES `base_components__success_components` WRITE;
/*!40000 ALTER TABLE `base_components__success_components` DISABLE KEYS */;
INSERT INTO `base_components__success_components` VALUES (4,5,NULL,6),(5,5,NULL,32);
/*!40000 ALTER TABLE `base_components__success_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodies`
--

DROP TABLE IF EXISTS `bodies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `style` int(11) DEFAULT NULL,
  `styleId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spacing` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bottom` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `bodyName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodies`
--

LOCK TABLES `bodies` WRITE;
/*!40000 ALTER TABLE `bodies` DISABLE KEYS */;
INSERT INTO `bodies` VALUES (1,NULL,NULL,'20',NULL,'en','2021-12-20 08:01:20',1,1,'2021-12-20 08:01:11','2021-12-20 09:01:05','MainPageBody'),(2,NULL,NULL,'20',NULL,'en','2021-12-20 09:05:25',1,1,'2021-12-20 09:00:45','2021-12-21 13:59:34','mobilyPlansBody'),(3,NULL,NULL,'0',74,'en','2021-12-22 07:26:43',1,1,'2021-12-21 10:51:26','2021-12-22 08:29:00',NULL),(4,57,NULL,'20',NULL,'en','2021-12-28 06:48:29',1,1,'2021-12-28 06:48:27','2021-12-28 08:24:07',NULL),(5,57,NULL,'20',NULL,'en','2021-12-28 08:32:32',1,1,'2021-12-28 08:32:30','2021-12-28 09:07:08',NULL);
/*!40000 ALTER TABLE `bodies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodies__base_components`
--

DROP TABLE IF EXISTS `bodies__base_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodies__base_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body_id` int(11) DEFAULT NULL,
  `base-component_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodies__base_components`
--

LOCK TABLES `bodies__base_components` WRITE;
/*!40000 ALTER TABLE `bodies__base_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `bodies__base_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodies__components`
--

DROP TABLE IF EXISTS `bodies__components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodies__components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body_id` int(11) DEFAULT NULL,
  `base-component_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodies__components`
--

LOCK TABLES `bodies__components` WRITE;
/*!40000 ALTER TABLE `bodies__components` DISABLE KEYS */;
INSERT INTO `bodies__components` VALUES (1,1,2),(4,2,5),(5,2,35),(6,3,50),(35,3,61),(36,4,82),(37,4,83),(38,4,84),(39,4,85),(41,5,99),(42,5,98),(43,5,100);
/*!40000 ALTER TABLE `bodies__components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodies__localizations`
--

DROP TABLE IF EXISTS `bodies__localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodies__localizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body_id` int(11) DEFAULT NULL,
  `related_body_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodies__localizations`
--

LOCK TABLES `bodies__localizations` WRITE;
/*!40000 ALTER TABLE `bodies__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `bodies__localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bottoms`
--

DROP TABLE IF EXISTS `bottoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bottoms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `style` int(11) DEFAULT NULL,
  `styleId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bottoms`
--

LOCK TABLES `bottoms` WRITE;
/*!40000 ALTER TABLE `bottoms` DISABLE KEYS */;
/*!40000 ALTER TABLE `bottoms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bottoms__items`
--

DROP TABLE IF EXISTS `bottoms__items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bottoms__items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bottom_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bottoms__items`
--

LOCK TABLES `bottoms__items` WRITE;
/*!40000 ALTER TABLE `bottoms__items` DISABLE KEYS */;
/*!40000 ALTER TABLE `bottoms__items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bottoms__localizations`
--

DROP TABLE IF EXISTS `bottoms__localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bottoms__localizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bottom_id` int(11) DEFAULT NULL,
  `related_bottom_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bottoms__localizations`
--

LOCK TABLES `bottoms__localizations` WRITE;
/*!40000 ALTER TABLE `bottoms__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `bottoms__localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child_components`
--

DROP TABLE IF EXISTS `child_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `child_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text CHARACTER SET utf8mb4,
  `visible` tinyint(1) DEFAULT NULL,
  `style` int(11) DEFAULT NULL,
  `styleId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `textAr` longtext COLLATE utf8mb4_unicode_ci,
  `action` int(11) DEFAULT NULL,
  `disableArrow` tinyint(1) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `onChange` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min` int(11) DEFAULT NULL,
  `max` int(11) DEFAULT NULL,
  `inputType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validationError` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `src` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drawable` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enableJavascript` tinyint(1) DEFAULT NULL,
  `allowRedirection` tinyint(1) DEFAULT NULL,
  `spacing` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_components`
--

LOCK TABLES `child_components` WRITE;
/*!40000 ALTER TABLE `child_components` DISABLE KEYS */;
INSERT INTO `child_components` VALUES (1,'null','null?',1,NULL,'null','null',NULL,NULL,0,0,'null','null','null',NULL,NULL,'text','null','null','null','null','null','null',0,0,'20','both','en',NULL,1,1,'2021-12-29 13:27:25','2021-12-29 14:00:01');
/*!40000 ALTER TABLE `child_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child_components__action_ar`
--

DROP TABLE IF EXISTS `child_components__action_ar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `child_components__action_ar` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `child_component_id` int(11) DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_components__action_ar`
--

LOCK TABLES `child_components__action_ar` WRITE;
/*!40000 ALTER TABLE `child_components__action_ar` DISABLE KEYS */;
/*!40000 ALTER TABLE `child_components__action_ar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child_components__localizations`
--

DROP TABLE IF EXISTS `child_components__localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `child_components__localizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `child_component_id` int(11) DEFAULT NULL,
  `child-component_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_components__localizations`
--

LOCK TABLES `child_components__localizations` WRITE;
/*!40000 ALTER TABLE `child_components__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `child_components__localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child_components__on_click`
--

DROP TABLE IF EXISTS `child_components__on_click`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `child_components__on_click` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `child_component_id` int(11) DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_components__on_click`
--

LOCK TABLES `child_components__on_click` WRITE;
/*!40000 ALTER TABLE `child_components__on_click` DISABLE KEYS */;
/*!40000 ALTER TABLE `child_components__on_click` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configurations`
--

DROP TABLE IF EXISTS `configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configurations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `displayMode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preserverLastLocation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hideComponentWhileLoading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainPage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updateOn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `preserveLastLocation` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configurations`
--

LOCK TABLES `configurations` WRITE;
/*!40000 ALTER TABLE `configurations` DISABLE KEYS */;
INSERT INTO `configurations` VALUES (1,'light','1','true','main','realTime','en','2021-12-20 09:02:32',1,1,'2021-12-20 09:02:30','2021-12-21 09:53:01',1);
/*!40000 ALTER TABLE `configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configurations__localizations`
--

DROP TABLE IF EXISTS `configurations__localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configurations__localizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `configuration_id` int(11) DEFAULT NULL,
  `related_configuration_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configurations__localizations`
--

LOCK TABLES `configurations__localizations` WRITE;
/*!40000 ALTER TABLE `configurations__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `configurations__localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configurations__shortcuts`
--

DROP TABLE IF EXISTS `configurations__shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configurations__shortcuts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `configuration_id` int(11) DEFAULT NULL,
  `shortcut_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configurations__shortcuts`
--

LOCK TABLES `configurations__shortcuts` WRITE;
/*!40000 ALTER TABLE `configurations__shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `configurations__shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_store`
--

DROP TABLE IF EXISTS `core_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_store`
--

LOCK TABLES `core_store` WRITE;
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;
INSERT INTO `core_store` VALUES (1,'model_def_strapi::core-store','{\"uid\":\"strapi::core-store\",\"collectionName\":\"core_store\",\"info\":{\"name\":\"core_store\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}}','object',NULL,NULL),(2,'model_def_application::action.action','{\"uid\":\"application::action.action\",\"collectionName\":\"actions\",\"kind\":\"collectionType\",\"info\":{\"name\":\"action\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true,\"privateAttributes\":[\"published_at\",\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"actionType\":{\"type\":\"string\",\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"style\":{\"model\":\"style\"},\"styleId\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"description\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"components\":{\"collection\":\"base-component\",\"attribute\":\"base-component\",\"column\":\"id\",\"isVirtual\":true},\"url\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"authorization\":{\"model\":\"authorization\"},\"header\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"json\"},\"body\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"json\"},\"onSuccess\":{\"collection\":\"action\",\"attribute\":\"related_action\",\"column\":\"id\",\"isVirtual\":true},\"onFail\":{\"collection\":\"action\",\"attribute\":\"related_action\",\"column\":\"id\",\"isVirtual\":true},\"message\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"pageId\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"addToBackstack\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"boolean\",\"default\":true},\"popBack\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"boolean\",\"default\":false},\"variableId\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"value\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"action\",\"populate\":[\"_id\",\"id\",\"locale\",\"published_at\"],\"attribute\":\"related_action\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(3,'model_def_application::api-call.api-call','{\"uid\":\"application::api-call.api-call\",\"collectionName\":\"api_calls\",\"kind\":\"collectionType\",\"info\":{\"name\":\"APICall\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"url\":{\"type\":\"string\"},\"method\":{\"type\":\"enumeration\",\"enum\":[\"GET\",\"POST\",\"FORM\"],\"default\":\"GET\"},\"authorization\":{\"model\":\"authorization\"},\"header\":{\"type\":\"json\"},\"body\":{\"type\":\"json\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(4,'model_def_application::application.application','{\"uid\":\"application::application.application\",\"collectionName\":\"applications\",\"kind\":\"collectionType\",\"info\":{\"name\":\"application\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true,\"privateAttributes\":[\"published_at\",\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"lang\":{\"type\":\"enumeration\",\"enum\":[\"EN\",\"AR\"],\"default\":\"EN\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"data\":{\"collection\":\"variable\",\"attribute\":\"variable\",\"column\":\"id\",\"isVirtual\":true},\"config\":{\"model\":\"configuration\"},\"themes\":{\"collection\":\"theme\",\"attribute\":\"theme\",\"column\":\"id\",\"isVirtual\":true},\"pages\":{\"collection\":\"page\",\"attribute\":\"page\",\"column\":\"id\",\"isVirtual\":true},\"version\":{\"type\":\"string\",\"unique\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"application\",\"populate\":[\"_id\",\"id\",\"locale\",\"published_at\"],\"attribute\":\"related_application\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(5,'model_def_application::authorization.authorization','{\"uid\":\"application::authorization.authorization\",\"collectionName\":\"authorizations\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Authorization\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"authType\":{\"type\":\"string\"},\"token\":{\"type\":\"string\"},\"username\":{\"type\":\"string\"},\"password\":{\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(6,'model_def_application::base-component.base-component','{\"uid\":\"application::base-component.base-component\",\"collectionName\":\"base_components\",\"kind\":\"collectionType\",\"info\":{\"name\":\"baseComponent\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true,\"privateAttributes\":[\"published_at\",\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"name\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"visible\":{\"type\":\"boolean\",\"default\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"style\":{\"model\":\"style\"},\"styleId\":{\"type\":\"string\",\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"text\":{\"type\":\"string\",\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"textAr\":{\"type\":\"json\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"disabled\":{\"type\":\"boolean\",\"default\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"action\":{\"model\":\"action\"},\"actionAr\":{\"collection\":\"action\",\"attribute\":\"action\",\"column\":\"id\",\"isVirtual\":true},\"onClick\":{\"collection\":\"action\",\"attribute\":\"action\",\"column\":\"id\",\"isVirtual\":true},\"disableArrow\":{\"type\":\"boolean\",\"default\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"placeholder\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"onChange\":{\"type\":\"string\",\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"min\":{\"type\":\"integer\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"max\":{\"type\":\"integer\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"inputType\":{\"type\":\"enumeration\",\"enum\":[\"text\",\"password\",\"email\",\"number\"],\"default\":\"text\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"validation\":{\"type\":\"string\",\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"validationError\":{\"type\":\"string\",\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"alt\":{\"type\":\"string\",\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"drawable\":{\"type\":\"enumeration\",\"enum\":[\"rightArrow\",\"frontArrow\",\"backArrow\",\"fastShipping\",\"lighting\",\"rollOver\",\"wifi\",\"phone\",\"help\",\"email\",\"null\"],\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"url\":{\"type\":\"string\",\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"enableJavascript\":{\"type\":\"boolean\",\"default\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"allowRedirection\":{\"type\":\"boolean\",\"default\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"spacing\":{\"type\":\"string\",\"default\":\"20\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"direction\":{\"type\":\"enumeration\",\"enum\":[\"horizontal\",\"vertical\",\"both\"],\"default\":\"both\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"alignItems\":{\"type\":\"enumeration\",\"enum\":[\"start\",\"center\",\"end\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"columns\":{\"type\":\"integer\",\"default\":3,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"rows\":{\"type\":\"integer\",\"default\":5,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"bound\":{\"type\":\"boolean\",\"default\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"value1\":{\"type\":\"string\",\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"value2\":{\"type\":\"string\",\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"conditionType\":{\"type\":\"string\",\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"onSuccess\":{\"collection\":\"action\",\"attribute\":\"action\",\"column\":\"id\",\"isVirtual\":true},\"onFail\":{\"collection\":\"action\",\"attribute\":\"action\",\"column\":\"id\",\"isVirtual\":true},\"searchVariableId\":{\"type\":\"string\",\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"autoCollapse\":{\"type\":\"boolean\",\"default\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"scrollable\":{\"type\":\"boolean\",\"default\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"breakLine\":{\"type\":\"string\",\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"autoSnap\":{\"type\":\"boolean\",\"default\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"scaleAnimation\":{\"type\":\"boolean\",\"default\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"centerProduct\":{\"type\":\"boolean\",\"default\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"value\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"components\":{\"collection\":\"base-component\",\"attribute\":\"base-component\",\"column\":\"id\",\"isVirtual\":true},\"titleComponent\":{\"model\":\"base-component\"},\"bottomComponent\":{\"model\":\"base-component\"},\"successComponents\":{\"collection\":\"base-component\",\"attribute\":\"base-component\",\"column\":\"id\",\"isVirtual\":true},\"failComponents\":{\"collection\":\"base-component\",\"attribute\":\"base-component\",\"column\":\"id\",\"isVirtual\":true},\"componentsList\":{\"collection\":\"expandable-item\",\"attribute\":\"expandable-item\",\"column\":\"id\",\"isVirtual\":true},\"src\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"text\"},\"api\":{\"model\":\"api-call\"},\"apiListPath\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"type\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"enumeration\",\"enum\":[\"Label\",\"Hyperlink\",\"Button\",\"TextInput\",\"SwitchInput\",\"Image\",\"WebView\",\"Space\",\"Card\",\"Container\",\"Grid\",\"Condition\",\"ExpandableList\",\"HorizontalList\",\"VerticalList\",\"ProductsList\"]},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"base-component\",\"populate\":[\"_id\",\"id\",\"locale\",\"published_at\"],\"attribute\":\"base-component\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(7,'model_def_application::body.body','{\"uid\":\"application::body.body\",\"collectionName\":\"bodies\",\"kind\":\"collectionType\",\"info\":{\"name\":\"body\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true,\"privateAttributes\":[\"published_at\",\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"style\":{\"model\":\"style\"},\"styleId\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"spacing\":{\"type\":\"string\",\"default\":\"20\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"bottom\":{\"model\":\"base-component\"},\"components\":{\"collection\":\"base-component\",\"attribute\":\"base-component\",\"column\":\"id\",\"isVirtual\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"body\",\"populate\":[\"_id\",\"id\",\"locale\",\"published_at\"],\"attribute\":\"related_body\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(8,'model_def_application::bottom.bottom','{\"uid\":\"application::bottom.bottom\",\"collectionName\":\"bottoms\",\"kind\":\"collectionType\",\"info\":{\"name\":\"bottom\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true,\"privateAttributes\":[\"published_at\",\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"items\":{\"collection\":\"item\",\"attribute\":\"item\",\"column\":\"id\",\"isVirtual\":true},\"style\":{\"model\":\"style\"},\"styleId\":{\"type\":\"string\",\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"bottom\",\"populate\":[\"_id\",\"id\",\"locale\",\"published_at\"],\"attribute\":\"related_bottom\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(9,'model_def_application::child-component.child-component','{\"uid\":\"application::child-component.child-component\",\"collectionName\":\"child_components\",\"kind\":\"collectionType\",\"info\":{\"name\":\"childComponent\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true,\"privateAttributes\":[\"published_at\",\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"name\":{\"type\":\"string\",\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"visible\":{\"type\":\"boolean\",\"default\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"style\":{\"model\":\"style\"},\"styleId\":{\"type\":\"string\",\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"text\":{\"type\":\"string\",\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"textAr\":{\"type\":\"json\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"action\":{\"model\":\"action\"},\"onClick\":{\"collection\":\"action\",\"attribute\":\"action\",\"column\":\"id\",\"isVirtual\":true},\"disableArrow\":{\"type\":\"boolean\",\"default\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"disabled\":{\"type\":\"boolean\",\"default\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"actionAr\":{\"collection\":\"action\",\"attribute\":\"action\",\"column\":\"id\",\"isVirtual\":true},\"value\":{\"type\":\"string\",\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"placeholder\":{\"type\":\"string\",\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"onChange\":{\"type\":\"string\",\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"min\":{\"type\":\"integer\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"max\":{\"type\":\"integer\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"inputType\":{\"type\":\"enumeration\",\"enum\":[\"text\",\"password\",\"email\",\"number\"],\"default\":\"text\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"validation\":{\"type\":\"string\",\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"validationError\":{\"type\":\"string\",\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"src\":{\"type\":\"string\",\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"alt\":{\"type\":\"string\",\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"drawable\":{\"type\":\"enumeration\",\"enum\":[\"rightArrow\",\"frontArrow\",\"backArrow\",\"fastShipping\",\"lighting\",\"rollOver\",\"null\"],\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"url\":{\"type\":\"string\",\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"enableJavascript\":{\"type\":\"boolean\",\"default\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"allowRedirection\":{\"type\":\"boolean\",\"default\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"spacing\":{\"type\":\"string\",\"default\":\"20\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"direction\":{\"type\":\"enumeration\",\"enum\":[\"horizontal\",\"vertical\",\"both\"],\"default\":\"both\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"child-component\",\"populate\":[\"_id\",\"id\",\"locale\",\"published_at\"],\"attribute\":\"child-component\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(10,'model_def_application::configuration.configuration','{\"uid\":\"application::configuration.configuration\",\"collectionName\":\"configurations\",\"kind\":\"collectionType\",\"info\":{\"name\":\"configuration\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true,\"privateAttributes\":[\"published_at\",\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"displayMode\":{\"type\":\"enumeration\",\"enum\":[\"dark\",\"light\",\"followSystem\"],\"default\":\"light\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"hideComponentWhileLoading\":{\"type\":\"enumeration\",\"enum\":[\"true\",\"false\"],\"default\":\"true\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"mainPage\":{\"type\":\"string\",\"default\":\"main\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"updateOn\":{\"type\":\"enumeration\",\"enum\":[\"realTime\",\"resume\",\"start\"],\"default\":\"realTime\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"shortcuts\":{\"collection\":\"shortcut\",\"attribute\":\"shortcut\",\"column\":\"id\",\"isVirtual\":true},\"preserveLastLocation\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"boolean\",\"default\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"configuration\",\"populate\":[\"_id\",\"id\",\"locale\",\"published_at\"],\"attribute\":\"related_configuration\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(11,'model_def_application::expandable-item.expandable-item','{\"uid\":\"application::expandable-item.expandable-item\",\"collectionName\":\"expandable_items\",\"kind\":\"collectionType\",\"info\":{\"name\":\"expandableItem\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true,\"privateAttributes\":[\"published_at\",\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"titleComponent\":{\"model\":\"base-component\"},\"bodyComponent\":{\"model\":\"base-component\"},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"expandable-item\",\"populate\":[\"_id\",\"id\",\"locale\",\"published_at\"],\"attribute\":\"expandable-item\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(12,'model_def_application::item.item','{\"uid\":\"application::item.item\",\"collectionName\":\"items\",\"kind\":\"collectionType\",\"info\":{\"name\":\"item\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true,\"privateAttributes\":[\"published_at\",\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"text\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"src\":{\"type\":\"string\",\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"action\":{\"model\":\"action\"},\"selected\":{\"type\":\"boolean\",\"default\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"item\",\"populate\":[\"_id\",\"id\",\"locale\",\"published_at\"],\"attribute\":\"related_item\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(13,'model_def_application::orientation.orientation','{\"uid\":\"application::orientation.orientation\",\"collectionName\":\"orientations\",\"kind\":\"collectionType\",\"info\":{\"name\":\"orientation\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true,\"privateAttributes\":[\"published_at\",\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"top\":{\"type\":\"integer\",\"default\":-1,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"end\":{\"type\":\"integer\",\"default\":-1,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"bottom\":{\"type\":\"integer\",\"default\":-1,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"start\":{\"type\":\"integer\",\"default\":-1,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"all\":{\"type\":\"integer\",\"default\":-1,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"orientation\",\"populate\":[\"_id\",\"id\",\"locale\",\"published_at\"],\"attribute\":\"related_orientation\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(14,'model_def_application::page.page','{\"uid\":\"application::page.page\",\"collectionName\":\"pages\",\"kind\":\"collectionType\",\"info\":{\"name\":\"page\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true,\"privateAttributes\":[\"published_at\",\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"pageId\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"themeId\":{\"type\":\"string\",\"default\":\"main\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"titleBar\":{\"model\":\"titlebar\"},\"body\":{\"model\":\"body\"},\"bottom\":{\"model\":\"bottom\"},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"page\",\"populate\":[\"_id\",\"id\",\"locale\",\"published_at\"],\"attribute\":\"related_page\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(15,'model_def_application::shortcut.shortcut','{\"uid\":\"application::shortcut.shortcut\",\"collectionName\":\"shortcuts\",\"kind\":\"collectionType\",\"info\":{\"name\":\"shortcut\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true,\"privateAttributes\":[\"published_at\",\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"label\":{\"type\":\"string\",\"default\":\" \",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"description\":{\"type\":\"string\",\"default\":\" \",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"icon\":{\"type\":\"string\",\"required\":true,\"default\":\"null\",\"unique\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"pageId\":{\"type\":\"string\",\"unique\":false,\"required\":true,\"default\":\" \",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"shortcut\",\"populate\":[\"_id\",\"id\",\"locale\",\"published_at\"],\"attribute\":\"related_shortcut\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(16,'model_def_application::style.style','{\"uid\":\"application::style.style\",\"collectionName\":\"styles\",\"kind\":\"collectionType\",\"info\":{\"name\":\"style\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true,\"privateAttributes\":[\"published_at\",\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"styleId\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"height\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"width\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"margin\":{\"model\":\"orientation\"},\"padding\":{\"model\":\"orientation\"},\"backgroundColor\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"textSize\":{\"type\":\"decimal\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"textColor\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"textStyle\":{\"type\":\"enumeration\",\"enum\":[\"normal\",\"bold\",\"italic\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"alignText\":{\"type\":\"enumeration\",\"enum\":[\"start\",\"center\",\"end\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"alignSelf\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"cornerRadius\":{\"type\":\"decimal\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"imageColor\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"blur\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"float\"},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"style\",\"populate\":[\"_id\",\"id\",\"locale\",\"published_at\"],\"attribute\":\"related_style\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(17,'model_def_application::theme.theme','{\"uid\":\"application::theme.theme\",\"collectionName\":\"themes\",\"kind\":\"collectionType\",\"info\":{\"name\":\"theme\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true,\"privateAttributes\":[\"published_at\",\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"themeId\":{\"type\":\"string\",\"default\":\"main\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"themeMode\":{\"type\":\"enumeration\",\"enum\":[\"light\",\"dark\",\"null\"],\"default\":\"null\",\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"styles\":{\"collection\":\"style\",\"attribute\":\"style\",\"column\":\"id\",\"isVirtual\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"theme\",\"populate\":[\"_id\",\"id\",\"locale\",\"published_at\"],\"attribute\":\"related_theme\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(18,'model_def_application::titlebar.titlebar','{\"uid\":\"application::titlebar.titlebar\",\"collectionName\":\"titlebars\",\"kind\":\"collectionType\",\"info\":{\"name\":\"titlebar\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true,\"privateAttributes\":[\"published_at\",\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"style\":{\"model\":\"style\"},\"styleId\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"disableBackButton\":{\"type\":\"boolean\",\"default\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"components\":{\"collection\":\"base-component\",\"attribute\":\"base-component\",\"column\":\"id\",\"isVirtual\":true},\"floating\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"boolean\",\"default\":false},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"titlebar\",\"populate\":[\"_id\",\"id\",\"locale\",\"published_at\"],\"attribute\":\"related_titlebar\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(19,'model_def_application::variable.variable','{\"uid\":\"application::variable.variable\",\"collectionName\":\"variables\",\"kind\":\"collectionType\",\"info\":{\"name\":\"variable\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true,\"privateAttributes\":[\"published_at\",\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"key\":{\"type\":\"string\",\"required\":true,\"unique\":true,\"default\":\"null\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"value\":{\"type\":\"string\",\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"forceChange\":{\"type\":\"boolean\",\"default\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"persistent\":{\"type\":\"boolean\",\"default\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"variable\",\"populate\":[\"_id\",\"id\",\"locale\",\"published_at\"],\"attribute\":\"related_variable\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(20,'model_def_strapi::webhooks','{\"uid\":\"strapi::webhooks\",\"collectionName\":\"strapi_webhooks\",\"info\":{\"name\":\"Strapi webhooks\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}}','object',NULL,NULL),(21,'model_def_strapi::permission','{\"uid\":\"strapi::permission\",\"collectionName\":\"strapi_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Permission\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"}}}','object',NULL,NULL),(22,'model_def_strapi::role','{\"uid\":\"strapi::role\",\"collectionName\":\"strapi_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Role\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true}}}','object',NULL,NULL),(23,'model_def_strapi::user','{\"uid\":\"strapi::user\",\"collectionName\":\"strapi_administrator\",\"kind\":\"collectionType\",\"info\":{\"name\":\"User\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}}}','object',NULL,NULL),(24,'model_def_plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"collectionName\":\"users-permissions_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"permission\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(25,'model_def_plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"collectionName\":\"users-permissions_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"role\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(26,'model_def_plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"collectionName\":\"users-permissions_user\",\"kind\":\"collectionType\",\"info\":{\"name\":\"user\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(27,'model_def_plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"collectionName\":\"upload_file\",\"kind\":\"collectionType\",\"info\":{\"name\":\"file\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(28,'model_def_plugins::i18n.locale','{\"uid\":\"plugins::i18n.locale\",\"collectionName\":\"i18n_locales\",\"kind\":\"collectionType\",\"info\":{\"name\":\"locale\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(29,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true}','object','production',''),(30,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}','object','',''),(31,'plugin_content_manager_configuration_content_types::application::api-call.api-call','{\"uid\":\"application::api-call.api-call\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"url\",\"defaultSortBy\":\"url\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"method\":{\"edit\":{\"label\":\"Method\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Method\",\"searchable\":true,\"sortable\":true}},\"authorization\":{\"edit\":{\"label\":\"Authorization\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"authType\"},\"list\":{\"label\":\"Authorization\",\"searchable\":true,\"sortable\":true}},\"header\":{\"edit\":{\"label\":\"Header\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Header\",\"searchable\":false,\"sortable\":false}},\"body\":{\"edit\":{\"label\":\"Body\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Body\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"url\",\"method\",\"authorization\"],\"editRelations\":[\"authorization\"],\"edit\":[[{\"name\":\"url\",\"size\":6},{\"name\":\"method\",\"size\":6}],[{\"name\":\"header\",\"size\":12}],[{\"name\":\"body\",\"size\":12}]]}}','object','',''),(32,'plugin_content_manager_configuration_content_types::application::action.action','{\"uid\":\"application::action.action\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"actionType\",\"defaultSortBy\":\"actionType\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"actionType\":{\"edit\":{\"label\":\"ActionType\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ActionType\",\"searchable\":true,\"sortable\":true}},\"style\":{\"edit\":{\"label\":\"Style\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"styleId\"},\"list\":{\"label\":\"Style\",\"searchable\":true,\"sortable\":true}},\"styleId\":{\"edit\":{\"label\":\"StyleId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"StyleId\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"components\":{\"edit\":{\"label\":\"Components\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Components\",\"searchable\":false,\"sortable\":false}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"authorization\":{\"edit\":{\"label\":\"Authorization\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"authType\"},\"list\":{\"label\":\"Authorization\",\"searchable\":true,\"sortable\":true}},\"header\":{\"edit\":{\"label\":\"Header\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Header\",\"searchable\":false,\"sortable\":false}},\"body\":{\"edit\":{\"label\":\"Body\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Body\",\"searchable\":false,\"sortable\":false}},\"onSuccess\":{\"edit\":{\"label\":\"OnSuccess\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"actionType\"},\"list\":{\"label\":\"OnSuccess\",\"searchable\":false,\"sortable\":false}},\"onFail\":{\"edit\":{\"label\":\"OnFail\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"actionType\"},\"list\":{\"label\":\"OnFail\",\"searchable\":false,\"sortable\":false}},\"message\":{\"edit\":{\"label\":\"Message\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Message\",\"searchable\":true,\"sortable\":true}},\"pageId\":{\"edit\":{\"label\":\"PageId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PageId\",\"searchable\":true,\"sortable\":true}},\"addToBackstack\":{\"edit\":{\"label\":\"AddToBackstack\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AddToBackstack\",\"searchable\":true,\"sortable\":true}},\"popBack\":{\"edit\":{\"label\":\"PopBack\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PopBack\",\"searchable\":true,\"sortable\":true}},\"variableId\":{\"edit\":{\"label\":\"VariableId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"VariableId\",\"searchable\":true,\"sortable\":true}},\"value\":{\"edit\":{\"label\":\"Value\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Value\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"actionType\",\"style\",\"styleId\"],\"editRelations\":[\"style\",\"components\",\"authorization\",\"onSuccess\",\"onFail\"],\"edit\":[[{\"name\":\"actionType\",\"size\":6},{\"name\":\"styleId\",\"size\":6}],[{\"name\":\"title\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"url\",\"size\":6}],[{\"name\":\"header\",\"size\":12}],[{\"name\":\"body\",\"size\":12}],[{\"name\":\"message\",\"size\":6},{\"name\":\"pageId\",\"size\":6}],[{\"name\":\"addToBackstack\",\"size\":4},{\"name\":\"popBack\",\"size\":4}],[{\"name\":\"variableId\",\"size\":6},{\"name\":\"value\",\"size\":6}]]}}','object','',''),(33,'plugin_content_manager_configuration_content_types::application::authorization.authorization','{\"uid\":\"application::authorization.authorization\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"authType\",\"defaultSortBy\":\"authType\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"authType\":{\"edit\":{\"label\":\"AuthType\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AuthType\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"Token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Token\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"authType\",\"token\",\"username\"],\"editRelations\":[],\"edit\":[[{\"name\":\"authType\",\"size\":6},{\"name\":\"token\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"password\",\"size\":6}]]}}','object','',''),(34,'plugin_content_manager_configuration_content_types::application::body.body','{\"uid\":\"application::body.body\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"styleId\",\"defaultSortBy\":\"styleId\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"style\":{\"edit\":{\"label\":\"Style\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"styleId\"},\"list\":{\"label\":\"Style\",\"searchable\":true,\"sortable\":true}},\"styleId\":{\"edit\":{\"label\":\"StyleId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"StyleId\",\"searchable\":true,\"sortable\":true}},\"spacing\":{\"edit\":{\"label\":\"Spacing\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Spacing\",\"searchable\":true,\"sortable\":true}},\"bottom\":{\"edit\":{\"label\":\"Bottom\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Bottom\",\"searchable\":true,\"sortable\":true}},\"components\":{\"edit\":{\"label\":\"Components\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Components\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"style\",\"styleId\",\"spacing\"],\"editRelations\":[\"style\",\"bottom\",\"components\"],\"edit\":[[{\"name\":\"styleId\",\"size\":6},{\"name\":\"spacing\",\"size\":6}]]}}','object','',''),(35,'plugin_content_manager_configuration_content_types::application::application.application','{\"uid\":\"application::application.application\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"version\",\"defaultSortBy\":\"version\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"lang\":{\"edit\":{\"label\":\"Lang\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lang\",\"searchable\":true,\"sortable\":true}},\"data\":{\"edit\":{\"label\":\"Data\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"key\"},\"list\":{\"label\":\"Data\",\"searchable\":false,\"sortable\":false}},\"config\":{\"edit\":{\"label\":\"Config\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"mainPage\"},\"list\":{\"label\":\"Config\",\"searchable\":true,\"sortable\":true}},\"themes\":{\"edit\":{\"label\":\"Themes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"themeId\"},\"list\":{\"label\":\"Themes\",\"searchable\":false,\"sortable\":false}},\"pages\":{\"edit\":{\"label\":\"Pages\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"pageId\"},\"list\":{\"label\":\"Pages\",\"searchable\":false,\"sortable\":false}},\"version\":{\"edit\":{\"label\":\"Version\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Version\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"lang\",\"data\",\"config\"],\"editRelations\":[\"data\",\"config\",\"themes\",\"pages\"],\"edit\":[[{\"name\":\"lang\",\"size\":6},{\"name\":\"version\",\"size\":6}]]}}','object','',''),(36,'plugin_content_manager_configuration_content_types::application::base-component.base-component','{\"uid\":\"application::base-component.base-component\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"visible\":{\"edit\":{\"label\":\"Visible\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Visible\",\"searchable\":true,\"sortable\":true}},\"style\":{\"edit\":{\"label\":\"Style\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"styleId\"},\"list\":{\"label\":\"Style\",\"searchable\":true,\"sortable\":true}},\"styleId\":{\"edit\":{\"label\":\"StyleId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"StyleId\",\"searchable\":true,\"sortable\":true}},\"text\":{\"edit\":{\"label\":\"Text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Text\",\"searchable\":true,\"sortable\":true}},\"textAr\":{\"edit\":{\"label\":\"TextAr\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"TextAr\",\"searchable\":false,\"sortable\":false}},\"disabled\":{\"edit\":{\"label\":\"Disabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Disabled\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"actionType\"},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"actionAr\":{\"edit\":{\"label\":\"ActionAr\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"actionType\"},\"list\":{\"label\":\"ActionAr\",\"searchable\":false,\"sortable\":false}},\"onClick\":{\"edit\":{\"label\":\"OnClick\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"actionType\"},\"list\":{\"label\":\"OnClick\",\"searchable\":false,\"sortable\":false}},\"disableArrow\":{\"edit\":{\"label\":\"DisableArrow\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"DisableArrow\",\"searchable\":true,\"sortable\":true}},\"placeholder\":{\"edit\":{\"label\":\"Placeholder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Placeholder\",\"searchable\":true,\"sortable\":true}},\"onChange\":{\"edit\":{\"label\":\"OnChange\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"OnChange\",\"searchable\":true,\"sortable\":true}},\"min\":{\"edit\":{\"label\":\"Min\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Min\",\"searchable\":true,\"sortable\":true}},\"max\":{\"edit\":{\"label\":\"Max\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Max\",\"searchable\":true,\"sortable\":true}},\"inputType\":{\"edit\":{\"label\":\"InputType\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"InputType\",\"searchable\":true,\"sortable\":true}},\"validation\":{\"edit\":{\"label\":\"Validation\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Validation\",\"searchable\":true,\"sortable\":true}},\"validationError\":{\"edit\":{\"label\":\"ValidationError\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ValidationError\",\"searchable\":true,\"sortable\":true}},\"alt\":{\"edit\":{\"label\":\"Alt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Alt\",\"searchable\":true,\"sortable\":true}},\"drawable\":{\"edit\":{\"label\":\"Drawable\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Drawable\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"enableJavascript\":{\"edit\":{\"label\":\"EnableJavascript\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"EnableJavascript\",\"searchable\":true,\"sortable\":true}},\"allowRedirection\":{\"edit\":{\"label\":\"AllowRedirection\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AllowRedirection\",\"searchable\":true,\"sortable\":true}},\"spacing\":{\"edit\":{\"label\":\"Spacing\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Spacing\",\"searchable\":true,\"sortable\":true}},\"direction\":{\"edit\":{\"label\":\"Direction\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Direction\",\"searchable\":true,\"sortable\":true}},\"alignItems\":{\"edit\":{\"label\":\"AlignItems\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlignItems\",\"searchable\":true,\"sortable\":true}},\"columns\":{\"edit\":{\"label\":\"Columns\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Columns\",\"searchable\":true,\"sortable\":true}},\"rows\":{\"edit\":{\"label\":\"Rows\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Rows\",\"searchable\":true,\"sortable\":true}},\"bound\":{\"edit\":{\"label\":\"Bound\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Bound\",\"searchable\":true,\"sortable\":true}},\"value1\":{\"edit\":{\"label\":\"Value1\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Value1\",\"searchable\":true,\"sortable\":true}},\"value2\":{\"edit\":{\"label\":\"Value2\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Value2\",\"searchable\":true,\"sortable\":true}},\"conditionType\":{\"edit\":{\"label\":\"ConditionType\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ConditionType\",\"searchable\":true,\"sortable\":true}},\"onSuccess\":{\"edit\":{\"label\":\"OnSuccess\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"actionType\"},\"list\":{\"label\":\"OnSuccess\",\"searchable\":false,\"sortable\":false}},\"onFail\":{\"edit\":{\"label\":\"OnFail\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"actionType\"},\"list\":{\"label\":\"OnFail\",\"searchable\":false,\"sortable\":false}},\"searchVariableId\":{\"edit\":{\"label\":\"SearchVariableId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"SearchVariableId\",\"searchable\":true,\"sortable\":true}},\"autoCollapse\":{\"edit\":{\"label\":\"AutoCollapse\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AutoCollapse\",\"searchable\":true,\"sortable\":true}},\"scrollable\":{\"edit\":{\"label\":\"Scrollable\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Scrollable\",\"searchable\":true,\"sortable\":true}},\"breakLine\":{\"edit\":{\"label\":\"BreakLine\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"BreakLine\",\"searchable\":true,\"sortable\":true}},\"autoSnap\":{\"edit\":{\"label\":\"AutoSnap\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AutoSnap\",\"searchable\":true,\"sortable\":true}},\"scaleAnimation\":{\"edit\":{\"label\":\"ScaleAnimation\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ScaleAnimation\",\"searchable\":true,\"sortable\":true}},\"centerProduct\":{\"edit\":{\"label\":\"CenterProduct\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"CenterProduct\",\"searchable\":true,\"sortable\":true}},\"value\":{\"edit\":{\"label\":\"Value\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Value\",\"searchable\":true,\"sortable\":true}},\"components\":{\"edit\":{\"label\":\"Components\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Components\",\"searchable\":false,\"sortable\":false}},\"titleComponent\":{\"edit\":{\"label\":\"TitleComponent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"TitleComponent\",\"searchable\":true,\"sortable\":true}},\"bottomComponent\":{\"edit\":{\"label\":\"BottomComponent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"BottomComponent\",\"searchable\":true,\"sortable\":true}},\"successComponents\":{\"edit\":{\"label\":\"SuccessComponents\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"SuccessComponents\",\"searchable\":false,\"sortable\":false}},\"failComponents\":{\"edit\":{\"label\":\"FailComponents\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"FailComponents\",\"searchable\":false,\"sortable\":false}},\"componentsList\":{\"edit\":{\"label\":\"ComponentsList\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"ComponentsList\",\"searchable\":false,\"sortable\":false}},\"src\":{\"edit\":{\"label\":\"Src\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Src\",\"searchable\":true,\"sortable\":true}},\"api\":{\"edit\":{\"label\":\"Api\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"url\"},\"list\":{\"label\":\"Api\",\"searchable\":true,\"sortable\":true}},\"apiListPath\":{\"edit\":{\"label\":\"ApiListPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ApiListPath\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"visible\",\"style\"],\"editRelations\":[\"style\",\"action\",\"actionAr\",\"onClick\",\"onSuccess\",\"onFail\",\"components\",\"titleComponent\",\"bottomComponent\",\"successComponents\",\"failComponents\",\"componentsList\",\"api\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"visible\",\"size\":4}],[{\"name\":\"styleId\",\"size\":6},{\"name\":\"text\",\"size\":6}],[{\"name\":\"textAr\",\"size\":12}],[{\"name\":\"disabled\",\"size\":4},{\"name\":\"disableArrow\",\"size\":4}],[{\"name\":\"placeholder\",\"size\":6},{\"name\":\"onChange\",\"size\":6}],[{\"name\":\"min\",\"size\":4},{\"name\":\"max\",\"size\":4}],[{\"name\":\"inputType\",\"size\":6},{\"name\":\"validation\",\"size\":6}],[{\"name\":\"validationError\",\"size\":6},{\"name\":\"alt\",\"size\":6}],[{\"name\":\"drawable\",\"size\":6},{\"name\":\"url\",\"size\":6}],[{\"name\":\"enableJavascript\",\"size\":4},{\"name\":\"allowRedirection\",\"size\":4}],[{\"name\":\"spacing\",\"size\":6},{\"name\":\"direction\",\"size\":6}],[{\"name\":\"alignItems\",\"size\":6},{\"name\":\"columns\",\"size\":4}],[{\"name\":\"rows\",\"size\":4},{\"name\":\"bound\",\"size\":4}],[{\"name\":\"value1\",\"size\":6},{\"name\":\"value2\",\"size\":6}],[{\"name\":\"conditionType\",\"size\":6},{\"name\":\"searchVariableId\",\"size\":6}],[{\"name\":\"autoCollapse\",\"size\":4},{\"name\":\"scrollable\",\"size\":4}],[{\"name\":\"breakLine\",\"size\":6},{\"name\":\"autoSnap\",\"size\":4}],[{\"name\":\"scaleAnimation\",\"size\":4},{\"name\":\"centerProduct\",\"size\":4}],[{\"name\":\"value\",\"size\":6},{\"name\":\"src\",\"size\":6}],[{\"name\":\"apiListPath\",\"size\":6},{\"name\":\"type\",\"size\":6}]]}}','object','',''),(37,'plugin_content_manager_configuration_content_types::application::child-component.child-component','{\"uid\":\"application::child-component.child-component\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"visible\":{\"edit\":{\"label\":\"Visible\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Visible\",\"searchable\":true,\"sortable\":true}},\"style\":{\"edit\":{\"label\":\"Style\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"styleId\"},\"list\":{\"label\":\"Style\",\"searchable\":true,\"sortable\":true}},\"styleId\":{\"edit\":{\"label\":\"StyleId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"StyleId\",\"searchable\":true,\"sortable\":true}},\"text\":{\"edit\":{\"label\":\"Text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Text\",\"searchable\":true,\"sortable\":true}},\"textAr\":{\"edit\":{\"label\":\"TextAr\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"TextAr\",\"searchable\":false,\"sortable\":false}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"actionType\"},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"onClick\":{\"edit\":{\"label\":\"OnClick\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"actionType\"},\"list\":{\"label\":\"OnClick\",\"searchable\":false,\"sortable\":false}},\"disableArrow\":{\"edit\":{\"label\":\"DisableArrow\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"DisableArrow\",\"searchable\":true,\"sortable\":true}},\"disabled\":{\"edit\":{\"label\":\"Disabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Disabled\",\"searchable\":true,\"sortable\":true}},\"actionAr\":{\"edit\":{\"label\":\"ActionAr\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"actionType\"},\"list\":{\"label\":\"ActionAr\",\"searchable\":false,\"sortable\":false}},\"value\":{\"edit\":{\"label\":\"Value\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Value\",\"searchable\":true,\"sortable\":true}},\"placeholder\":{\"edit\":{\"label\":\"Placeholder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Placeholder\",\"searchable\":true,\"sortable\":true}},\"onChange\":{\"edit\":{\"label\":\"OnChange\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"OnChange\",\"searchable\":true,\"sortable\":true}},\"min\":{\"edit\":{\"label\":\"Min\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Min\",\"searchable\":true,\"sortable\":true}},\"max\":{\"edit\":{\"label\":\"Max\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Max\",\"searchable\":true,\"sortable\":true}},\"inputType\":{\"edit\":{\"label\":\"InputType\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"InputType\",\"searchable\":true,\"sortable\":true}},\"validation\":{\"edit\":{\"label\":\"Validation\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Validation\",\"searchable\":true,\"sortable\":true}},\"validationError\":{\"edit\":{\"label\":\"ValidationError\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ValidationError\",\"searchable\":true,\"sortable\":true}},\"src\":{\"edit\":{\"label\":\"Src\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Src\",\"searchable\":true,\"sortable\":true}},\"alt\":{\"edit\":{\"label\":\"Alt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Alt\",\"searchable\":true,\"sortable\":true}},\"drawable\":{\"edit\":{\"label\":\"Drawable\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Drawable\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"enableJavascript\":{\"edit\":{\"label\":\"EnableJavascript\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"EnableJavascript\",\"searchable\":true,\"sortable\":true}},\"allowRedirection\":{\"edit\":{\"label\":\"AllowRedirection\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AllowRedirection\",\"searchable\":true,\"sortable\":true}},\"spacing\":{\"edit\":{\"label\":\"Spacing\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Spacing\",\"searchable\":true,\"sortable\":true}},\"direction\":{\"edit\":{\"label\":\"Direction\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Direction\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"name\",\"visible\"],\"editRelations\":[\"style\",\"action\",\"onClick\",\"actionAr\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"name\",\"size\":6}],[{\"name\":\"visible\",\"size\":4},{\"name\":\"styleId\",\"size\":6}],[{\"name\":\"text\",\"size\":6}],[{\"name\":\"textAr\",\"size\":12}],[{\"name\":\"disableArrow\",\"size\":4},{\"name\":\"disabled\",\"size\":4}],[{\"name\":\"value\",\"size\":6},{\"name\":\"placeholder\",\"size\":6}],[{\"name\":\"onChange\",\"size\":6},{\"name\":\"min\",\"size\":4}],[{\"name\":\"max\",\"size\":4},{\"name\":\"inputType\",\"size\":6}],[{\"name\":\"validation\",\"size\":6},{\"name\":\"validationError\",\"size\":6}],[{\"name\":\"src\",\"size\":6},{\"name\":\"alt\",\"size\":6}],[{\"name\":\"drawable\",\"size\":6},{\"name\":\"url\",\"size\":6}],[{\"name\":\"enableJavascript\",\"size\":4},{\"name\":\"allowRedirection\",\"size\":4}],[{\"name\":\"spacing\",\"size\":6},{\"name\":\"direction\",\"size\":6}]]}}','object','',''),(38,'plugin_content_manager_configuration_content_types::application::bottom.bottom','{\"uid\":\"application::bottom.bottom\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"styleId\",\"defaultSortBy\":\"styleId\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"items\":{\"edit\":{\"label\":\"Items\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"text\"},\"list\":{\"label\":\"Items\",\"searchable\":false,\"sortable\":false}},\"style\":{\"edit\":{\"label\":\"Style\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"styleId\"},\"list\":{\"label\":\"Style\",\"searchable\":true,\"sortable\":true}},\"styleId\":{\"edit\":{\"label\":\"StyleId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"StyleId\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"items\",\"style\",\"styleId\"],\"editRelations\":[\"items\",\"style\"],\"edit\":[[{\"name\":\"styleId\",\"size\":6}]]}}','object','',''),(39,'plugin_content_manager_configuration_content_types::application::configuration.configuration','{\"uid\":\"application::configuration.configuration\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"mainPage\",\"defaultSortBy\":\"mainPage\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"displayMode\":{\"edit\":{\"label\":\"DisplayMode\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"DisplayMode\",\"searchable\":true,\"sortable\":true}},\"hideComponentWhileLoading\":{\"edit\":{\"label\":\"HideComponentWhileLoading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"HideComponentWhileLoading\",\"searchable\":true,\"sortable\":true}},\"mainPage\":{\"edit\":{\"label\":\"MainPage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"MainPage\",\"searchable\":true,\"sortable\":true}},\"updateOn\":{\"edit\":{\"label\":\"UpdateOn\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"UpdateOn\",\"searchable\":true,\"sortable\":true}},\"shortcuts\":{\"edit\":{\"label\":\"Shortcuts\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"label\"},\"list\":{\"label\":\"Shortcuts\",\"searchable\":false,\"sortable\":false}},\"preserveLastLocation\":{\"edit\":{\"label\":\"PreserveLastLocation\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreserveLastLocation\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"displayMode\",\"hideComponentWhileLoading\",\"mainPage\"],\"editRelations\":[\"shortcuts\"],\"edit\":[[{\"name\":\"displayMode\",\"size\":6},{\"name\":\"hideComponentWhileLoading\",\"size\":6}],[{\"name\":\"mainPage\",\"size\":6},{\"name\":\"updateOn\",\"size\":6}],[{\"name\":\"preserveLastLocation\",\"size\":4}]]}}','object','',''),(40,'plugin_content_manager_configuration_content_types::application::expandable-item.expandable-item','{\"uid\":\"application::expandable-item.expandable-item\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"titleComponent\":{\"edit\":{\"label\":\"TitleComponent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"TitleComponent\",\"searchable\":true,\"sortable\":true}},\"bodyComponent\":{\"edit\":{\"label\":\"BodyComponent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"BodyComponent\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"titleComponent\",\"bodyComponent\",\"created_at\"],\"editRelations\":[\"titleComponent\",\"bodyComponent\"],\"edit\":[]}}','object','',''),(41,'plugin_content_manager_configuration_content_types::application::item.item','{\"uid\":\"application::item.item\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"text\",\"defaultSortBy\":\"text\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"text\":{\"edit\":{\"label\":\"Text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Text\",\"searchable\":true,\"sortable\":true}},\"src\":{\"edit\":{\"label\":\"Src\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Src\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"actionType\"},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"selected\":{\"edit\":{\"label\":\"Selected\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Selected\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"text\",\"src\",\"action\"],\"editRelations\":[\"action\"],\"edit\":[[{\"name\":\"text\",\"size\":6},{\"name\":\"src\",\"size\":6}],[{\"name\":\"selected\",\"size\":4}]]}}','object','',''),(42,'plugin_content_manager_configuration_content_types::application::shortcut.shortcut','{\"uid\":\"application::shortcut.shortcut\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"label\",\"defaultSortBy\":\"label\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"label\":{\"edit\":{\"label\":\"Label\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Label\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"Icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Icon\",\"searchable\":true,\"sortable\":true}},\"pageId\":{\"edit\":{\"label\":\"PageId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PageId\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"label\",\"description\",\"icon\"],\"editRelations\":[],\"edit\":[[{\"name\":\"label\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"icon\",\"size\":6},{\"name\":\"pageId\",\"size\":6}]]}}','object','',''),(43,'plugin_content_manager_configuration_content_types::application::orientation.orientation','{\"uid\":\"application::orientation.orientation\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"top\":{\"edit\":{\"label\":\"Top\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Top\",\"searchable\":true,\"sortable\":true}},\"end\":{\"edit\":{\"label\":\"End\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"End\",\"searchable\":true,\"sortable\":true}},\"bottom\":{\"edit\":{\"label\":\"Bottom\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Bottom\",\"searchable\":true,\"sortable\":true}},\"start\":{\"edit\":{\"label\":\"Start\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Start\",\"searchable\":true,\"sortable\":true}},\"all\":{\"edit\":{\"label\":\"All\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"All\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"top\",\"end\",\"bottom\"],\"editRelations\":[],\"edit\":[[{\"name\":\"top\",\"size\":4},{\"name\":\"end\",\"size\":4},{\"name\":\"bottom\",\"size\":4}],[{\"name\":\"start\",\"size\":4},{\"name\":\"all\",\"size\":4}]]}}','object','',''),(44,'plugin_content_manager_configuration_content_types::application::style.style','{\"uid\":\"application::style.style\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"styleId\",\"defaultSortBy\":\"styleId\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"styleId\":{\"edit\":{\"label\":\"StyleId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"StyleId\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"margin\":{\"edit\":{\"label\":\"Margin\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Margin\",\"searchable\":true,\"sortable\":true}},\"padding\":{\"edit\":{\"label\":\"Padding\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Padding\",\"searchable\":true,\"sortable\":true}},\"backgroundColor\":{\"edit\":{\"label\":\"BackgroundColor\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"BackgroundColor\",\"searchable\":true,\"sortable\":true}},\"textSize\":{\"edit\":{\"label\":\"TextSize\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"TextSize\",\"searchable\":true,\"sortable\":true}},\"textColor\":{\"edit\":{\"label\":\"TextColor\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"TextColor\",\"searchable\":true,\"sortable\":true}},\"textStyle\":{\"edit\":{\"label\":\"TextStyle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"TextStyle\",\"searchable\":true,\"sortable\":true}},\"alignText\":{\"edit\":{\"label\":\"AlignText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlignText\",\"searchable\":true,\"sortable\":true}},\"alignSelf\":{\"edit\":{\"label\":\"AlignSelf\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlignSelf\",\"searchable\":true,\"sortable\":true}},\"cornerRadius\":{\"edit\":{\"label\":\"CornerRadius\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"CornerRadius\",\"searchable\":true,\"sortable\":true}},\"imageColor\":{\"edit\":{\"label\":\"ImageColor\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ImageColor\",\"searchable\":true,\"sortable\":true}},\"blur\":{\"edit\":{\"label\":\"Blur\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blur\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"styleId\",\"height\",\"width\"],\"editRelations\":[\"margin\",\"padding\"],\"edit\":[[{\"name\":\"styleId\",\"size\":6},{\"name\":\"height\",\"size\":6}],[{\"name\":\"width\",\"size\":6},{\"name\":\"backgroundColor\",\"size\":6}],[{\"name\":\"textSize\",\"size\":4},{\"name\":\"textColor\",\"size\":6}],[{\"name\":\"textStyle\",\"size\":6},{\"name\":\"alignText\",\"size\":6}],[{\"name\":\"alignSelf\",\"size\":6},{\"name\":\"cornerRadius\",\"size\":4}],[{\"name\":\"imageColor\",\"size\":6},{\"name\":\"blur\",\"size\":4}]]}}','object','',''),(45,'plugin_content_manager_configuration_content_types::application::titlebar.titlebar','{\"uid\":\"application::titlebar.titlebar\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"style\":{\"edit\":{\"label\":\"Style\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"styleId\"},\"list\":{\"label\":\"Style\",\"searchable\":true,\"sortable\":true}},\"styleId\":{\"edit\":{\"label\":\"StyleId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"StyleId\",\"searchable\":true,\"sortable\":true}},\"disableBackButton\":{\"edit\":{\"label\":\"DisableBackButton\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"DisableBackButton\",\"searchable\":true,\"sortable\":true}},\"components\":{\"edit\":{\"label\":\"Components\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Components\",\"searchable\":false,\"sortable\":false}},\"floating\":{\"edit\":{\"label\":\"Floating\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Floating\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"style\",\"styleId\"],\"editRelations\":[\"style\",\"components\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"styleId\",\"size\":6}],[{\"name\":\"disableBackButton\",\"size\":4},{\"name\":\"floating\",\"size\":4}]]}}','object','',''),(46,'plugin_content_manager_configuration_content_types::application::theme.theme','{\"uid\":\"application::theme.theme\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"themeId\",\"defaultSortBy\":\"themeId\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"themeId\":{\"edit\":{\"label\":\"ThemeId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ThemeId\",\"searchable\":true,\"sortable\":true}},\"themeMode\":{\"edit\":{\"label\":\"ThemeMode\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ThemeMode\",\"searchable\":true,\"sortable\":true}},\"styles\":{\"edit\":{\"label\":\"Styles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"styleId\"},\"list\":{\"label\":\"Styles\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"themeId\",\"themeMode\",\"styles\"],\"editRelations\":[\"styles\"],\"edit\":[[{\"name\":\"themeId\",\"size\":6},{\"name\":\"themeMode\",\"size\":6}]]}}','object','',''),(47,'plugin_content_manager_configuration_content_types::application::page.page','{\"uid\":\"application::page.page\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"pageId\",\"defaultSortBy\":\"pageId\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"pageId\":{\"edit\":{\"label\":\"PageId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PageId\",\"searchable\":true,\"sortable\":true}},\"themeId\":{\"edit\":{\"label\":\"ThemeId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ThemeId\",\"searchable\":true,\"sortable\":true}},\"titleBar\":{\"edit\":{\"label\":\"TitleBar\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"TitleBar\",\"searchable\":true,\"sortable\":true}},\"body\":{\"edit\":{\"label\":\"Body\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"styleId\"},\"list\":{\"label\":\"Body\",\"searchable\":true,\"sortable\":true}},\"bottom\":{\"edit\":{\"label\":\"Bottom\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"styleId\"},\"list\":{\"label\":\"Bottom\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"pageId\",\"themeId\",\"titleBar\"],\"editRelations\":[\"titleBar\",\"body\",\"bottom\"],\"edit\":[[{\"name\":\"pageId\",\"size\":6},{\"name\":\"themeId\",\"size\":6}]]}}','object','',''),(48,'plugin_content_manager_configuration_content_types::application::variable.variable','{\"uid\":\"application::variable.variable\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"key\",\"defaultSortBy\":\"key\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"key\":{\"edit\":{\"label\":\"Key\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Key\",\"searchable\":true,\"sortable\":true}},\"value\":{\"edit\":{\"label\":\"Value\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Value\",\"searchable\":true,\"sortable\":true}},\"forceChange\":{\"edit\":{\"label\":\"ForceChange\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ForceChange\",\"searchable\":true,\"sortable\":true}},\"persistent\":{\"edit\":{\"label\":\"Persistent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Persistent\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"key\",\"value\",\"forceChange\"],\"editRelations\":[],\"edit\":[[{\"name\":\"key\",\"size\":6},{\"name\":\"value\",\"size\":6}],[{\"name\":\"forceChange\",\"size\":4},{\"name\":\"persistent\",\"size\":4}]]}}','object','',''),(49,'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}','object','',''),(50,'plugin_content_manager_configuration_content_types::plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}','object','',''),(51,'plugin_content_manager_configuration_content_types::plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"ConfirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ConfirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}','object','',''),(52,'plugin_content_manager_configuration_content_types::plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}','object','',''),(53,'plugin_content_manager_configuration_content_types::plugins::i18n.locale','{\"uid\":\"plugins::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}','object','',''),(54,'plugin_i18n_default_locale','\"en\"','string','',''),(55,'plugin_content_manager_configuration_content_types::strapi::role','{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}','object','',''),(56,'plugin_content_manager_configuration_content_types::strapi::user','{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"PreferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreferedLanguage\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}]]}}','object','',''),(57,'plugin_content_manager_configuration_content_types::strapi::permission','{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"Properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}','object','',''),(58,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object','',''),(59,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}','object','',''),(60,'core_admin_auth','{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}','object','','');
/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expandable_items`
--

DROP TABLE IF EXISTS `expandable_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expandable_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titleComponent` int(11) DEFAULT NULL,
  `bodyComponent` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expandable_items`
--

LOCK TABLES `expandable_items` WRITE;
/*!40000 ALTER TABLE `expandable_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `expandable_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expandable_items__localizations`
--

DROP TABLE IF EXISTS `expandable_items__localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expandable_items__localizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `expandable_item_id` int(11) DEFAULT NULL,
  `expandable-item_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expandable_items__localizations`
--

LOCK TABLES `expandable_items__localizations` WRITE;
/*!40000 ALTER TABLE `expandable_items__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `expandable_items__localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i18n_locales`
--

DROP TABLE IF EXISTS `i18n_locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i18n_locales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `i18n_locales_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i18n_locales`
--

LOCK TABLES `i18n_locales` WRITE;
/*!40000 ALTER TABLE `i18n_locales` DISABLE KEYS */;
INSERT INTO `i18n_locales` VALUES (1,'English (en)','en',NULL,NULL,'2021-12-23 11:00:30','2021-12-23 11:00:30');
/*!40000 ALTER TABLE `i18n_locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `src` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` int(11) DEFAULT NULL,
  `selected` tinyint(1) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items__localizations`
--

DROP TABLE IF EXISTS `items__localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items__localizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `related_item_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items__localizations`
--

LOCK TABLES `items__localizations` WRITE;
/*!40000 ALTER TABLE `items__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `items__localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orientations`
--

DROP TABLE IF EXISTS `orientations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orientations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `top` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `bottom` int(11) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `all` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orientations`
--

LOCK TABLES `orientations` WRITE;
/*!40000 ALTER TABLE `orientations` DISABLE KEYS */;
INSERT INTO `orientations` VALUES (1,NULL,NULL,NULL,NULL,10,'en','2021-12-20 08:47:32',1,1,'2021-12-20 08:44:07','2021-12-21 08:51:09'),(2,-1,-1,-1,-1,20,'en','2021-12-21 09:50:43',1,1,'2021-12-21 09:50:41','2021-12-21 09:50:43'),(3,15,-1,-1,-1,-1,'en','2021-12-21 09:56:13',1,1,'2021-12-21 09:56:06','2021-12-22 06:30:46'),(4,-1,-1,-1,20,-1,'en','2021-12-21 10:13:37',1,1,'2021-12-21 10:13:35','2021-12-21 10:13:37'),(5,-1,-1,-1,5,-1,'en','2021-12-21 10:24:59',1,1,'2021-12-21 10:24:58','2021-12-21 10:24:59'),(6,10,20,10,20,-1,'en','2021-12-21 12:51:46',1,1,'2021-12-21 12:51:43','2021-12-21 12:51:46'),(7,10,-1,10,-1,-1,'en','2021-12-21 14:15:59',1,1,'2021-12-21 14:15:57','2021-12-21 14:17:06'),(8,60,-1,-1,-1,20,'en','2021-12-22 06:23:54',1,1,'2021-12-22 06:23:52','2021-12-22 06:24:23'),(9,-1,-1,15,-1,-1,'en','2021-12-22 06:39:35',1,1,'2021-12-22 06:39:33','2021-12-22 06:39:35'),(10,-1,20,-1,20,-1,'en','2021-12-22 07:08:45',1,1,'2021-12-22 07:08:43','2021-12-22 07:09:14'),(11,0,-1,-1,-1,10,'en','2021-12-22 07:28:58',1,1,'2021-12-22 07:28:56','2021-12-22 07:28:58'),(12,-1,-1,100,-1,-1,'en','2021-12-22 08:09:13',1,1,'2021-12-22 08:09:10','2021-12-22 08:09:45');
/*!40000 ALTER TABLE `orientations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orientations__localizations`
--

DROP TABLE IF EXISTS `orientations__localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orientations__localizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orientation_id` int(11) DEFAULT NULL,
  `related_orientation_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orientations__localizations`
--

LOCK TABLES `orientations__localizations` WRITE;
/*!40000 ALTER TABLE `orientations__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `orientations__localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `themeId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titleBar` int(11) DEFAULT NULL,
  `body` int(11) DEFAULT NULL,
  `bottom` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'main','main',1,1,NULL,'en','2021-12-20 08:01:37',1,1,'2021-12-20 08:01:32','2021-12-20 08:59:41'),(2,'mobilyPlansPage','main',3,2,NULL,'en','2021-12-20 09:03:14',1,1,'2021-12-20 08:57:38','2021-12-22 10:33:30'),(3,'planDetailsPage','main',2,3,NULL,'en','2021-12-21 10:51:35',1,1,'2021-12-21 10:51:14','2021-12-22 06:08:13'),(4,'startJourney','main',4,4,NULL,'en','2021-12-28 06:47:04',1,1,'2021-12-28 06:47:02','2021-12-28 06:49:16'),(5,'chooseNumberPage','main',4,5,NULL,'en','2021-12-28 08:32:08',1,1,'2021-12-28 08:32:07','2021-12-28 08:32:50');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages__localizations`
--

DROP TABLE IF EXISTS `pages__localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages__localizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `related_page_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages__localizations`
--

LOCK TABLES `pages__localizations` WRITE;
/*!40000 ALTER TABLE `pages__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages__localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shortcuts`
--

DROP TABLE IF EXISTS `shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shortcuts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pageId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shortcuts`
--

LOCK TABLES `shortcuts` WRITE;
/*!40000 ALTER TABLE `shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shortcuts__localizations`
--

DROP TABLE IF EXISTS `shortcuts__localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shortcuts__localizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shortcut_id` int(11) DEFAULT NULL,
  `related_shortcut_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shortcuts__localizations`
--

LOCK TABLES `shortcuts__localizations` WRITE;
/*!40000 ALTER TABLE `shortcuts__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `shortcuts__localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_administrator`
--

DROP TABLE IF EXISTS `strapi_administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_administrator` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `registrationToken` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `preferedLanguage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_administrator_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_administrator`
--

LOCK TABLES `strapi_administrator` WRITE;
/*!40000 ALTER TABLE `strapi_administrator` DISABLE KEYS */;
INSERT INTO `strapi_administrator` VALUES (1,'Omar','Basaqer',NULL,'strapi-admin@mobily.com.sa','$2a$10$wY0xphyHSDjJrXAttDnlUez8AGl6Z/yuFuVh7cHQJKN03WNkcVuX2',NULL,NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `strapi_administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_permission`
--

DROP TABLE IF EXISTS `strapi_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext,
  `conditions` longtext,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=491 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_permission`
--

LOCK TABLES `strapi_permission` WRITE;
/*!40000 ALTER TABLE `strapi_permission` DISABLE KEYS */;
INSERT INTO `strapi_permission` VALUES (1,'plugins::content-manager.explorer.create','application::api-call.api-call','{\"fields\":[\"url\",\"method\",\"authorization\",\"header\",\"body\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(2,'plugins::content-manager.explorer.create','application::base-component.base-component','{\"fields\":[\"name\",\"visible\",\"style\",\"styleId\",\"text\",\"textAr\",\"disabled\",\"action\",\"actionAr\",\"onClick\",\"disableArrow\",\"placeholder\",\"onChange\",\"min\",\"max\",\"inputType\",\"validation\",\"validationError\",\"alt\",\"drawable\",\"url\",\"enableJavascript\",\"allowRedirection\",\"spacing\",\"direction\",\"alignItems\",\"columns\",\"rows\",\"bound\",\"value1\",\"value2\",\"conditionType\",\"onSuccess\",\"onFail\",\"searchVariableId\",\"autoCollapse\",\"scrollable\",\"breakLine\",\"autoSnap\",\"scaleAnimation\",\"centerProduct\",\"value\",\"components\",\"titleComponent\",\"bottomComponent\",\"successComponents\",\"failComponents\",\"componentsList\",\"src\",\"api\",\"apiListPath\",\"type\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(3,'plugins::content-manager.explorer.create','application::body.body','{\"fields\":[\"style\",\"styleId\",\"spacing\",\"bottom\",\"components\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(4,'plugins::content-manager.explorer.create','application::expandable-item.expandable-item','{\"fields\":[\"titleComponent\",\"bodyComponent\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(5,'plugins::content-manager.explorer.create','application::action.action','{\"fields\":[\"actionType\",\"style\",\"styleId\",\"title\",\"description\",\"components\",\"url\",\"authorization\",\"header\",\"body\",\"onSuccess\",\"onFail\",\"message\",\"pageId\",\"addToBackstack\",\"popBack\",\"variableId\",\"value\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(6,'plugins::content-manager.explorer.create','application::child-component.child-component','{\"fields\":[\"type\",\"name\",\"visible\",\"style\",\"styleId\",\"text\",\"textAr\",\"action\",\"onClick\",\"disableArrow\",\"disabled\",\"actionAr\",\"value\",\"placeholder\",\"onChange\",\"min\",\"max\",\"inputType\",\"validation\",\"validationError\",\"src\",\"alt\",\"drawable\",\"url\",\"enableJavascript\",\"allowRedirection\",\"spacing\",\"direction\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(7,'plugins::content-manager.explorer.create','application::bottom.bottom','{\"fields\":[\"items\",\"style\",\"styleId\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(8,'plugins::content-manager.explorer.create','application::configuration.configuration','{\"fields\":[\"displayMode\",\"hideComponentWhileLoading\",\"mainPage\",\"updateOn\",\"shortcuts\",\"preserveLastLocation\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(9,'plugins::content-manager.explorer.create','application::application.application','{\"fields\":[\"lang\",\"data\",\"config\",\"themes\",\"pages\",\"version\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(10,'plugins::content-manager.explorer.create','application::authorization.authorization','{\"fields\":[\"authType\",\"token\",\"username\",\"password\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(11,'plugins::content-manager.explorer.create','application::item.item','{\"fields\":[\"text\",\"src\",\"action\",\"selected\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(12,'plugins::content-manager.explorer.create','application::orientation.orientation','{\"fields\":[\"top\",\"end\",\"bottom\",\"start\",\"all\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(13,'plugins::content-manager.explorer.create','application::shortcut.shortcut','{\"fields\":[\"label\",\"description\",\"icon\",\"pageId\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(14,'plugins::content-manager.explorer.create','application::page.page','{\"fields\":[\"pageId\",\"themeId\",\"titleBar\",\"body\",\"bottom\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(15,'plugins::content-manager.explorer.create','application::style.style','{\"fields\":[\"styleId\",\"height\",\"width\",\"margin\",\"padding\",\"backgroundColor\",\"textSize\",\"textColor\",\"textStyle\",\"alignText\",\"alignSelf\",\"cornerRadius\",\"imageColor\",\"blur\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(16,'plugins::content-manager.explorer.create','application::theme.theme','{\"fields\":[\"themeId\",\"themeMode\",\"styles\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(17,'plugins::content-manager.explorer.create','application::titlebar.titlebar','{\"fields\":[\"title\",\"style\",\"styleId\",\"disableBackButton\",\"components\",\"floating\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(18,'plugins::content-manager.explorer.read','application::action.action','{\"fields\":[\"actionType\",\"style\",\"styleId\",\"title\",\"description\",\"components\",\"url\",\"authorization\",\"header\",\"body\",\"onSuccess\",\"onFail\",\"message\",\"pageId\",\"addToBackstack\",\"popBack\",\"variableId\",\"value\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(19,'plugins::content-manager.explorer.read','application::api-call.api-call','{\"fields\":[\"url\",\"method\",\"authorization\",\"header\",\"body\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(20,'plugins::content-manager.explorer.create','application::variable.variable','{\"fields\":[\"key\",\"value\",\"forceChange\",\"persistent\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(21,'plugins::content-manager.explorer.read','application::application.application','{\"fields\":[\"lang\",\"data\",\"config\",\"themes\",\"pages\",\"version\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(22,'plugins::content-manager.explorer.read','application::authorization.authorization','{\"fields\":[\"authType\",\"token\",\"username\",\"password\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(23,'plugins::content-manager.explorer.read','application::base-component.base-component','{\"fields\":[\"name\",\"visible\",\"style\",\"styleId\",\"text\",\"textAr\",\"disabled\",\"action\",\"actionAr\",\"onClick\",\"disableArrow\",\"placeholder\",\"onChange\",\"min\",\"max\",\"inputType\",\"validation\",\"validationError\",\"alt\",\"drawable\",\"url\",\"enableJavascript\",\"allowRedirection\",\"spacing\",\"direction\",\"alignItems\",\"columns\",\"rows\",\"bound\",\"value1\",\"value2\",\"conditionType\",\"onSuccess\",\"onFail\",\"searchVariableId\",\"autoCollapse\",\"scrollable\",\"breakLine\",\"autoSnap\",\"scaleAnimation\",\"centerProduct\",\"value\",\"components\",\"titleComponent\",\"bottomComponent\",\"successComponents\",\"failComponents\",\"componentsList\",\"src\",\"api\",\"apiListPath\",\"type\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(24,'plugins::content-manager.explorer.read','application::body.body','{\"fields\":[\"style\",\"styleId\",\"spacing\",\"bottom\",\"components\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(25,'plugins::content-manager.explorer.read','application::bottom.bottom','{\"fields\":[\"items\",\"style\",\"styleId\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(26,'plugins::content-manager.explorer.read','application::child-component.child-component','{\"fields\":[\"type\",\"name\",\"visible\",\"style\",\"styleId\",\"text\",\"textAr\",\"action\",\"onClick\",\"disableArrow\",\"disabled\",\"actionAr\",\"value\",\"placeholder\",\"onChange\",\"min\",\"max\",\"inputType\",\"validation\",\"validationError\",\"src\",\"alt\",\"drawable\",\"url\",\"enableJavascript\",\"allowRedirection\",\"spacing\",\"direction\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(27,'plugins::content-manager.explorer.read','application::configuration.configuration','{\"fields\":[\"displayMode\",\"hideComponentWhileLoading\",\"mainPage\",\"updateOn\",\"shortcuts\",\"preserveLastLocation\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(28,'plugins::content-manager.explorer.read','application::expandable-item.expandable-item','{\"fields\":[\"titleComponent\",\"bodyComponent\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(29,'plugins::content-manager.explorer.read','application::item.item','{\"fields\":[\"text\",\"src\",\"action\",\"selected\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(30,'plugins::content-manager.explorer.read','application::orientation.orientation','{\"fields\":[\"top\",\"end\",\"bottom\",\"start\",\"all\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(31,'plugins::content-manager.explorer.read','application::shortcut.shortcut','{\"fields\":[\"label\",\"description\",\"icon\",\"pageId\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(32,'plugins::content-manager.explorer.read','application::page.page','{\"fields\":[\"pageId\",\"themeId\",\"titleBar\",\"body\",\"bottom\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(33,'plugins::content-manager.explorer.read','application::style.style','{\"fields\":[\"styleId\",\"height\",\"width\",\"margin\",\"padding\",\"backgroundColor\",\"textSize\",\"textColor\",\"textStyle\",\"alignText\",\"alignSelf\",\"cornerRadius\",\"imageColor\",\"blur\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(34,'plugins::content-manager.explorer.read','application::theme.theme','{\"fields\":[\"themeId\",\"themeMode\",\"styles\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(35,'plugins::content-manager.explorer.read','application::titlebar.titlebar','{\"fields\":[\"title\",\"style\",\"styleId\",\"disableBackButton\",\"components\",\"floating\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(36,'plugins::content-manager.explorer.read','application::variable.variable','{\"fields\":[\"key\",\"value\",\"forceChange\",\"persistent\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(37,'plugins::content-manager.explorer.update','application::action.action','{\"fields\":[\"actionType\",\"style\",\"styleId\",\"title\",\"description\",\"components\",\"url\",\"authorization\",\"header\",\"body\",\"onSuccess\",\"onFail\",\"message\",\"pageId\",\"addToBackstack\",\"popBack\",\"variableId\",\"value\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(38,'plugins::content-manager.explorer.update','application::api-call.api-call','{\"fields\":[\"url\",\"method\",\"authorization\",\"header\",\"body\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(39,'plugins::content-manager.explorer.update','application::application.application','{\"fields\":[\"lang\",\"data\",\"config\",\"themes\",\"pages\",\"version\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(40,'plugins::content-manager.explorer.update','application::authorization.authorization','{\"fields\":[\"authType\",\"token\",\"username\",\"password\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(41,'plugins::content-manager.explorer.update','application::base-component.base-component','{\"fields\":[\"name\",\"visible\",\"style\",\"styleId\",\"text\",\"textAr\",\"disabled\",\"action\",\"actionAr\",\"onClick\",\"disableArrow\",\"placeholder\",\"onChange\",\"min\",\"max\",\"inputType\",\"validation\",\"validationError\",\"alt\",\"drawable\",\"url\",\"enableJavascript\",\"allowRedirection\",\"spacing\",\"direction\",\"alignItems\",\"columns\",\"rows\",\"bound\",\"value1\",\"value2\",\"conditionType\",\"onSuccess\",\"onFail\",\"searchVariableId\",\"autoCollapse\",\"scrollable\",\"breakLine\",\"autoSnap\",\"scaleAnimation\",\"centerProduct\",\"value\",\"components\",\"titleComponent\",\"bottomComponent\",\"successComponents\",\"failComponents\",\"componentsList\",\"src\",\"api\",\"apiListPath\",\"type\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(42,'plugins::content-manager.explorer.update','application::bottom.bottom','{\"fields\":[\"items\",\"style\",\"styleId\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(43,'plugins::content-manager.explorer.update','application::body.body','{\"fields\":[\"style\",\"styleId\",\"spacing\",\"bottom\",\"components\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(44,'plugins::content-manager.explorer.update','application::child-component.child-component','{\"fields\":[\"type\",\"name\",\"visible\",\"style\",\"styleId\",\"text\",\"textAr\",\"action\",\"onClick\",\"disableArrow\",\"disabled\",\"actionAr\",\"value\",\"placeholder\",\"onChange\",\"min\",\"max\",\"inputType\",\"validation\",\"validationError\",\"src\",\"alt\",\"drawable\",\"url\",\"enableJavascript\",\"allowRedirection\",\"spacing\",\"direction\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(45,'plugins::content-manager.explorer.update','application::configuration.configuration','{\"fields\":[\"displayMode\",\"hideComponentWhileLoading\",\"mainPage\",\"updateOn\",\"shortcuts\",\"preserveLastLocation\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(46,'plugins::content-manager.explorer.update','application::expandable-item.expandable-item','{\"fields\":[\"titleComponent\",\"bodyComponent\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(47,'plugins::content-manager.explorer.update','application::item.item','{\"fields\":[\"text\",\"src\",\"action\",\"selected\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(48,'plugins::content-manager.explorer.update','application::page.page','{\"fields\":[\"pageId\",\"themeId\",\"titleBar\",\"body\",\"bottom\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(49,'plugins::content-manager.explorer.update','application::orientation.orientation','{\"fields\":[\"top\",\"end\",\"bottom\",\"start\",\"all\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(50,'plugins::content-manager.explorer.update','application::shortcut.shortcut','{\"fields\":[\"label\",\"description\",\"icon\",\"pageId\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(51,'plugins::content-manager.explorer.update','application::style.style','{\"fields\":[\"styleId\",\"height\",\"width\",\"margin\",\"padding\",\"backgroundColor\",\"textSize\",\"textColor\",\"textStyle\",\"alignText\",\"alignSelf\",\"cornerRadius\",\"imageColor\",\"blur\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(52,'plugins::content-manager.explorer.update','application::theme.theme','{\"fields\":[\"themeId\",\"themeMode\",\"styles\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(53,'plugins::content-manager.explorer.update','application::titlebar.titlebar','{\"fields\":[\"title\",\"style\",\"styleId\",\"disableBackButton\",\"components\",\"floating\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(54,'plugins::content-manager.explorer.update','application::variable.variable','{\"fields\":[\"key\",\"value\",\"forceChange\",\"persistent\"]}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(56,'plugins::content-manager.explorer.delete','application::api-call.api-call','{}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(58,'plugins::content-manager.explorer.delete','application::authorization.authorization','{}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(71,'plugins::content-manager.explorer.create','application::application.application','{\"fields\":[\"lang\",\"data\",\"config\",\"themes\",\"pages\",\"version\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(72,'plugins::content-manager.explorer.create','application::authorization.authorization','{\"fields\":[\"authType\",\"token\",\"username\",\"password\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(73,'plugins::content-manager.explorer.create','application::child-component.child-component','{\"fields\":[\"type\",\"name\",\"visible\",\"style\",\"styleId\",\"text\",\"textAr\",\"action\",\"onClick\",\"disableArrow\",\"disabled\",\"actionAr\",\"value\",\"placeholder\",\"onChange\",\"min\",\"max\",\"inputType\",\"validation\",\"validationError\",\"src\",\"alt\",\"drawable\",\"url\",\"enableJavascript\",\"allowRedirection\",\"spacing\",\"direction\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(74,'plugins::content-manager.explorer.create','application::bottom.bottom','{\"fields\":[\"items\",\"style\",\"styleId\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(75,'plugins::content-manager.explorer.create','application::body.body','{\"fields\":[\"style\",\"styleId\",\"spacing\",\"bottom\",\"components\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(76,'plugins::content-manager.explorer.create','application::base-component.base-component','{\"fields\":[\"name\",\"visible\",\"style\",\"styleId\",\"text\",\"textAr\",\"disabled\",\"action\",\"actionAr\",\"onClick\",\"disableArrow\",\"placeholder\",\"onChange\",\"min\",\"max\",\"inputType\",\"validation\",\"validationError\",\"alt\",\"drawable\",\"url\",\"enableJavascript\",\"allowRedirection\",\"spacing\",\"direction\",\"alignItems\",\"columns\",\"rows\",\"bound\",\"value1\",\"value2\",\"conditionType\",\"onSuccess\",\"onFail\",\"searchVariableId\",\"autoCollapse\",\"scrollable\",\"breakLine\",\"autoSnap\",\"scaleAnimation\",\"centerProduct\",\"value\",\"components\",\"titleComponent\",\"bottomComponent\",\"successComponents\",\"failComponents\",\"componentsList\",\"src\",\"api\",\"apiListPath\",\"type\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(77,'plugins::content-manager.explorer.create','application::configuration.configuration','{\"fields\":[\"displayMode\",\"hideComponentWhileLoading\",\"mainPage\",\"updateOn\",\"shortcuts\",\"preserveLastLocation\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(78,'plugins::content-manager.explorer.create','application::api-call.api-call','{\"fields\":[\"url\",\"method\",\"authorization\",\"header\",\"body\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(79,'plugins::content-manager.explorer.create','application::expandable-item.expandable-item','{\"fields\":[\"titleComponent\",\"bodyComponent\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(80,'plugins::content-manager.explorer.create','application::action.action','{\"fields\":[\"actionType\",\"style\",\"styleId\",\"title\",\"description\",\"components\",\"url\",\"authorization\",\"header\",\"body\",\"onSuccess\",\"onFail\",\"message\",\"pageId\",\"addToBackstack\",\"popBack\",\"variableId\",\"value\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(84,'plugins::content-manager.explorer.publish','application::api-call.api-call','{}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(86,'plugins::content-manager.explorer.publish','application::authorization.authorization','{}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(91,'plugins::content-manager.explorer.create','application::item.item','{\"fields\":[\"text\",\"src\",\"action\",\"selected\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(93,'plugins::content-manager.explorer.create','application::orientation.orientation','{\"fields\":[\"top\",\"end\",\"bottom\",\"start\",\"all\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(94,'plugins::content-manager.explorer.create','application::page.page','{\"fields\":[\"pageId\",\"themeId\",\"titleBar\",\"body\",\"bottom\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(99,'plugins::content-manager.explorer.create','application::shortcut.shortcut','{\"fields\":[\"label\",\"description\",\"icon\",\"pageId\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(100,'plugins::content-manager.explorer.create','application::style.style','{\"fields\":[\"styleId\",\"height\",\"width\",\"margin\",\"padding\",\"backgroundColor\",\"textSize\",\"textColor\",\"textStyle\",\"alignText\",\"alignSelf\",\"cornerRadius\",\"imageColor\",\"blur\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(101,'plugins::content-manager.explorer.create','application::theme.theme','{\"fields\":[\"themeId\",\"themeMode\",\"styles\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(102,'plugins::content-manager.explorer.create','application::titlebar.titlebar','{\"fields\":[\"title\",\"style\",\"styleId\",\"disableBackButton\",\"components\",\"floating\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(103,'plugins::content-manager.explorer.create','application::variable.variable','{\"fields\":[\"key\",\"value\",\"forceChange\",\"persistent\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(106,'plugins::content-manager.explorer.create','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(107,'plugins::content-manager.explorer.read','application::action.action','{\"fields\":[\"actionType\",\"style\",\"styleId\",\"title\",\"description\",\"components\",\"url\",\"authorization\",\"header\",\"body\",\"onSuccess\",\"onFail\",\"message\",\"pageId\",\"addToBackstack\",\"popBack\",\"variableId\",\"value\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(111,'plugins::upload.read',NULL,'{}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(112,'plugins::upload.assets.update',NULL,'{}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(113,'plugins::upload.assets.create',NULL,'{}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(114,'plugins::upload.assets.download',NULL,'{}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(115,'plugins::upload.assets.copy-link',NULL,'{}','[]',2,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(116,'plugins::content-manager.explorer.read','application::api-call.api-call','{\"fields\":[\"url\",\"method\",\"authorization\",\"header\",\"body\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(117,'plugins::content-manager.explorer.read','application::application.application','{\"fields\":[\"lang\",\"data\",\"config\",\"themes\",\"pages\",\"version\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(118,'plugins::content-manager.explorer.read','application::authorization.authorization','{\"fields\":[\"authType\",\"token\",\"username\",\"password\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(119,'plugins::content-manager.explorer.read','application::base-component.base-component','{\"fields\":[\"name\",\"visible\",\"style\",\"styleId\",\"text\",\"textAr\",\"disabled\",\"action\",\"actionAr\",\"onClick\",\"disableArrow\",\"placeholder\",\"onChange\",\"min\",\"max\",\"inputType\",\"validation\",\"validationError\",\"alt\",\"drawable\",\"url\",\"enableJavascript\",\"allowRedirection\",\"spacing\",\"direction\",\"alignItems\",\"columns\",\"rows\",\"bound\",\"value1\",\"value2\",\"conditionType\",\"onSuccess\",\"onFail\",\"searchVariableId\",\"autoCollapse\",\"scrollable\",\"breakLine\",\"autoSnap\",\"scaleAnimation\",\"centerProduct\",\"value\",\"components\",\"titleComponent\",\"bottomComponent\",\"successComponents\",\"failComponents\",\"componentsList\",\"src\",\"api\",\"apiListPath\",\"type\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(120,'plugins::content-manager.explorer.read','application::body.body','{\"fields\":[\"style\",\"styleId\",\"spacing\",\"bottom\",\"components\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(121,'plugins::content-manager.explorer.read','application::bottom.bottom','{\"fields\":[\"items\",\"style\",\"styleId\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(122,'plugins::content-manager.explorer.read','application::child-component.child-component','{\"fields\":[\"type\",\"name\",\"visible\",\"style\",\"styleId\",\"text\",\"textAr\",\"action\",\"onClick\",\"disableArrow\",\"disabled\",\"actionAr\",\"value\",\"placeholder\",\"onChange\",\"min\",\"max\",\"inputType\",\"validation\",\"validationError\",\"src\",\"alt\",\"drawable\",\"url\",\"enableJavascript\",\"allowRedirection\",\"spacing\",\"direction\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(123,'plugins::content-manager.explorer.read','application::configuration.configuration','{\"fields\":[\"displayMode\",\"hideComponentWhileLoading\",\"mainPage\",\"updateOn\",\"shortcuts\",\"preserveLastLocation\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(124,'plugins::content-manager.explorer.read','application::item.item','{\"fields\":[\"text\",\"src\",\"action\",\"selected\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(125,'plugins::content-manager.explorer.read','application::expandable-item.expandable-item','{\"fields\":[\"titleComponent\",\"bodyComponent\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(126,'plugins::content-manager.explorer.create','application::action.action','{\"fields\":[\"actionType\",\"style\",\"styleId\",\"title\",\"description\",\"components\",\"url\",\"authorization\",\"header\",\"body\",\"onSuccess\",\"onFail\",\"message\",\"pageId\",\"addToBackstack\",\"popBack\",\"variableId\",\"value\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(127,'plugins::content-manager.explorer.create','application::api-call.api-call','{\"fields\":[\"url\",\"method\",\"authorization\",\"header\",\"body\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(128,'plugins::content-manager.explorer.create','application::application.application','{\"fields\":[\"lang\",\"data\",\"config\",\"themes\",\"pages\",\"version\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(129,'plugins::content-manager.explorer.create','application::authorization.authorization','{\"fields\":[\"authType\",\"token\",\"username\",\"password\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(130,'plugins::content-manager.explorer.create','application::base-component.base-component','{\"fields\":[\"name\",\"visible\",\"style\",\"styleId\",\"text\",\"textAr\",\"disabled\",\"action\",\"actionAr\",\"onClick\",\"disableArrow\",\"placeholder\",\"onChange\",\"min\",\"max\",\"inputType\",\"validation\",\"validationError\",\"alt\",\"drawable\",\"url\",\"enableJavascript\",\"allowRedirection\",\"spacing\",\"direction\",\"alignItems\",\"columns\",\"rows\",\"bound\",\"value1\",\"value2\",\"conditionType\",\"onSuccess\",\"onFail\",\"searchVariableId\",\"autoCollapse\",\"scrollable\",\"breakLine\",\"autoSnap\",\"scaleAnimation\",\"centerProduct\",\"value\",\"components\",\"titleComponent\",\"bottomComponent\",\"successComponents\",\"failComponents\",\"componentsList\",\"src\",\"api\",\"apiListPath\",\"type\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(131,'plugins::content-manager.explorer.create','application::bottom.bottom','{\"fields\":[\"items\",\"style\",\"styleId\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(132,'plugins::content-manager.explorer.create','application::child-component.child-component','{\"fields\":[\"type\",\"name\",\"visible\",\"style\",\"styleId\",\"text\",\"textAr\",\"action\",\"onClick\",\"disableArrow\",\"disabled\",\"actionAr\",\"value\",\"placeholder\",\"onChange\",\"min\",\"max\",\"inputType\",\"validation\",\"validationError\",\"src\",\"alt\",\"drawable\",\"url\",\"enableJavascript\",\"allowRedirection\",\"spacing\",\"direction\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(133,'plugins::content-manager.explorer.create','application::body.body','{\"fields\":[\"style\",\"styleId\",\"spacing\",\"bottom\",\"components\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(134,'plugins::content-manager.explorer.create','application::expandable-item.expandable-item','{\"fields\":[\"titleComponent\",\"bodyComponent\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(135,'plugins::content-manager.explorer.create','application::configuration.configuration','{\"fields\":[\"displayMode\",\"hideComponentWhileLoading\",\"mainPage\",\"updateOn\",\"shortcuts\",\"preserveLastLocation\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(136,'plugins::content-manager.explorer.read','application::orientation.orientation','{\"fields\":[\"top\",\"end\",\"bottom\",\"start\",\"all\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(137,'plugins::content-manager.explorer.create','application::item.item','{\"fields\":[\"text\",\"src\",\"action\",\"selected\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(138,'plugins::content-manager.explorer.read','application::shortcut.shortcut','{\"fields\":[\"label\",\"description\",\"icon\",\"pageId\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(139,'plugins::content-manager.explorer.read','application::style.style','{\"fields\":[\"styleId\",\"height\",\"width\",\"margin\",\"padding\",\"backgroundColor\",\"textSize\",\"textColor\",\"textStyle\",\"alignText\",\"alignSelf\",\"cornerRadius\",\"imageColor\",\"blur\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(140,'plugins::content-manager.explorer.read','application::page.page','{\"fields\":[\"pageId\",\"themeId\",\"titleBar\",\"body\",\"bottom\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(141,'plugins::content-manager.explorer.create','application::shortcut.shortcut','{\"fields\":[\"label\",\"description\",\"icon\",\"pageId\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(142,'plugins::content-manager.explorer.create','application::orientation.orientation','{\"fields\":[\"top\",\"end\",\"bottom\",\"start\",\"all\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(143,'plugins::content-manager.explorer.create','application::page.page','{\"fields\":[\"pageId\",\"themeId\",\"titleBar\",\"body\",\"bottom\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(144,'plugins::content-manager.explorer.read','application::variable.variable','{\"fields\":[\"key\",\"value\",\"forceChange\",\"persistent\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(145,'plugins::content-manager.explorer.create','application::theme.theme','{\"fields\":[\"themeId\",\"themeMode\",\"styles\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(146,'plugins::content-manager.explorer.read','application::theme.theme','{\"fields\":[\"themeId\",\"themeMode\",\"styles\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(147,'plugins::content-manager.explorer.read','application::titlebar.titlebar','{\"fields\":[\"title\",\"style\",\"styleId\",\"disableBackButton\",\"components\",\"floating\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(148,'plugins::content-manager.explorer.create','application::variable.variable','{\"fields\":[\"key\",\"value\",\"forceChange\",\"persistent\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(149,'plugins::content-manager.explorer.create','application::titlebar.titlebar','{\"fields\":[\"title\",\"style\",\"styleId\",\"disableBackButton\",\"components\",\"floating\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(150,'plugins::content-manager.explorer.create','application::style.style','{\"fields\":[\"styleId\",\"height\",\"width\",\"margin\",\"padding\",\"backgroundColor\",\"textSize\",\"textColor\",\"textStyle\",\"alignText\",\"alignSelf\",\"cornerRadius\",\"imageColor\",\"blur\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(151,'plugins::content-manager.explorer.read','application::action.action','{\"fields\":[\"actionType\",\"style\",\"styleId\",\"title\",\"description\",\"components\",\"url\",\"authorization\",\"header\",\"body\",\"onSuccess\",\"onFail\",\"message\",\"pageId\",\"addToBackstack\",\"popBack\",\"variableId\",\"value\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(152,'plugins::content-manager.explorer.read','application::api-call.api-call','{\"fields\":[\"url\",\"method\",\"authorization\",\"header\",\"body\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(153,'plugins::content-manager.explorer.read','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(154,'plugins::content-manager.explorer.update','application::action.action','{\"fields\":[\"actionType\",\"style\",\"styleId\",\"title\",\"description\",\"components\",\"url\",\"authorization\",\"header\",\"body\",\"onSuccess\",\"onFail\",\"message\",\"pageId\",\"addToBackstack\",\"popBack\",\"variableId\",\"value\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(155,'plugins::content-manager.explorer.update','application::api-call.api-call','{\"fields\":[\"url\",\"method\",\"authorization\",\"header\",\"body\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(156,'plugins::content-manager.explorer.read','application::application.application','{\"fields\":[\"lang\",\"data\",\"config\",\"themes\",\"pages\",\"version\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(157,'plugins::content-manager.explorer.read','application::authorization.authorization','{\"fields\":[\"authType\",\"token\",\"username\",\"password\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(158,'plugins::content-manager.explorer.read','application::base-component.base-component','{\"fields\":[\"name\",\"visible\",\"style\",\"styleId\",\"text\",\"textAr\",\"disabled\",\"action\",\"actionAr\",\"onClick\",\"disableArrow\",\"placeholder\",\"onChange\",\"min\",\"max\",\"inputType\",\"validation\",\"validationError\",\"alt\",\"drawable\",\"url\",\"enableJavascript\",\"allowRedirection\",\"spacing\",\"direction\",\"alignItems\",\"columns\",\"rows\",\"bound\",\"value1\",\"value2\",\"conditionType\",\"onSuccess\",\"onFail\",\"searchVariableId\",\"autoCollapse\",\"scrollable\",\"breakLine\",\"autoSnap\",\"scaleAnimation\",\"centerProduct\",\"value\",\"components\",\"titleComponent\",\"bottomComponent\",\"successComponents\",\"failComponents\",\"componentsList\",\"src\",\"api\",\"apiListPath\",\"type\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(159,'plugins::content-manager.explorer.read','application::body.body','{\"fields\":[\"style\",\"styleId\",\"spacing\",\"bottom\",\"components\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(160,'plugins::content-manager.explorer.read','application::bottom.bottom','{\"fields\":[\"items\",\"style\",\"styleId\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(161,'plugins::content-manager.explorer.read','application::child-component.child-component','{\"fields\":[\"type\",\"name\",\"visible\",\"style\",\"styleId\",\"text\",\"textAr\",\"action\",\"onClick\",\"disableArrow\",\"disabled\",\"actionAr\",\"value\",\"placeholder\",\"onChange\",\"min\",\"max\",\"inputType\",\"validation\",\"validationError\",\"src\",\"alt\",\"drawable\",\"url\",\"enableJavascript\",\"allowRedirection\",\"spacing\",\"direction\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(162,'plugins::content-manager.explorer.update','application::application.application','{\"fields\":[\"lang\",\"data\",\"config\",\"themes\",\"pages\",\"version\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(163,'plugins::content-manager.explorer.read','application::configuration.configuration','{\"fields\":[\"displayMode\",\"hideComponentWhileLoading\",\"mainPage\",\"updateOn\",\"shortcuts\",\"preserveLastLocation\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(164,'plugins::content-manager.explorer.update','application::authorization.authorization','{\"fields\":[\"authType\",\"token\",\"username\",\"password\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(165,'plugins::content-manager.explorer.read','application::expandable-item.expandable-item','{\"fields\":[\"titleComponent\",\"bodyComponent\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(166,'plugins::content-manager.explorer.update','application::base-component.base-component','{\"fields\":[\"name\",\"visible\",\"style\",\"styleId\",\"text\",\"textAr\",\"disabled\",\"action\",\"actionAr\",\"onClick\",\"disableArrow\",\"placeholder\",\"onChange\",\"min\",\"max\",\"inputType\",\"validation\",\"validationError\",\"alt\",\"drawable\",\"url\",\"enableJavascript\",\"allowRedirection\",\"spacing\",\"direction\",\"alignItems\",\"columns\",\"rows\",\"bound\",\"value1\",\"value2\",\"conditionType\",\"onSuccess\",\"onFail\",\"searchVariableId\",\"autoCollapse\",\"scrollable\",\"breakLine\",\"autoSnap\",\"scaleAnimation\",\"centerProduct\",\"value\",\"components\",\"titleComponent\",\"bottomComponent\",\"successComponents\",\"failComponents\",\"componentsList\",\"src\",\"api\",\"apiListPath\",\"type\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(167,'plugins::content-manager.explorer.read','application::item.item','{\"fields\":[\"text\",\"src\",\"action\",\"selected\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(168,'plugins::content-manager.explorer.read','application::orientation.orientation','{\"fields\":[\"top\",\"end\",\"bottom\",\"start\",\"all\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(169,'plugins::content-manager.explorer.update','application::body.body','{\"fields\":[\"style\",\"styleId\",\"spacing\",\"bottom\",\"components\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(170,'plugins::content-manager.explorer.update','application::bottom.bottom','{\"fields\":[\"items\",\"style\",\"styleId\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(171,'plugins::content-manager.explorer.update','application::child-component.child-component','{\"fields\":[\"type\",\"name\",\"visible\",\"style\",\"styleId\",\"text\",\"textAr\",\"action\",\"onClick\",\"disableArrow\",\"disabled\",\"actionAr\",\"value\",\"placeholder\",\"onChange\",\"min\",\"max\",\"inputType\",\"validation\",\"validationError\",\"src\",\"alt\",\"drawable\",\"url\",\"enableJavascript\",\"allowRedirection\",\"spacing\",\"direction\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(172,'plugins::content-manager.explorer.update','application::configuration.configuration','{\"fields\":[\"displayMode\",\"hideComponentWhileLoading\",\"mainPage\",\"updateOn\",\"shortcuts\",\"preserveLastLocation\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(173,'plugins::content-manager.explorer.update','application::expandable-item.expandable-item','{\"fields\":[\"titleComponent\",\"bodyComponent\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(174,'plugins::content-manager.explorer.update','application::item.item','{\"fields\":[\"text\",\"src\",\"action\",\"selected\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(175,'plugins::content-manager.explorer.read','application::page.page','{\"fields\":[\"pageId\",\"themeId\",\"titleBar\",\"body\",\"bottom\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(176,'plugins::content-manager.explorer.read','application::shortcut.shortcut','{\"fields\":[\"label\",\"description\",\"icon\",\"pageId\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(177,'plugins::content-manager.explorer.read','application::style.style','{\"fields\":[\"styleId\",\"height\",\"width\",\"margin\",\"padding\",\"backgroundColor\",\"textSize\",\"textColor\",\"textStyle\",\"alignText\",\"alignSelf\",\"cornerRadius\",\"imageColor\",\"blur\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(178,'plugins::content-manager.explorer.update','application::orientation.orientation','{\"fields\":[\"top\",\"end\",\"bottom\",\"start\",\"all\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(179,'plugins::content-manager.explorer.read','application::theme.theme','{\"fields\":[\"themeId\",\"themeMode\",\"styles\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(180,'plugins::content-manager.explorer.read','application::titlebar.titlebar','{\"fields\":[\"title\",\"style\",\"styleId\",\"disableBackButton\",\"components\",\"floating\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(181,'plugins::content-manager.explorer.read','application::variable.variable','{\"fields\":[\"key\",\"value\",\"forceChange\",\"persistent\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(182,'plugins::content-manager.explorer.update','application::action.action','{\"fields\":[\"actionType\",\"style\",\"styleId\",\"title\",\"description\",\"components\",\"url\",\"authorization\",\"header\",\"body\",\"onSuccess\",\"onFail\",\"message\",\"pageId\",\"addToBackstack\",\"popBack\",\"variableId\",\"value\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(183,'plugins::content-manager.explorer.update','application::page.page','{\"fields\":[\"pageId\",\"themeId\",\"titleBar\",\"body\",\"bottom\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(184,'plugins::content-manager.explorer.update','application::api-call.api-call','{\"fields\":[\"url\",\"method\",\"authorization\",\"header\",\"body\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(185,'plugins::content-manager.explorer.update','application::shortcut.shortcut','{\"fields\":[\"label\",\"description\",\"icon\",\"pageId\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(186,'plugins::content-manager.explorer.update','application::application.application','{\"fields\":[\"lang\",\"data\",\"config\",\"themes\",\"pages\",\"version\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(187,'plugins::content-manager.explorer.update','application::style.style','{\"fields\":[\"styleId\",\"height\",\"width\",\"margin\",\"padding\",\"backgroundColor\",\"textSize\",\"textColor\",\"textStyle\",\"alignText\",\"alignSelf\",\"cornerRadius\",\"imageColor\",\"blur\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(188,'plugins::content-manager.explorer.update','application::authorization.authorization','{\"fields\":[\"authType\",\"token\",\"username\",\"password\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(189,'plugins::content-manager.explorer.update','application::theme.theme','{\"fields\":[\"themeId\",\"themeMode\",\"styles\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(190,'plugins::content-manager.explorer.update','application::titlebar.titlebar','{\"fields\":[\"title\",\"style\",\"styleId\",\"disableBackButton\",\"components\",\"floating\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(191,'plugins::content-manager.explorer.update','application::body.body','{\"fields\":[\"style\",\"styleId\",\"spacing\",\"bottom\",\"components\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(192,'plugins::content-manager.explorer.update','application::base-component.base-component','{\"fields\":[\"name\",\"visible\",\"style\",\"styleId\",\"text\",\"textAr\",\"disabled\",\"action\",\"actionAr\",\"onClick\",\"disableArrow\",\"placeholder\",\"onChange\",\"min\",\"max\",\"inputType\",\"validation\",\"validationError\",\"alt\",\"drawable\",\"url\",\"enableJavascript\",\"allowRedirection\",\"spacing\",\"direction\",\"alignItems\",\"columns\",\"rows\",\"bound\",\"value1\",\"value2\",\"conditionType\",\"onSuccess\",\"onFail\",\"searchVariableId\",\"autoCollapse\",\"scrollable\",\"breakLine\",\"autoSnap\",\"scaleAnimation\",\"centerProduct\",\"value\",\"components\",\"titleComponent\",\"bottomComponent\",\"successComponents\",\"failComponents\",\"componentsList\",\"src\",\"api\",\"apiListPath\",\"type\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(193,'plugins::content-manager.explorer.update','application::variable.variable','{\"fields\":[\"key\",\"value\",\"forceChange\",\"persistent\"],\"locales\":[\"en\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(194,'plugins::content-manager.explorer.update','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}','[]',1,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(195,'plugins::content-manager.explorer.update','application::bottom.bottom','{\"fields\":[\"items\",\"style\",\"styleId\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(198,'plugins::content-manager.explorer.update','application::child-component.child-component','{\"fields\":[\"type\",\"name\",\"visible\",\"style\",\"styleId\",\"text\",\"textAr\",\"action\",\"onClick\",\"disableArrow\",\"disabled\",\"actionAr\",\"value\",\"placeholder\",\"onChange\",\"min\",\"max\",\"inputType\",\"validation\",\"validationError\",\"src\",\"alt\",\"drawable\",\"url\",\"enableJavascript\",\"allowRedirection\",\"spacing\",\"direction\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(199,'plugins::content-manager.explorer.update','application::configuration.configuration','{\"fields\":[\"displayMode\",\"hideComponentWhileLoading\",\"mainPage\",\"updateOn\",\"shortcuts\",\"preserveLastLocation\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(200,'plugins::content-manager.explorer.update','application::expandable-item.expandable-item','{\"fields\":[\"titleComponent\",\"bodyComponent\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(201,'plugins::content-manager.explorer.update','application::item.item','{\"fields\":[\"text\",\"src\",\"action\",\"selected\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:34'),(203,'plugins::content-manager.explorer.update','application::orientation.orientation','{\"fields\":[\"top\",\"end\",\"bottom\",\"start\",\"all\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:34','2021-12-23 11:00:35'),(212,'plugins::content-manager.explorer.update','application::page.page','{\"fields\":[\"pageId\",\"themeId\",\"titleBar\",\"body\",\"bottom\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(213,'plugins::content-manager.explorer.update','application::style.style','{\"fields\":[\"styleId\",\"height\",\"width\",\"margin\",\"padding\",\"backgroundColor\",\"textSize\",\"textColor\",\"textStyle\",\"alignText\",\"alignSelf\",\"cornerRadius\",\"imageColor\",\"blur\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(214,'plugins::content-manager.explorer.update','application::shortcut.shortcut','{\"fields\":[\"label\",\"description\",\"icon\",\"pageId\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(215,'plugins::content-manager.explorer.update','application::titlebar.titlebar','{\"fields\":[\"title\",\"style\",\"styleId\",\"disableBackButton\",\"components\",\"floating\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(216,'plugins::content-manager.explorer.update','application::theme.theme','{\"fields\":[\"themeId\",\"themeMode\",\"styles\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(218,'plugins::content-manager.explorer.update','application::variable.variable','{\"fields\":[\"key\",\"value\",\"forceChange\",\"persistent\"]}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(220,'plugins::content-manager.explorer.delete','application::api-call.api-call','{}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(223,'plugins::content-manager.explorer.delete','application::authorization.authorization','{}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(256,'plugins::upload.read',NULL,'{}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(257,'plugins::upload.assets.create',NULL,'{}','[]',3,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(262,'plugins::upload.assets.download',NULL,'{}','[]',3,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(263,'plugins::upload.assets.copy-link',NULL,'{}','[]',3,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(264,'plugins::upload.assets.update',NULL,'{}','[\"admin::is-creator\"]',3,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(267,'plugins::content-type-builder.read',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(268,'plugins::email.settings.read',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(269,'plugins::i18n.locale.create',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(270,'plugins::i18n.locale.read',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(271,'plugins::i18n.locale.update',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(272,'plugins::i18n.locale.delete',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(273,'plugins::upload.read',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(274,'plugins::upload.assets.create',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(275,'plugins::upload.assets.update',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(276,'plugins::upload.assets.download',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(277,'plugins::upload.assets.copy-link',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(278,'plugins::upload.settings.read',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(279,'plugins::content-manager.single-types.configure-view',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(280,'plugins::content-manager.collection-types.configure-view',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(281,'plugins::content-manager.components.configure-layout',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(282,'plugins::users-permissions.roles.create',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(283,'plugins::users-permissions.roles.read',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(284,'plugins::users-permissions.roles.update',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(285,'plugins::users-permissions.roles.delete',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(286,'plugins::users-permissions.providers.read',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(287,'plugins::users-permissions.providers.update',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(288,'plugins::users-permissions.email-templates.read',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(289,'plugins::users-permissions.email-templates.update',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(290,'plugins::users-permissions.advanced-settings.read',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(291,'plugins::users-permissions.advanced-settings.update',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(292,'admin::marketplace.read',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(293,'admin::marketplace.plugins.install',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(294,'admin::marketplace.plugins.uninstall',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(295,'admin::webhooks.create',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(296,'admin::webhooks.read',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(297,'admin::webhooks.update',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(298,'admin::webhooks.delete',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(299,'admin::users.create',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(300,'admin::users.read',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(301,'admin::users.update',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(302,'admin::users.delete',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(303,'admin::roles.create',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(304,'admin::roles.read',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(305,'admin::roles.update',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(306,'admin::roles.delete',NULL,'{}','[]',1,'2021-12-23 11:00:35','2021-12-23 11:00:35'),(344,'plugins::upload.read',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(345,'plugins::upload.assets.create',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(346,'plugins::upload.assets.update',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(347,'plugins::upload.assets.copy-link',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(348,'plugins::upload.assets.download',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(349,'plugins::upload.settings.read',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(350,'plugins::i18n.locale.update',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(351,'plugins::i18n.locale.delete',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(352,'plugins::content-manager.single-types.configure-view',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(353,'plugins::content-manager.collection-types.configure-view',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(354,'plugins::content-manager.components.configure-layout',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(355,'plugins::users-permissions.roles.create',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(356,'plugins::users-permissions.roles.read',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(357,'plugins::users-permissions.roles.update',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(358,'plugins::users-permissions.roles.delete',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(359,'plugins::users-permissions.providers.read',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(360,'plugins::users-permissions.email-templates.read',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(361,'plugins::users-permissions.providers.update',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(362,'plugins::users-permissions.advanced-settings.read',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(363,'plugins::users-permissions.email-templates.update',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(364,'plugins::users-permissions.advanced-settings.update',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(365,'admin::marketplace.read',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(366,'admin::marketplace.plugins.install',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(367,'admin::marketplace.plugins.uninstall',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(368,'admin::webhooks.create',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(369,'admin::webhooks.read',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(370,'admin::webhooks.update',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(371,'admin::webhooks.delete',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(372,'admin::users.create',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(373,'admin::users.read',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(374,'admin::users.delete',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(375,'admin::users.update',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(376,'admin::roles.create',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(377,'admin::roles.read',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(378,'admin::roles.update',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(379,'admin::roles.delete',NULL,'{}','[]',1,'2021-12-23 11:00:36','2021-12-23 11:00:36'),(454,'plugins::content-manager.explorer.delete','application::action.action','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(455,'plugins::content-manager.explorer.delete','application::api-call.api-call','{}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(456,'plugins::content-manager.explorer.delete','application::application.application','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(457,'plugins::content-manager.explorer.delete','application::authorization.authorization','{}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(458,'plugins::content-manager.explorer.delete','application::base-component.base-component','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(459,'plugins::content-manager.explorer.delete','application::body.body','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(460,'plugins::content-manager.explorer.delete','application::bottom.bottom','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(461,'plugins::content-manager.explorer.delete','application::child-component.child-component','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(462,'plugins::content-manager.explorer.delete','application::configuration.configuration','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(463,'plugins::content-manager.explorer.delete','application::expandable-item.expandable-item','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(464,'plugins::content-manager.explorer.delete','application::item.item','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(465,'plugins::content-manager.explorer.delete','application::orientation.orientation','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(466,'plugins::content-manager.explorer.delete','application::page.page','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(467,'plugins::content-manager.explorer.delete','application::shortcut.shortcut','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(468,'plugins::content-manager.explorer.delete','application::style.style','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(469,'plugins::content-manager.explorer.delete','application::theme.theme','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(470,'plugins::content-manager.explorer.delete','application::titlebar.titlebar','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(471,'plugins::content-manager.explorer.delete','application::variable.variable','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(472,'plugins::content-manager.explorer.delete','plugins::users-permissions.user','{}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(473,'plugins::content-manager.explorer.publish','application::action.action','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(474,'plugins::content-manager.explorer.publish','application::api-call.api-call','{}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(475,'plugins::content-manager.explorer.publish','application::application.application','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(476,'plugins::content-manager.explorer.publish','application::authorization.authorization','{}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(477,'plugins::content-manager.explorer.publish','application::base-component.base-component','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(478,'plugins::content-manager.explorer.publish','application::body.body','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(479,'plugins::content-manager.explorer.publish','application::bottom.bottom','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(480,'plugins::content-manager.explorer.publish','application::child-component.child-component','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(481,'plugins::content-manager.explorer.publish','application::configuration.configuration','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(482,'plugins::content-manager.explorer.publish','application::expandable-item.expandable-item','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(483,'plugins::content-manager.explorer.publish','application::item.item','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(484,'plugins::content-manager.explorer.publish','application::orientation.orientation','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(485,'plugins::content-manager.explorer.publish','application::page.page','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(486,'plugins::content-manager.explorer.publish','application::shortcut.shortcut','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(487,'plugins::content-manager.explorer.publish','application::style.style','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(488,'plugins::content-manager.explorer.publish','application::theme.theme','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(489,'plugins::content-manager.explorer.publish','application::variable.variable','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53'),(490,'plugins::content-manager.explorer.publish','application::titlebar.titlebar','{\"locales\":[\"en\"]}','[]',1,'2021-12-29 13:58:53','2021-12-29 13:58:53');
/*!40000 ALTER TABLE `strapi_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_role`
--

DROP TABLE IF EXISTS `strapi_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_role_name_unique` (`name`),
  UNIQUE KEY `strapi_role_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_role`
--

LOCK TABLES `strapi_role` WRITE;
/*!40000 ALTER TABLE `strapi_role` DISABLE KEYS */;
INSERT INTO `strapi_role` VALUES (1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2021-12-23 11:00:34','2021-12-23 11:00:34'),(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2021-12-23 11:00:34','2021-12-23 11:00:34'),(3,'Author','strapi-author','Authors can manage the content they have created.','2021-12-23 11:00:34','2021-12-23 11:00:34');
/*!40000 ALTER TABLE `strapi_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_users_roles`
--

DROP TABLE IF EXISTS `strapi_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_users_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_users_roles`
--

LOCK TABLES `strapi_users_roles` WRITE;
/*!40000 ALTER TABLE `strapi_users_roles` DISABLE KEYS */;
INSERT INTO `strapi_users_roles` VALUES (1,1,1);
/*!40000 ALTER TABLE `strapi_users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_webhooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` longtext,
  `events` longtext,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_webhooks`
--

LOCK TABLES `strapi_webhooks` WRITE;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `styles`
--

DROP TABLE IF EXISTS `styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `styleId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `margin` int(11) DEFAULT NULL,
  `padding` int(11) DEFAULT NULL,
  `backgroundColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `textSize` decimal(10,2) DEFAULT NULL,
  `textColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `textStyle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alignText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alignSelf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cornerRadius` decimal(10,2) DEFAULT NULL,
  `imageColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `blur` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `styles`
--

LOCK TABLES `styles` WRITE;
/*!40000 ALTER TABLE `styles` DISABLE KEYS */;
INSERT INTO `styles` VALUES (1,'mobilePlansCardStyle','350','250',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'en','2021-12-20 08:39:11',1,1,'2021-12-20 08:35:25','2021-12-21 08:48:14',NULL),(2,'mobilePlansCardHeaderStyle',NULL,'200',NULL,1,'#00000000',12.00,'#ffffff','bold',NULL,'top|start',NULL,NULL,'en','2021-12-20 08:47:49',1,1,'2021-12-20 08:42:55','2021-12-29 07:16:36',NULL),(3,'mobilePlansCardBottomStyle','-1','-2',NULL,2,'#50000000',5.00,'#ffffff','bold','start','bottom',NULL,NULL,'en','2021-12-20 08:53:28',1,1,'2021-12-20 08:53:21','2021-12-21 09:50:47',NULL),(4,'transparentCardStyle','70%','-2',NULL,NULL,'#00000000',NULL,NULL,NULL,NULL,NULL,0.00,NULL,'en','2021-12-20 09:42:42',1,1,'2021-12-20 09:42:40','2021-12-20 09:42:42',NULL),(5,'postpaidBackgroundCard','65%','-2',NULL,NULL,'#004f75',NULL,NULL,NULL,NULL,NULL,0.00,NULL,'en','2021-12-20 09:44:52',1,1,'2021-12-20 09:44:48','2021-12-20 09:44:52',NULL),(6,'selectedPlanButtonStyle',NULL,'-1',NULL,NULL,'#00000000',8.00,'#ffffff','normal',NULL,'center',NULL,NULL,'en','2021-12-20 09:47:50',1,1,'2021-12-20 09:47:38','2021-12-20 09:47:50',NULL),(7,'nonSelectedPlanButtonStyle','','-1',NULL,NULL,'#00000000',8.00,'#c1c1c1',NULL,NULL,'center',NULL,NULL,'en','2021-12-20 09:49:37',1,1,'2021-12-20 09:48:16','2021-12-20 09:49:37',NULL),(8,'planSelectorGridStyle','-1','-2',NULL,1,NULL,NULL,NULL,NULL,NULL,'top',NULL,NULL,'en','2021-12-20 09:51:32',1,1,'2021-12-20 09:51:30','2021-12-22 06:50:26',NULL),(9,'postpaidPlansListStyle',NULL,'-2',NULL,NULL,'',NULL,NULL,NULL,NULL,'bottom|center',NULL,NULL,'en','2021-12-20 10:18:17',1,1,'2021-12-20 10:17:51','2021-12-21 08:58:53',NULL),(10,'postPaid50ListContentStyle',NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,'start|top',NULL,NULL,'en','2021-12-20 10:25:21',1,1,'2021-12-20 10:25:19','2021-12-21 09:54:17',NULL),(11,'planNameStyle','-1',NULL,NULL,NULL,NULL,10.00,'#ffffff','bold',NULL,NULL,NULL,NULL,'en','2021-12-20 10:27:24',1,1,'2021-12-20 10:27:22','2021-12-22 13:45:49',NULL),(12,'planMinutesStyle',NULL,NULL,NULL,3,NULL,5.00,'#ffffff',NULL,NULL,NULL,NULL,NULL,'en','2021-12-20 10:29:53',1,1,'2021-12-20 10:29:51','2021-12-22 06:34:59',NULL),(13,'planDetailsButtonStyle',NULL,'-1',NULL,NULL,NULL,6.00,'#a0a0a0',NULL,'start',NULL,NULL,NULL,'en','2021-12-20 10:33:29',1,1,'2021-12-20 10:33:27','2021-12-20 10:33:53',NULL),(14,'planCardStyle','60%','85%',NULL,NULL,'#50000000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'en','2021-12-20 10:44:08',1,1,'2021-12-20 10:44:06','2021-12-21 09:00:21',NULL),(15,'andMoreTextStyle','-1','-1',3,NULL,'#00000000',6.00,'#a0a0a0',NULL,'start',NULL,NULL,NULL,'en','2021-12-21 10:00:53',1,1,'2021-12-21 10:00:43','2021-12-21 10:03:44',NULL),(16,'postPaid50BottomGridStyle','75','-2',NULL,1,'#8e000000',NULL,NULL,NULL,NULL,'bottom',NULL,NULL,'en','2021-12-21 10:08:06',1,1,'2021-12-21 10:07:24','2021-12-21 10:08:06',NULL),(17,'subscribtionLabelTextStyle',NULL,NULL,NULL,NULL,'#00000000',4.00,'#ffffff','normal','start','start',NULL,NULL,'en','2021-12-21 10:13:51',1,1,'2021-12-21 10:11:55','2021-12-21 10:43:23',NULL),(18,'planSubscriptionDetailsGridStyle',NULL,'150',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'en','2021-12-21 10:15:42',1,1,'2021-12-21 10:15:40','2021-12-21 10:19:04',NULL),(19,'planPriceDetailsGrid',NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,NULL,'end',NULL,NULL,'en','2021-12-21 10:20:36',1,1,'2021-12-21 10:20:35','2021-12-21 10:20:36',NULL),(20,'planPriceLabel',NULL,NULL,NULL,NULL,NULL,9.00,'#ffffff','bold',NULL,'start|top',NULL,'','en','2021-12-21 10:23:01',1,1,'2021-12-21 10:22:59','2021-12-21 10:23:01',NULL),(21,'sarPerMonthLabelStyle',NULL,'50',NULL,5,'#00000000',4.00,'#ffffff','normal',NULL,'start|center',NULL,NULL,'en','2021-12-21 10:25:26',1,1,'2021-12-21 10:25:24','2021-12-21 10:44:19',NULL),(22,'planSelectButtonStyle',NULL,NULL,NULL,NULL,'#00000000',6.00,'#ffffff','bold',NULL,'end|centerVertical',NULL,NULL,'en','2021-12-21 10:38:07',1,1,'2021-12-21 10:37:59','2021-12-21 10:38:07',NULL),(23,'includeVatLabelStyle',NULL,NULL,NULL,6,'#00000000',4.00,'#c1c1c1','normal','start',NULL,NULL,NULL,'en','2021-12-21 12:51:58',1,1,'2021-12-21 12:51:56','2021-12-21 12:52:51',NULL),(24,'prepaidBackgroundCard','65%','-2',NULL,NULL,'#C35200',NULL,NULL,NULL,NULL,NULL,0.00,NULL,'en','2021-12-21 12:59:47',1,1,'2021-12-21 12:59:44','2021-12-21 12:59:47',NULL),(25,'mobilePlansSharedContentListStyle',NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'en','2021-12-21 13:59:07',1,1,'2021-12-21 13:58:51','2021-12-21 13:59:07',NULL),(26,'benefitsLabelStyle',NULL,NULL,NULL,NULL,NULL,16.00,NULL,'bold',NULL,NULL,NULL,NULL,'en','2021-12-21 14:00:31',1,1,'2021-12-21 14:00:29','2021-12-21 14:00:40',NULL),(27,'plansDrawableStyle','50','50',NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'en','2021-12-21 14:02:00',1,1,'2021-12-21 14:01:57','2021-12-21 14:16:58',NULL),(28,'fastDeliveryLabelStyle',NULL,NULL,NULL,NULL,NULL,8.00,NULL,'bold',NULL,NULL,NULL,NULL,'en','2021-12-21 14:04:37',1,1,'2021-12-21 14:04:09','2021-12-21 14:04:37',NULL),(29,'doorToDoorLabelStyle',NULL,NULL,NULL,NULL,NULL,8.00,NULL,'normal',NULL,NULL,NULL,NULL,'en','2021-12-21 14:05:24',1,1,'2021-12-21 14:05:23','2021-12-21 14:05:30',NULL),(30,'titleBarStyle',NULL,NULL,NULL,NULL,'#ffffff',NULL,'#000000',NULL,NULL,NULL,NULL,NULL,'en','2021-12-21 14:10:31',1,1,'2021-12-21 14:10:29','2021-12-21 14:10:31',NULL),(31,'planDetailsTitleBarStyle',NULL,NULL,NULL,NULL,'#00000000',NULL,'#ffffff',NULL,NULL,NULL,NULL,NULL,'en','2021-12-22 06:07:38',1,1,'2021-12-22 06:07:35','2021-12-22 10:36:06',NULL),(32,'planDetailsCardStyle','60%','-2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,'en','2021-12-22 06:11:32',1,1,'2021-12-22 06:11:22','2021-12-22 06:16:14',15),(33,'PlanDetailsContentListStyle',NULL,NULL,NULL,8,NULL,NULL,NULL,NULL,NULL,'start|top',NULL,NULL,'en','2021-12-22 06:23:19',1,1,'2021-12-22 06:23:17','2021-12-22 06:24:00',NULL),(34,'chooseSimTypeStyle',NULL,NULL,NULL,9,NULL,6.00,'#ffffff',NULL,NULL,NULL,NULL,NULL,'en','2021-12-22 06:24:55',1,1,'2021-12-22 06:24:48','2021-12-22 06:39:59',NULL),(35,'nationalBenefitsLabelStyle',NULL,'-2',NULL,3,NULL,9.00,'#000000','bold','center',NULL,NULL,NULL,'en','2021-12-22 06:36:55',1,1,'2021-12-22 06:36:53','2021-12-22 07:41:19',NULL),(36,'planDetailsDataTextStyle',NULL,NULL,NULL,3,NULL,6.00,'#000000','bold',NULL,'start',NULL,NULL,'en','2021-12-22 06:53:01',1,1,'2021-12-22 06:52:59','2021-12-22 06:57:28',NULL),(37,'PlanDetailsDataStyle',NULL,NULL,NULL,3,NULL,6.00,'#000000','bold',NULL,'end',NULL,NULL,'en','2021-12-22 06:58:06',1,1,'2021-12-22 06:58:04','2021-12-22 06:58:23',NULL),(38,'planDetailsDataDescriptionListStyle',NULL,'-2',NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'en','2021-12-22 07:07:52',1,1,'2021-12-22 07:07:50','2021-12-22 07:08:56',NULL),(39,'planDetailsDrawable','50','50',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'#008cff','en','2021-12-22 07:27:32',1,1,'2021-12-22 07:27:30','2021-12-22 07:44:00',NULL),(40,'planDetailsDataGridStyle','-1','-2',NULL,11,NULL,NULL,NULL,NULL,NULL,'top',NULL,NULL,'en','2021-12-22 07:29:42',1,1,'2021-12-22 07:29:40','2021-12-22 07:29:42',NULL),(41,'planDetailsDescriptionListStyle',NULL,NULL,NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'en','2021-12-22 08:09:25',1,1,'2021-12-22 08:09:23','2021-12-22 08:09:25',NULL),(42,'buyCardStyle','80','-2',NULL,NULL,'#e0f0f0f0',7.00,NULL,NULL,NULL,NULL,0.00,NULL,'en','2021-12-22 08:28:44',1,1,'2021-12-22 08:28:38','2021-12-28 06:41:38',NULL),(43,'buyButtonStyle','-1','100',1,NULL,'#008cff',6.00,'#FFFFFF',NULL,'center','center|end',NULL,NULL,'en','2021-12-22 08:32:40',1,1,'2021-12-22 08:32:38','2021-12-28 06:42:31',NULL),(44,'planDetailsPriceGridStyle','-1','-2',NULL,1,'#00000000',NULL,NULL,NULL,NULL,'center|start',NULL,NULL,'en','2021-12-22 09:09:37',1,1,'2021-12-22 09:09:35','2021-12-22 09:12:42',NULL),(45,'planDetailsSubscriptionLabelStyle',NULL,NULL,NULL,NULL,NULL,5.00,'#000000','normal',NULL,NULL,NULL,NULL,'en','2021-12-22 09:17:33',1,1,'2021-12-22 09:17:31','2021-12-22 09:17:47',NULL),(46,'planDetailsPriceStyle',NULL,NULL,NULL,NULL,NULL,6.00,'#000000','bold',NULL,NULL,NULL,NULL,'en','2021-12-22 09:18:31',1,1,'2021-12-22 09:18:19','2021-12-22 09:18:40',NULL),(47,'planDetailsPriceTypeStyle',NULL,NULL,NULL,NULL,NULL,4.00,'#000000','bold',NULL,NULL,NULL,NULL,'en','2021-12-22 09:22:54',1,1,'2021-12-22 09:22:33','2021-12-22 09:23:01',NULL),(48,'mobilePlansTitleBarStyle',NULL,NULL,NULL,NULL,'#004e76',NULL,'#ffffff',NULL,NULL,NULL,NULL,NULL,'en','2021-12-22 10:36:59',1,1,'2021-12-22 10:36:57','2021-12-22 10:36:59',NULL),(49,'planNameStyle2','-1','40%',NULL,NULL,'#00000000',10.00,'#ffffff','bold',NULL,NULL,NULL,NULL,'en','2021-12-22 13:46:34',1,1,'2021-12-22 13:46:31','2021-12-22 13:47:46',NULL),(50,'new/keepNumberCardStyle','-1','-2',NULL,NULL,'#50008cff',NULL,NULL,NULL,NULL,NULL,10.00,NULL,'en','2021-12-28 07:07:28',1,1,'2021-12-28 07:07:24','2021-12-28 08:25:25',NULL),(51,'new/keepNumberGridStyle','-1','-2',NULL,1,'#00000000',NULL,NULL,NULL,NULL,'center',NULL,NULL,'en','2021-12-28 07:08:19',1,1,'2021-12-28 07:08:18','2021-12-28 08:21:40',NULL),(52,'new/keepNumberImageStyle','20','20',NULL,NULL,'null',NULL,NULL,NULL,NULL,NULL,NULL,'#008cff','en','2021-12-28 07:09:29',1,1,'2021-12-28 07:09:28','2021-12-28 07:34:10',NULL),(53,'new/keepNumberContentListStyle','-1','250',NULL,NULL,'#00000000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'en','2021-12-28 07:16:19',1,1,'2021-12-28 07:16:18','2021-12-28 07:44:59',NULL),(54,'new/keepNumberLabelStyle',NULL,NULL,NULL,NULL,NULL,5.00,'#000000','bold',NULL,NULL,NULL,NULL,'en','2021-12-28 07:47:15',1,1,'2021-12-28 07:47:13','2021-12-28 07:48:06',NULL),(55,'letsGetStratedLabelStyle','-1','300',NULL,NULL,NULL,14.00,'#000000','bold',NULL,NULL,NULL,NULL,'en','2021-12-28 07:50:42',1,1,'2021-12-28 07:50:41','2021-12-28 07:52:07',NULL),(56,'joinUsLabelStyle',NULL,NULL,NULL,NULL,NULL,8.00,'#000000','bold',NULL,NULL,NULL,NULL,'en','2021-12-28 07:53:06',1,1,'2021-12-28 07:53:05','2021-12-28 07:53:06',NULL),(57,'StartJourneyBodyStyle',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'en','2021-12-28 07:57:38',1,1,'2021-12-28 07:57:37','2021-12-28 07:57:38',NULL),(58,'testCardStyle','100','100',NULL,NULL,'#004f75',NULL,NULL,NULL,NULL,NULL,20.00,NULL,'en','2021-12-28 08:23:33',1,1,'2021-12-28 08:23:29','2021-12-28 08:23:33',NULL),(59,'numberHyperLinkStyle',NULL,'-2',NULL,NULL,NULL,NULL,'#000000',NULL,'start',NULL,NULL,'#008cff','en','2021-12-28 09:03:16',1,1,'2021-12-28 09:03:15','2021-12-28 09:06:47',NULL),(60,'chooseNumberLabelStyle',NULL,NULL,NULL,NULL,NULL,8.00,'#000000','bold',NULL,NULL,NULL,NULL,'en','2021-12-28 09:04:23',1,1,'2021-12-28 09:04:22','2021-12-28 09:06:01',NULL),(61,'chooseNumberImageStyle','50','50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'center',NULL,'#008cff','en','2021-12-28 09:05:04',1,1,'2021-12-28 09:05:02','2021-12-28 09:05:04',NULL),(62,'numberCardStyle',NULL,'-2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,'en','2021-12-28 09:39:31',1,1,'2021-12-28 09:39:28','2021-12-28 09:39:42',NULL),(63,'numberLabelStyle',NULL,NULL,NULL,NULL,NULL,NULL,'#000000',NULL,NULL,'start',NULL,NULL,'en','2021-12-28 09:41:01',1,1,'2021-12-28 09:40:59','2021-12-28 09:41:01',NULL);
/*!40000 ALTER TABLE `styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `styles__localizations`
--

DROP TABLE IF EXISTS `styles__localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `styles__localizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `style_id` int(11) DEFAULT NULL,
  `related_style_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `styles__localizations`
--

LOCK TABLES `styles__localizations` WRITE;
/*!40000 ALTER TABLE `styles__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `styles__localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `themes`
--

DROP TABLE IF EXISTS `themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `themes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `themeId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `themeMode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `themes`
--

LOCK TABLES `themes` WRITE;
/*!40000 ALTER TABLE `themes` DISABLE KEYS */;
/*!40000 ALTER TABLE `themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `themes__localizations`
--

DROP TABLE IF EXISTS `themes__localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `themes__localizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `theme_id` int(11) DEFAULT NULL,
  `related_theme_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `themes__localizations`
--

LOCK TABLES `themes__localizations` WRITE;
/*!40000 ALTER TABLE `themes__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `themes__localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `themes__styles`
--

DROP TABLE IF EXISTS `themes__styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `themes__styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `theme_id` int(11) DEFAULT NULL,
  `style_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `themes__styles`
--

LOCK TABLES `themes__styles` WRITE;
/*!40000 ALTER TABLE `themes__styles` DISABLE KEYS */;
/*!40000 ALTER TABLE `themes__styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titlebars`
--

DROP TABLE IF EXISTS `titlebars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `titlebars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `style` int(11) DEFAULT NULL,
  `styleId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disableBackButton` tinyint(1) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `floating` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titlebars`
--

LOCK TABLES `titlebars` WRITE;
/*!40000 ALTER TABLE `titlebars` DISABLE KEYS */;
INSERT INTO `titlebars` VALUES (1,'Physical SIM',30,NULL,0,'en','2021-12-20 08:26:55',1,1,'2021-12-20 08:26:46','2021-12-21 14:10:37',NULL),(2,'',31,NULL,0,'en','2021-12-22 06:07:58',1,1,'2021-12-22 06:07:55','2021-12-22 06:15:03',1),(3,'Mobile plans',48,NULL,0,'en','2021-12-22 10:33:25',1,1,'2021-12-22 10:33:22','2021-12-22 10:37:19',0),(4,'Buy [${planName}]',30,NULL,0,'en','2021-12-28 06:49:10',1,1,'2021-12-28 06:48:57','2021-12-28 09:46:26',0);
/*!40000 ALTER TABLE `titlebars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titlebars__base_components`
--

DROP TABLE IF EXISTS `titlebars__base_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `titlebars__base_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titlebar_id` int(11) DEFAULT NULL,
  `base-component_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titlebars__base_components`
--

LOCK TABLES `titlebars__base_components` WRITE;
/*!40000 ALTER TABLE `titlebars__base_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `titlebars__base_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titlebars__components`
--

DROP TABLE IF EXISTS `titlebars__components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `titlebars__components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titlebar_id` int(11) DEFAULT NULL,
  `base-component_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titlebars__components`
--

LOCK TABLES `titlebars__components` WRITE;
/*!40000 ALTER TABLE `titlebars__components` DISABLE KEYS */;
/*!40000 ALTER TABLE `titlebars__components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titlebars__localizations`
--

DROP TABLE IF EXISTS `titlebars__localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `titlebars__localizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titlebar_id` int(11) DEFAULT NULL,
  `related_titlebar_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titlebars__localizations`
--

LOCK TABLES `titlebars__localizations` WRITE;
/*!40000 ALTER TABLE `titlebars__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `titlebars__localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file`
--

DROP TABLE IF EXISTS `upload_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file`
--

LOCK TABLES `upload_file` WRITE;
/*!40000 ALTER TABLE `upload_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file_morph`
--

DROP TABLE IF EXISTS `upload_file_morph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_file_morph` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext,
  `field` longtext,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file_morph`
--

LOCK TABLES `upload_file_morph` WRITE;
/*!40000 ALTER TABLE `upload_file_morph` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_file_morph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_permission`
--

DROP TABLE IF EXISTS `users-permissions_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=528 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_permission`
--

LOCK TABLES `users-permissions_permission` WRITE;
/*!40000 ALTER TABLE `users-permissions_permission` DISABLE KEYS */;
INSERT INTO `users-permissions_permission` VALUES (1,'application','action','count',0,'',1,NULL,NULL),(2,'application','action','count',0,'',2,NULL,NULL),(3,'application','action','create',0,'',1,NULL,NULL),(4,'application','action','createlocalization',0,'',1,NULL,NULL),(5,'application','action','find',0,'',2,NULL,NULL),(6,'application','action','find',0,'',1,NULL,NULL),(7,'application','action','delete',0,'',1,NULL,NULL),(8,'application','action','delete',0,'',2,NULL,NULL),(9,'application','action','create',0,'',2,NULL,NULL),(10,'application','action','createlocalization',0,'',2,NULL,NULL),(11,'application','action','findone',0,'',1,NULL,NULL),(12,'application','action','update',0,'',1,NULL,NULL),(13,'application','action','findone',0,'',2,NULL,NULL),(14,'application','action','update',0,'',2,NULL,NULL),(15,'application','api-call','count',0,'',2,NULL,NULL),(16,'application','api-call','create',0,'',1,NULL,NULL),(17,'application','api-call','count',0,'',1,NULL,NULL),(18,'application','api-call','create',0,'',2,NULL,NULL),(19,'application','api-call','delete',0,'',1,NULL,NULL),(20,'application','api-call','delete',0,'',2,NULL,NULL),(21,'application','api-call','find',0,'',1,NULL,NULL),(22,'application','api-call','find',0,'',2,NULL,NULL),(23,'application','api-call','findone',0,'',2,NULL,NULL),(24,'application','api-call','findone',0,'',1,NULL,NULL),(25,'application','api-call','update',0,'',1,NULL,NULL),(26,'application','api-call','update',0,'',2,NULL,NULL),(27,'application','application','count',0,'',1,NULL,NULL),(28,'application','application','count',0,'',2,NULL,NULL),(29,'application','application','create',0,'',1,NULL,NULL),(30,'application','application','create',0,'',2,NULL,NULL),(31,'application','application','createlocalization',0,'',1,NULL,NULL),(32,'application','application','createlocalization',0,'',2,NULL,NULL),(33,'application','application','delete',0,'',1,NULL,NULL),(34,'application','application','delete',0,'',2,NULL,NULL),(35,'application','application','find',0,'',1,NULL,NULL),(36,'application','application','find',1,'',2,NULL,NULL),(37,'application','application','findone',0,'',1,NULL,NULL),(38,'application','application','findone',1,'',2,NULL,NULL),(39,'application','application','update',0,'',1,NULL,NULL),(40,'application','application','update',0,'',2,NULL,NULL),(41,'application','authorization','count',0,'',1,NULL,NULL),(42,'application','authorization','count',0,'',2,NULL,NULL),(43,'application','authorization','create',0,'',1,NULL,NULL),(44,'application','authorization','create',0,'',2,NULL,NULL),(45,'application','authorization','delete',0,'',1,NULL,NULL),(46,'application','authorization','delete',0,'',2,NULL,NULL),(47,'application','authorization','find',0,'',1,NULL,NULL),(48,'application','authorization','find',0,'',2,NULL,NULL),(49,'application','authorization','findone',0,'',1,NULL,NULL),(50,'application','authorization','findone',0,'',2,NULL,NULL),(51,'application','authorization','update',0,'',1,NULL,NULL),(52,'application','authorization','update',0,'',2,NULL,NULL),(53,'application','base-component','count',0,'',1,NULL,NULL),(54,'application','base-component','count',0,'',2,NULL,NULL),(55,'application','base-component','create',0,'',1,NULL,NULL),(56,'application','base-component','create',0,'',2,NULL,NULL),(57,'application','base-component','createlocalization',0,'',1,NULL,NULL),(58,'application','base-component','createlocalization',0,'',2,NULL,NULL),(59,'application','base-component','delete',0,'',1,NULL,NULL),(60,'application','base-component','delete',0,'',2,NULL,NULL),(61,'application','base-component','find',0,'',1,NULL,NULL),(62,'application','base-component','find',0,'',2,NULL,NULL),(63,'application','base-component','findone',0,'',1,NULL,NULL),(64,'application','base-component','findone',0,'',2,NULL,NULL),(65,'application','base-component','update',0,'',1,NULL,NULL),(66,'application','base-component','update',0,'',2,NULL,NULL),(67,'application','body','count',0,'',1,NULL,NULL),(68,'application','body','count',0,'',2,NULL,NULL),(69,'application','body','create',0,'',1,NULL,NULL),(70,'application','body','create',0,'',2,NULL,NULL),(71,'application','body','createlocalization',0,'',1,NULL,NULL),(72,'application','body','createlocalization',0,'',2,NULL,NULL),(73,'application','body','delete',0,'',1,NULL,NULL),(74,'application','body','delete',0,'',2,NULL,NULL),(75,'application','body','find',0,'',1,NULL,NULL),(76,'application','body','find',0,'',2,NULL,NULL),(77,'application','body','findone',0,'',1,NULL,NULL),(78,'application','body','findone',0,'',2,NULL,NULL),(79,'application','body','update',0,'',1,NULL,NULL),(80,'application','body','update',0,'',2,NULL,NULL),(81,'application','bottom','count',0,'',1,NULL,NULL),(82,'application','bottom','count',0,'',2,NULL,NULL),(83,'application','bottom','create',0,'',1,NULL,NULL),(84,'application','bottom','create',0,'',2,NULL,NULL),(85,'application','bottom','createlocalization',0,'',1,NULL,NULL),(86,'application','bottom','createlocalization',0,'',2,NULL,NULL),(87,'application','bottom','delete',0,'',1,NULL,NULL),(88,'application','bottom','delete',0,'',2,NULL,NULL),(89,'application','bottom','find',0,'',1,NULL,NULL),(90,'application','bottom','find',0,'',2,NULL,NULL),(91,'application','bottom','findone',0,'',1,NULL,NULL),(92,'application','bottom','findone',0,'',2,NULL,NULL),(93,'application','bottom','update',0,'',1,NULL,NULL),(94,'application','child-component','count',0,'',1,NULL,NULL),(95,'application','bottom','update',0,'',2,NULL,NULL),(96,'application','child-component','count',0,'',2,NULL,NULL),(97,'application','child-component','create',0,'',1,NULL,NULL),(98,'application','child-component','create',0,'',2,NULL,NULL),(99,'application','child-component','createlocalization',0,'',1,NULL,NULL),(100,'application','child-component','createlocalization',0,'',2,NULL,NULL),(101,'application','child-component','delete',0,'',1,NULL,NULL),(102,'application','child-component','find',0,'',2,NULL,NULL),(103,'application','child-component','find',0,'',1,NULL,NULL),(104,'application','child-component','delete',0,'',2,NULL,NULL),(105,'application','child-component','findone',0,'',1,NULL,NULL),(106,'application','child-component','findone',0,'',2,NULL,NULL),(107,'application','child-component','update',0,'',2,NULL,NULL),(108,'application','configuration','count',0,'',1,NULL,NULL),(109,'application','configuration','count',0,'',2,NULL,NULL),(110,'application','child-component','update',0,'',1,NULL,NULL),(111,'application','configuration','create',0,'',1,NULL,NULL),(112,'application','configuration','create',0,'',2,NULL,NULL),(113,'application','configuration','createlocalization',0,'',1,NULL,NULL),(114,'application','configuration','createlocalization',0,'',2,NULL,NULL),(115,'application','configuration','delete',0,'',1,NULL,NULL),(116,'application','configuration','delete',0,'',2,NULL,NULL),(117,'application','configuration','find',0,'',1,NULL,NULL),(118,'application','configuration','find',0,'',2,NULL,NULL),(119,'application','configuration','findone',0,'',2,NULL,NULL),(120,'application','configuration','findone',0,'',1,NULL,NULL),(121,'application','configuration','update',0,'',2,NULL,NULL),(122,'application','expandable-item','count',0,'',1,NULL,NULL),(123,'application','configuration','update',0,'',1,NULL,NULL),(124,'application','expandable-item','count',0,'',2,NULL,NULL),(125,'application','expandable-item','create',0,'',1,NULL,NULL),(126,'application','expandable-item','create',0,'',2,NULL,NULL),(127,'application','expandable-item','createlocalization',0,'',1,NULL,NULL),(128,'application','expandable-item','createlocalization',0,'',2,NULL,NULL),(129,'application','expandable-item','findone',0,'',1,NULL,NULL),(130,'application','expandable-item','find',0,'',1,NULL,NULL),(131,'application','expandable-item','delete',0,'',2,NULL,NULL),(132,'application','expandable-item','find',0,'',2,NULL,NULL),(133,'application','expandable-item','delete',0,'',1,NULL,NULL),(134,'application','expandable-item','findone',0,'',2,NULL,NULL),(135,'application','item','count',0,'',1,NULL,NULL),(136,'application','expandable-item','update',0,'',1,NULL,NULL),(137,'application','expandable-item','update',0,'',2,NULL,NULL),(138,'application','item','count',0,'',2,NULL,NULL),(139,'application','item','create',0,'',1,NULL,NULL),(140,'application','item','create',0,'',2,NULL,NULL),(141,'application','item','createlocalization',0,'',1,NULL,NULL),(142,'application','item','createlocalization',0,'',2,NULL,NULL),(143,'application','item','delete',0,'',1,NULL,NULL),(144,'application','item','find',0,'',1,NULL,NULL),(145,'application','item','delete',0,'',2,NULL,NULL),(146,'application','item','findone',0,'',1,NULL,NULL),(147,'application','item','findone',0,'',2,NULL,NULL),(148,'application','item','find',0,'',2,NULL,NULL),(149,'application','item','update',0,'',1,NULL,NULL),(150,'application','item','update',0,'',2,NULL,NULL),(151,'application','orientation','count',0,'',1,NULL,NULL),(152,'application','orientation','count',0,'',2,NULL,NULL),(153,'application','orientation','create',0,'',1,NULL,NULL),(154,'application','orientation','create',0,'',2,NULL,NULL),(155,'application','orientation','createlocalization',0,'',1,NULL,NULL),(156,'application','orientation','createlocalization',0,'',2,NULL,NULL),(157,'application','orientation','delete',0,'',1,NULL,NULL),(158,'application','orientation','delete',0,'',2,NULL,NULL),(159,'application','orientation','find',0,'',1,NULL,NULL),(160,'application','orientation','find',0,'',2,NULL,NULL),(161,'application','orientation','findone',0,'',1,NULL,NULL),(162,'application','orientation','update',0,'',1,NULL,NULL),(163,'application','orientation','findone',0,'',2,NULL,NULL),(164,'application','orientation','update',0,'',2,NULL,NULL),(165,'application','page','count',0,'',1,NULL,NULL),(166,'application','page','count',0,'',2,NULL,NULL),(167,'application','page','create',0,'',1,NULL,NULL),(168,'application','page','create',0,'',2,NULL,NULL),(169,'application','page','createlocalization',0,'',1,NULL,NULL),(170,'application','page','createlocalization',0,'',2,NULL,NULL),(171,'application','page','delete',0,'',1,NULL,NULL),(172,'application','page','delete',0,'',2,NULL,NULL),(173,'application','page','find',0,'',1,NULL,NULL),(174,'application','page','find',0,'',2,NULL,NULL),(175,'application','page','findone',0,'',1,NULL,NULL),(176,'application','page','findone',0,'',2,NULL,NULL),(177,'application','page','update',0,'',1,NULL,NULL),(178,'application','page','update',0,'',2,NULL,NULL),(179,'application','shortcut','count',0,'',1,NULL,NULL),(180,'application','shortcut','count',0,'',2,NULL,NULL),(181,'application','shortcut','create',0,'',1,NULL,NULL),(182,'application','shortcut','create',0,'',2,NULL,NULL),(183,'application','shortcut','createlocalization',0,'',1,NULL,NULL),(184,'application','shortcut','createlocalization',0,'',2,NULL,NULL),(185,'application','shortcut','delete',0,'',1,NULL,NULL),(186,'application','shortcut','delete',0,'',2,NULL,NULL),(187,'application','shortcut','find',0,'',1,NULL,NULL),(188,'application','shortcut','find',0,'',2,NULL,NULL),(189,'application','shortcut','findone',0,'',1,NULL,NULL),(190,'application','shortcut','findone',0,'',2,NULL,NULL),(191,'application','shortcut','update',0,'',1,NULL,NULL),(192,'application','shortcut','update',0,'',2,NULL,NULL),(193,'application','style','count',0,'',1,NULL,NULL),(194,'application','style','count',0,'',2,NULL,NULL),(195,'application','style','create',0,'',1,NULL,NULL),(196,'application','style','create',0,'',2,NULL,NULL),(197,'application','style','createlocalization',0,'',1,NULL,NULL),(198,'application','style','createlocalization',0,'',2,NULL,NULL),(199,'application','style','delete',0,'',1,NULL,NULL),(200,'application','style','delete',0,'',2,NULL,NULL),(201,'application','style','find',0,'',1,NULL,NULL),(202,'application','style','find',0,'',2,NULL,NULL),(203,'application','style','findone',0,'',1,NULL,NULL),(204,'application','style','findone',0,'',2,NULL,NULL),(205,'application','style','update',0,'',2,NULL,NULL),(206,'application','style','update',0,'',1,NULL,NULL),(207,'application','theme','count',0,'',1,NULL,NULL),(208,'application','theme','count',0,'',2,NULL,NULL),(209,'application','theme','create',0,'',1,NULL,NULL),(210,'application','theme','create',0,'',2,NULL,NULL),(211,'application','theme','createlocalization',0,'',1,NULL,NULL),(212,'application','theme','createlocalization',0,'',2,NULL,NULL),(213,'application','theme','delete',0,'',1,NULL,NULL),(214,'application','theme','delete',0,'',2,NULL,NULL),(215,'application','theme','find',0,'',1,NULL,NULL),(216,'application','theme','find',0,'',2,NULL,NULL),(217,'application','theme','findone',0,'',1,NULL,NULL),(218,'application','theme','findone',0,'',2,NULL,NULL),(219,'application','theme','update',0,'',1,NULL,NULL),(220,'application','theme','update',0,'',2,NULL,NULL),(221,'application','titlebar','count',0,'',1,NULL,NULL),(222,'application','titlebar','count',0,'',2,NULL,NULL),(223,'application','titlebar','create',0,'',1,NULL,NULL),(224,'application','titlebar','create',0,'',2,NULL,NULL),(225,'application','titlebar','createlocalization',0,'',1,NULL,NULL),(226,'application','titlebar','createlocalization',0,'',2,NULL,NULL),(227,'application','titlebar','delete',0,'',1,NULL,NULL),(228,'application','titlebar','delete',0,'',2,NULL,NULL),(229,'application','titlebar','find',0,'',1,NULL,NULL),(230,'application','titlebar','find',0,'',2,NULL,NULL),(231,'application','titlebar','findone',0,'',1,NULL,NULL),(232,'application','titlebar','findone',0,'',2,NULL,NULL),(233,'application','titlebar','update',0,'',1,NULL,NULL),(234,'application','titlebar','update',0,'',2,NULL,NULL),(235,'application','variable','count',0,'',1,NULL,NULL),(236,'application','variable','count',0,'',2,NULL,NULL),(237,'application','variable','create',0,'',1,NULL,NULL),(238,'application','variable','create',0,'',2,NULL,NULL),(239,'application','variable','createlocalization',0,'',1,NULL,NULL),(240,'application','variable','createlocalization',0,'',2,NULL,NULL),(241,'application','variable','delete',0,'',1,NULL,NULL),(242,'application','variable','delete',0,'',2,NULL,NULL),(243,'application','variable','find',0,'',1,NULL,NULL),(244,'application','variable','findone',0,'',1,NULL,NULL),(245,'application','variable','find',0,'',2,NULL,NULL),(246,'application','variable','findone',0,'',2,NULL,NULL),(247,'application','variable','update',0,'',1,NULL,NULL),(248,'application','variable','update',0,'',2,NULL,NULL),(249,'content-manager','collection-types','create',0,'',1,NULL,NULL),(250,'content-manager','collection-types','bulkdelete',0,'',1,NULL,NULL),(251,'content-manager','collection-types','bulkdelete',0,'',2,NULL,NULL),(252,'content-manager','collection-types','create',0,'',2,NULL,NULL),(253,'content-manager','collection-types','delete',0,'',1,NULL,NULL),(254,'content-manager','collection-types','delete',0,'',2,NULL,NULL),(255,'content-manager','collection-types','find',0,'',1,NULL,NULL),(256,'content-manager','collection-types','find',0,'',2,NULL,NULL),(257,'content-manager','collection-types','findone',0,'',1,NULL,NULL),(258,'content-manager','collection-types','findone',0,'',2,NULL,NULL),(259,'content-manager','collection-types','previewmanyrelations',0,'',1,NULL,NULL),(260,'content-manager','collection-types','previewmanyrelations',0,'',2,NULL,NULL),(261,'content-manager','collection-types','publish',0,'',1,NULL,NULL),(262,'content-manager','collection-types','publish',0,'',2,NULL,NULL),(263,'content-manager','collection-types','unpublish',0,'',1,NULL,NULL),(264,'content-manager','collection-types','unpublish',0,'',2,NULL,NULL),(265,'content-manager','collection-types','update',0,'',2,NULL,NULL),(266,'content-manager','collection-types','update',0,'',1,NULL,NULL),(267,'content-manager','components','findcomponentconfiguration',0,'',1,NULL,NULL),(268,'content-manager','components','findcomponentconfiguration',0,'',2,NULL,NULL),(269,'content-manager','components','updatecomponentconfiguration',0,'',2,NULL,NULL),(270,'content-manager','components','findcomponents',0,'',2,NULL,NULL),(271,'content-manager','components','updatecomponentconfiguration',0,'',1,NULL,NULL),(272,'content-manager','components','findcomponents',0,'',1,NULL,NULL),(273,'content-manager','content-types','findcontenttypeconfiguration',0,'',2,NULL,NULL),(274,'content-manager','content-types','findcontenttypeconfiguration',0,'',1,NULL,NULL),(275,'content-manager','content-types','findcontenttypes',0,'',2,NULL,NULL),(276,'content-manager','content-types','findcontenttypes',0,'',1,NULL,NULL),(277,'content-manager','content-types','findcontenttypessettings',0,'',1,NULL,NULL),(278,'content-manager','content-types','findcontenttypessettings',0,'',2,NULL,NULL),(279,'content-manager','content-types','updatecontenttypeconfiguration',0,'',1,NULL,NULL),(280,'content-manager','content-types','updatecontenttypeconfiguration',0,'',2,NULL,NULL),(281,'content-manager','relations','find',0,'',2,NULL,NULL),(282,'content-manager','relations','find',0,'',1,NULL,NULL),(283,'content-manager','single-types','createorupdate',0,'',1,NULL,NULL),(284,'content-manager','single-types','createorupdate',0,'',2,NULL,NULL),(285,'content-manager','single-types','delete',0,'',1,NULL,NULL),(286,'content-manager','single-types','delete',0,'',2,NULL,NULL),(287,'content-manager','single-types','find',0,'',1,NULL,NULL),(288,'content-manager','single-types','find',0,'',2,NULL,NULL),(289,'content-manager','single-types','publish',0,'',1,NULL,NULL),(290,'content-manager','single-types','publish',0,'',2,NULL,NULL),(291,'content-manager','single-types','unpublish',0,'',2,NULL,NULL),(292,'content-manager','single-types','unpublish',0,'',1,NULL,NULL),(293,'content-manager','uid','generateuid',0,'',1,NULL,NULL),(294,'content-manager','uid','generateuid',0,'',2,NULL,NULL),(295,'content-manager','uid','checkuidavailability',0,'',1,NULL,NULL),(296,'content-manager','uid','checkuidavailability',0,'',2,NULL,NULL),(297,'content-type-builder','builder','getreservednames',0,'',1,NULL,NULL),(298,'content-type-builder','builder','getreservednames',0,'',2,NULL,NULL),(299,'content-type-builder','componentcategories','deletecategory',0,'',2,NULL,NULL),(300,'content-type-builder','componentcategories','deletecategory',0,'',1,NULL,NULL),(301,'content-type-builder','componentcategories','editcategory',0,'',1,NULL,NULL),(302,'content-type-builder','componentcategories','editcategory',0,'',2,NULL,NULL),(303,'content-type-builder','components','createcomponent',0,'',1,NULL,NULL),(304,'content-type-builder','components','deletecomponent',0,'',1,NULL,NULL),(305,'content-type-builder','components','createcomponent',0,'',2,NULL,NULL),(306,'content-type-builder','components','deletecomponent',0,'',2,NULL,NULL),(307,'content-type-builder','components','getcomponent',0,'',2,NULL,NULL),(308,'content-type-builder','components','getcomponent',0,'',1,NULL,NULL),(309,'content-type-builder','components','getcomponents',0,'',1,NULL,NULL),(310,'content-type-builder','components','getcomponents',0,'',2,NULL,NULL),(311,'content-type-builder','components','updatecomponent',0,'',1,NULL,NULL),(312,'content-type-builder','components','updatecomponent',0,'',2,NULL,NULL),(313,'content-type-builder','connections','getconnections',0,'',1,NULL,NULL),(314,'content-type-builder','connections','getconnections',0,'',2,NULL,NULL),(315,'content-type-builder','contenttypes','createcontenttype',0,'',1,NULL,NULL),(316,'content-type-builder','contenttypes','createcontenttype',0,'',2,NULL,NULL),(317,'content-type-builder','contenttypes','deletecontenttype',0,'',1,NULL,NULL),(318,'content-type-builder','contenttypes','deletecontenttype',0,'',2,NULL,NULL),(319,'content-type-builder','contenttypes','getcontenttype',0,'',1,NULL,NULL),(320,'content-type-builder','contenttypes','getcontenttype',0,'',2,NULL,NULL),(321,'content-type-builder','contenttypes','getcontenttypes',0,'',1,NULL,NULL),(322,'content-type-builder','contenttypes','updatecontenttype',0,'',1,NULL,NULL),(323,'content-type-builder','contenttypes','getcontenttypes',0,'',2,NULL,NULL),(324,'content-type-builder','contenttypes','updatecontenttype',0,'',2,NULL,NULL),(325,'email','email','getsettings',0,'',1,NULL,NULL),(326,'email','email','getsettings',0,'',2,NULL,NULL),(327,'email','email','send',0,'',1,NULL,NULL),(328,'email','email','send',0,'',2,NULL,NULL),(329,'email','email','test',0,'',1,NULL,NULL),(330,'email','email','test',0,'',2,NULL,NULL),(331,'i18n','content-types','getnonlocalizedattributes',0,'',1,NULL,NULL),(332,'i18n','content-types','getnonlocalizedattributes',0,'',2,NULL,NULL),(333,'i18n','iso-locales','listisolocales',0,'',1,NULL,NULL),(334,'content-type-builder','connections','getconnections',0,'',2,NULL,NULL),(335,'content-type-builder','contenttypes','createcontenttype',0,'',1,NULL,NULL),(336,'i18n','iso-locales','listisolocales',0,'',2,NULL,NULL),(337,'i18n','locales','createlocale',0,'',1,NULL,NULL),(338,'content-type-builder','contenttypes','createcontenttype',0,'',2,NULL,NULL),(339,'content-type-builder','contenttypes','deletecontenttype',0,'',1,NULL,NULL),(340,'content-type-builder','contenttypes','deletecontenttype',0,'',2,NULL,NULL),(341,'content-type-builder','contenttypes','getcontenttype',0,'',1,NULL,NULL),(342,'content-type-builder','contenttypes','getcontenttype',0,'',2,NULL,NULL),(343,'content-type-builder','contenttypes','getcontenttypes',0,'',1,NULL,NULL),(344,'content-type-builder','contenttypes','getcontenttypes',0,'',2,NULL,NULL),(345,'content-type-builder','contenttypes','updatecontenttype',0,'',1,NULL,NULL),(346,'i18n','locales','createlocale',0,'',2,NULL,NULL),(347,'i18n','locales','deletelocale',0,'',2,NULL,NULL),(348,'i18n','locales','deletelocale',0,'',1,NULL,NULL),(349,'i18n','locales','listlocales',0,'',1,NULL,NULL),(350,'i18n','locales','listlocales',0,'',2,NULL,NULL),(351,'i18n','locales','updatelocale',0,'',1,NULL,NULL),(352,'i18n','locales','updatelocale',0,'',2,NULL,NULL),(353,'upload','upload','count',0,'',1,NULL,NULL),(354,'upload','upload','count',0,'',2,NULL,NULL),(355,'upload','upload','destroy',0,'',1,NULL,NULL),(356,'upload','upload','destroy',0,'',2,NULL,NULL),(357,'upload','upload','find',0,'',1,NULL,NULL),(358,'upload','upload','find',0,'',2,NULL,NULL),(359,'upload','upload','findone',0,'',1,NULL,NULL),(360,'upload','upload','findone',0,'',2,NULL,NULL),(361,'upload','upload','getsettings',0,'',1,NULL,NULL),(362,'upload','upload','getsettings',0,'',2,NULL,NULL),(363,'upload','upload','search',0,'',1,NULL,NULL),(364,'upload','upload','search',0,'',2,NULL,NULL),(365,'upload','upload','updatesettings',0,'',1,NULL,NULL),(366,'upload','upload','updatesettings',0,'',2,NULL,NULL),(367,'upload','upload','upload',0,'',1,NULL,NULL),(368,'upload','upload','upload',0,'',2,NULL,NULL),(369,'users-permissions','auth','callback',0,'',1,NULL,NULL),(370,'content-type-builder','contenttypes','updatecontenttype',0,'',2,NULL,NULL),(371,'users-permissions','auth','connect',1,'',2,NULL,NULL),(372,'users-permissions','auth','connect',1,'',1,NULL,NULL),(373,'users-permissions','auth','callback',1,'',2,NULL,NULL),(374,'email','email','getsettings',0,'',1,NULL,NULL),(375,'email','email','getsettings',0,'',2,NULL,NULL),(376,'email','email','send',0,'',1,NULL,NULL),(377,'email','email','send',0,'',2,NULL,NULL),(378,'email','email','test',0,'',1,NULL,NULL),(379,'email','email','test',0,'',2,NULL,NULL),(380,'i18n','content-types','getnonlocalizedattributes',0,'',1,NULL,NULL),(381,'i18n','content-types','getnonlocalizedattributes',0,'',2,NULL,NULL),(382,'i18n','iso-locales','listisolocales',0,'',1,NULL,NULL),(383,'users-permissions','auth','emailconfirmation',1,'',2,NULL,NULL),(384,'users-permissions','auth','forgotpassword',0,'',1,NULL,NULL),(385,'users-permissions','auth','emailconfirmation',0,'',1,NULL,NULL),(386,'users-permissions','auth','forgotpassword',1,'',2,NULL,NULL),(387,'users-permissions','auth','register',1,'',2,NULL,NULL),(388,'users-permissions','auth','register',0,'',1,NULL,NULL),(389,'users-permissions','auth','resetpassword',0,'',1,NULL,NULL),(390,'users-permissions','auth','resetpassword',1,'',2,NULL,NULL),(391,'users-permissions','auth','sendemailconfirmation',0,'',1,NULL,NULL),(392,'users-permissions','auth','sendemailconfirmation',0,'',2,NULL,NULL),(393,'i18n','iso-locales','listisolocales',0,'',2,NULL,NULL),(394,'users-permissions','user','count',0,'',2,NULL,NULL),(395,'users-permissions','user','count',0,'',1,NULL,NULL),(396,'users-permissions','user','create',0,'',1,NULL,NULL),(397,'users-permissions','user','destroy',0,'',1,NULL,NULL),(398,'users-permissions','user','destroy',0,'',2,NULL,NULL),(399,'users-permissions','user','create',0,'',2,NULL,NULL),(400,'users-permissions','user','destroyall',0,'',1,NULL,NULL),(401,'users-permissions','user','destroyall',0,'',2,NULL,NULL),(402,'users-permissions','user','find',0,'',1,NULL,NULL),(403,'users-permissions','user','find',0,'',2,NULL,NULL),(404,'users-permissions','user','findone',0,'',1,NULL,NULL),(405,'users-permissions','user','findone',0,'',2,NULL,NULL),(406,'users-permissions','user','me',1,'',1,NULL,NULL),(407,'users-permissions','user','me',1,'',2,NULL,NULL),(408,'users-permissions','user','update',0,'',1,NULL,NULL),(409,'i18n','locales','createlocale',0,'',1,NULL,NULL),(410,'users-permissions','user','update',0,'',2,NULL,NULL),(411,'i18n','locales','createlocale',0,'',2,NULL,NULL),(412,'i18n','locales','deletelocale',0,'',1,NULL,NULL),(413,'i18n','locales','deletelocale',0,'',2,NULL,NULL),(414,'i18n','locales','listlocales',0,'',1,NULL,NULL),(415,'i18n','locales','listlocales',0,'',2,NULL,NULL),(416,'i18n','locales','updatelocale',0,'',1,NULL,NULL),(417,'i18n','locales','updatelocale',0,'',2,NULL,NULL),(418,'upload','upload','count',0,'',1,NULL,NULL),(419,'users-permissions','userspermissions','createrole',0,'',2,NULL,NULL),(420,'users-permissions','userspermissions','createrole',0,'',1,NULL,NULL),(421,'users-permissions','userspermissions','deleterole',0,'',1,NULL,NULL),(422,'upload','upload','count',0,'',2,NULL,NULL),(423,'users-permissions','userspermissions','deleterole',0,'',2,NULL,NULL),(424,'users-permissions','userspermissions','getadvancedsettings',0,'',2,NULL,NULL),(425,'users-permissions','userspermissions','getadvancedsettings',0,'',1,NULL,NULL),(426,'users-permissions','userspermissions','getemailtemplate',0,'',1,NULL,NULL),(427,'users-permissions','userspermissions','getemailtemplate',0,'',2,NULL,NULL),(428,'users-permissions','userspermissions','getpermissions',0,'',1,NULL,NULL),(429,'users-permissions','userspermissions','getpermissions',0,'',2,NULL,NULL),(430,'users-permissions','userspermissions','getpolicies',0,'',1,NULL,NULL),(431,'users-permissions','userspermissions','getproviders',0,'',1,NULL,NULL),(432,'users-permissions','userspermissions','getpolicies',0,'',2,NULL,NULL),(433,'upload','upload','destroy',0,'',1,NULL,NULL),(434,'upload','upload','destroy',0,'',2,NULL,NULL),(435,'upload','upload','find',0,'',1,NULL,NULL),(436,'upload','upload','find',0,'',2,NULL,NULL),(437,'users-permissions','userspermissions','getproviders',0,'',2,NULL,NULL),(438,'upload','upload','findone',0,'',1,NULL,NULL),(439,'upload','upload','findone',0,'',2,NULL,NULL),(440,'upload','upload','getsettings',0,'',1,NULL,NULL),(441,'upload','upload','getsettings',0,'',2,NULL,NULL),(442,'upload','upload','search',0,'',1,NULL,NULL),(443,'users-permissions','userspermissions','getrole',0,'',1,NULL,NULL),(444,'users-permissions','userspermissions','getrole',0,'',2,NULL,NULL),(445,'users-permissions','userspermissions','getroles',0,'',1,NULL,NULL),(446,'upload','upload','search',0,'',2,NULL,NULL),(447,'users-permissions','userspermissions','getroutes',0,'',2,NULL,NULL),(448,'users-permissions','userspermissions','getroutes',0,'',1,NULL,NULL),(449,'users-permissions','userspermissions','getroles',0,'',2,NULL,NULL),(450,'users-permissions','userspermissions','index',0,'',1,NULL,NULL),(451,'users-permissions','userspermissions','index',0,'',2,NULL,NULL),(452,'users-permissions','userspermissions','searchusers',0,'',1,NULL,NULL),(453,'users-permissions','userspermissions','searchusers',0,'',2,NULL,NULL),(454,'users-permissions','userspermissions','updateadvancedsettings',0,'',1,NULL,NULL),(455,'users-permissions','userspermissions','updateadvancedsettings',0,'',2,NULL,NULL),(456,'users-permissions','userspermissions','updateemailtemplate',0,'',1,NULL,NULL),(457,'users-permissions','userspermissions','updateemailtemplate',0,'',2,NULL,NULL),(458,'users-permissions','userspermissions','updateproviders',0,'',1,NULL,NULL),(459,'users-permissions','userspermissions','updateproviders',0,'',2,NULL,NULL),(460,'users-permissions','userspermissions','updaterole',0,'',1,NULL,NULL),(461,'upload','upload','updatesettings',0,'',1,NULL,NULL),(462,'upload','upload','updatesettings',0,'',2,NULL,NULL),(463,'upload','upload','upload',0,'',1,NULL,NULL),(464,'upload','upload','upload',0,'',2,NULL,NULL),(465,'users-permissions','auth','callback',0,'',1,NULL,NULL),(466,'users-permissions','userspermissions','updaterole',0,'',2,NULL,NULL),(467,'users-permissions','auth','callback',1,'',2,NULL,NULL),(468,'users-permissions','auth','connect',1,'',1,NULL,NULL),(469,'users-permissions','auth','connect',1,'',2,NULL,NULL),(470,'users-permissions','auth','emailconfirmation',0,'',1,NULL,NULL),(471,'users-permissions','auth','emailconfirmation',1,'',2,NULL,NULL),(472,'users-permissions','auth','forgotpassword',0,'',1,NULL,NULL),(473,'users-permissions','auth','forgotpassword',1,'',2,NULL,NULL),(474,'users-permissions','auth','register',0,'',1,NULL,NULL),(475,'users-permissions','auth','register',1,'',2,NULL,NULL),(476,'users-permissions','auth','resetpassword',0,'',1,NULL,NULL),(477,'users-permissions','auth','resetpassword',1,'',2,NULL,NULL),(478,'users-permissions','auth','sendemailconfirmation',0,'',1,NULL,NULL),(479,'users-permissions','auth','sendemailconfirmation',0,'',2,NULL,NULL),(480,'users-permissions','user','count',0,'',1,NULL,NULL),(481,'users-permissions','user','count',0,'',2,NULL,NULL),(482,'users-permissions','user','create',0,'',1,NULL,NULL),(483,'users-permissions','user','create',0,'',2,NULL,NULL),(484,'users-permissions','user','destroy',0,'',1,NULL,NULL),(485,'users-permissions','user','destroyall',0,'',1,NULL,NULL),(486,'users-permissions','user','destroy',0,'',2,NULL,NULL),(487,'users-permissions','user','find',0,'',1,NULL,NULL),(488,'users-permissions','user','destroyall',0,'',2,NULL,NULL),(489,'users-permissions','user','find',0,'',2,NULL,NULL),(490,'users-permissions','user','findone',0,'',1,NULL,NULL),(491,'users-permissions','user','findone',0,'',2,NULL,NULL),(492,'users-permissions','user','me',1,'',1,NULL,NULL),(493,'users-permissions','user','update',0,'',1,NULL,NULL),(494,'users-permissions','user','me',1,'',2,NULL,NULL),(495,'users-permissions','user','update',0,'',2,NULL,NULL),(496,'users-permissions','userspermissions','createrole',0,'',1,NULL,NULL),(497,'users-permissions','userspermissions','createrole',0,'',2,NULL,NULL),(498,'users-permissions','userspermissions','deleterole',0,'',1,NULL,NULL),(499,'users-permissions','userspermissions','deleterole',0,'',2,NULL,NULL),(500,'users-permissions','userspermissions','getadvancedsettings',0,'',2,NULL,NULL),(501,'users-permissions','userspermissions','getadvancedsettings',0,'',1,NULL,NULL),(502,'users-permissions','userspermissions','getemailtemplate',0,'',1,NULL,NULL),(503,'users-permissions','userspermissions','getemailtemplate',0,'',2,NULL,NULL),(504,'users-permissions','userspermissions','getpermissions',0,'',1,NULL,NULL),(505,'users-permissions','userspermissions','getpermissions',0,'',2,NULL,NULL),(506,'users-permissions','userspermissions','getpolicies',0,'',1,NULL,NULL),(507,'users-permissions','userspermissions','getpolicies',0,'',2,NULL,NULL),(508,'users-permissions','userspermissions','getproviders',0,'',1,NULL,NULL),(509,'users-permissions','userspermissions','getrole',0,'',1,NULL,NULL),(510,'users-permissions','userspermissions','getrole',0,'',2,NULL,NULL),(511,'users-permissions','userspermissions','getproviders',0,'',2,NULL,NULL),(512,'users-permissions','userspermissions','getroles',0,'',1,NULL,NULL),(513,'users-permissions','userspermissions','getroles',0,'',2,NULL,NULL),(514,'users-permissions','userspermissions','getroutes',0,'',1,NULL,NULL),(515,'users-permissions','userspermissions','getroutes',0,'',2,NULL,NULL),(516,'users-permissions','userspermissions','index',0,'',1,NULL,NULL),(517,'users-permissions','userspermissions','index',0,'',2,NULL,NULL),(518,'users-permissions','userspermissions','searchusers',0,'',1,NULL,NULL),(519,'users-permissions','userspermissions','searchusers',0,'',2,NULL,NULL),(520,'users-permissions','userspermissions','updateadvancedsettings',0,'',1,NULL,NULL),(521,'users-permissions','userspermissions','updateadvancedsettings',0,'',2,NULL,NULL),(522,'users-permissions','userspermissions','updateemailtemplate',0,'',1,NULL,NULL),(523,'users-permissions','userspermissions','updateemailtemplate',0,'',2,NULL,NULL),(524,'users-permissions','userspermissions','updateproviders',0,'',1,NULL,NULL),(525,'users-permissions','userspermissions','updateproviders',0,'',2,NULL,NULL),(526,'users-permissions','userspermissions','updaterole',0,'',1,NULL,NULL),(527,'users-permissions','userspermissions','updaterole',0,'',2,NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_role`
--

DROP TABLE IF EXISTS `users-permissions_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_role_type_unique` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_role`
--

LOCK TABLES `users-permissions_role` WRITE;
/*!40000 ALTER TABLE `users-permissions_role` DISABLE KEYS */;
INSERT INTO `users-permissions_role` VALUES (1,'Authenticated','Default role given to authenticated user.','authenticated',NULL,NULL),(2,'Public','Default role given to unauthenticated user.','public',NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_user`
--

DROP TABLE IF EXISTS `users-permissions_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmationToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_user_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_user`
--

LOCK TABLES `users-permissions_user` WRITE;
/*!40000 ALTER TABLE `users-permissions_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `users-permissions_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variables`
--

DROP TABLE IF EXISTS `variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forceChange` tinyint(1) DEFAULT NULL,
  `persistent` tinyint(1) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `variables_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variables`
--

LOCK TABLES `variables` WRITE;
/*!40000 ALTER TABLE `variables` DISABLE KEYS */;
INSERT INTO `variables` VALUES (1,'isMobilyPlanPostpaid','true',1,0,'en','2021-12-20 09:40:44',1,1,'2021-12-20 09:40:32','2021-12-21 13:38:01'),(2,'planName',' ',0,0,'en','2021-12-28 06:11:19',1,1,'2021-12-28 06:11:10','2021-12-28 06:15:24');
/*!40000 ALTER TABLE `variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variables__localizations`
--

DROP TABLE IF EXISTS `variables__localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variables__localizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `variable_id` int(11) DEFAULT NULL,
  `related_variable_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variables__localizations`
--

LOCK TABLES `variables__localizations` WRITE;
/*!40000 ALTER TABLE `variables__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `variables__localizations` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-29 14:01:00
