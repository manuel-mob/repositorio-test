-- MySQL dump 10.17  Distrib 10.3.25-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: hypersys
-- ------------------------------------------------------
-- Server version	10.3.25-MariaDB-0ubuntu1

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
-- Current Database: `hypersys`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hypersys` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `hypersys`;

--
-- Table structure for table `cambio`
--

DROP TABLE IF EXISTS `cambio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cambio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creado` date NOT NULL,
  `actualizado` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cambio`
--

LOCK TABLES `cambio` WRITE;
/*!40000 ALTER TABLE `cambio` DISABLE KEYS */;
INSERT INTO `cambio` VALUES (1,'Incorporación de ChangeLog','Detalle de cambios que sufre la aplicación.','2015-01-01',NULL);
/*!40000 ALTER TABLE `cambio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20200921180738','2020-09-21 15:14:44',227),('DoctrineMigrations\\Version20200921181901','2020-09-21 15:19:21',33),('DoctrineMigrations\\Version20201005134837','2020-10-05 10:49:14',43);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuente_informacion`
--

DROP TABLE IF EXISTS `fuente_informacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuente_informacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuente_informacion`
--

LOCK TABLES `fuente_informacion` WRITE;
/*!40000 ALTER TABLE `fuente_informacion` DISABLE KEYS */;
INSERT INTO `fuente_informacion` VALUES (1,'1968 “Mother of All Demos” by SRI’s Doug Engelbart and Team','https://www.youtube.com/watch?v=B6rKUf9DWRI'),(2,'Memex animation - Vannevar Bush\'s diagrams made real','https://www.youtube.com/watch?v=c539cK58ees'),(3,'Scrum ORG','https://www.scrum.org/'),(4,'Agile Alliance','https://www.agilealliance.org/'),(5,'Agile Alliance','https://www.agilealliance.org/'),(6,'PHP + PostgreSQL','https://www.php.net/manual/es/ref.pgsql.php'),(7,'Conexión a PostgreSQL','https://www.php.net/manual/es/function.pg-connect.php');
/*!40000 ALTER TABLE `fuente_informacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idea`
--

DROP TABLE IF EXISTS `idea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `idea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `creacion` date NOT NULL,
  `actualizacion` date DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idea`
--

LOCK TABLES `idea` WRITE;
/*!40000 ALTER TABLE `idea` DISABLE KEYS */;
INSERT INTO `idea` VALUES (1,'Prueba de Idea','Prueba de Idea','2015-01-01','2020-01-01',NULL);
/*!40000 ALTER TABLE `idea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idea_fuente_informacion`
--

DROP TABLE IF EXISTS `idea_fuente_informacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `idea_fuente_informacion` (
  `idea_id` int(11) NOT NULL,
  `fuente_informacion_id` int(11) NOT NULL,
  PRIMARY KEY (`idea_id`,`fuente_informacion_id`),
  KEY `IDX_FDB1D2AB5B6FEF7D` (`idea_id`),
  KEY `IDX_FDB1D2AB483F9A18` (`fuente_informacion_id`),
  CONSTRAINT `FK_FDB1D2AB483F9A18` FOREIGN KEY (`fuente_informacion_id`) REFERENCES `fuente_informacion` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_FDB1D2AB5B6FEF7D` FOREIGN KEY (`idea_id`) REFERENCES `idea` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idea_fuente_informacion`
--

LOCK TABLES `idea_fuente_informacion` WRITE;
/*!40000 ALTER TABLE `idea_fuente_informacion` DISABLE KEYS */;
INSERT INTO `idea_fuente_informacion` VALUES (1,1);
/*!40000 ALTER TABLE `idea_fuente_informacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sendero`
--

DROP TABLE IF EXISTS `sendero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sendero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `creacion` date NOT NULL,
  `actualizacion` date DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sendero`
--

LOCK TABLES `sendero` WRITE;
/*!40000 ALTER TABLE `sendero` DISABLE KEYS */;
/*!40000 ALTER TABLE `sendero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sendero_idea`
--

DROP TABLE IF EXISTS `sendero_idea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sendero_idea` (
  `sendero_id` int(11) NOT NULL,
  `idea_id` int(11) NOT NULL,
  PRIMARY KEY (`sendero_id`,`idea_id`),
  KEY `IDX_4CF1D46B73F69E48` (`sendero_id`),
  KEY `IDX_4CF1D46B5B6FEF7D` (`idea_id`),
  CONSTRAINT `FK_4CF1D46B5B6FEF7D` FOREIGN KEY (`idea_id`) REFERENCES `idea` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_4CF1D46B73F69E48` FOREIGN KEY (`sendero_id`) REFERENCES `sendero` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sendero_idea`
--

LOCK TABLES `sendero_idea` WRITE;
/*!40000 ALTER TABLE `sendero_idea` DISABLE KEYS */;
/*!40000 ALTER TABLE `sendero_idea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creacion` date NOT NULL,
  `acceso` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-29 12:15:25
