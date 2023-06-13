-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cineshaven
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `asiento`
--

DROP TABLE IF EXISTS `asiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asiento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fila` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `numero` int NOT NULL,
  `id_sala` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Asiento_Sala1_idx` (`id_sala`),
  CONSTRAINT `fk_Asiento_Sala1` FOREIGN KEY (`id_sala`) REFERENCES `sala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asiento`
--

LOCK TABLES `asiento` WRITE;
/*!40000 ALTER TABLE `asiento` DISABLE KEYS */;
INSERT INTO `asiento` VALUES (1,'A',1,1),(2,'A',2,1),(3,'A',3,1),(4,'A',4,1),(5,'A',5,1),(6,'A',6,1),(7,'A',7,1),(8,'A',8,1),(9,'A',9,1),(10,'A',10,1),(11,'A',11,1),(12,'A',12,1),(13,'B',1,1),(14,'B',2,1),(15,'B',3,1),(16,'B',4,1),(17,'B',5,1),(18,'B',6,1),(19,'B',7,1),(20,'B',8,1),(21,'B',9,1),(22,'B',10,1),(23,'B',11,1),(24,'B',12,1),(25,'C',1,1),(26,'C',2,1),(27,'C',3,1),(28,'C',4,1),(29,'C',5,1),(30,'C',6,1),(31,'C',7,1),(32,'C',8,1),(33,'C',9,1),(34,'C',10,1),(35,'C',11,1),(36,'C',12,1),(37,'D',1,1),(38,'D',2,1),(39,'D',3,1),(40,'D',4,1),(41,'D',5,1),(42,'D',6,1),(43,'D',7,1),(44,'D',8,1),(45,'D',9,1),(46,'D',10,1),(47,'D',11,1),(48,'D',12,1),(49,'E',1,1),(50,'E',2,1),(51,'E',3,1),(52,'E',4,1),(53,'E',5,1),(54,'E',6,1),(55,'E',7,1),(56,'E',8,1),(57,'E',9,1),(58,'E',10,1),(59,'E',11,1),(60,'E',12,1),(61,'A',1,2),(62,'A',2,2),(63,'A',3,2),(64,'A',4,2),(65,'A',5,2),(66,'A',6,2),(67,'A',7,2),(68,'A',8,2),(69,'A',9,2),(70,'A',10,2),(71,'A',11,2),(72,'A',12,2),(73,'B',1,2),(74,'B',2,2),(75,'B',3,2),(76,'B',4,2),(77,'B',5,2),(78,'B',6,2),(79,'B',7,2),(80,'B',8,2),(81,'B',9,2),(82,'B',10,2),(83,'B',11,2),(84,'B',12,2),(85,'C',1,2),(86,'C',2,2),(87,'C',3,2),(88,'C',4,2),(89,'C',5,2),(90,'C',6,2),(91,'C',7,2),(92,'C',8,2),(93,'C',9,2),(94,'C',10,2),(95,'C',11,2),(96,'C',12,2),(97,'D',1,2),(98,'D',2,2),(99,'D',3,2),(100,'D',4,2),(101,'D',5,2),(102,'D',6,2),(103,'D',7,2),(104,'D',8,2),(105,'D',9,2),(106,'D',10,2),(107,'D',11,2),(108,'D',12,2),(109,'E',1,2),(110,'E',2,2),(111,'E',3,2),(112,'E',4,2),(113,'E',5,2),(114,'E',6,2),(115,'E',7,2),(116,'E',8,2),(117,'E',9,2),(118,'E',10,2),(119,'E',11,2),(120,'E',12,2),(121,'A',1,3),(122,'A',2,3),(123,'A',3,3),(124,'A',4,3),(125,'A',5,3),(126,'A',6,3),(127,'A',7,3),(128,'A',8,3),(129,'A',9,3),(130,'A',10,3),(131,'A',11,3),(132,'A',12,3),(133,'B',1,3),(134,'B',2,3),(135,'B',3,3),(136,'B',4,3),(137,'B',5,3),(138,'B',6,3),(139,'B',7,3),(140,'B',8,3),(141,'B',9,3),(142,'B',10,3),(143,'B',11,3),(144,'B',12,3),(145,'C',1,3),(146,'C',2,3),(147,'C',3,3),(148,'C',4,3),(149,'C',5,3),(150,'C',6,3),(151,'C',7,3),(152,'C',8,3),(153,'C',9,3),(154,'C',10,3),(155,'C',11,3),(156,'C',12,3),(157,'D',1,3),(158,'D',2,3),(159,'D',3,3),(160,'D',4,3),(161,'D',5,3),(162,'D',6,3),(163,'D',7,3),(164,'D',8,3),(165,'D',9,3),(166,'D',10,3),(167,'D',11,3),(168,'D',12,3),(169,'E',1,3),(170,'E',2,3),(171,'E',3,3),(172,'E',4,3),(173,'E',5,3),(174,'E',6,3),(175,'E',7,3),(176,'E',8,3),(177,'E',9,3),(178,'E',10,3),(179,'E',11,3),(180,'E',12,3);
/*!40000 ALTER TABLE `asiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `id_pelicula` int NOT NULL,
  `texto` varchar(750) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Usuario_has_Pelicula_Pelicula1_idx` (`id_pelicula`),
  KEY `fk_Usuario_has_Pelicula_Usuario_idx` (`id_usuario`),
  CONSTRAINT `fk_Usuario_has_Pelicula_Pelicula1` FOREIGN KEY (`id_pelicula`) REFERENCES `pelicula` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Usuario_has_Pelicula_Usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelicula`
--

DROP TABLE IF EXISTS `pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pelicula` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `director` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `duracion` int NOT NULL,
  `trailer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `poster` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `captura` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `sinopsis` varchar(750) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `votos` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
<<<<<<< HEAD
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
=======
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
>>>>>>> arreglo_proyecto
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelicula`
--

LOCK TABLES `pelicula` WRITE;
/*!40000 ALTER TABLE `pelicula` DISABLE KEYS */;
<<<<<<< HEAD
=======
INSERT INTO `pelicula` VALUES (1,'4124124234','213412341234',123,'1234324','http://localhost:8080/files/1686692907188_ad4c50132bd523560a7e7e7eb36d20e4.jpg','http://localhost:8080/files/1686692907232_eye-open.png','1234123412341241234',0),(2,'23141234231','421341234',123,'21341','http://localhost:8080/files/1686692954796_ad4c50132bd523560a7e7e7eb36d20e4.jpg','http://localhost:8080/files/1686692954807_eye-open.png','2341234123',0);
>>>>>>> arreglo_proyecto
/*!40000 ALTER TABLE `pelicula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `id_usuario` int DEFAULT NULL,
  `id_sesion` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Reserva_Usuario1_idx` (`id_usuario`),
  KEY `fk_Reserva_Sesion1_idx` (`id_sesion`),
  CONSTRAINT `fk_Reserva_Sesion1` FOREIGN KEY (`id_sesion`) REFERENCES `sesion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Reserva_Usuario1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva_tiene_asiento`
--

DROP TABLE IF EXISTS `reserva_tiene_asiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva_tiene_asiento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_reserva` int NOT NULL,
  `id_asiento` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Reserva_has_Asiento_Asiento1_idx` (`id_asiento`),
  KEY `fk_Reserva_has_Asiento_Reserva1_idx` (`id_reserva`),
  CONSTRAINT `fk_Reserva_has_Asiento_Asiento1` FOREIGN KEY (`id_asiento`) REFERENCES `asiento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Reserva_has_Asiento_Reserva1` FOREIGN KEY (`id_reserva`) REFERENCES `reserva` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva_tiene_asiento`
--

LOCK TABLES `reserva_tiene_asiento` WRITE;
/*!40000 ALTER TABLE `reserva_tiene_asiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserva_tiene_asiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sala`
--

DROP TABLE IF EXISTS `sala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sala` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `num_asientos` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sala`
--

LOCK TABLES `sala` WRITE;
/*!40000 ALTER TABLE `sala` DISABLE KEYS */;
INSERT INTO `sala` VALUES (1,'Sala 1',60),(2,'Sala 2',60),(3,'Sala 3',60);
/*!40000 ALTER TABLE `sala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sesion`
--

DROP TABLE IF EXISTS `sesion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sesion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_sala` int NOT NULL,
  `id_pelicula` int NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Sala_has_Pelicula_Pelicula1_idx` (`id_pelicula`),
  KEY `fk_Sala_has_Pelicula_Sala1_idx` (`id_sala`),
  CONSTRAINT `fk_Sala_has_Pelicula_Pelicula1` FOREIGN KEY (`id_pelicula`) REFERENCES `pelicula` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Sala_has_Pelicula_Sala1` FOREIGN KEY (`id_sala`) REFERENCES `sala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sesion`
--

LOCK TABLES `sesion` WRITE;
/*!40000 ALTER TABLE `sesion` DISABLE KEYS */;
/*!40000 ALTER TABLE `sesion` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`PFGUser`@`localhost`*/ /*!50003 TRIGGER `sesion_AFTER_INSERT` AFTER INSERT ON `sesion` FOR EACH ROW BEGIN
	UPDATE pelicula
    SET votos = 0
    WHERE id = NEW.id_pelicula;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`PFGUser`@`localhost`*/ /*!50003 TRIGGER `sesion_AFTER_UPDATE` AFTER UPDATE ON `sesion` FOR EACH ROW BEGIN
	UPDATE pelicula
    SET votos = 0
    WHERE id = NEW.id_pelicula;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nick` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(85) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `clave` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `rol` enum('USER','ADMIN') CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'USER',
  PRIMARY KEY (`id`),
  UNIQUE KEY `nick_UNIQUE` (`nick`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'root','root@gmail.com','e1c599b89bc64d6b30d90be12a46876fa68b34604aaeec8806232107b21989b1',NULL,'ADMIN');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_ha_visto_pelicula`
--

DROP TABLE IF EXISTS `usuario_ha_visto_pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_ha_visto_pelicula` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `id_pelicula` int NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Usuario_has_Pelicula_Pelicula2_idx` (`id_pelicula`),
  KEY `fk_Usuario_has_Pelicula_Usuario1_idx` (`id_usuario`),
  CONSTRAINT `fk_Usuario_has_Pelicula_Pelicula2` FOREIGN KEY (`id_pelicula`) REFERENCES `pelicula` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Usuario_has_Pelicula_Usuario1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_ha_visto_pelicula`
--

LOCK TABLES `usuario_ha_visto_pelicula` WRITE;
/*!40000 ALTER TABLE `usuario_ha_visto_pelicula` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_ha_visto_pelicula` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

<<<<<<< HEAD
-- Dump completed on 2023-06-13 21:02:08
=======
-- Dump completed on 2023-06-14  1:12:54
>>>>>>> arreglo_proyecto
