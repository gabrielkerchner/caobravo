CREATE DATABASE  IF NOT EXISTS `caobravo` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `caobravo`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: caobravo
-- ------------------------------------------------------
-- Server version	5.7.28-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry');
INSERT INTO `auth_permission` VALUES (2,'Can change log entry',1,'change_logentry');
INSERT INTO `auth_permission` VALUES (3,'Can delete log entry',1,'delete_logentry');
INSERT INTO `auth_permission` VALUES (4,'Can add group',2,'add_group');
INSERT INTO `auth_permission` VALUES (5,'Can change group',2,'change_group');
INSERT INTO `auth_permission` VALUES (6,'Can delete group',2,'delete_group');
INSERT INTO `auth_permission` VALUES (7,'Can add permission',3,'add_permission');
INSERT INTO `auth_permission` VALUES (8,'Can change permission',3,'change_permission');
INSERT INTO `auth_permission` VALUES (9,'Can delete permission',3,'delete_permission');
INSERT INTO `auth_permission` VALUES (10,'Can add user',4,'add_user');
INSERT INTO `auth_permission` VALUES (11,'Can change user',4,'change_user');
INSERT INTO `auth_permission` VALUES (12,'Can delete user',4,'delete_user');
INSERT INTO `auth_permission` VALUES (13,'Can add content type',5,'add_contenttype');
INSERT INTO `auth_permission` VALUES (14,'Can change content type',5,'change_contenttype');
INSERT INTO `auth_permission` VALUES (15,'Can delete content type',5,'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16,'Can add session',6,'add_session');
INSERT INTO `auth_permission` VALUES (17,'Can change session',6,'change_session');
INSERT INTO `auth_permission` VALUES (18,'Can delete session',6,'delete_session');
INSERT INTO `auth_permission` VALUES (19,'Can add contact',7,'add_contact');
INSERT INTO `auth_permission` VALUES (20,'Can change contact',7,'change_contact');
INSERT INTO `auth_permission` VALUES (21,'Can delete contact',7,'delete_contact');
INSERT INTO `auth_permission` VALUES (22,'Can add post',8,'add_post');
INSERT INTO `auth_permission` VALUES (23,'Can change post',8,'change_post');
INSERT INTO `auth_permission` VALUES (24,'Can delete post',8,'delete_post');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$VF0LOyceL7sc$Qo6ljcp0X4Us6c4qawqPi3chwQDqeIv/q15QYmG12s4=','2019-12-05 17:37:51.008000',1,'caobravoadmin','','','',1,1,'2019-11-27 15:59:08.928000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-11-27 16:03:57.090000','1','Testando Post',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (2,'2019-11-27 16:53:20.088000','1','Testando Post',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (3,'2019-11-27 17:02:26.253000','1','Testando Post',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (4,'2019-11-27 17:58:43.792000','1','Testando Post',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (5,'2019-11-27 18:10:07.422000','2','Testando Post',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (6,'2019-11-27 18:10:33.340000','2','Testando Post',2,'[]',8,1);
INSERT INTO `django_admin_log` VALUES (7,'2019-11-27 20:16:35.907000','2','Testando Post',2,'[{\"changed\": {\"fields\": [\"descricao\"]}}]',8,1);
INSERT INTO `django_admin_log` VALUES (8,'2019-11-27 20:16:40.514000','2','Testando Post',2,'[]',8,1);
INSERT INTO `django_admin_log` VALUES (9,'2019-11-27 20:49:37.481000','3','Blog 2019',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (10,'2019-11-27 20:56:07.910000','3','Blog 2019',2,'[{\"changed\": {\"fields\": [\"imagem\"]}}]',8,1);
INSERT INTO `django_admin_log` VALUES (11,'2019-11-27 21:14:58.756000','2','Testando Post',2,'[{\"changed\": {\"fields\": [\"data_publicacao\"]}}]',8,1);
INSERT INTO `django_admin_log` VALUES (12,'2019-11-27 21:15:06.958000','3','Blog 2019',2,'[{\"changed\": {\"fields\": [\"data_publicacao\"]}}]',8,1);
INSERT INTO `django_admin_log` VALUES (13,'2019-11-27 21:19:27.404000','3','Blog 2019',2,'[]',8,1);
INSERT INTO `django_admin_log` VALUES (14,'2019-11-27 21:19:35.734000','3','Blog 2019',2,'[{\"changed\": {\"fields\": [\"data_publicacao\"]}}]',8,1);
INSERT INTO `django_admin_log` VALUES (15,'2019-11-28 13:14:42.558000','3','Blog 2019',2,'[{\"changed\": {\"fields\": [\"descricao\"]}}]',8,1);
INSERT INTO `django_admin_log` VALUES (16,'2019-11-28 13:21:52.981000','3','Blog 2019',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',8,1);
INSERT INTO `django_admin_log` VALUES (17,'2019-11-28 13:35:17.363000','3','Blog 2019',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',8,1);
INSERT INTO `django_admin_log` VALUES (18,'2019-11-28 13:39:56.579000','3','Blog 2019',2,'[]',8,1);
INSERT INTO `django_admin_log` VALUES (19,'2019-11-28 13:55:56.831000','2','Testando Post',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',8,1);
INSERT INTO `django_admin_log` VALUES (20,'2019-11-28 18:09:28.513000','5','Fe em Deus',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (21,'2019-11-28 21:22:04.016000','3','Blog 2019',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',8,1);
INSERT INTO `django_admin_log` VALUES (22,'2019-11-28 21:23:11.703000','6','post do post',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (23,'2019-12-03 16:03:33.950000','6','post do post',2,'[{\"changed\": {\"fields\": [\"imagem\"]}}]',8,1);
INSERT INTO `django_admin_log` VALUES (24,'2019-12-03 17:10:51.946000','5','Fé em Deus',2,'[{\"changed\": {\"fields\": [\"titulo\"]}}]',8,1);
INSERT INTO `django_admin_log` VALUES (25,'2019-12-05 17:38:17.106000','2','Testando Post',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',8,1);
INSERT INTO `django_admin_log` VALUES (26,'2019-12-05 17:38:53.681000','5','Fé em Deus',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',8,1);
INSERT INTO `django_admin_log` VALUES (27,'2019-12-05 17:39:40.357000','3','Blog 2019',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',8,1);
INSERT INTO `django_admin_log` VALUES (28,'2019-12-05 17:40:30.261000','3','Blog 2019',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',8,1);
INSERT INTO `django_admin_log` VALUES (29,'2019-12-05 17:41:47.395000','3','Blog 2019',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',8,1);
INSERT INTO `django_admin_log` VALUES (30,'2019-12-05 17:42:53.381000','3','Blog 2019',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',8,1);
INSERT INTO `django_admin_log` VALUES (31,'2019-12-05 17:44:12.418000','3','Blog 2019',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',8,1);
INSERT INTO `django_admin_log` VALUES (32,'2019-12-05 20:38:41.297000','6','post do post',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',8,1);
INSERT INTO `django_admin_log` VALUES (33,'2019-12-05 20:48:11.466000','7','Deusvult',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (34,'2019-12-05 20:49:11.847000','7','Deusvult',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry');
INSERT INTO `django_content_type` VALUES (2,'auth','group');
INSERT INTO `django_content_type` VALUES (3,'auth','permission');
INSERT INTO `django_content_type` VALUES (4,'auth','user');
INSERT INTO `django_content_type` VALUES (5,'contenttypes','contenttype');
INSERT INTO `django_content_type` VALUES (6,'sessions','session');
INSERT INTO `django_content_type` VALUES (7,'site_cao_bravo','contact');
INSERT INTO `django_content_type` VALUES (8,'site_cao_bravo','post');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-11-21 13:36:15.655000');
INSERT INTO `django_migrations` VALUES (2,'auth','0001_initial','2019-11-21 13:36:17.310000');
INSERT INTO `django_migrations` VALUES (3,'admin','0001_initial','2019-11-21 13:36:17.729000');
INSERT INTO `django_migrations` VALUES (4,'admin','0002_logentry_remove_auto_add','2019-11-21 13:36:17.750000');
INSERT INTO `django_migrations` VALUES (5,'contenttypes','0002_remove_content_type_name','2019-11-21 13:36:17.975000');
INSERT INTO `django_migrations` VALUES (6,'auth','0002_alter_permission_name_max_length','2019-11-21 13:36:18.002000');
INSERT INTO `django_migrations` VALUES (7,'auth','0003_alter_user_email_max_length','2019-11-21 13:36:18.038000');
INSERT INTO `django_migrations` VALUES (8,'auth','0004_alter_user_username_opts','2019-11-21 13:36:18.058000');
INSERT INTO `django_migrations` VALUES (9,'auth','0005_alter_user_last_login_null','2019-11-21 13:36:18.183000');
INSERT INTO `django_migrations` VALUES (10,'auth','0006_require_contenttypes_0002','2019-11-21 13:36:18.190000');
INSERT INTO `django_migrations` VALUES (11,'auth','0007_alter_validators_add_error_messages','2019-11-21 13:36:18.211000');
INSERT INTO `django_migrations` VALUES (12,'auth','0008_alter_user_username_max_length','2019-11-21 13:36:18.249000');
INSERT INTO `django_migrations` VALUES (13,'sessions','0001_initial','2019-11-21 13:36:18.340000');
INSERT INTO `django_migrations` VALUES (24,'site_cao_bravo','0001_initial','2019-11-27 16:44:27.824000');
INSERT INTO `django_migrations` VALUES (27,'site_cao_bravo','0002_auto_20191127_1401','2019-11-27 17:01:30.203000');
INSERT INTO `django_migrations` VALUES (28,'site_cao_bravo','0003_auto_20191127_1453','2019-11-27 17:53:10.062000');
INSERT INTO `django_migrations` VALUES (29,'site_cao_bravo','0004_auto_20191127_1813','2019-11-27 21:14:09.538000');
INSERT INTO `django_migrations` VALUES (30,'site_cao_bravo','0005_auto_20191127_1814','2019-11-27 21:14:47.096000');
INSERT INTO `django_migrations` VALUES (31,'site_cao_bravo','0006_auto_20191127_1816','2019-11-27 21:16:50.656000');
INSERT INTO `django_migrations` VALUES (32,'site_cao_bravo','0007_auto_20191128_0937','2019-11-28 12:37:46.602000');
INSERT INTO `django_migrations` VALUES (33,'site_cao_bravo','0008_auto_20191128_0937','2019-11-28 12:37:46.648000');
INSERT INTO `django_migrations` VALUES (34,'site_cao_bravo','0009_auto_20191128_1020','2019-11-28 13:20:32.729000');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `django_session` VALUES ('2jst9nms8v77l7arntnq082qmyps43et','NjdjYzVhYzFlYjg5MzBiM2E1NTg2ZWExZWVlN2FlODkwODZiYTdiMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ0ZmQ2NmY5NmQ4YTRjZjY0ODhmM2NlYmY3ZjQ3YWNkOGE2NWU2OGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-12-11 16:01:14.095000');
INSERT INTO `django_session` VALUES ('dvbkb4gxfcfi5e7hxof2fodqyypa3yy2','NjdjYzVhYzFlYjg5MzBiM2E1NTg2ZWExZWVlN2FlODkwODZiYTdiMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ0ZmQ2NmY5NmQ4YTRjZjY0ODhmM2NlYmY3ZjQ3YWNkOGE2NWU2OGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-12-19 17:37:51.019000');
INSERT INTO `django_session` VALUES ('t0z885xxa984bljaettdsif73uwbms8y','NjdjYzVhYzFlYjg5MzBiM2E1NTg2ZWExZWVlN2FlODkwODZiYTdiMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ0ZmQ2NmY5NmQ4YTRjZjY0ODhmM2NlYmY3ZjQ3YWNkOGE2NWU2OGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-12-17 15:52:44.390000');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_cao_bravo_post`
--

DROP TABLE IF EXISTS `site_cao_bravo_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_cao_bravo_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imagem` varchar(100) DEFAULT NULL,
  `titulo` varchar(256) NOT NULL,
  `data_publicacao` datetime(6) NOT NULL,
  `texto` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_cao_bravo_post`
--

LOCK TABLES `site_cao_bravo_post` WRITE;
/*!40000 ALTER TABLE `site_cao_bravo_post` DISABLE KEYS */;
INSERT INTO `site_cao_bravo_post` VALUES (2,'static/images/teFzcSk_7E4uE4E.jpg','Testando Post','2019-11-27 21:14:56.000000','<h4><strong>Lorem Ipsum</strong>&nbsp;&eacute; s<img alt=\"smiley\" src=\"http://localhost:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" style=\"height:23px; width:23px\" title=\"smiley\" /><img alt=\"sad\" src=\"http://localhost:8000/static/ckeditor/ckeditor/plugins/smiley/images/sad_smile.png\" style=\"height:23px; width:23px\" title=\"sad\" />etraset lan&ccedil;ou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editora&ccedil;&atilde;o eletr&ocirc;nica como Aldus PageMaker.</h4>\r\n\r\n<h4><strong>Porque n&oacute;s o usamos?</strong></h4>\r\n\r\n<p>&Eacute; um fato conhecido de todos que um leitor se distrair&aacute; com o conte&uacute;do de texto leg&iacute;vel de uma p&aacute;gina quando estiver examinando sua diagrama&ccedil;&atilde;o. A vantagem de usar Lorem Ipsum &eacute; que ele tem uma distribui&ccedil;&atilde;o normal de letras, ao contr&aacute;rio de &quot;Conte&uacute;do aqui, conte&uacute;do aqui&quot;, fazendo com qu<em><strong>e ele tenha uma apar&ecirc;ncia similar a de um texto leg&iacute;vel. Muitos softwares de publica&ccedil;&atilde;o e editores de p&aacute;ginas na internet agora usam Lorem Ipsum como texto-modelo padr&atilde;o, e uma r&aacute;pida busca por &#39;lorem ipsum&#39; mostra v&aacute;rios websites ainda em sua fase de constru&ccedil;&atilde;o. V&aacute;rias vers&otilde;</strong></em>es novas surgiram ao longo dos anos, eventualmente por acidente, e &agrave;s vezes de prop&oacute;sito (injetando humor, e coisas do g&ecirc;nero).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>De onde ele vem?</h2>\r\n\r\n<p>Ao contr&aacute;rio do que se acredita, Lorem Ipsum n&atilde;o &eacute; simplesmente um texto rand&ocirc;mico. Com mais de 2000 anos, suas ra&iacute;zes podem ser encontradas em uma obra de literatura latina cl&aacute;ssica datada de 45 AC. Richard McClintock, um professor de latim do Hampden-Sydney College na Virginia, pesquisou uma das mais obscuras palavras em latim, consectetur, oriunda de uma passagem de Lorem Ipsum, e, procurando por entre cita&ccedil;&otilde;es da palavra na literatura cl&aacute;ssica, descobriu a sua indubit&aacute;vel origem. Lorem Ipsum vem das se&ccedil;&otilde;es 1.10.32 e 1.10.33 do &quot;d</p>');
INSERT INTO `site_cao_bravo_post` VALUES (3,'static/images/camaleao-hamburgueria-hot-dog-paulista.jpg','Blog 2019','2019-11-27 18:15:05.000000','<div>Lorem ipsum habitant vel enim ut sagittis quisque lobortis malesuada, mollis proin pellentesque platea habitasse et facilisis sollicitudin. donec himenaeos dapibus porttitor hac molestie nunc pretium lacinia, diam metus est vel elementum adipiscing taciti curabitur condimentum, quam amet risus proin nisl vivamus ultrices. vel dictumst sodales taciti morbi lacus fermentum feugiat libero sem, at ipsum cubilia primis nibh purus egestas in platea, augue sapien bibendum aliquet blandit proin in ut. turpis inceptos ipsum dictum suspendisse sollicitudin hac tristique nibh fermentum molestie, vehicula commodo quis posuere fringilla dictum himenaeos rutrum pulvinar massa nunc, sociosqu in arcu etiam dapibus nam senectus commodo donec.&nbsp;</div>\r\n\r\n<div>&nbsp;&nbsp; &nbsp;Dui morbi quisque etiam a<span style=\"color:#27ae60\"><span style=\"background-color:#3498db\">dipiscing justo felis maecenas habitant </span><img alt=\"sad\" src=\"http://localhost:8000/static/ckeditor/ckeditor/plugins/smiley/images/sad_smile.png\" style=\"height:23px; width:23px\" title=\"sad\" /><span style=\"background-color:#3498db\">non vel quisque, turpis scelerisque auctor vulputate cursus potenti cubilia donec lacinia dolor, lobortis pretium fames facilisis potenti ad nec vestibulum imperdiet varius. dui ornare tristique pulvinar congue arcu eros, erat ullamcorper curabitur adipiscing porttitor e</span></span>get sem, nullam habitant habitasse quis donec. nulla habitant aliqam nunc vehicula et ut nulla vulputate tempor, congue ligula netus senectus tempus sit posuere nostra, est varius nostra consectetur lectus morbi risus sapien. ligula cras at urna nunc aliquam arcu sed suscipit, quisque aenean senectus imperdiet adipiscing vivamus mattis laoreet, aliquam euismod sociosqu vulputate tincidunt egestas suspendisse.&nbsp;</div>\r\n\r\n<div>&nbsp;&nbsp; &nbsp;Arcu nulla etiam ornare potenti leo nullam netus placerat, nunc eleifend adipiscing aptent risus donec fames, adipiscing eget turpis lacus curabitur phasellus dictumst. libero gravida laoreet convallis varius nec dictumst lacus, feugiat eleifend potenti cursus curabitur maecenas habitasse phasellus, laoreet curae egestas eu praesent mauris. vitae enim tortor libero ad placerat elementum netus porttitor aenean, placerat vehicula torquent molestie lobortis convallis massa torquent etiam, libero primis at per proin congue leo aptent. eget commodo nulla arcu donec congue facilisis viverra maecenas, orci vestibulum est mollis turpis porttitor molestie sociosqu, conubia sagittis vulputate eu condimentum eget conubia.&nbsp;</div>\r\n\r\n<div>&nbsp;&nbsp; &nbsp;Phasellus diam tellus etiam lobortis sem pellentesque, aenean tristique venenatis diam lectus phasellus nec, vitae tincidunt mollis metus sollicitudin. dictum tempus aptent lectus eleifend enim odio velit sodales viverra aptent nostra, ligula ut ultricies magna condimentum ut nec per iaculis phasellus nisi sed, imperdiet et sagittis ligula purus sit ornare at primis duis. a nisl habitasse posuere pulvinar blandit magna volutpat justo, interdum phasellus venenatis congue porttitor in nisi convallis feugiat, adipiscing consequat sodales urna nullam quam sollicitudin. nisi integer proin nec primis ornare iaculis nisl proin vitae pulvinar, inceptos iaculis a fermentum nostra eros duis ac rhoncus, tristique viverra tempus id netus nostra vehicula et quis.&nbsp;<br />\r\n&nbsp;</div>');
INSERT INTO `site_cao_bravo_post` VALUES (5,'static/images/Arena5-1152x759_qBuVBZg.jpg','Fé em Deus','2019-11-28 14:44:42.000000','<h3><em><img alt=\"wink\" src=\"http://localhost:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" style=\"height:23px; width:23px\" title=\"wink\" />Que ele &eacute; Justo <strong>irm&atilde;o&nbsp;</strong></em></h3>');
INSERT INTO `site_cao_bravo_post` VALUES (6,'static/images/0172.Figura1.png','post do post','2019-11-28 21:13:27.000000','<p><span style=\"font-size:22px\"><strong><span style=\"color:#3498db\">Lorem ipsum non cubilia semper ad duis nibh enim, porta dapibus ipsum</span></strong></span></p>\r\n\r\n<p><span style=\"color:#3498db\">ictumst scelerisque platea massa duis, eleifend libero risus dapibus placerat aenean sociosqu. imperdiet a aenean iaculis ante quisque sollicitudin tortor nisi conubia felis auctor, duis maecenas amet vitae curabitur orci arcu posuere etiam accumsan consequat, in sem pharetra eleifend imperdiet felis fermentum ultrices inceptos purus. metus per placerat suscipit tellus hac viverra est ad, purus sed id ullamcorper quisque egestas quis adipiscing, vehicula nostra eget egestas commodo venenatis vestibulum. augue imperdiet ad cras non phasellus ut lacinia non, condimentum nunc volutpat non praesent morbi neque felis, mauris id consequat bibendum ipsum fermentum non.&nbsp;</span></p>\r\n\r\n<p><span style=\"color:#3498db\">&nbsp;&nbsp; &nbsp;Porttitor condimentum senectus ullamcorper vitae felis semper nibh quis condimentum eu, mattis turpis aptent non curae turpis integer vel facilisis, eget vulputate tempor suspendisse semper lectus dui ante enim. euismod aptent erat purus inceptos viverra blandit aliquam vivamus quisque fringilla, venenatis volutpat eget leo semper quis nec bibendum risus. est fermentum nunc senectus justo egestas, sodales id quis vel, hac hendrerit condimentum etiam. gravida eget vel eu mattis ante lacinia in mi libero, ornare interdum in sollicitudin gravida erat arcu ullamcorper gravida, neque curabitur at integer eros ligula consectetur nunc, libero phasellus quisque aenean dapibus potenti etiam felis.&nbsp;</span></p>\r\n\r\n<p><span style=\"color:#3498db\">&nbsp;&nbsp; &nbsp;Et scelerisque nec porttitor lacinia massa orci sociosqu bibendum, nam himenaeos aptent rutrum phasellus ac mauris. nisi at molestie aenean habitasse curae nullam, aliquam posuere habitasse justo euismod aptent a, habitant torquent eros euismod dapibus. vitae sodales gravida sodales nunc at luctus lorem senectus, scelerisque cras et ad dui tempus pellentesque curabitur, purus netus pretium congue tincidunt et nec. condimentum volutpat torquent egestas taciti magna per vitae imperdiet eget, metus per elit aliquam varius fames velit diam cursus, ullamcorper diam et volutpat a integer tincidunt torquent. faucibus vehicula felis sed adipiscing nec pharetra porttitor per arcu aliquam et, aliquam viverra nam ante auctor per feugiat venenatis ultricies duis.&nbsp;</span></p>\r\n\r\n<p><span style=\"color:#3498db\">&nbsp;&nbsp; &nbsp;A tempor lectus ornare ante curabitur himenaeos leo scelerisque cubilia, donec diam leo integer ultricies torquent turpis tortor, nostra nam pulvinar mi per praesent enim pulvinar. curabitur etiam eu aenean vulputate vitae sagittis sociosqu purus orci tristique eget tempor vivamus elit, varius euismod conubia nulla amet dui primis ullamcorper erat elit rutrum turpis sollicitudin. nibh habitant ligula rhoncus sagittis pulvinar ornare lobortis erat tincidunt proin, morbi neque hac facilisis est in ut leo. lectus id iaculis sociosqu quam nam habitasse mollis, lacus quis turpis posuere dictum pellentesque dictum, faucibus euismod molestie platea viverra diam.&nbsp;</span></p>\r\n\r\n<p><span style=\"color:#3498db\">&nbsp;&nbsp; &nbsp;Facilisis sit egestas condimentum augue hac quis sodales enim, suscipit etiam bibendum pulvinar mi curabitur fringilla nunc, sociosqu suspendisse eu ultrices euismod tristique phasellus. libero neque tellus nibh luctus semper pulvinar pharetra praesent ante sociosqu donec ultrices mauris, donec dapibus risus per vel sagittis ligula ornare tortor arcu tellus massa. diam orci tempor vitae mollis luctus dictumst cubilia fames fringilla scelerisque, metus aenean elit ante molestie at leo aptent ultricies habitasse, amet hendrerit bibendum phasellus porttitor vitae malesuada lorem ornare. dui tempor senectus fringilla magna pellentesque nisi purus vel, dictumst cras aliquam ut etiam per.&nbsp;</span></p>');
INSERT INTO `site_cao_bravo_post` VALUES (7,'static/images/ZCS6GAWTOA7J7IS45E4AGZSNFQ.jpg','Deusvult','2019-12-05 20:40:42.000000','<p><span style=\"font-size:18px\"><strong>A tempor lectus ornare ante</strong> curabitur himenaeos leo scelerisque cubilia, donec diam leo integer ultricies torquent turpis tortor, nostra nam pulvinar mi per praesent enim pulvinar. curabitur etiam eu aenean vulputate vitae sagittis sociosqu purus orci tristique eget tempor vivamus elit, varius euismod conubia nulla amet dui primis ullamcorper erat elit rutrum turpis sollicitudin. nibh habitant ligula rhoncus sagittis pulvinar ornare lobortis erat tincidunt proin, morbi neque hac facilisis est in ut leo. lectus id iaculis sociosqu quam nam habitasse mollis, lacus quis turpis posuere dictum pellentesque dictum, faucibus euismod molestie platea viverra diam.&nbsp;</span></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">&nbsp;&nbsp; &nbsp;</span></strong></p>');
/*!40000 ALTER TABLE `site_cao_bravo_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'caobravo'
--

--
-- Dumping routines for database 'caobravo'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-18  9:27:33
