CREATE DATABASE  IF NOT EXISTS `g02` 
USE `g02`;


DROP TABLE IF EXISTS `atores`;

CREATE TABLE `atores` (
  `idAtores` int(11) NOT NULL,
  `nomeAtor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idAtores`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


LOCK TABLES `atores` WRITE;

UNLOCK TABLES;



DROP TABLE IF EXISTS `atores_series`;


CREATE TABLE `atores_series` (
  `idSerie` int(11) DEFAULT NULL,
  `idAtores` int(11) DEFAULT NULL,
  KEY `idAtores` (`idAtores`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



LOCK TABLES `atores_series` WRITE;


UNLOCK TABLES;



DROP TABLE IF EXISTS `classificacao`;


CREATE TABLE `classificacao` (
  `idClassificacao` int(11) NOT NULL,
  `idConteudo` int(11) DEFAULT NULL,
  `Duracao` time DEFAULT NULL,
  `gosto` int(11) DEFAULT NULL,
  `Dislike` int(11) DEFAULT NULL,
  PRIMARY KEY (`idClassificacao`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



LOCK TABLES `classificacao` WRITE;

UNLOCK TABLES;



DROP TABLE IF EXISTS `episodios`;


CREATE TABLE `episodios` (
  `idEpisodio` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `Duracao` time DEFAULT NULL,
  `idSerie` int(11) DEFAULT NULL,
  PRIMARY KEY (`idEpisodio`),
  KEY `idSerie` (`idSerie`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


LOCK TABLES `episodios` WRITE;


UNLOCK TABLES;



DROP TABLE IF EXISTS `filme`;

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


LOCK TABLES `filme` WRITE;

UNLOCK TABLES;


DROP TABLE IF EXISTS `genero`;

CREATE TABLE `genero` (
  `idgenero` int(11) NOT NULL,
  `nomeGenero` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idgenero`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



LOCK TABLES `genero` WRITE;

UNLOCK TABLES;



DROP TABLE IF EXISTS `realizador`;

CREATE TABLE `realizador` (
  `idRealizador` int(11) NOT NULL,
  `nomeRealizador` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idRealizador`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


LOCK TABLES `realizador` WRITE;

UNLOCK TABLES;



DROP TABLE IF EXISTS `series`;

CREATE TABLE `series` (
  `idSeries` int(11) NOT NULL,
  `Temporada` int(11) DEFAULT NULL,
  `idConteudo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idSeries`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




LOCK TABLES `series` WRITE;

UNLOCK TABLES;



DROP TABLE IF EXISTS `temporada`;

CREATE TABLE `temporada` (
  `idTemporada` int(11) NOT NULL,
  `idSeries` int(11) DEFAULT NULL,
  `anoProducao` int(11) DEFAULT NULL,
  `Classificacao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idTemporada`),
  KEY `idSeries` (`idSeries`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


LOCK TABLES `temporada` WRITE;

UNLOCK TABLES;


DROP TABLE IF EXISTS `utilizador`;

CREATE TABLE `utilizador` (
  `idUtilizador` int(11) NOT NULL,
  `nomeUtilizador` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idUtilizador`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `utilizador` WRITE;

UNLOCK TABLES;

