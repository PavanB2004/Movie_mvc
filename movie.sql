-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: movie
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `movie_details`
--

DROP TABLE IF EXISTS `movie_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_details` (
  `movie_id` int NOT NULL AUTO_INCREMENT,
  `created_at` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `updated_by` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_details`
--

LOCK TABLES `movie_details` WRITE;
/*!40000 ALTER TABLE `movie_details` DISABLE KEYS */;
INSERT INTO `movie_details` VALUES (1,'2025-02-20','A mind-bending thriller by Christopher Nolan, where a thief uses dream-sharing technology to steal secrets from deep within a person\'s subconscious.',148,'Sci-Fi','English',9,'2010-07-16','Inception','2025-02-20','https://upload.wikimedia.org/wikipedia/en/2/2e/Inception_%282010%29_theatrical_poster.jpg'),(2,'2025-02-20','Batman sets out to dismantle the remaining criminal organizations that plague Gotham. But he soon faces a criminal mastermind known as The Joker.',152,'Action','English',9,'2008-07-18','The Dark Knight','2025-02-20','https://upload.wikimedia.org/wikipedia/en/1/1c/The_Dark_Knight_%282008_film%29.jpg'),(3,'2025-02-20','Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',142,'Drama','English',10,'1994-09-22','The Shawshank Redemption','2025-02-20','https://upload.wikimedia.org/wikipedia/en/8/81/ShawshankRedemptionMoviePoster.jpg'),(4,'2025-02-20','The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',175,'Crime','English',10,'1972-03-24','The Godfather','2025-02-20','https://upload.wikimedia.org/wikipedia/en/1/1c/Godfather_ver1.jpg'),(5,'2025-02-20','A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.',136,'Action','English',8,'1999-03-31','The Matrix','2025-02-20','https://upload.wikimedia.org/wikipedia/en/c/c1/The_Matrix_Poster.jpg'),(6,'2025-02-20','A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.',195,'Romance','English',7,'1997-12-19','Titanic','2025-02-20','https://upload.wikimedia.org/wikipedia/en/1/18/Titanic_%281997_film%29_poster.png'),(7,'2025-02-20','A betrayed Roman general sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.',155,'Action','English',8,'2000-05-05','Gladiator','2025-02-20','https://upload.wikimedia.org/wikipedia/en/f/fb/Gladiator_%282000_film_poster%29.png'),(8,'2025-02-20','The presidencies of Kennedy and Johnson, the events of Vietnam, the Watergate scandal, and other historical events unfold from the perspective of an Alabama man with an extraordinary life story.',142,'Drama','English',9,'1994-07-06','Forrest Gump','2025-02-20','https://upload.wikimedia.org/wikipedia/en/6/67/Forrest_Gump_poster.jpg'),(9,'2025-02-20','A paraplegic marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.',162,'Action','English',8,'2009-12-18','Avatar','2025-02-20','https://upload.wikimedia.org/wikipedia/en/d/d6/Avatar_%282009_film%29_poster.jpg'),(10,'2025-02-20','Lion prince Simba and his father are targeted by his bitter uncle, who wants to ascend the throne himself.',88,'Animation','English',9,'1994-06-15','The Lion King','2025-02-20','https://upload.wikimedia.org/wikipedia/en/9/9d/Disney_The_Lion_King_2019.jpg');
/*!40000 ALTER TABLE `movie_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seats`
--

DROP TABLE IF EXISTS `seats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seats` (
  `seat_id` int NOT NULL AUTO_INCREMENT,
  `avaliability` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `seat_number` varchar(255) DEFAULT NULL,
  `seat_type` varchar(255) DEFAULT NULL,
  `showtime_id` int DEFAULT NULL,
  `updated_by` date DEFAULT NULL,
  PRIMARY KEY (`seat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats`
--

LOCK TABLES `seats` WRITE;
/*!40000 ALTER TABLE `seats` DISABLE KEYS */;
/*!40000 ALTER TABLE `seats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theater_details`
--

DROP TABLE IF EXISTS `theater_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theater_details` (
  `theater_id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `updated_by` date DEFAULT NULL,
  PRIMARY KEY (`theater_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theater_details`
--

LOCK TABLES `theater_details` WRITE;
/*!40000 ALTER TABLE `theater_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `theater_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_details` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (111,'2024-02-15 00:00:00.000000','pavan@gmail.com','pavan','y','kumar','2024-04-24 00:00:00.000000','123','9391160');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-24 11:06:48
