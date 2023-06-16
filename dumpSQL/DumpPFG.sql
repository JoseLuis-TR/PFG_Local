-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: cineshaven
-- ------------------------------------------------------
-- Server version	8.0.33

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` VALUES (1,2,9,'Para que digan que segundas partes nunca fueron buenas!','2023-06-15 21:45:23'),(2,2,10,'Una peli preciosa y recomendable para toda la familia :)','2023-06-15 21:45:53'),(3,2,12,'Uff... super rara, no se si recomendarla :(','2023-06-15 21:46:22'),(4,2,7,'Un clásico <3','2023-06-15 21:46:39'),(5,2,3,'Nunca habia visto cine asiático...creo que debería de empezar','2023-06-15 21:47:27'),(6,1,9,'Desde luego una buena peli de superheroes','2023-06-15 22:45:53');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelicula`
--

LOCK TABLES `pelicula` WRITE;
/*!40000 ALTER TABLE `pelicula` DISABLE KEYS */;
INSERT INTO `pelicula` VALUES (3,'Old boy','Park Chan-Wook',90,'https://www.youtube.com/watch?v=tAaBkFChaRg','http://localhost:8080/files/1686861160137_14336039_max.jpg','http://localhost:8080/files/1686861160158_16 (785).jpg','Oh Dae-su es un hombre de negocios coreano que un día es secuestrado y confinado durante años en una celda en la que sólo hay una televisión. Y, sin embargo, ignora por qué razón está allí... Segunda parte de la \"trilogía de la venganza\" de Park Chan-wook.',50),(4,'El Padrino','Francis Ford Coppola',170,'https://www.youtube.com/watch?v=iOyQx7MXaz0','http://localhost:8080/files/1686861299453_707663_poster_l.jpg','http://localhost:8080/files/1686861299455_Godfather.mkv_snapshot_00.03.45_2022.03.13_15.40.32-scaled.jpg','América, años 40. Don Vito Corleone (Marlon Brando) es el respetado y temido jefe de una de las cinco familias de la mafia de Nueva York. Tiene cuatro hijos: Connie (Talia Shire), el impulsivo Sonny (James Caan), el pusilánime Fredo (John Cazale) y Michael (Al Pacino), que no quiere saber nada de los negocios de su padre. Cuando Corleone, en contra de los consejos de \'Il consigliere\' Tom Hagen (Robert Duvall), se niega a participar en el negocio de las drogas, el jefe de otra banda ordena su asesinato. Empieza entonces una violenta y cruenta guerra entre las familias mafiosas.',0),(5,'La ballena','Darren Aronofsky',120,'https://youtu.be/nWiQodhMvz4','http://localhost:8080/files/1686861530963_MV5BZDQ4Njg4YTctNGZkYi00NWU1LWI4OTYtNmNjOWMyMjI1NWYzXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_FMjpg_UX1000_.jpg','http://localhost:8080/files/1686861530965_brendan-fraser-the-whale-072622-37aadb79889f40c297e0c82a649f1543.jpg','Un solitario profesor de inglés con obesidad severa (Brendan Fraser) intenta reconectar con su hija adolescente en una última oportunidad de redención.',25),(6,'Doce hombres sin piedad','Sidney Lumet',95,'https://youtu.be/hiyJZP-MlxM','http://localhost:8080/files/1686862860809_98552.jpg','http://localhost:8080/files/1686862860812_doce-hombres-sin-piedad-1957-1562070701.jpg','Los doce miembros de un jurado deben juzgar a un adolescente acusado de haber matado a su padre. Todos menos uno están convencidos de la culpabilidad del acusado. El que disiente intenta con sus razonamientos introducir en el debate una duda razonable que haga recapacitar a sus compañeros para que cambien el sentido de su voto.',0),(7,'Pulp Fiction','Quentin Tarantino ',100,'https://www.youtube.com/watch?v=s7EdQ4FqbhY','http://localhost:8080/files/1686862976055_pulp-fiction-cover-i1288.jpg','http://localhost:8080/files/1686862976058_22 (847).jpg','Jules y Vincent, dos asesinos a sueldo con no demasiadas luces, trabajan para el gángster Marsellus Wallace. Vincent le confiesa a Jules que Marsellus le ha pedido que cuide de Mia, su atractiva mujer. Jules le recomienda prudencia porque es muy peligroso sobrepasarse con la novia del jefe. Cuando llega la hora de trabajar, ambos deben ponerse \"manos a la obra\". Su misión: recuperar un misterioso maletín.',10),(8,'Asteroid City','Wes Anderson',120,'https://youtu.be/8pqgyzBespY','http://localhost:8080/files/1686863071958_poster-de-asteroid-city-de-wes-anderson-original.jpg','http://localhost:8080/files/1686863071960_Steve-Carell.webp','En 1955, colegiales y padres de todo el país se reúnen para un concurso escolar dedicado a la observación de fenómenos astronómicos (Junior Stargazer Convention) que se lleva a cabo en una ciudad ficticia del desierto estadounidense llamada Asteroid City. La convención se verá espectacularmente interrumpida por eventos que cambian el mundo.',0),(9,'Spider-Man: Across the Spider-Verse','Joaquim Dos Santos',100,'https://www.youtube.com/watch?v=cqGjhVJWtEg','http://localhost:8080/files/1686863172525_MV5BNzQ1ODUzYjktMzRiMS00ODNiLWI4NzQtOTRiN2VlNTNmODFjXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_FMjpg_UX1000_.jpg','http://localhost:8080/files/1686863172527_spider-man-across-the-spider-verse-part-one-first-teaser-tra_fmd8.1080.webp','Tras reencontrarse con Gwen Stacy, el amigable vecindario de Spider-Man de Brooklyn al completo es catapultado a través del Multiverso, donde se encuentra con un equipo de Spidermans encargados de proteger su propia existencia. Pero cuando los héroes se enfrentan sobre cómo manejar una nueva amenaza, Miles se encuentra enfrentado a las otras Arañas y debe redefinir lo que significa ser un héroe para poder salvar a la gente que más quiere.',90),(10,' El viaje de Chihiro ','Hayao Miyazaki',80,'https://youtu.be/5Fgq4Osh6XQ','http://localhost:8080/files/1686863257411_POSTER_CHIHIRO_2021.jpg','http://localhost:8080/files/1686863257413_el-viaje-de-chihiro-estreno-cines_d2yj.jpg','Chihiro es una niña de diez años que viaja en coche con sus padres. Después de atravesar un túnel, llegan a un mundo fantástico, en el que no hay lugar para los seres humanos, sólo para los dioses de primera y segunda clase. Cuando descubre que sus padres han sido convertidos en cerdos, Chihiro se siente muy sola y asustada',0),(11,'Whiplash','Damien Chazelle',90,'https://youtu.be/6x79Z5iBsJ4','http://localhost:8080/files/1686863339760_il_fullxfull.4230665308_r13v.webp','http://localhost:8080/files/1686863339765_6311.jpg','El objetivo de Andrew Neiman (Miles Teller), un joven y ambicioso baterista de jazz, es triunfar en el elitista Conservatorio de Música de la Costa Este. Marcado por el fracaso de la carrera literaria de su padre, Andrew alberga sueños de grandeza. Terence Fletcher (J.K. Simmons), un profesor conocido tanto por su talento como por sus rigurosos métodos de enseñanza, dirige el mejor conjunto de jazz del Conservatorio. Cuando Fletcher elige a Andrew para formar parte del grupo, la vida del joven cambiará.',2),(12,'Eraserhead','David Lynch',100,'https://www.youtube.com/watch?v=7WAzFWu2tVw&pp=ygUSRXJhc2VyaGVhZCB0cmFpbGVy','http://localhost:8080/files/1686863630475_eraserhead-sm-web.jpg','http://localhost:8080/files/1686863630479_20 (356).jpg','Henry Spencer, un joven depresivo y asustadizo, sufre desde pequeño unas extrañas pesadillas de las que intenta liberarse a través de su imaginación. Un día, su amiga Mary lo invita a cenar a casa; se entera entonces de que ha sido padre de un bebé prematuro y no humano. Mary y el extraño bebé se instalan en casa de Henry, donde un escenario iluminado tras el radiador muestra la presencia de una mujer.',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES (1,'2023-06-15',2,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva_tiene_asiento`
--

LOCK TABLES `reserva_tiene_asiento` WRITE;
/*!40000 ALTER TABLE `reserva_tiene_asiento` DISABLE KEYS */;
INSERT INTO `reserva_tiene_asiento` VALUES (1,1,55),(2,1,42),(3,1,43);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sesion`
--

LOCK TABLES `sesion` WRITE;
/*!40000 ALTER TABLE `sesion` DISABLE KEYS */;
INSERT INTO `sesion` VALUES (1,1,10,'2023-06-12','12:12:00'),(2,1,10,'2023-06-15','12:12:00'),(3,1,8,'2023-06-16','12:12:00'),(4,1,6,'2023-06-17','12:12:00'),(5,1,6,'2023-06-18','12:12:00'),(6,1,4,'2023-06-19','12:33:00'),(7,1,6,'2023-06-20','12:12:00'),(8,1,6,'2023-06-20','15:07:00'),(9,1,12,'2023-06-21','12:45:00'),(10,1,12,'2023-06-21','15:44:00'),(11,1,8,'2023-06-22','15:32:00'),(12,1,8,'2023-06-22','23:55:00'),(13,1,10,'2023-06-23','22:10:00'),(14,1,8,'2023-06-16','14:22:00'),(15,1,6,'2023-06-15','04:32:00'),(16,2,10,'2023-06-16','22:10:00'),(17,2,4,'2023-06-17','12:22:00'),(18,2,4,'2023-06-17','23:04:00'),(19,2,4,'2023-06-17','17:06:00'),(20,2,12,'2023-06-18','10:10:00'),(21,2,12,'2023-06-18','12:12:00'),(22,2,12,'2023-06-18','14:14:00'),(23,2,6,'2023-06-19','10:10:00'),(24,2,6,'2023-06-19','12:12:00'),(25,2,6,'2023-06-19','14:14:00'),(26,2,6,'2023-06-19','16:16:00'),(27,2,6,'2023-06-19','18:18:00'),(28,2,8,'2023-06-20','21:21:00'),(29,2,10,'2023-06-21','10:10:00'),(30,2,4,'2023-06-22','23:23:00'),(31,2,6,'2023-06-23','10:00:00'),(32,2,6,'2023-06-23','12:00:00'),(33,2,6,'2023-06-23','14:00:00'),(34,2,6,'2023-06-23','16:00:00'),(35,2,6,'2023-06-23','18:00:00');
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `sesion_AFTER_INSERT` AFTER INSERT ON `sesion` FOR EACH ROW BEGIN
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `sesion_AFTER_UPDATE` AFTER UPDATE ON `sesion` FOR EACH ROW BEGIN
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'root','root@gmail.com','e1c599b89bc64d6b30d90be12a46876fa68b34604aaeec8806232107b21989b1',NULL,'ADMIN'),(2,'ernesto','ernesto@gmail.com','e1c599b89bc64d6b30d90be12a46876fa68b34604aaeec8806232107b21989b1',NULL,'USER');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_ha_visto_pelicula`
--

LOCK TABLES `usuario_ha_visto_pelicula` WRITE;
/*!40000 ALTER TABLE `usuario_ha_visto_pelicula` DISABLE KEYS */;
INSERT INTO `usuario_ha_visto_pelicula` VALUES (1,2,8,'2023-06-15');
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

-- Dump completed on 2023-06-16  1:33:25
