-- MySQL dump 10.17  Distrib 10.3.25-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: strapi
-- ------------------------------------------------------
-- Server version	10.3.25-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `abouts`
--

DROP TABLE IF EXISTS `abouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abouts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abouts`
--

LOCK TABLES `abouts` WRITE;
/*!40000 ALTER TABLE `abouts` DISABLE KEYS */;
INSERT INTO `abouts` VALUES (1,'Welcome to the new and improved Small Axe ROADHOUSE! Where a cute, small town diner &  dive bar meet! We’ve got unique drinks, tasty food & friendly staff in a laid-back atmosphere.\n<br>\n<br>\nOur tables may be wobbly but you’ll be too after a few cocktails ;) ',1,2,'2020-10-18 06:03:10','2020-11-23 21:47:02');
/*!40000 ALTER TABLE `abouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'250.838.2385','smallaxeroadhouse@gmail.com','409 Cliff Ave., Enderby, BC',1,1,'2020-10-26 18:18:48','2020-10-26 18:33:11');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
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
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_store`
--

LOCK TABLES `core_store` WRITE;
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;
INSERT INTO `core_store` VALUES (1,'db_model_core_store','{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}','object',NULL,NULL),(2,'db_model_strapi_permission','{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"fields\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(3,'db_model_upload_file','{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(4,'db_model_strapi_webhooks','{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}','object',NULL,NULL),(5,'db_model_strapi_administrator','{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true}}','object',NULL,NULL),(6,'db_model_users-permissions_permission','{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true}}','object',NULL,NULL),(7,'db_model_users-permissions_role','{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true}}','object',NULL,NULL),(8,'db_model_users-permissions_user','{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(9,'db_model_strapi_role','{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(10,'db_model_upload_file_morph','{\"upload_file_id\":{\"type\":\"integer\"},\"related_id\":{\"type\":\"integer\"},\"related_type\":{\"type\":\"text\"},\"field\":{\"type\":\"text\"},\"order\":{\"type\":\"integer\"}}','object',NULL,NULL),(11,'db_model_strapi_users_roles','{\"user_id\":{\"type\":\"integer\"},\"role_id\":{\"type\":\"integer\"}}','object',NULL,NULL),(12,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\"},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]}}','object','',''),(13,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true}','object','production',''),(14,'plugin_content_manager_configuration_content_types::strapi::permission','{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"fields\":{\"edit\":{\"label\":\"Fields\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Fields\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"created_at\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"fields\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}','object','',''),(15,'plugin_content_manager_configuration_content_types::strapi::role','{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}','object','',''),(16,'plugin_content_manager_configuration_content_types::strapi::user','{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}','object','',''),(17,'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}','object','',''),(18,'plugin_content_manager_configuration_content_types::plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}','object','',''),(19,'plugin_content_manager_configuration_content_types::plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}','object','',''),(20,'plugin_content_manager_configuration_content_types::plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}','object','',''),(21,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object','',''),(22,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}','object','',''),(23,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true}','object','development',''),(24,'db_model_quotes','{\"from\":{\"type\":\"string\"},\"text\":{\"type\":\"text\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(26,'db_model_logos','{\"image\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(27,'plugin_content_manager_configuration_content_types::application::logo.logo','{\"uid\":\"application::logo.logo\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"image\",\"created_at\",\"updated_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"image\",\"size\":6}]]}}','object','',''),(28,'plugin_content_manager_configuration_content_types::application::quotes.quotes','{\"uid\":\"application::quotes.quotes\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"from\",\"defaultSortBy\":\"from\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"from\":{\"edit\":{\"label\":\"From\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"From\",\"searchable\":true,\"sortable\":true}},\"text\":{\"edit\":{\"label\":\"Text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Text\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"from\",\"text\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"from\",\"size\":6},{\"name\":\"text\",\"size\":6}]]}}','object','',''),(29,'db_model_covids','{\"text\":{\"type\":\"text\"},\"link\":{\"type\":\"text\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(31,'db_model_menu_breakfasts','{\"item\":{\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"price\":{\"type\":\"decimal\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(33,'db_model_menu_breakfast_items','{\"name\":{\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"price\":{\"type\":\"decimal\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(35,'db_model_menu_brunch_items','{\"name\":{\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"price\":{\"type\":\"decimal\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(37,'db_model_menu_main_items','{\"name\":{\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"price\":{\"type\":\"string\"},\"menu_categories\":{\"via\":\"menu_main_items\",\"collection\":\"menu-categories\",\"dominant\":true,\"attribute\":\"menu-category\",\"column\":\"id\",\"isVirtual\":true},\"enabled\":{\"type\":\"boolean\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(39,'db_model_menu_weekday_breakfast_items','{\"name\":{\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"category\":{\"type\":\"string\"},\"price\":{\"type\":\"string\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(41,'db_model_menu_weekend_breakfast_items','{\"name\":{\"type\":\"string\"},\"category\":{\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"price\":{\"type\":\"string\"},\"omit\":{\"type\":\"boolean\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(44,'db_model_menu_drinks','{\"category\":{\"type\":\"string\"},\"name\":{\"type\":\"string\"},\"price\":{\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"menu_categories\":{\"via\":\"menu_drinks\",\"collection\":\"menu-categories\",\"dominant\":true,\"attribute\":\"menu-category\",\"column\":\"id\",\"isVirtual\":true},\"omit\":{\"type\":\"boolean\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(46,'db_model_photos','{\"image\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(47,'plugin_content_manager_configuration_content_types::application::photos.photos','{\"uid\":\"application::photos.photos\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"image\",\"created_at\",\"updated_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"image\",\"size\":6}]]}}','object','',''),(48,'db_model_covid_comments','{\"text\":{\"type\":\"text\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(49,'plugin_content_manager_configuration_content_types::application::covid-comments.covid-comments','{\"uid\":\"application::covid-comments.covid-comments\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"text\":{\"edit\":{\"label\":\"Text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Text\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"text\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"text\",\"size\":6}]],\"editRelations\":[]}}','object','',''),(50,'db_model_covid_links','{\"organization\":{\"type\":\"string\"},\"link\":{\"type\":\"text\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(51,'plugin_content_manager_configuration_content_types::application::covid-links.covid-links','{\"uid\":\"application::covid-links.covid-links\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"organization\",\"defaultSortBy\":\"organization\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"organization\":{\"edit\":{\"label\":\"Organization\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Organization\",\"searchable\":true,\"sortable\":true}},\"link\":{\"edit\":{\"label\":\"Link\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Link\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"link\",\"created_at\",\"organization\"],\"edit\":[[{\"name\":\"link\",\"size\":6},{\"name\":\"organization\",\"size\":6}]],\"editRelations\":[]}}','object','',''),(52,'db_model_events','{\"date\":{\"type\":\"string\"},\"title\":{\"type\":\"text\"},\"description\":{\"type\":\"text\"},\"poster\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(54,'db_model_welcomes','{\"text\":{\"type\":\"text\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(56,'db_model_abouts','{\"text\":{\"type\":\"richtext\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(57,'plugin_content_manager_configuration_content_types::application::about.about','{\"uid\":\"application::about.about\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"text\":{\"edit\":{\"label\":\"Text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Text\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"created_at\",\"updated_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"text\",\"size\":12}]]}}','object','',''),(58,'db_model_facts','{\"text\":{\"type\":\"string\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(59,'plugin_content_manager_configuration_content_types::application::facts.facts','{\"uid\":\"application::facts.facts\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"text\",\"defaultSortBy\":\"text\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"text\":{\"edit\":{\"label\":\"Text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Text\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"text\",\"created_at\",\"updated_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"text\",\"size\":6}]]}}','object','',''),(60,'db_model_happy_hours','{\"category\":{\"type\":\"string\"},\"name\":{\"type\":\"string\"},\"price\":{\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(63,'plugin_content_manager_configuration_content_types::application::events.events','{\"uid\":\"application::events.events\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"date\",\"defaultSortBy\":\"date\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"date\":{\"edit\":{\"label\":\"Date\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Date\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"poster\":{\"edit\":{\"label\":\"Poster\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Poster\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"date\",\"title\",\"description\"],\"edit\":[[{\"name\":\"date\",\"size\":6},{\"name\":\"title\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"poster\",\"size\":6}]],\"editRelations\":[]}}','object','',''),(67,'db_model_contacts','{\"phone\":{\"type\":\"string\"},\"email\":{\"type\":\"string\"},\"address\":{\"type\":\"text\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(68,'db_model_hours','{\"hours\":{\"type\":\"text\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(69,'plugin_content_manager_configuration_content_types::application::contact.contact','{\"uid\":\"application::contact.contact\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"phone\",\"defaultSortBy\":\"phone\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"phone\":{\"edit\":{\"label\":\"Phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Phone\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"address\":{\"edit\":{\"label\":\"Address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Address\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"phone\",\"email\",\"address\"],\"editRelations\":[],\"edit\":[[{\"name\":\"phone\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"address\",\"size\":6}]]}}','object','',''),(70,'plugin_content_manager_configuration_content_types::application::hours.hours','{\"uid\":\"application::hours.hours\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"hours\":{\"edit\":{\"label\":\"Hours\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hours\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"hours\",\"created_at\",\"updated_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"hours\",\"size\":6}]]}}','object','',''),(71,'db_model_menu_category_mains','{\"menu_main_items\":{\"collection\":\"menu-main-items\",\"attribute\":\"menu-main-item\",\"column\":\"id\",\"isVirtual\":true},\"name\":{\"type\":\"string\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(73,'db_model_menu_category_mains__menu_main_items','{\"menu_category_main_id\":{\"type\":\"integer\"},\"menu-main-item_id\":{\"type\":\"integer\"}}','object',NULL,NULL),(74,'db_model_menu_main_titles','{\"name\":{\"type\":\"string\"},\"hours\":{\"type\":\"text\"},\"enabled\":{\"type\":\"boolean\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(76,'db_model_menu_category_mains_hello','{\"menu_main_items\":{\"collection\":\"menu-main-items\",\"attribute\":\"menu-main-item\",\"column\":\"id\",\"isVirtual\":true},\"name\":{\"type\":\"string\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(77,'db_model_menu_category_mains_hello__menu_main_items','{\"menu_category_mains_hello_id\":{\"type\":\"integer\"},\"menu-main-item_id\":{\"type\":\"integer\"}}','object',NULL,NULL),(78,'db_model_menu_weekend_breakfast_titles','{\"name\":{\"type\":\"string\"},\"hours\":{\"type\":\"text\"},\"enabled\":{\"type\":\"boolean\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(80,'db_model_menu_weekday_breakfast_titles','{\"name\":{\"type\":\"string\"},\"hours\":{\"type\":\"text\"},\"enabled\":{\"type\":\"boolean\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(82,'db_model_menu_drinks_titles','{\"name\":{\"type\":\"string\"},\"hours\":{\"type\":\"text\"},\"enabled\":{\"type\":\"boolean\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(84,'db_model_menu_happy_hour_titles','{\"name\":{\"type\":\"string\"},\"hours\":{\"type\":\"text\"},\"enabled\":{\"type\":\"boolean\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(86,'db_model_menu_drink_specials_titles','{\"name\":{\"type\":\"string\"},\"hours\":{\"type\":\"text\"},\"enabled\":{\"type\":\"boolean\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(88,'db_model_menu_drink_specials_items','{\"name\":{\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"price\":{\"type\":\"string\"},\"category\":{\"type\":\"string\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(93,'db_model_menu_categories','{\"name\":{\"type\":\"string\"},\"menu_main_items\":{\"via\":\"menu_categories\",\"collection\":\"menu-main-items\",\"attribute\":\"menu-main-item\",\"column\":\"id\",\"isVirtual\":true},\"menu_drinks\":{\"via\":\"menu_categories\",\"collection\":\"menu-drinks\",\"attribute\":\"menu-drink\",\"column\":\"id\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(95,'db_model_menu_categories_menu_main_items__menu_main_items_menu_categories','{\"menu-main-item_id\":{\"type\":\"integer\"},\"menu-category_id\":{\"type\":\"integer\"}}','object',NULL,NULL),(96,'db_model_menu_categories_menu_drinks__menu_drinks_menu_categories','{\"menu-drink_id\":{\"type\":\"integer\"},\"menu-category_id\":{\"type\":\"integer\"}}','object',NULL,NULL),(97,'db_model_menu_weekend','{\"name\":{\"type\":\"string\"},\"category\":{\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"price\":{\"type\":\"string\"},\"omit\":{\"type\":\"boolean\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(98,'db_model_menu_weekday','{\"name\":{\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"category\":{\"type\":\"string\"},\"price\":{\"type\":\"string\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(99,'db_model_menu_cat','{\"name\":{\"type\":\"string\"},\"menu06\":{\"via\":\"menu_cat\",\"collection\":\"menu06\",\"attribute\":\"menu06\",\"column\":\"id\",\"isVirtual\":true},\"menu05\":{\"via\":\"menu_cat\",\"collection\":\"menu05\",\"attribute\":\"menu05\",\"column\":\"id\",\"isVirtual\":true},\"menu04\":{\"via\":\"menu_cat\",\"collection\":\"menu04\",\"attribute\":\"menu04\",\"column\":\"id\",\"isVirtual\":true},\"menu02\":{\"via\":\"menu_cat\",\"collection\":\"menu01\",\"attribute\":\"menu01\",\"column\":\"id\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(100,'db_model_menu01','{\"category\":{\"type\":\"string\"},\"name\":{\"type\":\"string\"},\"price\":{\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"omit\":{\"type\":\"boolean\"},\"menu_cat\":{\"collection\":\"menu-cat\",\"via\":\"menu02\",\"dominant\":true,\"attribute\":\"menu-cat\",\"column\":\"id\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(101,'db_model_menu02','{\"name\":{\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"price\":{\"type\":\"string\"},\"category\":{\"type\":\"string\"},\"omit\":{\"type\":\"boolean\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(102,'db_model_menu03','{\"category\":{\"type\":\"string\"},\"name\":{\"type\":\"string\"},\"price\":{\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(103,'db_model_menu04','{\"name\":{\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"price\":{\"type\":\"string\"},\"enabled\":{\"type\":\"boolean\"},\"menu_cat\":{\"collection\":\"menu-cat\",\"via\":\"menu04\",\"dominant\":true,\"attribute\":\"menu-cat\",\"column\":\"id\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(104,'db_model_menu05','{\"name\":{\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"category\":{\"type\":\"string\"},\"price\":{\"type\":\"string\"},\"omit\":{\"type\":\"boolean\"},\"menu_cat\":{\"collection\":\"menu-cat\",\"via\":\"menu05\",\"dominant\":true,\"attribute\":\"menu-cat\",\"column\":\"id\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(105,'db_model_menu_06','{\"name\":{\"type\":\"string\"},\"category\":{\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"price\":{\"type\":\"string\"},\"omit\":{\"type\":\"boolean\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(106,'db_model_menu06','{\"name\":{\"type\":\"string\"},\"category\":{\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"price\":{\"type\":\"string\"},\"omit\":{\"type\":\"boolean\"},\"menu_cat\":{\"collection\":\"menu-cat\",\"via\":\"menu06\",\"dominant\":true,\"attribute\":\"menu-cat\",\"column\":\"id\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(107,'db_model_menu01_title','{\"name\":{\"type\":\"string\"},\"hours\":{\"type\":\"text\"},\"enabled\":{\"type\":\"boolean\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(108,'db_model_menu02_title','{\"name\":{\"type\":\"string\"},\"hours\":{\"type\":\"text\"},\"enabled\":{\"type\":\"boolean\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(109,'db_model_menu03_title','{\"name\":{\"type\":\"string\"},\"hours\":{\"type\":\"text\"},\"enabled\":{\"type\":\"boolean\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(110,'db_model_menu04_title','{\"name\":{\"type\":\"string\"},\"hours\":{\"type\":\"text\"},\"enabled\":{\"type\":\"boolean\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(111,'db_model_menu05_title','{\"name\":{\"type\":\"string\"},\"hours\":{\"type\":\"text\"},\"enabled\":{\"type\":\"boolean\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(112,'db_model_menu06_title','{\"name\":{\"type\":\"string\"},\"hours\":{\"type\":\"text\"},\"enabled\":{\"type\":\"boolean\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"private\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(113,'plugin_content_manager_configuration_content_types::application::menu01-title.menu01-title','{\"uid\":\"application::menu01-title.menu01-title\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"hours\":{\"edit\":{\"label\":\"Hours\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hours\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"hours\",\"enabled\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"hours\",\"size\":6}],[{\"name\":\"enabled\",\"size\":4}]]}}','object','',''),(114,'plugin_content_manager_configuration_content_types::application::menu01.menu01','{\"uid\":\"application::menu01.menu01\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"category\",\"defaultSortBy\":\"category\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"category\":{\"edit\":{\"label\":\"Category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Category\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"Price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Price\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"omit\":{\"edit\":{\"label\":\"Omit\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Omit\",\"searchable\":true,\"sortable\":true}},\"menu_cat\":{\"edit\":{\"label\":\"Menu_cat\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Menu_cat\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"category\",\"name\",\"price\"],\"edit\":[[{\"name\":\"category\",\"size\":6},{\"name\":\"name\",\"size\":6}],[{\"name\":\"price\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"omit\",\"size\":4}]],\"editRelations\":[\"menu_cat\"]}}','object','',''),(115,'plugin_content_manager_configuration_content_types::application::menu02-title.menu02-title','{\"uid\":\"application::menu02-title.menu02-title\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"hours\":{\"edit\":{\"label\":\"Hours\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hours\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"hours\",\"enabled\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"hours\",\"size\":6}],[{\"name\":\"enabled\",\"size\":4}]]}}','object','',''),(116,'plugin_content_manager_configuration_content_types::application::menu02.menu02','{\"uid\":\"application::menu02.menu02\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"Price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Price\",\"searchable\":true,\"sortable\":true}},\"category\":{\"edit\":{\"label\":\"Category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Category\",\"searchable\":true,\"sortable\":true}},\"omit\":{\"edit\":{\"label\":\"Omit\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Omit\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"price\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"price\",\"size\":6},{\"name\":\"category\",\"size\":6}],[{\"name\":\"omit\",\"size\":4}]],\"editRelations\":[]}}','object','',''),(117,'plugin_content_manager_configuration_content_types::application::menu03-title.menu03-title','{\"uid\":\"application::menu03-title.menu03-title\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"hours\":{\"edit\":{\"label\":\"Hours\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hours\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"hours\",\"enabled\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"hours\",\"size\":6}],[{\"name\":\"enabled\",\"size\":4}]]}}','object','',''),(118,'plugin_content_manager_configuration_content_types::application::menu03.menu03','{\"uid\":\"application::menu03.menu03\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"category\",\"defaultSortBy\":\"category\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"category\":{\"edit\":{\"label\":\"Category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Category\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"Price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Price\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"category\",\"name\",\"price\"],\"editRelations\":[],\"edit\":[[{\"name\":\"category\",\"size\":6},{\"name\":\"name\",\"size\":6}],[{\"name\":\"price\",\"size\":6},{\"name\":\"description\",\"size\":6}]]}}','object','',''),(119,'plugin_content_manager_configuration_content_types::application::menu04-title.menu04-title','{\"uid\":\"application::menu04-title.menu04-title\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"hours\":{\"edit\":{\"label\":\"Hours\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hours\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"hours\",\"enabled\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"hours\",\"size\":6}],[{\"name\":\"enabled\",\"size\":4}]]}}','object','',''),(120,'plugin_content_manager_configuration_content_types::application::menu04.menu04','{\"uid\":\"application::menu04.menu04\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"Price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Price\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"menu_cat\":{\"edit\":{\"label\":\"Menu_cat\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Menu_cat\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"price\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"price\",\"size\":6},{\"name\":\"enabled\",\"size\":4}]],\"editRelations\":[\"menu_cat\"]}}','object','',''),(121,'plugin_content_manager_configuration_content_types::application::menu05-title.menu05-title','{\"uid\":\"application::menu05-title.menu05-title\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"hours\":{\"edit\":{\"label\":\"Hours\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hours\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"hours\",\"enabled\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"hours\",\"size\":6}],[{\"name\":\"enabled\",\"size\":4}]]}}','object','',''),(122,'plugin_content_manager_configuration_content_types::application::menu05.menu05','{\"uid\":\"application::menu05.menu05\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"category\":{\"edit\":{\"label\":\"Category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Category\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"Price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Price\",\"searchable\":true,\"sortable\":true}},\"omit\":{\"edit\":{\"label\":\"Omit\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Omit\",\"searchable\":true,\"sortable\":true}},\"menu_cat\":{\"edit\":{\"label\":\"Menu_cat\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Menu_cat\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"category\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"category\",\"size\":6},{\"name\":\"price\",\"size\":6}],[{\"name\":\"omit\",\"size\":4}]],\"editRelations\":[\"menu_cat\"]}}','object','',''),(123,'plugin_content_manager_configuration_content_types::application::menu06-title.menu06-title','{\"uid\":\"application::menu06-title.menu06-title\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"hours\":{\"edit\":{\"label\":\"Hours\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hours\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"hours\",\"enabled\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"hours\",\"size\":6}],[{\"name\":\"enabled\",\"size\":4}]]}}','object','',''),(124,'plugin_content_manager_configuration_content_types::application::menu06.menu06','{\"uid\":\"application::menu06.menu06\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"category\":{\"edit\":{\"label\":\"Category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Category\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"Price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Price\",\"searchable\":true,\"sortable\":true}},\"omit\":{\"edit\":{\"label\":\"Omit\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Omit\",\"searchable\":true,\"sortable\":true}},\"menu_cat\":{\"edit\":{\"label\":\"Menu_cat\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Menu_cat\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"category\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"category\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"price\",\"size\":6}],[{\"name\":\"omit\",\"size\":4}]],\"editRelations\":[\"menu_cat\"]}}','object','',''),(127,'plugin_content_manager_configuration_content_types::application::menu-cat.menu-cat','{\"uid\":\"application::menu-cat.menu-cat\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"menu06\":{\"edit\":{\"label\":\"Menu06\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Menu06\",\"searchable\":false,\"sortable\":false}},\"menu05\":{\"edit\":{\"label\":\"Menu05\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Menu05\",\"searchable\":false,\"sortable\":false}},\"menu04\":{\"edit\":{\"label\":\"Menu04\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Menu04\",\"searchable\":false,\"sortable\":false}},\"menu02\":{\"edit\":{\"label\":\"Menu02\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"category\"},\"list\":{\"label\":\"Menu02\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"name\",\"size\":6}]],\"editRelations\":[\"menu06\",\"menu05\",\"menu04\",\"menu02\"]}}','object','',''),(128,'db_model_menu_cats_menu_06_s__menu_06_s_menu_cats','{\"menu06_id\":{\"type\":\"integer\"},\"menu-cat_id\":{\"type\":\"integer\"}}','object',NULL,NULL),(129,'db_model_menu_cats_menu_05_s__menu_05_s_menu_cats','{\"menu05_id\":{\"type\":\"integer\"},\"menu-cat_id\":{\"type\":\"integer\"}}','object',NULL,NULL),(130,'db_model_menu_cats_menu_04_s__menu_04_s_menu_cats','{\"menu04_id\":{\"type\":\"integer\"},\"menu-cat_id\":{\"type\":\"integer\"}}','object',NULL,NULL),(131,'db_model_menu_cats_menu_02_s__menu_01_s_menu_cats','{\"menu01_id\":{\"type\":\"integer\"},\"menu-cat_id\":{\"type\":\"integer\"}}','object',NULL,NULL),(132,'db_model_menu_cats_menu_01_s__menu_02_s_menu_cats','{\"menu02_id\":{\"type\":\"integer\"},\"menu-cat_id\":{\"type\":\"integer\"}}','object',NULL,NULL);
/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `covid_comments`
--

DROP TABLE IF EXISTS `covid_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `covid_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `from` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `covid_comments`
--

LOCK TABLES `covid_comments` WRITE;
/*!40000 ALTER TABLE `covid_comments` DISABLE KEYS */;
INSERT INTO `covid_comments` VALUES (1,'Masks are now mandatory upon entry. We ask that you keep your mask on at all times unless you are sat at your table.\nDue to Covid-19 we have put some new procedures in place including a mandatory sign in (name and phone number from one person in your party), sanitizer stations as well as designated enter and exit doors. No groups of more than 6 and groups will be seated according to the number of people in order to help us make the most out of limited seating.',1,2,'2020-10-13 07:23:27','2020-11-24 00:19:52',NULL,NULL);
/*!40000 ALTER TABLE `covid_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `covid_links`
--

DROP TABLE IF EXISTS `covid_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `covid_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `organization` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `covid_links`
--

LOCK TABLES `covid_links` WRITE;
/*!40000 ALTER TABLE `covid_links` DISABLE KEYS */;
INSERT INTO `covid_links` VALUES (1,'https://www.worksafebc.com/en/resources/health-safety/posters/help-prevent-spread-covid-19-how-to-use-mask?lang=en ',1,1,'2020-10-13 07:32:02','2020-10-13 07:48:23','WorkSafeBC'),(2,'http://www.bccdc.ca/health-info/diseases-conditions/covid-19/employers-businesses/food-businesses',1,1,'2020-10-13 07:32:20','2020-10-13 07:48:41','BC Center for Disease Control');
/*!40000 ALTER TABLE `covid_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `covids`
--

DROP TABLE IF EXISTS `covids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `covids` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` longtext DEFAULT NULL,
  `links` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `link` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `covids`
--

LOCK TABLES `covids` WRITE;
/*!40000 ALTER TABLE `covids` DISABLE KEYS */;
INSERT INTO `covids` VALUES (1,'Due to Covid-19 we have put some new procedures in place including a mandatory sign in (name and phone number from one person in your party), sanitizer stations as well as designated enter and exit doors. No groups of more than 6 and groups will be seated according to the number of people in order to help us make the most out of limited seating.',NULL,1,1,'2020-10-10 23:22:50','2020-10-10 23:45:33',NULL),(2,'WorkSafeBC',NULL,1,1,'2020-10-10 23:23:13','2020-10-10 23:46:18','https://www.worksafebc.com/en/resources/health-safety/posters/help-prevent-spread-covid-19-how-to-use-mask?lang=en '),(3,'BC Center for Disease Control',NULL,1,1,'2020-10-10 23:23:35','2020-10-10 23:47:16','http://www.bccdc.ca/health-info/diseases-conditions/covid-19/employers-businesses/food-businesses');
/*!40000 ALTER TABLE `covids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `title` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (4,'Next Event','',1,1,'2020-11-24 02:44:37','2020-11-24 03:04:02','TBA');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facts`
--

DROP TABLE IF EXISTS `facts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facts`
--

LOCK TABLES `facts` WRITE;
/*!40000 ALTER TABLE `facts` DISABLE KEYS */;
INSERT INTO `facts` VALUES (1,'Kid friendly!',1,1,'2020-10-18 07:15:15','2020-10-18 07:15:15'),(2,'Seniors discounts!',1,1,'2020-10-18 07:15:25','2020-10-18 07:15:25'),(3,'Daily food and drink specials!',1,1,'2020-10-18 07:15:42','2020-10-18 07:15:55'),(4,'Happy Hour 2-5pm daily!',2,2,'2020-10-18 16:25:42','2020-10-18 16:25:42'),(5,'Weekend Eggs Benny!',1,1,'2020-11-24 03:10:09','2020-11-24 03:10:09');
/*!40000 ALTER TABLE `facts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hours`
--

DROP TABLE IF EXISTS `hours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hours` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hours` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hours`
--

LOCK TABLES `hours` WRITE;
/*!40000 ALTER TABLE `hours` DISABLE KEYS */;
INSERT INTO `hours` VALUES (1,'Monday:   10:30am - 7pm<br>\nTuesday:  CLOSED<br> \nWednesday:  CLOSED<br>\nThursday:  10:30am - 9pm<br>\nFriday:  10:30am - 10pm<br>\nSaturday:  9am - 10pm<br>\nSunday:  9am - 5pm',1,2,'2020-10-26 18:21:02','2020-11-24 00:21:20');
/*!40000 ALTER TABLE `hours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logos`
--

DROP TABLE IF EXISTS `logos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logos`
--

LOCK TABLES `logos` WRITE;
/*!40000 ALTER TABLE `logos` DISABLE KEYS */;
INSERT INTO `logos` VALUES (1,1,1,'2020-10-04 08:27:08','2020-10-04 08:27:08');
/*!40000 ALTER TABLE `logos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu01`
--

DROP TABLE IF EXISTS `menu01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu01` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `enabled` tinyint(1) DEFAULT NULL,
  `omit` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu01`
--

LOCK TABLES `menu01` WRITE;
/*!40000 ALTER TABLE `menu01` DISABLE KEYS */;
INSERT INTO `menu01` VALUES (1,'Brews Brothers','Havin\' A Domestic','$5','Alexander Keiths, Budweiser, Bud Light, OK Springs 1516, Pabst Blue Ribbon',2,1,'2020-10-10 21:34:44','2020-11-29 07:05:34',NULL,NULL),(2,'Brews Brothers','Little More Flava Flav','$6','Coors Banquet, Rickard\'s Radler, Red Racer IPA, Mt. Begbie Nasty Habit, 33 Acres of Sunshine French Blanche, Strange Fellows Talisman Pale Ale',2,1,'2020-10-10 21:36:02','2020-11-29 07:05:40',NULL,NULL),(3,'Brews Brothers','Craft Beer',NULL,'Ask Your Server About Our Rotating Craft Beers',2,1,'2020-10-10 21:37:11','2020-11-29 07:05:45',NULL,NULL),(4,'Brews Brothers','Draft Beer','$7 pints | $22 pitchers','Ask Your Server About Our Rotating Draft Beers',2,1,'2020-10-10 21:38:58','2020-11-29 07:05:51',NULL,NULL),(6,'Ciders & Basic B\'s...','Strongbow','$7',NULL,2,1,'2020-10-10 21:40:33','2020-11-29 07:05:57',NULL,NULL),(7,'Ciders & Basic B\'s...','Wize Vodka Sodas','$6.50','Root Beer & Cream Soda',2,1,'2020-10-10 21:41:39','2020-11-29 07:06:02',NULL,NULL),(8,'Something to Wine About','Reds','6 oz. $7 | 9 oz. $9','La Posada Organic Tempranillo, Jackson Triggs Malbec, Copper Moon Shiraz',2,1,'2020-10-10 21:43:43','2020-11-29 07:07:50',NULL,NULL),(9,'Something to Wine About','Whites','6 oz. $7 | 9 oz. $9','Peller Estates Pinot Grigio, Jackson Triggs Sauvignon Blanc',2,1,'2020-10-10 21:44:16','2020-11-29 07:07:54',NULL,NULL),(10,'Something to Wine About','Rosé','6 oz. $7 | 9 oz. $9','Ask Your Server About Our Rotating Feature',2,1,'2020-10-10 21:45:21','2020-11-29 07:07:59',NULL,NULL),(13,'OG Cocktails','Jalapeño Bidness Margarita (1.5oz)','$9','A Small Axe Classic with Triple Sec, Tequila,\nFresh Jalapeño, Lime, and Cucumber',2,1,'2020-10-10 21:48:38','2020-11-29 07:06:08',NULL,NULL),(14,'OG Cocktails','The Dude (1.5oz)','$8','\nA White Russian with a Caffeinated Kick... Iced\nCoffee, Kahlúa, Vodka, & Dairy Free Cream...\nServed Over Ice... The Dude Abides!',2,1,'2020-10-10 21:50:11','2020-11-29 07:06:13',NULL,NULL),(16,'OG Cocktails','Edward Caesar Hands (1oz)','$7.5','\nClassic Ceasar Served With House Pickled\nVegetables',2,1,'2020-10-10 21:52:46','2020-11-29 07:06:18',NULL,NULL),(17,'OG Cocktails','The Drunk Republican (1oz)','$7','\nAn Arnold Palmer, but with Booze... Half\nLemonade, Half Iced Tea, & Vodka... \'Cause Booze Makes Everything Better!',2,1,'2020-10-10 21:54:19','2020-11-29 07:06:23',NULL,NULL),(18,'OG Cocktails','Strawberry Feels Forever (1oz)','$7','\nLemonade, Vodka, and House Strawberry Purée',2,1,'2020-10-10 21:55:26','2020-11-29 07:06:31',NULL,NULL),(19,'OG Cocktails','Sangre-Ahhhhh','$6','Summertime Bliss in a Glass!',2,1,'2020-10-10 21:57:05','2020-11-29 07:06:35',NULL,NULL),(20,'OG Cocktails','Bye Felicia!','$3.5','Our Last Call Special - A Well Shot for $3.5, But You Gots to Go After!',2,1,'2020-10-10 21:58:08','2020-11-29 07:06:40',NULL,NULL),(21,'On The Wagon...','Coffee','$2','Freshly Brewed Shuswap Coffee Company Drip',2,1,'2020-10-10 21:59:05','2020-11-29 07:07:19',NULL,NULL),(22,'On The Wagon...','Tea','$2','Twining\'s Earl Grey, Pure Peppermint, Pure Chamomile, Pure Rooibos Red, Honeybush Mandarin-Orange',2,1,'2020-10-10 22:02:08','2020-11-29 07:07:26',NULL,NULL),(23,'On The Wagon...','Iced Coffee','$3','House Iced Shuswap Coffee Company Drip',2,1,'2020-10-10 22:03:34','2020-11-29 07:07:31',NULL,NULL),(24,'On The Wagon...','Lemonade & Juice','$3','Lemonade, Orange Juice, Pineapple Juice, Cranberry Juice',2,1,'2020-10-10 22:04:32','2020-11-29 07:07:35',NULL,NULL),(25,'On The Wagon...','Shirley Temple','$4','7up, Orange & Pineapple Juice, Grenadine, & Topped with a Maraschino Cherry',2,1,'2020-10-10 22:05:09','2020-11-29 07:07:40',NULL,NULL),(26,'On The Wagon...','Soda-Pop','$2.5','Pepsi, Diet Pepsi, Dr. Pepper, Root Beer, 7up, Ginger Ale, Iced Tea',2,1,'2020-10-10 22:06:23','2020-11-29 07:07:45',NULL,NULL),(27,'OG Cocktails','Pulp Fiction (1.5oz)','$9','Blood Orange Gin with Muddled Citrus, Cherry and the Perfect Temperature Water.',2,1,'2020-11-24 06:25:22','2020-11-29 07:06:45',NULL,NULL),(28,'OG Cocktails','Whiskey a Go-Go (1oz)','$8','All the venues might be closed but we can give you a party in your mouth with this Whiskey Sour.',2,1,'2020-11-24 06:27:51','2020-11-29 07:06:50',NULL,NULL),(29,'OG Cocktails','Berry Nice!!! (1oz)','$8','You have to say it in a Borat voice. Strawberry and Raspberry infused Gin Sour with fresh Strawberry Puree.',2,1,'2020-11-24 06:29:57','2020-11-29 07:06:56',NULL,NULL),(30,'OG Cocktails','The Jessie Spano (2oz)','$10','Espresso Martini - Vodka, Kahlua and an Espresso Shot! So tasty you\'ll be screaming <b>\"I\'M SO EXCITED!\"</b>',2,1,'2020-11-24 06:35:47','2020-11-29 07:07:03',NULL,NULL),(31,'OG Cocktails','Toddy 2 Hotty (1oz)','$8','Our Hot Toddy! Crafted to keep you warm and toasty on these cold days with Whiskey, Honey, Lemon, Cinnamon and Spices.',2,1,'2020-11-24 06:39:13','2020-11-29 07:07:09',NULL,NULL),(32,'OG Cocktails','Sailor\'s Cider (1oz)','$8','Sailor Jerry\'s Spiced Rum and our house made Apple Cider. It\'ll keep you warm all the way down to Davy Jones Locker, <b> Yarrrrr!</b>',2,1,'2020-11-24 06:42:15','2020-11-29 07:07:13',NULL,NULL);
/*!40000 ALTER TABLE `menu01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu01_title`
--

DROP TABLE IF EXISTS `menu01_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu01_title` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `hours` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu01_title`
--

LOCK TABLES `menu01_title` WRITE;
/*!40000 ALTER TABLE `menu01_title` DISABLE KEYS */;
INSERT INTO `menu01_title` VALUES (1,'Drinks Menu','Mon, Thu, Fri: 10:30am - close<br>\nSat, Sun: 9:00am - close',1,2,'2020-11-23 14:05:04','2020-11-24 06:09:25',1);
/*!40000 ALTER TABLE `menu01_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu02`
--

DROP TABLE IF EXISTS `menu02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu02` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `enabled` tinyint(1) DEFAULT NULL,
  `omit` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu02`
--

LOCK TABLES `menu02` WRITE;
/*!40000 ALTER TABLE `menu02` DISABLE KEYS */;
INSERT INTO `menu02` VALUES (1,'Monday','$5 - DOMESTIC CANS, HOUSE WINE & SANGRIA</br>\n$4.50 - JAMES FRANCO SHOTS',NULL,NULL,1,1,'2020-11-23 14:50:11','2020-11-23 14:50:11',NULL,NULL),(2,'Tuesday','$5 - TEQUILA SHOTS, CORONA & MARGARITAS</br>\n$4.50 - CARINA COLADA SHOTS',NULL,NULL,1,1,'2020-11-23 14:51:25','2020-11-23 14:51:50',NULL,NULL),(3,'Wednesday','$4.50 - KAMIKAZE SHOTS</br>\n$5 - HOUSE WINE & SANGRIA',NULL,NULL,1,1,'2020-11-23 14:52:41','2020-11-23 15:21:25',NULL,NULL),(4,'Thirsty Thursdays','$5 - HIGHBALLS<br/>\n$7 - DOUBLE HIGHBALLS<br/>\n<br/>\n<b>~~SHOOTER McGAVIN MADNESS!~~</b><br/>\nSHOOTERS ARE $4.50 EA or 5 OF THE SAME FOR $20<br/>\n* JAMES FRANCO<br/>\n* CARINA COLADA<br/>\n* SAWCEY SARAH<br/>\n* FIRE BOX<br/>\n* KAMIKAZE<br/>\n* BURT REYNOLDS<br/>\n* THE DONALD (IT SUCKS)<br/>\n*PORN STAR',NULL,NULL,1,1,'2020-11-23 15:20:28','2020-11-23 15:55:10',NULL,NULL),(5,'Friday','$4.50 - FIREBOX SHOTS</br>\n$9 - PB&K (Pabst Blue Ribbon & a Shot of Jameson)',NULL,NULL,1,1,'2020-11-23 15:22:47','2020-11-23 15:22:47',NULL,NULL),(6,'Sarah Saturday','$4.50 - SAWCEY SARAH SHOTS<br/>\n$4.75 - SPIKED COFFEES<br/>\n$5 - MAKERS MARK',NULL,NULL,1,1,'2020-11-23 15:35:30','2020-11-23 15:35:30',NULL,NULL),(7,'Sunday','$4.50 - THE DONALD SHOT (IT SUCKS)<br/>\n$4.75 - SPIKED COFFEES<br/>\n$6.50 - ROADHOUSE ROOTBEER',NULL,NULL,1,1,'2020-11-23 15:36:27','2020-11-23 15:36:27',NULL,NULL);
/*!40000 ALTER TABLE `menu02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu02_title`
--

DROP TABLE IF EXISTS `menu02_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu02_title` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `hours` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu02_title`
--

LOCK TABLES `menu02_title` WRITE;
/*!40000 ALTER TABLE `menu02_title` DISABLE KEYS */;
INSERT INTO `menu02_title` VALUES (1,'Drink Specials','Mon, Thu, Fri: 10:30am - close<br>\nSat, Sun: 10:00am - close',1,2,'2020-11-23 14:04:55','2020-11-23 21:47:12',1);
/*!40000 ALTER TABLE `menu02_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu03`
--

DROP TABLE IF EXISTS `menu03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu03` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `category` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu03`
--

LOCK TABLES `menu03` WRITE;
/*!40000 ALTER TABLE `menu03` DISABLE KEYS */;
INSERT INTO `menu03` VALUES (3,1,1,'2020-10-18 08:22:25','2020-10-18 08:27:45','Happy Hour','Adult beverages',NULL,'$4 - domestic beer cans <br/>\n$5 - all 6oz. wines <br/>\n$5 - sangria <br/>\n$5 - single highballs <br/>',NULL),(4,1,1,'2020-10-18 08:23:03','2020-10-18 08:31:43','Happy Hour','Edibles',NULL,'$5 - Potato latke with garlic sauce <br/>\n$6 - Chick pea tacos <br/>\n$8 - House-made deep fried mac & cheese <br/>\n$8 - All Vladimir poutines <br/>\n$4 - Axe salad <br/>\n$5 - Frites & dip <br/>\n(chipotle aioli, garlic aioli, mayo, honey mustard, cilantro lime crema, sour cream & dip ranch, cajun remoulade)',NULL);
/*!40000 ALTER TABLE `menu03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu03_title`
--

DROP TABLE IF EXISTS `menu03_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu03_title` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `hours` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu03_title`
--

LOCK TABLES `menu03_title` WRITE;
/*!40000 ALTER TABLE `menu03_title` DISABLE KEYS */;
INSERT INTO `menu03_title` VALUES (1,'Happy Hour!','2pm - 5pm daily',1,1,'2020-11-23 14:05:12','2020-11-24 02:10:44',1);
/*!40000 ALTER TABLE `menu03_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu04`
--

DROP TABLE IF EXISTS `menu04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu04` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `category` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu04`
--

LOCK TABLES `menu04` WRITE;
/*!40000 ALTER TABLE `menu04` DISABLE KEYS */;
INSERT INTO `menu04` VALUES (1,'Pull My Pork Tacos','(Gluten Free) Pulled Pork, Maple Lime BBQ, Mango Jalapeño Salsa, Avocado, Chipotle Aioli, Pickled Red Onions, & Cabbage','2 for $9',2,1,'2020-10-10 21:01:43','2020-11-29 07:04:03','Taco Walk on the Wild Side',1),(2,'Jack My Fruit Tacos','(Gluten Free/Vegan) Jackfruit, Maple Lime BBQ, Mango Jalapeño Salsa, Avocado, Chipotle Aioli, Pickled Red Onions, & Cabbage','2 for $9',2,1,'2020-10-10 21:02:44','2020-11-29 07:02:31','Taco Walk on the Wild Side',1),(3,'Black Eyed Chick Peas Tacos','(Gluten Free/Vegan) Small Axe Cajun Spiced Chickpeas, House Tomato Salsa, Avocado, Cilantro Lime Crema, Pickled Red Onions, & Cabbage','2 for $9',2,1,'2020-10-10 21:03:32','2020-11-29 07:01:14','Taco Walk on the Wild Side',1),(4,'Le Prawn James Tacos','Coconut Crusted Prawns, Mango Jalapeño Salsa, Avocado, Chipotle Aioli, Pickled Red Onions, & Cabbage','2 for $9',2,1,'2020-10-10 21:04:13','2020-11-29 07:02:55','Taco Walk on the Wild Side',1),(5,'Hunter Poutine','House Gravy, Quebec Cheese Curds, & Kennebec Fries','$10',2,1,'2020-10-10 21:05:06','2020-11-29 07:02:10','Vladimir Poutines',1),(6,'Gatherer Poutine','(Gluten Free/Vegan) House Chick Pea Gravy, Vegan Smoked Gouda, & Kennebec Fries','$10',2,1,'2020-10-10 21:06:16','2020-11-29 07:01:54','Vladimir Poutines',1),(7,'Mexi-Can Tots','(Gluten Free/Vegan) Roasted Corn Salsa, Cilantro Lime Crema, Chipotle Aioli, Tomato, Green Onions, Pickled Red Onions, & Blackened Tots','$10',2,1,'2020-10-10 21:07:03','2020-11-29 07:03:05','Vladimir Poutines',1),(8,'Nacho Average Rice Bowl','(Vegan/Gluten Free) Cajun Rice, Avocado, Hummus, Spinach, Roasted Corn & Black Bean Salsa, Pickled Cabbage, Tomato, Peppers, Corn Chips, Green Onion, Cilantro Lime Crema, & Chipotle Dressing','$15',2,1,'2020-10-10 21:08:38','2020-11-29 07:03:12','Eat Your Vegetables!',1),(9,'The Bruce Moose Buddha Bowl','(Gluten Free) Crispy Chickpeas, Coconut Brown Rice, Avocado, Roasted Garlic Hummus, Spinach, Beets, Hemp Hearts, Pumpkin Seeds, Apples, & Green Goddess Dressing\n(Vegan Option Available)','$15',2,1,'2020-10-10 21:10:08','2020-11-29 07:04:24','Eat Your Vegetables!',1),(10,'Axe Salad','(Gluten Free) Feta, Cranberries, Toasted Walnut, Apples, Mixed Greens, & Honey Dijon Vinaigrette \n(Vegan Option Available)','sm $8 | lg $12',2,1,'2020-10-10 21:14:30','2020-11-29 07:00:48','Eat Your Vegetables!',1),(11,'Thai One On Salad','(Gluten Free/Vegan) Carrot, Peppers, Cucumbers, Onions, Mango Jalapeño Salsa, Cabbage, Peanuts, Vermicelli Noodles, & Thai Peanut Dressing\n(Add Coconut Crusted Prawns for $2 each)','sm $10 | lg $15',2,1,'2020-10-10 21:15:54','2020-11-29 07:04:13','Eat Your Vegetables!',1),(12,'The Axe Burger','Bacon, Smoked Cheddar, Garlic Aioli, Lettuce, Tomato, Onions, & Pickles','$16.50',2,1,'2020-10-10 21:17:09','2020-11-29 07:04:19','Burgers She Wrote',1),(13,'Canadian \"EH\" Burger','Poutine Burger, Quebec Cheese Curds, Fries, House Gravy, Onions, & Garlic Aioli on a Brioche Bun (Vegan Option Available)','$16.50',2,1,'2020-10-10 21:18:28','2020-11-29 07:01:20','Burgers She Wrote',1),(14,'\'Merica Classic Burger','Make America Tasty Again!\nCaramelized Onions, American Cheddar,, Mayo, Mustard, Lettuce, Tomato, Onion, & Pickles','$16.50',2,1,'2020-10-10 21:20:04','2020-11-29 07:00:42','Burgers She Wrote',1),(15,'Into The Great Beyond Burger','Beyond Meat Burger, Daiya Cheddar, Vegan Garlic Mayo, Yellow Mustard, Lettuce, Tomato, Onions, & Pickles\n(Vegan Option Available)','$16.50',2,1,'2020-10-10 21:23:00','2020-11-29 07:02:17','Burgers She Wrote',1),(16,'The Greta Thunberg Burger','(Vegan) Lentil, Rice, & Bean Burger, Ginger Peanut Sauce, Carrot, Cucumber, Pickled Cabbage, & Onion on a Whole Wheat Bun \n(No Gluten Free Option Available)','$16.50',2,1,'2020-10-10 21:24:24','2020-11-29 07:04:55','Burgers She Wrote',1),(17,'Krabby Patty Po\' Boy Burger','House Made Crab Cake, Creamy Slaw, Cajun Remoulade, Lettuce, Tomato, Onions, & Pickles - Sponge Bob Approved\n(No Gluten Free Option Available)','$16.50',2,1,'2020-10-10 21:25:15','2020-11-29 07:02:47','Burgers She Wrote',1),(18,'Porky\'s Sandwich ','Maple Bourbon BBQ Pulled Pork, Creamy Slaw, Chipotle Aioli, Smoked Cheddar, Pickled Onions, & Topped with Corn Chips','$16.50',2,1,'2020-10-10 21:26:24','2020-11-29 07:03:39','Burgers She Wrote',1),(19,'Porky\'s Revenge Sandwich','Maple Bourbon BBQ Pulled Jackfruit, Creamy Slaw, Chipotle Aioli, Pickled Onions, & Topped with Corn Chips\n(Vegan Option Available When Requested)','$16.50',2,1,'2020-10-10 21:27:01','2020-11-29 07:03:34','Burgers She Wrote',1),(20,'The Crispy Kenny Rogers Burger','Crispy Fried Chicken Breast, Garlic Aioli, Lettuce, Tomato, Onion, & Pickles \n(No Gluten Free Option Available)','$16.50',2,1,'2020-10-10 21:27:43','2020-11-29 07:04:29','Burgers She Wrote',1),(21,'Not Even If There\'s A Fire! Burger','A Crispy Kenny Rogers With Added Heat! Done Nashville Hot Chicken Style with Sour Cream & Dill Ranch, Pickled Cabbage, Lettuce, Tomato, Onion, & Pickles\n(No Gluten Free Option Available)','$16.50',2,1,'2020-10-10 21:28:51','2020-11-29 07:03:26','Burgers She Wrote',1),(22,'Roadhouse! Burger','Swayze Yourself With a Roadhouse Kick to Your Tastebuds!\n6 oz. Ground Chuck Patty, House Smoked Pulled Pork, Deep Fried Mac & Cheese Patty, Cheese Curds, Fries, House Gravy, Chipotle Aioli, Lettuce, Tomato, & Onions\n(Vegetarian Option Available)\n(No Gluten Free Option Available)','$22',2,1,'2020-10-10 21:30:42','2020-11-29 07:04:07','Burgers She Wrote',1),(23,'Big Ole Yorkie','Braised Beef, Garlic Mashed Potatoes, House Gravy, & Horseradish Crema in a Giant Yorkshire Pudding Bowl','$18',2,1,'2020-10-10 21:31:48','2020-11-29 07:01:03','Fan Favourite!',1),(24,'Feature Dessert',NULL,'$7',2,1,'2020-10-10 21:32:26','2020-11-29 07:01:48','Sweet Tooth',NULL),(25,'Gluten Free Dessert',NULL,'$8',2,1,'2020-10-10 21:32:52','2020-11-29 07:02:04','Sweet Tooth',NULL),(26,'Vegan Dessert',NULL,'$8',2,1,'2020-10-10 21:33:03','2020-11-29 07:05:04','Sweet Tooth',NULL),(27,'X-Treme Poutine!','<b>THIS POUTINE IS A REAL MEAL!</b> House-cut Fries, Country Sausage Gravy, Fried Chicken, Egg, Bacon, Quebec Cheese Curds.','$16',2,1,'2020-11-24 00:39:05','2020-11-29 07:05:16','Vladimir Poutines',1),(28,'\"Sweet Dreams Are Made of Cheese\"','<b>Who am I to dis a Brie?</b><br> Our Mac & Cheese topped with Cheddar, Parmesian & Cornbread Crumble. Baked and served with Salad and garlic Bread.','$18',2,1,'2020-11-24 05:29:50','2020-11-29 07:00:37','Fan Favorite\'s!',1),(29,'Juan in a Million Nachos','<b>(Gluten Free)</b> House Cooked Tortilla Chips, 3 Cheese Blend, Feta, Roasted Corn, Deep Fried Jalapeños, Chipotle Black Beans, Pickled Cabbage, Diced Tomatoes, Green Onions and Cilantro-Lime Crema Drizzle. (Sorry not available for take-out!)\n<br>\n<b>Add Salsa or Sour Cream for $2/Substitute Vegan Cheese for $4<b/>','$20',2,1,'2020-11-24 05:39:07','2020-11-29 07:02:40','Fan Favorite\'s!',1),(30,'Curious Cowboy Burger','6oz Beef Burger, Bacon, Pulled Pork, Onion Rings, Slaw and Chippy Aioli.','$18.50',2,1,'2020-11-24 05:44:07','2020-11-29 07:01:39','Burgers She Wrote',1),(31,'Bi-Curious Cowboy Burger','Add an extra 6oz Homemade Beef Burger to the Curious Cowboy','$23',2,1,'2020-11-24 05:54:06','2020-11-29 07:00:53','Burgers She Wrote',1),(32,'What The Cluck?! Burger','Crispy Chicken Breast, Bacon, Cornbread, American Cheddar, Deep Fried Jalapeños, Sausage Gravy, Garlic Aioli, Lettuce, Tomato and Onion. ','$20.50',2,1,'2020-11-24 05:57:28','2020-11-29 07:05:11','Burgers She Wrote',1),(33,'Roundhouse Kick To The FACE! Burger','<b>Our Biggest Burger Yet!</b><br>\n6oz Beef Burger, Fried Chicken Breast Topped in Hot Sauce, Bacon, Blue Cheese Dressing, Onion Rings, Deep Fried Pickles, Lettuce, Tomato and Onion.','$25',2,1,'2020-11-24 06:02:28','2020-11-29 07:33:24','Burgers She Wrote',1);
/*!40000 ALTER TABLE `menu04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu04_title`
--

DROP TABLE IF EXISTS `menu04_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu04_title` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `hours` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu04_title`
--

LOCK TABLES `menu04_title` WRITE;
/*!40000 ALTER TABLE `menu04_title` DISABLE KEYS */;
INSERT INTO `menu04_title` VALUES (1,'Main Menu','Weekdays:  10:30am - close<br>\nWeekends:  1pm - close',1,2,'2020-11-18 13:26:51','2020-11-24 06:08:35',1);
/*!40000 ALTER TABLE `menu04_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu05`
--

DROP TABLE IF EXISTS `menu05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu05` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `enabled` tinyint(1) DEFAULT NULL,
  `omit` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu05`
--

LOCK TABLES `menu05` WRITE;
/*!40000 ALTER TABLE `menu05` DISABLE KEYS */;
INSERT INTO `menu05` VALUES (1,'UTAH! Get me 2!','Our 2 Egg Breakfast with Potato n’ Yam Home Fries and Fresh Tomato\n*Choice of Bacon, Sausage or Avocado\n*Choice of Multigrain or Sourdough Toast             \n(Sub Gluten Free Toast for $1)\n',NULL,'$9.75',2,2,'2020-10-10 22:37:11','2020-10-10 22:37:11',NULL,NULL),(2,'B.E.L.T. Me Up, Buttercup!','Egg, Smoked Cheddar, Garlic Aioli, Tomato & Lettuce in an Everything Bagel\n*Choice of Sausage, Bacon, or Avocado              (Sub Gluten-Free Bun for $1)                                     (Sub Vegan Cheese & Vegan Garlic Aioli for $1)\n',NULL,'$6 | +$3 with Hash',2,2,'2020-10-10 22:39:48','2020-10-10 22:39:48',NULL,NULL),(3,'Fre Shavaca Do Toast','Avocado Toast with Grilled Red Pepper & Onion, Spinach, Feta, Hemp Seeds, & Strawberry Fig Balsamic Reduction on Sourdough                                                         (Sub Vegan Cheese for $1)                                                               (Sub Gluten Free Toast for $.5)',NULL,'$6 | +$3 with Hash',2,2,'2020-10-10 22:43:19','2020-10-10 22:43:19',NULL,NULL),(4,'B&E Burger','Bacon, Over Easy Egg, Caramelized Onions, American Cheese, Garlic Aioli, 6oz. House Made Beef Patty, Lettuce, Tomato, & Onion.                                                                                                                                                     So Good, It’s Almost a Criminal Offence.... (Insert Eye Roll Here)\n*Choice of Salad, Fries, or Slaw',NULL,'$16.5',2,2,'2020-10-10 22:45:03','2020-10-10 22:45:03',NULL,NULL),(5,'Hot Tub Time Poutine','Poutine is for any time and all times, including breakfast!                                                                                                          House Cut Kennebec Fries, Quebec Cheese Curds, Country Sausage Gravy, Bacon, Over Easy Egg, & Chipotle Aioli Drizzle',NULL,'$10',2,2,'2020-10-10 22:46:34','2020-10-10 22:46:34',NULL,NULL),(6,'The Mother Clucker','Fried Chicken, Poached Egg, Peppered Bacon Bits, Maple Syrup Drizzle, & Country Sausage Gravy on Cornbread\n*Served with Potato Latkes, Garlic Aioli, & Salad\n',NULL,'$15',2,2,'2020-10-10 22:47:33','2020-10-10 22:47:49',NULL,NULL),(7,'If Natalie Portman Were A Benny...','Rice, Lentil, & Bean Cake, Avocado, Fresh Tomato, Roasted Corn Salsa, Pickled Red Onion, & Vegan Garlic Aioli Sauce on an English Muffin.                                                            Served with Potato n’ Yam Home Fries, & Salad',NULL,'Half Order $10.5 | Full Order $14',2,2,'2020-10-10 22:49:11','2020-10-10 22:49:11',NULL,NULL),(8,'Mickey & Mallory Bowls','(“Cereal” Killers, Get It?)                                 \nRaisin Bran, Fruit Loops, Corn Pops, Cheerios\n*Choice of Whole Milk or Oat Milk\n',NULL,'$3.5',2,2,'2020-10-10 22:50:11','2020-10-10 22:50:11',NULL,NULL),(9,'Granola','House Made Granola with Honey, Nuts, & Sun Dried Fruits\n*Choice of Whole Milk or Oat Milk\n',NULL,'$4',2,2,'2020-10-10 22:51:02','2020-10-10 22:52:44',NULL,NULL),(10,'Hot Oatmeal','Choice of Apple Cinnamon or Maple Raisin\n*Served with Brown Sugar and Whole Milk or Oat Milk',NULL,'$3',2,2,'2020-10-10 22:52:34','2020-10-10 22:52:34',NULL,NULL);
/*!40000 ALTER TABLE `menu05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu05_title`
--

DROP TABLE IF EXISTS `menu05_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu05_title` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `hours` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu05_title`
--

LOCK TABLES `menu05_title` WRITE;
/*!40000 ALTER TABLE `menu05_title` DISABLE KEYS */;
INSERT INTO `menu05_title` VALUES (1,'Weekday Breakfast Menu','8am - 11am',1,1,'2020-11-23 14:05:33','2020-11-23 14:35:09',NULL);
/*!40000 ALTER TABLE `menu05_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu06`
--

DROP TABLE IF EXISTS `menu06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu06` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `enabled` tinyint(1) DEFAULT NULL,
  `omit` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu06`
--

LOCK TABLES `menu06` WRITE;
/*!40000 ALTER TABLE `menu06` DISABLE KEYS */;
INSERT INTO `menu06` VALUES (1,'The Bernie Mac Benny','Weekend At Benny\'s!','Bacon, Poached Egg, Fresh Tomato, \nCrispy Jalapeños, & Hollandaise on\nDeep Fried Mac & Cheese Patties\n(Sub Veggie Bacon for $1)','Half Order $12.5 | Full Order $16',2,1,'2020-10-10 22:10:58','2020-11-29 07:13:13',NULL,NULL),(2,'Benny Crabitz','Weekend At Benny\'s!','House Crab Cake, Poached Egg, Fried Capers, Fresh Dill, Lemon Zest, & Hollandaise on an English Muffin \n(Sorry, No Half Orders Available at this Time)\n','$16',2,1,'2020-10-10 22:12:28','2020-11-29 07:09:08',NULL,NULL),(3,'PP For My Corn(Holio)Bread Benny','Weekend At Benny\'s!','House Smoked Pork, Poached Egg, Maple Bourbon BBQ, Grilled Red Peppers, Chipotle Aioli Drizzle, Green Onions, & Hollandaise on Cornbread\n(Sub Pulled Jackfruit to Make It Vegetarian)\n\n','Half Order $12.5 | Full Order $16',2,1,'2020-10-10 22:15:24','2020-11-29 07:12:38',NULL,NULL),(4,'The Mother Clucker Benny','Weekend At Benny\'s!','Fried Chicken, Poached Egg, Peppered Bacon Bits, Maple Syrup Drizzle, & Country Gravy on Cornbread\n','Half Order $12.5 | Full Order $16',2,1,'2020-10-10 22:16:36','2020-11-29 07:13:37',NULL,NULL),(5,'If Natalie Portman Were A Benny...','Weekend At Benny\'s!','(Vegan)\nRice, Lentil & Bean Cake, Avocado, Tomato, Roasted Corn Salsa, Pickled Red Onion, & Vegan Garlic Aioli Drizzle on an English Muffin.\n','Half Order $12.5 | Full Order $16',2,1,'2020-10-10 22:19:14','2020-11-29 07:12:26',NULL,NULL),(6,'Spiked Coffee','Brunch Drinks','(1 oz.)\nFresh Brewed Shuswap Coffee Company Drip with Bailey\'s, Amaretto, Kahlua, Frangelico, Jameson, or Creme de Menthe','$4.75',2,1,'2020-10-10 22:20:46','2020-11-29 07:12:56',NULL,NULL),(7,'Screwdrivers','Brunch Drinks','Orange Juice with Vodka','1oz. $5.25 | 2oz. $7.25',2,1,'2020-10-10 22:21:39','2020-11-29 07:12:51',NULL,NULL),(8,'Double Caesars','Brunch Drinks','Classic Caesar Served with House Pickled Vegetables','$9',2,1,'2020-10-10 22:22:18','2020-11-29 07:35:58',NULL,0),(9,'The Dude','Brunch Drinks','(1.5 oz.)\nA White Russian with a Caffeinated Kick! Iced Coffee, Vodka, Kahlua, and Dairy Free Cream','$7.5',2,1,'2020-10-10 22:23:21','2020-11-29 07:13:30',NULL,NULL),(10,'The Axe Burger','Burgers She Wrote','Bacon, Smoked Cheddar, Garlic Aioli, Lettuce, Tomato, Onion, & Pickles','$16.50',2,1,'2020-10-10 22:25:09','2020-11-29 07:13:07',NULL,NULL),(11,'Canadian \"EH\" Burger','Burgers She Wrote','Poutine Burger, Quebec Cheese Curds, Fries, House Gravy, Onions, and  Garlic Aioli on a Brioche Bun\n(Vegan Option Available)\n','$16.50',2,1,'2020-10-10 22:26:38','2020-11-29 07:09:13',NULL,NULL),(12,'\'Merica Classic Burger','Burgers She Wrote','Make America Tasty Again!\nCaramelized Onions, American Cheddar, Pickles, Mayo, Mustard, Lettuce, Tomato, & Onion\n','$16.50',2,1,'2020-10-10 22:27:12','2020-11-29 07:08:22',NULL,NULL),(13,'Into The Great Beyond Burger','Burgers She Wrote','Beyond Meat Burger, Daiya Cheddar, Vegan Mayo, Yellow Mustard, Lettuce, Tomato, Onion, & Pickles\n(Vegan Option Available)','$16.50',2,1,'2020-10-10 22:28:19','2020-11-29 07:12:31',NULL,NULL),(14,'The Crispy Kenny Rogers Burger','Burgers She Wrote','Crispy Fried Chicken Breast, Garlic Aioli, Lettuce, Tomato, Onion, & Pickles\n(No Gluten Free Option Available)','$16.50',2,1,'2020-10-10 22:28:55','2020-11-29 07:13:23',NULL,NULL),(15,'Roadhouse! Burger','Burgers She Wrote','Swayze Yourself With A Kick To The Tastebuds! \n6oz. Ground Chuck Patty, House Smoked Pulled Pork, Deep Fried Mac & Cheese Patty, Cheese Curds, Fries, House Gravy, Chipotle Aioli, Lettuce, Tomato, & Onion.\n(Vegetarian Option Available)\n(No Gluten Free Option Available)\n','$22',2,1,'2020-10-10 22:30:57','2020-11-29 07:12:46',NULL,NULL),(16,'Axe Salad','Eat Your Vegetables!','(Gluten Free)\nFeta, Cranberries, Toasted Walnut, Apple, Mixed Greens, & Balsamic Dijon Vinaigrette\n(Vegan Option Available)\n','sm $8 | lg $12',2,1,'2020-10-10 22:32:44','2020-11-29 07:08:26',NULL,NULL),(17,'Thai One On Salad','Eat Your Vegetables!','(Gluten Free/Vegan) \nCarrot, Peppers, Onion, Mango Jalapeno Salsa, Cabbage, Peanuts, Vermicelli Noodles, & \nThai Peanut Dressing\n','sm $10 | lg $15',2,1,'2020-10-10 22:33:20','2020-11-29 07:13:01',NULL,NULL),(18,'Hunter Poutine','Vladimir Poutines','House Gravy, Quebec Cheese Curds, & Kennebec Fries','$10',2,1,'2020-10-10 22:34:01','2020-11-29 07:12:20',NULL,NULL),(19,'Gatherer Poutine','Vladimir Poutines','(Gluten free/Vegan)\nHouse Chickpea Gravy, Vegan Smoked Gouda, Kennebec Fries\n','$10',2,1,'2020-10-10 22:34:56','2020-11-29 07:12:14',NULL,NULL);
/*!40000 ALTER TABLE `menu06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu06_title`
--

DROP TABLE IF EXISTS `menu06_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu06_title` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `hours` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu06_title`
--

LOCK TABLES `menu06_title` WRITE;
/*!40000 ALTER TABLE `menu06_title` DISABLE KEYS */;
INSERT INTO `menu06_title` VALUES (1,'Weekend Breakfast Menu','Saturday:  9am - 1pm<br>\nSunday: 9am - 1pm',1,2,'2020-11-23 14:05:42','2020-11-24 06:10:11',1);
/*!40000 ALTER TABLE `menu06_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_cat`
--

DROP TABLE IF EXISTS `menu_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_cat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_cat`
--

LOCK TABLES `menu_cat` WRITE;
/*!40000 ALTER TABLE `menu_cat` DISABLE KEYS */;
INSERT INTO `menu_cat` VALUES (1,'Taco Walk on The Wild Side!',1,1,'2020-11-25 16:18:14','2020-11-25 16:18:14'),(2,'Vladimir Poutines...',1,1,'2020-11-25 16:18:32','2020-11-25 16:18:32'),(3,'Eat Your Vegetables!',1,1,'2020-11-25 16:18:41','2020-11-25 16:18:41'),(4,'Fan Favourites!',1,1,'2020-11-25 16:18:47','2020-11-25 16:18:47'),(5,'Burgers She Wrote...',1,1,'2020-11-25 16:18:54','2020-11-25 16:18:54'),(6,'I Like Big Bowls! (And I Cannot Lie)',1,1,'2020-11-25 16:19:01','2020-11-25 16:19:02'),(7,'Other',1,1,'2020-11-25 16:19:31','2020-11-29 07:34:37'),(8,'Brews Brothers!',1,1,'2020-11-28 12:27:54','2020-11-28 12:27:54'),(9,'Ciders & Basic B\'s...',1,1,'2020-11-28 12:28:19','2020-11-28 12:28:19'),(10,'On The Wagon...',1,1,'2020-11-28 12:28:31','2020-11-28 12:28:31'),(11,'Something to Wine About',1,1,'2020-11-28 12:28:46','2020-11-28 12:28:46'),(12,'OG Cocktails...',1,1,'2020-11-28 12:28:57','2020-11-28 12:28:57'),(13,'Weekend At Benny\'s!',1,1,'2020-11-29 07:08:51','2020-11-29 07:08:51'),(14,'Brunch Drinks',1,1,'2020-11-29 07:11:31','2020-11-29 07:11:31');
/*!40000 ALTER TABLE `menu_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_cats_menu_01_s__menu_02_s_menu_cats`
--

DROP TABLE IF EXISTS `menu_cats_menu_01_s__menu_02_s_menu_cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_cats_menu_01_s__menu_02_s_menu_cats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu02_id` int(11) DEFAULT NULL,
  `menu-cat_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_cats_menu_01_s__menu_02_s_menu_cats`
--

LOCK TABLES `menu_cats_menu_01_s__menu_02_s_menu_cats` WRITE;
/*!40000 ALTER TABLE `menu_cats_menu_01_s__menu_02_s_menu_cats` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_cats_menu_01_s__menu_02_s_menu_cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_cats_menu_02_s__menu_01_s_menu_cats`
--

DROP TABLE IF EXISTS `menu_cats_menu_02_s__menu_01_s_menu_cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_cats_menu_02_s__menu_01_s_menu_cats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu01_id` int(11) DEFAULT NULL,
  `menu-cat_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_cats_menu_02_s__menu_01_s_menu_cats`
--

LOCK TABLES `menu_cats_menu_02_s__menu_01_s_menu_cats` WRITE;
/*!40000 ALTER TABLE `menu_cats_menu_02_s__menu_01_s_menu_cats` DISABLE KEYS */;
INSERT INTO `menu_cats_menu_02_s__menu_01_s_menu_cats` VALUES (1,1,8),(2,2,8),(3,3,8),(4,4,8),(5,6,9),(6,7,9),(7,13,12),(8,14,12),(9,16,12),(10,17,12),(11,18,12),(12,19,12),(13,20,12),(14,27,12),(15,28,12),(16,29,12),(17,30,12),(18,31,12),(19,32,12),(20,21,10),(21,22,10),(22,23,10),(23,24,10),(24,25,10),(25,26,10),(26,8,11),(27,9,11),(28,10,11);
/*!40000 ALTER TABLE `menu_cats_menu_02_s__menu_01_s_menu_cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_cats_menu_04_s__menu_04_s_menu_cats`
--

DROP TABLE IF EXISTS `menu_cats_menu_04_s__menu_04_s_menu_cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_cats_menu_04_s__menu_04_s_menu_cats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu04_id` int(11) DEFAULT NULL,
  `menu-cat_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_cats_menu_04_s__menu_04_s_menu_cats`
--

LOCK TABLES `menu_cats_menu_04_s__menu_04_s_menu_cats` WRITE;
/*!40000 ALTER TABLE `menu_cats_menu_04_s__menu_04_s_menu_cats` DISABLE KEYS */;
INSERT INTO `menu_cats_menu_04_s__menu_04_s_menu_cats` VALUES (1,28,4),(2,14,5),(3,10,3),(4,31,5),(5,23,4),(6,3,1),(7,13,5),(8,30,5),(9,24,7),(10,6,2),(11,25,7),(12,5,2),(13,15,5),(14,2,1),(15,29,4),(16,17,5),(17,4,1),(18,7,2),(19,8,3),(20,21,5),(21,19,5),(22,18,5),(23,1,1),(24,22,5),(25,11,3),(26,12,5),(27,9,3),(28,20,5),(29,16,5),(30,26,7),(31,32,5),(32,27,2),(33,33,5);
/*!40000 ALTER TABLE `menu_cats_menu_04_s__menu_04_s_menu_cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_cats_menu_05_s__menu_05_s_menu_cats`
--

DROP TABLE IF EXISTS `menu_cats_menu_05_s__menu_05_s_menu_cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_cats_menu_05_s__menu_05_s_menu_cats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu05_id` int(11) DEFAULT NULL,
  `menu-cat_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_cats_menu_05_s__menu_05_s_menu_cats`
--

LOCK TABLES `menu_cats_menu_05_s__menu_05_s_menu_cats` WRITE;
/*!40000 ALTER TABLE `menu_cats_menu_05_s__menu_05_s_menu_cats` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_cats_menu_05_s__menu_05_s_menu_cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_cats_menu_06_s__menu_06_s_menu_cats`
--

DROP TABLE IF EXISTS `menu_cats_menu_06_s__menu_06_s_menu_cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_cats_menu_06_s__menu_06_s_menu_cats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu06_id` int(11) DEFAULT NULL,
  `menu-cat_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_cats_menu_06_s__menu_06_s_menu_cats`
--

LOCK TABLES `menu_cats_menu_06_s__menu_06_s_menu_cats` WRITE;
/*!40000 ALTER TABLE `menu_cats_menu_06_s__menu_06_s_menu_cats` DISABLE KEYS */;
INSERT INTO `menu_cats_menu_06_s__menu_06_s_menu_cats` VALUES (1,12,5),(2,16,3),(3,2,13),(4,11,5),(6,8,14),(7,19,2),(8,18,2),(9,5,13),(10,13,5),(11,3,13),(12,15,5),(13,7,14),(14,6,14),(15,17,3),(16,10,5),(17,1,13),(18,14,5),(19,9,14),(20,4,13);
/*!40000 ALTER TABLE `menu_cats_menu_06_s__menu_06_s_menu_cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (4,1,1,'2020-10-26 19:45:51','2020-10-26 19:45:51'),(6,1,1,'2020-10-26 19:47:11','2020-10-26 19:47:12'),(7,1,1,'2020-10-26 19:47:22','2020-10-26 19:47:22'),(8,1,1,'2020-10-26 19:47:30','2020-10-26 19:47:30');
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotes`
--

DROP TABLE IF EXISTS `quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` varchar(255) DEFAULT NULL,
  `text` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotes`
--

LOCK TABLES `quotes` WRITE;
/*!40000 ALTER TABLE `quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `quotes` ENABLE KEYS */;
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_administrator_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_administrator`
--

LOCK TABLES `strapi_administrator` WRITE;
/*!40000 ALTER TABLE `strapi_administrator` DISABLE KEYS */;
INSERT INTO `strapi_administrator` VALUES (1,'Ryan','Trigg',NULL,'ryan.trigg@gmail.com','$2a$10$U8C5ujq8vJHvEAxdsHl3..YkBAddPBCh.LF2PmHAix0purYi.wKEe',NULL,NULL,1,NULL),(2,'Sarah','Grace',NULL,'smallaxeroadhouse@gmail.com','$2a$10$3X4Y6W0HwcRkXyEP0dvZZOXtSYB8kpKtdq.0Jjj.cuF8bKTr/RroW',NULL,'9d432857698084891797c1c8c7d769c727455958',1,NULL);
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
  `fields` longtext DEFAULT NULL,
  `conditions` longtext DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=472 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_permission`
--

LOCK TABLES `strapi_permission` WRITE;
/*!40000 ALTER TABLE `strapi_permission` DISABLE KEYS */;
INSERT INTO `strapi_permission` VALUES (1,'plugins::upload.read',NULL,NULL,'[]',2,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(2,'plugins::upload.assets.create',NULL,NULL,'[]',2,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(3,'plugins::upload.assets.update',NULL,NULL,'[]',2,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(4,'plugins::upload.assets.download',NULL,NULL,'[]',2,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(5,'plugins::upload.assets.copy-link',NULL,NULL,'[]',2,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(6,'plugins::upload.read',NULL,NULL,'[\"admin::is-creator\"]',3,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(7,'plugins::upload.assets.create',NULL,NULL,'[]',3,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(8,'plugins::upload.assets.update',NULL,NULL,'[\"admin::is-creator\"]',3,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(9,'plugins::upload.assets.download',NULL,NULL,'[]',3,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(10,'plugins::upload.assets.copy-link',NULL,NULL,'[]',3,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(11,'plugins::content-manager.explorer.create','plugins::users-permissions.user','[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmed\",\"blocked\",\"role\"]','[]',1,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(12,'plugins::content-manager.explorer.read','plugins::users-permissions.user','[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmed\",\"blocked\",\"role\"]','[]',1,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(13,'plugins::content-manager.explorer.update','plugins::users-permissions.user','[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmed\",\"blocked\",\"role\"]','[]',1,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(14,'plugins::content-manager.explorer.delete','plugins::users-permissions.user',NULL,'[]',1,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(15,'plugins::content-type-builder.read',NULL,NULL,'[]',1,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(16,'plugins::upload.read',NULL,NULL,'[]',1,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(17,'plugins::upload.assets.create',NULL,NULL,'[]',1,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(18,'plugins::upload.assets.update',NULL,NULL,'[]',1,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(19,'plugins::upload.assets.download',NULL,NULL,'[]',1,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(20,'plugins::upload.assets.copy-link',NULL,NULL,'[]',1,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(21,'plugins::upload.settings.read',NULL,NULL,'[]',1,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(22,'plugins::content-manager.single-types.configure-view',NULL,NULL,'[]',1,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(23,'plugins::content-manager.collection-types.configure-view',NULL,NULL,'[]',1,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(24,'plugins::content-manager.components.configure-layout',NULL,NULL,'[]',1,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(25,'plugins::users-permissions.roles.create',NULL,NULL,'[]',1,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(26,'plugins::users-permissions.roles.read',NULL,NULL,'[]',1,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(27,'plugins::users-permissions.roles.update',NULL,NULL,'[]',1,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(28,'plugins::users-permissions.roles.delete',NULL,NULL,'[]',1,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(29,'plugins::users-permissions.providers.read',NULL,NULL,'[]',1,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(30,'plugins::users-permissions.providers.update',NULL,NULL,'[]',1,'2020-10-04 07:36:39','2020-10-04 07:36:39'),(31,'plugins::users-permissions.email-templates.read',NULL,NULL,'[]',1,'2020-10-04 07:36:40','2020-10-04 07:36:40'),(32,'plugins::users-permissions.email-templates.update',NULL,NULL,'[]',1,'2020-10-04 07:36:40','2020-10-04 07:36:40'),(33,'plugins::users-permissions.advanced-settings.read',NULL,NULL,'[]',1,'2020-10-04 07:36:40','2020-10-04 07:36:40'),(34,'plugins::users-permissions.advanced-settings.update',NULL,NULL,'[]',1,'2020-10-04 07:36:40','2020-10-04 07:36:40'),(35,'admin::marketplace.read',NULL,NULL,'[]',1,'2020-10-04 07:36:40','2020-10-04 07:36:40'),(36,'admin::marketplace.plugins.install',NULL,NULL,'[]',1,'2020-10-04 07:36:40','2020-10-04 07:36:40'),(37,'admin::marketplace.plugins.uninstall',NULL,NULL,'[]',1,'2020-10-04 07:36:40','2020-10-04 07:36:40'),(38,'admin::webhooks.create',NULL,NULL,'[]',1,'2020-10-04 07:36:40','2020-10-04 07:36:40'),(39,'admin::webhooks.read',NULL,NULL,'[]',1,'2020-10-04 07:36:40','2020-10-04 07:36:40'),(40,'admin::webhooks.update',NULL,NULL,'[]',1,'2020-10-04 07:36:40','2020-10-04 07:36:40'),(41,'admin::webhooks.delete',NULL,NULL,'[]',1,'2020-10-04 07:36:40','2020-10-04 07:36:40'),(42,'admin::users.create',NULL,NULL,'[]',1,'2020-10-04 07:36:40','2020-10-04 07:36:40'),(43,'admin::users.read',NULL,NULL,'[]',1,'2020-10-04 07:36:40','2020-10-04 07:36:40'),(44,'admin::users.update',NULL,NULL,'[]',1,'2020-10-04 07:36:40','2020-10-04 07:36:40'),(45,'admin::users.delete',NULL,NULL,'[]',1,'2020-10-04 07:36:40','2020-10-04 07:36:40'),(46,'admin::roles.create',NULL,NULL,'[]',1,'2020-10-04 07:36:40','2020-10-04 07:36:40'),(47,'admin::roles.read',NULL,NULL,'[]',1,'2020-10-04 07:36:40','2020-10-04 07:36:40'),(48,'admin::roles.update',NULL,NULL,'[]',1,'2020-10-04 07:36:40','2020-10-04 07:36:40'),(49,'admin::roles.delete',NULL,NULL,'[]',1,'2020-10-04 07:36:40','2020-10-04 07:36:40'),(58,'plugins::content-manager.explorer.create','application::logo.logo','[\"image\"]','[]',1,'2020-10-04 08:26:24','2020-10-04 08:26:24'),(59,'plugins::content-manager.explorer.read','application::logo.logo','[\"image\"]','[]',1,'2020-10-04 08:26:24','2020-10-04 08:26:24'),(60,'plugins::content-manager.explorer.update','application::logo.logo','[\"image\"]','[]',1,'2020-10-04 08:26:24','2020-10-04 08:26:24'),(61,'plugins::content-manager.explorer.delete','application::logo.logo',NULL,'[]',1,'2020-10-04 08:26:24','2020-10-04 08:26:24'),(62,'plugins::content-manager.explorer.create','application::quotes.quotes','[\"from\",\"text\"]','[]',1,'2020-10-04 16:43:43','2020-10-04 16:43:43'),(63,'plugins::content-manager.explorer.read','application::quotes.quotes','[\"from\",\"text\"]','[]',1,'2020-10-04 16:43:43','2020-10-04 16:43:43'),(64,'plugins::content-manager.explorer.update','application::quotes.quotes','[\"from\",\"text\"]','[]',1,'2020-10-04 16:43:43','2020-10-04 16:43:43'),(65,'plugins::content-manager.explorer.delete','application::quotes.quotes',NULL,'[]',1,'2020-10-04 16:43:43','2020-10-04 16:43:43'),(131,'plugins::content-manager.explorer.create','application::photos.photos','[\"image\"]','[]',1,'2020-10-13 00:05:34','2020-10-13 00:05:34'),(132,'plugins::content-manager.explorer.read','application::photos.photos','[\"image\"]','[]',1,'2020-10-13 00:05:34','2020-10-13 00:05:34'),(133,'plugins::content-manager.explorer.update','application::photos.photos','[\"image\"]','[]',1,'2020-10-13 00:05:34','2020-10-13 00:05:34'),(134,'plugins::content-manager.explorer.delete','application::photos.photos',NULL,'[]',1,'2020-10-13 00:05:34','2020-10-13 00:05:34'),(138,'plugins::content-manager.explorer.delete','application::covid-comments.covid-comments',NULL,'[]',1,'2020-10-13 07:23:18','2020-10-13 07:23:18'),(142,'plugins::content-manager.explorer.create','application::covid-comments.covid-comments','[\"text\"]','[]',1,'2020-10-13 07:25:25','2020-10-13 07:31:17'),(143,'plugins::content-manager.explorer.read','application::covid-comments.covid-comments','[\"text\"]','[]',1,'2020-10-13 07:25:25','2020-10-13 07:31:17'),(144,'plugins::content-manager.explorer.update','application::covid-comments.covid-comments','[\"text\"]','[]',1,'2020-10-13 07:25:25','2020-10-13 07:31:17'),(148,'plugins::content-manager.explorer.delete','application::covid-links.covid-links',NULL,'[]',1,'2020-10-13 07:30:33','2020-10-13 07:30:33'),(149,'plugins::content-manager.explorer.create','application::covid-links.covid-links','[\"organization\",\"link\"]','[]',1,'2020-10-13 07:47:34','2020-10-13 07:47:34'),(150,'plugins::content-manager.explorer.read','application::covid-links.covid-links','[\"organization\",\"link\"]','[]',1,'2020-10-13 07:47:34','2020-10-13 07:47:34'),(151,'plugins::content-manager.explorer.update','application::covid-links.covid-links','[\"organization\",\"link\"]','[]',1,'2020-10-13 07:47:34','2020-10-13 07:47:34'),(160,'plugins::content-manager.explorer.create','application::about.about','[\"text\"]','[]',1,'2020-10-18 06:02:58','2020-10-18 06:02:58'),(161,'plugins::content-manager.explorer.read','application::about.about','[\"text\"]','[]',1,'2020-10-18 06:02:58','2020-10-18 06:02:58'),(162,'plugins::content-manager.explorer.update','application::about.about','[\"text\"]','[]',1,'2020-10-18 06:02:58','2020-10-18 06:02:58'),(163,'plugins::content-manager.explorer.delete','application::about.about',NULL,'[]',1,'2020-10-18 06:02:58','2020-10-18 06:02:58'),(164,'plugins::content-manager.explorer.create','application::facts.facts','[\"text\"]','[]',1,'2020-10-18 07:14:45','2020-10-18 07:14:45'),(165,'plugins::content-manager.explorer.read','application::facts.facts','[\"text\"]','[]',1,'2020-10-18 07:14:45','2020-10-18 07:14:45'),(166,'plugins::content-manager.explorer.update','application::facts.facts','[\"text\"]','[]',1,'2020-10-18 07:14:45','2020-10-18 07:14:45'),(167,'plugins::content-manager.explorer.delete','application::facts.facts',NULL,'[]',1,'2020-10-18 07:14:45','2020-10-18 07:14:45'),(182,'plugins::content-manager.explorer.delete','application::events.events',NULL,'[]',1,'2020-10-18 09:38:31','2020-10-18 09:38:31'),(183,'plugins::content-manager.explorer.create','application::covid-comments.covid-comments','[\"text\"]','[]',2,'2020-10-18 16:24:37','2020-10-18 16:24:37'),(184,'plugins::content-manager.explorer.read','application::covid-comments.covid-comments','[\"text\"]','[]',2,'2020-10-18 16:24:37','2020-10-18 16:24:37'),(185,'plugins::content-manager.explorer.update','application::covid-comments.covid-comments','[\"text\"]','[]',2,'2020-10-18 16:24:37','2020-10-18 16:24:37'),(186,'plugins::content-manager.explorer.delete','application::covid-comments.covid-comments',NULL,'[]',2,'2020-10-18 16:24:37','2020-10-18 16:24:37'),(187,'plugins::content-manager.explorer.create','application::covid-links.covid-links','[\"link\",\"organization\"]','[]',2,'2020-10-18 16:24:37','2020-10-18 16:24:37'),(188,'plugins::content-manager.explorer.read','application::covid-links.covid-links','[\"link\",\"organization\"]','[]',2,'2020-10-18 16:24:37','2020-10-18 16:24:37'),(189,'plugins::content-manager.explorer.update','application::covid-links.covid-links','[\"link\",\"organization\"]','[]',2,'2020-10-18 16:24:37','2020-10-18 16:24:37'),(190,'plugins::content-manager.explorer.delete','application::covid-links.covid-links',NULL,'[]',2,'2020-10-18 16:24:37','2020-10-18 16:24:37'),(191,'plugins::content-manager.explorer.create','application::events.events','[\"date\",\"description\",\"title\"]','[]',2,'2020-10-18 16:24:37','2020-10-18 16:24:37'),(192,'plugins::content-manager.explorer.read','application::events.events','[\"date\",\"description\",\"title\"]','[]',2,'2020-10-18 16:24:37','2020-10-18 16:24:37'),(193,'plugins::content-manager.explorer.update','application::events.events','[\"date\",\"description\",\"title\"]','[]',2,'2020-10-18 16:24:37','2020-10-18 16:24:37'),(194,'plugins::content-manager.explorer.delete','application::events.events',NULL,'[]',2,'2020-10-18 16:24:37','2020-10-18 16:24:37'),(195,'plugins::content-manager.explorer.create','application::facts.facts','[\"text\"]','[]',2,'2020-10-18 16:24:37','2020-10-18 16:24:37'),(196,'plugins::content-manager.explorer.read','application::facts.facts','[\"text\"]','[]',2,'2020-10-18 16:24:37','2020-10-18 16:24:37'),(197,'plugins::content-manager.explorer.update','application::facts.facts','[\"text\"]','[]',2,'2020-10-18 16:24:37','2020-10-18 16:24:37'),(198,'plugins::content-manager.explorer.delete','application::facts.facts',NULL,'[]',2,'2020-10-18 16:24:37','2020-10-18 16:24:37'),(199,'plugins::content-manager.explorer.create','application::photos.photos','[\"image\"]','[]',2,'2020-10-18 16:24:37','2020-10-18 16:24:37'),(200,'plugins::content-manager.explorer.read','application::photos.photos','[\"image\"]','[]',2,'2020-10-18 16:24:37','2020-10-18 16:24:37'),(201,'plugins::content-manager.explorer.update','application::photos.photos','[\"image\"]','[]',2,'2020-10-18 16:24:37','2020-10-18 16:24:37'),(202,'plugins::content-manager.explorer.delete','application::photos.photos',NULL,'[]',2,'2020-10-18 16:24:37','2020-10-18 16:24:37'),(219,'plugins::content-manager.explorer.create','application::about.about','[\"text\"]','[]',2,'2020-10-26 06:28:14','2020-10-26 06:28:14'),(220,'plugins::content-manager.explorer.read','application::about.about','[\"text\"]','[]',2,'2020-10-26 06:28:14','2020-10-26 06:28:14'),(221,'plugins::content-manager.explorer.update','application::about.about','[\"text\"]','[]',2,'2020-10-26 06:28:14','2020-10-26 06:28:14'),(222,'plugins::content-manager.explorer.delete','application::about.about',NULL,'[]',2,'2020-10-26 06:28:14','2020-10-26 06:28:14'),(223,'plugins::content-manager.explorer.create','application::contact.contact','[\"phone\",\"email\",\"address\"]','[]',1,'2020-10-26 18:15:48','2020-10-26 18:15:48'),(224,'plugins::content-manager.explorer.create','application::hours.hours','[\"hours\"]','[]',1,'2020-10-26 18:15:48','2020-10-26 18:15:48'),(225,'plugins::content-manager.explorer.read','application::contact.contact','[\"phone\",\"email\",\"address\"]','[]',1,'2020-10-26 18:15:48','2020-10-26 18:15:48'),(226,'plugins::content-manager.explorer.read','application::hours.hours','[\"hours\"]','[]',1,'2020-10-26 18:15:48','2020-10-26 18:15:48'),(227,'plugins::content-manager.explorer.update','application::contact.contact','[\"phone\",\"email\",\"address\"]','[]',1,'2020-10-26 18:15:48','2020-10-26 18:15:48'),(228,'plugins::content-manager.explorer.update','application::hours.hours','[\"hours\"]','[]',1,'2020-10-26 18:15:48','2020-10-26 18:15:48'),(229,'plugins::content-manager.explorer.delete','application::contact.contact',NULL,'[]',1,'2020-10-26 18:15:48','2020-10-26 18:15:48'),(230,'plugins::content-manager.explorer.delete','application::hours.hours',NULL,'[]',1,'2020-10-26 18:15:48','2020-10-26 18:15:48'),(231,'plugins::content-manager.explorer.create','application::contact.contact','[\"address\",\"email\",\"phone\"]','[]',2,'2020-10-26 18:17:43','2020-10-26 18:17:43'),(232,'plugins::content-manager.explorer.read','application::contact.contact','[\"address\",\"email\",\"phone\"]','[]',2,'2020-10-26 18:17:43','2020-10-26 18:17:43'),(233,'plugins::content-manager.explorer.update','application::contact.contact','[\"address\",\"email\",\"phone\"]','[]',2,'2020-10-26 18:17:43','2020-10-26 18:17:43'),(234,'plugins::content-manager.explorer.delete','application::contact.contact',NULL,'[]',2,'2020-10-26 18:17:43','2020-10-26 18:17:43'),(235,'plugins::content-manager.explorer.create','application::hours.hours','[\"hours\"]','[]',2,'2020-10-26 18:17:43','2020-10-26 18:17:43'),(236,'plugins::content-manager.explorer.read','application::hours.hours','[\"hours\"]','[]',2,'2020-10-26 18:17:43','2020-10-26 18:17:43'),(237,'plugins::content-manager.explorer.update','application::hours.hours','[\"hours\"]','[]',2,'2020-10-26 18:17:43','2020-10-26 18:17:43'),(238,'plugins::content-manager.explorer.delete','application::hours.hours',NULL,'[]',2,'2020-10-26 18:17:43','2020-10-26 18:17:43'),(239,'plugins::content-manager.explorer.create','application::events.events','[\"date\",\"title\",\"description\",\"poster\"]','[]',1,'2020-10-26 19:41:04','2020-10-26 19:41:04'),(240,'plugins::content-manager.explorer.read','application::events.events','[\"date\",\"title\",\"description\",\"poster\"]','[]',1,'2020-10-26 19:41:04','2020-10-26 19:41:04'),(241,'plugins::content-manager.explorer.update','application::events.events','[\"date\",\"title\",\"description\",\"poster\"]','[]',1,'2020-10-26 19:41:04','2020-10-26 19:41:04'),(382,'plugins::content-manager.explorer.create','application::menu01-title.menu01-title','[\"name\",\"hours\",\"enabled\"]','[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(384,'plugins::content-manager.explorer.create','application::menu02-title.menu02-title','[\"name\",\"hours\",\"enabled\"]','[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(386,'plugins::content-manager.explorer.create','application::menu03-title.menu03-title','[\"name\",\"hours\",\"enabled\"]','[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(387,'plugins::content-manager.explorer.create','application::menu03.menu03','[\"category\",\"name\",\"price\",\"description\"]','[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(388,'plugins::content-manager.explorer.create','application::menu04-title.menu04-title','[\"name\",\"hours\",\"enabled\"]','[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(390,'plugins::content-manager.explorer.create','application::menu05-title.menu05-title','[\"name\",\"hours\",\"enabled\"]','[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(392,'plugins::content-manager.explorer.create','application::menu06-title.menu06-title','[\"name\",\"hours\",\"enabled\"]','[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(394,'plugins::content-manager.explorer.read','application::menu01-title.menu01-title','[\"name\",\"hours\",\"enabled\"]','[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(396,'plugins::content-manager.explorer.read','application::menu02-title.menu02-title','[\"name\",\"hours\",\"enabled\"]','[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(398,'plugins::content-manager.explorer.read','application::menu03-title.menu03-title','[\"name\",\"hours\",\"enabled\"]','[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(399,'plugins::content-manager.explorer.read','application::menu03.menu03','[\"category\",\"name\",\"price\",\"description\"]','[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(400,'plugins::content-manager.explorer.read','application::menu04-title.menu04-title','[\"name\",\"hours\",\"enabled\"]','[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(402,'plugins::content-manager.explorer.read','application::menu05-title.menu05-title','[\"name\",\"hours\",\"enabled\"]','[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(404,'plugins::content-manager.explorer.read','application::menu06-title.menu06-title','[\"name\",\"hours\",\"enabled\"]','[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(406,'plugins::content-manager.explorer.update','application::menu01-title.menu01-title','[\"name\",\"hours\",\"enabled\"]','[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(408,'plugins::content-manager.explorer.update','application::menu02-title.menu02-title','[\"name\",\"hours\",\"enabled\"]','[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(410,'plugins::content-manager.explorer.update','application::menu03-title.menu03-title','[\"name\",\"hours\",\"enabled\"]','[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(411,'plugins::content-manager.explorer.update','application::menu03.menu03','[\"category\",\"name\",\"price\",\"description\"]','[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(412,'plugins::content-manager.explorer.update','application::menu04-title.menu04-title','[\"name\",\"hours\",\"enabled\"]','[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(414,'plugins::content-manager.explorer.update','application::menu05-title.menu05-title','[\"name\",\"hours\",\"enabled\"]','[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(416,'plugins::content-manager.explorer.update','application::menu06-title.menu06-title','[\"name\",\"hours\",\"enabled\"]','[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(418,'plugins::content-manager.explorer.delete','application::menu01-title.menu01-title',NULL,'[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(419,'plugins::content-manager.explorer.delete','application::menu01.menu01',NULL,'[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(420,'plugins::content-manager.explorer.delete','application::menu02-title.menu02-title',NULL,'[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(421,'plugins::content-manager.explorer.delete','application::menu02.menu02',NULL,'[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(422,'plugins::content-manager.explorer.delete','application::menu03-title.menu03-title',NULL,'[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(423,'plugins::content-manager.explorer.delete','application::menu03.menu03',NULL,'[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(424,'plugins::content-manager.explorer.delete','application::menu04-title.menu04-title',NULL,'[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(425,'plugins::content-manager.explorer.delete','application::menu04.menu04',NULL,'[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(426,'plugins::content-manager.explorer.delete','application::menu05-title.menu05-title',NULL,'[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(427,'plugins::content-manager.explorer.delete','application::menu05.menu05',NULL,'[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(428,'plugins::content-manager.explorer.delete','application::menu06-title.menu06-title',NULL,'[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(429,'plugins::content-manager.explorer.delete','application::menu06.menu06',NULL,'[]',1,'2020-11-29 06:45:21','2020-11-29 06:45:21'),(441,'plugins::content-manager.explorer.delete','application::menu-cat.menu-cat',NULL,'[]',1,'2020-11-29 06:51:07','2020-11-29 06:51:07'),(443,'plugins::content-manager.explorer.create','application::menu06.menu06','[\"name\",\"category\",\"description\",\"price\",\"omit\",\"menu_cat\"]','[]',1,'2020-11-29 06:53:30','2020-11-29 06:53:30'),(445,'plugins::content-manager.explorer.read','application::menu06.menu06','[\"name\",\"category\",\"description\",\"price\",\"omit\",\"menu_cat\"]','[]',1,'2020-11-29 06:53:30','2020-11-29 06:53:30'),(447,'plugins::content-manager.explorer.update','application::menu06.menu06','[\"name\",\"category\",\"description\",\"price\",\"omit\",\"menu_cat\"]','[]',1,'2020-11-29 06:53:30','2020-11-29 06:53:30'),(449,'plugins::content-manager.explorer.create','application::menu05.menu05','[\"name\",\"description\",\"category\",\"price\",\"omit\",\"menu_cat\"]','[]',1,'2020-11-29 06:54:46','2020-11-29 06:54:46'),(451,'plugins::content-manager.explorer.read','application::menu05.menu05','[\"name\",\"description\",\"category\",\"price\",\"omit\",\"menu_cat\"]','[]',1,'2020-11-29 06:54:46','2020-11-29 06:54:46'),(453,'plugins::content-manager.explorer.update','application::menu05.menu05','[\"name\",\"description\",\"category\",\"price\",\"omit\",\"menu_cat\"]','[]',1,'2020-11-29 06:54:46','2020-11-29 06:54:46'),(455,'plugins::content-manager.explorer.create','application::menu04.menu04','[\"name\",\"description\",\"price\",\"enabled\",\"menu_cat\"]','[]',1,'2020-11-29 06:56:23','2020-11-29 06:56:23'),(457,'plugins::content-manager.explorer.read','application::menu04.menu04','[\"name\",\"description\",\"price\",\"enabled\",\"menu_cat\"]','[]',1,'2020-11-29 06:56:23','2020-11-29 06:56:23'),(459,'plugins::content-manager.explorer.update','application::menu04.menu04','[\"name\",\"description\",\"price\",\"enabled\",\"menu_cat\"]','[]',1,'2020-11-29 06:56:23','2020-11-29 06:56:23'),(461,'plugins::content-manager.explorer.create','application::menu01.menu01','[\"category\",\"name\",\"price\",\"description\",\"omit\",\"menu_cat\"]','[]',1,'2020-11-29 06:57:08','2020-11-29 06:57:08'),(463,'plugins::content-manager.explorer.read','application::menu01.menu01','[\"category\",\"name\",\"price\",\"description\",\"omit\",\"menu_cat\"]','[]',1,'2020-11-29 06:57:08','2020-11-29 06:57:08'),(465,'plugins::content-manager.explorer.update','application::menu01.menu01','[\"category\",\"name\",\"price\",\"description\",\"omit\",\"menu_cat\"]','[]',1,'2020-11-29 06:57:08','2020-11-29 06:57:08'),(466,'plugins::content-manager.explorer.create','application::menu-cat.menu-cat','[\"name\",\"menu06\",\"menu05\",\"menu04\",\"menu02\"]','[]',1,'2020-11-29 06:57:53','2020-11-29 13:40:24'),(467,'plugins::content-manager.explorer.create','application::menu02.menu02','[\"name\",\"description\",\"price\",\"category\",\"omit\"]','[]',1,'2020-11-29 06:57:53','2020-11-29 13:40:24'),(468,'plugins::content-manager.explorer.read','application::menu-cat.menu-cat','[\"name\",\"menu06\",\"menu05\",\"menu04\",\"menu02\"]','[]',1,'2020-11-29 06:57:53','2020-11-29 13:40:24'),(469,'plugins::content-manager.explorer.read','application::menu02.menu02','[\"name\",\"description\",\"price\",\"category\",\"omit\"]','[]',1,'2020-11-29 06:57:53','2020-11-29 13:40:24'),(470,'plugins::content-manager.explorer.update','application::menu-cat.menu-cat','[\"name\",\"menu06\",\"menu05\",\"menu04\",\"menu02\"]','[]',1,'2020-11-29 06:57:53','2020-11-29 13:40:24'),(471,'plugins::content-manager.explorer.update','application::menu02.menu02','[\"name\",\"description\",\"price\",\"category\",\"omit\"]','[]',1,'2020-11-29 06:57:53','2020-11-29 13:40:24');
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
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_role_name_unique` (`name`),
  UNIQUE KEY `strapi_role_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_role`
--

LOCK TABLES `strapi_role` WRITE;
/*!40000 ALTER TABLE `strapi_role` DISABLE KEYS */;
INSERT INTO `strapi_role` VALUES (1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2020-10-04 07:36:39','2020-10-04 07:36:39'),(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2020-10-04 07:36:39','2020-10-04 07:36:39'),(3,'Author','strapi-author','Authors can manage and publish the content they created.','2020-10-04 07:36:39','2020-10-04 07:36:39');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_users_roles`
--

LOCK TABLES `strapi_users_roles` WRITE;
/*!40000 ALTER TABLE `strapi_users_roles` DISABLE KEYS */;
INSERT INTO `strapi_users_roles` VALUES (1,1,1),(2,2,2);
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
  `url` longtext DEFAULT NULL,
  `headers` longtext DEFAULT NULL,
  `events` longtext DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_webhooks`
--

LOCK TABLES `strapi_webhooks` WRITE;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;
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
  `formats` longtext DEFAULT NULL,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file`
--

LOCK TABLES `upload_file` WRITE;
/*!40000 ALTER TABLE `upload_file` DISABLE KEYS */;
INSERT INTO `upload_file` VALUES (3,'smallaxe.png','','',225,225,'{\"thumbnail\":{\"name\":\"thumbnail_smallaxe.png\",\"hash\":\"thumbnail_smallaxe_670581d5cc\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":156,\"height\":156,\"size\":12.02,\"path\":null,\"url\":\"/uploads/thumbnail_smallaxe_670581d5cc.png\"}}','smallaxe_670581d5cc','.png','image/png',8.41,'/uploads/smallaxe_670581d5cc.png',NULL,'local',NULL,1,1,'2020-10-13 03:36:19','2020-10-13 03:36:19'),(4,'smallaxe_new_crop.jpg','','',4032,2356,'{\"thumbnail\":{\"name\":\"thumbnail_smallaxe_new_crop.jpg\",\"hash\":\"thumbnail_smallaxe_new_crop_07338b3352\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":143,\"size\":10.69,\"path\":null,\"url\":\"/uploads/thumbnail_smallaxe_new_crop_07338b3352.jpg\"},\"large\":{\"name\":\"large_smallaxe_new_crop.jpg\",\"hash\":\"large_smallaxe_new_crop_07338b3352\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":584,\"size\":107.16,\"path\":null,\"url\":\"/uploads/large_smallaxe_new_crop_07338b3352.jpg\"},\"medium\":{\"name\":\"medium_smallaxe_new_crop.jpg\",\"hash\":\"medium_smallaxe_new_crop_07338b3352\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":438,\"size\":68.15,\"path\":null,\"url\":\"/uploads/medium_smallaxe_new_crop_07338b3352.jpg\"},\"small\":{\"name\":\"small_smallaxe_new_crop.jpg\",\"hash\":\"small_smallaxe_new_crop_07338b3352\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":292,\"size\":34.7,\"path\":null,\"url\":\"/uploads/small_smallaxe_new_crop_07338b3352.jpg\"}}','smallaxe_new_crop_07338b3352','.jpg','image/jpeg',838.24,'/uploads/smallaxe_new_crop_07338b3352.jpg',NULL,'local',NULL,2,2,'2020-10-21 16:18:05','2020-10-21 16:18:05'),(5,'Small Axe Halloween-2020.jpg','','',1436,1100,'{\"thumbnail\":{\"name\":\"thumbnail_Small Axe Halloween-2020.jpg\",\"hash\":\"thumbnail_Small_Axe_Halloween_2020_1d4e8f2373\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":204,\"height\":156,\"size\":11.08,\"path\":null,\"url\":\"/uploads/thumbnail_Small_Axe_Halloween_2020_1d4e8f2373.jpg\"},\"large\":{\"name\":\"large_Small Axe Halloween-2020.jpg\",\"hash\":\"large_Small_Axe_Halloween_2020_1d4e8f2373\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":766,\"size\":126.37,\"path\":null,\"url\":\"/uploads/large_Small_Axe_Halloween_2020_1d4e8f2373.jpg\"},\"medium\":{\"name\":\"medium_Small Axe Halloween-2020.jpg\",\"hash\":\"medium_Small_Axe_Halloween_2020_1d4e8f2373\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":575,\"size\":83.12,\"path\":null,\"url\":\"/uploads/medium_Small_Axe_Halloween_2020_1d4e8f2373.jpg\"},\"small\":{\"name\":\"small_Small Axe Halloween-2020.jpg\",\"hash\":\"small_Small_Axe_Halloween_2020_1d4e8f2373\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":383,\"size\":45.89,\"path\":null,\"url\":\"/uploads/small_Small_Axe_Halloween_2020_1d4e8f2373.jpg\"}}','Small_Axe_Halloween_2020_1d4e8f2373','.jpg','image/jpeg',131.91,'/uploads/Small_Axe_Halloween_2020_1d4e8f2373.jpg',NULL,'local',NULL,1,1,'2020-10-26 19:42:34','2020-10-26 19:42:34'),(6,'IMG-0760.jpg','','',1125,1141,'{\"thumbnail\":{\"name\":\"thumbnail_IMG-0760.jpg\",\"hash\":\"thumbnail_IMG_0760_3997949979\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":154,\"height\":156,\"size\":7.2,\"path\":null,\"url\":\"/uploads/thumbnail_IMG_0760_3997949979.jpg\"},\"large\":{\"name\":\"large_IMG-0760.jpg\",\"hash\":\"large_IMG_0760_3997949979\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":986,\"height\":1000,\"size\":86.1,\"path\":null,\"url\":\"/uploads/large_IMG_0760_3997949979.jpg\"},\"medium\":{\"name\":\"medium_IMG-0760.jpg\",\"hash\":\"medium_IMG_0760_3997949979\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":739,\"height\":750,\"size\":60.84,\"path\":null,\"url\":\"/uploads/medium_IMG_0760_3997949979.jpg\"},\"small\":{\"name\":\"small_IMG-0760.jpg\",\"hash\":\"small_IMG_0760_3997949979\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":493,\"height\":500,\"size\":36.58,\"path\":null,\"url\":\"/uploads/small_IMG_0760_3997949979.jpg\"}}','IMG_0760_3997949979','.jpg','image/jpeg',100.63,'/uploads/IMG_0760_3997949979.jpg',NULL,'local',NULL,1,1,'2020-10-26 19:45:11','2020-10-26 19:45:11'),(7,'IMG-0758.jpg','','',1125,1123,'{\"thumbnail\":{\"name\":\"thumbnail_IMG-0758.jpg\",\"hash\":\"thumbnail_IMG_0758_3ff3fa8a46\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":156,\"height\":156,\"size\":7.59,\"path\":null,\"url\":\"/uploads/thumbnail_IMG_0758_3ff3fa8a46.jpg\"},\"large\":{\"name\":\"large_IMG-0758.jpg\",\"hash\":\"large_IMG_0758_3ff3fa8a46\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":998,\"size\":94.18,\"path\":null,\"url\":\"/uploads/large_IMG_0758_3ff3fa8a46.jpg\"},\"medium\":{\"name\":\"medium_IMG-0758.jpg\",\"hash\":\"medium_IMG_0758_3ff3fa8a46\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":749,\"size\":67.23,\"path\":null,\"url\":\"/uploads/medium_IMG_0758_3ff3fa8a46.jpg\"},\"small\":{\"name\":\"small_IMG-0758.jpg\",\"hash\":\"small_IMG_0758_3ff3fa8a46\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":499,\"size\":39.44,\"path\":null,\"url\":\"/uploads/small_IMG_0758_3ff3fa8a46.jpg\"}}','IMG_0758_3ff3fa8a46','.jpg','image/jpeg',109.38,'/uploads/IMG_0758_3ff3fa8a46.jpg',NULL,'local',NULL,1,1,'2020-10-26 19:45:12','2020-10-26 19:45:12');
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
  `related_type` longtext DEFAULT NULL,
  `field` longtext DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file_morph`
--

LOCK TABLES `upload_file_morph` WRITE;
/*!40000 ALTER TABLE `upload_file_morph` DISABLE KEYS */;
INSERT INTO `upload_file_morph` VALUES (9,7,4,'photos','image',1),(13,6,6,'photos','image',1),(14,5,7,'photos','image',1),(15,4,8,'photos','image',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=665 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_permission`
--

LOCK TABLES `users-permissions_permission` WRITE;
/*!40000 ALTER TABLE `users-permissions_permission` DISABLE KEYS */;
INSERT INTO `users-permissions_permission` VALUES (1,'content-manager','components','findcomponent',0,'',1,NULL,NULL),(2,'content-manager','components','findcomponent',0,'',2,NULL,NULL),(3,'content-manager','components','listcomponents',0,'',1,NULL,NULL),(4,'content-manager','components','listcomponents',0,'',2,NULL,NULL),(5,'content-manager','components','updatecomponent',0,'',1,NULL,NULL),(6,'content-manager','components','updatecomponent',0,'',2,NULL,NULL),(7,'content-manager','contentmanager','checkuidavailability',0,'',1,NULL,NULL),(8,'content-manager','contentmanager','checkuidavailability',0,'',2,NULL,NULL),(9,'content-manager','contentmanager','count',0,'',1,NULL,NULL),(10,'content-manager','contentmanager','count',0,'',2,NULL,NULL),(11,'content-manager','contentmanager','create',0,'',1,NULL,NULL),(12,'content-manager','contentmanager','create',0,'',2,NULL,NULL),(13,'content-manager','contentmanager','delete',0,'',1,NULL,NULL),(14,'content-manager','contentmanager','delete',0,'',2,NULL,NULL),(15,'content-manager','contentmanager','deletemany',0,'',1,NULL,NULL),(16,'content-manager','contentmanager','deletemany',0,'',2,NULL,NULL),(17,'content-manager','contentmanager','find',0,'',1,NULL,NULL),(18,'content-manager','contentmanager','find',0,'',2,NULL,NULL),(19,'content-manager','contentmanager','findone',0,'',1,NULL,NULL),(20,'content-manager','contentmanager','findone',0,'',2,NULL,NULL),(21,'content-manager','contentmanager','findrelationlist',0,'',1,NULL,NULL),(22,'content-manager','contentmanager','findrelationlist',0,'',2,NULL,NULL),(23,'content-manager','contentmanager','generateuid',0,'',1,NULL,NULL),(24,'content-manager','contentmanager','generateuid',0,'',2,NULL,NULL),(25,'content-manager','contentmanager','update',0,'',1,NULL,NULL),(26,'content-manager','contentmanager','update',0,'',2,NULL,NULL),(27,'content-manager','contenttypes','findcontenttype',0,'',1,NULL,NULL),(28,'content-manager','contenttypes','findcontenttype',0,'',2,NULL,NULL),(29,'content-manager','contenttypes','listcontenttypes',0,'',1,NULL,NULL),(30,'content-manager','contenttypes','listcontenttypes',0,'',2,NULL,NULL),(31,'content-manager','contenttypes','updatecontenttype',0,'',1,NULL,NULL),(32,'content-manager','contenttypes','updatecontenttype',0,'',2,NULL,NULL),(33,'content-type-builder','builder','getreservednames',0,'',1,NULL,NULL),(34,'content-type-builder','builder','getreservednames',0,'',2,NULL,NULL),(35,'content-type-builder','componentcategories','deletecategory',0,'',1,NULL,NULL),(36,'content-type-builder','componentcategories','deletecategory',0,'',2,NULL,NULL),(37,'content-type-builder','componentcategories','editcategory',0,'',2,NULL,NULL),(38,'content-type-builder','components','createcomponent',0,'',1,NULL,NULL),(39,'content-type-builder','componentcategories','editcategory',0,'',1,NULL,NULL),(40,'content-type-builder','components','createcomponent',0,'',2,NULL,NULL),(41,'content-type-builder','components','deletecomponent',0,'',1,NULL,NULL),(42,'content-type-builder','components','deletecomponent',0,'',2,NULL,NULL),(43,'content-type-builder','components','getcomponent',0,'',1,NULL,NULL),(44,'content-type-builder','components','getcomponent',0,'',2,NULL,NULL),(45,'content-type-builder','components','getcomponents',0,'',1,NULL,NULL),(46,'content-type-builder','components','getcomponents',0,'',2,NULL,NULL),(47,'content-type-builder','components','updatecomponent',0,'',1,NULL,NULL),(48,'content-type-builder','components','updatecomponent',0,'',2,NULL,NULL),(49,'content-type-builder','connections','getconnections',0,'',1,NULL,NULL),(50,'content-type-builder','connections','getconnections',0,'',2,NULL,NULL),(51,'content-type-builder','contenttypes','createcontenttype',0,'',1,NULL,NULL),(52,'content-type-builder','contenttypes','createcontenttype',0,'',2,NULL,NULL),(53,'content-type-builder','contenttypes','deletecontenttype',0,'',1,NULL,NULL),(54,'content-type-builder','contenttypes','deletecontenttype',0,'',2,NULL,NULL),(55,'content-type-builder','contenttypes','getcontenttype',0,'',1,NULL,NULL),(56,'content-type-builder','contenttypes','getcontenttype',0,'',2,NULL,NULL),(57,'content-type-builder','contenttypes','getcontenttypes',0,'',1,NULL,NULL),(58,'content-type-builder','contenttypes','getcontenttypes',0,'',2,NULL,NULL),(59,'content-type-builder','contenttypes','updatecontenttype',0,'',1,NULL,NULL),(60,'content-type-builder','contenttypes','updatecontenttype',0,'',2,NULL,NULL),(61,'email','email','send',0,'',1,NULL,NULL),(62,'email','email','send',0,'',2,NULL,NULL),(63,'upload','proxy','uploadproxy',0,'',1,NULL,NULL),(64,'upload','proxy','uploadproxy',0,'',2,NULL,NULL),(65,'upload','upload','count',0,'',1,NULL,NULL),(66,'upload','upload','count',0,'',2,NULL,NULL),(67,'upload','upload','destroy',0,'',1,NULL,NULL),(68,'upload','upload','destroy',0,'',2,NULL,NULL),(69,'upload','upload','find',0,'',1,NULL,NULL),(70,'upload','upload','find',0,'',2,NULL,NULL),(71,'upload','upload','findone',0,'',1,NULL,NULL),(72,'upload','upload','findone',0,'',2,NULL,NULL),(73,'upload','upload','getsettings',0,'',1,NULL,NULL),(74,'upload','upload','getsettings',0,'',2,NULL,NULL),(75,'upload','upload','search',0,'',1,NULL,NULL),(76,'upload','upload','search',0,'',2,NULL,NULL),(77,'upload','upload','updatesettings',0,'',1,NULL,NULL),(78,'upload','upload','updatesettings',0,'',2,NULL,NULL),(79,'upload','upload','upload',0,'',1,NULL,NULL),(80,'upload','upload','upload',0,'',2,NULL,NULL),(81,'users-permissions','auth','callback',0,'',1,NULL,NULL),(82,'users-permissions','auth','callback',1,'',2,NULL,NULL),(83,'users-permissions','auth','connect',1,'',1,NULL,NULL),(84,'users-permissions','auth','connect',1,'',2,NULL,NULL),(85,'users-permissions','auth','emailconfirmation',0,'',1,NULL,NULL),(86,'users-permissions','auth','emailconfirmation',1,'',2,NULL,NULL),(87,'users-permissions','auth','forgotpassword',0,'',1,NULL,NULL),(88,'users-permissions','auth','forgotpassword',1,'',2,NULL,NULL),(89,'users-permissions','auth','register',0,'',1,NULL,NULL),(90,'users-permissions','auth','register',1,'',2,NULL,NULL),(91,'users-permissions','auth','resetpassword',0,'',1,NULL,NULL),(92,'users-permissions','auth','resetpassword',1,'',2,NULL,NULL),(93,'users-permissions','auth','sendemailconfirmation',0,'',1,NULL,NULL),(94,'users-permissions','auth','sendemailconfirmation',0,'',2,NULL,NULL),(95,'users-permissions','user','count',0,'',1,NULL,NULL),(96,'users-permissions','user','count',0,'',2,NULL,NULL),(97,'users-permissions','user','create',0,'',1,NULL,NULL),(98,'users-permissions','user','create',0,'',2,NULL,NULL),(99,'users-permissions','user','destroy',0,'',1,NULL,NULL),(100,'users-permissions','user','destroy',0,'',2,NULL,NULL),(101,'users-permissions','user','destroyall',0,'',1,NULL,NULL),(102,'users-permissions','user','destroyall',0,'',2,NULL,NULL),(103,'users-permissions','user','find',0,'',1,NULL,NULL),(104,'users-permissions','user','find',0,'',2,NULL,NULL),(105,'users-permissions','user','findone',0,'',1,NULL,NULL),(106,'users-permissions','user','findone',0,'',2,NULL,NULL),(107,'users-permissions','user','me',1,'',1,NULL,NULL),(108,'users-permissions','user','me',1,'',2,NULL,NULL),(109,'users-permissions','user','update',0,'',1,NULL,NULL),(110,'users-permissions','user','update',0,'',2,NULL,NULL),(111,'users-permissions','userspermissions','createrole',0,'',1,NULL,NULL),(112,'users-permissions','userspermissions','createrole',0,'',2,NULL,NULL),(113,'users-permissions','userspermissions','deleterole',0,'',1,NULL,NULL),(114,'users-permissions','userspermissions','deleterole',0,'',2,NULL,NULL),(115,'users-permissions','userspermissions','getadvancedsettings',0,'',1,NULL,NULL),(116,'users-permissions','userspermissions','getadvancedsettings',0,'',2,NULL,NULL),(117,'users-permissions','userspermissions','getemailtemplate',0,'',1,NULL,NULL),(118,'users-permissions','userspermissions','getemailtemplate',0,'',2,NULL,NULL),(119,'users-permissions','userspermissions','getpermissions',0,'',1,NULL,NULL),(120,'users-permissions','userspermissions','getpermissions',0,'',2,NULL,NULL),(121,'users-permissions','userspermissions','getpolicies',0,'',1,NULL,NULL),(122,'users-permissions','userspermissions','getpolicies',0,'',2,NULL,NULL),(123,'users-permissions','userspermissions','getproviders',0,'',1,NULL,NULL),(124,'users-permissions','userspermissions','getproviders',0,'',2,NULL,NULL),(125,'users-permissions','userspermissions','getrole',0,'',1,NULL,NULL),(126,'users-permissions','userspermissions','getrole',0,'',2,NULL,NULL),(127,'users-permissions','userspermissions','getroles',0,'',1,NULL,NULL),(128,'users-permissions','userspermissions','getroles',0,'',2,NULL,NULL),(129,'users-permissions','userspermissions','getroutes',0,'',1,NULL,NULL),(130,'users-permissions','userspermissions','getroutes',0,'',2,NULL,NULL),(131,'users-permissions','userspermissions','index',0,'',1,NULL,NULL),(132,'users-permissions','userspermissions','index',0,'',2,NULL,NULL),(133,'users-permissions','userspermissions','searchusers',0,'',1,NULL,NULL),(134,'users-permissions','userspermissions','searchusers',0,'',2,NULL,NULL),(135,'users-permissions','userspermissions','updateadvancedsettings',0,'',1,NULL,NULL),(136,'users-permissions','userspermissions','updateadvancedsettings',0,'',2,NULL,NULL),(137,'users-permissions','userspermissions','updateemailtemplate',0,'',1,NULL,NULL),(138,'users-permissions','userspermissions','updateemailtemplate',0,'',2,NULL,NULL),(139,'users-permissions','userspermissions','updateproviders',0,'',1,NULL,NULL),(140,'users-permissions','userspermissions','updateproviders',0,'',2,NULL,NULL),(141,'users-permissions','userspermissions','updaterole',0,'',1,NULL,NULL),(142,'users-permissions','userspermissions','updaterole',0,'',2,NULL,NULL),(149,'application','logo','delete',0,'',1,NULL,NULL),(150,'application','logo','delete',0,'',2,NULL,NULL),(151,'application','logo','find',0,'',1,NULL,NULL),(152,'application','logo','find',1,'',2,NULL,NULL),(153,'application','logo','update',0,'',1,NULL,NULL),(154,'application','logo','update',0,'',2,NULL,NULL),(155,'application','quotes','count',0,'',1,NULL,NULL),(156,'application','quotes','count',0,'',2,NULL,NULL),(157,'application','quotes','create',0,'',1,NULL,NULL),(158,'application','quotes','create',0,'',2,NULL,NULL),(159,'application','quotes','delete',0,'',1,NULL,NULL),(160,'application','quotes','delete',0,'',2,NULL,NULL),(161,'application','quotes','find',0,'',1,NULL,NULL),(162,'application','quotes','find',1,'',2,NULL,NULL),(163,'application','quotes','findone',0,'',1,NULL,NULL),(164,'application','quotes','findone',1,'',2,NULL,NULL),(165,'application','quotes','update',0,'',1,NULL,NULL),(166,'application','quotes','update',0,'',2,NULL,NULL),(275,'application','photos','count',0,'',1,NULL,NULL),(276,'application','photos','count',0,'',2,NULL,NULL),(277,'application','photos','create',0,'',1,NULL,NULL),(278,'application','photos','create',0,'',2,NULL,NULL),(279,'application','photos','delete',0,'',1,NULL,NULL),(280,'application','photos','delete',0,'',2,NULL,NULL),(281,'application','photos','find',0,'',1,NULL,NULL),(282,'application','photos','find',1,'',2,NULL,NULL),(283,'application','photos','findone',0,'',1,NULL,NULL),(284,'application','photos','findone',1,'',2,NULL,NULL),(285,'application','photos','update',0,'',1,NULL,NULL),(286,'application','photos','update',0,'',2,NULL,NULL),(287,'application','covid-comments','count',0,'',1,NULL,NULL),(288,'application','covid-comments','count',0,'',2,NULL,NULL),(289,'application','covid-comments','create',0,'',1,NULL,NULL),(290,'application','covid-comments','create',0,'',2,NULL,NULL),(291,'application','covid-comments','delete',0,'',1,NULL,NULL),(292,'application','covid-comments','delete',0,'',2,NULL,NULL),(293,'application','covid-comments','find',0,'',1,NULL,NULL),(294,'application','covid-comments','find',1,'',2,NULL,NULL),(295,'application','covid-comments','findone',0,'',1,NULL,NULL),(296,'application','covid-comments','findone',1,'',2,NULL,NULL),(297,'application','covid-comments','update',0,'',1,NULL,NULL),(298,'application','covid-comments','update',0,'',2,NULL,NULL),(299,'application','covid-links','count',0,'',1,NULL,NULL),(300,'application','covid-links','count',0,'',2,NULL,NULL),(301,'application','covid-links','create',0,'',1,NULL,NULL),(302,'application','covid-links','create',0,'',2,NULL,NULL),(303,'application','covid-links','delete',0,'',1,NULL,NULL),(304,'application','covid-links','delete',0,'',2,NULL,NULL),(305,'application','covid-links','find',0,'',1,NULL,NULL),(306,'application','covid-links','find',1,'',2,NULL,NULL),(307,'application','covid-links','findone',0,'',1,NULL,NULL),(308,'application','covid-links','findone',1,'',2,NULL,NULL),(309,'application','covid-links','update',0,'',1,NULL,NULL),(310,'application','covid-links','update',0,'',2,NULL,NULL),(329,'application','about','delete',0,'',1,NULL,NULL),(330,'application','about','delete',0,'',2,NULL,NULL),(331,'application','about','find',0,'',1,NULL,NULL),(332,'application','about','find',1,'',2,NULL,NULL),(333,'application','about','update',0,'',1,NULL,NULL),(334,'application','about','update',0,'',2,NULL,NULL),(335,'application','facts','count',0,'',1,NULL,NULL),(336,'application','facts','count',0,'',2,NULL,NULL),(337,'application','facts','create',0,'',1,NULL,NULL),(338,'application','facts','create',0,'',2,NULL,NULL),(339,'application','facts','delete',0,'',1,NULL,NULL),(340,'application','facts','delete',0,'',2,NULL,NULL),(341,'application','facts','find',0,'',1,NULL,NULL),(342,'application','facts','find',1,'',2,NULL,NULL),(343,'application','facts','findone',0,'',1,NULL,NULL),(344,'application','facts','findone',1,'',2,NULL,NULL),(345,'application','facts','update',0,'',1,NULL,NULL),(346,'application','facts','update',0,'',2,NULL,NULL),(371,'application','events','count',0,'',1,NULL,NULL),(372,'application','events','count',0,'',2,NULL,NULL),(373,'application','events','create',0,'',1,NULL,NULL),(374,'application','events','create',0,'',2,NULL,NULL),(375,'application','events','delete',0,'',1,NULL,NULL),(376,'application','events','delete',0,'',2,NULL,NULL),(377,'application','events','find',0,'',1,NULL,NULL),(378,'application','events','find',1,'',2,NULL,NULL),(379,'application','events','findone',0,'',1,NULL,NULL),(380,'application','events','findone',1,'',2,NULL,NULL),(381,'application','events','update',0,'',1,NULL,NULL),(382,'application','events','update',0,'',2,NULL,NULL),(419,'application','contact','delete',0,'',1,NULL,NULL),(420,'application','contact','delete',0,'',2,NULL,NULL),(421,'application','contact','find',0,'',1,NULL,NULL),(422,'application','contact','find',1,'',2,NULL,NULL),(423,'application','contact','update',0,'',1,NULL,NULL),(424,'application','contact','update',0,'',2,NULL,NULL),(425,'application','hours','delete',0,'',1,NULL,NULL),(426,'application','hours','delete',0,'',2,NULL,NULL),(427,'application','hours','find',0,'',1,NULL,NULL),(428,'application','hours','find',1,'',2,NULL,NULL),(429,'application','hours','update',0,'',1,NULL,NULL),(430,'application','hours','update',0,'',2,NULL,NULL),(533,'application','menu01-title','delete',0,'',1,NULL,NULL),(534,'application','menu01-title','delete',0,'',2,NULL,NULL),(535,'application','menu01-title','find',0,'',1,NULL,NULL),(536,'application','menu01-title','find',1,'',2,NULL,NULL),(537,'application','menu01-title','update',0,'',1,NULL,NULL),(538,'application','menu01-title','update',0,'',2,NULL,NULL),(539,'application','menu01','count',0,'',1,NULL,NULL),(540,'application','menu01','count',0,'',2,NULL,NULL),(541,'application','menu01','create',0,'',1,NULL,NULL),(542,'application','menu01','create',0,'',2,NULL,NULL),(543,'application','menu01','delete',0,'',1,NULL,NULL),(544,'application','menu01','delete',0,'',2,NULL,NULL),(545,'application','menu01','find',0,'',1,NULL,NULL),(546,'application','menu01','find',1,'',2,NULL,NULL),(547,'application','menu01','findone',0,'',1,NULL,NULL),(548,'application','menu01','findone',1,'',2,NULL,NULL),(549,'application','menu01','update',0,'',1,NULL,NULL),(550,'application','menu01','update',0,'',2,NULL,NULL),(551,'application','menu02-title','delete',0,'',1,NULL,NULL),(552,'application','menu02-title','delete',0,'',2,NULL,NULL),(553,'application','menu02-title','find',0,'',1,NULL,NULL),(554,'application','menu02-title','find',1,'',2,NULL,NULL),(555,'application','menu02-title','update',0,'',1,NULL,NULL),(556,'application','menu02-title','update',0,'',2,NULL,NULL),(557,'application','menu02','count',0,'',1,NULL,NULL),(558,'application','menu02','count',0,'',2,NULL,NULL),(559,'application','menu02','create',0,'',1,NULL,NULL),(560,'application','menu02','create',0,'',2,NULL,NULL),(561,'application','menu02','delete',0,'',1,NULL,NULL),(562,'application','menu02','delete',0,'',2,NULL,NULL),(563,'application','menu02','find',0,'',1,NULL,NULL),(564,'application','menu02','find',1,'',2,NULL,NULL),(565,'application','menu02','findone',0,'',1,NULL,NULL),(566,'application','menu02','findone',1,'',2,NULL,NULL),(567,'application','menu02','update',0,'',1,NULL,NULL),(568,'application','menu02','update',0,'',2,NULL,NULL),(569,'application','menu03-title','delete',0,'',1,NULL,NULL),(570,'application','menu03-title','delete',0,'',2,NULL,NULL),(571,'application','menu03-title','find',0,'',1,NULL,NULL),(572,'application','menu03-title','find',1,'',2,NULL,NULL),(573,'application','menu03-title','update',0,'',1,NULL,NULL),(574,'application','menu03-title','update',0,'',2,NULL,NULL),(575,'application','menu03','count',0,'',1,NULL,NULL),(576,'application','menu03','count',0,'',2,NULL,NULL),(577,'application','menu03','create',0,'',1,NULL,NULL),(578,'application','menu03','create',0,'',2,NULL,NULL),(579,'application','menu03','delete',0,'',1,NULL,NULL),(580,'application','menu03','delete',0,'',2,NULL,NULL),(581,'application','menu03','find',0,'',1,NULL,NULL),(582,'application','menu03','find',1,'',2,NULL,NULL),(583,'application','menu03','findone',0,'',1,NULL,NULL),(584,'application','menu03','findone',1,'',2,NULL,NULL),(585,'application','menu03','update',0,'',1,NULL,NULL),(586,'application','menu03','update',0,'',2,NULL,NULL),(587,'application','menu04-title','delete',0,'',1,NULL,NULL),(588,'application','menu04-title','delete',0,'',2,NULL,NULL),(589,'application','menu04-title','find',0,'',1,NULL,NULL),(590,'application','menu04-title','find',1,'',2,NULL,NULL),(591,'application','menu04-title','update',0,'',1,NULL,NULL),(592,'application','menu04-title','update',0,'',2,NULL,NULL),(593,'application','menu04','count',0,'',1,NULL,NULL),(594,'application','menu04','count',0,'',2,NULL,NULL),(595,'application','menu04','create',0,'',1,NULL,NULL),(596,'application','menu04','create',0,'',2,NULL,NULL),(597,'application','menu04','delete',0,'',1,NULL,NULL),(598,'application','menu04','delete',0,'',2,NULL,NULL),(599,'application','menu04','find',0,'',1,NULL,NULL),(600,'application','menu04','find',1,'',2,NULL,NULL),(601,'application','menu04','findone',0,'',1,NULL,NULL),(602,'application','menu04','findone',1,'',2,NULL,NULL),(603,'application','menu04','update',0,'',1,NULL,NULL),(604,'application','menu04','update',0,'',2,NULL,NULL),(605,'application','menu05-title','delete',0,'',1,NULL,NULL),(606,'application','menu05-title','delete',0,'',2,NULL,NULL),(607,'application','menu05-title','find',0,'',1,NULL,NULL),(608,'application','menu05-title','find',1,'',2,NULL,NULL),(609,'application','menu05-title','update',0,'',1,NULL,NULL),(610,'application','menu05-title','update',0,'',2,NULL,NULL),(611,'application','menu05','count',0,'',1,NULL,NULL),(612,'application','menu05','count',0,'',2,NULL,NULL),(613,'application','menu05','create',0,'',1,NULL,NULL),(614,'application','menu05','create',0,'',2,NULL,NULL),(615,'application','menu05','delete',0,'',1,NULL,NULL),(616,'application','menu05','delete',0,'',2,NULL,NULL),(617,'application','menu05','find',0,'',1,NULL,NULL),(618,'application','menu05','find',1,'',2,NULL,NULL),(619,'application','menu05','findone',0,'',1,NULL,NULL),(620,'application','menu05','findone',1,'',2,NULL,NULL),(621,'application','menu05','update',0,'',1,NULL,NULL),(622,'application','menu05','update',0,'',2,NULL,NULL),(623,'application','menu06-title','delete',0,'',1,NULL,NULL),(624,'application','menu06-title','delete',0,'',2,NULL,NULL),(625,'application','menu06-title','find',0,'',1,NULL,NULL),(626,'application','menu06-title','find',1,'',2,NULL,NULL),(627,'application','menu06-title','update',0,'',1,NULL,NULL),(628,'application','menu06-title','update',0,'',2,NULL,NULL),(629,'application','menu06','count',0,'',1,NULL,NULL),(630,'application','menu06','count',0,'',2,NULL,NULL),(631,'application','menu06','create',0,'',1,NULL,NULL),(632,'application','menu06','create',0,'',2,NULL,NULL),(633,'application','menu06','delete',0,'',1,NULL,NULL),(634,'application','menu06','delete',0,'',2,NULL,NULL),(635,'application','menu06','find',0,'',1,NULL,NULL),(636,'application','menu06','find',1,'',2,NULL,NULL),(637,'application','menu06','findone',0,'',1,NULL,NULL),(638,'application','menu06','findone',1,'',2,NULL,NULL),(639,'application','menu06','update',0,'',1,NULL,NULL),(640,'application','menu06','update',0,'',2,NULL,NULL),(653,'application','menu-cat','count',0,'',1,NULL,NULL),(654,'application','menu-cat','count',0,'',2,NULL,NULL),(655,'application','menu-cat','create',0,'',1,NULL,NULL),(656,'application','menu-cat','create',0,'',2,NULL,NULL),(657,'application','menu-cat','delete',0,'',1,NULL,NULL),(658,'application','menu-cat','delete',0,'',2,NULL,NULL),(659,'application','menu-cat','find',0,'',1,NULL,NULL),(660,'application','menu-cat','find',1,'',2,NULL,NULL),(661,'application','menu-cat','findone',0,'',1,NULL,NULL),(662,'application','menu-cat','findone',1,'',2,NULL,NULL),(663,'application','menu-cat','update',0,'',1,NULL,NULL),(664,'application','menu-cat','update',0,'',2,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
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
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_user_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_user`
--

LOCK TABLES `users-permissions_user` WRITE;
/*!40000 ALTER TABLE `users-permissions_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `users-permissions_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `welcomes`
--

DROP TABLE IF EXISTS `welcomes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `welcomes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `welcomes`
--

LOCK TABLES `welcomes` WRITE;
/*!40000 ALTER TABLE `welcomes` DISABLE KEYS */;
INSERT INTO `welcomes` VALUES (1,'Welcome to the new and improved Small Axe ROADHOUSE! Where cute, small town diner & east Van dive bar meet! We’ve got unique drinks, tasty food & friendly staff in a fun atmosphere.\n\nOur tables may be wobbly but you’ll be too after a few cocktails;) Kid friendly',1,1,'2020-10-18 05:59:07','2020-10-18 05:59:07');
/*!40000 ALTER TABLE `welcomes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-28 23:12:23
