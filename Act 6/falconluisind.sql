-- MariaDB dump 10.19  Distrib 10.4.18-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: falconluisind
-- ------------------------------------------------------
-- Server version	10.4.18-MariaDB

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
-- Table structure for table `libro`
--

DROP TABLE IF EXISTS `libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libro` (
  `id_libro` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `creador` varchar(50) NOT NULL,
  `año` int(4) NOT NULL,
  `editorial` varchar(20) DEFAULT NULL,
  `lugar` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_libro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES (1,'Los viajes de Ulises','Homero',2017,'Gredos','España'),(2,'El hombre de San Petesburgo','Ken Follet',2018,'DeBolsillo','España'),(3,'Colmillo Blanco','Jack London',1906,'Nómadas del tiempo','España'),(4,'La guerra de los mundos','H.G. Wells',2000,'Época','México'),(5,'Sin novedad en el frente','Erich María Remarque',2018,'Porrúa','México');
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musica`
--

DROP TABLE IF EXISTS `musica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musica` (
  `id_musica` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `creador` varchar(50) NOT NULL,
  `año` int(4) NOT NULL,
  `album` varchar(50) DEFAULT 'The Wall',
  PRIMARY KEY (`id_musica`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musica`
--

LOCK TABLES `musica` WRITE;
/*!40000 ALTER TABLE `musica` DISABLE KEYS */;
INSERT INTO `musica` VALUES (1,'Animal','Wos',2018,'WOL'),(2,'Bohemian Rhapsody','Queen',1975,'A night at the Opera'),(3,'Mr. Brightside','The strokes',2004,'Hos Fuss'),(4,'I miss you','Blink-132',2003,'The Wall'),(5,'Estrictos','NahueMC',2017,'The Wall');
/*!40000 ALTER TABLE `musica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `películas`
--

DROP TABLE IF EXISTS `películas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `películas` (
  `id_peliculas` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `creador` varchar(50) NOT NULL,
  `año` int(4) NOT NULL,
  `actor_principal` varchar(20) DEFAULT NULL,
  `clasificacion` enum('AA','A','B','B15','C') DEFAULT 'AA',
  PRIMARY KEY (`id_peliculas`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `películas`
--

LOCK TABLES `películas` WRITE;
/*!40000 ALTER TABLE `películas` DISABLE KEYS */;
/*!40000 ALTER TABLE `películas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videjuegos`
--

DROP TABLE IF EXISTS `videjuegos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videjuegos` (
  `id_videjuego` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `creador` varchar(50) NOT NULL,
  `año` int(4) NOT NULL,
  `protagonista` varchar(20) DEFAULT 'Sans',
  PRIMARY KEY (`id_videjuego`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videjuegos`
--

LOCK TABLES `videjuegos` WRITE;
/*!40000 ALTER TABLE `videjuegos` DISABLE KEYS */;
INSERT INTO `videjuegos` VALUES (1,'Undertale','Toby Fox',2017,'Sans'),(2,'Minecraft','Markus',2013,'Sans'),(3,'Cuphead','Chad',2017,'Red cup'),(4,'Left4Dead2','VALVe',2006,'Sans'),(5,'Resident Evil 7','Capcom',2017,'Ethan');
/*!40000 ALTER TABLE `videjuegos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-14 21:28:10
