-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: delivery
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add order',7,'add_order'),(26,'Can change order',7,'change_order'),(27,'Can delete order',7,'delete_order'),(28,'Can view order',7,'view_order'),(29,'Can add product',8,'add_product'),(30,'Can change product',8,'change_product'),(31,'Can delete product',8,'delete_product'),(32,'Can view product',8,'view_product'),(33,'Can add customer',9,'add_customer'),(34,'Can change customer',9,'change_customer'),(35,'Can delete customer',9,'delete_customer'),(36,'Can view customer',9,'view_customer'),(37,'Can add subscription',10,'add_subscription'),(38,'Can change subscription',10,'change_subscription'),(39,'Can delete subscription',10,'delete_subscription'),(40,'Can view subscription',10,'view_subscription'),(41,'Can add counter_prefered',11,'add_counter_prefered'),(42,'Can change counter_prefered',11,'change_counter_prefered'),(43,'Can delete counter_prefered',11,'delete_counter_prefered'),(44,'Can view counter_prefered',11,'view_counter_prefered'),(45,'Can add counter prefered',11,'add_counterprefered'),(46,'Can change counter prefered',11,'change_counterprefered'),(47,'Can delete counter prefered',11,'delete_counterprefered'),(48,'Can view counter prefered',11,'view_counterprefered');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$F7vLNO4d7Yf7$jUygjWI1UTA6dTtxhLkQFBTYUgmW8nob5O83hQIy8Rc=','2019-02-26 11:01:21.316032',1,'quentin','','','quentin.dufrois@gmail.com',1,1,'2019-01-10 16:05:37.176354'),(2,'pbkdf2_sha256$120000$FAQDSAiGUvDt$Z3l6T43ceLE8cWrX5DDV4G5kko10GuROPD70StERyzQ=','2019-01-18 14:37:06.672651',1,'Hugo','','','',1,1,'2019-01-18 14:36:16.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter_prefered`
--

DROP TABLE IF EXISTS `counter_prefered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counter_prefered` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_date` datetime(6) NOT NULL,
  `counter_classic` int(11) DEFAULT NULL,
  `counter_veggie` int(11) DEFAULT NULL,
  `counter_family` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `comment` longtext,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `counter_prefered_product_id_0e2200fd_fk_product_product_id` (`product_id`),
  CONSTRAINT `counter_prefered_product_id_0e2200fd_fk_product_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter_prefered`
--

LOCK TABLES `counter_prefered` WRITE;
/*!40000 ALTER TABLE `counter_prefered` DISABLE KEYS */;
/*!40000 ALTER TABLE `counter_prefered` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (2,'Quentin','Dufrois','quentin.dufrois@gmail.com','123456'),(3,'Hugo','Martinet','toto@gmail.com','12345'),(4,'Damien','Mat','damien.mat@gmail.com','12345'),(5,'Martin','Morlot','martin.morlot@gmail.com','12345'),(6,'Jeremy','Rich','jeremy.rich@gmail.com','12345'),(7,'Florence','Schwartz','florence.schwartz@gmail.com','12345'),(8,'Wei','Sun','wei.sun@gmail.com','12345'),(9,'Gordon','Ramsay','fuckyou@gmail.com','fuckyouall');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-01-15 14:46:17.773562','1','classic',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',8,1),(2,'2019-01-15 15:34:49.679624','31','Vote of ',3,'',11,1),(3,'2019-01-15 15:35:40.988594','32','Vote of Henry',3,'',11,1),(4,'2019-01-15 15:49:24.445888','2','Dufrois Quentin',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',9,1),(5,'2019-01-15 15:59:38.579507','9','Ramsay Gordon',1,'[{\"added\": {}}]',9,1),(6,'2019-01-16 14:54:53.118784','1','Vote of qsfjqsdf',3,'',11,1),(7,'2019-01-16 14:57:25.898601','3','Vote of sdgdfgfdgfdgdfgdfg',3,'',11,1),(8,'2019-01-16 14:57:25.962702','2','Vote of dfgfdgd',3,'',11,1),(9,'2019-01-18 14:35:21.186817','10','Vote of Marion',3,'',11,1),(10,'2019-01-18 14:35:21.253286','9','Vote of dsf',3,'',11,1),(11,'2019-01-18 14:35:21.408808','8','Vote of dsff',3,'',11,1),(12,'2019-01-18 14:35:21.543547','7','Vote of sdfsdf',3,'',11,1),(13,'2019-01-18 14:35:21.577132','6','Vote of FDSFSD',3,'',11,1),(14,'2019-01-18 14:35:21.610916','5','Vote of DSFSD',3,'',11,1),(15,'2019-01-18 14:35:21.644442','4','Vote of sdgdsf',3,'',11,1),(16,'2019-01-18 14:36:16.095215','2','Hugo',1,'[{\"added\": {}}]',4,1),(17,'2019-01-18 14:36:43.701919','2','Hugo',2,'[{\"changed\": {\"fields\": [\"is_staff\", \"is_superuser\"]}}]',4,1),(18,'2019-01-18 14:38:06.211361','11','Vote of qsfsd',3,'',11,2),(19,'2019-02-26 10:46:53.771829','2','Vote of sdgsfdgdf',3,'',11,1),(20,'2019-02-26 10:46:53.936876','1','Vote of xxwvcv',3,'',11,1),(21,'2019-02-26 11:01:08.523392','1','quentin',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(11,'catalog','counterprefered'),(9,'catalog','customer'),(7,'catalog','order'),(8,'catalog','product'),(10,'catalog','subscription'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-01-10 16:04:27.453713'),(2,'auth','0001_initial','2019-01-10 16:04:46.793781'),(3,'admin','0001_initial','2019-01-10 16:04:51.270640'),(4,'admin','0002_logentry_remove_auto_add','2019-01-10 16:04:51.351178'),(5,'admin','0003_logentry_add_action_flag_choices','2019-01-10 16:04:51.443493'),(6,'contenttypes','0002_remove_content_type_name','2019-01-10 16:04:54.034866'),(7,'auth','0002_alter_permission_name_max_length','2019-01-10 16:04:54.301546'),(8,'auth','0003_alter_user_email_max_length','2019-01-10 16:04:54.616278'),(9,'auth','0004_alter_user_username_opts','2019-01-10 16:04:54.709154'),(10,'auth','0005_alter_user_last_login_null','2019-01-10 16:04:56.253444'),(11,'auth','0006_require_contenttypes_0002','2019-01-10 16:04:56.311347'),(12,'auth','0007_alter_validators_add_error_messages','2019-01-10 16:04:56.377248'),(13,'auth','0008_alter_user_username_max_length','2019-01-10 16:04:56.595261'),(14,'auth','0009_alter_user_last_name_max_length','2019-01-10 16:04:56.844004'),(15,'sessions','0001_initial','2019-01-10 16:04:58.197753'),(16,'catalog','0001_initial','2019-01-10 16:28:13.045241'),(17,'catalog','0002_auto_20190110_1632','2019-01-10 16:32:07.701067'),(18,'catalog','0003_auto_20190111_0942','2019-01-11 09:43:01.052850'),(19,'catalog','0004_product_description','2019-01-11 14:00:48.704848'),(20,'catalog','0005_counter_prefered','2019-01-14 10:12:42.399964'),(21,'catalog','0006_auto_20190114_1013','2019-01-14 10:13:16.401890'),(22,'catalog','0007_counter_prefered_product','2019-01-14 10:52:09.358070'),(23,'catalog','0008_auto_20190114_1540','2019-01-14 15:40:34.144902'),(24,'catalog','0009_counterprefered_comment','2019-01-15 08:20:45.672751'),(25,'catalog','0010_counterprefered_name','2019-01-15 09:37:04.325950');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('402x1o27bwh57t6pvtizcgygfoa881kt','ODMwMDY1OTgzMGUyNmE4Yjg1N2Q4NmM0OTYzN2I3ZWE2YTJiNjliNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNjA5OTk4YWM2YWU3Mzc3NTI0OTM3NDMwNTlmYWNjNzc3MmExZTAyIn0=','2019-02-01 14:37:06.774128'),('khfk2e59rrsz0334l482m2dgtdioz4ss','ZWZkM2M0MTU5Y2RmYWZlMTkwZGI5ZWFmMjI1NTY0ZjZmODVkZWY1NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMzljZTcxNzQ0NjUzM2RkMmUzZmVlNjA3MzBkYjgwMDM4MTJhZmI1In0=','2019-02-07 10:24:29.141649'),('ohpowbsfk0z5tlhqb5takihq4gr5rd9n','NTM1MTg5MDNhMTMwNDg2NDE0YjY3YzVhNDMzMTcyMTdhNmIwNDVkNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMmU1YjYyMmE5NzFkNWZlYTFhNTZiZDY0MDM1NzUwM2Y0ZmI4YTBhIn0=','2019-03-12 11:01:21.350051');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(5,2) NOT NULL,
  `order_date` datetime(6) NOT NULL,
  `subscription_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `catalog_order_subscription_id_d7b972aa_fk_catalog_s` (`subscription_id`),
  CONSTRAINT `catalog_order_subscription_id_d7b972aa_fk_catalog_s` FOREIGN KEY (`subscription_id`) REFERENCES `subscription` (`subscription_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (22,59.99,'2018-09-01 00:00:00.000000',11),(23,59.99,'2018-09-08 00:00:00.000000',11),(24,59.99,'2018-09-15 00:00:00.000000',11),(25,59.99,'2018-09-22 00:00:00.000000',11),(26,59.99,'2018-09-29 00:00:00.000000',11),(27,99.99,'2018-09-15 00:00:00.000000',12),(28,99.99,'2018-09-22 00:00:00.000000',12),(29,99.99,'2018-09-29 00:00:00.000000',12),(30,59.99,'2017-05-25 00:00:00.000000',13),(31,59.99,'2017-06-01 00:00:00.000000',13),(32,59.99,'2017-06-08 00:00:00.000000',13),(33,59.99,'2017-06-15 00:00:00.000000',13),(34,99.99,'2015-03-10 00:00:00.000000',14),(35,99.99,'2015-03-17 00:00:00.000000',14),(36,99.99,'2015-03-24 00:00:00.000000',14),(37,59.99,'2016-12-25 00:00:00.000000',15),(38,59.99,'2017-10-12 00:00:00.000000',15),(39,99.99,'2018-10-12 00:00:00.000000',16),(40,99.99,'2017-01-01 00:00:00.000000',18),(41,49.99,'2016-01-20 00:00:00.000000',19),(42,49.99,'2016-01-27 00:00:00.000000',19);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `nb_of_meals` int(11) NOT NULL,
  `nb_of_persons` int(11) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'classic',3,2,'The classical foodbox contains various ingredients to cook meals, from starters to desserts.\r\n All the product are local, and seasonal. Please take note that meat and other products of animal origin can\r\n be found in this box. If you are vegetarian, we suggest you to go for our \"veggie box\".'),(2,'veggie',4,2,'The veggie box is our first box containing only vegetarian food, but covering all your needs.\nThis box will include full meals, made from local and seasonal fruits, vegetables, seeds etc.'),(3,'family',4,4,'The family box is for a typical 4 persons (two adults and two kids) family. You will find\nseasonal and local products. This box is made to cook full meal, from starter to dessert.');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription` (
  `subscription_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(85) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`subscription_id`),
  KEY `catalog_subscription_customer_id_f3116c55_fk_catalog_c` (`customer_id`),
  KEY `catalog_subscription_product_id_d51b38cb_fk_catalog_p` (`product_id`),
  CONSTRAINT `catalog_subscription_customer_id_f3116c55_fk_catalog_c` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `catalog_subscription_product_id_d51b38cb_fk_catalog_p` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
INSERT INTO `subscription` VALUES (11,'ACTIVE','2018-01-01 00:00:00.000000',2,1),(12,'ACTIVE','2018-09-14 00:00:00.000000',3,2),(13,'ACTIVE','2017-05-25 00:00:00.000000',4,1),(14,'ACTIVE','2015-02-13 00:00:00.000000',5,2),(15,'ACTIVE','2016-12-20 00:00:00.000000',6,1),(16,'ACTIVE','2018-10-12 00:00:00.000000',7,2),(17,'ACTIVE','2019-01-11 09:07:39.000000',5,3),(18,'EN PAUSE','2017-01-01 00:00:00.000000',6,2),(19,'EN PAUSE','2016-01-01 00:00:00.000000',8,3);
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-26 12:04:41
