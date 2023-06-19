CREATE DATABASE  IF NOT EXISTS `g02` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `g02`;


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



DROP TABLE IF EXISTS `atores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atores` (
  `idAtores` int(11) NOT NULL,
  `nomeAtor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idAtores`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;



LOCK TABLES `atores` WRITE;
/*!40000 ALTER TABLE `atores` DISABLE KEYS */;
/*!40000 ALTER TABLE `atores` ENABLE KEYS */;
UNLOCK TABLES;



DROP TABLE IF EXISTS `atores_series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atores_series` (
  `idSerie` int(11) DEFAULT NULL,
  `idAtores` int(11) DEFAULT NULL,
  KEY `idAtores` (`idAtores`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `atores_series` WRITE;
/*!40000 ALTER TABLE `atores_series` DISABLE KEYS */;
/*!40000 ALTER TABLE `atores_series` ENABLE KEYS */;
UNLOCK TABLES;



DROP TABLE IF EXISTS `classificacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classificacao` (
  `idClassificacao` int(11) NOT NULL,
  `idConteudo` int(11) DEFAULT NULL,
  `Duracao` time DEFAULT NULL,
  `gosto` int(11) DEFAULT NULL,
  `Dislike` int(11) DEFAULT NULL,
  PRIMARY KEY (`idClassificacao`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;



LOCK TABLES `classificacao` WRITE;
/*!40000 ALTER TABLE `classificacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `classificacao` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `episodios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `episodios` (
  `idEpisodio` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `Duracao` time DEFAULT NULL,
  `idSerie` int(11) DEFAULT NULL,
  PRIMARY KEY (`idEpisodio`),
  KEY `idSerie` (`idSerie`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;



LOCK TABLES `episodios` WRITE;
/*!40000 ALTER TABLE `episodios` DISABLE KEYS */;
/*!40000 ALTER TABLE `episodios` ENABLE KEYS */;
UNLOCK TABLES;



DROP TABLE IF EXISTS `filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filme` (
  `idFilme` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `duracao` time DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `publicoAlvo` varchar(255) DEFAULT NULL,
  `sinopse` text,
  `idGenero` int(11) DEFAULT NULL,
  `idRealizador` int(11) DEFAULT NULL,
  PRIMARY KEY (`idFilme`),
  KEY `idGenero` (`idGenero`),
  KEY `idRealizador` (`idRealizador`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;



LOCK TABLES `filme` WRITE;
/*!40000 ALTER TABLE `filme` DISABLE KEYS */;
/*!40000 ALTER TABLE `filme` ENABLE KEYS */;
UNLOCK TABLES;



DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `idgenero` int(11) NOT NULL,
  `nomeGenero` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idgenero`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;



DROP TABLE IF EXISTS `realizador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realizador` (
  `idRealizador` int(11) NOT NULL,
  `nomeRealizador` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idRealizador`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `realizador` WRITE;
/*!40000 ALTER TABLE `realizador` DISABLE KEYS */;
/*!40000 ALTER TABLE `realizador` ENABLE KEYS */;
UNLOCK TABLES;



DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `series` (
  `idSeries` int(11) NOT NULL,
  `Temporada` int(11) DEFAULT NULL,
  `idConteudo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idSeries`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;



LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;



DROP TABLE IF EXISTS `temporada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temporada` (
  `idTemporada` int(11) NOT NULL,
  `idSeries` int(11) DEFAULT NULL,
  `anoProducao` int(11) DEFAULT NULL,
  `Classificacao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idTemporada`),
  KEY `idSeries` (`idSeries`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;



LOCK TABLES `temporada` WRITE;
/*!40000 ALTER TABLE `temporada` DISABLE KEYS */;
/*!40000 ALTER TABLE `temporada` ENABLE KEYS */;
UNLOCK TABLES;



DROP TABLE IF EXISTS `utilizador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utilizador` (
  `idUtilizador` int(11) NOT NULL,
  `nomeUtilizador` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idUtilizador`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `utilizador` WRITE;
/*!40000 ALTER TABLE `utilizador` DISABLE KEYS */;
/*!40000 ALTER TABLE `utilizador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


