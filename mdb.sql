-- MySQL dump 10.13  Distrib 5.7.34, for osx10.12 (x86_64)
--
-- Host: localhost    Database: mdb
-- ------------------------------------------------------
-- Server version	5.7.34

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
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `movie_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `year` varchar(45) DEFAULT NULL,
  `picture` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'Tokyo Story','1953','tokyo-story.jpg','2022-02-12 22:27:59'),(2,'Sunrise','1927','sunrise.jpg','2022-02-12 22:27:59'),(3,'A Space Odyssey','1968','space.jpg','2022-02-12 22:27:59'),(4,'The Searchers','1956','searchers.jpg','2022-02-12 22:27:59'),(5,'Man With a Movie Camera','1929','man-with-moviecamera.jpg','2022-02-12 22:27:59'),(6,'The Passion of Joan of Arc','1927','joan-of-arc.jpg','2022-02-12 22:27:59'),(7,'8&#189','1963','8-and-a-half.jpg','2022-02-12 22:27:59'),(8,'Battleship Potemkin','1925','potemkin.jpg','2022-02-12 22:27:59'),(9,'L\'Atalante','1934','latalante.jpg','2022-02-12 22:27:59'),(10,'Breathless','1960','breathless.jpg','2022-02-12 22:27:59'),(11,'Apocalypse Now','1979','apocalypse-now.jpg','2022-02-12 22:27:59'),(12,'Late Spring','1949','late-spring.jpg','2022-02-12 22:27:59'),(13,'Au Hasard Balthazar','1966','au-hasard-balthazar.jpg','2022-02-12 22:27:59'),(14,'Bad Cop2','1983',NULL,'2022-02-12 22:30:37'),(15,'Bad Cop3','1993',NULL,'2022-02-12 22:32:53'),(16,'Bad Cop5','1993',NULL,'2022-02-12 22:46:07'),(17,'Bad Cop455','1993',NULL,'2022-02-12 22:46:55'),(18,'Bad Cop455','1993',NULL,'2022-02-12 22:47:29'),(19,'Bad Cop455','1993',NULL,'2022-02-12 22:47:55'),(20,'Bad Cop455','1993',NULL,'2022-02-12 22:48:21'),(21,'Bad Cop455','1993',NULL,'2022-02-12 22:48:29'),(22,'Bad Cop455','1993',NULL,'2022-02-12 22:57:54'),(23,'Bad Cop455','1993',NULL,'2022-02-12 22:58:30'),(24,'Bad Cop455','1993',NULL,'2022-02-12 22:59:45'),(25,'Bad Cop455','1993',NULL,'2022-02-12 23:27:28'),(26,'Bad Cop455','1993',NULL,'2022-02-12 23:27:49');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rating` (
  `user_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`movie_id`),
  KEY `fk_rating_movie_idx` (`movie_id`),
  CONSTRAINT `fk_rating_movie` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_rating_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (1,1,1),(1,2,3),(2,1,1),(2,2,4),(2,5,3),(2,7,4),(3,1,3),(3,2,4),(3,5,5);
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(180) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'jj@siewers.org','$2y$10$XLkW5j83sR4nXRhBGbGFFuwhu1TGeczHhb2q2i6NfIUxNyYdoTx.q','2022-02-12 22:27:59'),(2,'klaus@enk.nl','$2y$10$ROVR/xml4E1Rqu0lGIR62uOo1cFnSg339GVuMWvUiACJr2LHnXvle','2022-02-12 22:27:59'),(3,'truus@kok.nl','$2y$10$i4cUTpz6/8m3I19JPXGhDOfFVmB2THZFVchTA8uvOuBH4SOirD2Em','2022-02-12 22:27:59');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-08 11:28:15
