-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: zts-customer
-- ------------------------------------------------------
-- Server version	5.7.27

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `imagePath` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'2019-09-30 23:27:59','2019-09-30 23:27:59','https://lareviewofbooks-org-cgwbfgl6lklqqj3f4t3.netdna-ssl.com/wp-content/uploads/2016/09/paavpdqsbtggtmn4smxs.png','IT','Too scary - movie for childeren lol.',200),(2,'2019-09-30 23:27:59','2019-09-30 23:27:59','https://upload.wikimedia.org/wikipedia/en/thumb/d/d1/Game_of_Thrones_Season_6.jpeg/220px-Game_of_Thrones_Season_6.jpeg','Game of Thrones','You\'ve got this game.',200),(3,'2019-09-30 23:27:59','2019-09-30 23:27:59','https://img04.mgo-images.com/image/thumbnail?id=MMVAF76018A477C2826A4EC8747C40B7BE27&ql=70&sizes=310x465','Avengers Endgame','One snap with the six stones.',200),(4,'2019-09-30 23:27:59','2019-09-30 23:27:59','http://www.gstatic.com/tv/thumb/v22vodart/3542039/p3542039_v_v8_ac.jpg','Avatar','Kids know this movie.',200),(5,'2019-09-30 23:27:59','2019-09-30 23:27:59','http://t0.gstatic.com/images?q=tbn:ANd9GcQhYjUIu2o5v5u3rfJpCq5Cz0Q9WK--XdYxai_N2d0ImohPiIOp','Titanic','Even the biggest ship',200),(6,'2019-09-30 23:27:59','2019-09-30 23:27:59','http://t2.gstatic.com/images?q=tbn:ANd9GcSRyzmDo83KY0dClkpu3VPWZ0tMfzySsKqBO8YAouuFJxwNXMOU','Godzilla','The Alpha and the great great great.',200),(7,'2019-09-30 23:29:58','2019-09-30 23:29:58','https://lareviewofbooks-org-cgwbfgl6lklqqj3f4t3.netdna-ssl.com/wp-content/uploads/2016/09/paavpdqsbtggtmn4smxs.png','IT','Too scary - movie for childeren lol.',200),(8,'2019-09-30 23:29:58','2019-09-30 23:29:58','https://upload.wikimedia.org/wikipedia/en/thumb/d/d1/Game_of_Thrones_Season_6.jpeg/220px-Game_of_Thrones_Season_6.jpeg','Game of Thrones','You\'ve got this game.',200),(9,'2019-09-30 23:29:58','2019-09-30 23:29:58','https://img04.mgo-images.com/image/thumbnail?id=MMVAF76018A477C2826A4EC8747C40B7BE27&ql=70&sizes=310x465','Avengers Endgame','One snap with the six stones.',200),(10,'2019-09-30 23:29:58','2019-09-30 23:29:58','http://www.gstatic.com/tv/thumb/v22vodart/3542039/p3542039_v_v8_ac.jpg','Avatar','Kids know this movie.',200),(11,'2019-09-30 23:29:58','2019-09-30 23:29:58','http://t0.gstatic.com/images?q=tbn:ANd9GcQhYjUIu2o5v5u3rfJpCq5Cz0Q9WK--XdYxai_N2d0ImohPiIOp','Titanic','Even the biggest ship',200),(12,'2019-09-30 23:29:59','2019-09-30 23:29:59','http://t2.gstatic.com/images?q=tbn:ANd9GcSRyzmDo83KY0dClkpu3VPWZ0tMfzySsKqBO8YAouuFJxwNXMOU','Godzilla','The Alpha and the great great great.',200);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-15 15:20:59
