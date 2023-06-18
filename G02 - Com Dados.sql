CREATE DATABASE  IF NOT EXISTS `g02` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `g02`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: g02
-- ------------------------------------------------------
-- Server version	5.7.40

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
-- Table structure for table `atores`
--

DROP TABLE IF EXISTS `atores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atores` (
  `idAtores` int(11) NOT NULL,
  `nomeAtor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idAtores`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atores`
--

LOCK TABLES `atores` WRITE;
/*!40000 ALTER TABLE `atores` DISABLE KEYS */;
INSERT INTO `atores` VALUES (1,'Tom Hanks'),(2,'Meryl Streep'),(3,'Leonardo DiCaprio'),(4,'Jennifer Lawrence'),(5,'Robert Downey Jr.'),(6,'Natalie Portman'),(7,'Brad Pitt'),(8,'Scarlett Johansson'),(9,'Johnny Depp'),(10,'Emma Stone'),(11,'Chris Hemsworth'),(12,'Charlize Theron'),(13,'Matt Damon'),(14,'Anne Hathaway'),(15,'Will Smith'),(16,'Cate Blanchett'),(17,'Denzel Washington'),(18,'Angelina Jolie'),(19,'Ryan Gosling'),(20,'Julia Roberts'),(21,'Christian Bale'),(22,'Amy Adams'),(23,'Samuel L. Jackson'),(24,'Kate Winslet'),(25,'Chris Evans'),(26,'Jessica Chastain'),(27,'Joaquin Phoenix'),(28,'Sandra Bullock'),(29,'Mark Ruffalo'),(30,'Emma Watson');
/*!40000 ALTER TABLE `atores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atores_series`
--

DROP TABLE IF EXISTS `atores_series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atores_series` (
  `idSerie` int(11) DEFAULT NULL,
  `idAtores` int(11) DEFAULT NULL,
  KEY `idAtores` (`idAtores`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atores_series`
--

LOCK TABLES `atores_series` WRITE;
/*!40000 ALTER TABLE `atores_series` DISABLE KEYS */;
INSERT INTO `atores_series` VALUES (1,1),(1,2),(1,3),(2,2),(2,4),(2,5),(3,1),(3,6),(3,7),(4,8),(4,9),(4,10),(5,11),(5,12),(5,13),(6,7),(6,14),(6,15),(7,5),(7,16),(7,17),(8,18),(8,19),(8,20),(9,21),(9,22),(9,23),(10,24),(10,25),(10,26);
/*!40000 ALTER TABLE `atores_series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classificacao`
--

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

--
-- Dumping data for table `classificacao`
--

LOCK TABLES `classificacao` WRITE;
/*!40000 ALTER TABLE `classificacao` DISABLE KEYS */;
INSERT INTO `classificacao` VALUES (1,101,'02:00:00',100,20),(2,102,'01:30:00',85,10),(3,103,'02:15:00',92,8),(4,104,'01:45:00',75,15),(5,105,'02:30:00',90,5),(6,106,'01:50:00',80,12),(7,107,'02:10:00',88,7),(8,108,'01:40:00',78,18),(9,109,'02:05:00',95,4),(10,110,'01:55:00',82,14),(11,111,'02:20:00',93,6),(12,112,'01:30:00',87,11),(13,113,'02:15:00',83,16),(14,114,'02:30:00',91,9),(15,115,'01:40:00',77,19),(16,116,'02:05:00',89,8),(17,117,'01:50:00',79,17),(18,118,'02:10:00',86,13),(19,119,'01:45:00',84,10),(20,120,'02:20:00',94,7),(21,121,'01:55:00',81,15),(22,122,'02:30:00',88,5),(23,123,'01:40:00',76,12),(24,124,'02:05:00',90,9),(25,125,'01:50:00',85,18),(26,126,'02:15:00',92,6),(27,127,'02:30:00',89,13),(28,128,'01:45:00',83,16),(29,129,'02:10:00',87,11),(30,130,'02:20:00',91,7);
/*!40000 ALTER TABLE `classificacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `episodios`
--

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

--
-- Dumping data for table `episodios`
--

LOCK TABLES `episodios` WRITE;
/*!40000 ALTER TABLE `episodios` DISABLE KEYS */;
INSERT INTO `episodios` VALUES (1,'Episódio 1','00:45:00',101),(2,'Episódio 2','00:50:00',101),(3,'Episódio 3','00:47:00',101),(4,'Episódio 1','00:55:00',102),(5,'Episódio 2','00:48:00',102),(6,'Episódio 3','00:52:00',102),(7,'Episódio 1','00:43:00',103),(8,'Episódio 2','00:51:00',103),(9,'Episódio 3','00:46:00',103),(10,'Episódio 1','00:52:00',104),(11,'Episódio 2','00:45:00',104),(12,'Episódio 3','00:50:00',104),(13,'Episódio 1','00:48:00',105),(14,'Episódio 2','00:47:00',105),(15,'Episódio 3','00:55:00',105),(16,'Episódio 1','00:50:00',106),(17,'Episódio 2','00:43:00',106),(18,'Episódio 3','00:51:00',106),(19,'Episódio 1','00:46:00',107),(20,'Episódio 2','00:52:00',107),(21,'Episódio 3','00:45:00',107),(22,'Episódio 1','00:51:00',108),(23,'Episódio 2','00:48:00',108),(24,'Episódio 3','00:47:00',108),(25,'Episódio 1','00:55:00',109),(26,'Episódio 2','00:43:00',109),(27,'Episódio 3','00:52:00',109),(28,'Episódio 1','00:46:00',110),(29,'Episódio 2','00:50:00',110),(30,'Episódio 3','00:48:00',110);
/*!40000 ALTER TABLE `episodios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filme`
--

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

--
-- Dumping data for table `filme`
--

LOCK TABLES `filme` WRITE;
/*!40000 ALTER TABLE `filme` DISABLE KEYS */;
INSERT INTO `filme` VALUES (1,'The Shawshank Redemption','00:01:42',1994,'16+','Two imprisoned men bond over several years, finding solace and eventual redemption through acts of common decency.',2,1),(31,'The Shawshank Redemption','02:22:00',1994,'16+','Two imprisoned men bond over several years, finding solace and eventual redemption through acts of common decency.',2,1),(32,'The Godfather','02:55:00',1972,'16+','The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',1,2),(33,'Pulp Fiction','02:34:00',1994,'18+','The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.',4,4),(34,'The Dark Knight','02:32:00',2008,'12+','When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.',1,3),(35,'Forrest Gump','02:22:00',1994,'12+','The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate and other historical events unfold through the perspective of an Alabama man with an IQ of 75.',2,5),(36,'Inception','02:28:00',2010,'12+','A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.',6,3),(37,'The Matrix','02:16:00',1999,'14+','A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.',6,6),(38,'Schindler\'s List','03:15:00',1993,'16+','In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.',2,1),(39,'Fight Club','02:19:00',1999,'18+','An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.',4,8),(40,'The Lord of the Rings: The Fellowship of the Ring','02:58:00',2001,'12+','A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.',8,4),(41,'The Avengers','02:23:00',2012,'12+','Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.',1,7),(42,'The Lion King','01:28:00',1994,'0+','Lion prince Simba and his father are targeted by his bitter uncle, who wants to ascend the throne himself.',5,9),(43,'Inglourious Basterds','02:33:00',2009,'18+','In Nazi-occupied France during World War II, a plan to assassinate Nazi leaders by a group of Jewish U.S. soldiers coincides with a theatre owner\'s vengeful plans for the same.',4,10),(44,'Titanic','03:14:00',1997,'12+','A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.',5,11),(45,'Jurassic Park','02:07:00',1993,'12+','A pragmatic paleontologist visiting an almost complete theme park is tasked with protecting a couple of kids after a power failure causes the park\'s cloned dinosaurs to run loose.',6,12),(46,'The Dark Knight Rises','02:44:00',2012,'12+','Eight years after the Joker\'s reign of anarchy, Batman is forced out of retirement to save Gotham City from the brutal guerrilla terrorist Bane.',1,3),(47,'The Shawshank Redemption','02:22:00',1994,'16+','Two imprisoned men bond over several years, finding solace and eventual redemption through acts of common decency.',2,1),(48,'The Godfather','02:55:00',1972,'16+','The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',1,2),(49,'Pulp Fiction','02:34:00',1994,'18+','The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.',4,4),(50,'The Dark Knight','02:32:00',2008,'12+','When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.',1,3),(51,'Forrest Gump','02:22:00',1994,'12+','The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate and other historical events unfold through the perspective of an Alabama man with an IQ of 75.',2,5),(52,'Inception','02:28:00',2010,'12+','A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.',6,3),(53,'The Matrix','02:16:00',1999,'14+','A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.',6,6),(54,'Schindler\'s List','03:15:00',1993,'16+','In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.',2,1),(55,'Fight Club','02:19:00',1999,'18+','An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.',4,8),(56,'The Lord of the Rings: The Fellowship of the Ring','02:58:00',2001,'12+','A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.',8,4),(57,'Goodfellas','02:26:00',1990,'18+','The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.',1,7),(58,'The Silence of the Lambs','01:58:00',1991,'16+','A young FBI cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.',4,9),(59,'The Avengers: Endgame','03:01:00',2019,'12+','After the devastating events of Avengers: Infinity War, the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos\' actions and restore balance to the universe.',1,7),(60,'Interstellar','02:49:00',2014,'12+','A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.',6,10),(61,'The Pianist','02:30:00',2002,'16+','A Polish Jewish musician struggles to survive the destruction of the Warsaw ghetto of World War II.',2,11);
/*!40000 ALTER TABLE `filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `idgenero` int(11) NOT NULL,
  `nomeGenero` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idgenero`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Ação'),(2,'Drama'),(3,'Comédia'),(4,'Suspense'),(5,'Romance'),(6,'Ficção Científica'),(7,'Animação'),(8,'Fantasia'),(9,'Terror'),(10,'Documentário'),(11,'Thriller'),(12,'Aventura'),(13,'Crime'),(14,'Mistério'),(15,'Família'),(16,'História'),(17,'Biografia'),(18,'Fantasia'),(19,'Musical'),(20,'Western'),(21,'Esporte'),(22,'Guerra'),(23,'Romance'),(24,'Sci-Fi'),(25,'Super-herói'),(26,'Horror'),(27,'Animação'),(28,'Comédia Romântica'),(29,'Policial'),(30,'Fantasia Urbana');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realizador`
--

DROP TABLE IF EXISTS `realizador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realizador` (
  `idRealizador` int(11) NOT NULL,
  `nomeRealizador` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idRealizador`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realizador`
--

LOCK TABLES `realizador` WRITE;
/*!40000 ALTER TABLE `realizador` DISABLE KEYS */;
INSERT INTO `realizador` VALUES (1,'Steven Spielberg'),(2,'Martin Scorsese'),(3,'Christopher Nolan'),(4,'Quentin Tarantino'),(5,'Alfonso Cuarón'),(6,'Sofia Coppola'),(7,'Guillermo del Toro'),(8,'David Fincher'),(9,'Kathryn Bigelow'),(10,'Denis Villeneuve'),(11,'Bong Joon-ho'),(12,'Taika Waititi'),(13,'Ava DuVernay'),(14,'Greta Gerwig'),(15,'Barry Jenkins'),(16,'Sam Mendes'),(17,'Lynne Ramsay'),(18,'Park Chan-wook'),(19,'Wes Anderson'),(20,'Pedro Almodóvar'),(21,'Lulu Wang'),(22,'Alejandro González Iñárritu'),(23,'Luca Guadagnino'),(24,'Makoto Shinkai'),(25,'Yorgos Lanthimos'),(26,'Chloé Zhao'),(27,'Jordan Peele'),(28,'Céline Sciamma'),(29,'Paolo Sorrentino'),(30,'Béla Tarr');
/*!40000 ALTER TABLE `realizador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series`
--

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

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
INSERT INTO `series` VALUES (1,1,101),(2,3,102),(3,2,103),(4,4,104),(5,1,105),(6,2,106),(7,3,107),(8,1,108),(9,2,109),(10,3,110),(11,4,111),(12,1,112),(13,2,113),(14,3,114),(15,1,115),(16,2,116),(17,3,117),(18,1,118),(19,2,119),(20,3,120),(21,4,121),(22,1,122),(23,2,123),(24,3,124),(25,1,125),(26,2,126),(27,3,127),(28,1,128),(29,2,129),(30,3,130);
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporada`
--

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

--
-- Dumping data for table `temporada`
--

LOCK TABLES `temporada` WRITE;
/*!40000 ALTER TABLE `temporada` DISABLE KEYS */;
INSERT INTO `temporada` VALUES (1,1,2020,'Livre'),(2,1,2021,'Livre'),(3,1,2022,'Livre'),(31,1,2020,'Livre'),(32,1,2021,'Livre'),(33,1,2022,'Livre'),(34,2,2019,'Livre'),(35,2,2020,'Livre'),(36,2,2021,'Livre'),(37,3,2021,'10+'),(38,3,2022,'10+'),(39,3,2023,'10+'),(40,4,2020,'Livre'),(41,4,2021,'Livre'),(42,4,2022,'Livre'),(43,5,2021,'12+'),(44,5,2022,'12+'),(45,5,2023,'12+'),(46,6,2020,'Livre'),(47,6,2021,'Livre'),(48,6,2022,'Livre'),(49,7,2021,'12+'),(50,7,2022,'12+'),(51,7,2023,'12+'),(52,8,2020,'Livre'),(53,8,2021,'Livre'),(54,8,2022,'Livre'),(55,9,2021,'14+'),(56,9,2022,'14+'),(57,9,2023,'14+'),(58,10,2020,'Livre'),(59,10,2021,'Livre'),(60,10,2022,'Livre');
/*!40000 ALTER TABLE `temporada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilizador`
--

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

--
-- Dumping data for table `utilizador`
--

LOCK TABLES `utilizador` WRITE;
/*!40000 ALTER TABLE `utilizador` DISABLE KEYS */;
INSERT INTO `utilizador` VALUES (1,'johndoe','password123','johndoe@example.com'),(2,'janedoe','pass456','janedoe@example.com'),(3,'user123','abc123','user123@example.com'),(4,'testuser','testpass','testuser@example.com'),(5,'admin','admin123','admin@example.com'),(6,'marysmith','marypass','marysmith@example.com'),(7,'alexander','alex123','alexander@example.com'),(8,'sarahj','sarahpass','sarahj@example.com'),(9,'mikebrown','mikepass','mikebrown@example.com'),(10,'emilyc','emilypass','emilyc@example.com'),(11,'davidm','davidpass','davidm@example.com'),(12,'oliviab','oliviapass','oliviab@example.com'),(13,'williamg','williampass','williamg@example.com'),(14,'sophiar','sophiapass','sophiar@example.com'),(15,'jacobw','jacobpass','jacobw@example.com'),(16,'emmah','emmapass','emmah@example.com'),(17,'matthewt','matthewpass','matthewt@example.com'),(18,'amelial','ameliapass','amelial@example.com'),(19,'jacksonk','jacksonpass','jacksonk@example.com'),(20,'charlotteh','charlottepass','charlotteh@example.com'),(21,'aidenm','aidenpass','aidenm@example.com'),(22,'harperw','harperpass','harperw@example.com'),(23,'lucasr','lucaspass','lucasr@example.com'),(24,'abigailc','abigailpass','abigailc@example.com'),(25,'henryb','henrypass','henryb@example.com'),(26,'sofiad','sofiapass','sofiad@example.com'),(27,'jacks','jackpass','jacks@example.com'),(28,'violetm','violetpass','violetm@example.com'),(29,'danielc','danielpass','danielc@example.com'),(30,'scarlettj','scarlettpass','scarlettj@example.com');
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

-- Dump completed on 2023-06-18 17:25:21
