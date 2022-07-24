-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: phase6-foodbox
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `purchasedrecord`
--

DROP TABLE IF EXISTS `purchasedrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchasedrecord` (
  `id_Purchase` int NOT NULL,
  `purchase_User` varchar(100) DEFAULT NULL,
  `purchase_UserEmail` varchar(100) DEFAULT NULL,
  `purchase_UserContact` varchar(12) DEFAULT NULL,
  `purchase_UserShippingAddress` varchar(200) DEFAULT NULL,
  `purchase_Date` varchar(45) DEFAULT NULL,
  `purchase_Category` varchar(45) DEFAULT NULL,
  `purchase_DeliveryStatus` varchar(45) DEFAULT NULL,
  `purchase_PaymentMode` varchar(45) DEFAULT NULL,
  `purchase_TotalAmount` varchar(45) DEFAULT NULL,
  `purchase_ExpectedMinutesForDelivery` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Purchase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchasedrecord`
--

LOCK TABLES `purchasedrecord` WRITE;
/*!40000 ALTER TABLE `purchasedrecord` DISABLE KEYS */;
INSERT INTO `purchasedrecord` VALUES (1,'Suraj Singh','suraj@gmail.com','8976542312','bangalore','2022-07-21','Rice','Processing','NetBanking','90','39-Minutes Max'),(2,'Suraj Singh','suraj@gmail.com','8976542312','Bangalore','2022-07-21','Rice','Processing','Credit Card','90','39-Minutes Max'),(3,'Suraj Singh','suraj@gmail.com','8976542312','Noida','2022-07-21','Rice','Processing','NetBanking','90','39-Minutes Max'),(4,'Suraj Singh','suraj@gmail.com','8976542312','Bangalore','2022-07-21','Rice','Processing','NetBanking','90','39-Minutes Max');
/*!40000 ALTER TABLE `purchasedrecord` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-24 22:43:04
