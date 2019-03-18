-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: feizhulegou
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.16.04.2

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add user m',7,'add_userm'),(20,'Can change user m',7,'change_userm'),(21,'Can delete user m',7,'delete_userm'),(22,'Can add picture',8,'add_picture'),(23,'Can change picture',8,'change_picture'),(24,'Can delete picture',8,'delete_picture'),(25,'Can add cart',9,'add_cart'),(26,'Can change cart',9,'change_cart'),(27,'Can delete cart',9,'delete_cart'),(28,'Can add order goods',10,'add_ordergoods'),(29,'Can change order goods',10,'change_ordergoods'),(30,'Can delete order goods',10,'delete_ordergoods'),(31,'Can add order',11,'add_order'),(32,'Can change order',11,'change_order'),(33,'Can delete order',11,'delete_order');
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
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'houduan','cart'),(11,'houduan','order'),(10,'houduan','ordergoods'),(8,'houduan','picture'),(7,'houduan','userm'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-01-09 11:44:30.258311'),(2,'auth','0001_initial','2019-01-09 11:44:31.195255'),(3,'admin','0001_initial','2019-01-09 11:44:31.400791'),(4,'admin','0002_logentry_remove_auto_add','2019-01-09 11:44:31.445707'),(5,'contenttypes','0002_remove_content_type_name','2019-01-09 11:44:31.554472'),(6,'auth','0002_alter_permission_name_max_length','2019-01-09 11:44:31.587432'),(7,'auth','0003_alter_user_email_max_length','2019-01-09 11:44:31.643464'),(8,'auth','0004_alter_user_username_opts','2019-01-09 11:44:31.681059'),(9,'auth','0005_alter_user_last_login_null','2019-01-09 11:44:31.759627'),(10,'auth','0006_require_contenttypes_0002','2019-01-09 11:44:31.765334'),(11,'auth','0007_alter_validators_add_error_messages','2019-01-09 11:44:31.803240'),(12,'auth','0008_alter_user_username_max_length','2019-01-09 11:44:31.859521'),(13,'houduan','0001_initial','2019-01-09 11:44:31.894414'),(14,'sessions','0001_initial','2019-01-09 11:44:31.931960'),(15,'houduan','0002_picture','2019-01-19 06:58:09.779129'),(16,'houduan','0003_cart','2019-01-19 08:32:45.092393'),(17,'houduan','0004_order_ordergoods','2019-03-15 09:47:45.999531');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('56w00g8dfuwz0186rqkx5th6zpnqlrey','MTBiYzI5YzliMDUzMWIxZWE2ZjI5Nzg0ZmNmMGJkMjAzMTIyMTMzMzp7InRva2VuIjoiZGZlY2FlMzE4NTQ1MWYwYzhmNmViZmI5ZmNhOGI4YmIiLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2019-01-10 12:18:52.913028'),('8schcj17l1gwwfls4g1t91hgl8eox5re','NTBhZGI5NDcyYTY2ZjgyMWYyZWU4N2MxNWZhODg3MzFlOGY4MDEzMTp7InRva2VuIjoiMDgzMzgyZDg2M2MyYTFjYmIwMjA0OGE2MmE1NzQ2MDgiLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2019-01-10 10:42:11.183732'),('91wbwa1pv3kzwbozlvioe6yunkvaujch','N2U2NjdiN2RiYzQyMTIwNGY0YjUyZTdjMjA1MDg1NzY1MTJkMTJmYjp7Il9zZXNzaW9uX2V4cGlyeSI6MzAsInRva2VuIjoiZjI0ZGU2OTAyZmFmMmY4YjMwNTM4ZGY4ZWFlZTcyMTEifQ==','2019-01-10 10:26:43.371193'),('a805vxt0vbwjaf2xe0spl5arn925fuwp','ZDIxZmM1YjU2Y2IzNzI0MGRhNTA2OTlkYzc5MGQ3N2Y2MzRjNjRkZjp7InRva2VuIjoiYmMwOGY4MjU4MTIzYTUyYWJhZjg0M2MxZTJlY2VhZTkifQ==','2019-02-02 08:24:31.315070'),('aysspkk59vzfr4mm7xx8cb7kknr66wff','Y2ZiNmRmMTcwNDI1MTg4ZTBlMDRhYjhkZTY3OWU1MTViOWQyZWY4MTp7InRva2VuIjoiYjNiMjM0NDFiNDJjMzFiNjAyOTVjNTIwYTc3OGNkNDEiLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2019-01-19 08:17:42.797717'),('cy2hicm2g32qhvs75xiajlwyo1hoxgts','OGQ0NWZmZTEzNWNhMDVjMzgzNWY0YTZhZGY2YzMyZjQzYzUyZDIxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzAsInRva2VuIjoiOGRmZmQwYWRhYjkyMjQ2MTg0OTlkMzk5YWNiODQ0ZTUifQ==','2019-01-10 09:57:26.312746'),('d505tpd3fttdyb0ub6r50dxt7isdbkyt','ZGIzNTM0MWI0NjQxYTQ2Y2NjMzcxYzUxNWJkNTBiZjViMTMzODA0NTp7InRva2VuIjoiZDAxNzQwMTM5NzdkZDhjYWRmZjE0ZGYyNTMwOGRhYmEiLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2019-01-10 11:28:14.707746'),('d97qw79s1yrumjcjfcm5v5rghf9u8vjg','ZmE1OGNjZmY1YTM5NmIwN2YyNmI3M2VkYTVmM2MxNTcyMTczMDZiOTp7InRva2VuIjoiZmU5Zjg0MzQyYjk4OGFiNDc1YTM3N2M0Y2JkNmQ0NmMiLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2019-01-10 10:46:13.493024'),('eilxb8siqwp6jt3b8u426r0otcfbd66t','ZjEzODAxNWEwZmRiMGQzZjVlZTM3MjM5N2RiNzYxZjcyZjkxMTYzYzp7Il9zZXNzaW9uX2V4cGlyeSI6MzAsInRva2VuIjoiNzQwMTQ4MWQ0ZDY0ZjdlZWIzZTcyNDQ5OWE2NjRiYmMifQ==','2019-01-10 11:00:28.666750'),('eimhp56qb3zz321rf20qtjkvwi4xt3s4','NTg5MjJjNjQyMWE4NzZjYmU1MzNkZDg0NDczNmJkMTQ1MGYyMWFiMzp7InRva2VuIjoiMTllOWY0ZmQzYjYwZjI2ZTYzZWVkNWRhZjY1MmIyMTciLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2019-01-10 09:46:02.874344'),('fbfuh361efsoy8qelmnskkvcssyvrch6','Y2NmMTE4MWY3OTU5YmI0YWVmNjQ0ZTEwNmIwZWRkZjRlZDhiMjhlZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzAsInRva2VuIjoiMjllZTE3MDA3ODQ3ODBjZDYxZmNiYzA1MjBlYTBmZTEifQ==','2019-01-10 09:59:21.674502'),('fkvjgq5jlbxwz8e4qhtfp61t2r2p2iqm','YTA1ZWY5ZjM3MDMyOTc4ZGFiOTQ0NDZmZGRjMzYyMjgxMmM2NDcxODp7InRva2VuIjoiZTkyOGMzYWE5N2ZiNzAwNDhmYjhlNDZhOWU2MTkwZDciLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2019-01-10 11:20:04.450782'),('jxlc31cw0s5hfbfepj1mh0ns446ons82','NDhjYjAzMTM2YjljODMzMThlNmY1NTFjMjlkMWU0ZjE0NTA4NjFmOTp7InRva2VuIjoiYzQwNGZmZGI5ODU4ZTQ3ZmQ5NjZjZTM0NGEwNGMxY2IifQ==','2019-03-30 01:20:28.542292'),('m6n4wvwaqwscfox0048urfpbq53f3ruc','OGE2N2I4MGVkNjcyNmUwMDk5ODkxMWM3MzFhNTFlN2NjZmI3NDFjYjp7Il9zZXNzaW9uX2V4cGlyeSI6MzAsInRva2VuIjoiNmE2M2ZjM2JmZWNiZWY4Y2E0ZjFlZDM4YTFhYThlODMifQ==','2019-01-10 10:24:58.018472'),('mbeesdzowvppct0iyhq0g9ux3db28nkx','Zjg4MTdlMzg0OWVjMmUzZTQwZDE1MGQ4NGRiNDMxMTViNzE3NmZlODp7Il9zZXNzaW9uX2V4cGlyeSI6MzAsInRva2VuIjoiNTc5ZmRhZjdiOWJkYjJjNzQzYThhM2ExZTVkMDRlZjAifQ==','2019-01-10 10:21:14.166647'),('my33y6o8r7tvi19o18ddlj78q1qs03td','ZTQ2M2Y3YjYwMjY1MDk2ZDc5ZWJmOWY2ZjBmNDBjYjA1NjU3MzUyZTp7Il9zZXNzaW9uX2V4cGlyeSI6MzAsInRva2VuIjoiZDUzMDdmNzIxYjA5N2Q4NzcxMWZhZmU3NTdlZmZjNjAifQ==','2019-01-14 09:10:28.511098'),('nlihqpigjrwhyvl90knw5ihxnxt7ide4','YmM4NGRjYmJlNTRiMWY4MDg5MjU5Y2NiZGY2NGI0ZTYwNjBjZGY2ODp7InRva2VuIjoiYTUyZTYwNzcwZTAxY2M5OWE5MThlZGE0OTE1MDhhNDkiLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2019-01-10 09:46:59.052232'),('p3uogs4pvaa07al5v9xoto18mkpww58g','ZWQ4NmExYjAwZGVjMGQxNmU5NWFiZTVkNDk3NGU5YzIwNzJmMGM0ZDp7InRva2VuIjoiYjUzNWUzZTA4MWNmMDk2ZDExODBmZWEzYWYwN2QyMmEiLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2019-01-10 10:38:08.201301'),('plcmgz4y0htinkdfn65ykjdkq8hucutl','NGVlN2U3MDM0MWVjZGFmOWVlOTU1NzBmYjZiZWExZTJhZTBlZTgzMjp7Il9zZXNzaW9uX2V4cGlyeSI6MzAsInRva2VuIjoiZjg1OWEyZDIwMjZlOGM5OGVmYmZjZmI5N2VlYjYwZGIifQ==','2019-01-10 10:52:21.792862'),('qqexnrhh5ji5emn1mex05pb3khvogyjr','ZDc3MmEzZTU2MWUyMGNkMmNiNmY2Njc2ZjI0Y2Q2ODlkZTQwYWJhNjp7InRva2VuIjoiZjkzNTk0N2VhNjVlMTQzNDdiMTE0NDhkM2E2NzcyYWEiLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2019-01-10 11:24:50.174709'),('qw1bk15j8xnhll7cfnt0meyqrzrbiita','YzIyYTBkNWRhNWY2MGM0NmM1Y2NhYzUwOTE2ZWY1Y2NmNjhhNzQ4Mjp7InRva2VuIjoiZmIxMGRhY2Y2YzdmZjNjOTZlNjUxMDMwYmM5YTc1MDkiLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2019-01-10 10:44:29.937152'),('ru4ugosaep55yzuqpemy5vq9piod4jt8','ZjVhN2NlY2QwYjNkZWRjNWU1NGIxMDU0Yzc1NGU3MDk0ODE0YjY0YTp7Il9zZXNzaW9uX2V4cGlyeSI6MzAsInRva2VuIjoiNzQ1ZmQ1NWYwMGE1NTJmMDY1YWQ2M2Q3ZjUyNWM2M2YifQ==','2019-01-10 10:35:03.883267'),('sv9dx2n3nul9w5ce508q700z555f7ctv','NDJlMjI0ZjEwZmQxZGQwMzQ2YTQ3OTEyY2ZkZTQ5MDdhMTU5MGEzYzp7InRva2VuIjoiZjU2OTgzNDE2MmMyYzE1N2UwMzNlY2M5OTQ4NDY4Y2UiLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2019-01-10 10:40:03.793998'),('t9uh7cr191q9p3ui1udt6k9958ld5jt5','MThiY2YxMjI1M2EzYjJjM2E4YjliNDJhOGYyMDIxZGE2YzcwM2YxZTp7Il9zZXNzaW9uX2V4cGlyeSI6MzAsInRva2VuIjoiYmYyYjg3YmYyNzkyNTRkZGQxNDhjMTA3YzhiNzZhOWEifQ==','2019-01-10 10:35:48.013026'),('tp34kp3ey642g99x7vrstgo7ggmcvlin','Njc0Y2IzYzNhZmVkMjMyYTNmYWI0YjVhZjAzYzFiOWYxZDQwNDVkYzp7InRva2VuIjoiYWJlN2IyMjM0YjAyN2EyMTg1NmVjODk2ZGEzYzhmNmEiLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2019-01-10 10:41:05.160605'),('v7z6qgkl00hz08wffx2j6z6knbgp4mgf','MjZjNTZlZDVkN2I2MTcxZDFlYjU5MTc0MDQ2MGEwZmNjMjUwNTVkMzp7Il9zZXNzaW9uX2V4cGlyeSI6MzAsInRva2VuIjoiNDhjMDlkYWNjYTE3YmIzNTZjYjdhNjU2NjJkNTI2OTUifQ==','2019-01-10 10:28:03.969226'),('vs88q1rmfya2m1gj6ih3gofkekyfqbt1','MmRlNzRiNDVmNWEwMmUwNTA4ZmFlZTZmMmJkNWYzZjljZDBkZDI0Yjp7InRva2VuIjoiYjViNGVlMTRkNTdiZGU4Yzk3NTk2OTFmNTVkN2I2MmEiLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2019-01-16 12:15:11.447423'),('vx12w777x2km5vl80qgf4m7dks6syp4l','ZWJkZjI4NjNkNWZmZjVlZjFiY2M0NWUyOGMyNTEwZDU2YzhhNGJkYzp7Il9zZXNzaW9uX2V4cGlyeSI6MzAsInRva2VuIjoiNmQyZDgwYzgyZGJkMzFkZTBiMmJmNjVkMjdjNGJmYjQifQ==','2019-01-19 08:12:19.041395'),('wrgijbss34lenouw101gldckxeccedii','Y2NiYzM5YWU0YTRmYmM5YTcxYjYwMGIzZmMyYTI4MjI0MjFjYjEzMjp7InRva2VuIjoiYTRkZmQ0ZjFmODFhMjNhODFhYWIzNjFmNjYzNzk5NzciLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2019-01-10 10:33:10.578055'),('wxhqvi99qa4pt0zrtfmnhbv1hvvpbztu','NjRiM2NmNDJkZjFiM2UwMjYyMzA1ZDYyN2E5YzEzYTc3NDgzN2U3MDp7InRva2VuIjoiZTExZjRlNTdhNDkzNDM2Nzk1ZjQ4MzcxYTA4NzgzNGUiLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2019-01-10 10:49:53.701901'),('yaxsayxy3ruhxq7kiju59xy4odwlcfpx','ODIzNWMxMWMyMTdhZjQzYjQ4ZGY1NDRiYmMxMjE0OTQ0Zjk4MjYyODp7InRva2VuIjoiMzQ0MWJmNDQ5NDM1ZDk0N2Y5MTdlNjk0MTZjNDkwMzIiLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2019-01-10 11:22:50.355777');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `houduan_cart`
--

DROP TABLE IF EXISTS `houduan_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `houduan_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(10) unsigned NOT NULL,
  `isselect` tinyint(1) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `houduan_cart_goods_id_0a73aec5_fk_houduan_picture_id` (`goods_id`),
  KEY `houduan_cart_user_id_28565a66_fk_houduan_userm_id` (`user_id`),
  CONSTRAINT `houduan_cart_goods_id_0a73aec5_fk_houduan_picture_id` FOREIGN KEY (`goods_id`) REFERENCES `houduan_picture` (`id`),
  CONSTRAINT `houduan_cart_user_id_28565a66_fk_houduan_userm_id` FOREIGN KEY (`user_id`) REFERENCES `houduan_userm` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houduan_cart`
--

LOCK TABLES `houduan_cart` WRITE;
/*!40000 ALTER TABLE `houduan_cart` DISABLE KEYS */;
INSERT INTO `houduan_cart` VALUES (1,8,1,2,8),(2,6,1,1,8),(3,7,1,2,15),(4,2,1,1,36),(5,5,1,3,36),(6,10,1,2,36),(7,4,1,2,37),(10,5,1,2,38),(15,1,1,2,39),(21,1,1,1,43);
/*!40000 ALTER TABLE `houduan_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `houduan_order`
--

DROP TABLE IF EXISTS `houduan_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `houduan_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createtime` datetime(6) NOT NULL,
  `updatetime` datetime(6) NOT NULL,
  `status` int(11) NOT NULL,
  `identifier` varchar(256) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `houduan_order_user_id_a729323b_fk_houduan_userm_id` (`user_id`),
  CONSTRAINT `houduan_order_user_id_a729323b_fk_houduan_userm_id` FOREIGN KEY (`user_id`) REFERENCES `houduan_userm` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houduan_order`
--

LOCK TABLES `houduan_order` WRITE;
/*!40000 ALTER TABLE `houduan_order` DISABLE KEYS */;
INSERT INTO `houduan_order` VALUES (1,'2019-03-15 10:14:54.883423','2019-03-15 10:14:54.883695',0,'1552644894.85607961691',38),(2,'2019-03-15 10:15:01.578276','2019-03-15 10:15:01.578465',0,'1552644901.56825076840',38),(3,'2019-03-15 10:18:26.994626','2019-03-15 10:18:26.994971',0,'1552645106.99188951209',38),(4,'2019-03-15 10:21:39.434776','2019-03-15 10:21:39.434909',0,'1552645299.43375661661',38),(5,'2019-03-15 10:22:22.051988','2019-03-15 10:22:22.052101',0,'1552645342.05095582467',38),(6,'2019-03-15 10:23:00.388030','2019-03-15 10:23:00.388258',0,'1552645380.38469778362',38),(7,'2019-03-15 10:27:11.290933','2019-03-15 10:27:11.291232',0,'1552645631.2794367933',39),(8,'2019-03-15 11:13:48.672171','2019-03-15 11:13:48.672581',0,'1552648428.67069962435',39),(9,'2019-03-15 11:31:44.262705','2019-03-15 11:31:44.263005',0,'1552649504.26070289721',39),(10,'2019-03-15 11:32:48.837551','2019-03-15 11:32:48.837938',0,'1552649568.83344919121',39),(11,'2019-03-15 11:35:16.682814','2019-03-15 11:35:16.682987',0,'1552649716.67243099',39),(12,'2019-03-15 11:35:19.100290','2019-03-15 11:35:19.100559',0,'1552649719.09882953231',39),(13,'2019-03-15 11:40:56.786909','2019-03-15 11:40:56.787047',0,'1552650056.78280282933',39),(14,'2019-03-15 11:41:25.584385','2019-03-15 11:41:25.584647',0,'1552650085.579163156',39),(15,'2019-03-15 11:42:53.768194','2019-03-15 11:42:53.768329',0,'1552650173.76575611683',39),(16,'2019-03-15 11:43:42.654502','2019-03-15 11:43:42.654663',0,'1552650222.6533861163',39),(17,'2019-03-15 11:55:55.334443','2019-03-15 11:55:55.334533',0,'1552650955.33361084675',39),(18,'2019-03-15 11:57:02.365791','2019-03-15 11:57:02.365906',0,'1552651022.36487344962',39),(19,'2019-03-15 11:57:43.541767','2019-03-15 11:57:43.541968',0,'1552651063.53811769904',39),(20,'2019-03-15 12:59:25.558259','2019-03-15 12:59:25.558689',0,'1552654765.55616149013',39),(21,'2019-03-15 12:59:53.345613','2019-03-15 12:59:53.345717',0,'1552654793.33954766011',39),(22,'2019-03-15 13:03:35.814734','2019-03-15 13:03:35.814878',0,'1552655015.81035473474',40),(23,'2019-03-15 13:04:39.065828','2019-03-15 13:04:39.065950',0,'1552655079.06410464472',40),(24,'2019-03-15 13:06:19.197369','2019-03-15 13:06:19.197600',0,'1552655179.19562176657',40),(25,'2019-03-15 13:06:47.582202','2019-03-15 13:06:47.582335',0,'1552655207.58057121155',40),(26,'2019-03-15 13:16:32.528525','2019-03-15 13:16:32.528632',0,'1552655792.5274715858',41),(27,'2019-03-15 13:16:45.306679','2019-03-15 13:16:45.307160',0,'1552655805.29712759227',41),(28,'2019-03-15 13:17:26.751771','2019-03-15 13:17:26.751931',0,'1552655846.75035079217',41),(29,'2019-03-15 13:18:23.458235','2019-03-15 13:18:23.458670',0,'1552655903.45419489021',41),(30,'2019-03-15 13:22:07.533414','2019-03-15 13:22:07.533992',0,'1552656127.532054939',42),(31,'2019-03-15 13:23:49.504453','2019-03-15 13:23:49.504914',0,'1552656229.50287844477',43),(32,'2019-03-16 01:14:34.609393','2019-03-16 01:14:34.609515',0,'1552698874.60389236035',43),(33,'2019-03-16 01:21:05.503159','2019-03-16 01:21:05.503355',0,'1552699265.50095735184',44),(34,'2019-03-16 01:30:15.974112','2019-03-16 01:30:15.974215',0,'1552699815.97289784686',44),(35,'2019-03-16 01:30:18.677346','2019-03-16 01:30:18.677647',0,'1552699818.6754782591',44),(36,'2019-03-16 01:30:44.575090','2019-03-16 01:30:44.575264',0,'1552699844.57372162016',44),(37,'2019-03-16 03:04:11.032244','2019-03-16 03:04:11.032595',0,'1552705451.02579641639',44);
/*!40000 ALTER TABLE `houduan_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `houduan_ordergoods`
--

DROP TABLE IF EXISTS `houduan_ordergoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `houduan_ordergoods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `houduan_ordergoods_goods_id_87fe90de_fk_houduan_picture_id` (`goods_id`),
  KEY `houduan_ordergoods_order_id_204e9cdb_fk_houduan_order_id` (`order_id`),
  CONSTRAINT `houduan_ordergoods_goods_id_87fe90de_fk_houduan_picture_id` FOREIGN KEY (`goods_id`) REFERENCES `houduan_picture` (`id`),
  CONSTRAINT `houduan_ordergoods_order_id_204e9cdb_fk_houduan_order_id` FOREIGN KEY (`order_id`) REFERENCES `houduan_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houduan_ordergoods`
--

LOCK TABLES `houduan_ordergoods` WRITE;
/*!40000 ALTER TABLE `houduan_ordergoods` DISABLE KEYS */;
INSERT INTO `houduan_ordergoods` VALUES (1,5,2,1),(2,5,2,3),(3,2,2,7),(4,1,2,8),(5,5,2,10),(6,3,2,16),(7,1,2,22),(8,4,2,26),(9,4,2,28),(10,1,2,30),(11,1,1,31),(12,5,2,33),(13,4,2,36);
/*!40000 ALTER TABLE `houduan_ordergoods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `houduan_picture`
--

DROP TABLE IF EXISTS `houduan_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `houduan_picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shu` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `num` int(11) NOT NULL,
  `span` varchar(255) NOT NULL,
  `p` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houduan_picture`
--

LOCK TABLES `houduan_picture` WRITE;
/*!40000 ALTER TABLE `houduan_picture` DISABLE KEYS */;
INSERT INTO `houduan_picture` VALUES (1,'b100000','img/da1.jpg',0,'25','南极人男士船袜   5双盒装纯色夏季浅口隐形透气'),(2,'b2','img/xie.jpg',0,'129','索里奥   男士反绒牛皮   时尚休闲鞋    9115   蓝色 40码'),(3,'b3','img/nvzhuang.jpg',0,'79','秦美轩 纯色文艺女士上衣 16867676020');
/*!40000 ALTER TABLE `houduan_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `houduan_userm`
--

DROP TABLE IF EXISTS `houduan_userm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `houduan_userm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(80) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `token` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houduan_userm`
--

LOCK TABLES `houduan_userm` WRITE;
/*!40000 ALTER TABLE `houduan_userm` DISABLE KEYS */;
INSERT INTO `houduan_userm` VALUES (1,'','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','','abda2a30e3b6cd14dfc5ad002ed2a7c1'),(2,'zzz','bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a','13311111111','46a6835e183d63f417adbe7fb8181ecc'),(3,'licc','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','13311111111','cf9f4f6b1936d74bebb4a18d9b3d92dc'),(4,'111111','bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a','13341111111','9ac9c857cd8c479ebeea75389f2c91f1'),(5,'zkzk','978ab8c2a110821a196a09e0a90cece020dd9454c642d33cc9296f2d25411334','15080172573','cc2b90d8fd28d22e9026b4346d87d452'),(6,'22222','cc399d73903f06ee694032ab0538f05634ff7e1ce5e8e50ac330a871484f34cf','22222','cdd770d248970f79537b7204899fba7d'),(7,'444333','bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a','15080172574','20e4071202746918647d66b2bb968f58'),(8,'zzzz','95fbeb8f769d2c0079d1d11348877da944aaefaba6ecf9f7f7dab6344ece8605','13511111111','bc08f8258123a52abaf843c1e2eceae9'),(9,'tw','bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a','13876522222','60cbccaafc7203b579b2cab4739b8195'),(10,'zkshr','bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a','15080172573','dfecae3185451f0c8f6ebfb9fca8b8bb'),(11,'111','bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a','15080172573','3b9546a9ce26b3c48890c729b09fb746'),(12,'','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','','b91839e5eda82ee59b2f75f36d981405'),(13,'zzzz','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','','f0817de718b2fb7d2b7b3c56262f7774'),(14,'z','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','','37653ce60edf24a3e6b51a2bd9fdb03f'),(15,'ddddd','b32914cd620087fa50645bbba8268fc3bc9d92aeb427bc6b985477b9b4a65830','dddddddd','217273fe524076f478d52b8d9c1104de'),(16,'dddd','5bf8aa57fc5a6bc547decf1cc6db63f10deb55a3c6c5df497d631fb3d95e1abf','dddd','7293e8841bec2a213162af3cbadac5e1'),(17,'ggg','45d25abffe8c792d74d30346429b5bc244b815eeb378a9c38395f7a466cf6894','gggg','41d861cb04e3366ec5fb3f9de043b948'),(18,'3','556d7dc3a115356350f1f9910b1af1ab0e312d4b3e4fc788d2da63668f36d017','gggg','6afaf4b42fb3533a929bd29a1d6feecc'),(19,'ddd','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','','0fc5e92944d8355b3411561ce78b085b'),(20,'ddd','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','','a634ff5430bf2a965a33e1199006a1e9'),(21,'dddaa','a871c47a7f48a12b38a994e48a9659fab5d6376f3dbce37559bcb617efe8662d','ssss','02dce3923f0e6a5d8733050c20dbc434'),(22,'dddaa','6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b','ssss','8ddfce5d3d8fb021dca1f4daa050166c'),(23,'1','edee29f882543b956620b26d0ee0e7e950399b1c4222f5de05e06425b4c995e9','1','22bd9d5838fad7f7c757d234d135e040'),(24,'ww','043a718774c572bd8a25adbeb1bfcd5c0256ae11cecf9f9c3f925d0e52beaf89','s','b7319c148277a6afff657781e16ba24b'),(25,'ww','043a718774c572bd8a25adbeb1bfcd5c0256ae11cecf9f9c3f925d0e52beaf89','s','f8676dc4a15ea8ecc963b510a252883e'),(26,'ww','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','s','d98b010497698c765d6ad7c2dc47de6d'),(27,'','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','','80430c76e435ee0b5a5ee1357c06f6d0'),(28,'1','6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b','1','aba6df8ceeb52c7901c49d1fe504e414'),(29,'sssssaq','d7ef0a04f3c8055644677299a9414a75adcb15916eb48417416c9317ace2ff4f','ddd','8a15a22d1d94a63b1d5ffb2ac806c54a'),(30,'sssss','0a1b086f072513ebb1d3d715166583135b706781ce4948cb1eb90b9837eb5707','sss','6f450ce214a5c2ad058f67e3e6b07705'),(31,'szz','4a60bf7d4bc1e485744cf7e8d0860524752fca1ce42331be7c439fd23043f151','zk@qq.com','8b65f9167d9445768e49b0f81e1e8f6c'),(32,'sssssaq','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','ssss@123.com','77206d48a2f5f34a74056c510d8d21bd'),(33,'s','a871c47a7f48a12b38a994e48a9659fab5d6376f3dbce37559bcb617efe8662d','sss','1d2234ff274cd795c5940b4b42642b58'),(34,'123456','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','666@qq.com','75ffb7b65d1acb10a552ce575f40ab12'),(35,'123456','0a1b086f072513ebb1d3d715166583135b706781ce4948cb1eb90b9837eb5707','222','149e7300e87b6aa9cecbd12cadb74def'),(36,'123456','bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a','222','c0a5285540ecb66d58626af33ea91f5f'),(37,'zkshr','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','','fc0b86deb90a90630145451fe96cfebd'),(38,'lidanshadiao','83c22d2539bd6d0d5907e29f3c7845a97d9d77990780fa3999af45e3d119ffb2','121','3bf086b377bbf9ac94a1f60902c25338'),(39,'111111','bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a','','f027c8501cb7533c436d721e485a9f14'),(40,'222222','4cc8f4d609b717356701c57a03e737e5ac8fe885da8c7163d3de47e01849c635','','53a819af9e4d06f44bd29f71e129b2c2'),(41,'111111','bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a','','8e4d823ecaf68d56e074a489f67e2294'),(42,'222333','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','','33bffde496f9f4871f65faed157a887b'),(43,'234','bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a','','fb2776407f1acc7451a69455e3c59cca'),(44,'111111','68487dc295052aa79c530e283ce698b8c6bb1b42ff0944252e1910dbecdc5425','222','c404ffdb9858e47fd966ce344a04c1cb');
/*!40000 ALTER TABLE `houduan_userm` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-16 15:37:55
