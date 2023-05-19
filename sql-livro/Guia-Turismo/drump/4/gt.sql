CREATE DATABASE  IF NOT EXISTS `gt` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `gt`;
-- MariaDB dump 10.19  Distrib 10.4.21-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: gt
-- ------------------------------------------------------
-- Server version	10.4.21-MariaDB

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
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL DEFAULT '',
  `populacao` int(11) NOT NULL DEFAULT 0,
  `mel_restaranteA` varchar(30) DEFAULT NULL,
  `mel_restauranteB` varchar(30) DEFAULT NULL,
  `mel_restauranteC` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (2,'Déli',26000000,NULL,NULL,NULL),(3,'Xangai',22000000,NULL,NULL,NULL),(4,'Tóquio',38000000,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL DEFAULT '',
  `sigla` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'Maranhão','MA'),(2,'São Paulo','SP'),(3,'Santa Catarina','SC'),(4,'Rio de Janeiro','RJ');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linguagempais`
--

DROP TABLE IF EXISTS `linguagempais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linguagempais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigoPais` int(11) DEFAULT NULL,
  `linguagem` varchar(30) NOT NULL DEFAULT '',
  `oficial` enum('Sim','Não') NOT NULL DEFAULT 'Não',
  PRIMARY KEY (`id`),
  KEY `FK_linguagemPais` (`codigoPais`),
  CONSTRAINT `FK_linguagemPais` FOREIGN KEY (`codigoPais`) REFERENCES `pais` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linguagempais`
--

LOCK TABLES `linguagempais` WRITE;
/*!40000 ALTER TABLE `linguagempais` DISABLE KEYS */;
/*!40000 ALTER TABLE `linguagempais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL DEFAULT '',
  `continente` enum('Ásia','Europa','América','África','Oceania','Antártida') NOT NULL DEFAULT 'América',
  `codigo` char(3) NOT NULL DEFAULT '',
  `nota` int(2) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Brasil','América','BRA',10),(2,'Índia','Ásia','IND',8),(3,'China','Ásia','CHI',0),(4,'Japão','Ásia','JPN',0);
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ponto_tur`
--

DROP TABLE IF EXISTS `ponto_tur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ponto_tur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL DEFAULT '',
  `populacao` int(11) NOT NULL DEFAULT 0,
  `tipo` enum('Atrativo','Serviço','Equipamento','Infraestrutura','Instituição','Organização') DEFAULT NULL,
  `publicado` enum('Não','Sim') NOT NULL DEFAULT 'Não',
  `coordenada` geometry DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ponto_tur`
--

LOCK TABLES `ponto_tur` WRITE;
/*!40000 ALTER TABLE `ponto_tur` DISABLE KEYS */;
INSERT INTO `ponto_tur` VALUES (1,'Quinzinho de Barros',0,'Atrativo','Não',NULL),(2,'Parque Estadual do Jalapão',0,'Atrativo','Não',NULL),(3,'Torre Eiffel',0,'Atrativo','Não',NULL);
/*!40000 ALTER TABLE `ponto_tur` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-20 10:31:55
