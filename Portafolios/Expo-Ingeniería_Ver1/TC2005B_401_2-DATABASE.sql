-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: TC2005B_401_2
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `R_Administrador`
--

DROP TABLE IF EXISTS `R_Administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `R_Administrador` (
  `Id_Admin` varchar(50) NOT NULL,
  `Contrasenia` varchar(50) DEFAULT NULL,
  `NombreAd` varchar(50) DEFAULT NULL,
  `ApellidoAd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_Administrador`
--

LOCK TABLES `R_Administrador` WRITE;
/*!40000 ALTER TABLE `R_Administrador` DISABLE KEYS */;
INSERT INTO `R_Administrador` VALUES ('Ad0000000','YoAdmin','Rafael','Aguilar');
/*!40000 ALTER TABLE `R_Administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_Alumno`
--

DROP TABLE IF EXISTS `R_Alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `R_Alumno` (
  `Matricula` varchar(50) NOT NULL,
  `Contrasenia` varchar(50) DEFAULT NULL,
  `NombreAl` varchar(50) DEFAULT NULL,
  `ApellidoAl` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_Alumno`
--

LOCK TABLES `R_Alumno` WRITE;
/*!40000 ALTER TABLE `R_Alumno` DISABLE KEYS */;
INSERT INTO `R_Alumno` VALUES ('a0123','a0123','jose','casas'),('a0166222@tec.mx','123','Juan','Medina'),('A01733380','mnop','Lopez','Lopez'),('A01734370','abcd','Armando','Cercas'),('A01734380','EFGH','Jack','Black'),('A01735320','67890','Nombre','Apellido'),('A01735390','efgh','Sans','Undertale'),('a01735746','yeipi','Hector','saints'),('A01735838@tec.mx','1234','Raúl','Díaz'),('a01735839@tec.mx','1234','Raúl','Díaz Romero'),('A01736310','ijkl','Hector','King'),('A01736312','MNOP','Yfue','Asi'),('A01736380','12345','Cesar','War'),('A01736390','ABCD','Daniel','Lopez'),('A01737370','IJKL','San','Santos'),('a1','a1','Juan','casas'),('a123321@tec.mx','123','Pablo','Limon'),('aefavía','faefeafeas','fvseta','aefaefv'),('avía','erg','fv','aefv'),('aXXX','yoadmin','Adrian','Morras'),('L012459','ijkl','Naruto','Uzumaki'),('loco@tec','loco','fer','estrada');
/*!40000 ALTER TABLE `R_Alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_Alumno_Proyecto`
--

DROP TABLE IF EXISTS `R_Alumno_Proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `R_Alumno_Proyecto` (
  `Matricula` varchar(50) DEFAULT NULL,
  `Id_Proyecto` int DEFAULT NULL,
  KEY `Matricula` (`Matricula`),
  KEY `Id_Proyecto` (`Id_Proyecto`),
  CONSTRAINT `R_Alumno_Proyecto_ibfk_1` FOREIGN KEY (`Matricula`) REFERENCES `R_Alumno` (`Matricula`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `R_Alumno_Proyecto_ibfk_2` FOREIGN KEY (`Id_Proyecto`) REFERENCES `R_Proyecto` (`Id_Proyecto`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_Alumno_Proyecto`
--

LOCK TABLES `R_Alumno_Proyecto` WRITE;
/*!40000 ALTER TABLE `R_Alumno_Proyecto` DISABLE KEYS */;
INSERT INTO `R_Alumno_Proyecto` VALUES ('A01736380',2),('A01735320',4),('A01734370',5),('A01736390',29),('A01735390',30),('A01736310',4),('A01737370',29),('A01733380',5),('A01736312',30),('A01733380',44),('A01733380',45),('A01733380',46),('a01735746',47),('a01735746',48),('A01733380',49),('A01733380',50),('A01733380',51),('A01733380',52),('A01733380',53),('A01733380',54),('A01733380',55),('A01736312',55),('A01733380',56),(NULL,56),('A01735390',56),('a01735746',56),('A01736310',56),('A01734380',57),(NULL,57),('A01734370',57),('A01735320',57),('A01735390',57),('A01733380',58),('A01737370',58),('A01737370',58),('A01733380',59),('A01734370',59),('A01735320',59),('A01733380',60),('A01734370',60),('A01735320',60),('A01733380',61),('A01734370',61),('A01735390',61),('a01735746',61),('A01734380',61),('A01733380',62),(NULL,62),('A01734380',62),('A01733380',63),('a01735746',63),('A01735390',63),('A01734380',63),('A01734370',63),('A01733380',64),('A01735320',64),('A01734380',64),('A01735320',64),('A01733380',65),('A01734380',65),('A01735320',65),('A01735390',65),('A01734370',65),('A01733380',66),(NULL,66),('A01734380',66),('A01733380',67),('A01733380',68),('A01734370',68),('A01735320',68),('A01735390',68),(NULL,68),('A01733380',71),('A01734380',71),('a01735746',71),('A01733380',72),('A01734380',72),('A01733380',74),(NULL,74),('A01734380',74),('A01735320',74),(NULL,74),('A01733380',76),('A01734380',76),(NULL,76),('a123321@tec.mx',79),('A01736380',79),('a01735839@tec.mx',79),('A01737370',79),('aXXX',79),('a0123',80),('aefavía',80),('aXXX',80),('A01736310',80),('A01736380',80),('a01733380',81),('A01735838@tec.mx',81),('A01735320',81),('A01734370',81),('a0166222@tec.mx',81),('a01733380',82),('A01735320',82),('a01733380',83),('A01735320',83);
/*!40000 ALTER TABLE `R_Alumno_Proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_Anuncios`
--

DROP TABLE IF EXISTS `R_Anuncios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `R_Anuncios` (
  `Id_Anuncio` int NOT NULL AUTO_INCREMENT,
  `Id_Admin` varchar(50) DEFAULT NULL,
  `Titulo` varchar(100) DEFAULT NULL,
  `Texto` varchar(500) DEFAULT NULL,
  `Imagen` longblob,
  PRIMARY KEY (`Id_Anuncio`),
  KEY `Id_Admin` (`Id_Admin`),
  CONSTRAINT `R_Anuncios_ibfk_1` FOREIGN KEY (`Id_Admin`) REFERENCES `R_Administrador` (`Id_Admin`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_Anuncios`
--

LOCK TABLES `R_Anuncios` WRITE;
/*!40000 ALTER TABLE `R_Anuncios` DISABLE KEYS */;
INSERT INTO `R_Anuncios` VALUES (1,'Ad0000000','Primer Anuncio','Prueba de primer Anuncio',NULL),(2,'Ad0000000','Segundo anuncio','Prueba de segundo Anuncio\r\n',NULL),(3,'Ad0000000','Tercer Anuncio ','cesar matching',NULL);
/*!40000 ALTER TABLE `R_Anuncios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_Area_Estrategica`
--

DROP TABLE IF EXISTS `R_Area_Estrategica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `R_Area_Estrategica` (
  `Id_Area` int NOT NULL AUTO_INCREMENT,
  `NombreAe` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Area`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_Area_Estrategica`
--

LOCK TABLES `R_Area_Estrategica` WRITE;
/*!40000 ALTER TABLE `R_Area_Estrategica` DISABLE KEYS */;
INSERT INTO `R_Area_Estrategica` VALUES (1,'NANO'),(2,'BIO'),(3,'NEXUS'),(4,'CYBER');
/*!40000 ALTER TABLE `R_Area_Estrategica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_Edicion`
--

DROP TABLE IF EXISTS `R_Edicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `R_Edicion` (
  `Id_Edicion` int NOT NULL AUTO_INCREMENT,
  `NombreEd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Edicion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_Edicion`
--

LOCK TABLES `R_Edicion` WRITE;
/*!40000 ALTER TABLE `R_Edicion` DISABLE KEYS */;
INSERT INTO `R_Edicion` VALUES (1,'FJ 23'),(2,'FJ 22'),(3,'FJ 21');
/*!40000 ALTER TABLE `R_Edicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_Juez`
--

DROP TABLE IF EXISTS `R_Juez`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `R_Juez` (
  `Id_Juez` varchar(50) NOT NULL,
  `Contrasenia` varchar(50) DEFAULT NULL,
  `NombreJu` varchar(50) DEFAULT NULL,
  `ApellidoJu` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Juez`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_Juez`
--

LOCK TABLES `R_Juez` WRITE;
/*!40000 ALTER TABLE `R_Juez` DISABLE KEYS */;
INSERT INTO `R_Juez` VALUES ('Ju0000000','Ju1233','Marco','Frances'),('Ju0000001','Ju2344','Hermenegildo','Regil'),('Ju0000002','Ju3455','Amauri','Quillones'),('Ju1111111@gmail.com','Ju1111111','César','Guerra Martínez'),('Ju2222222@gmail.com','Ju2222222','César','Guerra Martínez'),('Ju3333333@gmail.com','Ju3333333','César','Guerra Martínez'),('Ju4444444@gmail.com','Ju4444444','César','Guerra Martínez'),('Ju5555555@gmail.com','Ju5555555','César','Guerra Martínez'),('Ju7777777@gmail.com','Ju7777777','César','Guerra Martínez'),('Ju8888888@gmail.com','Ju8888888','Cesar','Guerra');
/*!40000 ALTER TABLE `R_Juez` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_Juez_Proyecto_Calif`
--

DROP TABLE IF EXISTS `R_Juez_Proyecto_Calif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `R_Juez_Proyecto_Calif` (
  `Id_Juez` varchar(50) DEFAULT NULL,
  `Id_Proyecto` int DEFAULT NULL,
  `Calificacion` float DEFAULT NULL,
  `Nomina` varchar(50) DEFAULT NULL,
  KEY `Id_Juez` (`Id_Juez`),
  KEY `Id_Proyecto` (`Id_Proyecto`),
  KEY `Nomina` (`Nomina`),
  CONSTRAINT `R_Juez_Proyecto_Calif_ibfk_1` FOREIGN KEY (`Id_Juez`) REFERENCES `R_Juez` (`Id_Juez`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `R_Juez_Proyecto_Calif_ibfk_2` FOREIGN KEY (`Id_Proyecto`) REFERENCES `R_Proyecto` (`Id_Proyecto`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `R_Juez_Proyecto_Calif_ibfk_3` FOREIGN KEY (`Nomina`) REFERENCES `R_Profesor` (`Nomina`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_Juez_Proyecto_Calif`
--

LOCK TABLES `R_Juez_Proyecto_Calif` WRITE;
/*!40000 ALTER TABLE `R_Juez_Proyecto_Calif` DISABLE KEYS */;
INSERT INTO `R_Juez_Proyecto_Calif` VALUES ('Ju0000000',29,5,NULL);
/*!40000 ALTER TABLE `R_Juez_Proyecto_Calif` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_Nivel_Desarrollo`
--

DROP TABLE IF EXISTS `R_Nivel_Desarrollo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `R_Nivel_Desarrollo` (
  `Id_Nivel` int NOT NULL AUTO_INCREMENT,
  `Nivel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Nivel`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_Nivel_Desarrollo`
--

LOCK TABLES `R_Nivel_Desarrollo` WRITE;
/*!40000 ALTER TABLE `R_Nivel_Desarrollo` DISABLE KEYS */;
INSERT INTO `R_Nivel_Desarrollo` VALUES (1,'Idea'),(2,'Prototipo'),(3,'Funcional');
/*!40000 ALTER TABLE `R_Nivel_Desarrollo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_Profesor`
--

DROP TABLE IF EXISTS `R_Profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `R_Profesor` (
  `Nomina` varchar(50) NOT NULL,
  `Contrasenia` varchar(50) DEFAULT NULL,
  `NombrePr` varchar(50) DEFAULT NULL,
  `ApellidoPr` varchar(50) DEFAULT NULL,
  `Es_Juez` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Nomina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_Profesor`
--

LOCK TABLES `R_Profesor` WRITE;
/*!40000 ALTER TABLE `R_Profesor` DISABLE KEYS */;
INSERT INTO `R_Profesor` VALUES ('L012345','12345','Dan','Perez',0),('L013579','abcd','Armando','Casas',0),('L024680','efgh','Rosa','Lopez',0),('L067890','67890','Nombre','Apellido',1);
/*!40000 ALTER TABLE `R_Profesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_Profesor_Uf`
--

DROP TABLE IF EXISTS `R_Profesor_Uf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `R_Profesor_Uf` (
  `Nomina` varchar(50) DEFAULT NULL,
  `Id_Uf` int DEFAULT NULL,
  KEY `Nomina` (`Nomina`),
  KEY `Id_Uf` (`Id_Uf`),
  CONSTRAINT `R_Profesor_Uf_ibfk_1` FOREIGN KEY (`Nomina`) REFERENCES `R_Profesor` (`Nomina`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `R_Profesor_Uf_ibfk_2` FOREIGN KEY (`Id_Uf`) REFERENCES `R_Unidad_Formacion` (`Id_Uf`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_Profesor_Uf`
--

LOCK TABLES `R_Profesor_Uf` WRITE;
/*!40000 ALTER TABLE `R_Profesor_Uf` DISABLE KEYS */;
INSERT INTO `R_Profesor_Uf` VALUES ('L012345',2),('L067890',1),('L013579',2),('L024680',3),(NULL,3);
/*!40000 ALTER TABLE `R_Profesor_Uf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_Proyecto`
--

DROP TABLE IF EXISTS `R_Proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `R_Proyecto` (
  `Id_Proyecto` int NOT NULL AUTO_INCREMENT,
  `Nomina` varchar(50) DEFAULT NULL,
  `Id_Edicion` int DEFAULT NULL,
  `Id_Area` int DEFAULT NULL,
  `Id_Uf` int DEFAULT NULL,
  `Id_Nivel` int DEFAULT NULL,
  `NombrePy` varchar(100) DEFAULT NULL,
  `Multimedia` varchar(280) DEFAULT NULL,
  `Calif_Final` float DEFAULT NULL,
  `Autorizacion` tinyint(1) DEFAULT NULL,
  `Descripcion` varchar(800) DEFAULT NULL,
  PRIMARY KEY (`Id_Proyecto`),
  KEY `Nomina` (`Nomina`),
  KEY `Id_Edicion` (`Id_Edicion`),
  KEY `Id_Area` (`Id_Area`),
  KEY `Id_Uf` (`Id_Uf`),
  KEY `Id_Nivel` (`Id_Nivel`),
  CONSTRAINT `R_Proyecto_ibfk_1` FOREIGN KEY (`Nomina`) REFERENCES `R_Profesor` (`Nomina`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `R_Proyecto_ibfk_2` FOREIGN KEY (`Id_Edicion`) REFERENCES `R_Edicion` (`Id_Edicion`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `R_Proyecto_ibfk_3` FOREIGN KEY (`Id_Area`) REFERENCES `R_Area_Estrategica` (`Id_Area`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `R_Proyecto_ibfk_4` FOREIGN KEY (`Id_Uf`) REFERENCES `R_Unidad_Formacion` (`Id_Uf`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `R_Proyecto_ibfk_5` FOREIGN KEY (`Id_Nivel`) REFERENCES `R_Nivel_Desarrollo` (`Id_Nivel`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_Proyecto`
--

LOCK TABLES `R_Proyecto` WRITE;
/*!40000 ALTER TABLE `R_Proyecto` DISABLE KEYS */;
INSERT INTO `R_Proyecto` VALUES (2,'L013579',1,1,2,1,'hotel','http://linkfalso1',NULL,1,'Construir un hotel'),(4,'L013579',3,2,2,3,'proyecto','http://linkfalso3',NULL,0,'Hacer un proyecto'),(5,'L024680',1,3,3,1,'otro','http://linkfalso4',4,1,'Hacer otra cosa'),(29,'L012345',2,1,3,1,'peaches','http://linkfalso5',5,1,'Cultivar duraznos'),(30,'L067890',3,2,1,2,'inge','http://linkfalso6',NULL,0,'Crear una nueva ingenieria'),(31,'L012345',1,1,1,2,'pedro','.com.mc',NULL,0,'picapapas'),(32,'L024680',1,3,1,1,'PRUEBA MNOP','drive.com.mx',NULL,0,'LALO'),(33,'L012345',1,3,1,1,'prueba22','2222',NULL,0,'22'),(34,'L012345',1,3,1,1,'prueba22','2222',NULL,0,'22'),(35,'L012345',1,3,1,1,'prueba22','2222',NULL,0,'22'),(36,'L012345',1,2,2,2,'tre','rewq',NULL,0,'re'),(37,'L012345',1,2,2,2,'tre','rewq',NULL,0,'re'),(38,'L013579',1,3,2,2,'wref','sefs',NULL,0,'wef'),(39,'L012345',1,2,2,3,'ybtrervgf','drive.com.mx',NULL,0,'btgevr'),(40,'L012345',1,2,2,3,'ybtrervgf','drive.com.mx',NULL,0,'btgevr'),(42,'L013579',1,2,1,3,'ergfer','hjmghng',NULL,0,'erge'),(44,'L013579',1,3,2,2,'PRUEBA CON AMIGOS','ACFAE',NULL,0,'PREDOggggggggggggggggggggggggggggggjggngngnngngggggggggngngg'),(45,'L024680',1,2,2,2,'EFWEF','WEFW',NULL,0,'LALO'),(46,'L024680',1,2,2,3,'ETHE','ERGWFEQDW',NULL,0,'ERGER'),(47,'L012345',1,2,2,3,'HECTOR Y YEIPI','drivepepeylolita.com.mx',NULL,0,'AMOR MUTUO'),(48,NULL,1,3,2,1,'YEIPI','JP-YEIPOI PARA LO QUE NO SEPAN.COM',NULL,0,'MEDINA'),(49,'L067890',1,4,2,3,'Mantis religiosa','mamaayala',NULL,0,'loooco'),(50,'L012345',1,2,2,3,'pepe','AMIGO4',NULL,0,'sa'),(51,'L067890',1,2,1,2,'MEEEEEEH','MEMO',NULL,0,'MEEEEH'),(52,'L012345',1,4,1,2,'MEEEEH','drive.com.mx',NULL,0,'MEMS'),(53,'L012345',1,2,3,1,'qwd','asd',NULL,1,'qsd'),(54,'L067890',1,2,2,1,'PRUEBA MNOPPAPAAAA','A',NULL,0,'wdcafs'),(55,'L012345',1,1,1,3,'pedroPEEEEE','ADVADVDS',NULL,0,'EFSV'),(56,'L012345',1,2,3,1,'DICLOFENACO PARA LAS HEMORROIDES','drive.com.mx',NULL,0,'CON ATUN'),(57,'L067890',1,3,1,3,'TREEE','EFAE',NULL,0,'EFAF'),(58,'L012345',1,3,1,2,'etg','tbds',NULL,0,'wef'),(59,NULL,1,2,3,1,'PRUEBA INCOMPLETOS','CVBNM,',NULL,0,'EGWR'),(60,NULL,1,2,3,1,'PRUEBA INCOMPLETOS','CVBNM,',NULL,0,'EGWR'),(61,'L067890',1,2,1,3,'WERF','drive.com.mx',NULL,0,'EWF'),(62,NULL,1,1,1,2,'PRUEBAAAAAASA','.com.mc',NULL,0,'DEF'),(63,'L013579',1,3,2,2,'rbevwc','.com.mc',NULL,0,'wef'),(64,'L013579',1,2,1,3,'eryh','.com.mc',NULL,0,'twhg'),(65,'L013579',1,2,2,2,'PROYECTO MEMINGOS','.com.mc',NULL,0,'wef'),(66,'L067890',1,2,2,2,'MEMANGOS','drive.com.mx',NULL,0,'WRV'),(67,'L024680',1,2,2,1,'DC','SD',NULL,0,'VWV'),(68,'L024680',1,2,1,1,'yrtgerfwedqws','tearwa',NULL,0,'hwgqf'),(71,'L067890',1,2,2,3,'eyrwtgeqrfw','qg',NULL,0,'hwtgeqrfwe'),(72,'L067890',1,4,2,1,'trg','srgwr',NULL,0,'rewg'),(74,'L013579',1,2,1,2,'rwfe','sefesf',NULL,0,'wef'),(76,'L012345',1,2,2,1,'sgba','wrvwr',NULL,0,'asf'),(79,'L067890',1,1,1,2,'Supercarro','www.proyecto',NULL,0,'Vuela'),(80,'L067890',1,1,3,1,'kekdd','ddkkd.co',NULL,0,'kdkdd'),(81,'L013579',1,2,2,1,'qtebv','etrb3rb',NULL,0,'qerbq'),(82,'L013579',1,2,2,3,'4g4tb','4tbt4b',NULL,0,'4tbt4b'),(83,'L013579',1,2,2,3,'wec','ecfqec',NULL,0,'ec');
/*!40000 ALTER TABLE `R_Proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_Unidad_Formacion`
--

DROP TABLE IF EXISTS `R_Unidad_Formacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `R_Unidad_Formacion` (
  `Id_Uf` int NOT NULL AUTO_INCREMENT,
  `NombreUf` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Uf`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_Unidad_Formacion`
--

LOCK TABLES `R_Unidad_Formacion` WRITE;
/*!40000 ALTER TABLE `R_Unidad_Formacion` DISABLE KEYS */;
INSERT INTO `R_Unidad_Formacion` VALUES (1,'TC1'),(2,'TC2'),(3,'TC3');
/*!40000 ALTER TABLE `R_Unidad_Formacion` ENABLE KEYS */;
UNLOCK TABLES;
