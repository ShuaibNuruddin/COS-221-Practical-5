CREATE DATABASE  IF NOT EXISTS `otakus_upload_media` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `otakus_upload_media`;
-- MySQL dump 10.19  Distrib 10.3.34-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: otakus_upload_media
-- ------------------------------------------------------
-- Server version	10.3.34-MariaDB-0ubuntu0.20.04.1

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
-- Table structure for table `media_event`
--

DROP TABLE IF EXISTS `media_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_event` (
  `file_name` varchar(80) NOT NULL,
  `file` longblob DEFAULT NULL,
  `file_description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`file_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_event`
--

LOCK TABLES `media_event` WRITE;
/*!40000 ALTER TABLE `media_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_player`
--

DROP TABLE IF EXISTS `media_player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_player` (
  `file_name` varchar(80) NOT NULL,
  `file` longblob DEFAULT NULL,
  `file_description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`file_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_player`
--

LOCK TABLES `media_player` WRITE;
/*!40000 ALTER TABLE `media_player` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_team`
--

DROP TABLE IF EXISTS `media_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_team` (
  `file_name` varchar(80) NOT NULL,
  `file` longblob DEFAULT NULL,
  `file_description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`file_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_team`
--

LOCK TABLES `media_team` WRITE;
/*!40000 ALTER TABLE `media_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_tournament`
--

DROP TABLE IF EXISTS `media_tournament`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_tournament` (
  `file_name` varchar(80) NOT NULL,
  `file` longblob DEFAULT NULL,
  `file_description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`file_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_tournament`
--

LOCK TABLES `media_tournament` WRITE;
/*!40000 ALTER TABLE `media_tournament` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_tournament` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-08  1:43:38
