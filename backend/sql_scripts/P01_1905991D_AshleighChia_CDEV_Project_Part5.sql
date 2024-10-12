-- MySQL dump 10.13  Distrib 5.7.29, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: restaurant_review
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.36-MariaDB

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'Ashleigh','Chia','ashleigh12345','ashleighchia','ashleighchia@gmail.com'),(2,'John','Tay','tay1357','john_tay','john_tay12@gmail.com'),(3,'Alex','Sim','alexsim','sim0123','alexsim@gmail.com'),(4,'example','test','example','testing','testing@google.com');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments_review_id` int(11) NOT NULL,
  `comments_user_id` int(11) NOT NULL,
  `datePosted` date NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `comments_review_id` (`comments_review_id`),
  KEY `comments_user_id` (`comments_user_id`),
  CONSTRAINT `comments_review_id` FOREIGN KEY (`comments_review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `comments_user_id` FOREIGN KEY (`comments_user_id`) REFERENCES `account` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (2,'I agree! all their dishes taste quite authentic.',2,5,'2019-05-24'),(3,'The staff at the restaurant are also super friendly.',2,1,'2019-04-02');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant` (
  `restaurant_id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operating_hours` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuisine` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `overall_rating_star` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `establishment_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'Seoul Garden @ NEX','Seoul Garden serves halal buffet korean barbeque.','images/t_seoulgarden.jpg','images/img_seoulgarden.jpg','23 Serangoon Central, #B1-34/35 NEX, Singapore 556083','11.30am - 10.30pm','6555 1339','$$$','Korean','North-East','Dinner','4 Star','Restaurant','https://www.seoulgarden.com.sg/'),(2,'Thai Express @ AMK Hub','Thai Express serves delicious thai dishes which will help you fufil your taste buds.','images/t_thaiexpress.jpg','images/img_thaiexpress.jpg','53 Ang Mo Kio Ave 3, #02-26 AMK Hub, Singapore 569933','11am - 10pm','6481 0857','$$','Thai','North-East','Lunch','3 Star','Restaurant','https://thaiexpress.com.sg/'),(3,'Takagi Ramen','Takagi Ramen is a small ramen store located in the heart of Ang Mo Kio which serves authentic japanese dishes such as ramen and curry rice.','images/t_takagiramen.jpg','images/img_takagiramen.jpg','51 Ang Mo Kio Ave 3, #01-01C, Singapore 569922','11am - 12am','9170 7870','$','Japanese','North-East','Lunch','5 Star','Restaurant','https://takagiramen.com/'),(4,'Monster Curry @ Vivo City','Monster Curry serves yummy Japanese Curry Rice in MASSIVE portions. It also allows customers to select their level of spiciness as well.','images/t_monstercurry.jpg','images/img_monstercurry.jpg','1 Harbourfront Walk #02-126/127 & 129, Vivo City, 098585','11am - 10pm','6221 3308','$$','Japanese','Central','Dinner','4.5 Star','Restaurant','https://www.monstercurry.com.sg/'),(5,'Lau Pa Sat','Lau Pa Sat, also known as the Telok Ayer Market is one of the most popular food markets located in the heart of the financial district of Singapore. Lau Pa Sat serves local delicacies like satay, cicken rice, kaya toast, as well as many other dishes of ot','images/t_laupasat.jpg','images/img_laupasat.jpg','18 Raffles Quay, Singapore 048582','Open 24 hours','6220 2138','$$','Variety','Central','Dinner','4 Star','Hawker','http://www.laupasat.biz/'),(6,'Newton Food Centre','Walking distance from Newton MRT station, the Newton Food Centre serves a wide variety of food from many different cuisines. It is a lively place with scrumptious delicacies where you can get a taste of everything yummy!','images/t_newton.jpg','images/img_newton.jpg','500 Clemenceau Avenue North, Newton Food Centre, Singapore 229495','12pm - 2am','N.A.','$$','Variety','Central','Dinner','4 Star','Hawker','N.A.'),(7,'So Pho @ ION Orchard','Indulge yourself into delicious Veitnamese foods such as pho, banh mi, spring roll and Banh Xeo Vietnamese pancake.','images/t_sopho.jpg','images/img_sopho,jpg','2 Orchard Turn, #B3-19 ION Singapore, Singapore 238801','11am - 10pm','6634 0571','$$','Vietnamese','Central','Dinner','3.5 Star','Restaurant','http://www.sopho.com.sg/'),(8,'19Tea','19Tea is a Cafe located at Our Tampines Hub. 19Tea is originally from Korea where they had over 40 outlets around the country. They serve bubble tea, souffle pancakes and other desserts at affordable prices.','images/t_19tea.jpg','images/img_19tea.jpg','1, #01-82 Tampines Walk, 528523','11am - 10pm','N.A.','$','Korean','East','Cafe','4.5 Star','Cafe','https://www.facebook.com/19TeaSG/'),(9,'Awfully Chocolate @ JEM','Awfully Chocolate sells handmade and fresh baked desserts. Its chocolate desserts are absolutely rich and creamy. Nothing but simple quality cakes that star the velvety creaminess of their chocolate.','images/t_awfully.jpg','images/img_awfully.jpg','Jem, #01-15, 50 Jurong Gateway Rd, 608549','10am - 10pm','6734 1530','$$','French','West','Cafe','4 Star','Cafe','https://www.awfullychocolate.com/'),(10,'Dookki @ Suntec City','Dookki is a Korean restaurant that serves Tteokbokki Hotpot Buffet. It starts off with the Korean Hotpot style and ends with Kimchi Fried Rice. The wonderful and flavourful meal will definitely make you want more!.','images/t_dookki.jpg','images/img_dookki.jpg','3 Temasek Blvd, #B1-107, Singapore 038984','11.30am - 10.30am','6266 2425','$$','Korean','Central','Dinner','4 Star','Restaurant','https://www.facebook.com/dookkisg/'),(11,'Eighteen Chefs @ Our Tampines Hub','Eighteen Chefs is a local restaurant and franchise company in Singapore opened by an ex-offender Benny Se Teo in 2007. The restaurant serves western foods such as Baked Rice and Pasta and some other local cusine dishes at very affordable prices. They also','images/t_18chefs.jpg','images/img_18chefs.jpg','51 Tampines Avenue 4, 1 Tampines Walk, #02-90/91, 520940','11am - 10pm','6214 9655','$','Western','East','Lunch','3 Star','Restaurant','https://www.eighteenchefs.com/'),(12,'Saizeriya @ JCube','Saizeriya is a restaurant which serves italian food at ridiculously-cheap prices. It also offers a wide variety of dishes so there will definitely be something for everyone. The restaurant also has a very comfortable and nice ambience.','images/t_saizeriya.jpg','images/img_saizeriya.jpg','2 Jurong East Central 1, #02-09B JCube, Singapore 609731','11am - 9.30pm','6268 7512','$','Italian','West','Lunch','4 Star','Restaurant','https://www.saizeriya.com.sg/'),(13,'PS.Cafe Petit @ Tiong Bahru','PS. Cafe Petit is a gourmet takeaway retail concept reataurant which provides traditional fast foods like Pizza, Burgers and hearty salads with a cozy ambience.','images/t_pscafe.jpg','images/img_pscafe.jpg','78 Guan Chuan St, No.41 Blk, Singapore 160078','Weekdays: 11am - 11p','6708 9288','$$$','Italian','Central','Breakfast','4 Star','Restaurant','https://www.pscafe.com/pscafe-petit-at-tiong-bahru'),(14,'An Acai Affair @ WestGate','Acai Affair is started by 2 friends who share the same love for acai. The dessert is organic and preservatives-free which makes it healthy. An Acai Affair does not use any artificial products in their acai which makes the yummy dessert very low in calorie','images/t_acai.jpg','images/img_acai.jpg','3 Gateway Dr, #B1-30 Westgate, Singapore 608532','11.30am - 10pm','N.A.','$$','Brazillian','West','Dessert','5 Star','Cafe','https://www.anacaiaffair.com/'),(15,'Timbre+','Timbre+ is an urban container food park with a wide variety of food stalls of different cuisines. In the evening, Timbre+ also has live bands playing which makes it a great chill-out and catch up location for you and your friends.','images/t_timbre.jpg','images/img_timbre.jpg','73A Ayer Rajah Crescent, JTC Launchpad, Singapore 139957','Monday-Saturday: 6am','6252 2545','$$','Variety','West','Nightlife','4 Star','Hawker, Bar','https://timbreplus.sg/'),(16,'iSteaks Diner @ Tampines 1','iSteaks is a steak house which serves a variety of western dishes ranging from Beef and Chicken steaks to Salmon steaks.','images/t_isteaks.jpg','images/img_isteaks.jpg','10 Tampines Central 1, #04-04/05, Singapore 529536','11am - 10pm','6285 8839','$$','Western','East','Dinner','4 Star','Restaurant','https://www.isteaksdiner.com/'),(17,'Astons Specialities @ Sembawang Shopping Centre','Astons serves a variety of delicious western foods with beef, fish, chicken etc. Their dishes are all value for money as it is all of quality and it is very tasty!','images/t_astons.jpg','images/img_astons.jpg','604 Sembawang Rd, #B1-12/13/14, Singapore 758459','11.30am- 10pm','6753 6302','$$','Western','North','Lunch','4 Star','Restaurant','http://www.astons.com.sg/'),(18,'Ya Kun Kaya Toast @ Compass One','Ya Kun Kaya Toast is a household brand here in sunny Singapore and Asia. It offers delectable kaya toast and other traditional breakfast dishes. Ya Kun Kaya Toast also serves aromatic coffee alongside their breakfast dishes. It also serves local dishes su','images/t_yakun.jpg','images/img_yakun.jpg','1 Sengkang Square, #01-37 Compass One, Singapore 545078','7.30am - 10pm','6386 4165','$','Variety','North-East','Breakfast','4 Star','Cafe','http://yakun.com/'),(19,'ThaiLily Restaurant @ Toa Payoh','ThaiLily serves mouth-watering authentic thai dishes.','images/t_thailily.jpg','images/iimg_thailily.jpg','oa Payoh Block 107 Lorong 1#01-268','11am - 11pm','6253 8231','$$','Thai','Central','Dinner','4 Star','Restaurant','https://www.facebook.com/thaililyrestaurantsingapore/'),(20,'+82 PlusEightTwo','PlusEightTwo(+82) Cafe is opened by member EunKwang of one of the K-POP boybands BTOB. The cafe offers desserts like cake and bingsu on their menu together with their aromatic hot and iced coffee. On many days, the cafe is also being rented to local K-POP','images/t_+82.jpg','images/img_+82.jpg','9, #01-02 Bras Basah Rd, Rendezvous Gallery, 189559','9am - 11pm','8535 7294','$$','Korean','Central','Cafe','5 Star','Cafe','https://www.facebook.com/pages/PLUS-EIGHT-TWO-82/320708255114479'),(21,'Wok Hey @ White Sands','Wok Hey, Masters of stirfry. Dive into some scrumptious stir fried rice and noodles with Wok Hey! Wok Hey is a modern zi char stall which offers their meals in convenient takeaway boxes for their customers.','images/t_wokhey.jpg','images/img_wokhey.jpg','1 Pasir Ris Drive 3, #B1-K05, Singapore 518457','11am - 10pm','6694 0088','$','Chinese','East','Takeaway','5 Star','Takeaway','https://www.facebook.com/wokheysg/'),(22,'Canton Paradise @ The Star Vista','Canton Paradise offers a wide variety of dishes from the Hong Kong cuisine. Its dishes ranges from rice and noodles to hong kong dimsum. Its yummy dishes have attracted large crowds to their restaurants.','images/t_canton.jpg','images/img_canton.jpg','1 Vista Exchange Green, #B1-45 The Star Vista, Singapore 138617','Weekdays: 11am - 9.3','6694 2915','$$$','Hong Kong','West','Dinner','5 Star','Restaurant','https://www.paradisegp.com/brand-canton-paradise/'),(23,'Pepper Lunch @ Hougang Mall','Pepper Lunch serves rice with meat like beef, chicken and fish on hot plates. You can watch your scruptious meal sizzle your way before you dig in. Pepper Lunch has been popular among many individuals and have attracted many new customers!','images/t_pepperlunch.jpg','images/img_pepperlunch.jpg',' 90 Hougang Ave 10, #B1-24 Hougang Mall, Singapore 538766','11am -10pm','6387 2800','$$','Japanese','North-East','Lunch','4 Star','Restaurant','https://www.pepperlunch.com.sg/'),(24,'Heap Seng Leong-Kaya Toasts & Kopi Gu Yau','Today, not many places in Singapore serves Kopi Gu Yau. Heap Seng Leong is a place which carries on this tradition of selling Kopi Gu Yau. They too serve traditional breakfast such as half boiled eggs and kaya toasts as well.','images/t_kopiguyau.jpg','images/img_kopiguyau.jpg','10 North Bridge Rd, #01-5109, Singapore 190010','4am - 8pm','6292 2368','$','Chinese','Central','Breakfast','4 Star','Hawker','N.A.');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_user_id` int(11) DEFAULT NULL,
  `rating_star` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `datePosted` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_restaurant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`review_id`),
  KEY `review_restaurant_id` (`review_restaurant_id`),
  KEY `review_user_id` (`review_user_id`),
  CONSTRAINT `review_restaurant_id` FOREIGN KEY (`review_restaurant_id`) REFERENCES `restaurant` (`restaurant_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `review_user_id` FOREIGN KEY (`review_user_id`) REFERENCES `account` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'Takagi Ramen serves delicious ramen at very affordable prices! The staff are also very friendly towards customers.',1,'5 Star','2019-04-25',3),(2,'The food at Thai express is quite good.',2,'4 Star','2019-03-17',2),(3,'The staff at Takagi Ramen are very patient.',3,'5 Star','2018-09-05',3),(25,'The food at Thai express is quite good.',NULL,'1 Star','Thu Feb 13 2020 18:41:59 GMT+0800 (Malay Peninsula',2),(26,NULL,NULL,'4 Stars','Thu Feb 13 2020 18:44:08 GMT+0800 (Malay Peninsula',2),(27,NULL,NULL,'1 Star','Thu Feb 13 2020 19:00:55 GMT+0800 (Malay Peninsula',2),(28,NULL,NULL,'1 Star','Thu Feb 13 2020 19:02:26 GMT+0800 (Malay Peninsula',2),(29,NULL,NULL,'1 Star','Thu Feb 13 2020 19:03:45 GMT+0800 (Malay Peninsula',2),(30,NULL,NULL,'1 Star','Thu Feb 13 2020 19:06:00 GMT+0800 (Malay Peninsula',2),(31,NULL,NULL,'1 Star','Thu Feb 13 2020 19:10:23 GMT+0800 (Malay Peninsula',2),(32,'azsdsdawesr',NULL,'4 Stars','Thu Feb 13 2020 19:11:09 GMT+0800 (Malay Peninsula',2),(33,'bvnm,',NULL,'1 Star','Thu Feb 13 2020 19:11:43 GMT+0800 (Malay Peninsula',4),(34,'ghjk,',NULL,'1 Star','Thu Feb 13 2020 19:12:31 GMT+0800 (Malay Peninsula',1),(35,'Acai is nice',1,'4 Stars','Fri Feb 14 2020 04:03:13 GMT+0800 (Malay Peninsula',14);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-14  5:01:20
