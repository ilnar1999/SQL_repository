-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: internet_auction
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bids`
--

DROP TABLE IF EXISTS `bids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bids` (
  `bid_id` int(11) NOT NULL,
  `bid_date` date DEFAULT NULL,
  `bid_value` double DEFAULT NULL,
  `items_item_id` int(11) DEFAULT NULL,
  `users_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`bid_id`),
  KEY `items_item_id` (`items_item_id`),
  KEY `users_user_id` (`users_user_id`),
  CONSTRAINT `bids_ibfk_1` FOREIGN KEY (`items_item_id`) REFERENCES `items` (`item_id`),
  CONSTRAINT `bids_ibfk_2` FOREIGN KEY (`users_user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bids`
--

LOCK TABLES `bids` WRITE;
/*!40000 ALTER TABLE `bids` DISABLE KEYS */;
INSERT INTO `bids` VALUES (115,'2020-05-17',300000,95,4),(140,'2019-05-01',145000,94,1),(193,'2020-01-10',62000,97,5),(202,'2019-12-29',2900000,96,1),(251,'2020-03-05',450000,98,3),(305,'2020-01-16',150000,94,2),(417,'2019-03-20',105000,99,3),(500,'2020-02-14',2500000,96,4),(910,'2020-01-15',1000000,98,2);
/*!40000 ALTER TABLE `bids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `start_price` double DEFAULT NULL,
  `bid_increment` double DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `stop_date` date DEFAULT NULL,
  `by_it_now` binary(1) DEFAULT NULL,
  `users_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `users_user_id` (`users_user_id`),
  CONSTRAINT `items_ibfk_1` FOREIGN KEY (`users_user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (94,'car','any car',100000,5000,'2020-01-14','2020-01-17',_binary '1',2),(95,'house','the white house',50000000,1000000,'2020-01-11','2020-01-25',_binary '1',3),(96,'plane','plane of Bill Gates',2000000,100000,'2019-12-22','2019-12-29',_binary '0',3),(97,'car','other car',50000,2000,'2019-12-31','2020-02-13',_binary '1',1),(98,'flat','any flat',300000,10000,'2020-02-23','2020-03-08',_binary '0',5),(99,'car','BMW',100500,1000,'2018-09-25','2018-10-07',_binary '0',4);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(45) DEFAULT NULL,
  `billing_address` varchar(100) DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Petrov A.V.','7414 4295 4293 0602','Peter_The_Great','petr12345'),(2,'Vasilyeva E.D.','2304 0525 8475 9222','katya88','vasyaed1'),(3,'Bill Gates','7777 7777 7777 7777','Bill_Gates','windows95forever'),(4,'Ivanov I.I.','4102 0603 0358 8492','vanya123','ivan123'),(5,'Pomidorkin S.V.','4921 9583 2894 2033','senor44','pomidorka1');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-14 13:05:16
