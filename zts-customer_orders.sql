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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2019-09-30 23:32:35','2019-09-30 23:32:35',1,'O:8:\"App\\Cart\":3:{s:5:\"items\";a:3:{i:1;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:200;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:10:\"created_at\";s:19:\"2019-10-01 07:27:59\";s:10:\"updated_at\";s:19:\"2019-10-01 07:27:59\";s:9:\"imagePath\";s:114:\"https://lareviewofbooks-org-cgwbfgl6lklqqj3f4t3.netdna-ssl.com/wp-content/uploads/2016/09/paavpdqsbtggtmn4smxs.png\";s:5:\"title\";s:2:\"IT\";s:11:\"description\";s:36:\"Too scary - movie for childeren lol.\";s:5:\"price\";i:200;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:10:\"created_at\";s:19:\"2019-10-01 07:27:59\";s:10:\"updated_at\";s:19:\"2019-10-01 07:27:59\";s:9:\"imagePath\";s:114:\"https://lareviewofbooks-org-cgwbfgl6lklqqj3f4t3.netdna-ssl.com/wp-content/uploads/2016/09/paavpdqsbtggtmn4smxs.png\";s:5:\"title\";s:2:\"IT\";s:11:\"description\";s:36:\"Too scary - movie for childeren lol.\";s:5:\"price\";i:200;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:2;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:200;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2019-10-01 07:27:59\";s:10:\"updated_at\";s:19:\"2019-10-01 07:27:59\";s:9:\"imagePath\";s:118:\"https://upload.wikimedia.org/wikipedia/en/thumb/d/d1/Game_of_Thrones_Season_6.jpeg/220px-Game_of_Thrones_Season_6.jpeg\";s:5:\"title\";s:15:\"Game of Thrones\";s:11:\"description\";s:21:\"You\'ve got this game.\";s:5:\"price\";i:200;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2019-10-01 07:27:59\";s:10:\"updated_at\";s:19:\"2019-10-01 07:27:59\";s:9:\"imagePath\";s:118:\"https://upload.wikimedia.org/wikipedia/en/thumb/d/d1/Game_of_Thrones_Season_6.jpeg/220px-Game_of_Thrones_Season_6.jpeg\";s:5:\"title\";s:15:\"Game of Thrones\";s:11:\"description\";s:21:\"You\'ve got this game.\";s:5:\"price\";i:200;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:4;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:200;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:4;s:10:\"created_at\";s:19:\"2019-10-01 07:27:59\";s:10:\"updated_at\";s:19:\"2019-10-01 07:27:59\";s:9:\"imagePath\";s:70:\"http://www.gstatic.com/tv/thumb/v22vodart/3542039/p3542039_v_v8_ac.jpg\";s:5:\"title\";s:6:\"Avatar\";s:11:\"description\";s:21:\"Kids know this movie.\";s:5:\"price\";i:200;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:4;s:10:\"created_at\";s:19:\"2019-10-01 07:27:59\";s:10:\"updated_at\";s:19:\"2019-10-01 07:27:59\";s:9:\"imagePath\";s:70:\"http://www.gstatic.com/tv/thumb/v22vodart/3542039/p3542039_v_v8_ac.jpg\";s:5:\"title\";s:6:\"Avatar\";s:11:\"description\";s:21:\"Kids know this movie.\";s:5:\"price\";i:200;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:3;s:10:\"totalPrice\";i:600;}','cebu city','Jay','payment '),(2,'2019-10-13 17:48:03','2019-10-13 17:48:03',3,'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:2;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:200;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2019-10-01 07:27:59\";s:10:\"updated_at\";s:19:\"2019-10-01 07:27:59\";s:9:\"imagePath\";s:118:\"https://upload.wikimedia.org/wikipedia/en/thumb/d/d1/Game_of_Thrones_Season_6.jpeg/220px-Game_of_Thrones_Season_6.jpeg\";s:5:\"title\";s:15:\"Game of Thrones\";s:11:\"description\";s:21:\"You\'ve got this game.\";s:5:\"price\";i:200;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2019-10-01 07:27:59\";s:10:\"updated_at\";s:19:\"2019-10-01 07:27:59\";s:9:\"imagePath\";s:118:\"https://upload.wikimedia.org/wikipedia/en/thumb/d/d1/Game_of_Thrones_Season_6.jpeg/220px-Game_of_Thrones_Season_6.jpeg\";s:5:\"title\";s:15:\"Game of Thrones\";s:11:\"description\";s:21:\"You\'ve got this game.\";s:5:\"price\";i:200;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:1;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:200;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:10:\"created_at\";s:19:\"2019-10-01 07:27:59\";s:10:\"updated_at\";s:19:\"2019-10-01 07:27:59\";s:9:\"imagePath\";s:114:\"https://lareviewofbooks-org-cgwbfgl6lklqqj3f4t3.netdna-ssl.com/wp-content/uploads/2016/09/paavpdqsbtggtmn4smxs.png\";s:5:\"title\";s:2:\"IT\";s:11:\"description\";s:36:\"Too scary - movie for childeren lol.\";s:5:\"price\";i:200;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:10:\"created_at\";s:19:\"2019-10-01 07:27:59\";s:10:\"updated_at\";s:19:\"2019-10-01 07:27:59\";s:9:\"imagePath\";s:114:\"https://lareviewofbooks-org-cgwbfgl6lklqqj3f4t3.netdna-ssl.com/wp-content/uploads/2016/09/paavpdqsbtggtmn4smxs.png\";s:5:\"title\";s:2:\"IT\";s:11:\"description\";s:36:\"Too scary - movie for childeren lol.\";s:5:\"price\";i:200;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";i:400;}','cebu city','jay','payment ');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
