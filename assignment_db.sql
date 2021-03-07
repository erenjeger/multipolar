-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: assignment_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.17-MariaDB

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `CUSTOMER_ID` int(11) NOT NULL DEFAULT 0,
  `COMPANY_NAME` varchar(50) DEFAULT NULL,
  `FIRST_NAME` varchar(30) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `BILLING_ADDRESS` varchar(255) DEFAULT NULL,
  `CITY` varchar(50) DEFAULT NULL,
  `STATE_OR_PROVINCE` varchar(20) DEFAULT NULL,
  `ZIP_CODE` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(75) DEFAULT NULL,
  `COMPANY_WEBSITE` varchar(200) DEFAULT NULL,
  `PHONE_NUMBER` varchar(30) DEFAULT NULL,
  `FAX_NUMBER` varchar(30) DEFAULT NULL,
  `SHIP_ADDRESS` varchar(255) DEFAULT NULL,
  `SHIP_CITY` varchar(50) DEFAULT NULL,
  `SHIP_STATE_OR_PROVINCE` varchar(50) DEFAULT NULL,
  `SHIP_ZIP_CODE` varchar(20) DEFAULT NULL,
  `SHIP_PHONE_NUMBER` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (0,'Multipolar Technology','Rahmad','Hidayat','Jl. Juanda','Depok','02','14311','rahmathidayat@gmail.com','https://www.multipolar.com/','123456789','45612','Depok, Jl. Tole Iskandar','3276','02','16789','987654321'),(1,'Usaha Mandiri','Arman','Maulana','Jl. Pd Aren','Tanggerang','01','12344','armanMaulana@gmail.com','https://indobelanja.com','098123123','43321','Depok, Margonda','3276','02','16443','1233123123');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `EMPLOYEE_ID` int(11) NOT NULL DEFAULT 0,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `TITLE` varchar(50) DEFAULT NULL,
  `WORK_PHONE` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`EMPLOYEE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (0,'HENDRA','KUSUMA','CASHIER','123'),(1,'REZA','SOFYAN','SUPERVISOR','321'),(3,'RIZAL','AMIN','SALES','4433');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `history_pesanan`
--

DROP TABLE IF EXISTS `history_pesanan`;
/*!50001 DROP VIEW IF EXISTS `history_pesanan`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `history_pesanan` (
  `CUSTOMER_ID` tinyint NOT NULL,
  `SHIP_ADDRESS` tinyint NOT NULL,
  `SHIP_ZIP_CODE` tinyint NOT NULL,
  `SHIP_PHONE_NUMBER` tinyint NOT NULL,
  `BILLING_ADDRESS` tinyint NOT NULL,
  `CITY` tinyint NOT NULL,
  `CUSTOMER_NAME` tinyint NOT NULL,
  `ORDER_ID` tinyint NOT NULL,
  `EMPLOYEE_ID` tinyint NOT NULL,
  `TITLE` tinyint NOT NULL,
  `EMPLOYEE_NAME` tinyint NOT NULL,
  `ORDER_DATE` tinyint NOT NULL,
  `SHIPPING_METHOD` tinyint NOT NULL,
  `SHIP_DATE` tinyint NOT NULL,
  `PRODUCT_ID` tinyint NOT NULL,
  `QUANTITY` tinyint NOT NULL,
  `UNIT_PRICE` tinyint NOT NULL,
  `DISCOUNT` tinyint NOT NULL,
  `TAXES` tinyint NOT NULL,
  `FREIGHT_CHARGE` tinyint NOT NULL,
  `PRODUCT_NAME` tinyint NOT NULL,
  `SUB_TOTAL` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `ORDER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CUSTOMER_ID` int(11) NOT NULL DEFAULT 0,
  `EMPLOYEE_ID` int(11) NOT NULL DEFAULT 0,
  `ORDER_DATE` date DEFAULT NULL,
  `PURCHASE_ORDER_NUMBER` varchar(30) DEFAULT NULL,
  `SHIP_DATE` date DEFAULT NULL,
  `SHIPPING_METHOD_ID` int(11) NOT NULL DEFAULT 0,
  `FREIGHT_CHARGE` decimal(10,2) DEFAULT NULL,
  `TAXES` decimal(10,4) DEFAULT NULL,
  `PAYMENT_RECEIVED` char(1) DEFAULT NULL,
  `COMMENT` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (0,0,0,'2019-08-23','X12312','2019-08-26',0,1.94,0.0069,'1',NULL),(1,1,1,'2020-08-23','X3212','2020-08-25',1,0.97,0.0069,'1',NULL),(2,0,0,'2019-08-23','X2123123','2019-08-25',1,0.97,0.0069,'1',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_details`
--

DROP TABLE IF EXISTS `orders_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_details` (
  `ORDER_DETAIL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_ID` int(11) NOT NULL DEFAULT 0,
  `PRODUCT_ID` int(11) NOT NULL DEFAULT 0,
  `QUANTITY` int(11) DEFAULT NULL,
  `UNIT_PRICE` decimal(10,2) DEFAULT NULL,
  `DISCOUNT` decimal(10,3) DEFAULT 0.000,
  PRIMARY KEY (`ORDER_DETAIL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_details`
--

LOCK TABLES `orders_details` WRITE;
/*!40000 ALTER TABLE `orders_details` DISABLE KEYS */;
INSERT INTO `orders_details` VALUES (1,0,1,2,3.47,0.025),(2,2,2,1,1.39,0.025),(3,1,3,1,3.47,0.000);
/*!40000 ALTER TABLE `orders_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_NAME` varchar(50) DEFAULT NULL,
  `UNIT_PRICE` decimal(10,2) DEFAULT NULL,
  `INSTOCK` char(1) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Dompet kulit',3.47,'1'),(2,'Anti Gores Handphone',1.39,'1'),(3,'Gantungan Kunci',3.47,'1'),(4,'Mouse Wireless',5.90,'0');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_method`
--

DROP TABLE IF EXISTS `shipping_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_method` (
  `SHIPPING_METHOD_ID` int(11) NOT NULL DEFAULT 0,
  `SHIPPING_METHOD` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`SHIPPING_METHOD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_method`
--

LOCK TABLES `shipping_method` WRITE;
/*!40000 ALTER TABLE `shipping_method` DISABLE KEYS */;
INSERT INTO `shipping_method` VALUES (0,'Regular'),(1,'YES');
/*!40000 ALTER TABLE `shipping_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'assignment_db'
--

--
-- Final view structure for view `history_pesanan`
--

/*!50001 DROP TABLE IF EXISTS `history_pesanan`*/;
/*!50001 DROP VIEW IF EXISTS `history_pesanan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `history_pesanan` AS select `o`.`CUSTOMER_ID` AS `CUSTOMER_ID`,`c`.`SHIP_ADDRESS` AS `SHIP_ADDRESS`,`c`.`SHIP_ZIP_CODE` AS `SHIP_ZIP_CODE`,`c`.`SHIP_PHONE_NUMBER` AS `SHIP_PHONE_NUMBER`,`c`.`BILLING_ADDRESS` AS `BILLING_ADDRESS`,`c`.`CITY` AS `CITY`,concat(`c`.`FIRST_NAME`,' ',`c`.`LAST_NAME`) AS `CUSTOMER_NAME`,`o`.`ORDER_ID` AS `ORDER_ID`,`o`.`EMPLOYEE_ID` AS `EMPLOYEE_ID`,`e`.`TITLE` AS `TITLE`,concat(`e`.`FIRST_NAME`,' ',`e`.`LAST_NAME`) AS `EMPLOYEE_NAME`,`o`.`ORDER_DATE` AS `ORDER_DATE`,`sm`.`SHIPPING_METHOD` AS `SHIPPING_METHOD`,`o`.`SHIP_DATE` AS `SHIP_DATE`,`od`.`PRODUCT_ID` AS `PRODUCT_ID`,`od`.`QUANTITY` AS `QUANTITY`,`od`.`UNIT_PRICE` AS `UNIT_PRICE`,`od`.`DISCOUNT` AS `DISCOUNT`,`o`.`TAXES` AS `TAXES`,`o`.`FREIGHT_CHARGE` AS `FREIGHT_CHARGE`,`p`.`PRODUCT_NAME` AS `PRODUCT_NAME`,`od`.`UNIT_PRICE` * `od`.`QUANTITY` + `o`.`TAXES` + `o`.`FREIGHT_CHARGE` - `od`.`DISCOUNT` AS `SUB_TOTAL` from (((((`orders_details` `od` left join `orders` `o` on(`od`.`ORDER_ID` = `o`.`ORDER_ID`)) left join `employees` `e` on(`e`.`EMPLOYEE_ID` = `o`.`EMPLOYEE_ID`)) left join `customers` `c` on(`c`.`CUSTOMER_ID` = `o`.`CUSTOMER_ID`)) left join `shipping_method` `sm` on(`sm`.`SHIPPING_METHOD_ID` = `o`.`SHIPPING_METHOD_ID`)) left join `products` `p` on(`p`.`PRODUCT_ID` = `od`.`PRODUCT_ID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-07  8:33:32
