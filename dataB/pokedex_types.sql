-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: pokedex
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (1,1,'grass','poison'),(2,2,'grass','poison'),(3,3,'grass','poison'),(4,4,'fire',''),(5,5,'fire',''),(6,6,'fire','flying'),(7,7,'water',''),(8,8,'water',''),(9,9,'water',''),(10,10,'bug',''),(11,11,'bug',''),(12,12,'bug','flying'),(13,13,'bug','poison'),(14,14,'bug','poison'),(15,15,'bug','poison'),(16,16,'normal','flying'),(17,17,'normal','flying'),(18,18,'normal','flying'),(19,19,'normal','dark'),(20,20,'normal','dark'),(21,21,'normal','flying'),(22,22,'normal','flying'),(23,23,'poison',''),(24,24,'poison',''),(25,25,'electric',''),(26,26,'electric','electric'),(27,27,'ground','ice'),(28,28,'ground','ice'),(29,29,'poison',''),(30,30,'poison',''),(31,31,'poison','ground'),(32,32,'poison',''),(33,33,'poison',''),(34,34,'poison','ground'),(35,35,'fairy',''),(36,36,'fairy',''),(37,37,'fire','ice'),(38,38,'fire','ice'),(39,39,'normal','fairy'),(40,40,'normal','fairy'),(41,41,'poison','flying'),(42,42,'poison','flying'),(43,43,'grass','poison'),(44,44,'grass','poison'),(45,45,'grass','poison'),(46,46,'bug','grass'),(47,47,'bug','grass'),(48,48,'bug','poison'),(49,49,'bug','poison'),(50,50,'ground','ground'),(51,51,'ground','ground'),(52,52,'normal','dark'),(53,53,'normal','dark'),(54,54,'water',''),(55,55,'water',''),(56,56,'fighting',''),(57,57,'fighting',''),(58,58,'fire',''),(59,59,'fire',''),(60,60,'water',''),(61,61,'water',''),(62,62,'water','fighting'),(63,63,'psychic',''),(64,64,'psychic',''),(65,65,'psychic',''),(66,66,'fighting',''),(67,67,'fighting',''),(68,68,'fighting',''),(69,69,'grass','poison'),(70,70,'grass','poison'),(71,71,'grass','poison'),(72,72,'water','poison'),(73,73,'water','poison'),(74,74,'rock','ground'),(75,75,'rock','ground'),(76,76,'rock','ground'),(77,77,'fire',''),(78,78,'fire',''),(79,79,'water','psychic'),(80,80,'water','psychic'),(81,81,'electric','steel'),(82,82,'electric','steel'),(83,83,'normal','flying'),(84,84,'normal','flying'),(85,85,'normal','flying'),(86,86,'water',''),(87,87,'water','ice'),(88,88,'poison','poison'),(89,89,'poison','poison'),(90,90,'water',''),(91,91,'water','ice'),(92,92,'ghost','poison'),(93,93,'ghost','poison'),(94,94,'ghost','poison'),(95,95,'rock','ground'),(96,96,'psychic',''),(97,97,'psychic',''),(98,98,'water',''),(99,99,'water',''),(100,100,'electric',''),(101,101,'electric',''),(102,102,'grass','psychic'),(103,103,'grass','psychic'),(104,104,'ground',''),(105,105,'ground','fire'),(106,106,'fighting',''),(107,107,'fighting',''),(108,108,'normal',''),(109,109,'poison',''),(110,110,'poison',''),(111,111,'ground','rock'),(112,112,'ground','rock'),(113,113,'normal',''),(114,114,'grass',''),(115,115,'normal',''),(116,116,'water',''),(117,117,'water',''),(118,118,'water',''),(119,119,'water',''),(120,120,'water',''),(121,121,'water','psychic'),(122,122,'psychic','fairy'),(123,123,'bug','flying'),(124,124,'ice','psychic'),(125,125,'electric',''),(126,126,'fire',''),(127,127,'bug',''),(128,128,'normal',''),(129,129,'water',''),(130,130,'water','flying'),(131,131,'water','ice'),(132,132,'normal',''),(133,133,'normal',''),(134,134,'water',''),(135,135,'electric',''),(136,136,'fire',''),(137,137,'normal',''),(138,138,'rock','water'),(139,139,'rock','water'),(140,140,'rock','water'),(141,141,'rock','water'),(142,142,'rock','flying'),(143,143,'normal',''),(144,144,'ice','flying'),(145,145,'electric','flying'),(146,146,'fire','flying'),(147,147,'dragon',''),(148,148,'dragon',''),(149,149,'dragon','flying'),(150,150,'psychic',''),(201,151,'psychic','');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-13 18:17:22
