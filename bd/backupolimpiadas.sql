CREATE DATABASE  IF NOT EXISTS `bdolimpiadas` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bdolimpiadas`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: bdolimpiadas
-- ------------------------------------------------------
-- Server version	5.6.24-log

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
-- Table structure for table `tab_ciudades`
--

DROP TABLE IF EXISTS `tab_ciudades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_ciudades` (
  `IDCIUDAD` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRECIUDAD` varchar(50) DEFAULT NULL,
  `PAIS` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IDCIUDAD`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_ciudades`
--

LOCK TABLES `tab_ciudades` WRITE;
/*!40000 ALTER TABLE `tab_ciudades` DISABLE KEYS */;
INSERT INTO `tab_ciudades` VALUES (1,'Buenos Aires','Argentina'),(2,'Río de Janeiro','Brasil'),(3,'Lima','Perú');
/*!40000 ALTER TABLE `tab_ciudades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_deportes`
--

DROP TABLE IF EXISTS `tab_deportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_deportes` (
  `IDDEPORTE` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBREDEPORTE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IDDEPORTE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_deportes`
--

LOCK TABLES `tab_deportes` WRITE;
/*!40000 ALTER TABLE `tab_deportes` DISABLE KEYS */;
INSERT INTO `tab_deportes` VALUES (1,'Fútbol'),(2,'Atletismo'),(3,'Natación');
/*!40000 ALTER TABLE `tab_deportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_deportistas`
--

DROP TABLE IF EXISTS `tab_deportistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_deportistas` (
  `IDDEPORTISTA` int(11) NOT NULL AUTO_INCREMENT,
  `IDNACIONALIDAD` int(11) DEFAULT NULL,
  `NOMBREDEPORTISTA` varchar(100) DEFAULT NULL,
  `FECHANACIMIENTO` date DEFAULT NULL,
  `TELEFONO` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IDDEPORTISTA`),
  KEY `FK_REFERENCE_1` (`IDNACIONALIDAD`),
  CONSTRAINT `FK_REFERENCE_1` FOREIGN KEY (`IDNACIONALIDAD`) REFERENCES `tab_nacionalidades` (`IDNACIONALIDAD`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_deportistas`
--

LOCK TABLES `tab_deportistas` WRITE;
/*!40000 ALTER TABLE `tab_deportistas` DISABLE KEYS */;
INSERT INTO `tab_deportistas` VALUES (1,1,'Lionel Messi','1987-06-24','123456789'),(2,2,'Neymar Jr.','1992-02-05','987654321'),(3,3,'Paola Espinosa','1986-07-31','555666777');
/*!40000 ALTER TABLE `tab_deportistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_eventos`
--

DROP TABLE IF EXISTS `tab_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_eventos` (
  `IDEVENTO` int(11) NOT NULL AUTO_INCREMENT,
  `IDDEPORTE` int(11) DEFAULT NULL,
  `IDSEDE` int(11) DEFAULT NULL,
  `NOMBREEVENTO` varchar(50) DEFAULT NULL,
  `FECHAEVENTO` date DEFAULT NULL,
  PRIMARY KEY (`IDEVENTO`),
  KEY `FK_REFERENCE_3` (`IDDEPORTE`),
  KEY `FK_REFERENCE_4` (`IDSEDE`),
  CONSTRAINT `FK_REFERENCE_3` FOREIGN KEY (`IDDEPORTE`) REFERENCES `tab_deportes` (`IDDEPORTE`),
  CONSTRAINT `FK_REFERENCE_4` FOREIGN KEY (`IDSEDE`) REFERENCES `tab_sedesolimpicas` (`IDSEDE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_eventos`
--

LOCK TABLES `tab_eventos` WRITE;
/*!40000 ALTER TABLE `tab_eventos` DISABLE KEYS */;
INSERT INTO `tab_eventos` VALUES (1,1,1,'Final de Fútbol','2024-08-10'),(2,2,2,'Carrera de 100m','2028-07-15'),(3,3,3,'Natación 200m Libres','2032-09-05');
/*!40000 ALTER TABLE `tab_eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_nacionalidades`
--

DROP TABLE IF EXISTS `tab_nacionalidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_nacionalidades` (
  `IDNACIONALIDAD` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRENACIONALIDAD` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IDNACIONALIDAD`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_nacionalidades`
--

LOCK TABLES `tab_nacionalidades` WRITE;
/*!40000 ALTER TABLE `tab_nacionalidades` DISABLE KEYS */;
INSERT INTO `tab_nacionalidades` VALUES (1,'Argentina'),(2,'Brasil'),(3,'Perú');
/*!40000 ALTER TABLE `tab_nacionalidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_resultados`
--

DROP TABLE IF EXISTS `tab_resultados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_resultados` (
  `IDRESULTADO` int(11) NOT NULL AUTO_INCREMENT,
  `IDEVENTO` int(11) DEFAULT NULL,
  `IDDEPORTISTA` int(11) DEFAULT NULL,
  `POSICION` int(11) DEFAULT NULL,
  `MARCATIEMPO` time DEFAULT NULL,
  `RONDA` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IDRESULTADO`),
  KEY `FK_REFERENCE_5` (`IDEVENTO`),
  KEY `FK_REFERENCE_6` (`IDDEPORTISTA`),
  CONSTRAINT `FK_REFERENCE_5` FOREIGN KEY (`IDEVENTO`) REFERENCES `tab_eventos` (`IDEVENTO`),
  CONSTRAINT `FK_REFERENCE_6` FOREIGN KEY (`IDDEPORTISTA`) REFERENCES `tab_deportistas` (`IDDEPORTISTA`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_resultados`
--

LOCK TABLES `tab_resultados` WRITE;
/*!40000 ALTER TABLE `tab_resultados` DISABLE KEYS */;
INSERT INTO `tab_resultados` VALUES (1,1,1,1,'01:30:00','final');
/*!40000 ALTER TABLE `tab_resultados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_sedesolimpicas`
--

DROP TABLE IF EXISTS `tab_sedesolimpicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_sedesolimpicas` (
  `IDSEDE` int(11) NOT NULL AUTO_INCREMENT,
  `IDCIUDAD` int(11) DEFAULT NULL,
  `NOMBRESEDE` varchar(50) DEFAULT NULL,
  `ANIOCELEBRACION` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDSEDE`),
  KEY `FK_REFERENCE_2` (`IDCIUDAD`),
  CONSTRAINT `FK_REFERENCE_2` FOREIGN KEY (`IDCIUDAD`) REFERENCES `tab_ciudades` (`IDCIUDAD`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_sedesolimpicas`
--

LOCK TABLES `tab_sedesolimpicas` WRITE;
/*!40000 ALTER TABLE `tab_sedesolimpicas` DISABLE KEYS */;
INSERT INTO `tab_sedesolimpicas` VALUES (1,1,'Estadio Olímpico',2024),(2,2,'Maracanã',2028),(3,3,'Estadio Nacional',2032);
/*!40000 ALTER TABLE `tab_sedesolimpicas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_usuarios`
--

DROP TABLE IF EXISTS `tab_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_usuarios` (
  `IDUSUARIO` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBREUSUARIO` varchar(50) DEFAULT NULL,
  `USUARIO` varchar(50) DEFAULT NULL,
  `CLAVE` varchar(50) DEFAULT NULL,
  `ROL` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IDUSUARIO`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_usuarios`
--

LOCK TABLES `tab_usuarios` WRITE;
/*!40000 ALTER TABLE `tab_usuarios` DISABLE KEYS */;
INSERT INTO `tab_usuarios` VALUES (1,'Admin1','admin1','adminpass','admin'),(2,'Usuario1','user1','userpass','admin'),(3,'Usuario2','user2','userpass','admin');
/*!40000 ALTER TABLE `tab_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bdolimpiadas'
--

--
-- Dumping routines for database 'bdolimpiadas'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-15 17:52:21
