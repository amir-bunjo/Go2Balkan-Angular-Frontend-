CREATE DATABASE  IF NOT EXISTS `g2b` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `g2b`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: g2b
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
-- Table structure for table `accommodation`
--

DROP TABLE IF EXISTS `accommodation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `accommodation` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` mediumint(8) unsigned NOT NULL,
  `custom_id` varchar(255) NOT NULL,
  `accommodation_type` varchar(200) NOT NULL,
  `rent_type` varchar(20) DEFAULT NULL,
  `accommodation_promo_pic` varchar(500) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `state` varchar(30) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `city` varchar(20) NOT NULL,
  `location` int(11) unsigned NOT NULL DEFAULT '0',
  `address` varchar(250) NOT NULL,
  `rank` tinyint(3) unsigned DEFAULT NULL,
  `rooms_total` tinyint(3) unsigned DEFAULT NULL,
  `description` text,
  `important_information` varchar(500) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `web` varchar(200) DEFAULT NULL,
  `googlemap_link` varchar(400) DEFAULT NULL,
  `checkin_start` varchar(10) DEFAULT NULL,
  `checkin_end` varchar(10) DEFAULT NULL,
  `checkout_start` varchar(10) DEFAULT NULL,
  `checkout_end` varchar(10) DEFAULT NULL,
  `user_rating` decimal(4,2) DEFAULT NULL,
  `staff_languages` varchar(1000) DEFAULT NULL,
  `accepted_cards` varchar(1000) DEFAULT '',
  `pets_policy` varchar(500) DEFAULT '',
  `options_payment_types` varchar(500) DEFAULT '',
  `options_activities` json DEFAULT NULL,
  `options_breakfast` varchar(1000) DEFAULT '',
  `options_business_facilities` json DEFAULT NULL,
  `options_cleaning_services` json DEFAULT NULL,
  `options_common_areas` json DEFAULT NULL,
  `options_entertainment` json DEFAULT NULL,
  `options_food_drink` json DEFAULT NULL,
  `options_frontdesk_services` json DEFAULT NULL,
  `options_miscellaneous` json DEFAULT NULL,
  `options_pool_spa` json DEFAULT NULL,
  `options_transportation` json DEFAULT NULL,
  `options_shops` json DEFAULT NULL,
  `options_internet` varchar(500) DEFAULT '',
  `options_parking` varchar(500) DEFAULT '',
  `surroundings` varchar(1500) DEFAULT '',
  `accommodation_bedrooms` varchar(1000) DEFAULT '',
  `accommodation_lvingrooms` varchar(1000) DEFAULT '',
  `accommodation_bathrooms` varchar(1000) DEFAULT '',
  `balkan_region` bit(1) NOT NULL DEFAULT b'1',
  `is_active` bit(1) DEFAULT b'0',
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `accommodation_pics` varchar(10000) DEFAULT NULL,
  `rent_items` varchar(255) DEFAULT NULL,
  `vat` varchar(20) DEFAULT NULL,
  `city_tax` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodation`
--

LOCK TABLES `accommodation` WRITE;
/*!40000 ALTER TABLE `accommodation` DISABLE KEYS */;
INSERT INTO `accommodation` VALUES (35,35,'customId','hotel','room','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/88185356.jpg','Heritage Hotel Krone','Bosnia and Herzegovina','72000','Zenica',2,'Velika aleja 1, Ilid?ža, Federation of Bosnia and Herzegovina, Bosnia and Herzegovina',4,NULL,'<div id=\"summary\" class=\"\" style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\"><p>Hotel Heritage Krone je otvoren u junu 2016. godine. Nalazi se u Ilid?ži, na oko 11 km od centra Sarajeva i na 12 km od ikoni?ne Ba???ar??ije. Hotel je sme??ten u 100 godina staroj austrougarskoj vili i poseduje restoran i spa centar. Na raspolaganju su besplatan be?žicni internet i besplatan parking u okviru objekta.</p><p>Sve sobe su klimatizovane i sadr?že flat-screen TV, mini-bar i sef. Svaka sme??tajna jedinica ukljucuje sopstveno kupatilo opremljeno tu??em (bez kabine). Na raspolaganju je i fen za kosu.</p><p>U hotelskom restoranu i kafeu Cordoba slu?že se internacionalni specijaliteti pripremljeni od organskih sastojaka. Spa centar Aqua S izgrazen je u stilu starih rimskih kupatila.</p><p>Osoblje na recepciji mo?že vam pomoci sa organizovanjem obilazaka grada i izleta do planina u okolini Sarajeva, na kojima su odr?žane olimpijske igre.</p><p>Me?unarodni aerodrom Sarajevo je udaljen je 2 km. Aerodromski prevoz se mo?že organizovati uz doplatu.&nbsp;</p></div><p class=\"hp-desc-review-highlight hp-desc-traveller-type--ph-v0\" style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\">Parovima se posebno svidela lokacija - ocenili su je sa&nbsp;<strong>9,4</strong>&nbsp;za boravak udvoje.</p><p class=\"hp-desc-we-speak\" style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\">Govorimo va?? jezik!</p><p class=\"summary  hotel_meta_style\" style=\"line-height: 1.4; padding: 0px; margin-bottom: 0px; color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\"></p><div data-et-view=\"NAREFdGdfSeWZMfeNJXdLJNXe:1 NAREFdGdfSeWZMfeNJXdLJNXe:3 \" style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: small;\"></div><span style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: small;\">Heritage Hotel Krone toplo do?ekuje Booking.com goste od 10. jun 2016.&nbsp;</span><div><span style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: small;\"><br></span></div>',NULL,'+387.33257960','info@hotelkrone.ba','http://www.hotelkrone.ba','43.8243699,18.302537099999995','07:00','12:00','07:00','12:00',5.00,'Bosnian','Visa','','','{\"Pool Table\": 2, \"Tennis Court\": 1}','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'Museum,fa-university,100m:Bank,fa-hand-holding-usd,300m','','','',_binary '',_binary '','2017-12-10 08:56:22','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/5.jpg,','15.00,12.02','17.00,12.08',17.00),(38,35,'customId','hotel','room','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/88185356.jpg','Hotel Europe','Bosnia and Herzegovina','71000','Sarajevo',1,'Vladislava Skarica 5, 71000 Sarajevo, Bosna i Hercegovina',5,NULL,NULL,NULL,'+387.033444555','info@europe.ba','http://www.europe.ba','43.8599126,18.426865799999973','07:00','12:00','07:00','12:00',5.00,NULL,'','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'Begova džamija,fa-mosque, 300m','','','',_binary '',_binary '','2017-12-28 21:58:46','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/49836211.jpg,http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/92634590.jpg,http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/88185356.jpg,http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/92639690.jpg',NULL,'17.00',17.00),(39,35,'customId','hotel','room','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/97026048.jpg','Hotel Sokak','Bosnia and Herzegovina','71000','Sarajevo',1,'Mula Mustafe Ba??eskije 24, Sarajevo, Bosnia and Herzegovina',1,NULL,'<div id=\"summary\" class=\"\" style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\"><p>Hotel Sokak is located in the historic centre of Sarajevo, close to Gazi-Husrev-Beg mosque. It offers rooms with flat-screen TVs, private bathrooms and free Wi-Fi internet access.</p><p>The Hotelâ??s lobby is air-conditioned and has a 24-hour front desk with a safe and a luggage storage room. A pleasant breakfast room with a bar and a common room are featured on site.</p><p>Guests of Hotel Sokak can benefit from the proximity to Sarajevo Cathedral and enjoy the unique Bosnian Architecture of the historic quarter.</p><p>Sarajevo Airport is 10 km away. A train and bus station can be reached within 3 km. Front desk arranges a shuttle service to/from the airport and the train station.<br></p></div><p class=\"geo_information\" style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\">This is our guests\' favourite part of Sarajevo, according to independent reviews.</p><p class=\"hp-desc-review-highlight hp-desc-traveller-type--ph-v0\" style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\">Couples particularly like the location â?? they rated it&nbsp;<strong>9.3</strong>&nbsp;for a two-person trip.</p><p class=\"hp-desc-we-speak\" style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\">We speak your language!</p>',NULL,'+387.062294659','info@go2balkan.com','','43.8599126,18.426865799999973','13:30','12:00','08:00','00:00',5.60,NULL,'','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,'','','',_binary '',_binary '','2017-12-29 00:05:47','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/61632026.jpg,http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/61632170.jpg,http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/95623823.jpg,http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/61631980.jpg',NULL,'17.00',2.00),(40,35,'customId','hotel','room','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/101634987.jpg','Hotel Divan','Bosnia and Herzegovina','71000','Sarajevo',1,'Mula Mustafe Baseskije 54',1,NULL,'<div id=\"summary\" class=\"\" style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\"><p>Hotel Divan is situated in the heart of Sarajevo\'s Old Town, the mediaeval Ba???ar??ija District. It provides free Wi-Fi in public areas and air-conditioned rooms with cable TV and a balcony.</p><p>All rooms are neatly furnished and heated. They feature a private bathroom, some offer a balcony or views of Sarajevoâ??s scenic old city. Guests can enjoy a continental breakfast buffet at the Divan Hotel. The reception desk is staffed 24 hours a day.</p><p>The Divan is within 100 m distance of the tram station. The main pedestrian street, numerous cafes, night clubs and restaurants surround the property.</p><p>Free daily city tours are offered one per day. Cultural monuments are situated in the vicinity. Some of them include Sarajevo Museum, Gazi Husrev-Beg Mosque, an old orthodox church, Cathedral of the Sacred Heart of Jesus, Ashkenazi Synagogue (Jewish Museum).&nbsp;<br></p></div><p class=\"geo_information\" style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\">This is our guests\' favourite part of Sarajevo, according to independent reviews.</p><p class=\"hp-desc-review-highlight hp-desc-traveller-type--ph-v0\" style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\">Couples particularly like the location â?? they rated it&nbsp;<strong>9.4</strong>&nbsp;for a two-person trip.</p><p class=\"hp-desc-we-speak\" style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\">We speak your language!</p>',NULL,'+387.062294659','info@go2balkan.com','','43.8599126,18.426865799999973','07:00','12:00','07:00','12:00',5.30,NULL,'','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,'','','',_binary '',_binary '','2017-12-29 00:54:23','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/101635131.jpg,http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/81530784.jpg,http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/54344247.jpg,http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/54760815.jpg',NULL,'17.00',2.00),(41,35,'701029ce0b1f4cb5a103cdd26874c761','hotel','room','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/48882154.jpg','Hotel VIP','Bosnia and Herzegovina','71000','Sarajevo',1,'Jaroslava ?ernija 3, Sarajevo, Bosnia and Herzegovina',4,NULL,'<div id=\"summary\" class=\"\" style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\"><p>Featuring free WiFi throughout the property, Hotel VIP offers accommodation in Sarajevo, 300 m from the vivid BaĹĄ?arĹĄija area and the Latin bridge. Guests can enjoy the on-site restaurant. Free airport shuttle is available.</p><p>Each room at this hotel is air conditioned and is fitted with a flat-screen TV. Certain units include a balcony where you can relax. The rooms come with a private bathroom equipped with a shower. Extras include bath robes and slippers.</p><p>Free coffee is provided in the hotel lobby. The hotel restaurants serves buffet breakfast and a variety of Bosnian specialties. There is free shuttle service at the property.</p><p>Bus and Railway Station are located about 3 km away. Sarajevo Airport is 9 km from the property.&nbsp;<br></p></div><p class=\"geo_information\" style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\">This is our guests\' favourite part of Sarajevo, according to independent reviews.</p><p class=\"hp-desc-review-highlight\" style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\">This property also has one of the best-rated locations in Sarajevo! Guests are happier about it compared to other properties in the area.</p><p class=\"hp-desc-review-highlight hp-desc-traveller-type--ph-v0\" style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\">Couples particularly like the location â they rated it&nbsp;<strong>9.8</strong>&nbsp;for a two-person trip.</p><p class=\"hp-desc-review-highlight\" style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\">This property is also rated for the best value in Sarajevo! Guests are getting more for their money when compared to other properties in this city.</p><p class=\"hp-desc-we-speak\" style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\">We speak your language!</p>',NULL,'+387.62294659','info@go2balkan.com','http://www.go2balkan.com','43.8602658,18.426974200000018','14:00','12:00','07:00','00:00',5.90,NULL,'','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,'','','',_binary '',_binary '','2017-12-30 01:11:30','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/49417824.jpg,http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/49417814.jpg,\'195\', \'41\', http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/49414562.jpg,http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/48880520.jpg',NULL,'17.00',2.00),(42,35,'1ae51bd763014d53bc30a6d3f8ff442b','hostel','room,bed','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/54005415.jpg','Hostel Franz Ferdinand','Bosnia and Herzegovina','71000','Sarajevo',1,'Jeli?a 4, Sarajevo, Bosna i Hercegovina',1,NULL,'<div id=\"summary\" class=\"\" style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\"><p>Hostel Franz Ferdinand smjeĹĄten je u srediĹĄtu Sarajeva, samo 100 metara od Ĺživopisnog podru?ja BarĹĄ?arĹĄija, a nudi moderne smjeĹĄtajne jedinice s TV-om ravnog ekrana s kabelskim programima i besplatnim beĹži?nim pristupom internetu. Tako?er su na raspolaganju zajedni?ka kuhinja i salon.</p><p>Sve sobe imaju ormar. Pojedine uklju?uju vlastitu kupaonicu, a druge zajedni?ku kupaonicu s tuĹĄem. Sve su jedinice opremljene besplatnim ormari?ima na zaklju?avanje. Uz nadoplatu je dostupna usluga pranja i suĹĄenja rublja.</p><p>Hostel Franz Ferdinand nudi recepciju otvorenu 24 sata dnevno i uslugu najma bicikala. Doru?ak se posluĹžuje svakog jutra.</p><p>Razne mogu?nosti objedovanja i no?ni klubovi smjeĹĄteni su oko 100 metara od objekta.</p><p>Tramvajska postaja udaljena je samo 20 metara, a stajaliĹĄte lokalnog autobusa 100 metara od hostela. Zra?na luka Sarajevo nalazi se na 13 km.&nbsp;<br></p></div><p class=\"geo_information\" style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\">Ovo je omiljeni dio odrediĹĄta \'Sarajevo\' za naĹĄe goste, na temelju nepristranih recenzija.</p><p class=\"hp-desc-review-highlight\" style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\">Ovaj objekt tako?er ima jednu od najbolje ocijenjenih lokacija u Sarajevu! Gosti su zadovoljniji ovim objektom u usporedbi s drugim objektima u okolici.</p><p class=\"hp-desc-review-highlight hp-desc-traveller-type--ph-v0\" style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\">Solo putnicima posebno se svidjela lokacija - ocijenili su je s&nbsp;<strong>9,8</strong>&nbsp;za svoje solo putovanje.</p>',NULL,'+387.33238098','info@franzferdinandhostel.com','http://www.franzferdinandhostel.com','43.8595935,18.426179100000013','14:00','12:00','07:00','00:00',6.00,NULL,'','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,'','','',_binary '',_binary '','2018-01-03 18:59:51',NULL,NULL,'17.00',2.00),(43,35,'3ff71b09620e41978073445251e4a392','hotel','room','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/57936847.jpg','Boutique Hotel Central','Bosnia and Herzegovina','71000','Sarajevo',1,'Cumurija br. 8',4,NULL,'<div id=\"summary\" class=\"\" style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\"><p><br class=\"Apple-interchange-newline\">The completely refurbished Hotel Central in Sarajevo provides exquisite facilities for fitness and relaxation as well as a 25 m long swimming pool.</p><p>Stay in shape at the fully air conditioned fitness club which is spread over 3 floors, providing the latest fitness and body shaping equipment. Complete relaxation offers the West Wood Day Spa, with a sauna, relaxing steam baths and a hydrotherapy pool. Indulge in professional treatments including facials, waxing, manicure and many others.</p><p>At the modernly decorated restaurant of Hotel Central you can savour skilfully prepared, freshly cooked continental breakfasts and choose from an extensive range of Mediterranean as well as local cuisine. Enjoy mouth-watering vegetables, tasty meats and delicious desserts.&nbsp;<br></p></div><p class=\"geo_information\" style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\">This is our guests\' favourite part of Sarajevo, according to independent reviews.</p><p class=\"hp-desc-review-highlight hp-desc-traveller-type--ph-v0\" style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\">Solo travellers particularly like the location â they rated it&nbsp;<strong>9.4</strong>&nbsp;for a one-person stay.</p><p class=\"hp-desc-we-speak\" style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\">We speak your language!</p>',NULL,'+387.62294659','info@go2balkan.com','http://www.go2balkan.com','43.8599126,18.426865799999973','15:00','12:00','07:00','00:00',6.30,NULL,'','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,'','','',_binary '',_binary '','2018-01-04 23:09:01',NULL,NULL,'17.00',2.00),(44,35,'customId','Hotel','room',NULL,'Hotel1','Bosnia and Herzegovina','71000','Sarajevo',0,'adress1',NULL,NULL,NULL,NULL,'123456789','email1@email.com','site.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '',NULL,NULL,NULL,'17.00',2.00),(45,35,'customId','Hostel','room,bed',NULL,'Hostel2','Bosnia and Herzegovina','72112','Zenica',0,'adress2',2,NULL,NULL,NULL,'123456','email2@email.com','site2.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '',NULL,NULL,NULL,'17.00',2.00),(46,35,'customId','Hotel','room',NULL,'Hotel2','Bosnia and Herzegovina','null','Tesanj',0,'adress1',3,NULL,NULL,NULL,'123456','email1@email.com','site.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,NULL,NULL,'17.00',2.00),(47,35,'customId','Hostel','room,bed',NULL,'Hotel3','Bosnia and Herzegovina','71000','Sarajevo',0,'adress1',1,NULL,NULL,NULL,'123456','email1@email.com','site.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0',NULL,NULL,NULL,'17.00',2.00);
/*!40000 ALTER TABLE `accommodation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accommodation_prices_periods`
--

DROP TABLE IF EXISTS `accommodation_prices_periods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `accommodation_prices_periods` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `accommodation` mediumint(8) unsigned DEFAULT NULL,
  `room_type` mediumint(8) unsigned DEFAULT NULL,
  `bed` mediumint(8) unsigned DEFAULT NULL,
  `price_start_date` date NOT NULL,
  `price_end_date` date NOT NULL,
  `entrant_cost` decimal(6,2) unsigned DEFAULT NULL,
  `commision` decimal(6,2) unsigned DEFAULT NULL,
  `vat_free` decimal(6,2) unsigned DEFAULT NULL,
  `vat_base` decimal(6,2) unsigned DEFAULT NULL,
  `vat_amount` decimal(6,2) unsigned DEFAULT NULL,
  `enduser_price` decimal(6,2) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodation_prices_periods`
--

LOCK TABLES `accommodation_prices_periods` WRITE;
/*!40000 ALTER TABLE `accommodation_prices_periods` DISABLE KEYS */;
INSERT INTO `accommodation_prices_periods` VALUES (24,39,54,NULL,'2018-04-01','2018-12-15',142.00,10.00,156.20,26.55,NULL,100.00),(25,39,54,NULL,'2018-04-15','2018-12-01',80.00,10.00,88.00,14.96,NULL,150.00),(27,40,55,NULL,'2018-02-01','2018-12-14',80.00,14.00,91.20,15.50,NULL,20.00),(28,40,55,NULL,'2018-04-14','2018-12-31',110.00,10.00,121.00,20.57,NULL,50.00),(29,41,57,NULL,'2018-02-28','2018-12-31',110.00,10.00,121.00,20.57,NULL,500.00),(31,42,58,NULL,'2018-02-28','2018-12-12',16.00,14.00,18.24,3.10,NULL,500.00),(32,42,59,NULL,'2018-01-03','2018-12-14',17.00,14.00,19.38,3.29,NULL,60.00),(33,43,61,NULL,'2018-02-28','2018-12-31',131.00,14.00,149.34,25.39,NULL,80.00),(35,43,62,NULL,'2018-04-20','2018-12-31',146.00,14.00,166.44,28.29,NULL,90.00),(36,43,63,NULL,'2018-05-10','2018-12-31',135.00,14.00,153.90,26.16,NULL,60.00),(37,44,64,NULL,'2018-02-28','2018-12-31',80.00,14.00,91.20,15.50,NULL,500.00),(38,38,NULL,NULL,'2018-02-28','2018-12-10',150.00,20.00,180.00,30.60,NULL,50.00),(39,35,48,NULL,'2018-04-10','2018-12-15',160.00,20.00,192.00,32.64,NULL,100.00),(40,35,48,NULL,'2018-04-15','2018-12-22',120.00,20.00,144.00,24.48,NULL,30.00),(41,35,48,NULL,'2018-04-22','2018-12-26',124.00,20.00,150.00,25.50,NULL,50.00),(46,40,56,NULL,'2018-03-31','2018-12-14',110.00,10.00,121.00,20.57,NULL,10.00),(47,40,56,NULL,'2018-04-14','2018-12-20',80.00,14.00,91.20,15.50,NULL,5.00),(48,42,58,NULL,'2018-04-12','2018-12-01',16.00,14.00,18.24,3.10,NULL,40.00),(49,42,59,NULL,'2018-04-15','2018-12-31',17.00,14.00,19.38,3.29,NULL,320.00),(50,39,52,NULL,'2018-04-01','2018-12-15',142.00,10.00,156.20,26.55,NULL,100.00),(51,NULL,50,NULL,'2018-11-04','2018-12-31',100.00,20.00,120.00,20.40,NULL,140.40),(57,35,NULL,NULL,'2019-03-04','2019-03-09',123.00,NULL,NULL,NULL,NULL,124.00),(59,35,50,NULL,'2019-03-06','2019-03-12',11.00,NULL,NULL,NULL,NULL,10.00),(63,35,50,NULL,'2019-03-02','2019-03-05',84.00,NULL,NULL,NULL,NULL,17.00),(65,35,50,NULL,'2019-03-06','2019-03-12',54.00,NULL,NULL,NULL,NULL,68.00),(66,35,48,NULL,'2019-03-07','2019-03-12',75.00,NULL,NULL,NULL,NULL,45.00),(67,35,48,NULL,'2019-03-14','2019-03-15',20.00,NULL,NULL,NULL,NULL,120.00),(71,35,48,NULL,'2019-03-14','2019-03-16',120.00,20.00,20.41,20.40,NULL,144.00),(72,35,48,NULL,'2019-03-14','2019-03-16',120.00,20.00,20.41,20.40,NULL,144.00),(74,35,50,NULL,'2019-03-12','2019-03-13',142.00,20.00,170.40,34.08,NULL,170.40),(75,35,50,NULL,'2019-03-05','2019-03-14',142.00,10.00,156.20,15.62,NULL,156.20),(77,35,48,NULL,'2019-03-15','2019-03-16',50.00,20.00,60.00,10.20,NULL,60.00);
/*!40000 ALTER TABLE `accommodation_prices_periods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accommodation_room_beds`
--

DROP TABLE IF EXISTS `accommodation_room_beds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `accommodation_room_beds` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `room_type` mediumint(8) unsigned DEFAULT NULL,
  `room` mediumint(8) unsigned DEFAULT NULL,
  `bedroom_bed_option` varchar(30) DEFAULT NULL,
  `beds_num` tinyint(3) unsigned DEFAULT NULL,
  `booked` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=678 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodation_room_beds`
--

LOCK TABLES `accommodation_room_beds` WRITE;
/*!40000 ALTER TABLE `accommodation_room_beds` DISABLE KEYS */;
INSERT INTO `accommodation_room_beds` VALUES (598,48,NULL,'2',1,_binary '\0'),(624,50,NULL,'1',2,_binary '\0'),(626,52,NULL,'1',1,_binary '\0'),(628,54,NULL,'2',1,_binary '\0'),(629,55,NULL,'2',1,_binary '\0'),(630,56,NULL,'2',1,_binary '\0'),(631,56,NULL,'1',1,NULL),(632,55,NULL,'1',1,NULL),(633,57,NULL,'1',1,_binary '\0'),(634,57,NULL,'2',1,_binary '\0'),(635,NULL,601,'1',6,_binary '\0'),(636,NULL,601,'1',6,_binary '\0'),(637,NULL,601,'1',6,_binary '\0'),(638,NULL,601,'1',6,_binary '\0'),(639,NULL,601,'1',6,_binary '\0'),(640,NULL,601,'1',6,_binary '\0'),(641,NULL,602,'1',6,_binary '\0'),(642,NULL,602,'1',6,_binary '\0'),(643,NULL,602,'1',6,_binary '\0'),(644,NULL,602,'1',6,_binary '\0'),(645,NULL,602,'1',6,_binary '\0'),(646,NULL,602,'1',6,_binary '\0'),(647,NULL,603,'1',6,_binary '\0'),(648,NULL,603,'1',6,_binary '\0'),(649,NULL,603,'1',6,_binary '\0'),(650,NULL,603,'1',6,_binary '\0'),(651,NULL,603,'1',6,_binary '\0'),(652,NULL,603,'1',6,_binary '\0'),(653,NULL,604,'1',6,_binary '\0'),(654,NULL,604,'1',6,_binary '\0'),(655,NULL,604,'1',6,_binary '\0'),(656,NULL,604,'1',6,_binary '\0'),(657,NULL,604,'1',6,_binary '\0'),(658,NULL,604,'1',6,_binary '\0'),(659,NULL,605,'1',6,_binary '\0'),(660,NULL,605,'1',6,_binary '\0'),(661,NULL,605,'1',6,_binary '\0'),(662,NULL,605,'1',6,_binary '\0'),(663,NULL,605,'1',6,_binary '\0'),(664,NULL,605,'1',6,_binary '\0'),(665,NULL,606,'1',4,_binary '\0'),(666,NULL,606,'1',4,_binary '\0'),(667,NULL,606,'1',4,_binary '\0'),(668,NULL,606,'1',4,_binary '\0'),(670,61,NULL,'1',1,_binary '\0'),(675,62,NULL,'2',1,_binary '\0'),(676,63,NULL,'2',1,_binary '\0'),(677,64,NULL,'1',1,_binary '\0');
/*!40000 ALTER TABLE `accommodation_room_beds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accommodation_room_types`
--

DROP TABLE IF EXISTS `accommodation_room_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `accommodation_room_types` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `custom_id` varchar(255) DEFAULT NULL,
  `accommodation` mediumint(8) unsigned NOT NULL,
  `room_type` varchar(300) NOT NULL,
  `room_name` varchar(300) DEFAULT NULL,
  `number_of_rooms` tinyint(3) unsigned DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `size` decimal(5,2) unsigned DEFAULT NULL,
  `room_capacity` tinyint(3) unsigned DEFAULT NULL,
  `beds` varchar(400) DEFAULT '',
  `extrabeds` varchar(800) DEFAULT '',
  `options_amenities` varchar(1500) DEFAULT NULL,
  `options_bathroom` varchar(1500) DEFAULT '',
  `options_outdoor_views` varchar(500) DEFAULT '',
  `options_food_drinks` varchar(1000) DEFAULT '',
  `options_media_tech` varchar(1000) DEFAULT '',
  `room_services` varchar(1000) DEFAULT '',
  `room_choices` varchar(2000) DEFAULT '',
  `smoking_allowed` bit(1) DEFAULT b'0',
  `promo_pic` varchar(300) DEFAULT NULL,
  `room_pics` varchar(10000) DEFAULT NULL,
  `cancelation_policies` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodation_room_types`
--

LOCK TABLES `accommodation_room_types` WRITE;
/*!40000 ALTER TABLE `accommodation_room_types` DISABLE KEYS */;
INSERT INTO `accommodation_room_types` VALUES (48,'3460ebcdc37e4b8c9e7a9f25f4a4e835',35,'Double','Deluxe Double Room',10,'<span style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: small;\">Ova klimatizovana soba nudi flat-screen TV, mini-bar i sef. Kupatilo je opremljeno tuĹĄem (bez kabine) i fenom za kosu.</span>',22.00,2,NULL,'0','bath hub','bidet','CIty View','Minibar','LCD TV','','',_binary '\0','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/3.jpg\n','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/3.jpg,http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg',NULL),(50,'c723389c28c84c758d6597646618f38e',35,'Double','Standard Double Room',9,'<span style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: small;\">Features a private bathroom with shower and comes equipped with air conditioning, cable TV and a small fridge. The room either has a balcony or offers a view of the Old Town.</span>',35.00,2,NULL,'0',NULL,NULL,NULL,NULL,'',NULL,NULL,_binary '\0','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg,http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg',NULL),(52,'5bcce0fb78034a29945a60ef5c582995',39,'Double','Budget Double Room',10,'<p style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: small;\">Room featuring a flat-screen TV, a radio and a private bathroom with shower and free toiletries.</p>',16.00,2,NULL,'0',NULL,NULL,NULL,NULL,'',NULL,NULL,_binary '\0','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg,http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg',NULL),(54,'548b6214fc1f4afc970c232b4f5f6be0',39,'Double','Deluxe Double Room',10,'<span style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: small;\">This studio features a flat-screen TV.</span>',30.00,2,NULL,'0',NULL,NULL,NULL,NULL,'',NULL,NULL,_binary '\0','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg,http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg',NULL),(55,'99f2ecd880804ca5823a6548705cfe89',40,'Twin/Double','Standard Double or Twin Room',10,'<span style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: small;\">Features a private bathroom with shower and comes equipped with air conditioning, cable TV and a small fridge. The room either has a balcony or offers a view of the Old Town.</span>',25.00,2,NULL,'0',NULL,NULL,NULL,NULL,'',NULL,NULL,_binary '\0','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg,http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg',NULL),(56,'c73c820d34614d6baeeaa248d9c23405',40,'Twin/Double','Superior Double or Twin Room',10,'<span style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: small;\">This twin/double room features a cable TV and air conditioning</span>',25.00,2,NULL,'0',NULL,NULL,NULL,NULL,'',NULL,NULL,_binary '\0','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg,http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg',NULL),(57,'211b0443350b439393661568c69c296b',41,'Twin/Double','Double or Twin Room',10,'<span style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: small;\">This twin/double room has a soundproofing, cable TV and minibar.</span>',25.00,2,NULL,'0',NULL,NULL,NULL,NULL,'',NULL,NULL,_binary '\0','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg,http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg',NULL),(58,'ddb0bee6287545299847e904d8b63ff2',42,'Bed in Dormmitory','Bed in 6-Bed Dormitory Room',5,'<span style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: small;\">This 8-Bed Dormitory Room is air-conditioned and offers, heating a wardrobe and linen. A shared bathroom with a shower is provided.</span>',23.00,6,NULL,'0',NULL,NULL,NULL,NULL,'',NULL,NULL,_binary '\0','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg,http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg',NULL),(59,'ccd67cb3a4cb4ea0a0c0a6659dcae0de',42,'Bed in Dormmitory','Bed in 4-Bed Mixed Dormitory Room',1,'<span style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: small;\">This 4-Bed Dormitory Room is air-conditioned and offers, heating a wardrobe and linen. A shared bathroom with a shower is provided</span>',18.00,4,NULL,'0',NULL,NULL,NULL,NULL,'',NULL,NULL,_binary '\0','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg,http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg',NULL),(61,'e1da9a4f66c8433fbd024bfd5dde5fed',43,'Single','Single Room',10,'<span style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: small;\">This single room features a satellite TV, bathrobe and air conditioning. Free upgrade to double/twin room available.</span>',15.00,1,NULL,'1',NULL,NULL,NULL,NULL,'',NULL,NULL,_binary '\0','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg,http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg',NULL),(62,'0e54b6ef1fe44e3eb4d6df19637356a2',43,'Single','Large Single Room',5,'<span style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: small;\">This single room features a satellite TV, bathrobe and air conditioning. Free upgrade to double/twin room available.</span>',25.00,1,NULL,'1',NULL,NULL,NULL,NULL,'',NULL,NULL,_binary '\0','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg,http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg',NULL),(63,'ae33600947634c2da3234d363a950f0e',43,'Twin/Double','Double or Twin Room',5,'<span style=\"color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: small;\">Room with a flat-screen satellite TV, tea and coffee making facilities, a minibar and a spacious bathroom. Free Wi-Fi is available in the room.</span>',26.00,2,NULL,'0',NULL,NULL,NULL,NULL,'',NULL,NULL,_binary '\0','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg','http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg,http://res.cloudinary.com/go2balkan/image/upload/v1/Hotel%20Sunce/rooms/2.jpg',NULL);
/*!40000 ALTER TABLE `accommodation_room_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accommodation_rooms`
--

DROP TABLE IF EXISTS `accommodation_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `accommodation_rooms` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `custom_id` varchar(255) DEFAULT NULL,
  `accommodation` mediumint(8) unsigned DEFAULT NULL,
  `room_type` mediumint(8) unsigned DEFAULT NULL,
  `room_no` varchar(10) DEFAULT NULL,
  `room_name` varchar(150) DEFAULT NULL,
  `room_short_name` varchar(10) DEFAULT NULL,
  `room_custom_name` varchar(150) DEFAULT NULL,
  `room_description` varchar(500) DEFAULT '',
  `room_notes` varchar(200) DEFAULT '',
  `room_size` decimal(5,2) DEFAULT NULL,
  `room_capacity` tinyint(4) unsigned DEFAULT NULL,
  `beds` varchar(400) DEFAULT '',
  `extrabeds` varchar(800) DEFAULT '',
  `outdoor_view` varchar(50) DEFAULT '',
  `floor_no` tinyint(3) unsigned DEFAULT NULL,
  `room_x` varchar(100) DEFAULT '0',
  `room_y` double DEFAULT '0',
  `smoking_allowed` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=652 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodation_rooms`
--

LOCK TABLES `accommodation_rooms` WRITE;
/*!40000 ALTER TABLE `accommodation_rooms` DISABLE KEYS */;
INSERT INTO `accommodation_rooms` VALUES (486,'fb393530f2',35,48,'Room 0','Deluxe Double Room','','Deluks Dvokrevetna Soba sa Bra?nim Krevetom','','-',22.00,2,NULL,'1',NULL,NULL,'0',0,_binary '\0'),(487,'1ac41e8c48',35,48,'Room 1','Deluxe Double Room','','Deluks Dvokrevetna Soba sa Bra?nim Krevetom','','-',22.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(488,'5ebd2551a5',35,48,'Room 2','Deluxe Double Room','','Deluks Dvokrevetna Soba sa Bra?nim Krevetom','','-',22.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(489,'b71d2add2b',35,48,'Room 3','Deluxe Double Room','','Deluks Dvokrevetna Soba sa Bra?nim Krevetom','','-',22.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(490,'ed0ef4b6ee',35,48,'Room 4','Deluxe Double Room','','Deluks Dvokrevetna Soba sa Bra?nim Krevetom','','-',22.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(491,'2aca8e0572',35,48,'Room 5','Deluxe Double Room','','Deluks Dvokrevetna Soba sa Bra?nim Krevetom','','-',22.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(492,'b6eed4f260',35,48,'Room 6','Deluxe Double Room','','Deluks Dvokrevetna Soba sa Bra?nim Krevetom','','-',22.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(493,'e7f6e2bb21',35,48,'Room 7','Deluxe Double Room','','Deluks Dvokrevetna Soba sa Bra?nim Krevetom','','-',22.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(494,'b12e2f2d68',35,48,'Room 8','Deluxe Double Room','','Deluks Dvokrevetna Soba sa Bra?nim Krevetom','','-',22.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(495,'a5f20eae17',35,48,'Room 9','Deluxe Double Room','','Deluks Dvokrevetna Soba sa Bra?nim Krevetom','','-',22.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(522,'2b7b29c082',38,50,'Room 1','Standard Double Room','','Standard Double or Twin Room','','-',35.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(523,'0343c14725',38,50,'Room 2','Standard Double Room','','Standard Double or Twin Room','','-',35.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(524,'39cf5baadf',38,50,'Room 3','Standard Double Room','','Standard Double or Twin Room','','-',35.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(525,'6f3407a0b2',38,50,'Room 4','Standard Double Room','','Standard Double or Twin Room','','-',35.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(526,'07a95e17fa',38,50,'Room 5','Standard Double Room','','Standard Double or Twin Room','','-',35.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(527,'4193b5e2ed',38,50,'Room 6','Standard Double Room','','Standard Double or Twin Room','','-',35.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(528,'6d2725b429',38,50,'Room 7','Standard Double Room','','Standard Double or Twin Room','','-',35.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(529,'55bac39f6d',38,50,'Room 8','Standard Double Room','','Standard Double or Twin Room','','-',35.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(530,'9675260031',38,50,'Room 9','Standard Double Room','','Standard Double or Twin Room','','-',35.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(541,'bf241255ba',39,52,'Room 0','Budget Double Room','','Double or Twin Room ','','-',16.00,1,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(542,'2af8268c08',39,52,'Room 1','Budget Double Room','','Double or Twin Room ','','-',16.00,1,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(543,'0675ff31b9',39,52,'Room 2','Budget Double Room','','Double or Twin Room ','','-',16.00,1,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(544,'9fafab422d',39,52,'Room 3','Budget Double Room','','Double or Twin Room ','','-',16.00,1,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(545,'e486ae04f7',39,52,'Room 4','Budget Double Room','','Double or Twin Room ','','-',16.00,1,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(546,'8568a108be',39,52,'Room 5','Budget Double Room','','Double or Twin Room ','','-',16.00,1,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(547,'c82c7c1c66',39,52,'Room 6','Budget Double Room','','Double or Twin Room ','','-',16.00,1,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(548,'c4479eaff1',39,52,'Room 7','Budget Double Room','','Double or Twin Room ','','-',16.00,1,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(549,'112af10ef9',39,52,'Room 8','Budget Double Room','','Double or Twin Room ','','-',16.00,1,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(550,'86f0d2b156',39,52,'Room 9','Budget Double Room','','Double or Twin Room ','','-',16.00,1,NULL,'2',NULL,NULL,NULL,NULL,_binary '\0'),(561,'dedc4d7663',39,54,'Room 10','Deluxe Double Room','','Studio','','-',30.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(562,'a21dad7cfd',39,54,'Room 11','Deluxe Double Room','','Studio','','-',30.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(563,'ae6a18d9bd',39,54,'Room 12','Deluxe Double Room','','Studio','','-',30.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(564,'7beeb15b68',39,54,'Room 13','Deluxe Double Room','','Studio','','-',30.00,2,NULL,'2',NULL,NULL,NULL,NULL,_binary '\0'),(565,'b38a4d52ac',39,54,'Room 14','Deluxe Double Room','','Studio','','-',30.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(566,'39be845d24',39,54,'Room 15','Deluxe Double Room','','Studio','','-',30.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(567,'8f00605267',39,54,'Room 16','Deluxe Double Room','','Studio','','-',30.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(568,'3dca02e3e1',39,54,'Room 17','Deluxe Double Room','','Studio','','-',30.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(569,'a04d540be5',39,54,'Room 18','Deluxe Double Room','','Studio','','-',30.00,2,NULL,'2',NULL,NULL,NULL,NULL,_binary '\0'),(570,'7d04df1b4f',39,54,'Room 19','Deluxe Double Room','','Studio','','-',30.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(571,'2fbbf9583b',40,55,'Room 0','Standard Double or Twin Room','','Standard Double or Twin Room','','-',25.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(572,'b0559b8da2',40,55,'Room 1','Standard Double or Twin Room','','Standard Double or Twin Room','','-',25.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(573,'dffcbb6bbe',40,55,'Room 2','Standard Double or Twin Room','','Standard Double or Twin Room','','-',25.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(574,'adcfe03ba6',40,55,'Room 3','Standard Double or Twin Room','','Standard Double or Twin Room','','-',25.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(575,'7ca905dc03',40,55,'Room 4','Standard Double or Twin Room','','Standard Double or Twin Room','','-',25.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(576,'c0e3f1a5d2',40,55,'Room 5','Standard Double or Twin Room','','Standard Double or Twin Room','','-',25.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(577,'ba45baeacf',40,55,'Room 6','Standard Double or Twin Room','','Standard Double or Twin Room','','-',25.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(578,'06833c3112',40,55,'Room 7','Standard Double or Twin Room','','Standard Double or Twin Room','','-',25.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(579,'6d636856c0',40,55,'Room 8','Standard Double or Twin Room','','Standard Double or Twin Room','','-',25.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(580,'372f902698',40,55,'Room 9','Standard Double or Twin Room','','Standard Double or Twin Room','','-',25.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(581,'d7f6b49927',40,56,'Room 0','Superior Double or Twin Room','','','','-',25.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(582,'bcffcffe06',40,56,'Room 1','Superior Double or Twin Room','','','','-',25.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(583,'84ec609955',40,56,'Room 2','Superior Double or Twin Room','','','','-',25.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(584,'f4d328eee1',40,56,'Room 3','Superior Double or Twin Room','','','','-',25.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(585,'24bf5ea887',40,56,'Room 4','Superior Double or Twin Room','','','','-',25.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(586,'a500130033',40,56,'Room 5','Superior Double or Twin Room','','','','-',25.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(587,'ec9eb40e03',40,56,'Room 6','Superior Double or Twin Room','','','','-',25.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(588,'f50ce532c3',40,56,'Room 7','Superior Double or Twin Room','','','','-',25.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(589,'cdd946260a',40,56,'Room 8','Superior Double or Twin Room','','','','-',25.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(590,'1e46e107f1',40,56,'Room 9','Superior Double or Twin Room','','','','-',25.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(591,'5a10e5324b',41,57,'Room 0','Double or Twin Room','','','','-',25.00,3,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(592,'eb94890271',41,57,'Room 1','Double or Twin Room','','','','-',25.00,3,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(593,'be4e9607f4',41,57,'Room 2','Double or Twin Room','','','','-',25.00,3,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(594,'0ae004f960',41,57,'Room 3','Double or Twin Room','','','','-',25.00,3,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(595,'b19c6cc946',41,57,'Room 4','Double or Twin Room','','','','-',25.00,3,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(596,'bf08538cd3',41,57,'Room 5','Double or Twin Room','','','','-',25.00,3,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(597,'8d91b1fb26',41,57,'Room 6','Double or Twin Room','','','','-',25.00,3,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(598,'1fc8a54839',41,57,'Room 7','Double or Twin Room','','','','-',25.00,3,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(599,'c2aabae7f1',41,57,'Room 8','Double or Twin Room','','','','-',25.00,3,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(600,'5080813904',41,57,'Room 9','Double or Twin Room','','','','-',25.00,3,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(601,'7b9bb7ae8c',42,58,'Room 0','Bed in 6-Bed Dormitory Room','','','','-',23.00,4,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(602,'8d18fd53b9',42,58,'Room 1','Bed in 6-Bed Dormitory Room','','','','-',23.00,4,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(603,'9f7d7b592f',42,58,'Room 2','Bed in 6-Bed Dormitory Room','','','','-',23.00,6,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(604,'e6dab70756',42,58,'Room 3','Bed in 6-Bed Dormitory Room','','','','-',23.00,6,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(605,'100d5a1fb4',42,58,'Room 4','Bed in 6-Bed Dormitory Room','','','','-',23.00,6,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(606,'561ec8ba5e',42,59,'Room 0','Bed in 4-Bed Mixed Dormitory Room','','','','-',18.00,6,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(612,'5cb3e70687',43,61,'Room 0','Single Room 1 + 1','','','','-',15.00,1,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(613,'ea8cae7fc6',43,61,'Room 1','Single Room 1 + 1','','','','-',15.00,1,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(614,'6d8860e0e1',43,61,'Room 2','Single Room 1 + 1','','','','-',15.00,1,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(615,'b668126a76',43,61,'Room 3','Single Room 1 + 1','','','','-',15.00,1,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(616,'f9e4ba3c92',43,61,'Room 4','Single Room 1 + 1','','','','-',15.00,1,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(617,'6686809dca',43,61,'Room 5','Single Room 1 + 1','','','','-',15.00,1,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(618,'6a93ab2ef2',43,61,'Room 6','Single Room 1 + 1','','','','-',15.00,1,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(619,'efebb58b79',43,61,'Room 7','Single Room 1 + 1','','','','-',15.00,1,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(620,'da99613a1d',43,61,'Room 8','Single Room 1 + 1','','','','-',15.00,1,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(621,'79bd3a351c',43,61,'Room 9','Single Room 1 + 1','','','','-',15.00,1,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(642,'43e4993520',43,62,'Room 0','Large Single Room','','','','-',25.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(643,'a0c3d78569',43,62,'Room 1','Large Single Room','','','','-',25.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(644,'67b8e75579',43,62,'Room 2','Large Single Room','','','','-',25.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(645,'f7dd2393de',43,62,'Room 3','Large Single Room','','','','-',25.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(646,'f78da091c6',43,62,'Room 4','Large Single Room','','','','-',25.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(647,'fa51870c5b',43,63,'Room 0','Double or Twin Room','','','','-',26.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(648,'1528fb3f03',43,63,'Room 1','Double or Twin Room','','','','-',26.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(649,'fa3003b8ea',43,63,'Room 2','Double or Twin Room','','','','-',26.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(650,'96ecf6e34d',43,63,'Room 3','Double or Twin Room','','','','-',26.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0'),(651,'b8a9e02ff4',43,63,'Room 4','Double or Twin Room','','','','-',26.00,2,NULL,'1',NULL,NULL,NULL,NULL,_binary '\0');
/*!40000 ALTER TABLE `accommodation_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_offices`
--

DROP TABLE IF EXISTS `account_offices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `account_offices` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `account` mediumint(8) unsigned DEFAULT NULL,
  `account_name` varchar(100) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `city` bigint(20) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_offices`
--

LOCK TABLES `account_offices` WRITE;
/*!40000 ALTER TABLE `account_offices` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_offices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `accounts` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account_type` varchar(100) NOT NULL,
  `account_role` varchar(500) DEFAULT 'ROLE_USER',
  `client_name` varchar(200) DEFAULT NULL,
  `contact_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `invoice_name` varchar(200) DEFAULT NULL,
  `invoice_state` varchar(50) DEFAULT NULL,
  `invoice_city` varchar(50) DEFAULT NULL,
  `invoice_zip` varchar(10) DEFAULT NULL,
  `invoice_address` varchar(200) DEFAULT NULL,
  `bank_account` varchar(20) DEFAULT NULL,
  `swift` varchar(20) DEFAULT NULL,
  `iban` varchar(20) DEFAULT NULL,
  `confirmed` bit(1) DEFAULT b'0',
  `active` bit(1) DEFAULT b'0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (34,'1','ROLE_USER',NULL,'Miro S','info123@adeda.ba','$2a$10$4QzXxjVI7TYOgpIy2k8Pue2Rxv08QQ6jyLQrqUhuaxCGy76VLZb8K','1',NULL,'1','Vilsonovo setaliste 10',NULL,'123123123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '','2019-01-10 13:56:55'),(35,'1','',NULL,'Muhamed Alispahic','info@adeda.ba','$2a$10$wwIH1ArCbfcuLoTDArMSUe2EY5b2Eeo1eTVzWaK.X25b381uWAR8u','1',NULL,'1','Vilsonovo setaliste 10','','+387.062294659',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '','2017-12-10 08:49:48'),(39,'1',NULL,NULL,'Name123 Example','info123123@adeda.ba','$2a$10$HWIHbfaJs1wUi.9thJUhDuULFQ5zl/VzELHhwfHeVYODPtpGpuJkq',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-01-10 15:38:55'),(40,'1',NULL,NULL,'Name123 Example','miroslav01yt@gmail.com','$2a$10$HRXXUk81V5tEiSHuhvfiJu9ugxx75ZGqetTY0UxLlfo562e1jliPa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-01-11 14:15:21');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `booking` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `custom_id` varchar(255) NOT NULL,
  `gateway_id` varchar(255) DEFAULT NULL,
  `account` mediumint(8) unsigned DEFAULT NULL,
  `accommodation` mediumint(8) unsigned DEFAULT NULL,
  `reservation_holder_id` mediumint(8) unsigned DEFAULT NULL,
  `reservation_holder_details` varchar(500) DEFAULT NULL,
  `arrival_date` date DEFAULT NULL,
  `departure_date` date DEFAULT NULL,
  `booking_status` varchar(20) DEFAULT 'booked',
  `booked_rooms` varchar(2000) DEFAULT NULL,
  `booked_services` varchar(1000) DEFAULT NULL,
  `booked_taxi` varchar(1000) DEFAULT NULL,
  `rent_unit_total_price` decimal(6,2) DEFAULT NULL,
  `services_total_price` decimal(6,2) DEFAULT NULL,
  `taxi_total_price` decimal(6,2) DEFAULT NULL,
  `grand_total` decimal(6,2) DEFAULT NULL,
  `to_account_ammount` decimal(6,2) DEFAULT NULL,
  `g2b_fee` decimal(6,2) DEFAULT NULL,
  `paidin_amount` decimal(6,2) DEFAULT NULL,
  `payment_mode` varchar(20) DEFAULT 'creditcard',
  `invoice_number` varchar(45) DEFAULT NULL,
  `note` varchar(400) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `reservation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,'ed2b13b4c721464bb682ccb0080dbefc','46290',35,35,123,'Muhamed Alispahic, BiH, 71000, Sarajevo, info@adeda.ba','2018-04-02','2018-04-05','booked','48,Double,Deluxe Double Room,2,486,487,60;50,Double,Standard Double or Twin Room,3,512,522,523,180;','',NULL,300.00,0.00,0.00,300.00,270.00,30.00,300.00,'creditcard','G2B12181720828','',NULL,'2017-12-18 15:26:09');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_calendar`
--

DROP TABLE IF EXISTS `booking_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `booking_calendar` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `accommodation` mediumint(8) unsigned DEFAULT NULL,
  `room_type` mediumint(8) unsigned DEFAULT NULL,
  `room` mediumint(8) unsigned DEFAULT NULL,
  `check_in` date DEFAULT NULL,
  `check_out` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin2 COLLATE=latin2_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_calendar`
--

LOCK TABLES `booking_calendar` WRITE;
/*!40000 ALTER TABLE `booking_calendar` DISABLE KEYS */;
INSERT INTO `booking_calendar` VALUES (1,35,48,486,'2018-12-05','2018-12-10'),(2,35,48,487,'2018-12-05','2018-12-10'),(3,42,59,606,'2018-12-05','2018-12-10'),(4,35,50,521,'2018-12-05','2018-12-10');
/*!40000 ALTER TABLE `booking_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_accommodation_activities`
--

DROP TABLE IF EXISTS `cb_accommodation_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_accommodation_activities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `accommodation` bigint(20) DEFAULT NULL,
  `activity_icon` blob,
  `activity_name` varchar(100) NOT NULL,
  `option_payable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_accommodation_activities`
--

LOCK TABLES `cb_accommodation_activities` WRITE;
/*!40000 ALTER TABLE `cb_accommodation_activities` DISABLE KEYS */;
INSERT INTO `cb_accommodation_activities` VALUES (1,NULL,NULL,'Tennis Court',0),(2,NULL,NULL,'Pool Table',0),(3,NULL,NULL,'Ping-Pong',0),(4,NULL,NULL,'Darts',0),(5,NULL,NULL,'Racquetball',0),(6,NULL,NULL,'Bowling',0),(7,NULL,NULL,'Mini Golf',0),(8,NULL,NULL,'Golf Course (within 2 miles)',0),(9,NULL,NULL,'Water Park',0),(10,NULL,NULL,'Water Sports Facilities (on site)',0),(11,NULL,NULL,'Windsurfing',0),(12,NULL,NULL,'Diving',0),(13,NULL,NULL,'Snorkeling',0),(14,NULL,NULL,'Canoeing',0),(15,NULL,NULL,'Fishing',0),(16,NULL,NULL,'Horseback Riding',0),(17,NULL,NULL,'Cycling',0),(18,NULL,NULL,'Hiking',0),(19,NULL,NULL,'Skiing',0),(20,NULL,NULL,'Ski Storage',0),(21,NULL,NULL,'Ski Equipment Rental (on site)',0),(22,NULL,NULL,'Ski Passes Available',0),(23,NULL,NULL,'Ski-to-Door Access',0),(24,NULL,NULL,'Ski School',0);
/*!40000 ALTER TABLE `cb_accommodation_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_accommodation_breakfast_types`
--

DROP TABLE IF EXISTS `cb_accommodation_breakfast_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_accommodation_breakfast_types` (
  `id` int(5) NOT NULL,
  `breakfast_type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_accommodation_breakfast_types`
--

LOCK TABLES `cb_accommodation_breakfast_types` WRITE;
/*!40000 ALTER TABLE `cb_accommodation_breakfast_types` DISABLE KEYS */;
INSERT INTO `cb_accommodation_breakfast_types` VALUES (1,'Continental'),(2,'Italian'),(3,'Vegan'),(4,'Vegetarian'),(5,'Halal'),(6,'Asian'),(7,'Mediterranean'),(8,'Thai'),(9,'International');
/*!40000 ALTER TABLE `cb_accommodation_breakfast_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_accommodation_business_facilities`
--

DROP TABLE IF EXISTS `cb_accommodation_business_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_accommodation_business_facilities` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `accommodation` bigint(20) DEFAULT NULL,
  `facility_name` varchar(100) DEFAULT NULL,
  `option_payable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_accommodation_business_facilities`
--

LOCK TABLES `cb_accommodation_business_facilities` WRITE;
/*!40000 ALTER TABLE `cb_accommodation_business_facilities` DISABLE KEYS */;
INSERT INTO `cb_accommodation_business_facilities` VALUES (1,NULL,'Meeting/Banquet Facilities',0),(2,NULL,'Business Center',0),(3,NULL,'Fax/Photocopying',0);
/*!40000 ALTER TABLE `cb_accommodation_business_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_accommodation_cleaning_services`
--

DROP TABLE IF EXISTS `cb_accommodation_cleaning_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_accommodation_cleaning_services` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `accommodation` bigint(20) DEFAULT NULL,
  `service_name` varchar(100) NOT NULL,
  `option_payable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_accommodation_cleaning_services`
--

LOCK TABLES `cb_accommodation_cleaning_services` WRITE;
/*!40000 ALTER TABLE `cb_accommodation_cleaning_services` DISABLE KEYS */;
INSERT INTO `cb_accommodation_cleaning_services` VALUES (1,NULL,'Dry Cleaning',0),(2,NULL,'Ironing Service',0),(3,NULL,'Laundry',0),(4,NULL,'Daily Housekeeping',0),(5,NULL,'Shoeshine',0),(6,NULL,'Suit Press',0),(7,NULL,'Daily maid service',0),(8,NULL,'Trouser press ',0);
/*!40000 ALTER TABLE `cb_accommodation_cleaning_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_accommodation_common_areas`
--

DROP TABLE IF EXISTS `cb_accommodation_common_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_accommodation_common_areas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `accommodation` bigint(20) DEFAULT NULL,
  `area_name` varchar(100) NOT NULL,
  `option_payable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_accommodation_common_areas`
--

LOCK TABLES `cb_accommodation_common_areas` WRITE;
/*!40000 ALTER TABLE `cb_accommodation_common_areas` DISABLE KEYS */;
INSERT INTO `cb_accommodation_common_areas` VALUES (1,NULL,'Grounds',0),(2,NULL,'Terrace',0),(3,NULL,'Sun Deck',0),(4,NULL,'Shared Kitchen',0),(5,NULL,'Shared Lounge/TV Area',0),(6,NULL,'Game Room',0),(7,NULL,'Library',0),(8,NULL,'Chapel/Shrine',0);
/*!40000 ALTER TABLE `cb_accommodation_common_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_accommodation_entertainment`
--

DROP TABLE IF EXISTS `cb_accommodation_entertainment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_accommodation_entertainment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `accommodation` bigint(20) DEFAULT NULL,
  `entertainment_name` varchar(100) NOT NULL,
  `option_payable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_accommodation_entertainment`
--

LOCK TABLES `cb_accommodation_entertainment` WRITE;
/*!40000 ALTER TABLE `cb_accommodation_entertainment` DISABLE KEYS */;
INSERT INTO `cb_accommodation_entertainment` VALUES (1,NULL,'Evening Entertainment',0),(2,NULL,'Nightclub/DJ',0),(3,NULL,'Casino',0),(4,NULL,'Karaoke',0),(5,NULL,'Entertainment Staff',0),(6,NULL,'Kids\' Club',0),(7,NULL,'Playground',0),(8,NULL,'Babysitting/Child Services',0);
/*!40000 ALTER TABLE `cb_accommodation_entertainment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_accommodation_food_drink`
--

DROP TABLE IF EXISTS `cb_accommodation_food_drink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_accommodation_food_drink` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `accommodation` bigint(20) DEFAULT NULL,
  `amenity_icon` blob,
  `amenity_name` varchar(100) NOT NULL,
  `option_payable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_accommodation_food_drink`
--

LOCK TABLES `cb_accommodation_food_drink` WRITE;
/*!40000 ALTER TABLE `cb_accommodation_food_drink` DISABLE KEYS */;
INSERT INTO `cb_accommodation_food_drink` VALUES (1,NULL,NULL,'Restaurant',0),(2,NULL,NULL,'Restaurant with Dining Menu',0),(3,NULL,NULL,'Buffet-Style Restaurant',0),(4,NULL,NULL,'Bar',0),(5,NULL,NULL,'Snack Bar',0),(6,NULL,NULL,'Grocery Deliveries',0),(7,NULL,NULL,'Packed Lunches',0),(8,NULL,NULL,'BBQ Facilities',0),(9,NULL,NULL,'Vending Machine (drinks)',0),(10,NULL,NULL,'Vending Machine (snacks)',0),(11,NULL,NULL,'Special Diet Meals (upon request)',0),(12,NULL,NULL,'Room Service',0),(13,NULL,NULL,'Breakfast in the Room',0),(14,NULL,NULL,'Chocolate or cookies',1),(15,NULL,NULL,'Minibar',1);
/*!40000 ALTER TABLE `cb_accommodation_food_drink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_accommodation_frontdesk_services`
--

DROP TABLE IF EXISTS `cb_accommodation_frontdesk_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_accommodation_frontdesk_services` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `accommodation` bigint(20) DEFAULT NULL,
  `service_name` varchar(100) NOT NULL,
  `option_payable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_accommodation_frontdesk_services`
--

LOCK TABLES `cb_accommodation_frontdesk_services` WRITE;
/*!40000 ALTER TABLE `cb_accommodation_frontdesk_services` DISABLE KEYS */;
INSERT INTO `cb_accommodation_frontdesk_services` VALUES (1,NULL,'24-Hour Front Desk',0),(2,NULL,'Private Check-in/Check-out',0),(3,NULL,'Express Check-in/Check-out',0),(4,NULL,'Concierge Service',0),(5,NULL,'Ticket Service',0),(6,NULL,'Tour Desk',0),(7,NULL,'Currency Exchange',0),(8,NULL,'ATM on site',0),(9,NULL,'Valet Parking',0),(10,NULL,'Baggage Storage',0),(11,NULL,'Lockers',0),(12,NULL,'Safe',0),(13,NULL,'Newspapers',0);
/*!40000 ALTER TABLE `cb_accommodation_frontdesk_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_accommodation_miscellaneous`
--

DROP TABLE IF EXISTS `cb_accommodation_miscellaneous`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_accommodation_miscellaneous` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `accommodation` bigint(20) DEFAULT NULL,
  `option_name` varchar(100) NOT NULL,
  `option_payable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_accommodation_miscellaneous`
--

LOCK TABLES `cb_accommodation_miscellaneous` WRITE;
/*!40000 ALTER TABLE `cb_accommodation_miscellaneous` DISABLE KEYS */;
INSERT INTO `cb_accommodation_miscellaneous` VALUES (1,NULL,'Adults Only',0),(2,NULL,'Hypoallergenic room available',0),(3,NULL,'All Spaces Non-Smoking (public and private)',0),(4,NULL,'Designated Smoking Area',0),(5,NULL,'Non-smoking Rooms',0),(6,NULL,'Facilities for Disabled Guests',0),(7,NULL,'Elevator',0),(8,NULL,'Soundproof Rooms',0),(9,NULL,'Honeymoon Suite',0),(10,NULL,'VIP Room Facilities',0),(11,NULL,'Air Conditioning',0),(12,NULL,'Heating',0);
/*!40000 ALTER TABLE `cb_accommodation_miscellaneous` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_accommodation_pool_spa`
--

DROP TABLE IF EXISTS `cb_accommodation_pool_spa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_accommodation_pool_spa` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `accommodation` bigint(20) DEFAULT NULL,
  `amenity_icon` blob,
  `amenity_name` varchar(100) NOT NULL,
  `option_payable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_accommodation_pool_spa`
--

LOCK TABLES `cb_accommodation_pool_spa` WRITE;
/*!40000 ALTER TABLE `cb_accommodation_pool_spa` DISABLE KEYS */;
INSERT INTO `cb_accommodation_pool_spa` VALUES (1,NULL,NULL,'Indoor Pool',0),(2,NULL,NULL,'Indoor Pool (seasonal)',0),(3,NULL,NULL,'Indoor Pool (all year)',0),(4,NULL,NULL,'Outdoor Pool',0),(5,NULL,NULL,'Outdoor Pool (seasonal)',0),(6,NULL,NULL,'Outdoor Pool (all year)',0),(7,NULL,NULL,'Private Beach Area',0),(8,NULL,NULL,'Beachfront',0),(9,NULL,NULL,'Spa',0),(10,NULL,NULL,'Sauna',0),(11,NULL,NULL,'Turkish/Steam Bath',0),(12,NULL,NULL,'Hot Tub',0),(13,NULL,NULL,'Fitness Center',0),(14,NULL,NULL,'Solarium',0),(15,NULL,NULL,'Hot Spring Bath',0),(16,NULL,NULL,'Massage',1),(17,NULL,NULL,'Fitness/spa locker rooms',0),(18,NULL,NULL,'Fitness classes',1),(19,NULL,NULL,'Yoga classes',1),(20,NULL,NULL,'Full body massage',1),(21,NULL,NULL,'Head massage',1),(22,NULL,NULL,'Foot massage',1),(23,NULL,NULL,'Neck massage',1),(24,NULL,NULL,'Back massage',1),(25,NULL,NULL,'Body Treatments',1),(26,NULL,NULL,'Spa/wellness packages',1),(27,NULL,NULL,'Spa lounge/relaxation area',1),(28,NULL,NULL,'Spa Facilities',1),(29,NULL,NULL,'Pedicure',1),(30,NULL,NULL,'Manicure',1),(31,NULL,NULL,'Waxing services',1),(32,NULL,NULL,'Facial treatments',1),(33,NULL,NULL,'Beauty Services',1),(34,NULL,NULL,'Swimming pool',1),(35,NULL,NULL,'Hammam',1),(36,NULL,NULL,'Hot tub/jacuzzi',1);
/*!40000 ALTER TABLE `cb_accommodation_pool_spa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_accommodation_shops`
--

DROP TABLE IF EXISTS `cb_accommodation_shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_accommodation_shops` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `accommodation` bigint(20) DEFAULT NULL,
  `shop_name` varchar(100) NOT NULL,
  `option_payable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_accommodation_shops`
--

LOCK TABLES `cb_accommodation_shops` WRITE;
/*!40000 ALTER TABLE `cb_accommodation_shops` DISABLE KEYS */;
INSERT INTO `cb_accommodation_shops` VALUES (1,NULL,'Shops (on site)',0),(2,NULL,'Convenience Store (on site)',0),(3,NULL,'Hair/Beauty Salon',0),(4,NULL,'Souvenir/Gift Shop',0);
/*!40000 ALTER TABLE `cb_accommodation_shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_accommodation_staff_language`
--

DROP TABLE IF EXISTS `cb_accommodation_staff_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_accommodation_staff_language` (
  `id` int(5) NOT NULL,
  `language_type` varchar(100) NOT NULL,
  `code` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_accommodation_staff_language`
--

LOCK TABLES `cb_accommodation_staff_language` WRITE;
/*!40000 ALTER TABLE `cb_accommodation_staff_language` DISABLE KEYS */;
INSERT INTO `cb_accommodation_staff_language` VALUES (1,'Arabic','ar'),(2,'Bosnian','ba'),(3,'Czech','cs'),(4,'Chinese','zh'),(5,'Croatian','hr'),(6,'English','us'),(7,'Finnish','fi'),(8,'French','fr'),(9,'German','de'),(10,'Greek','el'),(11,'Hungarian','hu'),(12,'Italian','it'),(13,'Japanese','ja'),(14,'Korean','ko'),(15,'Lithuanian','lt'),(16,'Macedonian','mk'),(17,'Malay','ms'),(18,'Maltese','mt'),(19,'Norwegian','no'),(20,'Polish','pl'),(21,'Portuguese','pt'),(22,'Romanian','ro'),(23,'Russian','ru'),(24,'Serbian','sr'),(25,'Slovak','sk'),(26,'Slovenian','sl'),(27,'Spanish','es'),(28,'Swedish','sv'),(29,'Turkish','tr'),(30,'Bulgarian','bg');
/*!40000 ALTER TABLE `cb_accommodation_staff_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_accommodation_transportation`
--

DROP TABLE IF EXISTS `cb_accommodation_transportation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_accommodation_transportation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `accommodation` bigint(20) DEFAULT NULL,
  `amenity_icon` blob,
  `amenity_name` varchar(100) NOT NULL,
  `option_payable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_accommodation_transportation`
--

LOCK TABLES `cb_accommodation_transportation` WRITE;
/*!40000 ALTER TABLE `cb_accommodation_transportation` DISABLE KEYS */;
INSERT INTO `cb_accommodation_transportation` VALUES (1,NULL,NULL,'Bikes Available (free)',0),(2,NULL,NULL,'Bicycle Rental',1),(3,NULL,NULL,'Car Rental',1),(4,NULL,NULL,'Airport Shuttle (surcharge)',1),(5,NULL,NULL,'Airport Shuttle (free)',0),(6,NULL,NULL,'Shuttle Service (free)',0),(7,NULL,NULL,'Shuttle Service (surcharge)',1),(8,NULL,NULL,'Airport Shuttle',1);
/*!40000 ALTER TABLE `cb_accommodation_transportation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_accommodation_types`
--

DROP TABLE IF EXISTS `cb_accommodation_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_accommodation_types` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) NOT NULL,
  `rent_type` set('complete','room','bed') DEFAULT 'room',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_accommodation_types`
--

LOCK TABLES `cb_accommodation_types` WRITE;
/*!40000 ALTER TABLE `cb_accommodation_types` DISABLE KEYS */;
INSERT INTO `cb_accommodation_types` VALUES (2,'Apartment',''),(3,'Bed and breakfast',NULL),(4,'Country house',NULL),(5,'Guesthouse',NULL),(6,'Homestay',NULL),(7,'Farm stay',NULL),(8,'Lodge',NULL),(9,'Vacation home',NULL),(10,'Villa',NULL),(11,'Chalet',NULL),(12,'Hostel','room,bed'),(13,'Hotel','room'),(14,'Motel',NULL),(15,'Inn',NULL),(16,'Capsule Hotel',NULL),(17,'Condo Hotel',NULL),(18,'Resort',NULL),(19,'Campsite',NULL),(20,'Luxury Tent',NULL),(21,'Ryad',NULL),(22,'Ryokan',NULL),(23,'Love Hotel',NULL),(24,'Boat',NULL),(25,'Economy Hotel',NULL);
/*!40000 ALTER TABLE `cb_accommodation_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_account_types`
--

DROP TABLE IF EXISTS `cb_account_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_account_types` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) NOT NULL,
  `type_role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_account_types`
--

LOCK TABLES `cb_account_types` WRITE;
/*!40000 ALTER TABLE `cb_account_types` DISABLE KEYS */;
INSERT INTO `cb_account_types` VALUES (1,'Hotel','ROLE_HOTEL'),(2,'Travel Agency','ROLE_TRAVEL_AGENCY'),(3,'MICE Agency','ROLE_MICE_AGENCY'),(4,'Event Promoter','ROLE_EVENT_PROMOTER'),(5,'Rent a Car','ROLE_RENT_A_CAR'),(6,'Restaurant','ROLE_RESTAURANT');
/*!40000 ALTER TABLE `cb_account_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_agency_types`
--

DROP TABLE IF EXISTS `cb_agency_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_agency_types` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_agency_types`
--

LOCK TABLES `cb_agency_types` WRITE;
/*!40000 ALTER TABLE `cb_agency_types` DISABLE KEYS */;
INSERT INTO `cb_agency_types` VALUES (1,'Travel agency'),(2,'Rent-a-Car agency');
/*!40000 ALTER TABLE `cb_agency_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_bed_preferences`
--

DROP TABLE IF EXISTS `cb_bed_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_bed_preferences` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `preference1_name` varchar(100) DEFAULT NULL,
  `preference1_capacity` tinyint(3) unsigned DEFAULT NULL,
  `preference2_name` varchar(100) DEFAULT NULL,
  `preference2_capacity` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_bed_preferences`
--

LOCK TABLES `cb_bed_preferences` WRITE;
/*!40000 ALTER TABLE `cb_bed_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `cb_bed_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_booking_status`
--

DROP TABLE IF EXISTS `cb_booking_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_booking_status` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `accommodation` bigint(20) DEFAULT NULL,
  `status_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_booking_status`
--

LOCK TABLES `cb_booking_status` WRITE;
/*!40000 ALTER TABLE `cb_booking_status` DISABLE KEYS */;
INSERT INTO `cb_booking_status` VALUES (1,NULL,NULL,'Cancelled'),(2,NULL,NULL,'Totally Paid'),(3,NULL,NULL,'Partially Paid'),(4,NULL,NULL,'Reserved'),(5,NULL,NULL,'Refunded');
/*!40000 ALTER TABLE `cb_booking_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_cancellation_policies`
--

DROP TABLE IF EXISTS `cb_cancellation_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_cancellation_policies` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `policy_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_cancellation_policies`
--

LOCK TABLES `cb_cancellation_policies` WRITE;
/*!40000 ALTER TABLE `cb_cancellation_policies` DISABLE KEYS */;
INSERT INTO `cb_cancellation_policies` VALUES (1,NULL,'Day of arrival (6 pm)'),(2,NULL,'1 day'),(3,NULL,'2 days'),(4,NULL,'3 days'),(5,NULL,'7 days'),(6,NULL,'14 days');
/*!40000 ALTER TABLE `cb_cancellation_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_city_tax_types`
--

DROP TABLE IF EXISTS `cb_city_tax_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_city_tax_types` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `tax_type` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_city_tax_types`
--

LOCK TABLES `cb_city_tax_types` WRITE;
/*!40000 ALTER TABLE `cb_city_tax_types` DISABLE KEYS */;
INSERT INTO `cb_city_tax_types` VALUES (1,'EUR/night'),(2,'EUR/stay'),(3,'EUR/person per night'),(4,'EUR/person per stay'),(5,'%'),(6,'N/A'),(7,'incalculable');
/*!40000 ALTER TABLE `cb_city_tax_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_client_classes`
--

DROP TABLE IF EXISTS `cb_client_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_client_classes` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `class_name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_client_classes`
--

LOCK TABLES `cb_client_classes` WRITE;
/*!40000 ALTER TABLE `cb_client_classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cb_client_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_client_types`
--

DROP TABLE IF EXISTS `cb_client_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_client_types` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `client_type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_client_types`
--

LOCK TABLES `cb_client_types` WRITE;
/*!40000 ALTER TABLE `cb_client_types` DISABLE KEYS */;
INSERT INTO `cb_client_types` VALUES (1,'Public User'),(2,'Agency'),(3,'Accommodation');
/*!40000 ALTER TABLE `cb_client_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_credit_cards`
--

DROP TABLE IF EXISTS `cb_credit_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_credit_cards` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `card_icon` longtext,
  `card_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_credit_cards`
--

LOCK TABLES `cb_credit_cards` WRITE;
/*!40000 ALTER TABLE `cb_credit_cards` DISABLE KEYS */;
INSERT INTO `cb_credit_cards` VALUES (1,'cc-amex','American Express'),(2,'cc-visa','Visa'),(3,'cc-mastercard','Euro/Mastercard'),(4,'cc-diners-club','Diners Club'),(5,'cc-discover','Discover'),(6,'cc-maestro','Maestro');
/*!40000 ALTER TABLE `cb_credit_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_gratis`
--

DROP TABLE IF EXISTS `cb_gratis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_gratis` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `gratis_type` bigint(20) NOT NULL COMMENT 'Ono na ÄšËta se veÄšÄže dati gratis: Accommodation, Room, Service ili razno',
  `reference` bigint(20) DEFAULT NULL,
  `gratis_class` int(10) NOT NULL COMMENT 'Ono na koga se odnosi gratis: MICE, TA, klijent ili razno',
  `class` bigint(20) DEFAULT NULL,
  `gratis_name` varchar(200) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `max_age` date DEFAULT NULL,
  `min_age` date DEFAULT NULL,
  `gratis_start_date` date DEFAULT NULL,
  `gratis_end_date` date DEFAULT NULL,
  `clients_no_gratis` int(2) DEFAULT NULL,
  `entry_price` float(6,2) DEFAULT NULL,
  `fitness_amount` float(6,2) DEFAULT NULL,
  `vat_base` float(6,2) DEFAULT NULL,
  `vat` float(6,2) DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_gtclass_idx` (`gratis_class`),
  CONSTRAINT `fk_gtclass` FOREIGN KEY (`gratis_class`) REFERENCES `discount_classes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_gratis`
--

LOCK TABLES `cb_gratis` WRITE;
/*!40000 ALTER TABLE `cb_gratis` DISABLE KEYS */;
/*!40000 ALTER TABLE `cb_gratis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_internet_connection_location`
--

DROP TABLE IF EXISTS `cb_internet_connection_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_internet_connection_location` (
  `id` tinyint(4) NOT NULL,
  `location_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_internet_connection_location`
--

LOCK TABLES `cb_internet_connection_location` WRITE;
/*!40000 ALTER TABLE `cb_internet_connection_location` DISABLE KEYS */;
INSERT INTO `cb_internet_connection_location` VALUES (1,'All rooms'),(2,'Entire property'),(3,'Public areas'),(4,'Some rooms');
/*!40000 ALTER TABLE `cb_internet_connection_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_internet_connection_type`
--

DROP TABLE IF EXISTS `cb_internet_connection_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_internet_connection_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `connection_type` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_internet_connection_type`
--

LOCK TABLES `cb_internet_connection_type` WRITE;
/*!40000 ALTER TABLE `cb_internet_connection_type` DISABLE KEYS */;
INSERT INTO `cb_internet_connection_type` VALUES (1,'Cable'),(2,'Wi-Fi');
/*!40000 ALTER TABLE `cb_internet_connection_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_locations`
--

DROP TABLE IF EXISTS `cb_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_locations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `entity` varchar(50) DEFAULT NULL,
  `canton` varchar(50) DEFAULT NULL,
  `city_tax` decimal(4,2) DEFAULT NULL,
  `vat` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_locations`
--

LOCK TABLES `cb_locations` WRITE;
/*!40000 ALTER TABLE `cb_locations` DISABLE KEYS */;
INSERT INTO `cb_locations` VALUES (1,'Bosnia and Herzegovina','Sarajevo','71000',NULL,NULL,2.00,'17.00'),(2,'Bosnia and Herzegovina','Zenica','72112',NULL,NULL,2.00,'17.00'),(3,'Bosnia and Herzegovina','Mostar','88000',NULL,NULL,2.00,'17.00'),(4,'Bosnia and Herzegovina','Tuzla','75000',NULL,NULL,1.00,'17.00'),(5,'Bosnia and Herzegovina','Dubrovnik','20000',NULL,NULL,3.00,'22.00'),(6,'2','Split','21000',NULL,NULL,2.00,'22.00'),(7,'2','Sibenik','22000',NULL,NULL,2.00,'22.00'),(8,'3','Tirana','11215',NULL,NULL,1.00,'23.00'),(9,'8','Budimpešta',NULL,NULL,NULL,2.00,'23.00'),(10,'2','Opatija',NULL,NULL,NULL,2.00,'22.00'),(11,'Bosnia and Herzegovina','Neum',NULL,NULL,NULL,2.00,'17.00'),(12,'7','Vodice',NULL,NULL,NULL,2.00,'21.00'),(13,'7','Ulicinj',NULL,NULL,NULL,2.00,'21.00'),(14,'Bosnia and Herzegovina','Banja Luka',NULL,NULL,NULL,2.00,'17.00'),(15,'Bosnia and Herzegovina','Bihac',NULL,NULL,NULL,2.00,'17.00'),(16,'Bosnia and Herzegovina','Brcko',NULL,NULL,NULL,2.00,'17.00'),(17,'Bosnia and Herzegovina','Travnik',NULL,NULL,NULL,2.00,'17.00'),(18,'Bosnia and Herzegovina','Jajce',NULL,NULL,NULL,2.00,'17.00'),(19,'Bosnia and Herzegovina','Kakanj',NULL,NULL,NULL,2.00,'17.00'),(20,'Bosnia and Herzegovina','Visoko',NULL,NULL,NULL,2.00,'17.00'),(21,'Bosnia and Herzegovina','Tesanj',NULL,NULL,NULL,2.00,'17.00'),(22,'Bosnia and Herzegovina','Konjic',NULL,NULL,NULL,2.00,'17.00'),(23,'Hrvatska','Zadar',NULL,NULL,NULL,3.00,'22.00'),(24,'2','Rijeka',NULL,NULL,NULL,3.00,'22.00'),(25,'2','Makarska',NULL,NULL,NULL,3.00,'22.00'),(26,'2','Pula',NULL,NULL,NULL,3.00,'22.00'),(27,'2','Osijek',NULL,NULL,NULL,3.00,'22.00'),(28,'3','Durres',NULL,NULL,NULL,1.00,'23.00'),(29,'3','Elbasan',NULL,NULL,NULL,1.00,'23.00'),(30,'3','Vlore',NULL,NULL,NULL,1.00,'23.00'),(31,'4','Maribor',NULL,NULL,NULL,5.00,'9.50'),(32,'4','Ljubljana',NULL,NULL,NULL,5.00,'9.50'),(33,'4','Celje',NULL,NULL,NULL,5.00,'9.50'),(34,'4','Kranj',NULL,NULL,NULL,5.00,'9.50'),(35,'4','Velenje',NULL,NULL,NULL,5.00,'9.50'),(36,'5','Belgrade',NULL,NULL,NULL,5.00,'17.00'),(37,'5','Nis',NULL,NULL,NULL,5.00,'17.00'),(38,'5','Novi Sad',NULL,NULL,NULL,5.00,'17.00');
/*!40000 ALTER TABLE `cb_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_payment_modes`
--

DROP TABLE IF EXISTS `cb_payment_modes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_payment_modes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `accommodation` bigint(20) DEFAULT NULL,
  `payment_mode` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_payment_modes`
--

LOCK TABLES `cb_payment_modes` WRITE;
/*!40000 ALTER TABLE `cb_payment_modes` DISABLE KEYS */;
INSERT INTO `cb_payment_modes` VALUES (1,NULL,NULL,'creditcard');
/*!40000 ALTER TABLE `cb_payment_modes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_room_amenities`
--

DROP TABLE IF EXISTS `cb_room_amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_room_amenities` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `accommodation` bigint(20) DEFAULT NULL,
  `amenity_icon` varchar(50) DEFAULT NULL,
  `amenity_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_room_amenities`
--

LOCK TABLES `cb_room_amenities` WRITE;
/*!40000 ALTER TABLE `cb_room_amenities` DISABLE KEYS */;
INSERT INTO `cb_room_amenities` VALUES (1,NULL,'air-conditioning','Air Conditioning'),(2,NULL,'balcony','Balcony'),(3,NULL,'bath','Bath'),(4,NULL,'bathrobe','Bathrobe'),(5,NULL,'bathroom','Bathroom'),(6,NULL,'carpeted','Carpeted'),(7,NULL,'desk','Desk'),(8,NULL,'deposit-box','Deposit Box'),(9,NULL,'free-toiletries','Free toiletries'),(10,NULL,'flat-screen-tv','Flat-screen TV'),(11,NULL,'extra-long-beds','Extra Long Beds (> 2 metres)'),(12,NULL,'heating','Heating'),(13,NULL,'hairdryer','Hairdryer'),(14,NULL,'satellite-channels','Satellite Channels'),(15,NULL,'slippers','Slippers'),(16,NULL,'telephone','Telephone'),(17,NULL,'minibar','Minibar'),(18,NULL,'view','View');
/*!40000 ALTER TABLE `cb_room_amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_room_bathroom`
--

DROP TABLE IF EXISTS `cb_room_bathroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_room_bathroom` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `accommodation` bigint(20) DEFAULT NULL,
  `amenity_icon` blob,
  `amenity_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_room_bathroom`
--

LOCK TABLES `cb_room_bathroom` WRITE;
/*!40000 ALTER TABLE `cb_room_bathroom` DISABLE KEYS */;
INSERT INTO `cb_room_bathroom` VALUES (1,NULL,NULL,'Bathtub'),(2,NULL,NULL,'Bidet'),(3,NULL,NULL,'Bathtub or shower'),(4,NULL,NULL,'Bathrobe'),(5,NULL,NULL,'Bathroom'),(6,NULL,NULL,'Free toiletries'),(7,NULL,NULL,'Guest bathroom'),(8,NULL,NULL,'Hairdryer'),(9,NULL,NULL,'Spa tub'),(10,NULL,NULL,'Shared bathroom'),(11,NULL,NULL,'Shared toilet'),(12,NULL,NULL,'Sauna'),(13,NULL,NULL,'Shower'),(14,NULL,NULL,'Slippers'),(15,NULL,NULL,'Toilet'),(16,NULL,NULL,'Additional bathroom');
/*!40000 ALTER TABLE `cb_room_bathroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_room_bed_options`
--

DROP TABLE IF EXISTS `cb_room_bed_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_room_bed_options` (
  `id` bigint(20) NOT NULL,
  `accommodation` bigint(20) DEFAULT NULL,
  `bed_option_icon` varchar(50) DEFAULT NULL,
  `bed_option_name` varchar(200) NOT NULL,
  `bed_option_capacity` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_room_bed_options`
--

LOCK TABLES `cb_room_bed_options` WRITE;
/*!40000 ALTER TABLE `cb_room_bed_options` DISABLE KEYS */;
INSERT INTO `cb_room_bed_options` VALUES (1,NULL,'twin-bed','Twin ',1),(2,NULL,'full-bed','Full',2),(3,NULL,'full-bed','Queen',2),(4,NULL,'','Sofa Bed',2),(5,NULL,NULL,'Chair Bed',1);
/*!40000 ALTER TABLE `cb_room_bed_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_room_extrabed_client_types`
--

DROP TABLE IF EXISTS `cb_room_extrabed_client_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_room_extrabed_client_types` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `clienttype_name` varchar(200) NOT NULL,
  `note` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_room_extrabed_client_types`
--

LOCK TABLES `cb_room_extrabed_client_types` WRITE;
/*!40000 ALTER TABLE `cb_room_extrabed_client_types` DISABLE KEYS */;
INSERT INTO `cb_room_extrabed_client_types` VALUES (1,'Children up to 2 years old in cribs',NULL),(2,'Up to 6 years',NULL),(3,'Up to 12 years',NULL),(4,'Up to 16 years',NULL),(5,'Adults',NULL);
/*!40000 ALTER TABLE `cb_room_extrabed_client_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_room_food_drinks`
--

DROP TABLE IF EXISTS `cb_room_food_drinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_room_food_drinks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `accommodation` bigint(20) DEFAULT NULL,
  `amenity_icon` blob,
  `amenity_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_room_food_drinks`
--

LOCK TABLES `cb_room_food_drinks` WRITE;
/*!40000 ALTER TABLE `cb_room_food_drinks` DISABLE KEYS */;
INSERT INTO `cb_room_food_drinks` VALUES (1,NULL,NULL,'Dining area'),(2,NULL,NULL,'Dining table'),(3,NULL,NULL,'Barbecue'),(4,NULL,NULL,'Oven'),(5,NULL,NULL,'Stovetop'),(6,NULL,NULL,'Toaster'),(7,NULL,NULL,'Dishwasher'),(8,NULL,NULL,'Electric kettle'),(9,NULL,NULL,'Outdoor dining area'),(10,NULL,NULL,'Outdoor furniture'),(11,NULL,NULL,'Minibar'),(12,NULL,NULL,'Kitchen'),(13,NULL,NULL,'Kitchenette'),(14,NULL,NULL,'Kitchenware'),(15,NULL,NULL,'Microwave'),(16,NULL,NULL,'Refrigerator'),(17,NULL,NULL,'Tea/Coffee maker'),(18,NULL,NULL,'Coffee machine'),(19,NULL,NULL,'High chair');
/*!40000 ALTER TABLE `cb_room_food_drinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_room_media_tech`
--

DROP TABLE IF EXISTS `cb_room_media_tech`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_room_media_tech` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `accommodation` bigint(20) DEFAULT NULL,
  `amenity_icon` blob,
  `amenity_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_room_media_tech`
--

LOCK TABLES `cb_room_media_tech` WRITE;
/*!40000 ALTER TABLE `cb_room_media_tech` DISABLE KEYS */;
INSERT INTO `cb_room_media_tech` VALUES (1,NULL,NULL,'Computer'),(2,NULL,NULL,'Game console'),(3,NULL,NULL,'Game console - Nintendo Wii'),(4,NULL,NULL,'Game console - PS2'),(5,NULL,NULL,'Game console - PS3'),(6,NULL,NULL,'Game console - Xbox 360'),(7,NULL,NULL,'Laptop'),(8,NULL,NULL,'iPad'),(9,NULL,NULL,'Cable channels'),(10,NULL,NULL,'CD Player'),(11,NULL,NULL,'DVD Player'),(12,NULL,NULL,'Fax'),(13,NULL,NULL,'iPod dock'),(14,NULL,NULL,'Laptop safe'),(15,NULL,NULL,'Flat-screen TV'),(16,NULL,NULL,'Pay-per-view channels'),(17,NULL,NULL,'Radio'),(18,NULL,NULL,'Satellite channels'),(19,NULL,NULL,'Telephone'),(20,NULL,NULL,'TV'),(21,NULL,NULL,'Video'),(22,NULL,NULL,'Video games'),(23,NULL,NULL,'Blu-ray player');
/*!40000 ALTER TABLE `cb_room_media_tech` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_room_options`
--

DROP TABLE IF EXISTS `cb_room_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_room_options` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `accommodation` bigint(20) DEFAULT NULL,
  `option_icon` blob,
  `option_name` varchar(100) NOT NULL,
  `service_icon` longblob,
  `service_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_room_options`
--

LOCK TABLES `cb_room_options` WRITE;
/*!40000 ALTER TABLE `cb_room_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `cb_room_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_room_outdoor_view`
--

DROP TABLE IF EXISTS `cb_room_outdoor_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_room_outdoor_view` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `accommodation` bigint(20) DEFAULT NULL,
  `view_icon` blob,
  `view_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_room_outdoor_view`
--

LOCK TABLES `cb_room_outdoor_view` WRITE;
/*!40000 ALTER TABLE `cb_room_outdoor_view` DISABLE KEYS */;
INSERT INTO `cb_room_outdoor_view` VALUES (1,NULL,NULL,'Balcony'),(2,NULL,NULL,'Patio'),(3,NULL,NULL,'View'),(4,NULL,NULL,'Terrace'),(5,NULL,NULL,'City view'),(6,NULL,NULL,'Garden view'),(7,NULL,NULL,'Lake view'),(8,NULL,NULL,'Landmark view'),(9,NULL,NULL,'Mountain view'),(10,NULL,NULL,'Pool view'),(11,NULL,NULL,'River view'),(12,NULL,NULL,'Sea view');
/*!40000 ALTER TABLE `cb_room_outdoor_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_room_services`
--

DROP TABLE IF EXISTS `cb_room_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_room_services` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `accommodation` bigint(20) DEFAULT NULL,
  `service_icon` blob,
  `service_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_room_services`
--

LOCK TABLES `cb_room_services` WRITE;
/*!40000 ALTER TABLE `cb_room_services` DISABLE KEYS */;
INSERT INTO `cb_room_services` VALUES (1,NULL,NULL,'Executive Lounge Access'),(2,NULL,NULL,'Alarm clock'),(3,NULL,NULL,'Wake-up service'),(4,NULL,NULL,'Wake up service/Alarm clock'),(5,NULL,NULL,'Linens'),(6,NULL,NULL,'Towels'),(7,NULL,NULL,'Towels/Sheets (extra fee)');
/*!40000 ALTER TABLE `cb_room_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_room_type_names`
--

DROP TABLE IF EXISTS `cb_room_type_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_room_type_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `room_type` bigint(20) NOT NULL,
  `room_type_name` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rtype_idx` (`room_type`),
  CONSTRAINT `fk_roomtype` FOREIGN KEY (`room_type`) REFERENCES `cb_room_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=532 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_room_type_names`
--

LOCK TABLES `cb_room_type_names` WRITE;
/*!40000 ALTER TABLE `cb_room_type_names` DISABLE KEYS */;
INSERT INTO `cb_room_type_names` VALUES (1,1,'Budget Single Room'),(2,1,'Deluxe Single Room'),(3,1,'Deluxe Single Room with Balcony'),(4,1,'Deluxe Single Room with Sea View'),(5,1,'Economy Single Room'),(6,1,'Large Single Room'),(7,1,'New Year\'s Eve Special - Single Room'),(8,1,'Single Room'),(9,1,'Single Room - Disability Access'),(10,1,'Single Room with Balcony'),(11,1,'Single Room with Bath'),(12,1,'Single Room with Bathroom'),(13,1,'Single Room with Garden View'),(14,1,'Single Room with Lake View'),(15,1,'Single Room with Mountain View'),(16,1,'Single Room with Park View'),(17,1,'Single Room with Pool View'),(18,1,'Single Room with Private Bathroom'),(19,1,'Single Room with Private External Bathroom'),(20,1,'Single Room with Sea View'),(21,1,'Single Room with Shared Bathroom'),(22,1,'Single Room with Shared Shower and Toilet'),(23,1,'Single Room with Shared Toilet'),(24,1,'Single Room with Shower'),(25,1,'Single Room with Terrace'),(26,1,'Small Single Room'),(27,1,'Standard Single Room'),(28,1,'Standard Single Room with Mountain View'),(29,1,'Standard Single Room with Sauna'),(30,1,'Standard Single Room with Sea View'),(31,1,'Standard Single Room with Shared Bathroom'),(32,1,'Standard Single Room with Shower'),(33,1,'Superior Single Room'),(34,1,'Superior Single Room with Lake View'),(35,1,'Superior Single Room with Sea View'),(36,2,'Budget Double Room'),(37,2,'Business Double Room with Gym Privileges'),(38,2,'Deluxe Double Room'),(39,2,'Deluxe Double Room (1 adult + 1 child)'),(40,2,'Deluxe Double Room (1 adult + 2 children)'),(41,2,'Deluxe Double Room (2 Adults + 1 Child)'),(42,2,'Deluxe Double Room with Balcony'),(43,2,'Deluxe Double Room with Balcony and Sea View'),(44,2,'Deluxe Double Room with Bath'),(45,2,'Deluxe Double Room with Castle View'),(46,2,'Deluxe Double Room with Extra Bed'),(47,2,'Deluxe Double Room with Sea View'),(48,2,'Deluxe Double Room with Shower'),(49,2,'Deluxe Double Room with Side Sea View'),(50,2,'Deluxe Double or Twin Room'),(51,2,'Deluxe King Room'),(52,2,'Deluxe Queen Room'),(53,2,'Deluxe Room'),(54,2,'Deluxe Room (1 adult + 1 child)'),(55,2,'Deluxe Room (1 adult + 2 children)'),(56,2,'Deluxe Room (2 Adults + 1 Child)'),(57,2,'Double Room'),(58,2,'Double Room (1 Adult + 1 Child)'),(59,2,'Double Room - Disability Access'),(60,2,'Double Room with Balcony'),(61,2,'Double Room with Balcony (2 Adults + 1 Child)'),(62,2,'Double Room with Balcony (3 Adults)'),(63,2,'Double Room with Balcony and Sea View'),(64,2,'Double Room with Extra Bed'),(65,2,'Double Room with Garden View'),(66,2,'Double Room with Lake View'),(67,2,'Double Room with Mountain View'),(68,2,'Double Room with Patio'),(69,2,'Double Room with Pool View'),(70,2,'Double Room with Private Bathroom'),(71,2,'Double Room with Private External Bathroom'),(72,2,'Double Room with Sea View'),(73,2,'Double Room with Shared Bathroom'),(74,2,'Double Room with Shared Toilet'),(75,2,'Double Room with Spa Bath'),(76,2,'Double Room with Terrace'),(77,2,'Economy Double Room'),(78,2,'Garden View King'),(79,2,'King Room'),(80,2,'King Room - Disability Access'),(81,2,'King Room with Balcony'),(82,2,'King Room with Lake View'),(83,2,'King Room with Mountain View'),(84,2,'King Room with Pool View'),(85,2,'King Room with Roll-In Shower - Disability Access'),(86,2,'King Room with Sea View'),(87,2,'King Room with Spa Bath'),(88,2,'Large Double Room'),(89,2,'Queen Room'),(90,2,'Queen Room - Disability Access'),(91,2,'Queen Room with Balcony'),(92,2,'Queen Room with Garden View'),(93,2,'Queen Room with Pool View'),(94,2,'Queen Room with Sea View'),(95,2,'Queen Room with Shared Bathroom'),(96,2,'Queen Room with Spa Bath'),(97,2,'Small Double Room'),(98,2,'Standard Double Room'),(99,2,'Standard Double Room with Fan'),(100,2,'Standard Double Room with Shared Bathroom'),(101,2,'Standard King Room'),(102,2,'Standard Queen Room'),(103,2,'Superior Double Room'),(104,2,'Superior King Room'),(105,2,'Superior Queen Room'),(106,15,'Living Room'),(107,15,'Bedroom'),(108,15,'Bathroom'),(109,15,'Kitchen'),(110,15,'Home Office'),(111,15,'Laundry Room'),(112,15,'Family Room'),(113,15,'Attic'),(114,3,'Budget Twin Room'),(115,3,'Deluxe Double Room with Two Double Beds'),(116,3,'Deluxe Queen Room with Two Queen Beds'),(117,3,'Deluxe Twin Room'),(118,3,'Deluxe Twin Room with Sea View'),(119,3,'Double Room with Two Double Beds'),(120,3,'Economy Twin Room'),(121,3,'King Room with Two King Beds'),(122,3,'Large Twin Room'),(123,3,'Queen Room with Two Queen Beds'),(124,3,'Queen Room with Two Queen Beds - Disability Access'),(125,3,'Small Twin Room'),(126,3,'Standard Double Room with Two Double Beds'),(127,3,'Standard Queen Room with Two Queen Beds'),(128,3,'Standard Twin Room'),(129,3,'Standard Twin Room with Garden View'),(130,3,'Standard Twin Room with Mountain View'),(131,3,'Standard Twin Room with Sea View'),(132,3,'Standard Twin Room with Shared Bathroom'),(133,3,'Standard Twin Room with Sofa'),(134,3,'Superior Double Room with Two Double Beds'),(135,3,'Superior King or Twin Room'),(136,3,'Standard Twin Room with Mountain View'),(137,3,'Standard Twin Room with Sea View'),(138,3,'Standard Twin Room with Shared Bathroom'),(139,3,'Standard Twin Room with Sofa'),(140,3,'Superior Double Room with Two Double Beds'),(141,3,'Superior King or Twin Room'),(142,3,'Superior Queen Room with Two Queen Beds'),(143,3,'Superior Twin Room'),(144,3,'Superior Twin Room with City View'),(145,3,'Superior Twin Room with Garden View'),(146,3,'Superior Twin Room with Sauna'),(147,3,'Superior Twin Room with Sea View'),(148,3,'Twin Room'),(149,3,'Twin Room - Disability Access'),(150,3,'Twin Room with Balcony'),(151,3,'Twin Room with Bath'),(152,3,'Twin Room with Bathroom'),(153,3,'Twin Room with City View'),(154,3,'Twin Room with Extra Bed'),(155,3,'Twin Room with Garden View'),(156,3,'Twin Room with Lake View'),(157,3,'Twin Room with Mountain View'),(158,3,'Twin Room with Pool View'),(159,3,'Twin Room with Private Bathroom'),(160,3,'Twin Room with Private External Bathroom'),(161,3,'Twin Room with Sea View'),(162,3,'Twin Room with Shared Bathroom'),(163,3,'Twin Room with Shared Toilet'),(164,3,'Twin Room with Shower'),(165,3,'Twin Room with Terrace'),(166,3,'Twin Room with View'),(167,4,'Budget Double or Twin Room'),(168,4,'Cabin on BoatCabin on Boat'),(169,4,'Deluxe Double or Twin Room'),(170,4,'Deluxe Double or Twin Room with Balcony'),(171,4,'Deluxe Double or Twin Room with City View'),(172,4,'Deluxe Double or Twin Room with Garden View'),(173,4,'Deluxe Double or Twin Room with Lake View'),(174,4,'Deluxe Double or Twin Room with Mountain View'),(175,4,'Deluxe Double or Twin Room with Ocean View'),(176,4,'Deluxe Double or Twin Room with Pool Access'),(177,4,'Deluxe Double or Twin Room with Pool View'),(178,4,'Deluxe Double or Twin Room with River View'),(179,4,'Deluxe Double or Twin Room with Sea View'),(180,4,'Deluxe Double or Twin Room with Spa Bath'),(181,4,'Double or Twin Room'),(182,4,'Double or Twin Room - Disability Access'),(183,4,'Double or Twin Room with Balcony'),(184,4,'Double or Twin Room with Bathroom'),(185,4,'Double or Twin Room with Bathroom'),(186,4,'Double or Twin Room with City View'),(187,4,'Double or Twin Room with Extra Bed'),(188,4,'Double or Twin Room with Garden View'),(189,4,'Double or Twin Room with Harbour View'),(190,4,'Double or Twin Room with Lake View'),(191,4,'Double or Twin Room with Mountain View'),(192,4,'Double or Twin Room with Partial Sea View'),(193,4,'Double or Twin Room with Pool View'),(194,4,'Double or Twin Room with Private Bathroom'),(195,4,'Double or Twin Room with Private External Bathroom'),(196,4,'Double or Twin Room with Sea View'),(197,4,'Double or Twin Room with Shared Bathroom'),(198,4,'Double or Twin Room with Shower'),(199,4,'Double or Twin Room with Side Sea View'),(200,4,'Double or Twin Room with Spa Access'),(201,4,'Double or Twin Room with Swimming Pool Access'),(202,4,'Double or Twin Room with Terrace'),(203,4,'Double or Twin Room with View'),(204,4,'Economy Double or Twin Room'),(205,4,'Large Double or Twin Room'),(206,4,'Small Double or Twin Room'),(207,4,'Standard Cabin on Boat'),(208,4,'Standard Double or Twin Room'),(209,4,'Standard Double or Twin Room with Balcony'),(210,4,'Standard Double or Twin Room with Garden View'),(211,4,'Standard Double or Twin Room with Sea View'),(212,4,'Superior Cabin on Boat'),(213,4,'Superior Deluxe Double or Twin Room '),(214,4,'Superior Double or Twin Room'),(215,4,'Superior Double or Twin Room with City View'),(216,4,'Superior Double or Twin Room with Garden View'),(217,4,'Superior Double or Twin Room with Lake View'),(218,4,'Superior Double or Twin Room with Mountain View'),(219,4,'Superior Double or Twin Room with Pool View'),(220,4,'Superior Double or Twin Room with Sea View'),(221,4,'Superior Double or Twin Room with Terrace'),(222,5,'Basic Triple Room'),(223,5,'Basic Triple Room with Shared Bathroom'),(224,5,'Budget Triple Room'),(225,5,'Classic Triple Room'),(226,5,'Comfort Triple Room'),(227,5,'Comfort Triple Room with Shower'),(228,5,'Deluxe Triple Room'),(229,5,'Deluxe Triple Room with Sea View'),(230,5,'Economy Triple Room'),(231,5,'Economy Triple Room with Shared Bathroom'),(232,5,'Executive Triple Room'),(233,5,'Luxury Triple Room'),(234,5,'Standard Triple Room'),(235,5,'Standard Triple Room with Sea View'),(236,5,'Superior Triple Room'),(237,5,'Superior Triple Room with Sea View'),(238,5,'Triple Room'),(239,5,'Triple Room - Disability Access'),(240,5,'Triple Room with Balcony'),(241,5,'Triple Room with Bath'),(242,5,'Triple Room with Bathroom'),(243,5,'Triple Room with City View'),(244,5,'Triple Room with Garden View'),(245,5,'Triple Room with Lake View'),(246,5,'Triple Room with Mountain View'),(247,5,'Triple Room with Pool View'),(248,5,'Triple Room with Private Bathroom'),(249,5,'Triple Room with Private External Bathroom'),(250,5,'Triple Room with Sea View'),(251,5,'Triple Room with Shared Bathroom'),(252,5,'Triple Room with Shared Toilet'),(253,5,'Triple Room with Shower'),(254,5,'Triple Room with Terrace'),(255,5,'Triple Room with View'),(256,6,'Classic Quadruple Room'),(257,6,'Comfort Quadruple Room'),(258,6,'Deluxe Quadruple Room'),(259,6,'Deluxe Queen Room with Two Queen Beds'),(260,6,'Duplex Quadruple Room'),(261,6,'Economy Quadruple Room'),(262,6,'Economy Quadruple Room with Shared Bathroom'),(263,6,'Executive Queen Room with Two Queen Beds'),(264,6,'Japanese-Style Quadruple Room'),(265,6,'King Room with Two King Beds'),(266,6,'Luxury Quadruple Room'),(267,6,'Premium Quadruple Room'),(268,6,'Quadruple Room'),(269,6,'Quadruple Room - Disability Access'),(270,6,'Quadruple Room with Balcony'),(271,6,'Quadruple Room with Bath'),(272,6,'Quadruple Room with Bathroom'),(273,6,'Quadruple Room with Garden View'),(274,6,'Quadruple Room with Lake View'),(275,6,'Quadruple Room with Mountain View'),(276,6,'Quadruple Room with Private Bathroom'),(277,6,'Quadruple Room with Private External Bathroom'),(278,6,'Quadruple Room with Sea View'),(279,6,'Quadruple Room with Shared Bathroom'),(280,6,'Quadruple Room with Shower'),(281,6,'Quadruple Room with Terrace'),(282,6,'Queen Room with Two Queen Beds'),(283,6,'Queen Room with Two Queen Beds - Disability Access'),(284,6,'Standard Quadruple Room'),(285,6,'Standard Queen Room with Two Queen Beds'),(286,6,'Superior Quadruple Room'),(287,6,'Superior Queen Room with Two Queen Beds'),(288,7,'Deluxe Family Room'),(289,7,'Deluxe Family Suite'),(290,7,'Family Bungalow'),(291,7,'Family Cabin on Boat'),(292,7,'Family Double Room'),(293,7,'Family Junior Suite'),(294,7,'Family Room'),(295,7,'Family Room - Disability Access'),(296,7,'Family Room with Balcony'),(297,7,'Family Room with Bath'),(298,7,'Family Room with Bathroom'),(299,7,'Family Room with Garden View'),(300,7,'Family Room with Lake View'),(301,7,'Family Room with Mountain View'),(302,7,'Family Room with Private Bathroom'),(303,7,'Family Room with Sauna'),(304,7,'Family Room with Sea View'),(305,7,'Family Room with Shared Bathroom'),(306,7,'Family Room with Shower'),(307,7,'Family Room with Side Sea View'),(308,7,'Family Room with Terrace'),(309,7,'Family Studio'),(310,7,'Family Suite'),(311,7,'Family Suite with Balcony'),(312,7,'Standard Family Room'),(313,7,'Superior Family Room'),(314,8,'Deluxe Double Studio'),(315,8,'Deluxe Junior Suite'),(316,8,'Deluxe King Studio'),(317,8,'Deluxe King Suite'),(318,8,'Deluxe Queen Studio '),(319,8,'Deluxe Queen Suite'),(320,8,'Deluxe Studio'),(321,8,'Deluxe Suite'),(322,8,'Deluxe Suite with Sea View'),(323,8,'Deluxe Suite with Spa Bath'),(324,8,'Duplex Suite'),(325,8,'Executive Suite'),(326,8,'Family Studio'),(327,8,'Family Suite'),(328,8,'Junior Suite'),(329,8,'Junior Suite with Balcony'),(330,8,'Junior Suite with Canal View'),(331,8,'Junior Suite with Garden View'),(332,8,'Junior Suite with Mountain View'),(333,8,'Junior Suite with Ocean View'),(334,8,'Junior Suite with Pool View'),(335,8,'Junior Suite with Private Pool'),(336,8,'Junior Suite with Sauna'),(337,8,'Junior Suite with Sea View'),(338,8,'Junior Suite with Terrace'),(339,8,'King Studio'),(340,8,'King Studio with Sofa Bed'),(341,8,'King Suite'),(342,8,'King Suite with Balcony'),(343,8,'King Suite with Ocean View'),(344,8,'King Suite with Pool View'),(345,8,'King Suite with Sea View'),(346,8,'King Suite with Spa Bath'),(347,8,'One-Bedroom Suite'),(348,8,'Presidential Suite'),(349,8,'Queen Studio'),(350,8,'Queen Studio - Disability Access'),(351,8,'Queen Suite'),(352,8,'Queen Suite with Pool View'),(353,8,'Queen Suite with Sea View'),(354,8,'Queen Suite with Spa Bath'),(355,8,'Standard Double Suite'),(356,8,'Standard Studio'),(357,8,'Standard Suite'),(358,8,'Standard Triple Studio'),(359,8,'Studio'),(360,8,'Studio - Disability Access'),(361,8,'Studio with Balcony'),(362,8,'Studio with Garden View'),(363,8,'Studio with Ocean View'),(364,8,'Studio with Pool View'),(365,8,'Studio with Sea View'),(366,8,'Studio with Sofa Bed'),(367,8,'Studio with Spa Bath'),(368,8,'Studio with Terrace'),(369,8,'Suite'),(370,8,'Suite with Balcony'),(371,8,'Suite with City View'),(372,8,'Suite with Garden View'),(373,8,'Suite with Hot Tub'),(374,8,'Suite with Lake View'),(375,8,'Suite with Mountain View'),(376,8,'Suite with Pool View'),(377,8,'Suite with Private Pool'),(378,8,'Suite with River View'),(379,8,'Suite with Sauna'),(380,8,'Suite with Sea View'),(381,8,'Suite with Spa Access'),(382,8,'Suite with Spa Bath'),(383,8,'Suite with Terrace'),(384,8,'Superior King Suite'),(385,8,'Superior Studio'),(386,8,'Superior Suite'),(387,8,'Superior Suite with Sea View'),(388,8,'Three-Bedroom Suite'),(389,8,'Two-Bedroom Suite'),(390,9,'Deluxe Double Studio'),(391,9,'Deluxe King Studio'),(392,9,'Deluxe Queen Studio '),(393,9,'Deluxe Studio'),(394,9,'Duplex Studio'),(395,9,'Family Studio'),(396,9,'King Studio'),(397,9,'King Studio with Sofa Bed'),(398,9,'Queen Studio'),(399,9,'Queen Studio - Disability Access'),(400,9,'Standard Studio'),(401,9,'Standard Triple Studio'),(402,9,'Studio'),(403,9,'Studio - Disability Access'),(404,9,'Studio - Split Level'),(405,9,'Studio with Balcony'),(406,9,'Studio with Garden View'),(407,9,'Studio with Lake View'),(408,9,'Studio with Mountain View'),(409,9,'Studio with Ocean View'),(410,9,'Studio with Pool View'),(411,9,'Studio with Sea View'),(412,9,'Studio with Sofa Bed'),(413,9,'Studio with Spa Bath'),(414,9,'Studio with Terrace'),(415,9,'Superior Studio'),(416,10,'Apartment'),(417,10,'Apartment - Ground Floor'),(418,10,'Apartment - Split Level'),(419,10,'Apartment With Shared Bathroom'),(420,10,'Apartment with Balcony'),(421,10,'Apartment with Garden View'),(422,10,'Apartment with Lake View'),(423,10,'Apartment with Mountain View'),(424,10,'Apartment with Pool View '),(425,10,'Apartment with Sauna'),(426,10,'Apartment with Sea View'),(427,10,'Apartment with Shower'),(428,10,'Apartment with Terrace'),(429,10,'Deluxe Apartment'),(430,10,'Duplex Apartment'),(431,10,'Loft'),(432,10,'Maisonette'),(433,10,'One-Bedroom Apartment'),(434,10,'Penthouse Apartment'),(435,10,'Standard Apartment'),(436,10,'Studio Apartment'),(437,10,'Studio Apartment with Sea View'),(438,10,'Superior Apartment'),(439,10,'Superior Apartment with Sauna'),(440,10,'Three-Bedroom Apartment'),(441,10,'Two-Bedroom Apartment'),(442,11,'Bed in 10-Bed Female Dormitory Room'),(443,11,'Bed in 10-Bed Male Dormitory Room'),(444,11,'Bed in 10-Bed Mixed Dormitory Room'),(445,11,'Bed in 4-Bed Female Dormitory Room'),(446,11,'Bed in 4-Bed Male Dormitory Room'),(447,11,'Bed in 4-Bed Mixed Dormitory Room'),(448,11,'Bed in 6-Bed Female Dormitory Room'),(449,11,'Bed in 6-Bed Male Dormitory Room'),(450,11,'Bed in 6-Bed Mixed Dormitory Room'),(451,11,'Bed in 8-Bed Female Dormitory Room'),(452,11,'Bed in 8-Bed Male Dormitory Room'),(453,11,'Bed in 8-Bed Mixed Dormitory Room'),(454,11,'Bunk Bed in Female Dormitory Room  '),(455,11,'Bunk Bed in Male Dormitory Room '),(456,11,'Bunk Bed in Mixed Dormitory Room'),(457,11,'Single Bed in Female Dormitory Room'),(458,11,'Single Bed in Male Dormitory Room'),(459,11,'Single Bed in Mixed Dormitory Room'),(460,12,'Bed in 10-Bed Mixed Dormitory Room'),(461,12,'Bed in 4-Bed Dormitory Room'),(462,12,'Bed in 4-Bed Female Dormitory Room'),(463,12,'Bed in 4-Bed Male Dormitory Room'),(464,12,'Bed in 4-Bed Mixed Dormitory Room'),(465,12,'Bed in 6-Bed Dormitory Room'),(466,12,'Bed in 6-Bed Female Dormitory Room'),(467,12,'Bed in 6-Bed Mixed Dormitory Room'),(468,12,'Bed in 8-Bed Dormitory Room'),(469,12,'Bed in 8-Bed Mixed Dormitory Room'),(470,12,'Bed in Male Dormitory Room'),(471,12,'Bunk Bed in Female Dormitory Room  '),(472,12,'Bunk Bed in Male Dormitory Room '),(473,12,'Bunk Bed in Mixed Dormitory Room'),(474,12,'Single Bed in 10-Bed Dormitory Room'),(475,12,'Single Bed in 4-Bed Dormitory Room'),(476,12,'Single Bed in 6-Bed Dormitory Room'),(477,12,'Single Bed in Dormitory Room'),(478,12,'Single Bed in Female Dormitory Room'),(479,12,'Single Bed in Male Dormitory Room'),(480,12,'Single Bed in Male Dormitory Room with Shared Bathroom'),(481,12,'Single Bed in Mixed Dormitory Room'),(482,13,'Bungalow'),(483,13,'Bungalow - Beach Front'),(484,13,'Bungalow - Water Front '),(485,13,'Bungalow with Fan'),(486,13,'Bungalow with Garden View'),(487,13,'Bungalow with Patio'),(488,13,'Bungalow with Sea View'),(489,13,'Cottage'),(490,13,'Cottage with Garden View'),(491,13,'Deluxe Bungalow'),(492,13,'Deluxe Bungalow with Garden View'),(493,13,'Deluxe Bungalow with Sea View'),(494,13,'Family Bungalow'),(495,13,'One-Bedroom Bungalow'),(496,13,'One-Bedroom Cottage'),(497,13,'Standard Bungalow'),(498,13,'Standard Bungalow with Fan'),(499,13,'Superior Bungalow'),(500,13,'Three-Bedroom Bungalow'),(501,13,'Three-Bedroom Cottage'),(502,13,'Two-Bedroom Bungalow'),(503,13,'Two-Bedroom Cottage'),(504,14,'Chalet'),(505,14,'One-Bedroom Chalet'),(506,14,'Superior Chalet'),(507,14,'Two-Bedroom Chalet'),(508,14,'Three-Bedroom Chalet'),(509,15,'Deluxe Villa'),(510,15,'One-Bedroom Villa'),(511,15,'Standard Villa'),(512,15,'Superior Villa'),(513,15,'Two-Bedroom Villa'),(514,15,'Three-Bedroom Villa'),(515,15,'Villa'),(516,15,'Villa - Beach Front'),(517,15,'Villa with Garden View'),(518,15,'Villa with Private Pool'),(519,15,'Villa with Sea View'),(520,16,'Holiday Home'),(521,16,'One-Bedroom House'),(522,16,'Two-Bedroom House'),(523,16,'Two-Bedroom Townhouse'),(524,16,'Three-Bedroom House'),(525,16,'Three-Bedroom Townhouse'),(526,16,'Four-Bedroom House'),(527,16,'Five-Bedroom House'),(528,16,'Six-Bedroom House'),(529,16,'Seven-Bedroom House'),(530,16,'Eight-Bedroom House'),(531,16,'Double Room with Park View');
/*!40000 ALTER TABLE `cb_room_type_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_room_types`
--

DROP TABLE IF EXISTS `cb_room_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_room_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `room_type` varchar(200) NOT NULL,
  `has_bedrooms` tinyint(1) DEFAULT '0',
  `has_livingrooms` tinyint(1) DEFAULT '0',
  `has_bathrooms` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_room_types`
--

LOCK TABLES `cb_room_types` WRITE;
/*!40000 ALTER TABLE `cb_room_types` DISABLE KEYS */;
INSERT INTO `cb_room_types` VALUES (1,'Single',0,0,0),(2,'Double',0,0,0),(3,'Twin',0,0,0),(4,'Twin/Double',0,0,0),(5,'Triple',0,0,0),(6,'Quadruple',0,0,0),(7,'Family',0,0,0),(8,'Suite',1,1,1),(9,'Studio',0,0,0),(10,'Apartment',1,1,1),(11,'Dormiroty room',0,0,0),(12,'Bed in Dormmitory',0,0,0),(13,'Bungalow',1,1,1),(14,'Chalet',1,1,1),(15,'Villa',1,1,1),(16,'Holiday Home',1,1,1),(17,'Mobile Home',1,1,1),(18,'Tent',0,0,0);
/*!40000 ALTER TABLE `cb_room_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_service_availability`
--

DROP TABLE IF EXISTS `cb_service_availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_service_availability` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `availability_name` varchar(45) DEFAULT NULL,
  `breakfast_availability_name` varchar(45) DEFAULT NULL,
  `pets_allowed` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_service_availability`
--

LOCK TABLES `cb_service_availability` WRITE;
/*!40000 ALTER TABLE `cb_service_availability` DISABLE KEYS */;
INSERT INTO `cb_service_availability` VALUES (1,'No','No','No'),(2,'Yes, free','Yes, it\'s included in price','Yes'),(3,'Yes, paid','Yes, it\'s optional','Upon request');
/*!40000 ALTER TABLE `cb_service_availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_surroundings`
--

DROP TABLE IF EXISTS `cb_surroundings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_surroundings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `surrounding_icon` varchar(50) DEFAULT NULL,
  `surrounding_name` varchar(100) NOT NULL,
  `accommodation` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_surroundings`
--

LOCK TABLES `cb_surroundings` WRITE;
/*!40000 ALTER TABLE `cb_surroundings` DISABLE KEYS */;
INSERT INTO `cb_surroundings` VALUES (1,'train-station','Train station',NULL),(2,'bus-station','Bus station',NULL),(3,'museum','Museum',NULL),(4,'bank','Bank',NULL),(5,'beach','Beach',NULL),(6,'hospital','Hospital',NULL),(7,'police','Police',NULL),(8,'public-theater','Public theater',NULL),(9,'shopping-bag','Market',NULL),(10,'caravan','Promenade',NULL),(11,NULL,'Caffe-Bar',NULL),(12,NULL,'Beauty Salon',NULL),(13,NULL,'Shoping center',NULL),(14,NULL,'Mosque',NULL),(15,NULL,'Curch',NULL),(16,NULL,'Gas station',NULL),(17,NULL,'Post office',NULL),(18,NULL,'Pub',NULL),(19,NULL,'Park',NULL),(20,NULL,'Sports grounds',NULL),(21,NULL,'Restaurant',NULL),(22,NULL,'Street',NULL),(23,NULL,'Bridge',NULL),(24,NULL,'Fountain',NULL),(25,NULL,'City Hall',NULL),(26,NULL,'National Theatre',NULL),(27,NULL,'River',NULL),(28,NULL,'Mountain',NULL),(29,NULL,'Airport',NULL);
/*!40000 ALTER TABLE `cb_surroundings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_taxes`
--

DROP TABLE IF EXISTS `cb_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_taxes` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `accommodation` bigint(20) DEFAULT NULL,
  `tax_name` varchar(200) DEFAULT NULL,
  `fix_ammount` float(6,2) DEFAULT NULL,
  `percentage` float(4,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_taxes`
--

LOCK TABLES `cb_taxes` WRITE;
/*!40000 ALTER TABLE `cb_taxes` DISABLE KEYS */;
INSERT INTO `cb_taxes` VALUES (1,4,1,'tax Name 1',1.00,18.00),(2,5,2,'tax Name 2',2.00,18.00),(3,4,3,'tax Name 3',3.00,17.00),(4,5,43,'tax Name 4',4.00,17.00);
/*!40000 ALTER TABLE `cb_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_vat_rates`
--

DROP TABLE IF EXISTS `cb_vat_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cb_vat_rates` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `state` int(3) DEFAULT NULL,
  `vat_rate_name` varchar(20) DEFAULT NULL,
  `vat_rate` float(4,2) NOT NULL,
  `location` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_7b58rnekrtcs70tbs07b1vh1e` (`state`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_vat_rates`
--

LOCK TABLES `cb_vat_rates` WRITE;
/*!40000 ALTER TABLE `cb_vat_rates` DISABLE KEYS */;
INSERT INTO `cb_vat_rates` VALUES (1,1,'BiH VAT',17.00,NULL),(2,2,'Croatia VAT',17.00,NULL);
/*!40000 ALTER TABLE `cb_vat_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `clients` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `custom_id` varchar(255) DEFAULT NULL,
  `client_class` varchar(45) DEFAULT NULL,
  `client_type` varchar(45) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  `name` varchar(300) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `username` varchar(150) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `web` varchar(100) DEFAULT NULL,
  `passport_number` varchar(20) DEFAULT NULL,
  `identity_card_number` varchar(20) DEFAULT NULL,
  `id_number` varchar(20) DEFAULT NULL,
  `tax_number` varchar(20) DEFAULT NULL,
  `credit_card` varchar(30) DEFAULT NULL,
  `credit_card_no` varchar(1000) DEFAULT NULL,
  `cvv_code` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `account_number` varchar(20) DEFAULT NULL,
  `fb_id` varchar(100) DEFAULT NULL,
  `li_id` varchar(100) DEFAULT NULL,
  `go_id` varchar(100) DEFAULT NULL,
  `currency` varchar(4) DEFAULT NULL,
  `cc_exp` varchar(1000) DEFAULT NULL,
  `cc_holder` varchar(1000) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_exp_date` datetime DEFAULT NULL,
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (123,'5b61c6a8d4e4460b81c3a1dcda250e3d',NULL,NULL,NULL,'M','Muhamed Alispahic',NULL,'info@adeda.ba','5a7855c36dc39e873b3bd3e530e597756454f8e8a0811e214ea0dcac5e6eea9190e5c956ad2217c3',NULL,NULL,NULL,'myAddress',NULL,'38762294659','info@adeda.ba',NULL,NULL,NULL,NULL,'0',NULL,'quat6M2rcYSQzhUuS0-YWLh10T9N4QSA\r\n',NULL,'visa',NULL,NULL,NULL,NULL,'BAM','DOtkNb2vstk\r\n','pzlmSGQXZ2sklrShJb8q_tdU472hn2AR\r\n',NULL,NULL,NULL),(134,'',NULL,NULL,NULL,'M','Omer Karacic','2000-07-26','karacicomer@gmail.com','$2a$10$8NGPZBLaWQavgVLNzsWCWu9om1YzAYRJ7FU7WrA1caEdhDbXQEx0K',NULL,'1',NULL,'Lozionicka 17','0644502214','0644502214','karacicomer@gmail.com','www.go2balkan.com',NULL,NULL,NULL,'0','2','4069700001035950','219','',NULL,NULL,NULL,NULL,'BAM','1018','Omer Karacic',NULL,NULL,NULL),(145,NULL,NULL,NULL,NULL,'M','Muhamed Alispahic','1977-02-22',NULL,'$2a$10$QG7HgrBD04gTtZdXtdG/xO3k7pm1zKAlotbSOJHN0B5y87aEgo6F6',NULL,'1',NULL,'Rejhana Demirdzica 2','38762294659','38762294659','test@test.com','',NULL,NULL,NULL,NULL,'2','4242424242424242','123',NULL,NULL,NULL,NULL,NULL,'EUR','','Muhamed Alispahic',NULL,NULL,NULL);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount_age`
--

DROP TABLE IF EXISTS `discount_age`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `discount_age` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` varchar(70) DEFAULT NULL,
  `accommodation` bigint(20) DEFAULT NULL,
  `mice_event` bigint(20) DEFAULT NULL,
  `event` bigint(20) DEFAULT NULL,
  `tour` bigint(20) DEFAULT NULL,
  `discount_class` int(10) DEFAULT NULL COMMENT 'Klasa popusta odreĂâuje da li se popust odnosi na kompletan objekat (hotel) , sobu pojedinaĂĹ¤no (First/last Minute) ili na neku od usluga.Kod MICE agencija odreĂâuje da li se popus odnosi na kotizaciju, smjeÄšËtaj, taxi servise, neku drugu uslugi i sl. ',
  `discount_name` varchar(300) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `fixed_calculation` tinyint(1) NOT NULL DEFAULT '0',
  `min_age` int(11) DEFAULT NULL,
  `max_age` int(11) DEFAULT NULL,
  `price_start_date` date DEFAULT NULL,
  `price_end_date` date DEFAULT NULL,
  `discount_fixed_amount` float(6,2) DEFAULT NULL,
  `discount_percentage_amount` float(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_dadclass_idx` (`discount_class`),
  CONSTRAINT `fk_dadclass` FOREIGN KEY (`discount_class`) REFERENCES `discount_classes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount_age`
--

LOCK TABLES `discount_age` WRITE;
/*!40000 ALTER TABLE `discount_age` DISABLE KEYS */;
INSERT INTO `discount_age` VALUES (1,'info@adeda.ba',35,NULL,NULL,NULL,NULL,'Student discount','test',0,18,24,'2018-02-12','2018-02-28',0.00,5.00);
/*!40000 ALTER TABLE `discount_age` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount_classes`
--

DROP TABLE IF EXISTS `discount_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `discount_classes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) DEFAULT NULL COMMENT 'Klase mogu biti: MICE agencije, standardne turistiĂĹ¤ke agencije (TA) i klijenti (potrebno je uvesti i segmentaciju klijenata: studenti, penzioneri, pravna lica...)',
  `rule_source` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount_classes`
--

LOCK TABLES `discount_classes` WRITE;
/*!40000 ALTER TABLE `discount_classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `discount_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount_miscellaneous`
--

DROP TABLE IF EXISTS `discount_miscellaneous`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `discount_miscellaneous` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` varchar(70) DEFAULT NULL,
  `accommodation` bigint(20) DEFAULT NULL,
  `room` bigint(20) DEFAULT NULL,
  `mice_event` bigint(20) DEFAULT NULL,
  `event` bigint(20) DEFAULT NULL,
  `tour` bigint(20) DEFAULT NULL,
  `discount_class` int(10) DEFAULT NULL COMMENT 'Klasa popusta odreĂâuje da li se popust odnosi na kompletan objekat (hotel) , sobu pojedinaĂĹ¤no (First/last Minute) ili na neku od usluga.Kod MICE agencija odreĂâuje da li se popus odnosi na kotizaciju, smjeÄšËtaj, taxi servise, neku drugu uslugi i sl. ',
  `discount_name` varchar(300) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `fixed_calculation` tinyint(1) DEFAULT '0',
  `price_start_date` date DEFAULT NULL,
  `price_end_date` date DEFAULT NULL,
  `discount_fixed_amount` float(6,2) DEFAULT NULL,
  `discount_percentage_amount` float(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_dmdclass_idx` (`discount_class`),
  CONSTRAINT `fk_dmdclass` FOREIGN KEY (`discount_class`) REFERENCES `discount_classes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount_miscellaneous`
--

LOCK TABLES `discount_miscellaneous` WRITE;
/*!40000 ALTER TABLE `discount_miscellaneous` DISABLE KEYS */;
/*!40000 ALTER TABLE `discount_miscellaneous` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount_quantity`
--

DROP TABLE IF EXISTS `discount_quantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `discount_quantity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` varchar(70) DEFAULT NULL,
  `accommodation` bigint(20) DEFAULT NULL,
  `mice_event` bigint(20) DEFAULT NULL,
  `event` bigint(20) DEFAULT NULL,
  `tour` bigint(20) DEFAULT NULL,
  `discount_class` int(10) DEFAULT NULL COMMENT 'Klasa popusta odreĂâuje da li se popust odnosi na kompletan objekat (hotel) , sobu pojedinaĂĹ¤no (First/last Minute) ili na neku od usluga.Kod MICE agencija odreĂâuje da li se popus odnosi na kotizaciju, smjeÄšËtaj, taxi servise, neku drugu uslugi i sl. ',
  `discount_name` varchar(300) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `fixed_calculation` tinyint(1) DEFAULT '0',
  `min_num` int(5) DEFAULT NULL,
  `max_num` int(5) DEFAULT NULL,
  `price_start_date` date DEFAULT NULL,
  `price_end_date` date DEFAULT NULL,
  `discount_fixed_amount` float(6,2) DEFAULT NULL,
  `discount_percentage_amount` float(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_dqdclass_idx` (`discount_class`),
  KEY `fk_discount_class_idx` (`discount_class`),
  CONSTRAINT `fk_discount_class` FOREIGN KEY (`discount_class`) REFERENCES `discount_classes` (`id`),
  CONSTRAINT `fk_dqdclass` FOREIGN KEY (`discount_class`) REFERENCES `discount_classes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount_quantity`
--

LOCK TABLES `discount_quantity` WRITE;
/*!40000 ALTER TABLE `discount_quantity` DISABLE KEYS */;
/*!40000 ALTER TABLE `discount_quantity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_message_id` mediumint(8) unsigned DEFAULT NULL,
  `account` mediumint(8) unsigned DEFAULT NULL,
  `client` mediumint(8) unsigned DEFAULT NULL,
  `subject` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `message_body` varchar(2000) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted` bit(1) DEFAULT b'0',
  `account_sender` bigint(25) DEFAULT NULL,
  `client_sender` bigint(25) DEFAULT NULL,
  `is_read` tinyint(2) DEFAULT '0',
  `notification` bigint(20) DEFAULT NULL,
  `sender_deleted` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (18,NULL,35,NULL,'Heritage Hotel Krone has got a reservation','<div><p><h3>Reservation Holder Information</h3>Name: Alican Balik<br/>Telephone: 38766767277<br/>Email address: can1903ali@gmail.com<br/>City, Country Sarajevo, Bosnia and Herzegovina<br/>Expected arrival time to the accommodation: Arrival Time: I don\'t know<br/>Special request(s): special request as\'d;kasdkasd;aks</p><p><h3>Reserved Rooms</h3>1. null - Full<br />Guest: Alican Balik<br /><br />2. null - Full<br />Guest: name 2<br /><br />3. null - Full<br />Guest: name 4<br /><br /></p></div><p>Check-in: 2017-12-18 - Check-out: 2017-12-19</p>',NULL,_binary '\0',NULL,122,1,7,0),(19,NULL,35,NULL,'Heritage Hotel Krone has got a reservation','<div><p><h3>Reservation Holder Information</h3>Name: Alican Balik<br/>Telephone: 38766767277<br/>Email address: can1903ali@gmail.com<br/>City, Country Farah, Afghanistan<br/>Expected arrival time to the accommodation: Arrival Time: I don\'t know<br/>Special request(s): 42</p><p><h3>Reserved Rooms</h3>1. null - Full<br />Guest: Alican Balik<br /><br />2. null - Full<br />Guest: Alican Balik<br /><br />3. null - Full<br />Guest: 1 1<br /><br />4. null - Full<br />Guest: 2 2<br /><br />5. null - Full<br />Guest: 3 3<br /><br />6. null - Full<br />Guest: 4 4<br /><br />7. null - Full<br />Guest: 5 5<br /><br /></p></div><p>Check-in: 2017-12-18 - Check-out: 2017-12-19</p>',NULL,_binary '\0',NULL,122,1,8,0),(20,19,NULL,122,'Booking','test','2017-12-29 04:40:17',_binary '\0',35,NULL,0,NULL,0),(21,19,NULL,122,'Booking','test','2017-12-29 04:40:18',_binary '\0',35,NULL,0,NULL,0),(22,19,NULL,122,'Booking','test','2017-12-29 04:40:19',_binary '\0',35,NULL,0,NULL,0),(23,NULL,35,NULL,'Heritage Hotel Krone has got a reservation','<div><p><h3>Reservation Holder Information</h3>Name: Muhamed Alispahic<br/>Telephone: 38762294659<br/>Email address: info@adeda.ba<br/>City, Country Sarajevo, Bosnia and Herzegovina<br/>Expected arrival time to the accommodation: Arrival Time: I don\'t know<br/>Special request(s): Guest does not have any special request</p><p><h3>Reserved Rooms</h3>1. null - Full<br />Guest: Muhamed Alispahic<br /><br /></p></div><p>Check-in: 2018-02-02 - Check-out: 2018-02-03</p>',NULL,_binary '\0',NULL,123,1,9,0),(24,NULL,35,NULL,'Heritage Hotel Krone has got a reservation','<div><p><h3>Reservation Holder Information</h3>Name: Muhamed Alispahic<br/>Telephone: 38762294659<br/>Email address: info@adeda.ba<br/>City, Country Sarajevo, Bosnia and Herzegovina<br/>Expected arrival time to the accommodation: Arrival Time: I don\'t know<br/>Special request(s): Guest does not have any special request</p><p><h3>Reserved Rooms</h3>1. null - Full<br />Guest: Muhamed Alispahic<br /><br /></p></div><p>Check-in: 2018-02-02 - Check-out: 2018-02-03</p>',NULL,_binary '\0',NULL,123,1,10,0);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mice_booked_accommodation`
--

DROP TABLE IF EXISTS `mice_booked_accommodation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mice_booked_accommodation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `reservation` bigint(20) NOT NULL,
  `event_accomodation` bigint(20) NOT NULL,
  `rooms_num` int(2) NOT NULL DEFAULT '0',
  `note` varchar(300) DEFAULT NULL,
  `clients` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rareservation_idx` (`reservation`),
  KEY `fk_raaccomodation_idx` (`event_accomodation`),
  CONSTRAINT `fk_raaccomodation` FOREIGN KEY (`event_accomodation`) REFERENCES `mice_event_accommodation` (`id`),
  CONSTRAINT `fk_rareservation` FOREIGN KEY (`reservation`) REFERENCES `mice_booking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mice_booked_accommodation`
--

LOCK TABLES `mice_booked_accommodation` WRITE;
/*!40000 ALTER TABLE `mice_booked_accommodation` DISABLE KEYS */;
/*!40000 ALTER TABLE `mice_booked_accommodation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mice_booked_discounts`
--

DROP TABLE IF EXISTS `mice_booked_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mice_booked_discounts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `accommodation` bigint(20) DEFAULT NULL,
  `reservation` bigint(20) NOT NULL,
  `discount_miscellaneous` bigint(20) DEFAULT NULL,
  `discount_quantity` bigint(20) DEFAULT NULL,
  `discount_age` bigint(20) DEFAULT NULL,
  `discounts_no` tinyint(2) DEFAULT NULL,
  `clients` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_mrdreservation_idx` (`reservation`),
  KEY `fk_mrdmiscellaneous_idx` (`discount_miscellaneous`),
  KEY `fk_mrdage_idx` (`discount_age`),
  KEY `fk_mrdquantity_idx` (`discount_quantity`),
  CONSTRAINT `fk_mrdage` FOREIGN KEY (`discount_age`) REFERENCES `discount_age` (`id`),
  CONSTRAINT `fk_mrdmiscellaneous` FOREIGN KEY (`discount_miscellaneous`) REFERENCES `discount_miscellaneous` (`id`),
  CONSTRAINT `fk_mrdquantity` FOREIGN KEY (`discount_quantity`) REFERENCES `discount_quantity` (`id`),
  CONSTRAINT `fk_mrdreservation` FOREIGN KEY (`reservation`) REFERENCES `mice_booking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mice_booked_discounts`
--

LOCK TABLES `mice_booked_discounts` WRITE;
/*!40000 ALTER TABLE `mice_booked_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mice_booked_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mice_booked_fee`
--

DROP TABLE IF EXISTS `mice_booked_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mice_booked_fee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `reservation` bigint(20) NOT NULL,
  `event_fee` bigint(20) NOT NULL,
  `number_of_fees` int(2) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `clients` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rfreservation_idx` (`reservation`),
  KEY `fk_rffee_idx` (`event_fee`),
  CONSTRAINT `fk_rffee` FOREIGN KEY (`event_fee`) REFERENCES `mice_event_fees` (`id`),
  CONSTRAINT `fk_rfreservation` FOREIGN KEY (`reservation`) REFERENCES `mice_booking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mice_booked_fee`
--

LOCK TABLES `mice_booked_fee` WRITE;
/*!40000 ALTER TABLE `mice_booked_fee` DISABLE KEYS */;
/*!40000 ALTER TABLE `mice_booked_fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mice_booked_group`
--

DROP TABLE IF EXISTS `mice_booked_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mice_booked_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `reservation` bigint(20) NOT NULL,
  `client` bigint(20) DEFAULT NULL,
  `reservation_holder` tinyint(1) DEFAULT '0',
  `payment_holder` tinyint(1) DEFAULT '0',
  `fee_sponsorship` tinyint(1) DEFAULT NULL,
  `accomodation_sponsorship` tinyint(1) DEFAULT NULL,
  `taxi_sponsorship` tinyint(1) DEFAULT NULL,
  `service_option_sponsorship` tinyint(1) DEFAULT NULL,
  `sponsor` bigint(20) DEFAULT NULL,
  `sponsor_client_id` bigint(20) DEFAULT NULL,
  `rooming` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rgreservation_idx` (`reservation`),
  KEY `fk_rgclient_idx` (`client`),
  KEY `fk_rgsponsor_idx` (`sponsor`),
  KEY `fk_rgcsponsor_idx` (`sponsor_client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mice_booked_group`
--

LOCK TABLES `mice_booked_group` WRITE;
/*!40000 ALTER TABLE `mice_booked_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `mice_booked_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mice_booked_service_options`
--

DROP TABLE IF EXISTS `mice_booked_service_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mice_booked_service_options` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `reservation` bigint(20) NOT NULL,
  `service_option` bigint(20) NOT NULL,
  `options_no` int(2) NOT NULL,
  `note` varchar(300) DEFAULT NULL,
  `clients` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_soreservation_idx` (`reservation`),
  KEY `fk_sooption_idx` (`service_option`),
  CONSTRAINT `fk_sooption` FOREIGN KEY (`service_option`) REFERENCES `mice_event_services_option` (`id`),
  CONSTRAINT `fk_soreservation` FOREIGN KEY (`reservation`) REFERENCES `mice_booking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mice_booked_service_options`
--

LOCK TABLES `mice_booked_service_options` WRITE;
/*!40000 ALTER TABLE `mice_booked_service_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mice_booked_service_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mice_booked_taxi`
--

DROP TABLE IF EXISTS `mice_booked_taxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mice_booked_taxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `reservation` bigint(20) NOT NULL,
  `taxi_service` bigint(20) DEFAULT NULL,
  `taxi_no` int(2) DEFAULT NULL,
  `flight_number` varchar(20) DEFAULT NULL,
  `arrival_datetime` datetime DEFAULT NULL,
  `departure_datetime` datetime DEFAULT NULL,
  `taxi_voucher_no` varchar(20) DEFAULT NULL,
  `note` varchar(300) DEFAULT NULL,
  `clients` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rtbooking_idx` (`reservation`),
  KEY `fk_rtservice_idx` (`taxi_service`),
  CONSTRAINT `fk_rtbooking` FOREIGN KEY (`reservation`) REFERENCES `mice_booking` (`id`),
  CONSTRAINT `fk_rtservice` FOREIGN KEY (`taxi_service`) REFERENCES `mice_event_service_taxi` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mice_booked_taxi`
--

LOCK TABLES `mice_booked_taxi` WRITE;
/*!40000 ALTER TABLE `mice_booked_taxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `mice_booked_taxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mice_booking`
--

DROP TABLE IF EXISTS `mice_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mice_booking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `event` bigint(20) NOT NULL,
  `payment` bigint(20) DEFAULT NULL,
  `standard_invoice` tinyint(1) DEFAULT '1',
  `reservation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reservation_status` int(2) DEFAULT NULL,
  `status_date` timestamp NULL DEFAULT NULL,
  `rooming` int(2) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `voucher_no` varchar(20) DEFAULT NULL,
  `clients` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mice_booking`
--

LOCK TABLES `mice_booking` WRITE;
/*!40000 ALTER TABLE `mice_booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `mice_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mice_event_accommodation`
--

DROP TABLE IF EXISTS `mice_event_accommodation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mice_event_accommodation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `event` bigint(20) NOT NULL,
  `hotel` bigint(20) NOT NULL,
  `room` bigint(20) NOT NULL,
  `number_of_rooms` int(2) NOT NULL,
  `entrant_price` float(6,2) DEFAULT NULL,
  `entrant_vat` int(2) DEFAULT NULL,
  `commision` float(6,2) DEFAULT NULL COMMENT 'MoÄšÄže sluÄšÄžiti kao osnovica za porez',
  `vat_free` float(6,2) DEFAULT NULL,
  `vat_base` float(6,2) DEFAULT NULL,
  `vat` int(2) DEFAULT NULL,
  `tax` int(5) DEFAULT NULL,
  `output_price` float(6,2) DEFAULT NULL,
  `gratis` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_event_idx` (`event`),
  KEY `fk_mhotel_idx` (`hotel`),
  KEY `fk_mroom_idx` (`room`),
  KEY `fk_meagratis_idx` (`gratis`),
  KEY `fk_mavrate_idx` (`vat`),
  KEY `fk_eatax_idx` (`tax`),
  KEY `fk_eaevat_idx` (`entrant_vat`),
  CONSTRAINT `fk_eaevat` FOREIGN KEY (`entrant_vat`) REFERENCES `cb_vat_rates` (`id`),
  CONSTRAINT `fk_eatax` FOREIGN KEY (`tax`) REFERENCES `cb_taxes` (`id`),
  CONSTRAINT `fk_event` FOREIGN KEY (`event`) REFERENCES `mice_events` (`id`),
  CONSTRAINT `fk_mavrate` FOREIGN KEY (`vat`) REFERENCES `cb_vat_rates` (`id`),
  CONSTRAINT `fk_meagratis` FOREIGN KEY (`gratis`) REFERENCES `cb_gratis` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mice_event_accommodation`
--

LOCK TABLES `mice_event_accommodation` WRITE;
/*!40000 ALTER TABLE `mice_event_accommodation` DISABLE KEYS */;
/*!40000 ALTER TABLE `mice_event_accommodation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mice_event_fees`
--

DROP TABLE IF EXISTS `mice_event_fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mice_event_fees` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `event` bigint(20) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `entrant_price` float(6,2) DEFAULT NULL,
  `entrant_vat` int(2) DEFAULT NULL,
  `commision` float(6,2) DEFAULT NULL,
  `vat_free` float(6,2) DEFAULT NULL,
  `vat_base` float(6,2) DEFAULT NULL,
  `vat` int(2) DEFAULT NULL,
  `tax` int(5) DEFAULT NULL,
  `output_price` float(6,2) DEFAULT NULL,
  `price_start_date` date DEFAULT NULL,
  `price_end_date` date DEFAULT NULL,
  `gratis` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mice_event_fees`
--

LOCK TABLES `mice_event_fees` WRITE;
/*!40000 ALTER TABLE `mice_event_fees` DISABLE KEYS */;
/*!40000 ALTER TABLE `mice_event_fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mice_event_pics`
--

DROP TABLE IF EXISTS `mice_event_pics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mice_event_pics` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `event` bigint(20) NOT NULL,
  `pic` blob NOT NULL,
  `pic_name` varchar(40) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mice_event_pics`
--

LOCK TABLES `mice_event_pics` WRITE;
/*!40000 ALTER TABLE `mice_event_pics` DISABLE KEYS */;
/*!40000 ALTER TABLE `mice_event_pics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mice_event_service_options`
--

DROP TABLE IF EXISTS `mice_event_service_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mice_event_service_options` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `event` bigint(20) NOT NULL,
  `option_name` varchar(200) NOT NULL,
  `short_name` varchar(5) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `entrant_price` float(6,2) DEFAULT NULL,
  `entrant_vat` int(2) DEFAULT NULL,
  `commision` float(6,2) DEFAULT NULL,
  `vat_free` float(6,2) DEFAULT NULL,
  `vat_base` float(6,2) DEFAULT NULL,
  `vat` int(2) DEFAULT NULL,
  `tax` int(5) DEFAULT NULL,
  `output_price` float(6,2) DEFAULT NULL,
  `gratis` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_soevent_idx` (`event`),
  KEY `fk_msigratis_idx` (`gratis`),
  KEY `fk_msovrate_idx` (`vat`),
  KEY `fk_esotax_idx` (`tax`),
  KEY `fk_esoevat_idx` (`entrant_vat`),
  CONSTRAINT `fk_esoevat` FOREIGN KEY (`entrant_vat`) REFERENCES `cb_vat_rates` (`id`),
  CONSTRAINT `fk_esoevent` FOREIGN KEY (`event`) REFERENCES `mice_events` (`id`),
  CONSTRAINT `fk_esogratis` FOREIGN KEY (`gratis`) REFERENCES `cb_gratis` (`id`),
  CONSTRAINT `fk_esovat` FOREIGN KEY (`vat`) REFERENCES `cb_vat_rates` (`id`),
  CONSTRAINT `fk_sotax` FOREIGN KEY (`tax`) REFERENCES `cb_taxes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mice_event_service_options`
--

LOCK TABLES `mice_event_service_options` WRITE;
/*!40000 ALTER TABLE `mice_event_service_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mice_event_service_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mice_event_service_taxi`
--

DROP TABLE IF EXISTS `mice_event_service_taxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mice_event_service_taxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `event` bigint(20) NOT NULL,
  `driver` int(10) DEFAULT NULL,
  `taxi_company` bigint(20) DEFAULT NULL,
  `from` varchar(200) NOT NULL,
  `to` varchar(200) NOT NULL,
  `is_return_ride` tinyint(1) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `entry_price` float(6,2) DEFAULT NULL,
  `entrant_vat` int(2) DEFAULT NULL,
  `commision` float(6,2) DEFAULT NULL,
  `vat_free` float(6,2) DEFAULT NULL,
  `vat_base` float(6,2) DEFAULT NULL,
  `vat` int(2) DEFAULT NULL,
  `tax` int(5) DEFAULT NULL,
  `output_price` float(6,2) DEFAULT NULL,
  `gratis` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tsevent_idx` (`event`),
  KEY `fk_tscompany_idx` (`taxi_company`),
  KEY `fk_tsdriver_idx` (`driver`),
  KEY `fk_mstgratis_idx` (`gratis`),
  KEY `fk_mstvrate_idx` (`vat`),
  KEY `fk_sttax_idx` (`tax`),
  KEY `fk_estevat_idx` (`entrant_vat`),
  CONSTRAINT `fk_estevat` FOREIGN KEY (`entrant_vat`) REFERENCES `cb_vat_rates` (`id`),
  CONSTRAINT `fk_mstgratis` FOREIGN KEY (`gratis`) REFERENCES `cb_gratis` (`id`),
  CONSTRAINT `fk_mstvrate` FOREIGN KEY (`vat`) REFERENCES `cb_vat_rates` (`id`),
  CONSTRAINT `fk_sttax` FOREIGN KEY (`tax`) REFERENCES `cb_taxes` (`id`),
  CONSTRAINT `fk_tscompany` FOREIGN KEY (`taxi_company`) REFERENCES `taxi_companies` (`id`),
  CONSTRAINT `fk_tsdriver` FOREIGN KEY (`driver`) REFERENCES `taxi_drivers` (`id`),
  CONSTRAINT `fk_tsevent` FOREIGN KEY (`event`) REFERENCES `mice_events` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mice_event_service_taxi`
--

LOCK TABLES `mice_event_service_taxi` WRITE;
/*!40000 ALTER TABLE `mice_event_service_taxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `mice_event_service_taxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mice_event_speakers`
--

DROP TABLE IF EXISTS `mice_event_speakers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mice_event_speakers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client` bigint(20) DEFAULT NULL,
  `event` bigint(20) NOT NULL,
  `event_role` varchar(100) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sclient_idx` (`client`),
  KEY `fk_sevent_idx` (`event`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mice_event_speakers`
--

LOCK TABLES `mice_event_speakers` WRITE;
/*!40000 ALTER TABLE `mice_event_speakers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mice_event_speakers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mice_event_sponsors`
--

DROP TABLE IF EXISTS `mice_event_sponsors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mice_event_sponsors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `event` bigint(20) NOT NULL,
  `sponsor` bigint(20) NOT NULL,
  `sponsor_type` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mice_event_sponsors`
--

LOCK TABLES `mice_event_sponsors` WRITE;
/*!40000 ALTER TABLE `mice_event_sponsors` DISABLE KEYS */;
/*!40000 ALTER TABLE `mice_event_sponsors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mice_event_venues`
--

DROP TABLE IF EXISTS `mice_event_venues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mice_event_venues` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `event` bigint(20) DEFAULT NULL,
  `venue` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mice_event_venues`
--

LOCK TABLES `mice_event_venues` WRITE;
/*!40000 ALTER TABLE `mice_event_venues` DISABLE KEYS */;
/*!40000 ALTER TABLE `mice_event_venues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mice_events`
--

DROP TABLE IF EXISTS `mice_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mice_events` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `promo_pic` blob,
  `event_name` varchar(400) NOT NULL,
  `about_event` varchar(1500) DEFAULT NULL,
  `who_is_it_for` varchar(1500) DEFAULT NULL,
  `why_participate` varchar(1500) DEFAULT NULL,
  `agenda` varchar(1500) DEFAULT NULL,
  `prices_conditions` varchar(1500) DEFAULT NULL,
  `participants_no` int(4) DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mice_events`
--

LOCK TABLES `mice_events` WRITE;
/*!40000 ALTER TABLE `mice_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `mice_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mice_payment`
--

DROP TABLE IF EXISTS `mice_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mice_payment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payment_mode` bigint(20) NOT NULL,
  `standard_invoice` tinyint(1) DEFAULT NULL,
  `fee_entrant_price` float(8,2) DEFAULT NULL,
  `fee_entrant_vat` float(8,2) DEFAULT NULL,
  `fee_commision` float(8,2) DEFAULT NULL,
  `fee_vat_free` float(8,2) DEFAULT NULL,
  `fee_vat_base` float(6,2) DEFAULT NULL,
  `fee_vat` float(8,2) DEFAULT NULL,
  `fee_tax` float(8,2) DEFAULT NULL,
  `fee_discount` float(8,2) DEFAULT NULL,
  `fee_gratis` float(8,2) DEFAULT NULL,
  `fee_output_price` float(8,2) DEFAULT NULL,
  `accommodation_entrant_price` float(8,2) DEFAULT NULL,
  `accommodation_entrant_vat` float(8,2) DEFAULT NULL,
  `accommodation_commision` float(8,2) DEFAULT NULL,
  `accommodation_vat_free` float(8,2) DEFAULT NULL,
  `accommodation_vat_base` float(6,2) DEFAULT NULL,
  `accommodation_vat` float(8,2) DEFAULT NULL,
  `accommodation_tax` float(8,2) DEFAULT NULL,
  `accommodation_discount` float(8,2) DEFAULT NULL,
  `accommodation_gratis` float(8,2) DEFAULT NULL,
  `accomodation_output_price` float(8,2) DEFAULT NULL,
  `serviceoptions_entrant_price` float(8,2) DEFAULT NULL,
  `serviceoptions_entrant_vat` float(8,2) DEFAULT NULL,
  `serviceoptions_commision` float(8,2) DEFAULT NULL,
  `serviceoptions_vat_free` float(8,2) DEFAULT NULL,
  `serviceoptions_vat_base` float(6,2) DEFAULT NULL,
  `serviceoptions_vat` float(8,2) DEFAULT NULL,
  `serviceoptions_tax` float(8,2) DEFAULT NULL,
  `serviceoptions_discount` float(8,2) DEFAULT NULL,
  `serviceoptions_gratis` float(8,2) DEFAULT NULL,
  `serviceoptions_output_price` float(8,2) DEFAULT NULL,
  `taxi_entrant_price` float(8,2) DEFAULT NULL,
  `taxi_entrant_vat` float(8,2) DEFAULT NULL,
  `taxi_commision` float(8,2) DEFAULT NULL,
  `taxi_vat_free` float(8,2) DEFAULT NULL,
  `taxi_vat_base` float(6,2) DEFAULT NULL,
  `taxi_vat` float(8,2) DEFAULT NULL,
  `taxi_tax` float(8,2) DEFAULT NULL,
  `taxi_dicount` float(8,2) DEFAULT NULL,
  `taxi_gratis` float(8,2) DEFAULT NULL,
  `taxi_output_price` float(8,2) DEFAULT NULL,
  `accommodation_options_entrant_price` float(8,2) DEFAULT NULL,
  `accommodation_options_entrant_vat` float(8,2) DEFAULT NULL,
  `accommodation_options_commision` float(8,2) DEFAULT NULL,
  `accommodation_options_vat_free` float(8,2) DEFAULT NULL,
  `accommodation_options_vat_base` float(6,2) DEFAULT NULL,
  `accommodation_options_vat` float(8,2) DEFAULT NULL,
  `accommodation_options_tax` float(8,2) DEFAULT NULL,
  `accommodation_options_discount` float(8,2) DEFAULT NULL,
  `accommodation_options_gratis` float(8,2) DEFAULT NULL,
  `accommodation_options_output_price` float(8,2) DEFAULT NULL,
  `total_entrant_price` float(8,2) DEFAULT NULL,
  `total_entrant_vat` float(8,2) DEFAULT NULL,
  `total_commision` float(8,2) DEFAULT NULL,
  `total_vat_free` float(8,2) DEFAULT NULL,
  `total_vat_base` float(6,2) DEFAULT NULL,
  `total_vat` float(8,2) DEFAULT NULL,
  `total_tax` float(8,2) DEFAULT NULL,
  `total_discount` float(8,2) DEFAULT NULL,
  `total_gratis` float(8,2) DEFAULT NULL,
  `total_output_price` float(8,2) DEFAULT NULL,
  `partition_number` int(10) DEFAULT NULL,
  `number_of_installments` int(2) DEFAULT NULL,
  `preinvoice_number` varchar(20) DEFAULT NULL,
  `invoice_number` varchar(20) DEFAULT NULL,
  `card_slip_date` date DEFAULT NULL,
  `slips_number` varchar(20) DEFAULT NULL,
  `refund` tinyint(1) DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `partialy_paid` tinyint(1) DEFAULT NULL,
  `paidin_amount` float(8,2) DEFAULT NULL,
  `remaining` float(8,2) DEFAULT NULL,
  `note` varchar(300) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rpmode_idx` (`payment_mode`),
  CONSTRAINT `fk_rpmode` FOREIGN KEY (`payment_mode`) REFERENCES `cb_payment_modes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mice_payment`
--

LOCK TABLES `mice_payment` WRITE;
/*!40000 ALTER TABLE `mice_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `mice_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mice_payment_installments`
--

DROP TABLE IF EXISTS `mice_payment_installments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mice_payment_installments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payment` bigint(20) NOT NULL,
  `payment_mode` bigint(20) NOT NULL,
  `invoice_number` varchar(20) DEFAULT NULL,
  `slips_number` varchar(20) DEFAULT NULL,
  `card_slip_date` date DEFAULT NULL,
  `amount` float(6,2) NOT NULL,
  `payment_date` date NOT NULL,
  `paid_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pipayment_idx` (`payment`),
  KEY `fk_pimode_idx` (`payment_mode`),
  CONSTRAINT `fk_pimode` FOREIGN KEY (`payment_mode`) REFERENCES `cb_payment_modes` (`id`),
  CONSTRAINT `fk_pipayment` FOREIGN KEY (`payment`) REFERENCES `mice_payment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mice_payment_installments`
--

LOCK TABLES `mice_payment_installments` WRITE;
/*!40000 ALTER TABLE `mice_payment_installments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mice_payment_installments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mice_sponsor_types`
--

DROP TABLE IF EXISTS `mice_sponsor_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mice_sponsor_types` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mice_sponsor_types`
--

LOCK TABLES `mice_sponsor_types` WRITE;
/*!40000 ALTER TABLE `mice_sponsor_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `mice_sponsor_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mice_sponsors`
--

DROP TABLE IF EXISTS `mice_sponsors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mice_sponsors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company` bigint(20) DEFAULT NULL,
  `logo` blob,
  `name` varchar(50) NOT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `city` bigint(20) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `web` varchar(150) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `account_number` varchar(20) DEFAULT NULL,
  `bank_name` varchar(50) DEFAULT NULL,
  `id_number` varchar(20) DEFAULT NULL,
  `tax_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_scity_idx` (`city`),
  CONSTRAINT `fk_scity` FOREIGN KEY (`city`) REFERENCES `cb_locations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mice_sponsors`
--

LOCK TABLES `mice_sponsors` WRITE;
/*!40000 ALTER TABLE `mice_sponsors` DISABLE KEYS */;
/*!40000 ALTER TABLE `mice_sponsors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `notification` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` mediumint(8) unsigned NOT NULL,
  `account` mediumint(9) DEFAULT NULL,
  `client` mediumint(9) DEFAULT NULL,
  `sender_name` varchar(45) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `subject` varchar(250) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `is_read` bit(1) DEFAULT b'0',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_notification_acc_idx` (`account`),
  KEY `fk_notification_cl_idx` (`client`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (7,122,35,NULL,'ALICAN BALIK','Heritage Hotel Krone has got a reservation',_binary '',NULL),(8,122,35,NULL,'ALICAN BALIK','Heritage Hotel Krone has got a reservation',_binary '',NULL),(9,123,35,NULL,'Muhamed Alispahic','Heritage Hotel Krone has got a reservation',_binary '',NULL),(10,123,35,NULL,'Muhamed Alispahic','Heritage Hotel Krone has got a reservation',_binary '',NULL);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raca_car_pictures`
--

DROP TABLE IF EXISTS `raca_car_pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `raca_car_pictures` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pic_name` varchar(100) NOT NULL,
  `picture_text` varchar(300) NOT NULL,
  `pic` longtext,
  `is_promo_pic` tinyint(1) DEFAULT NULL,
  `car_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_raca_car_pictures_1_idx` (`car_id`),
  CONSTRAINT `fk_raca_car_pictures_1` FOREIGN KEY (`car_id`) REFERENCES `raca_cars` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raca_car_pictures`
--

LOCK TABLES `raca_car_pictures` WRITE;
/*!40000 ALTER TABLE `raca_car_pictures` DISABLE KEYS */;
/*!40000 ALTER TABLE `raca_car_pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raca_car_status`
--

DROP TABLE IF EXISTS `raca_car_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `raca_car_status` (
  `id` int(11) NOT NULL,
  `value` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raca_car_status`
--

LOCK TABLES `raca_car_status` WRITE;
/*!40000 ALTER TABLE `raca_car_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `raca_car_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raca_car_types`
--

DROP TABLE IF EXISTS `raca_car_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `raca_car_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raca_car_types`
--

LOCK TABLES `raca_car_types` WRITE;
/*!40000 ALTER TABLE `raca_car_types` DISABLE KEYS */;
INSERT INTO `raca_car_types` VALUES (1,'Duga limuzina'),(2,'Druga limuzina'),(3,'Druga limuzina'),(4,'Druga limuzina'),(5,'Druga limuzina'),(6,'Sportska vozila'),(7,'Sportska vozila');
/*!40000 ALTER TABLE `raca_car_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raca_cars`
--

DROP TABLE IF EXISTS `raca_cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `raca_cars` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fk_car_status` int(11) NOT NULL,
  `agency_id` bigint(20) NOT NULL,
  `car_type` bigint(20) DEFAULT NULL,
  `manufacturer` varchar(45) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `is_diesel` tinyint(1) DEFAULT NULL,
  `is_gasoline` tinyint(1) DEFAULT NULL,
  `is_lpg` tinyint(1) DEFAULT NULL,
  `has_servo` tinyint(1) DEFAULT NULL,
  `has_electro_windows` tinyint(1) DEFAULT NULL,
  `has_clima` tinyint(1) DEFAULT NULL,
  `numbers_of_seats` int(11) DEFAULT NULL,
  `doors_number` int(11) DEFAULT NULL,
  `power_kw` int(11) DEFAULT NULL,
  `is_automatic` tinyint(1) DEFAULT NULL,
  `power_ps` int(11) DEFAULT NULL,
  `parking_sensors` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rent_a_car_car_status_idx` (`fk_car_status`),
  KEY `fk_rent_a_car_agency_idx` (`agency_id`),
  KEY `fk_rent_a_car_cars_type_idx` (`car_type`),
  CONSTRAINT `fk_rent_a_car_agency` FOREIGN KEY (`agency_id`) REFERENCES `ta_travel_agency` (`id`),
  CONSTRAINT `fk_rent_a_car_car_status` FOREIGN KEY (`fk_car_status`) REFERENCES `raca_car_status` (`id`),
  CONSTRAINT `fk_rent_a_car_cars_type` FOREIGN KEY (`car_type`) REFERENCES `raca_car_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raca_cars`
--

LOCK TABLES `raca_cars` WRITE;
/*!40000 ALTER TABLE `raca_cars` DISABLE KEYS */;
/*!40000 ALTER TABLE `raca_cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raca_contracts`
--

DROP TABLE IF EXISTS `raca_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `raca_contracts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) NOT NULL,
  `rent_status_id` int(11) NOT NULL,
  `car_id` bigint(20) DEFAULT NULL,
  `rent_start_time` timestamp NULL DEFAULT NULL,
  `rent_end_time` timestamp NULL DEFAULT NULL,
  `price` float(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rents_user_idx` (`client_id`),
  KEY `fk_rents_rent_status_idx` (`rent_status_id`),
  KEY `fk_cars_idx` (`car_id`),
  CONSTRAINT `fk_rent_a_car_contract_car` FOREIGN KEY (`car_id`) REFERENCES `raca_cars` (`id`),
  CONSTRAINT `fk_rent_a_car_contract_status` FOREIGN KEY (`rent_status_id`) REFERENCES `raca_rent_status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raca_contracts`
--

LOCK TABLES `raca_contracts` WRITE;
/*!40000 ALTER TABLE `raca_contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `raca_contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raca_prices_periods`
--

DROP TABLE IF EXISTS `raca_prices_periods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `raca_prices_periods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `car_type` bigint(20) DEFAULT NULL,
  `rent_a_car_agency` bigint(20) DEFAULT NULL,
  `price_start_date` date NOT NULL,
  `price_end_date` date NOT NULL,
  `entrant_price` float(6,2) DEFAULT NULL,
  `entrant_vat` int(2) DEFAULT NULL,
  `commision` float(6,2) DEFAULT NULL,
  `vat_free` float(6,2) DEFAULT NULL,
  `vat_base` float(6,2) DEFAULT NULL,
  `vat` int(2) DEFAULT NULL,
  `tax` int(5) DEFAULT NULL,
  `enduser_price` float(6,2) NOT NULL,
  `commision_type` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rent_a_car_prices_periods_agency_idx` (`rent_a_car_agency`),
  KEY `fk_rent_a_car_type_idx` (`car_type`),
  CONSTRAINT `fk_rent_a_car_prices_periods_agency` FOREIGN KEY (`rent_a_car_agency`) REFERENCES `ta_travel_agency` (`id`),
  CONSTRAINT `fk_rent_a_car_type` FOREIGN KEY (`car_type`) REFERENCES `raca_car_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raca_prices_periods`
--

LOCK TABLES `raca_prices_periods` WRITE;
/*!40000 ALTER TABLE `raca_prices_periods` DISABLE KEYS */;
INSERT INTO `raca_prices_periods` VALUES (1,1,9,'2018-02-23','2018-02-23',0.00,NULL,NULL,0.00,0.00,NULL,NULL,100.56,NULL),(2,1,9,'2018-02-23','2018-02-23',0.00,NULL,NULL,0.00,0.00,NULL,NULL,100.56,NULL),(3,1,9,'2018-02-23','2018-02-24',0.00,NULL,NULL,0.00,0.00,NULL,NULL,100.56,NULL);
/*!40000 ALTER TABLE `raca_prices_periods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raca_rent_status`
--

DROP TABLE IF EXISTS `raca_rent_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `raca_rent_status` (
  `id` int(11) NOT NULL,
  `rent_status_value` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raca_rent_status`
--

LOCK TABLES `raca_rent_status` WRITE;
/*!40000 ALTER TABLE `raca_rent_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `raca_rent_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_type_by_accommodation_for_booking`
--

DROP TABLE IF EXISTS `room_type_by_accommodation_for_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `room_type_by_accommodation_for_booking` (
  `room_type_id` bigint(20) NOT NULL,
  `accommodation_id` bigint(20) DEFAULT NULL,
  `room_type` varchar(255) DEFAULT NULL,
  `price_for_rooms_of_type` double DEFAULT NULL,
  `total_price_for_this_room` double DEFAULT NULL,
  `room_quantity` int(11) DEFAULT NULL,
  `room_type_name` varchar(255) DEFAULT NULL,
  `num_of_rooms_by_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`room_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_type_by_accommodation_for_booking`
--

LOCK TABLES `room_type_by_accommodation_for_booking` WRITE;
/*!40000 ALTER TABLE `room_type_by_accommodation_for_booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_type_by_accommodation_for_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_booked_clients`
--

DROP TABLE IF EXISTS `ta_booked_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_booked_clients` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `accommodation` bigint(20) DEFAULT NULL,
  `booking` bigint(20) NOT NULL,
  `client` bigint(20) NOT NULL,
  `reservation_holder` tinyint(1) DEFAULT '0',
  `payment_holder` tinyint(1) DEFAULT '0',
  `booked_events` varchar(50) DEFAULT NULL,
  `booked_rooms` varchar(50) DEFAULT NULL,
  `booked_excursions` varchar(50) DEFAULT NULL,
  `booked_tours` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbcbooking_idx` (`booking`),
  KEY `fk_tvsclient_idx` (`client`),
  CONSTRAINT `fk_tbcbooking` FOREIGN KEY (`booking`) REFERENCES `ta_booking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_booked_clients`
--

LOCK TABLES `ta_booked_clients` WRITE;
/*!40000 ALTER TABLE `ta_booked_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ta_booked_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_booked_discounts`
--

DROP TABLE IF EXISTS `ta_booked_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_booked_discounts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `accommodation` bigint(20) DEFAULT NULL,
  `booking` bigint(20) NOT NULL,
  `discount_miscellaneous` bigint(20) DEFAULT NULL,
  `discount_quantity` bigint(20) DEFAULT NULL,
  `discount_age` bigint(20) DEFAULT NULL,
  `discounts_no` tinyint(2) DEFAULT NULL,
  `clients` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbdbooking_idx` (`booking`),
  KEY `fk_tbdmiscellaneous_idx` (`discount_miscellaneous`),
  KEY `fk_tbdage_idx` (`discount_age`),
  KEY `fk_tbdquantity` (`discount_quantity`),
  CONSTRAINT `fk_tbdage` FOREIGN KEY (`discount_age`) REFERENCES `discount_age` (`id`),
  CONSTRAINT `fk_tbdbooking` FOREIGN KEY (`booking`) REFERENCES `ta_booking` (`id`),
  CONSTRAINT `fk_tbdmiscellaneous` FOREIGN KEY (`discount_miscellaneous`) REFERENCES `discount_miscellaneous` (`id`),
  CONSTRAINT `fk_tbdquantity` FOREIGN KEY (`discount_quantity`) REFERENCES `discount_quantity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_booked_discounts`
--

LOCK TABLES `ta_booked_discounts` WRITE;
/*!40000 ALTER TABLE `ta_booked_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ta_booked_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_booked_events`
--

DROP TABLE IF EXISTS `ta_booked_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_booked_events` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `booking` bigint(20) DEFAULT NULL,
  `event` bigint(20) DEFAULT NULL,
  `ticket_series` bigint(20) DEFAULT NULL,
  `series_no` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `number_of_tickets` int(2) DEFAULT NULL,
  `clients` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbebooking_idx` (`booking`),
  KEY `fk_tbeevent_idx` (`event`),
  KEY `fk_tbetseries_idx` (`ticket_series`),
  CONSTRAINT `fk_tbebooking` FOREIGN KEY (`booking`) REFERENCES `ta_booking` (`id`),
  CONSTRAINT `fk_tbeevent` FOREIGN KEY (`event`) REFERENCES `ta_events` (`id`),
  CONSTRAINT `fk_tbetseries` FOREIGN KEY (`ticket_series`) REFERENCES `ta_tickets_series` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_booked_events`
--

LOCK TABLES `ta_booked_events` WRITE;
/*!40000 ALTER TABLE `ta_booked_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `ta_booked_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_booked_excursions`
--

DROP TABLE IF EXISTS `ta_booked_excursions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_booked_excursions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `excursion` bigint(20) NOT NULL,
  `booking` bigint(20) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `output_price` float(8,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bbooking_idx` (`booking`),
  KEY `fk_bexcursion_idx` (`excursion`),
  CONSTRAINT `fk_bbooking` FOREIGN KEY (`booking`) REFERENCES `ta_booking` (`id`),
  CONSTRAINT `fk_bexcursion` FOREIGN KEY (`excursion`) REFERENCES `ta_excursions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_booked_excursions`
--

LOCK TABLES `ta_booked_excursions` WRITE;
/*!40000 ALTER TABLE `ta_booked_excursions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ta_booked_excursions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_booked_rooms`
--

DROP TABLE IF EXISTS `ta_booked_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_booked_rooms` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `accommodation` bigint(20) DEFAULT NULL,
  `booking` bigint(20) NOT NULL,
  `room` bigint(20) NOT NULL,
  `number_of_rooms` tinyint(2) DEFAULT NULL,
  `clients` varchar(100) DEFAULT NULL,
  `accRoomId` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbrbooking_idx` (`booking`),
  KEY `fk_tbraccommodation_idx` (`room`),
  CONSTRAINT `fk_tbraccommodation` FOREIGN KEY (`room`) REFERENCES `ta_fixed_lease_accommodation` (`id`),
  CONSTRAINT `fk_tbrbooking` FOREIGN KEY (`booking`) REFERENCES `ta_booking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_booked_rooms`
--

LOCK TABLES `ta_booked_rooms` WRITE;
/*!40000 ALTER TABLE `ta_booked_rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `ta_booked_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_booked_taxi`
--

DROP TABLE IF EXISTS `ta_booked_taxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_booked_taxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `accommodation` bigint(20) DEFAULT NULL,
  `booking` bigint(20) NOT NULL,
  `taxi_service` bigint(20) NOT NULL,
  `return_ride` tinyint(1) DEFAULT '0',
  `taxi_no` int(2) DEFAULT NULL,
  `flight_number` varchar(20) DEFAULT NULL,
  `arrival_datetime` datetime DEFAULT NULL,
  `departure_datetime` datetime DEFAULT NULL,
  `taxi_voucher_no` varchar(20) DEFAULT NULL,
  `note` varchar(300) DEFAULT NULL,
  `clients` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbtbooking_idx` (`booking`),
  KEY `fk_tbttservice_idx` (`taxi_service`),
  CONSTRAINT `fk_tbtbooking` FOREIGN KEY (`booking`) REFERENCES `ta_booking` (`id`),
  CONSTRAINT `fk_tbttservice` FOREIGN KEY (`taxi_service`) REFERENCES `taxi_services` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_booked_taxi`
--

LOCK TABLES `ta_booked_taxi` WRITE;
/*!40000 ALTER TABLE `ta_booked_taxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `ta_booked_taxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_booked_tours`
--

DROP TABLE IF EXISTS `ta_booked_tours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_booked_tours` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `booking` bigint(20) DEFAULT NULL,
  `tour` bigint(20) DEFAULT NULL,
  `quantity` int(2) DEFAULT NULL,
  `clients` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbtbooking_idx` (`booking`),
  KEY `fk_bttour_idx` (`tour`),
  CONSTRAINT `fk_btbooking` FOREIGN KEY (`booking`) REFERENCES `ta_booking` (`id`),
  CONSTRAINT `fk_bttour` FOREIGN KEY (`tour`) REFERENCES `ta_tours` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_booked_tours`
--

LOCK TABLES `ta_booked_tours` WRITE;
/*!40000 ALTER TABLE `ta_booked_tours` DISABLE KEYS */;
/*!40000 ALTER TABLE `ta_booked_tours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_booking`
--

DROP TABLE IF EXISTS `ta_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_booking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `accommodaion` bigint(20) DEFAULT NULL,
  `booking_category` int(10) DEFAULT NULL COMMENT 'kotegorija uslug turistiĂĹ¤ke agencije: organizovani aranÄšÄžmani, karte za prevoz, sportski i kulturni dogaĂâaji i sl.',
  `payment` bigint(20) DEFAULT NULL,
  `reservation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `booking_status` int(2) DEFAULT NULL,
  `gateway_id` varchar(255) NOT NULL,
  `payment_price` float(8,2) NOT NULL,
  `customId` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbpayment_idx` (`payment`),
  KEY `fk_tbbstatus_idx` (`booking_status`),
  KEY `fk_tbcategory_idx` (`booking_category`),
  CONSTRAINT `fk_tbbstatus` FOREIGN KEY (`booking_status`) REFERENCES `cb_booking_status` (`id`),
  CONSTRAINT `fk_tbcategory` FOREIGN KEY (`booking_category`) REFERENCES `ta_booking_categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_booking`
--

LOCK TABLES `ta_booking` WRITE;
/*!40000 ALTER TABLE `ta_booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `ta_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_booking_categories`
--

DROP TABLE IF EXISTS `ta_booking_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_booking_categories` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_booking_categories`
--

LOCK TABLES `ta_booking_categories` WRITE;
/*!40000 ALTER TABLE `ta_booking_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ta_booking_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_booking_payment_installments`
--

DROP TABLE IF EXISTS `ta_booking_payment_installments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_booking_payment_installments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payment` bigint(20) NOT NULL,
  `payment_mode` bigint(20) NOT NULL,
  `invoice_number` varchar(20) DEFAULT NULL,
  `slips_number` varchar(20) DEFAULT NULL,
  `card_slip_date` varchar(20) DEFAULT NULL,
  `amount` float(9,2) NOT NULL,
  `payment_date` date NOT NULL,
  `paid_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbpipayment_idx` (`payment`),
  KEY `fk_tbpipmode_idx` (`payment_mode`),
  CONSTRAINT `fk_tbpipayment` FOREIGN KEY (`payment`) REFERENCES `ta_booking_payments` (`id`),
  CONSTRAINT `fk_tbpipmode` FOREIGN KEY (`payment_mode`) REFERENCES `cb_payment_modes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_booking_payment_installments`
--

LOCK TABLES `ta_booking_payment_installments` WRITE;
/*!40000 ALTER TABLE `ta_booking_payment_installments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ta_booking_payment_installments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_booking_payments`
--

DROP TABLE IF EXISTS `ta_booking_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_booking_payments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payment_mode` bigint(20) DEFAULT NULL,
  `standard_invoice` tinyint(1) DEFAULT '1',
  `tour_entrant_price` float(8,2) DEFAULT NULL,
  `tour_entrant_vat` float(8,2) DEFAULT NULL,
  `tour_commision` float(8,2) DEFAULT NULL,
  `tour_vat_free` float(8,2) DEFAULT NULL,
  `tour_vat_base` float(8,2) DEFAULT NULL,
  `tour_vat` float(8,2) DEFAULT NULL,
  `tour_tax` float(8,2) DEFAULT NULL,
  `tour_discount` float(8,2) DEFAULT NULL,
  `tour_gratis` float(8,2) DEFAULT NULL,
  `tour_output_price` float(8,2) DEFAULT NULL,
  `room_entrant_price` float(8,2) DEFAULT NULL,
  `room_entrant_vat` float(8,2) DEFAULT NULL,
  `room_commision` float(8,2) DEFAULT NULL,
  `room_vat_free` float(8,2) DEFAULT NULL,
  `room_vat_base` float(8,2) DEFAULT NULL,
  `room_vat` float(8,2) DEFAULT NULL,
  `room_tax` float(8,2) DEFAULT NULL,
  `room_discount` float(8,2) DEFAULT NULL,
  `room_gratis` float(8,2) DEFAULT NULL,
  `room_output_price` float(8,2) DEFAULT NULL,
  `excursion_entrant_price` float(8,2) DEFAULT NULL,
  `excursion_entrant_vat` float(8,2) DEFAULT NULL,
  `excursion_commision` float(8,2) DEFAULT NULL,
  `excursion_vat_free` float(8,2) DEFAULT NULL,
  `excursion_vat` float(8,2) DEFAULT NULL,
  `excursion_tax` float(8,2) DEFAULT NULL,
  `excursion_discount` float(8,2) DEFAULT NULL,
  `excursion_gratis` float(8,2) DEFAULT NULL,
  `excursion_output_price` float(8,2) DEFAULT NULL,
  `service_entrant_price` float(8,2) DEFAULT NULL,
  `service_entrant_vat` float(8,2) DEFAULT NULL,
  `service_commision` float(8,2) DEFAULT NULL,
  `service_vat_free` float(8,2) DEFAULT NULL,
  `service_vat_base` float(8,2) DEFAULT NULL,
  `service_vat` float(8,2) DEFAULT NULL,
  `service_tax` float(8,2) DEFAULT NULL,
  `service_discount` float(8,2) DEFAULT NULL,
  `service_gratis` float(8,2) DEFAULT NULL,
  `service_output_price` float(8,2) DEFAULT NULL,
  `taxi_entrant_price` float(8,2) DEFAULT NULL,
  `taxi_entrant_vat` float(8,2) DEFAULT NULL,
  `taxi_commision` float(8,2) DEFAULT NULL,
  `taxi_vat_free` float(8,2) DEFAULT NULL,
  `taxi_vat_base` float(8,2) DEFAULT NULL,
  `taxi_vat` float(8,2) DEFAULT NULL,
  `taxi_tax` float(8,2) DEFAULT NULL,
  `taxi_discount` float(8,2) DEFAULT NULL,
  `taxi_gratis` float(8,2) DEFAULT NULL,
  `taxi_output_price` float(8,2) DEFAULT NULL,
  `total_entrant_price` float(8,2) DEFAULT NULL,
  `total_entrant_vat` float(8,2) DEFAULT NULL,
  `total_commision` float(8,2) DEFAULT NULL,
  `total_vat_free` float(8,2) DEFAULT NULL,
  `total_vat_base` float(8,2) DEFAULT NULL,
  `total_vat` float(8,2) DEFAULT NULL,
  `total_tax` float(8,2) DEFAULT NULL,
  `total_discount` float(8,2) DEFAULT NULL,
  `total_gratis` float(8,2) DEFAULT NULL,
  `total_output_price` float(8,2) DEFAULT NULL,
  `preinvoice_number` varchar(45) DEFAULT NULL,
  `invoice_number` varchar(45) DEFAULT NULL,
  `partition_number` int(2) DEFAULT NULL,
  `installments_no` int(2) DEFAULT NULL,
  `slip_no` varchar(20) DEFAULT NULL,
  `card_slip_date` varchar(20) DEFAULT NULL,
  `refund` tinyint(1) DEFAULT '0',
  `paid` tinyint(1) DEFAULT '0',
  `partialy_paid` tinyint(1) DEFAULT '0',
  `paidin_amount` float(8,2) DEFAULT NULL,
  `remaining` float(8,2) DEFAULT NULL,
  `note` varchar(300) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbpbmode_idx` (`payment_mode`),
  CONSTRAINT `fk_tbpbmode` FOREIGN KEY (`payment_mode`) REFERENCES `cb_payment_modes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_booking_payments`
--

LOCK TABLES `ta_booking_payments` WRITE;
/*!40000 ALTER TABLE `ta_booking_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ta_booking_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_event_types`
--

DROP TABLE IF EXISTS `ta_event_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_event_types` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `type_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_event_types`
--

LOCK TABLES `ta_event_types` WRITE;
/*!40000 ALTER TABLE `ta_event_types` DISABLE KEYS */;
INSERT INTO `ta_event_types` VALUES (1,NULL,'DINNER'),(2,NULL,'SPORT'),(3,NULL,'MUSIC CONCERT'),(4,NULL,'CULTURAL'),(5,NULL,'CRUISE'),(6,NULL,'NEW YEAR');
/*!40000 ALTER TABLE `ta_event_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_events`
--

DROP TABLE IF EXISTS `ta_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_events` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` varchar(250) DEFAULT NULL,
  `tour` bigint(20) DEFAULT NULL,
  `pic` blob,
  `event_type` int(10) DEFAULT NULL,
  `ticket_included` tinyint(1) DEFAULT '0',
  `event_start_at` varchar(45) DEFAULT NULL,
  `event_name` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `promoter` varchar(200) DEFAULT NULL COMMENT 'ozganizator manifestacije',
  `start` varchar(250) DEFAULT NULL,
  `end` varchar(250) DEFAULT NULL,
  `gratis` bigint(20) DEFAULT NULL,
  `event_price` float DEFAULT NULL,
  `agency_provision` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_etype_idx` (`event_type`),
  KEY `fk_etour_idx` (`tour`),
  KEY `fk_evtour_idx` (`tour`),
  CONSTRAINT `fk_etype` FOREIGN KEY (`event_type`) REFERENCES `ta_event_types` (`id`),
  CONSTRAINT `fk_evtour` FOREIGN KEY (`tour`) REFERENCES `ta_tours` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_events`
--

LOCK TABLES `ta_events` WRITE;
/*!40000 ALTER TABLE `ta_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `ta_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_excursion_gallery`
--

DROP TABLE IF EXISTS `ta_excursion_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_excursion_gallery` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ta_excursion` bigint(20) NOT NULL,
  `pic_name` varchar(255) DEFAULT NULL,
  `pic_text` varchar(255) DEFAULT NULL,
  `pic` longtext NOT NULL,
  `pic_cloud` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ta_event_id_idx` (`ta_excursion`),
  CONSTRAINT `ta_excursion_id` FOREIGN KEY (`ta_excursion`) REFERENCES `ta_excursions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_excursion_gallery`
--

LOCK TABLES `ta_excursion_gallery` WRITE;
/*!40000 ALTER TABLE `ta_excursion_gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `ta_excursion_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_excursions`
--

DROP TABLE IF EXISTS `ta_excursions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_excursions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `tour` bigint(20) DEFAULT NULL,
  `excursion_name` varchar(300) DEFAULT NULL,
  `description` text,
  `entrant_price` float(6,2) DEFAULT NULL,
  `entrant_vat` int(2) DEFAULT NULL,
  `commision` float(6,2) DEFAULT NULL,
  `vat_free` float(6,2) DEFAULT NULL,
  `vat_base` float(6,2) DEFAULT NULL,
  `vat` int(2) DEFAULT NULL,
  `tax` int(5) DEFAULT NULL,
  `output_price` float(6,2) DEFAULT NULL,
  `gratis` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_etour_idx` (`tour`),
  KEY `fk_evat_idx` (`vat`),
  KEY `fk_etax_idx` (`tax`),
  KEY `fk_eevat_idx` (`entrant_vat`),
  CONSTRAINT `fk_eevat` FOREIGN KEY (`entrant_vat`) REFERENCES `cb_vat_rates` (`id`),
  CONSTRAINT `fk_etax` FOREIGN KEY (`tax`) REFERENCES `cb_taxes` (`id`),
  CONSTRAINT `fk_etour` FOREIGN KEY (`tour`) REFERENCES `ta_tours` (`id`),
  CONSTRAINT `fk_evat` FOREIGN KEY (`vat`) REFERENCES `cb_vat_rates` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_excursions`
--

LOCK TABLES `ta_excursions` WRITE;
/*!40000 ALTER TABLE `ta_excursions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ta_excursions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_fixed_lease_accommodation`
--

DROP TABLE IF EXISTS `ta_fixed_lease_accommodation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_fixed_lease_accommodation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `accommodation` bigint(20) NOT NULL,
  `room` bigint(20) NOT NULL,
  `number_of_rooms` int(3) NOT NULL,
  `current_number_of_rooms` int(3) NOT NULL,
  `entrant_price` float(8,2) DEFAULT NULL,
  `entrant_vat` int(2) DEFAULT NULL,
  `commision` float(8,2) DEFAULT NULL COMMENT 'MoÄšÄže sluÄšÄžiti kao osnovica za porez',
  `vat_free` float(8,2) DEFAULT NULL,
  `vat_base` float(8,2) DEFAULT NULL,
  `vat` int(2) DEFAULT NULL,
  `tax` int(5) DEFAULT NULL,
  `output_price` float(8,2) DEFAULT NULL,
  `gratis` bigint(20) DEFAULT NULL,
  `lease_start` date DEFAULT NULL,
  `lease_end` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `roturn_no` int(5) DEFAULT NULL,
  `return_charge` float(8,2) DEFAULT NULL,
  `ta_agency` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_flaaccommodation_idx` (`accommodation`),
  KEY `fk_flroomtype_idx` (`room`),
  KEY `fk_flaevat_idx` (`entrant_vat`),
  KEY `fk_flavat_idx` (`vat`),
  KEY `fk_flatax_idx` (`tax`),
  KEY `fk_ta_agency_idx` (`ta_agency`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_fixed_lease_accommodation`
--

LOCK TABLES `ta_fixed_lease_accommodation` WRITE;
/*!40000 ALTER TABLE `ta_fixed_lease_accommodation` DISABLE KEYS */;
INSERT INTO `ta_fixed_lease_accommodation` VALUES (1,35,35,48,1,5,10.00,1,20.00,10.00,10.00,1,1,20.00,0,'2018-03-13','2018-03-13',NULL,5,15.00,8);
/*!40000 ALTER TABLE `ta_fixed_lease_accommodation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_group_companion`
--

DROP TABLE IF EXISTS `ta_group_companion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_group_companion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `tour` bigint(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `surname` varchar(20) DEFAULT NULL,
  `entrant_price` float(6,2) DEFAULT NULL,
  `entrant_vat` int(2) DEFAULT NULL,
  `commision` float(6,2) DEFAULT NULL,
  `var_free` float(6,2) DEFAULT NULL,
  `vat_base` float(6,2) DEFAULT NULL,
  `vat` int(2) DEFAULT NULL,
  `tax` int(5) DEFAULT NULL,
  `output_price` float(6,2) DEFAULT NULL,
  `gratis` bigint(20) DEFAULT NULL,
  `companion_notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_gcvat_idx` (`vat`),
  KEY `fk_gcevat_idx` (`entrant_vat`),
  KEY `fk_gctax_idx` (`tax`),
  KEY `fk_gcgratis_idx` (`gratis`),
  CONSTRAINT `fk_gcevat` FOREIGN KEY (`entrant_vat`) REFERENCES `cb_vat_rates` (`id`),
  CONSTRAINT `fk_gcgratis` FOREIGN KEY (`gratis`) REFERENCES `cb_gratis` (`id`),
  CONSTRAINT `fk_gctax` FOREIGN KEY (`tax`) REFERENCES `cb_taxes` (`id`),
  CONSTRAINT `fk_gcvat` FOREIGN KEY (`vat`) REFERENCES `cb_vat_rates` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_group_companion`
--

LOCK TABLES `ta_group_companion` WRITE;
/*!40000 ALTER TABLE `ta_group_companion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ta_group_companion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_personnel`
--

DROP TABLE IF EXISTS `ta_personnel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_personnel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `office` bigint(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `surname` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_personnel`
--

LOCK TABLES `ta_personnel` WRITE;
/*!40000 ALTER TABLE `ta_personnel` DISABLE KEYS */;
/*!40000 ALTER TABLE `ta_personnel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_personnel_statuses`
--

DROP TABLE IF EXISTS `ta_personnel_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_personnel_statuses` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `status_name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_personnel_statuses`
--

LOCK TABLES `ta_personnel_statuses` WRITE;
/*!40000 ALTER TABLE `ta_personnel_statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ta_personnel_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_ticket_types`
--

DROP TABLE IF EXISTS `ta_ticket_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_ticket_types` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `type_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_ticket_types`
--

LOCK TABLES `ta_ticket_types` WRITE;
/*!40000 ALTER TABLE `ta_ticket_types` DISABLE KEYS */;
INSERT INTO `ta_ticket_types` VALUES (1,NULL,'Football'),(2,NULL,'Dinner'),(3,NULL,'Event');
/*!40000 ALTER TABLE `ta_ticket_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_tickets_charge`
--

DROP TABLE IF EXISTS `ta_tickets_charge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_tickets_charge` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `accommodation` bigint(20) DEFAULT NULL,
  `event` bigint(20) DEFAULT NULL,
  `organizer` varchar(200) DEFAULT NULL,
  `organizer_contact_person` varchar(100) DEFAULT NULL,
  `organizer_email` varchar(100) DEFAULT NULL,
  `subject` varchar(300) DEFAULT NULL,
  `minutes` text,
  `total_quantity` int(8) DEFAULT NULL,
  `total_entrant_price` float(8,2) DEFAULT NULL,
  `total_entrant_vat` float(8,2) DEFAULT NULL,
  `total_commision` float(8,2) DEFAULT NULL,
  `total_vat_free` float(8,2) DEFAULT NULL,
  `total_vat_base` float(8,2) DEFAULT NULL,
  `total_vat` float(8,2) DEFAULT NULL,
  `total_tax` float(8,2) DEFAULT NULL,
  `total_output_price` float(8,2) DEFAULT NULL,
  `submiter` varchar(100) DEFAULT NULL,
  `accepter` bigint(20) DEFAULT NULL,
  `signature_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `contract_start` date DEFAULT NULL,
  `contract_end` date DEFAULT NULL,
  `contract_no` varchar(45) DEFAULT NULL,
  `invoice_reference` varchar(45) DEFAULT NULL,
  `gratis` bigint(20) DEFAULT NULL,
  `transport` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tcevent_idx` (`event`),
  KEY `fk_tick_trans` (`transport`),
  CONSTRAINT `fk_tcevent` FOREIGN KEY (`event`) REFERENCES `ta_events` (`id`),
  CONSTRAINT `fk_tick_trans` FOREIGN KEY (`transport`) REFERENCES `ta_tour_transport` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_tickets_charge`
--

LOCK TABLES `ta_tickets_charge` WRITE;
/*!40000 ALTER TABLE `ta_tickets_charge` DISABLE KEYS */;
/*!40000 ALTER TABLE `ta_tickets_charge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_tickets_series`
--

DROP TABLE IF EXISTS `ta_tickets_series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_tickets_series` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tickets_charge` bigint(20) DEFAULT NULL,
  `ticket_type` int(10) DEFAULT NULL,
  `ticket_name` varchar(200) DEFAULT NULL,
  `series_no` varchar(40) DEFAULT NULL,
  `series_name` varchar(200) DEFAULT NULL,
  `series_from` varchar(40) DEFAULT NULL,
  `series_to` varchar(40) DEFAULT NULL,
  `starting_point` varchar(50) DEFAULT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `seires_quantity` int(8) DEFAULT NULL,
  `series_entrant_price` float(8,2) DEFAULT NULL,
  `series_entrant_vat` int(2) DEFAULT NULL,
  `series_vat_free` float(8,2) DEFAULT NULL,
  `series_vat_base` float(8,2) DEFAULT NULL,
  `series_vat` int(2) DEFAULT NULL,
  `series_tax` int(5) DEFAULT NULL,
  `series_output_price` float(8,2) DEFAULT NULL,
  `roundtrip_addition` float(4,2) DEFAULT NULL,
  `return_charge` float(4,2) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `gratis` bigint(20) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_tbseries_idx` (`series_no`),
  KEY `fk_tickgratis_idx` (`gratis`),
  KEY `fk_tstcharge_idx` (`tickets_charge`),
  KEY `fk_tsttype_idx` (`ticket_type`),
  KEY `fk_tsevat_idx` (`series_entrant_vat`),
  KEY `fk_tsvat_idx` (`series_vat`),
  KEY `fk_tstax_idx` (`series_tax`),
  CONSTRAINT `fk_tickgratis` FOREIGN KEY (`gratis`) REFERENCES `cb_gratis` (`id`),
  CONSTRAINT `fk_tsevat` FOREIGN KEY (`series_entrant_vat`) REFERENCES `cb_vat_rates` (`id`),
  CONSTRAINT `fk_tstax` FOREIGN KEY (`series_tax`) REFERENCES `cb_taxes` (`id`),
  CONSTRAINT `fk_tstcharge` FOREIGN KEY (`tickets_charge`) REFERENCES `ta_tickets_charge` (`id`),
  CONSTRAINT `fk_tsttype` FOREIGN KEY (`ticket_type`) REFERENCES `ta_ticket_types` (`id`),
  CONSTRAINT `fk_tsvat` FOREIGN KEY (`series_vat`) REFERENCES `cb_vat_rates` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_tickets_series`
--

LOCK TABLES `ta_tickets_series` WRITE;
/*!40000 ALTER TABLE `ta_tickets_series` DISABLE KEYS */;
/*!40000 ALTER TABLE `ta_tickets_series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_tour_accommodation`
--

DROP TABLE IF EXISTS `ta_tour_accommodation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_tour_accommodation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `accommodation` bigint(20) DEFAULT NULL,
  `tour` bigint(20) NOT NULL,
  `room` bigint(20) NOT NULL,
  `number_of_rooms` int(3) NOT NULL,
  `current_number_of_rooms` int(3) NOT NULL,
  `note` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ttatour_idx` (`tour`),
  KEY `fk_ttaroom_idx` (`room`),
  CONSTRAINT `fk_ttaroom` FOREIGN KEY (`room`) REFERENCES `ta_fixed_lease_accommodation` (`id`),
  CONSTRAINT `fk_ttatour` FOREIGN KEY (`tour`) REFERENCES `ta_tours` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_tour_accommodation`
--

LOCK TABLES `ta_tour_accommodation` WRITE;
/*!40000 ALTER TABLE `ta_tour_accommodation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ta_tour_accommodation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_tour_gallery`
--

DROP TABLE IF EXISTS `ta_tour_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_tour_gallery` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tour` bigint(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `pic` longtext,
  `pic_text` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_gtour_idx` (`tour`),
  CONSTRAINT `fk_gtour` FOREIGN KEY (`tour`) REFERENCES `ta_tours` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_tour_gallery`
--

LOCK TABLES `ta_tour_gallery` WRITE;
/*!40000 ALTER TABLE `ta_tour_gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `ta_tour_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_tour_location`
--

DROP TABLE IF EXISTS `ta_tour_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_tour_location` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tour` bigint(20) NOT NULL,
  `city` bigint(20) NOT NULL,
  `num_of_days` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tour_fk_idx` (`tour`),
  KEY `fk_city_fk_idx` (`city`),
  CONSTRAINT `fk_city_fk` FOREIGN KEY (`city`) REFERENCES `cb_locations` (`id`),
  CONSTRAINT `fk_tour_fk` FOREIGN KEY (`tour`) REFERENCES `ta_tours` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_tour_location`
--

LOCK TABLES `ta_tour_location` WRITE;
/*!40000 ALTER TABLE `ta_tour_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `ta_tour_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_tour_outgoings`
--

DROP TABLE IF EXISTS `ta_tour_outgoings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_tour_outgoings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `tour` bigint(20) DEFAULT NULL,
  `expense_name` varchar(200) DEFAULT NULL,
  `expense_entrant_amount` float(8,2) DEFAULT NULL,
  `expense_vat` float(8,2) DEFAULT NULL,
  `expense_total` float(8,2) DEFAULT NULL,
  `expense_quantity` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tetours_idx` (`tour`),
  CONSTRAINT `fk_tetours` FOREIGN KEY (`tour`) REFERENCES `ta_tours` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_tour_outgoings`
--

LOCK TABLES `ta_tour_outgoings` WRITE;
/*!40000 ALTER TABLE `ta_tour_outgoings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ta_tour_outgoings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_tour_transport`
--

DROP TABLE IF EXISTS `ta_tour_transport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_tour_transport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `transport_operator` bigint(20) NOT NULL,
  `tour` bigint(20) NOT NULL,
  `from_place` varchar(255) NOT NULL,
  `to_place` varchar(255) NOT NULL,
  `transport_date` date NOT NULL,
  `departure_time` varchar(50) NOT NULL COMMENT 'This column stores time in minutes. The value gets converted to hours:minutes in front-end.',
  `arrival_time` varchar(50) NOT NULL COMMENT 'This column stores time in minutes. The value gets converted to hours:minutes in front-end.',
  `data_created_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_ta_transport_operator_idx` (`transport_operator`),
  KEY `fk_ta_tour_id_idx` (`tour`),
  CONSTRAINT `fk_ta_tour_id` FOREIGN KEY (`tour`) REFERENCES `ta_tours` (`id`),
  CONSTRAINT `fk_ta_transport_operator` FOREIGN KEY (`transport_operator`) REFERENCES `ta_transport_operators` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_tour_transport`
--

LOCK TABLES `ta_tour_transport` WRITE;
/*!40000 ALTER TABLE `ta_tour_transport` DISABLE KEYS */;
/*!40000 ALTER TABLE `ta_tour_transport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_tour_types`
--

DROP TABLE IF EXISTS `ta_tour_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_tour_types` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `tour_type` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_tour_types`
--

LOCK TABLES `ta_tour_types` WRITE;
/*!40000 ALTER TABLE `ta_tour_types` DISABLE KEYS */;
INSERT INTO `ta_tour_types` VALUES (2,NULL,'Summer'),(3,NULL,'Winter'),(4,NULL,'Extreme Sport'),(5,NULL,'Sport Event'),(6,NULL,'Concert'),(7,NULL,'Excursion');
/*!40000 ALTER TABLE `ta_tour_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_tours`
--

DROP TABLE IF EXISTS `ta_tours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_tours` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `travel_agency` bigint(20) NOT NULL,
  `tour_type` int(10) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `tour_name` varchar(300) NOT NULL,
  `travel_program` longtext,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `nights_no` int(2) DEFAULT NULL,
  `tour_capacity` int(2) DEFAULT NULL,
  `max_clients` int(2) DEFAULT NULL,
  `entrant_price` float(6,2) DEFAULT NULL,
  `entrant_vat` int(2) DEFAULT NULL,
  `commision` float(6,2) DEFAULT NULL,
  `vat_free` float(6,2) DEFAULT NULL,
  `vat_base` float(6,2) DEFAULT NULL,
  `vat` int(2) DEFAULT NULL,
  `tax` int(5) DEFAULT NULL,
  `output_price` float(6,2) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `gratis` bigint(20) DEFAULT NULL,
  `custom_id` varchar(255) NOT NULL,
  `city` bigint(20) DEFAULT NULL,
  `state` int(20) DEFAULT NULL,
  `balkan_region` tinyint(1) DEFAULT NULL,
  `isAvailable` tinyint(1) NOT NULL DEFAULT '1',
  `commision_type` int(2) DEFAULT NULL,
  `account` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tourtype_idx` (`tour_type`),
  KEY `fk_tvat_idx` (`vat`),
  KEY `fk_ttax_idx` (`tax`),
  KEY `fk_tevat_idx` (`entrant_vat`),
  KEY `fk_tgratis_idx` (`gratis`),
  KEY `ffk_tcity_fk_idx` (`city`),
  KEY `fk_tstate_fk_idx` (`state`),
  KEY `fk_t_agency_idx` (`travel_agency`),
  CONSTRAINT `ffk_tcity_fk` FOREIGN KEY (`city`) REFERENCES `cb_locations` (`id`),
  CONSTRAINT `fk_t_agency` FOREIGN KEY (`travel_agency`) REFERENCES `ta_travel_agency` (`id`),
  CONSTRAINT `fk_tevat` FOREIGN KEY (`entrant_vat`) REFERENCES `cb_vat_rates` (`id`),
  CONSTRAINT `fk_tgratis` FOREIGN KEY (`gratis`) REFERENCES `cb_gratis` (`id`),
  CONSTRAINT `fk_tourtype` FOREIGN KEY (`tour_type`) REFERENCES `ta_tour_types` (`id`),
  CONSTRAINT `fk_tstate_fk` FOREIGN KEY (`state`) REFERENCES `cb_states` (`id`),
  CONSTRAINT `fk_ttax` FOREIGN KEY (`tax`) REFERENCES `cb_taxes` (`id`),
  CONSTRAINT `fk_tvat` FOREIGN KEY (`vat`) REFERENCES `cb_vat_rates` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_tours`
--

LOCK TABLES `ta_tours` WRITE;
/*!40000 ALTER TABLE `ta_tours` DISABLE KEYS */;
INSERT INTO `ta_tours` VALUES (6,8,6,NULL,'10th ANNIVERSARY SARAJEVO SALSA CONGRESS ','<span style=\"color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\">Dear friends,</span><br style=\"box-sizing: border-box; color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\"><br style=\"box-sizing: border-box; color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\"><span style=\"color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\">we are more than happy to announce our 10th ANNIVERSARY SARAJEVO SALSA CONGRESS !!!</span><br style=\"box-sizing: border-box; color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\"><br style=\"box-sizing: border-box; color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\"><span style=\"color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\">10th Sarajevo Salsa Congress, which will happen from 25th to 28th of January 2018, will have ONE PASS!!!</span><br style=\"box-sizing: border-box; color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\"><span style=\"color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\">Yes, you read it well, 4 days of great workshops,parties and afterparties for one price.</span><br style=\"box-sizing: border-box; color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\"><br style=\"box-sizing: border-box; color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\"><span style=\"color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\">To participate in workshops, parties and afterparties you only have one condition, which is not that hard to fulfill.</span><br style=\"box-sizing: border-box; color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\"><span style=\"color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\">So, all you have to do is to buy THE Pass and you are free to go to all parties and WORKSHOPS as well.</span><br style=\"box-sizing: border-box; color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\"><br style=\"box-sizing: border-box; color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\"><span style=\"color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\">Full Party Pass until the 15th of October is 25 euros, and from 15th of October is 30 euros.</span><br style=\"box-sizing: border-box; color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\"><br style=\"box-sizing: border-box; color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\"><span style=\"color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\">Registration for passes is already open and don`t miss a chance to apply on time, and get your super extra pass,&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\"><span style=\"color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\">for the 10th Sarajevo Salsa Congress which includes parties and workshops for only 25euros.</span><br style=\"box-sizing: border-box; color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\"><br style=\"box-sizing: border-box; color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\"><span style=\"color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\">You can register on sarajevosalsa@gmail.com or in inbox of Sarajevo Salsa Congress 2018`s page.</span><br style=\"box-sizing: border-box; color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\"><br style=\"box-sizing: border-box; color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\"><span style=\"color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\">Our venue is Hotel Saraj, which is only 500m away from Bascarsija (Old Town). That means that only 3 minutes&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\"><span style=\"color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\">of walking stands between you and cevapcici :D. You can find more informations about this hotel on their&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\"><span style=\"color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\">website www.hotelsaraj.com. Also, stay tuned and you will get more informations about this great venue&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\"><span style=\"color: rgb(255, 255, 255); font-family: Arial; font-size: 14px; text-align: center; white-space: nowrap; background-color: rgb(40, 40, 40);\">and special offers very soon.</span>','2018-01-25','2018-01-28',0,500,500,0.00,NULL,0.00,0.00,0.00,NULL,NULL,90.00,NULL,NULL,'52e58e957c17445684ee8e9ed158c658',1,1,1,1,NULL,NULL),(7,8,5,NULL,'test6','test','2018-03-16','2018-03-22',0,50,50,0.00,NULL,0.00,0.00,0.00,NULL,NULL,0.00,NULL,NULL,'f2eab1f5c3fb47c98242a2204c7f52cf',1,1,1,1,NULL,NULL);
/*!40000 ALTER TABLE `ta_tours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_transport_operator_types`
--

DROP TABLE IF EXISTS `ta_transport_operator_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_transport_operator_types` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_transport_operator_types`
--

LOCK TABLES `ta_transport_operator_types` WRITE;
/*!40000 ALTER TABLE `ta_transport_operator_types` DISABLE KEYS */;
INSERT INTO `ta_transport_operator_types` VALUES (1,'Airplane'),(2,'Bus'),(3,'Train'),(4,'Cruise'),(5,'Ship');
/*!40000 ALTER TABLE `ta_transport_operator_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_transport_operators`
--

DROP TABLE IF EXISTS `ta_transport_operators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_transport_operators` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `operator_type` int(10) DEFAULT NULL,
  `logo` varchar(300) DEFAULT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `web` varchar(100) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_otype_idx` (`operator_type`),
  CONSTRAINT `fk_otype` FOREIGN KEY (`operator_type`) REFERENCES `ta_transport_operator_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_transport_operators`
--

LOCK TABLES `ta_transport_operators` WRITE;
/*!40000 ALTER TABLE `ta_transport_operators` DISABLE KEYS */;
/*!40000 ALTER TABLE `ta_transport_operators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_travel_agency`
--

DROP TABLE IF EXISTS `ta_travel_agency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ta_travel_agency` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `agency_type` int(11) DEFAULT NULL,
  `account_name` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `state` int(3) DEFAULT NULL,
  `city` bigint(20) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) DEFAULT NULL,
  `account_number` varchar(250) DEFAULT NULL,
  `description` varchar(750) DEFAULT NULL,
  `bank_name` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `business_mail` varchar(200) DEFAULT NULL,
  `web` varchar(200) DEFAULT NULL,
  `contact_name` varchar(400) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_travel_agency`
--

LOCK TABLES `ta_travel_agency` WRITE;
/*!40000 ALTER TABLE `ta_travel_agency` DISABLE KEYS */;
INSERT INTO `ta_travel_agency` VALUES (8,35,1,'Go2Balkan','Vilsonovo setaliste 10',1,1,'info@adeda.ba',NULL,NULL,NULL,NULL,'+387.062294659','info@adeda.ba','http://www.adeda.ba',NULL,'2017-12-27 13:48:44'),(9,35,2,'rent a car','xxx',1,14,'info@adeda.ba',NULL,NULL,NULL,NULL,'+387.61833622','xxx@yyy.com','http://www.aaa.ba',NULL,'2018-02-21 10:36:03'),(10,35,2,'test','bbb',1,15,'info@adeda.ba',NULL,NULL,NULL,NULL,'+387.0000123','business@email.com','http://ppp.ba',NULL,'2018-02-21 10:40:28');
/*!40000 ALTER TABLE `ta_travel_agency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxi_companies`
--

DROP TABLE IF EXISTS `taxi_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `taxi_companies` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `logo` blob,
  `name` varchar(200) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` bigint(20) DEFAULT NULL,
  `contact_person` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `web` varchar(100) DEFAULT NULL,
  `account_number` varchar(20) DEFAULT NULL,
  `bank_name` varchar(200) DEFAULT NULL,
  `id_number` varchar(20) DEFAULT NULL,
  `tax_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tcity_idx` (`city`),
  CONSTRAINT `fk_tcity` FOREIGN KEY (`city`) REFERENCES `cb_locations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxi_companies`
--

LOCK TABLES `taxi_companies` WRITE;
/*!40000 ALTER TABLE `taxi_companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxi_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxi_drivers`
--

DROP TABLE IF EXISTS `taxi_drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `taxi_drivers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `bank_account` varchar(20) DEFAULT NULL,
  `bank_name` varchar(50) DEFAULT NULL,
  `taxi_company` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tcompany_idx` (`taxi_company`),
  CONSTRAINT `fk_tcompany` FOREIGN KEY (`taxi_company`) REFERENCES `taxi_companies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxi_drivers`
--

LOCK TABLES `taxi_drivers` WRITE;
/*!40000 ALTER TABLE `taxi_drivers` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxi_drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxi_services`
--

DROP TABLE IF EXISTS `taxi_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `taxi_services` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` bigint(20) DEFAULT NULL,
  `accommodation` bigint(20) DEFAULT NULL,
  `tour` bigint(20) DEFAULT NULL,
  `event` bigint(20) DEFAULT NULL,
  `driver` int(10) DEFAULT NULL,
  `taxi_company` bigint(20) DEFAULT NULL,
  `from` varchar(200) NOT NULL,
  `to` varchar(200) NOT NULL,
  `entrant_price` float(6,2) DEFAULT NULL,
  `entrant_vat` int(2) DEFAULT NULL,
  `commision` float(6,2) DEFAULT NULL,
  `vat_free` float(6,2) DEFAULT NULL,
  `vat_base` float(6,2) DEFAULT NULL,
  `vat` int(2) DEFAULT NULL,
  `tax` int(5) DEFAULT NULL,
  `output_price` float(6,2) DEFAULT NULL,
  `gratis` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_stdriver_idx` (`driver`),
  KEY `fk_stcompany_idx` (`taxi_company`),
  KEY `fk_stvat_idx` (`vat`),
  KEY `fk_sttax_idx` (`tax`),
  KEY `fk_stgratis_idx` (`gratis`),
  KEY `fk_bstevat_idx` (`entrant_vat`),
  CONSTRAINT `fk_bstevat` FOREIGN KEY (`entrant_vat`) REFERENCES `cb_vat_rates` (`id`),
  CONSTRAINT `fk_bstgratis` FOREIGN KEY (`gratis`) REFERENCES `cb_gratis` (`id`),
  CONSTRAINT `fk_bsttax` FOREIGN KEY (`tax`) REFERENCES `cb_taxes` (`id`),
  CONSTRAINT `fk_bstvat` FOREIGN KEY (`vat`) REFERENCES `cb_vat_rates` (`id`),
  CONSTRAINT `fk_stcompany` FOREIGN KEY (`taxi_company`) REFERENCES `taxi_companies` (`id`),
  CONSTRAINT `fk_stdriver` FOREIGN KEY (`driver`) REFERENCES `taxi_drivers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxi_services`
--

LOCK TABLES `taxi_services` WRITE;
/*!40000 ALTER TABLE `taxi_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxi_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'g2b'
--

--
-- Dumping routines for database 'g2b'
--
/*!50003 DROP PROCEDURE IF EXISTS `all_accommodations_by_state` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin2 */ ;
/*!50003 SET character_set_results = latin2 */ ;
/*!50003 SET collation_connection  = latin2_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `all_accommodations_by_state`(
in stateId long,
in startDate date,
in endDate date,
in personsCount integer
)
BEGIN
SET @stateId = stateId;
SET @startDate = startDate;
SET @endDate = endDate;
SET @personsCount = personsCount;


#TODO: add discount to price
SELECT
  able_to_accept.accommodation_id,
  able_to_accept.accommodation_type,
  able_to_accept.accommodation_type_name,
  able_to_accept.offer_price,
  able_to_accept.required_same_rooms,
  able_to_accept.promo_pic,
  able_to_accept.name,
  able_to_accept.rank,
  able_to_accept.googlemap_link,

  cb_vat_rates.vat_rate,
  able_to_accept.offer_price/100.00 * cb_vat_rates.vat_rate               as vat_amount,
  IF(accommodation_options_parking.parking_price = 0,TRUE,FALSE)          as free_parking,
  IF((accommodation_options_breakfast.breakfast_price)=0,TRUE,FALSE)      as free_breakfast,
  IF(accommodation_pets_policy.pets_allowed = 1,TRUE,FALSE)               as pets_allowed,
  cb_internet_connection_type.connection_type                             as internet_type,
  accommodation_cancellation_policy.return_amount                         as cancelation_return_amount,
  IF(able_to_accept.required_same_rooms>=discount_quantity.min_num,
     IF(discount_quantity.fixed_calculation=1,
          discount_quantity.discount_fixed_amount,
          discount_quantity.discount_percentage_amount *offer_price/100), 0) as quantity_discount_amount,
  GROUP_CONCAT(accommodation_distances.surrounding_name,
			   ",", 
			   IF(accommodation_distances.surrounding_icon != "", accommodation_distances.surrounding_icon, "null"),
               ",", 
               IF(accommodation_distances.surrounding_note != "", accommodation_distances.surrounding_note, "null"),
               ",",
               accommodation_distances.distance
	SEPARATOR ':') 														  as accommodation_surraundings,
  @startDate as check_in_date,
  @endDate   as check_out_date
FROM(
SELECT
  SUM(t1.sum_max_capacity_by_room_or_roomtype) as total_accommodation_capacity,
  if(SUM(t1.sum_max_capacity_by_room_or_roomtype)>=@personsCount,TRUE ,FALSE ) as accommodation_can_accept_all_persons,
  if(SUM(t1.sum_max_capacity_by_room_or_roomtype)>=@personsCount AND t1.can_fit_in_same_room_type,FALSE ,TRUE ) as must_use_different_room_types,
  if(t1.can_fit_in_same_room_type,t1.required_same_rooms * t1.total_price_for_period,0) as offer_price,
  t1.accommodation_id,
  t1.required_same_rooms,
  t1.sum_max_capacity_by_room_or_roomtype,
  t1.can_fit_in_same_room_type,
  t1.total_price_for_period as price_by_single_room_for_period,
  t1.state,
  t1.name,
  t1.promo_pic,
  t1.rank,
  t1.address,
  t1.googlemap_link,
  t1.accommodation_type,
  t1.accommodation_type_name
FROM (
SELECT
  #TODO: sum all accommodation free beds
  CEIL(@personsCount / room_or_roomtype_max_capacity)                               AS required_same_rooms,
  (room_or_roomtype_max_capacity *
   number_of_rooms)                                                                 AS sum_max_capacity_by_room_or_roomtype,
  if(room_or_roomtype_max_capacity * number_of_rooms >= @personsCount, TRUE, FALSE) AS can_fit_in_same_room_type,
  requried_rooms_number.*
FROM (
       SELECT
         if(room_is_rentable, rentable_room_capacity, non_rentable_room_capacity) AS room_or_roomtype_max_capacity,
         distinct_room_capacity.total_price_for_period,
         distinct_room_capacity.accommodation_id,
         distinct_room_capacity.state,
         distinct_room_capacity.name,
         distinct_room_capacity.promo_pic,
         distinct_room_capacity.rank,
         distinct_room_capacity.address,
         distinct_room_capacity.googlemap_link,
         distinct_room_capacity.type                                              AS accommodation_type,
         distinct_room_capacity.accommodation_type_name,
         distinct_room_capacity.room_max_capacity,
         distinct_room_capacity.room_type_max_capacity,
         distinct_room_capacity.room_is_rentable,
         distinct_room_capacity.room_type_is_rentable,
         distinct_room_capacity.number_of_rooms,
         distinct_room_capacity.room_type_id
       FROM (
              SELECT *
              FROM (
                     SELECT
                       count(1)                                         AS num_of_repeating_same_room_or_type,
                       sum(rooms_by_date.enduser_price)                 AS total_price_for_period,
                       if(room_is_rentable, room_max_capacity, 0)       AS rentable_room_capacity,
                       if(NOT room_is_rentable, room_max_capacity, 0)   AS non_rentable_room_capacity,
                       #TODO: calculate free beds in hostel
                       rooms_by_date.accommodation_id,
                       rooms_by_date.state,
                       rooms_by_date.name,
                       rooms_by_date.promo_pic,
                       rooms_by_date.rank,
                       rooms_by_date.address,
                       rooms_by_date.googlemap_link,
                       rooms_by_date.type,
                       rooms_by_date.accommodation_type_name,
                       rooms_by_date.room_capacity,
                       rooms_by_date.room_has_extrabeds,
                       rooms_by_date.room_extrabeds_num,
                       rooms_by_date.room_max_capacity,
                       rooms_by_date.room_is_rentable,
                       rooms_by_date.room_type_has_extrabeds,
                       rooms_by_date.room_type_extrabeds_num,
                       rooms_by_date.room_type_max_capacity,
                       rooms_by_date.number_of_rooms,
                       rooms_by_date.room_type_is_rentable,
                       rooms_by_date.room_type_id,
                       rooms_by_date.price_start_date,
                       rooms_by_date.price_end_date
                     FROM (

                            SELECT
                              accommodation.id                                                                AS accommodation_id,
                              accommodation.state,
                              accommodation.name,
                              accommodation.promo_pic,
                              accommodation.rank,
                              accommodation.address,
                              accommodation.googlemap_link,
                              accommodation_types.type,
                              accommodation_types.accommodation_type_name,
                              accommodation_rooms.id                                                          AS room_id,
                              accommodation_rooms.room_capacity,
                              accommodation_rooms.has_extrabeds                                               AS room_has_extrabeds,
                              accommodation_rooms.extrabeds_num                                               AS room_extrabeds_num,
                              accommodation_rooms.has_extrabeds * accommodation_rooms.extrabeds_num +
                              accommodation_rooms.room_capacity                                               AS room_max_capacity,
                              accommodation_rooms.is_rentable                                                 AS room_is_rentable,
                              accommodation_room_types.has_extrabeds                                          AS room_type_has_extrabeds,
                              accommodation_room_types.extrabeds_num                                          AS room_type_extrabeds_num,
                              accommodation_room_types.has_extrabeds *
                              accommodation_room_types.extrabeds_num                                          AS room_type_max_capacity,
                              accommodation_room_types.number_of_rooms,
                              accommodation_room_types.is_rentable                                            AS room_type_is_rentable,
                              accommodation_rooms.room_type                                                   AS room_type_id,
                              dates.Date,
                              price_periods.price_start_date,
                              price_periods.price_end_date,
                              price_periods.enduser_price
                            FROM
                              accommodation
                              JOIN accommodation_types ON accommodation.accommodation_type = accommodation_types.id
                             /* LEFT JOIN accommodation_distances on accommodation_distances.accommodation = accommodation.id*/
                              LEFT JOIN accommodation_rooms ON accommodation_rooms.accommodation = accommodation.id
                              JOIN accommodation_room_types
                                ON accommodation_rooms.room_type = accommodation_room_types.id
                              LEFT JOIN accommodation_rooms_prices_periods price_periods
                                ON accommodation_rooms.room_type = price_periods.room
                              LEFT OUTER JOIN (
                                                SELECT booked_rooms.room AS room_id
                                                FROM
                                                  booked_rooms
                                                  JOIN booking ON booked_rooms.booking = booking.id
                                                WHERE
                                                  @startDate BETWEEN booking.arrival_date AND booking.departure_date
                                                  OR
                                                  @endDate BETWEEN booking.arrival_date AND booking.departure_date
                                              ) booked_rooms_for_date_range
                                ON accommodation_rooms.id = booked_rooms_for_date_range.room_id
                                   AND accommodation.state = @stateId
                              CROSS JOIN (

                                           SELECT MyDate AS Date
                                           FROM (
                                                  SELECT (@startDate +
                                                          INTERVAL (a.a + (10 * b.a) + (100 * c.a)) DAY) AS MyDate
                                                  FROM (SELECT 0 AS a
                                                        UNION ALL SELECT 1
                                                        UNION ALL SELECT 2
                                                        UNION ALL SELECT 3
                                                        UNION ALL SELECT 4
                                                        UNION ALL SELECT 5
                                                        UNION ALL SELECT 6
                                                        UNION ALL SELECT 7
                                                        UNION ALL SELECT 8
                                                        UNION ALL SELECT 9) AS a
                                                    CROSS JOIN (SELECT 0 AS a
                                                                UNION ALL SELECT 1
                                                                UNION ALL SELECT 2
                                                                UNION ALL SELECT 3
                                                                UNION ALL SELECT 4
                                                                UNION ALL SELECT 5
                                                                UNION ALL SELECT 6
                                                                UNION ALL SELECT 7
                                                                UNION ALL SELECT 8
                                                                UNION ALL SELECT 9) AS b
                                                    CROSS JOIN (SELECT 0 AS a
                                                                UNION ALL SELECT 1
                                                                UNION ALL SELECT 2
                                                                UNION ALL SELECT 3
                                                                UNION ALL SELECT 4
                                                                UNION ALL SELECT 5
                                                                UNION ALL SELECT 6
                                                                UNION ALL SELECT 7
                                                                UNION ALL SELECT 8
                                                                UNION ALL SELECT 9) AS c
                                                ) dt) dates ON dates.Date < binary @endDate


                            WHERE booked_rooms_for_date_range.room_id IS NULL
                                  AND dates.Date < price_end_date AND dates.Date >= price_start_date
                                  AND accommodation.state = @stateId
                          ) rooms_by_date
                     GROUP BY room_id,price_start_date
                   ) free_rooms_or_types_for_period
              WHERE num_of_repeating_same_room_or_type = DATEDIFF(@endDate, @startDate)
            ) distinct_room_capacity
     ) requried_rooms_number

GROUP BY room_type_id
)t1

GROUP BY t1.accommodation_id
)able_to_accept
  LEFT JOIN accommodation_options_parking ON able_to_accept.accommodation_id = accommodation_options_parking.accommodation
  LEFT JOIN cb_vat_rates ON able_to_accept.state = cb_vat_rates.state
  LEFT JOIN accommodation_options_breakfast on accommodation_options_breakfast.accommodation = able_to_accept.accommodation_id
  LEFT JOIN accommodation_pets_policy ON able_to_accept.accommodation_id = accommodation_pets_policy.accommodation
  LEFT JOIN accommodation_options_internet ON able_to_accept.accommodation_id = accommodation_options_internet.accommodation
  LEFT JOIN cb_internet_connection_type on accommodation_options_internet.internet_connection_type = cb_internet_connection_type.id
  LEFT JOIN accommodation_cancellation_policy on able_to_accept.accommodation_id=accommodation_cancellation_policy.accommodation
  LEFT JOIN discount_quantity ON able_to_accept.accommodation_id = discount_quantity.accommodation
                              AND @startDate BETWEEN discount_quantity.price_start_date AND discount_quantity.price_end_date
  LEFT JOIN accommodation_distances on accommodation_distances.accommodation = able_to_accept.accommodation_id
WHERE accommodation_can_accept_all_persons=TRUE
GROUP BY able_to_accept.accommodation_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `all_accommodations_in_city` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin2 */ ;
/*!50003 SET character_set_results = latin2 */ ;
/*!50003 SET collation_connection  = latin2_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `all_accommodations_in_city`(
	in cityId INTEGER,
	in startDate date,
	in endDate date,
  in adultsCount INTEGER,
  in childCount INTEGER,
  in roomsCount INTEGER,
  in pageIndex INTEGER,
  in pageSize INTEGER,
  in sortColumn VARCHAR(50),
  in sortDirection VARCHAR(10) 
)
BEGIN

SET @stateId = 1;
SET @startDate = '2018-11-11';
SET @endDate = '2018-11-12';
SET @personsCount = 2;


#TODO: add discount to price
SELECT
  able_to_accept.accommodation_id,
  able_to_accept.accommodation_type,
  able_to_accept.accommodation_type_name,
  able_to_accept.offer_price,
  able_to_accept.required_same_rooms,
  able_to_accept.promo_pic,
  able_to_accept.name,
  able_to_accept.rank,
  able_to_accept.googlemap_link,

  cb_vat_rates.vat_rate,
  able_to_accept.offer_price/100.00 * cb_vat_rates.vat_rate               as vat_amount,
  IF(accommodation_options_parking.parking_price = 0,TRUE,FALSE)          as free_parking,
  IF((accommodation_options_breakfast.breakfast_price)=0,TRUE,FALSE)      as free_breakfast,
  IF(accommodation_pets_policy.pets_allowed = 1,TRUE,FALSE)               as pets_allowed,
  cb_internet_connection_type.connection_type                             as internet_type,
  accommodation_cancellation_policy.return_amount                         as cancelation_return_amount,
  if(able_to_accept.required_same_rooms>=discount_quantity.min_num,
     if(discount_quantity.fixed_calculation=1,
          discount_quantity.discount_fixed_amount,
          discount_quantity.discount_percentage_amount *offer_price/100), 0) as quantity_discount_amount,
  @startDate as check_in_date,
  @endDate   as check_out_date
FROM(
SELECT
  SUM(t1.sum_max_capacity_by_room_or_roomtype) as total_accommodation_capacity,
  if(SUM(t1.sum_max_capacity_by_room_or_roomtype)>=@personsCount,TRUE ,FALSE ) as accommodation_can_accept_all_persons,
  if(SUM(t1.sum_max_capacity_by_room_or_roomtype)>=@personsCount AND t1.can_fit_in_same_room_type,FALSE ,TRUE ) as must_use_different_room_types,
  if(t1.can_fit_in_same_room_type,t1.required_same_rooms * t1.total_price_for_period,'Please ask') as offer_price,
  t1.accommodation_id,
  t1.required_same_rooms,
  t1.sum_max_capacity_by_room_or_roomtype,
  t1.can_fit_in_same_room_type,
  t1.total_price_for_period as price_by_single_room_for_period,
  t1.state,
  t1.name,
  t1.promo_pic,
  t1.rank,
  t1.address,
  t1.googlemap_link,
  t1.accommodation_type,
  t1.accommodation_type_name
FROM (
SELECT
  #TODO: sum all accommodation free beds
  CEIL(@personsCount / room_or_roomtype_max_capacity)                               AS required_same_rooms,
  (room_or_roomtype_max_capacity *
   number_of_rooms)                                                                 AS sum_max_capacity_by_room_or_roomtype,
  if(room_or_roomtype_max_capacity * number_of_rooms >= @personsCount, TRUE, FALSE) AS can_fit_in_same_room_type,
  requried_rooms_number.*
FROM (
       SELECT
         if(room_is_rentable, rentable_room_capacity, non_rentable_room_capacity) AS room_or_roomtype_max_capacity,
         distinct_room_capacity.total_price_for_period,
         distinct_room_capacity.accommodation_id,
         distinct_room_capacity.state,
         distinct_room_capacity.name,
         distinct_room_capacity.promo_pic,
         distinct_room_capacity.rank,
         distinct_room_capacity.address,
         distinct_room_capacity.googlemap_link,
         distinct_room_capacity.type                                              AS accommodation_type,
         distinct_room_capacity.accommodation_type_name,
         distinct_room_capacity.room_max_capacity,
         distinct_room_capacity.room_type_max_capacity,
         distinct_room_capacity.room_is_rentable,
         distinct_room_capacity.room_type_is_rentable,
         distinct_room_capacity.number_of_rooms,
         distinct_room_capacity.room_type_id
       FROM (
              SELECT *
              FROM (
                     SELECT
                       count(1)                                         AS num_of_repeating_same_room_or_type,
                       sum(rooms_by_date.enduser_price)                 AS total_price_for_period,
                       if(room_is_rentable, room_max_capacity, 0)       AS rentable_room_capacity,
                       if(NOT room_is_rentable, room_max_capacity, 0)   AS non_rentable_room_capacity,
                       #TODO: calculate free beds in hostel
                       rooms_by_date.accommodation_id,
                       rooms_by_date.state,
                       rooms_by_date.name,
                       rooms_by_date.promo_pic,
                       rooms_by_date.rank,
                       rooms_by_date.address,
                       rooms_by_date.googlemap_link,
                       rooms_by_date.type,
                       rooms_by_date.accommodation_type_name,
                       rooms_by_date.room_capacity,
                       rooms_by_date.room_has_extrabeds,
                       rooms_by_date.room_extrabeds_num,
                       rooms_by_date.room_max_capacity,
                       rooms_by_date.room_is_rentable,
                       rooms_by_date.room_type_has_extrabeds,
                       rooms_by_date.room_type_extrabeds_num,
                       rooms_by_date.room_type_max_capacity,
                       rooms_by_date.number_of_rooms,
                       rooms_by_date.room_type_is_rentable,
                       rooms_by_date.room_type_id,
                       rooms_by_date.price_start_date,
                       rooms_by_date.price_end_date
                     FROM (

                            SELECT
                              accommodation.id                                                                AS accommodation_id,
                              accommodation.state,
                              accommodation.name,
                              accommodation.promo_pic,
                              accommodation.rank,
                              accommodation.address,
                              accommodation.googlemap_link,
                              accommodation_types.type,
                              accommodation_types.accommodation_type_name,
                              accommodation_rooms.id                                                          AS room_id,
                              accommodation_rooms.room_capacity,
                              accommodation_rooms.has_extrabeds                                               AS room_has_extrabeds,
                              accommodation_rooms.extrabeds_num                                               AS room_extrabeds_num,
                              accommodation_rooms.has_extrabeds * accommodation_rooms.extrabeds_num +
                              accommodation_rooms.room_capacity                                               AS room_max_capacity,
                              accommodation_rooms.is_rentable                                                 AS room_is_rentable,
                              accommodation_room_types.has_extrabeds                                          AS room_type_has_extrabeds,
                              accommodation_room_types.extrabeds_num                                          AS room_type_extrabeds_num,
                              accommodation_room_types.has_extrabeds *
                              accommodation_room_types.extrabeds_num                                          AS room_type_max_capacity,
                              accommodation_room_types.number_of_rooms,
                              accommodation_room_types.is_rentable                                            AS room_type_is_rentable,
                              accommodation_rooms.room_type                                                   AS room_type_id,
                              dates.Date,
                              price_periods.price_start_date,
                              price_periods.price_end_date,
                              price_periods.enduser_price
                            FROM
                              accommodation
                              JOIN accommodation_types ON accommodation.accommodation_type = accommodation_types.id
                              LEFT JOIN accommodation_rooms ON accommodation_rooms.accommodation = accommodation.id
                              JOIN accommodation_room_types
                                ON accommodation_rooms.room_type = accommodation_room_types.id
                              LEFT JOIN accommodation_rooms_prices_periods price_periods
                                ON accommodation_rooms.room_type = price_periods.room
                              LEFT OUTER JOIN (
                                                SELECT booked_rooms.room AS room_id
                                                FROM
                                                  booked_rooms
                                                  JOIN booking ON booked_rooms.booking = booking.id
                                                WHERE
                                                  @startDate BETWEEN booking.arrival_date AND booking.departure_date
                                                  OR
                                                  @endDate BETWEEN booking.arrival_date AND booking.departure_date
                                              ) booked_rooms_for_date_range
                                ON accommodation_rooms.id = booked_rooms_for_date_range.room_id
                                   AND accommodation.state = @stateId
                              CROSS JOIN (

                                           SELECT MyDate AS Date
                                           FROM (
                                                  SELECT (@startDate +
                                                          INTERVAL (a.a + (10 * b.a) + (100 * c.a)) DAY) AS MyDate
                                                  FROM (SELECT 0 AS a
                                                        UNION ALL SELECT 1
                                                        UNION ALL SELECT 2
                                                        UNION ALL SELECT 3
                                                        UNION ALL SELECT 4
                                                        UNION ALL SELECT 5
                                                        UNION ALL SELECT 6
                                                        UNION ALL SELECT 7
                                                        UNION ALL SELECT 8
                                                        UNION ALL SELECT 9) AS a
                                                    CROSS JOIN (SELECT 0 AS a
                                                                UNION ALL SELECT 1
                                                                UNION ALL SELECT 2
                                                                UNION ALL SELECT 3
                                                                UNION ALL SELECT 4
                                                                UNION ALL SELECT 5
                                                                UNION ALL SELECT 6
                                                                UNION ALL SELECT 7
                                                                UNION ALL SELECT 8
                                                                UNION ALL SELECT 9) AS b
                                                    CROSS JOIN (SELECT 0 AS a
                                                                UNION ALL SELECT 1
                                                                UNION ALL SELECT 2
                                                                UNION ALL SELECT 3
                                                                UNION ALL SELECT 4
                                                                UNION ALL SELECT 5
                                                                UNION ALL SELECT 6
                                                                UNION ALL SELECT 7
                                                                UNION ALL SELECT 8
                                                                UNION ALL SELECT 9) AS c
                                                ) dt) dates ON dates.Date < @endDate


                            WHERE booked_rooms_for_date_range.room_id IS NULL
                                  AND dates.Date < price_end_date AND dates.Date >= price_start_date

                          ) rooms_by_date
                     GROUP BY room_id
                   ) free_rooms_or_types_for_period
              WHERE num_of_repeating_same_room_or_type = DATEDIFF(@endDate, @startDate)
            ) distinct_room_capacity
     ) requried_rooms_number

GROUP BY room_type_id
)t1

GROUP BY t1.accommodation_id
)able_to_accept
  LEFT JOIN accommodation_options_parking ON able_to_accept.accommodation_id = accommodation_options_parking.accommodation
  LEFT JOIN cb_vat_rates ON able_to_accept.state = cb_vat_rates.state
  LEFT JOIN accommodation_options_breakfast on accommodation_options_breakfast.accommodation = able_to_accept.accommodation_id
  LEFT JOIN accommodation_pets_policy ON able_to_accept.accommodation_id = accommodation_pets_policy.accommodation
  LEFT JOIN accommodation_options_internet ON able_to_accept.accommodation_id = accommodation_options_internet.accommodation
   LEFT JOIN cb_internet_connection_type on accommodation_options_internet.internet_connection_type = cb_internet_connection_type.id
  LEFT JOIN accommodation_cancellation_policy on able_to_accept.accommodation_id=accommodation_cancellation_policy.accommodation
  LEFT JOIN discount_quantity ON able_to_accept.accommodation_id = discount_quantity.accommodation
                              AND @startDate BETWEEN discount_quantity.price_start_date AND discount_quantity.price_end_date

WHERE accommodation_can_accept_all_persons=TRUE
GROUP BY able_to_accept.accommodation_id;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `booked_rooms_for_accommodation_in_date_range` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin2 */ ;
/*!50003 SET character_set_results = latin2 */ ;
/*!50003 SET collation_connection  = latin2_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `booked_rooms_for_accommodation_in_date_range`(in accommodationId LONG, in startDate DATE, in finish DATE)
BEGIN
SELECT id from accommodation_rooms WHERE id  in(
		  SELECT booked_rooms_table.roomId from(
			SELECT
			  booked_rooms.accommodation as accommId,room as roomId ,booking.arrival_date,booking.departure_date
			FROM booked_rooms
			JOIN
			  booking ON booked_rooms.booking = booking.id
			WHERE start BETWEEN arrival_date AND departure_date
			  OR finish BETWEEN arrival_date AND departure_date
		  ) booked_rooms_table
)
  AND
    accommodation = accommodationId order by id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `different_offers_by_accommodation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin2 */ ;
/*!50003 SET character_set_results = latin2 */ ;
/*!50003 SET collation_connection  = latin2_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `different_offers_by_accommodation`(
in accommodationId LONG,
in startDate DATE,
in endDate   DATE
)
BEGIN

SELECT 
t2.*,
cb_room_types.room_type,
cb_room_type_names.room_type_name ,
accommodation_room_type_pics.pic_text as room_type_pic
FROM
(
SELECT
  COUNT(1) as different_room_by_type,
  total_room_price_by_accommodation_in_date_range.*
FROM (


SELECT
  accommodation_id,
  room_id,
  room_type as room_type_id,
  total_price_for_this_room,
  initial_capacity,
  extrabeds_number,
  max_room_capacity,
  is_hotel_room

FROM (
       SELECT
         COUNT(1)           AS number_of_repeating_same_room,
         SUM(enduser_price) AS total_price_for_this_room,
         rooms_with_price_for_each_day_unfiltered.*
       FROM (
              SELECT
                dates_table.Date AS current_date_for_calculation,
                nonbooked_from_all_price_periods_in_date_range.*
              FROM (
                     SELECT
                       accommodation_rooms.id                                                  AS room_id,
                       accommodationId.id                                                        AS accommodation_id,
                       accommodationId.state                                                     AS state_id,
                       accommodation_rooms.room_type                                           AS room_type,
                       price_periods.enduser_price,
                       price_periods.price_start_date,
                       price_periods.price_end_date,
                       room_capacity                                                           AS initial_capacity,
                       accommodation_rooms.has_extrabeds *
                       accommodation_rooms.extrabeds_num                                       AS extrabeds_number,
                       accommodation_rooms.room_capacity + (accommodation_rooms.has_extrabeds *
                                                            accommodation_rooms.extrabeds_num) AS max_room_capacity,
                       accommodation_rooms.is_rentable                                         AS is_hotel_room
                     FROM
                       accommodation_rooms
                       LEFT JOIN accommodationId ON accommodation_rooms.accommodationId = accommodationId.id
                       LEFT JOIN accommodation_room_types room_types ON accommodation_rooms.room_type = room_types.id
                       LEFT JOIN accommodation_rooms_prices_periods price_periods
                         ON accommodation_rooms.room_type = price_periods.room
                       LEFT OUTER JOIN (
                                         SELECT id
                                         FROM accommodation_rooms
                                         WHERE id IN (
                                           SELECT booked_rooms_table.roomId
                                           FROM (
                                                  SELECT
                                                    booked_rooms.accommodationId AS accommId,
                                                    room                       AS roomId,
                                                    booking.arrival_date,
                                                    booking.departure_date
                                                  FROM booked_rooms
                                                    JOIN
                                                    booking ON booked_rooms.booking = booking.id
                                                  WHERE @start BETWEEN arrival_date AND departure_date
                                                        OR @finish BETWEEN arrival_date AND departure_date
                                                ) booked_rooms_table
                                         )
                                               AND
                                               accommodationId = accommodationId
                                         ORDER BY id
                                       ) booked_rooms_for_accommodation_in_date_range
                         ON
                           booked_rooms_for_accommodation_in_date_range.id = accommodation_rooms.id
                     WHERE
                       booked_rooms_for_accommodation_in_date_range.id IS NULL
                   ) nonbooked_from_all_price_periods_in_date_range
                CROSS JOIN (

                             SELECT MyDate AS Date
                             FROM (
                                    SELECT startDate + INTERVAL (a.a + (10 * b.a) + (100 * c.a)) DAY AS MyDate
                                    FROM (SELECT 0 AS a
                                          UNION ALL SELECT 1
                                          UNION ALL SELECT 2
                                          UNION ALL SELECT 3
                                          UNION ALL SELECT 4
                                          UNION ALL SELECT 5
                                          UNION ALL SELECT 6
                                          UNION ALL SELECT 7
                                          UNION ALL SELECT 8
                                          UNION ALL SELECT 9) AS a
                                      CROSS JOIN (SELECT 0 AS a
                                                  UNION ALL SELECT 1
                                                  UNION ALL SELECT 2
                                                  UNION ALL SELECT 3
                                                  UNION ALL SELECT 4
                                                  UNION ALL SELECT 5
                                                  UNION ALL SELECT 6
                                                  UNION ALL SELECT 7
                                                  UNION ALL SELECT 8
                                                  UNION ALL SELECT 9) AS b
                                      CROSS JOIN (SELECT 0 AS a
                                                  UNION ALL SELECT 1
                                                  UNION ALL SELECT 2
                                                  UNION ALL SELECT 3
                                                  UNION ALL SELECT 4
                                                  UNION ALL SELECT 5
                                                  UNION ALL SELECT 6
                                                  UNION ALL SELECT 7
                                                  UNION ALL SELECT 8
                                                  UNION ALL SELECT 9) AS c
                                  ) dt
                             WHERE dt.MyDate < endDate
                           ) dates_table

              WHERE Date < price_end_date AND Date >= price_start_date
                    AND
                    accommodation_id = accommodationId
            ) rooms_with_price_for_each_day_unfiltered
       GROUP BY room_id
     ) rooms_with_price_for_each_day_with_valid_price_period
WHERE
  number_of_repeating_same_room = DATEDIFF(endDate, startDate)
  )total_room_price_by_accommodation_in_date_range

GROUP BY room_type_id) t2
LEFT JOIN accommodation_room_types on accommodation_room_types.id = t2.room_type_id
LEFT JOIN cb_room_types on cb_room_types.id = accommodation_room_types.room_type
LEFT JOIN cb_room_type_names on cb_room_type_names.id = accommodation_room_types.room_name
LEFT JOIN accommodation_room_type_pics on accommodation_room_type_pics.room_type = room_type_id
   AND accommodation_room_type_pics.is_promo_pic = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_accommodations_by_city` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin2 */ ;
/*!50003 SET character_set_results = latin2 */ ;
/*!50003 SET collation_connection  = latin2_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_accommodations_by_city`(
	in cityId INTEGER,
	in startDate date,
	in endDate date,
  in adultsCount INTEGER,
  in childCount INTEGER,
  in roomsCount INTEGER,
  in pageIndex INTEGER,
  in pageSize INTEGER,
  in sortColumn VARCHAR(50),
  in sortDirection VARCHAR(10) 
)
BEGIN

SET @needed_beds_count = adultsCount + childCount; # 8
SET @persons_per_room = @needed_beds_count/roomsCount;

  SELECT
    t1.accommodation_id,
    t1.accommodation_name,
    t1.accommodation_promo_pic,
    t1.accommodation_rank,
    t1.accommodation_address,
    MIN(total_price_for_this_room)     AS cheapest_offer_for_accommodation,
    MAX(total_price_for_this_room)     AS most_expencive_offer_for_accommodation,
    COUNT(DISTINCT room_id)            AS total_different_rooms_for_accommodation,
    COUNT(DISTINCT room_type_id)       AS total_different_offers_for_accommodation,
    MIN(total_price_for_this_room) < 3 AS popular_accommodation,
    FLOOR(5 + (RAND() * 5))            AS user_rate_for_accommodation, # TODO: get this value from real data
    @needed_beds_count,
    total_beds_per_accommodation.is_special_request,
    total_beds_per_accommodation.total_beds_for_accommodation,
    total_beds_per_accommodation.accommodation_has_enough_beds,
    total_beds_per_accommodation.is_hotel_room

  FROM (
  SELECT
    accommodation_id,
    city_id,
    accommodation_name,
    accommodation_promo_pic,
    accommodation_rank,
    accommodation_address,
    accommodation_google_coords,
    room_id,
    room_type_id,
    /*price_per_stay,*/
    sum(price_per_stay) AS total_price_for_this_room,
    count(1)            AS something
  FROM (
         SELECT
           dates_table1.Date AS current_date_for_calculation,
           accommodation_id,
           city_id,
           accommodation_name,
           accommodation_promo_pic,
           accommodation_rank,
           accommodation_address,
           accommodation_google_coords,
           room_id,
           room_type_id,
           price_start_date,
           price_end_date,
           price_per_stay
         FROM (

                SELECT
                  accommodation.id               AS accommodation_id,
                  accommodation.city            AS city_id,
                  accommodation.name             AS accommodation_name,
                  accommodation.promo_pic        AS accommodation_promo_pic,
                  accommodation.rank             AS accommodation_rank,
                  accommodation.address          AS accommodation_address,
                  accommodation.googlemap_link   AS accommodation_google_coords,
                  accommodation_rooms.id         AS room_id,
                  price_periods.room             AS room_type_id,
                  price_periods.price_start_date AS price_start_date,
                  price_periods.price_end_date   AS price_end_date,
                  price_periods.enduser_price    AS price_per_stay
                FROM accommodation_rooms
                  LEFT JOIN accommodation ON accommodation_rooms.accommodation = accommodation.id
                  LEFT JOIN accommodation_room_types room_types ON accommodation_rooms.room_type = room_types.id
                  LEFT JOIN accommodation_rooms_prices_periods price_periods
                    ON accommodation_rooms.room_type = price_periods.room
                  LEFT OUTER JOIN (
                                    SELECT booked_rooms.room AS room_id
                                    FROM
                                      booked_rooms
                                      JOIN booking ON booked_rooms.booking = booking.id
                                    WHERE
                                      startDate BETWEEN booking.arrival_date AND booking.departure_date
                                      OR
                                      endDate BETWEEN booking.arrival_date AND booking.departure_date
                                  ) booked_rooms_for_interval_table
                    ON accommodation_rooms.id = booked_rooms_for_interval_table.room_id
                       AND
                       accommodation.city = cityId
                WHERE
                  booked_rooms_for_interval_table.room_id IS NULL
              ) all_rooms_with_prices_that_are_not_booked
           CROSS JOIN (

                        SELECT MyDate AS Date
                        FROM (
                               SELECT startDate + INTERVAL (a.a + (10 * b.a) + (100 * c.a)) DAY AS MyDate
                               FROM (SELECT 0 AS a
                                     UNION ALL SELECT 1
                                     UNION ALL SELECT 2
                                     UNION ALL SELECT 3
                                     UNION ALL SELECT 4
                                     UNION ALL SELECT 5
                                     UNION ALL SELECT 6
                                     UNION ALL SELECT 7
                                     UNION ALL SELECT 8
                                   UNION ALL SELECT 9) AS a
                                 CROSS JOIN (SELECT 0 AS a
                                             UNION ALL SELECT 1
                                             UNION ALL SELECT 2
                                             UNION ALL SELECT 3
                                             UNION ALL SELECT 4
                                             UNION ALL SELECT 5
                                             UNION ALL SELECT 6
                                             UNION ALL SELECT 7
                                             UNION ALL SELECT 8
                                             UNION ALL SELECT 9) AS b
                                 CROSS JOIN (SELECT 0 AS a
                                             UNION ALL SELECT 1
                                             UNION ALL SELECT 2
                                             UNION ALL SELECT 3
                                             UNION ALL SELECT 4
                                             UNION ALL SELECT 5
                                             UNION ALL SELECT 6
                                             UNION ALL SELECT 7
                                             UNION ALL SELECT 8
                                             UNION ALL SELECT 9) AS c
                             ) dt
                        WHERE dt.MyDate < endDate
                      ) dates_table1
         WHERE Date <= price_end_date AND Date >= price_start_date
       ) all_nonbooked_rooms_for_all_accommodations_with_price_for_date

  GROUP BY room_id
) t1
    JOIN (
SELECT
accommodation_id,
  is_hotel_room,
  is_special_request,
  SUM( max_rooms_capacity_for_rooms_of_type) as total_beds_for_accommodation,
  IF(SUM( max_rooms_capacity_for_rooms_of_type)>=@needed_beds_count ,TRUE ,FALSE)as accommodation_has_enough_beds
FROM (
SELECT
    accommodation_id,
    room_type,
    enduser_price,
    number_of_rooms_by_type,
    max_room_capacity,
    max_rooms_capacity_for_rooms_of_type,
    is_hotel_room,
    # price_for_all_rooms_of_type,
    CEIL(@needed_beds_count / max_room_capacity)                            AS required_rooms_of_type,
    if(prices_for_room_types_for_accommodations.max_rooms_capacity_for_rooms_of_type < @needed_beds_count,TRUE ,FALSE)               AS is_special_request,
    CEIL(@needed_beds_count / max_room_capacity) <= number_of_rooms_by_type AS people_can_use_this_room_type
FROM (
SELECT
           accommodation_id as accommodation_id,
           room_type as room_type,
           enduser_price as enduser_price,
           COUNT(room_id)         AS number_of_rooms_by_type,
           max_room_capacity,
           SUM(max_room_capacity) AS max_rooms_capacity_for_rooms_of_type,
           SUM(abt.enduser_price)     AS price_for_all_rooms_of_type,
           is_hotel_room
         FROM (
              SELECT *
              FROM (
SELECT
                  accommodation_rooms.id                                                  AS room_id,
                  accommodation.id                                                        AS accommodation_id,
                  accommodation.city                                                     AS city_id,
                  accommodation_rooms.room_type                                           AS room_type,
                  price_periods.enduser_price,
                  room_capacity                                                           AS initial_capacity,
                  accommodation_rooms.has_extrabeds *
                  accommodation_rooms.extrabeds_num                                       AS extrabeds_number,
                  accommodation_rooms.room_capacity + (accommodation_rooms.has_extrabeds *
                                                       accommodation_rooms.extrabeds_num) AS max_room_capacity,
                  accommodation_rooms.is_rentable                                         AS is_hotel_room
                FROM
                  accommodation_rooms
                  LEFT JOIN accommodation ON accommodation_rooms.accommodation = accommodation.id
                  LEFT JOIN accommodation_room_types room_types ON accommodation_rooms.room_type = room_types.id
                  LEFT JOIN accommodation_rooms_prices_periods price_periods
                    ON accommodation_rooms.room_type = price_periods.room
                  LEFT OUTER JOIN (
                                    SELECT booked_rooms.room AS room_id
                                    FROM
                                      booked_rooms
                                      JOIN booking ON booked_rooms.booking = booking.id
                                    WHERE
                                      startDate BETWEEN booking.arrival_date AND booking.departure_date
                                      OR
                                      endDate BETWEEN booking.arrival_date AND booking.departure_date
                                  ) br on room_id=accommodation_rooms.id
                  WHERE room_id is null
)accommodation_max_beds_table) abt
              GROUP BY room_type, accommodation_id,enduser_price
)prices_for_room_types_for_accommodations
)calculations_for_accommodations
GROUP BY accommodation_id
) total_beds_per_accommodation ON total_beds_per_accommodation.accommodation_id = t1.accommodation_id
  WHERE accommodation_has_enough_beds = 1 AND something = ABS(DATEDIFF(startDate , endDate))
  GROUP BY t1.accommodation_id
  ORDER BY cheapest_offer_for_accommodation ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_accommodations_by_state` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin2 */ ;
/*!50003 SET character_set_results = latin2 */ ;
/*!50003 SET collation_connection  = latin2_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_accommodations_by_state`(
	in stateId INTEGER,
	in startDate date,
	in endDate date,
  in adultsCount INTEGER,
  in childCount INTEGER,
  in roomsCount INTEGER,
  in pageIndex INTEGER,
  in pageSize INTEGER,
  in sortColumn VARCHAR(50),
  in sortDirection VARCHAR(10)
)
BEGIN

SET @needed_beds_count = adultsCount + childCount; # 8
SET @persons_per_room = @needed_beds_count/roomsCount;

  SELECT
    t1.accommodation_id,
    t1.accommodation_name,
    t1.accommodation_promo_pic,
    t1.accommodation_rank,
    t1.accommodation_address,
    t1.accommodation_google_coords 		as  googleCoordsString,
    MIN(total_price_for_this_room)     AS cheapest_offer_for_accommodation,
    MAX(total_price_for_this_room)     AS most_expencive_offer_for_accommodation,
    COUNT(DISTINCT room_id)            AS total_different_rooms_for_accommodation,
    COUNT(DISTINCT room_type_id)       AS total_different_offers_for_accommodation,
    MIN(total_price_for_this_room) < 3 AS popular_accommodation,
    FLOOR(5 + (RAND() * 5))            AS user_rate_for_accommodation, # TODO: get this value from real data
    @needed_beds_count,
    total_beds_per_accommodation.is_special_request,
    total_beds_per_accommodation.total_beds_for_accommodation,
    total_beds_per_accommodation.accommodation_has_enough_beds,
    total_beds_per_accommodation.is_hotel_room

  FROM (
  SELECT
    accommodation_id,
    state_id,
    accommodation_name,
    accommodation_promo_pic,
    accommodation_rank,
    accommodation_address,
    accommodation_google_coords,
    room_id,
    room_type_id,
    /*price_per_stay,*/
    sum(price_per_stay) AS total_price_for_this_room,
    count(1)            AS something
  FROM (
         SELECT
           dates_table1.Date AS current_date_for_calculation,
           accommodation_id,
           state_id,
           accommodation_name,
           accommodation_promo_pic,
           accommodation_rank,
           accommodation_address,
           accommodation_google_coords,
           room_id,
           room_type_id,
           price_start_date,
           price_end_date,
           price_per_stay
         FROM (

                SELECT
                  accommodation.id               AS accommodation_id,
                  accommodation.state            AS state_id,
                  accommodation.name             AS accommodation_name,
                  accommodation.promo_pic        AS accommodation_promo_pic,
                  accommodation.rank             AS accommodation_rank,
                  accommodation.address          AS accommodation_address,
                  accommodation.googlemap_link   AS accommodation_google_coords,
                  accommodation_rooms.id         AS room_id,
                  price_periods.room             AS room_type_id,
                  price_periods.price_start_date AS price_start_date,
                  price_periods.price_end_date   AS price_end_date,
                  price_periods.enduser_price    AS price_per_stay
                FROM accommodation_rooms
                  LEFT JOIN accommodation ON accommodation_rooms.accommodation = accommodation.id
                  LEFT JOIN accommodation_room_types room_types ON accommodation_rooms.room_type = room_types.id
                  LEFT JOIN accommodation_rooms_prices_periods price_periods
                    ON accommodation_rooms.room_type = price_periods.room
                  LEFT OUTER JOIN (
                                    SELECT booked_rooms.room AS room_id
                                    FROM
                                      booked_rooms
                                      JOIN booking ON booked_rooms.booking = booking.id
                                    WHERE
                                      startDate BETWEEN booking.arrival_date AND booking.departure_date
                                      OR
                                      endDate BETWEEN booking.arrival_date AND booking.departure_date
                                  ) booked_rooms_for_interval_table
                    ON accommodation_rooms.id = booked_rooms_for_interval_table.room_id
                       AND
                       accommodation.state = stateId
                WHERE
                  booked_rooms_for_interval_table.room_id IS NULL
              ) all_rooms_with_prices_that_are_not_booked
           CROSS JOIN (

                        SELECT MyDate AS Date
                        FROM (
                               SELECT startDate + INTERVAL (a.a + (10 * b.a) + (100 * c.a)) DAY AS MyDate
                               FROM (SELECT 0 AS a
                                     UNION ALL SELECT 1
                                     UNION ALL SELECT 2
                                     UNION ALL SELECT 3
                                     UNION ALL SELECT 4
                                     UNION ALL SELECT 5
                                     UNION ALL SELECT 6
                                     UNION ALL SELECT 7
                                     UNION ALL SELECT 8
                                     UNION ALL SELECT 9) AS a
                                 CROSS JOIN (SELECT 0 AS a
                                             UNION ALL SELECT 1
                                             UNION ALL SELECT 2
                                             UNION ALL SELECT 3
                                             UNION ALL SELECT 4
                                             UNION ALL SELECT 5
                                             UNION ALL SELECT 6
                                             UNION ALL SELECT 7
                                             UNION ALL SELECT 8
                                             UNION ALL SELECT 9) AS b
                                 CROSS JOIN (SELECT 0 AS a
                                             UNION ALL SELECT 1
                                             UNION ALL SELECT 2
                                             UNION ALL SELECT 3
                                             UNION ALL SELECT 4
                                             UNION ALL SELECT 5
                                             UNION ALL SELECT 6
                                             UNION ALL SELECT 7
                                             UNION ALL SELECT 8
                                             UNION ALL SELECT 9) AS c
                             ) dt
                        WHERE dt.MyDate < endDate
                      ) dates_table1
         WHERE Date <= price_end_date AND Date >= price_start_date
       ) all_nonbooked_rooms_for_all_accommodations_with_price_for_date

  GROUP BY room_id
) t1
    JOIN (
SELECT
accommodation_id,
  is_hotel_room,
  is_special_request,
  SUM( max_rooms_capacity_for_rooms_of_type) as total_beds_for_accommodation,
  IF(SUM( max_rooms_capacity_for_rooms_of_type)>=@needed_beds_count ,TRUE ,FALSE)as accommodation_has_enough_beds
FROM (
SELECT
    accommodation_id,
    room_type,
    enduser_price,
    number_of_rooms_by_type,
    max_room_capacity,
    max_rooms_capacity_for_rooms_of_type,
    is_hotel_room,
    # price_for_all_rooms_of_type,
    CEIL(@needed_beds_count / max_room_capacity)                            AS required_rooms_of_type,
    if(prices_for_room_types_for_accommodations.max_rooms_capacity_for_rooms_of_type < @needed_beds_count,TRUE ,FALSE)               AS is_special_request,
    CEIL(@needed_beds_count / max_room_capacity) <= number_of_rooms_by_type AS people_can_use_this_room_type
FROM (
SELECT
           accommodation_id as accommodation_id,
           room_type as room_type,
           enduser_price as enduser_price,
           COUNT(room_id)         AS number_of_rooms_by_type,
           max_room_capacity,
           SUM(max_room_capacity) AS max_rooms_capacity_for_rooms_of_type,
           SUM(abt.enduser_price)     AS price_for_all_rooms_of_type,
           is_hotel_room
         FROM (
              SELECT *
              FROM (
SELECT
                  accommodation_rooms.id                                                  AS room_id,
                  accommodation.id                                                        AS accommodation_id,
                  accommodation.state                                                     AS state_id,
                  accommodation_rooms.room_type                                           AS room_type,
                  price_periods.enduser_price,
                  room_capacity                                                           AS initial_capacity,
                  accommodation_rooms.has_extrabeds *
                  accommodation_rooms.extrabeds_num                                       AS extrabeds_number,
                  accommodation_rooms.room_capacity + (accommodation_rooms.has_extrabeds *
                                                       accommodation_rooms.extrabeds_num) AS max_room_capacity,
                  accommodation_rooms.is_rentable                                         AS is_hotel_room
                FROM
                  accommodation_rooms
                  LEFT JOIN accommodation ON accommodation_rooms.accommodation = accommodation.id
                  LEFT JOIN accommodation_room_types room_types ON accommodation_rooms.room_type = room_types.id
                  LEFT JOIN accommodation_rooms_prices_periods price_periods
                    ON accommodation_rooms.room_type = price_periods.room
                  LEFT OUTER JOIN (
                                    SELECT booked_rooms.room AS room_id
                                    FROM
                                      booked_rooms
                                      JOIN booking ON booked_rooms.booking = booking.id
                                    WHERE
                                      startDate BETWEEN booking.arrival_date AND booking.departure_date
                                      OR
                                      endDate BETWEEN booking.arrival_date AND booking.departure_date
                                  ) br on room_id=accommodation_rooms.id
                  WHERE room_id is null
)accommodation_max_beds_table) abt
              GROUP BY room_type, accommodation_id,enduser_price
)prices_for_room_types_for_accommodations
)calculations_for_accommodations
GROUP BY accommodation_id
) total_beds_per_accommodation ON total_beds_per_accommodation.accommodation_id = t1.accommodation_id
  WHERE accommodation_has_enough_beds = 1 AND something = ABS(DATEDIFF(startDate , endDate))
  GROUP BY t1.accommodation_id
  ORDER BY cheapest_offer_for_accommodation ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `room_price_for_accommodation_free_rooms_by_date_in_date_range` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin2 */ ;
/*!50003 SET character_set_results = latin2 */ ;
/*!50003 SET collation_connection  = latin2_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `room_price_for_accommodation_free_rooms_by_date_in_date_range`(
	in accommodationId LONG,
    in startDate DATE,
    in endDate DATE
)
BEGIN
SELECT
                dates_table.Date AS current_date_for_calculation,
                non_booked_rooms_for_accommodation_in_dates_range.*
              FROM
                (SELECT
                   accommodation_rooms.id                                                  AS room_id,
                   accommodation.id                                                        AS accommodation_id,
                   accommodation.state                                                     AS state_id,
                   accommodation_rooms.room_type                                           AS room_type,
                   price_periods.enduser_price,
                   price_periods.price_start_date,
                   price_periods.price_end_date,
                   room_capacity                                                           AS initial_capacity,
                   accommodation_rooms.has_extrabeds *
                   accommodation_rooms.extrabeds_num                                       AS extrabeds_number,
                   accommodation_rooms.room_capacity + (accommodation_rooms.has_extrabeds *
                                                        accommodation_rooms.extrabeds_num) AS max_room_capacity,
                   accommodation_rooms.is_rentable                                         AS is_hotel_room
                 FROM
                   accommodation_rooms
                   LEFT JOIN accommodation ON accommodation_rooms.accommodation = accommodation.id
                   LEFT JOIN accommodation_room_types room_types ON accommodation_rooms.room_type = room_types.id
                   LEFT JOIN accommodation_rooms_prices_periods price_periods
                     ON accommodation_rooms.room_type = price_periods.room
                   LEFT OUTER JOIN (
                                     SELECT id
                                     FROM accommodation_rooms
                                     WHERE id IN (
                                       SELECT booked_rooms_table.roomId
                                       FROM (
                                              SELECT
                                                booked_rooms.accommodation AS accommId,
                                                room                       AS roomId,
                                                booking.arrival_date,
                                                booking.departure_date
                                              FROM booked_rooms
                                                JOIN
                                                booking ON booked_rooms.booking = booking.id
                                              WHERE startDate BETWEEN arrival_date AND departure_date
												 OR endDate BETWEEN arrival_date AND departure_date
                                            ) booked_rooms_table
                                     )
                                           AND
                                           accommodation = accommodationID
                                     ORDER BY id) booked_rooms_for_accommodation_in_date_range
                     ON booked_rooms_for_accommodation_in_date_range.id = accommodation_rooms.id
                 WHERE booked_rooms_for_accommodation_in_date_range.id IS NULL AND
                       accommodation.id = accommodationId) non_booked_rooms_for_accommodation_in_dates_range
                CROSS JOIN (

                             SELECT MyDate AS Date
                             FROM (
                                    SELECT startDate + INTERVAL (a.a + (10 * b.a) + (100 * c.a)) DAY AS MyDate
                                    FROM (SELECT 0 AS a
                                          UNION ALL SELECT 1
                                          UNION ALL SELECT 2
                                          UNION ALL SELECT 3
                                          UNION ALL SELECT 4
                                          UNION ALL SELECT 5
                                          UNION ALL SELECT 6
                                          UNION ALL SELECT 7
                                          UNION ALL SELECT 8
                                          UNION ALL SELECT 9) AS a
                                      CROSS JOIN (SELECT 0 AS a
                                                  UNION ALL SELECT 1
                                                  UNION ALL SELECT 2
                                                  UNION ALL SELECT 3
                                                  UNION ALL SELECT 4
                                                  UNION ALL SELECT 5
                                                  UNION ALL SELECT 6
                                                  UNION ALL SELECT 7
                                                  UNION ALL SELECT 8
                                                  UNION ALL SELECT 9) AS b
                                      CROSS JOIN (SELECT 0 AS a
                                                  UNION ALL SELECT 1
                                                  UNION ALL SELECT 2
                                                  UNION ALL SELECT 3
                                                  UNION ALL SELECT 4
                                                  UNION ALL SELECT 5
                                                  UNION ALL SELECT 6
                                                  UNION ALL SELECT 7
                                                  UNION ALL SELECT 8
                                                  UNION ALL SELECT 9) AS c
                                  ) dt
                             WHERE dt.MyDate < endDate
                           ) dates_table

              WHERE Date < price_end_date AND Date >= price_start_date;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `search` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `search`(
in category int,
in paramId int,
in startDate date,
in endDate date
)
BEGIN
SET @category = category;
SET @paramId = paramId;
SET @startDate = startDate;
SET @endDate = endDate;

SELECT 
    a.id,
    a.rent_type,
    a.account,
    a.accommodation_type,
    a.accommodation_promo_pic,
    a.accommodation_pics,
    a.name,
    a.rank,
    a.state,
    a.zip,
    a.city,
    a.location,
    a.address,
    a.googlemap_link,
    a.checkin_start,
    a.checkin_end,
    a.checkout_start,
    a.checkout_end,
    a.user_rating,
    a.staff_languages,
    a.accepted_cards,
    a.pets_policy,
    a.options_payment_types,
    a.options_activities,
    a.options_breakfast,
    a.options_business_facilities,
    a.options_cleaning_services,
    a.options_common_areas,
    a.options_entertainment,
    a.options_food_drink,
    a.options_frontdesk_services,
    a.options_miscellaneous,
    a.options_pool_spa,
    a.options_transportation,
    a.options_shops,
    a.options_internet,
    a.options_parking,
    a.surroundings,
    a.accommodation_bathrooms,
    a.accommodation_bedrooms,
    a.accommodation_lvingrooms,
    a.balkan_region,
    a.custom_id,
    a.date_created,
    a.description,
    a.email,
    a.important_information,
    a.is_active,
    a.phone,
    a.rooms_total,
    a.web,
    GROUP_CONCAT(a.room_type_id,
        ',',
        a.room_type,
        ',',
        a.room_name,
        ',',
        (a.rooms_num - IFNULL(b.rooms_booked, 0)),
        ',',
        a.size,
        ',',
        a.room_capacity,
        ',',
        a.accommodation_promo_pic,
        ',',
        a.room_pics,
        ',',
        IFNULL(a.options_amenities, ''),
        ',',
        IFNULL(a.options_outdoor_views, ''),
        ',',
        IFNULL(a.options_food_drinks, '')
        SEPARATOR '`') AS room_type
FROM
    (SELECT 
        ac.id,
            ac.accommodation_type,
            ac.rent_type,
            ac.account,
            ac.name,
            ac.accommodation_promo_pic,
            ac.state,
            ac.zip,
            ac.city,
            ac.location,
            ac.address,
            ac.rank,
            ac.googlemap_link,
            ac.checkin_start,
            ac.checkin_end,
            ac.checkout_start,
            ac.checkout_end,
            ac.user_rating,
            ac.staff_languages,
            ac.accepted_cards,
            ac.pets_policy,
            ac.options_payment_types,
            ac.options_activities,
            ac.options_breakfast,
            ac.options_business_facilities,
            ac.options_cleaning_services,
            ac.options_common_areas,
            ac.options_entertainment,
            ac.options_food_drink,
            ac.options_frontdesk_services,
            ac.options_miscellaneous,
            ac.options_pool_spa,
            ac.options_transportation,
            ac.options_shops,
            ac.options_internet,
            ac.options_parking,
            ac.surroundings,
            ac.accommodation_pics,
            ar.room_type AS room_type_id,
            ac.accommodation_bathrooms,
            ac.accommodation_bedrooms,
            ac.accommodation_lvingrooms,
            ac.balkan_region,
            ac.custom_id,
            ac.date_created,
            ac.description,
            ac.email,
            ac.important_information,
            ac.is_active,
            ac.phone,
            ac.rooms_total,
            ac.web,
            rt.room_type,
            rt.room_name,
            COUNT(*) AS rooms_num,
            rt.description AS descript,
            rt.size,
            rt.room_capacity,
            rt.options_amenities,
            rt.options_outdoor_views,
            rt.options_food_drinks,
            rt.options_media_tech,
            rt.room_services,
            rt.room_choices,
            rt.promo_pic,
            rt.room_pics
    FROM
        accommodation_rooms AS ar, accommodation AS ac, accommodation_room_types AS rt
    WHERE
		CASE
			WHEN @category = 1 THEN
				ac.state = (SELECT cbl.state FROM cb_locations cbl WHERE cbl.id = @paramId)
				
			WHEN @category = 2 THEN
					ac.city = (SELECT cbl.city FROM cb_locations cbl WHERE cbl.id = @paramId)
			WHEN @category = 3 THEN 
						ar.accommodation = @paramId AND ac.id = @paramId
		END
            AND ac.id = rt.accommodation
            AND rt.id = ar.room_type
    GROUP BY ar.accommodation , ar.room_type) a
        LEFT JOIN
    (SELECT 
        bc.accommodation, bc.room_type, COUNT(*) AS rooms_booked
    FROM
        booking_calendar AS bc
    WHERE
        @startDate BETWEEN bc.check_in AND bc.check_out
            OR @endDate BETWEEN bc.check_in AND bc.check_out
            OR bc.check_in >= @startDate
            AND @endDate >= bc.check_out
    GROUP BY bc.accommodation , bc.room_type) b ON a.id = b.accommodation
        AND a.room_type_id = b.room_type
GROUP BY id; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `top_5_by_state` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `top_5_by_state`()
BEGIN
select acc.id, acc.name, acc.state, acc.rank, acc.user_rating, ROUND(acc.user_rating*10+acc.rank*10) as points,acc.accommodation_promo_pic,cbl.state
from accommodation acc
   JOIN cb_locations cbl ON acc.state = cbl.state
where (
   select count(*) from accommodation as f
   where f.state = acc.state and (f.user_rating * 10 + f.rank * 10  )> (acc.user_rating*10+acc.rank*10)

) < 5 ORDER BY acc.state, points DESC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `total_price_for_room_by_accommodation_in_date_range` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin2 */ ;
/*!50003 SET character_set_results = latin2 */ ;
/*!50003 SET collation_connection  = latin2_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `total_price_for_room_by_accommodation_in_date_range`(
in accommodationId LONG,
in startDate DATE,
in endDate   DATE
)
BEGIN
SELECT
  id,
  accommodation,
  room_type,
  room_no,
  room_name,
  room_short_name,
  room_custom_name,
  room_description,
  room_notes,
  room_size,
  room_capacity,
  bedrooms_num,
  livingrooms_num,
  bathrooms_num,
  booked,
  entrant_price,
  entrant_vat,
  commision,
  custom_id,
  has_extrabeds,
  extrabeds_num,
  floor_no,
  room_x,
  room_y,
  vat_free,
  vat_base,
  vat,
  tax,
  enduser_price,
  is_rentable

FROM (
         SELECT
           COUNT(1)           AS number_of_repeating_same_room,
           SUM(enduser_price_per_night) AS enduser_price,
           rooms_with_price_for_each_day_unfiltered.*
         FROM (
                SELECT
                  dates_table.Date AS current_date_for_calculation,
                  nonbooked_from_all_price_periods_in_date_range.*
                FROM (
                       SELECT
                       accommodation_rooms.id,
                       accommodation_rooms.accommodation,
                       accommodation_rooms.room_type,
                       accommodation_rooms.room_no,
                       accommodation_rooms.room_name,
                       # changed accommodation_rooms.room_short_name,
                       common_room_type_names.room_type                     as room_short_name,
                       room_type_names.room_type_name    as room_custom_name,
                       accommodation_rooms.room_description,
                       accommodation_rooms.room_notes,
                       accommodation_rooms.room_size,
                       accommodation_rooms.room_capacity,
                       accommodation_rooms.bedrooms_num,
                       accommodation_rooms.livingrooms_num,
                       accommodation_rooms.bathrooms_num,
                       accommodation_rooms.has_extrabeds,
                       accommodation_rooms.extrabeds_num,
                       accommodation_rooms.floor_no,
                       accommodation_rooms.room_x,
                       accommodation_rooms.room_y,
                       accommodation_rooms.booked,
                       price_periods.entrant_price,
                       price_periods.entrant_vat,
                       price_periods.commision,
                       # changed accommodation_rooms.custom_id,
					   room_type_pics.pic_text                            as custom_id,
                       price_periods.vat_free,
                       price_periods.vat_base,
                       price_periods.vat,
                       price_periods.tax,
                       price_periods.enduser_price AS enduser_price_per_night,
                       price_periods.price_end_date,
                       price_periods.price_start_date,
                       accommodation_rooms.is_rentable

                     FROM
                         accommodation_rooms
                         LEFT JOIN accommodation ON accommodation_rooms.accommodation = accommodation.id
                         LEFT JOIN accommodation_room_types room_types ON accommodation_rooms.room_type = room_types.id
                         LEFT JOIN accommodation_rooms_prices_periods price_periods
                           ON accommodation_rooms.room_type = price_periods.room
                         LEFT JOIN cb_room_type_names room_type_names ON room_types.room_name = room_type_names.id
						LEFT JOIN cb_room_types common_room_type_names ON common_room_type_names.id = room_types.room_type
                      LEFT JOIN accommodation_room_type_pics room_type_pics ON room_type_pics.room_type = room_types.id
                                                                               AND
																			room_type_pics.is_promo_pic>0
                         
                         LEFT OUTER JOIN (
                                           SELECT id
                                           FROM accommodation_rooms
                                           WHERE id IN (
                                             SELECT booked_rooms_table.roomId
                                             FROM (
                                                    SELECT
                                                      booked_rooms.accommodation AS accommId,
                                                      room                       AS roomId,
                                                      booking.arrival_date,
                                                      booking.departure_date
                                                    FROM booked_rooms
                                                      JOIN
                                                      booking ON booked_rooms.booking = booking.id
                                                    WHERE startDate BETWEEN arrival_date AND departure_date
                                                          OR endDate BETWEEN arrival_date AND departure_date
                                                  ) booked_rooms_table
                                           )
                                                 AND
                                                 accommodation = accommodationId
                                           ORDER BY id
                                         ) booked_rooms_for_accommodation_in_date_range
                           ON
                             booked_rooms_for_accommodation_in_date_range.id = accommodation_rooms.id
                       WHERE
                         booked_rooms_for_accommodation_in_date_range.id IS NULL
                     ) nonbooked_from_all_price_periods_in_date_range
                  CROSS JOIN (

                               SELECT MyDate AS Date
                               FROM (
                                      SELECT startDate + INTERVAL (a.a + (10 * b.a) + (100 * c.a)) DAY AS MyDate
                                      FROM (SELECT 0 AS a
                                            UNION ALL SELECT 1
                                            UNION ALL SELECT 2
                                            UNION ALL SELECT 3
                                            UNION ALL SELECT 4
                                            UNION ALL SELECT 5
                                            UNION ALL SELECT 6
                                            UNION ALL SELECT 7
                                            UNION ALL SELECT 8
                                            UNION ALL SELECT 9) AS a
                                        CROSS JOIN (SELECT 0 AS a
                                                    UNION ALL SELECT 1
                                                    UNION ALL SELECT 2
                                                    UNION ALL SELECT 3
                                                    UNION ALL SELECT 4
                                                    UNION ALL SELECT 5
                                                    UNION ALL SELECT 6
                                                    UNION ALL SELECT 7
                                                    UNION ALL SELECT 8
                                                    UNION ALL SELECT 9) AS b
                                        CROSS JOIN (SELECT 0 AS a
                                                    UNION ALL SELECT 1
                                                    UNION ALL SELECT 2
                                                    UNION ALL SELECT 3
                                                    UNION ALL SELECT 4
                                                    UNION ALL SELECT 5
                                                    UNION ALL SELECT 6
                                                    UNION ALL SELECT 7
                                                    UNION ALL SELECT 8
                                                    UNION ALL SELECT 9) AS c
                                    ) dt
                               WHERE dt.MyDate < endDate
                             ) dates_table

                WHERE Date < price_end_date AND Date >= price_start_date
                      AND
                      accommodation = accommodationId
              ) rooms_with_price_for_each_day_unfiltered
         GROUP BY id
       ) rooms_with_price_for_each_day_in_valid_price_period
 WHERE
    number_of_repeating_same_room = DATEDIFF(endDate, startDate)
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-18 13:08:05
