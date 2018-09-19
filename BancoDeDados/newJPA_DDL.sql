-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: coopfit
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.35-MariaDB

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
-- Table structure for table `t_dispositivo`
--

DROP TABLE IF EXISTS `t_dispositivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_dispositivo` (
  `id_dispositivo` bigint(20) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) NOT NULL,
  `cd_pessoa` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_dispositivo`),
  KEY `FKp61ek2wr9utkcuhb4ei1ovkd8` (`cd_pessoa`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_dispositivo_sensor`
--

DROP TABLE IF EXISTS `t_dispositivo_sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_dispositivo_sensor` (
  `id_dispositivo_sensor` bigint(20) NOT NULL AUTO_INCREMENT,
  `data` datetime NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `valor` double NOT NULL,
  `id_dispositivo` bigint(20) DEFAULT NULL,
  `cd_pessoa` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_dispositivo_sensor`),
  KEY `FKe0dywcodl5vn1rqe3qiqtcoe` (`id_dispositivo`),
  KEY `FK9ep67i8xouxs6sgymokwc2jkj` (`cd_pessoa`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_informativo_saude`
--

DROP TABLE IF EXISTS `t_informativo_saude`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_informativo_saude` (
  `id_informacao_saude` bigint(20) NOT NULL AUTO_INCREMENT,
  `data` datetime NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `cd_pessoa` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_informacao_saude`),
  KEY `FK5mlqey0522rrf7gj4axdnsxr6` (`cd_pessoa`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_informe_tratativas`
--

DROP TABLE IF EXISTS `t_informe_tratativas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_informe_tratativas` (
  `id_informativo` bigint(20) NOT NULL AUTO_INCREMENT,
  `data` datetime NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `cd_pessoa` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_informativo`),
  KEY `FKikatiqn4210kcvkwoaymr60r4` (`cd_pessoa`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_notificacao`
--

DROP TABLE IF EXISTS `t_notificacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_notificacao` (
  `id_notificacao` bigint(20) NOT NULL AUTO_INCREMENT,
  `data` datetime NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `cd_pessoa` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_notificacao`),
  KEY `FK82t6309fqhyprt0e3mblin3na` (`cd_pessoa`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_perfis`
--

DROP TABLE IF EXISTS `t_perfis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_perfis` (
  `pessoa_cd_pessoa` bigint(20) NOT NULL,
  `perfis` int(11) DEFAULT NULL,
  KEY `FKtq4dcrypyuqrrxuu74xdwh7ky` (`pessoa_cd_pessoa`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_pessoa`
--

DROP TABLE IF EXISTS `t_pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pessoa` (
  `cd_pessoa` bigint(20) NOT NULL AUTO_INCREMENT,
  `dt_alteracao` datetime NOT NULL,
  `altura` double NOT NULL,
  `dt_cadastro` datetime NOT NULL,
  `email` varchar(255) NOT NULL,
  `foto` tinyblob,
  `ds_genero` int(11) NOT NULL,
  `dt_nascimento` datetime NOT NULL,
  `nome` varchar(255) NOT NULL,
  `recebe_notificacao` bit(1) NOT NULL,
  `observacao` varchar(255) DEFAULT NULL,
  `peso` double NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`cd_pessoa`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_questionario`
--

DROP TABLE IF EXISTS `t_questionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_questionario` (
  `id_questionario` bigint(20) NOT NULL AUTO_INCREMENT,
  `dt_questionario` datetime DEFAULT NULL,
  `qt_estresse` int(11) DEFAULT NULL,
  `qt_copo_agua` int(11) DEFAULT NULL,
  `tp_sentimento` varchar(255) DEFAULT NULL,
  `cd_pessoa` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_questionario`),
  KEY `FK1wpkehha8jvt5cosdr5yqbj7a` (`cd_pessoa`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_rotina`
--

DROP TABLE IF EXISTS `t_rotina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_rotina` (
  `id_rotina` bigint(20) NOT NULL AUTO_INCREMENT,
  `data` datetime NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `tipo` int(11) NOT NULL,
  `cd_pessoa` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_rotina`),
  KEY `FKkqdfl9hwv9v6h7aer0p9kfr0v` (`cd_pessoa`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-17 21:05:03
