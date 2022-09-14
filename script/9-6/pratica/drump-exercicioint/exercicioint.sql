CREATE DATABASE  IF NOT EXISTS `exercicioint` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `exercicioint`;
-- MariaDB dump 10.19  Distrib 10.4.21-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: exercicioint
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
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aluno` (
  `aluno_numero` int(11) NOT NULL AUTO_INCREMENT,
  `aluno_nome` varchar(30) DEFAULT NULL,
  `aluno_rua` varchar(30) DEFAULT NULL,
  `aluno_cidade` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`aluno_numero`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'Tiago Matheus Junior','210','Palmas'),(2,'Luciana Gomes','202','Palmas'),(3,'João Mateus','2300','Gurupi'),(4,'José Silva','1024','Paraíso'),(5,'Juraci','106','Miranorte'),(6,'Paulo','101','Goianorte'),(7,'Adriana Calcanhoto','rua Alvorada','Paraíso'),(8,'Rosane','rua das flores','Guarai'),(9,'Mara','rua das águas','Porto Nacional'),(10,'Julia','rua de madeira','Paraíso'),(11,'Julia','rua de madeira','Palmas');
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `sobreNome` varchar(30) DEFAULT NULL,
  `data_nasc` date NOT NULL DEFAULT '1900-01-01',
  `idade` int(11) DEFAULT NULL,
  `cpf` int(11) DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `salario` float DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Leo','Pires','1980-10-10',34,123456789,'M',540),(2,'Leoncio','Silva','1982-05-01',32,987654321,'M',1500),(3,'Leandro','Souza','1960-12-30',54,654987321,'M',2000);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professor` (
  `prof_numero` int(11) NOT NULL AUTO_INCREMENT,
  `prof_nome` varchar(30) DEFAULT NULL,
  `prof_rua` varchar(30) DEFAULT NULL,
  `prof_cidade` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`prof_numero`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'João Jose','103','Palmas'),(2,'Maria José','201','Palmas'),(3,'Bruno','305','Paraiso'),(4,'José Ricardo','1106','Porto Nacional'),(5,'Manuela','120','Araguaína'),(6,'Bruno','1003','Porto Nacional'),(7,'Luciana','100','Miracema'),(8,'Paulo','150','Palmas'),(9,'Lual','1006','Paraíso'),(10,'Antonio Marcos','170','Araguaína');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-14 10:15:35
