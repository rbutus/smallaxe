-- MySQL dump 10.17  Distrib 10.3.22-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: strapi
-- ------------------------------------------------------
-- Server version	10.3.22-MariaDB-1ubuntu1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `menu_weekday_breakfast_items`
--

DROP TABLE IF EXISTS `menu_weekday_breakfast_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_weekday_breakfast_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_weekday_breakfast_items`
--

LOCK TABLES `menu_weekday_breakfast_items` WRITE;
/*!40000 ALTER TABLE `menu_weekday_breakfast_items` DISABLE KEYS */;
INSERT INTO `menu_weekday_breakfast_items` VALUES (1,'UTAH! Get me 2!','Our 2 Egg Breakfast with Potato n’ Yam Home Fries and Fresh Tomato\n*Choice of Bacon, Sausage or Avocado\n*Choice of Multigrain or Sourdough Toast             \n(Sub Gluten Free Toast for $1)\n',NULL,'$9.75',2,2,'2020-10-10 22:37:11','2020-10-10 22:37:11'),(2,'B.E.L.T. Me Up, Buttercup!','Egg, Smoked Cheddar, Garlic Aioli, Tomato & Lettuce in an Everything Bagel\n*Choice of Sausage, Bacon, or Avocado              (Sub Gluten-Free Bun for $1)                                     (Sub Vegan Cheese & Vegan Garlic Aioli for $1)\n',NULL,'$6 | +$3 with Hash',2,2,'2020-10-10 22:39:48','2020-10-10 22:39:48'),(3,'Fre Shavaca Do Toast','Avocado Toast with Grilled Red Pepper & Onion, Spinach, Feta, Hemp Seeds, & Strawberry Fig Balsamic Reduction on Sourdough                                                         (Sub Vegan Cheese for $1)                                                               (Sub Gluten Free Toast for $.5)',NULL,'$6 | +$3 with Hash',2,2,'2020-10-10 22:43:19','2020-10-10 22:43:19'),(4,'B&E Burger','Bacon, Over Easy Egg, Caramelized Onions, American Cheese, Garlic Aioli, 6oz. House Made Beef Patty, Lettuce, Tomato, & Onion.                                                                                                                                                     So Good, It’s Almost a Criminal Offence.... (Insert Eye Roll Here)\n*Choice of Salad, Fries, or Slaw',NULL,'$16.5',2,2,'2020-10-10 22:45:03','2020-10-10 22:45:03'),(5,'Hot Tub Time Poutine','Poutine is for any time and all times, including breakfast!                                                                                                          House Cut Kennebec Fries, Quebec Cheese Curds, Country Sausage Gravy, Bacon, Over Easy Egg, & Chipotle Aioli Drizzle',NULL,'$10',2,2,'2020-10-10 22:46:34','2020-10-10 22:46:34'),(6,'The Mother Clucker','Fried Chicken, Poached Egg, Peppered Bacon Bits, Maple Syrup Drizzle, & Country Sausage Gravy on Cornbread\n*Served with Potato Latkes, Garlic Aioli, & Salad\n',NULL,'$15',2,2,'2020-10-10 22:47:33','2020-10-10 22:47:49'),(7,'If Natalie Portman Were A Benny...','Rice, Lentil, & Bean Cake, Avocado, Fresh Tomato, Roasted Corn Salsa, Pickled Red Onion, & Vegan Garlic Aioli Sauce on an English Muffin.                                                            Served with Potato n’ Yam Home Fries, & Salad',NULL,'Half Order $10.5 | Full Order $14',2,2,'2020-10-10 22:49:11','2020-10-10 22:49:11'),(8,'Mickey & Mallory Bowls','(“Cereal” Killers, Get It?)                                 \nRaisin Bran, Fruit Loops, Corn Pops, Cheerios\n*Choice of Whole Milk or Oat Milk\n',NULL,'$3.5',2,2,'2020-10-10 22:50:11','2020-10-10 22:50:11'),(9,'Granola','House Made Granola with Honey, Nuts, & Sun Dried Fruits\n*Choice of Whole Milk or Oat Milk\n',NULL,'$4',2,2,'2020-10-10 22:51:02','2020-10-10 22:52:44'),(10,'Hot Oatmeal','Choice of Apple Cinnamon or Maple Raisin\n*Served with Brown Sugar and Whole Milk or Oat Milk',NULL,'$3',2,2,'2020-10-10 22:52:34','2020-10-10 22:52:34');
/*!40000 ALTER TABLE `menu_weekday_breakfast_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_weekend_breakfast_items`
--

DROP TABLE IF EXISTS `menu_weekend_breakfast_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_weekend_breakfast_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_weekend_breakfast_items`
--

LOCK TABLES `menu_weekend_breakfast_items` WRITE;
/*!40000 ALTER TABLE `menu_weekend_breakfast_items` DISABLE KEYS */;
INSERT INTO `menu_weekend_breakfast_items` VALUES (1,'The Bernie Mac','Weekend At Benny\'s!','Bacon, Poached Egg, Fresh Tomato, \nCrispy Jalapeños, & Hollandaise on\nDeep Fried Mac & Cheese Patties\n(Sub Veggie Bacon for $1)','Half Order $10.5 | Full Order $14',2,2,'2020-10-10 22:10:58','2020-10-10 22:10:58'),(2,'Benny Crabitz','Weekend At Benny\'s!','House Crab Cake, Poached Egg, Fried Capers, Fresh Dill, Lemon Zest, & Hollandaise on an English Muffin \n(Sorry, No Half Orders Available at this Time)\n','$14',2,2,'2020-10-10 22:12:28','2020-10-10 22:12:53'),(3,'PP For My Corn(Holio)Bread','Weekend At Benny\'s!','House Smoked Pork, Poached Egg, Maple Bourbon BBQ, Grilled Red Peppers, Chipotle Aioli Drizzle, Green Onions, & Hollandaise on Cornbread\n(Sub Pulled Jackfruit to Make It Vegetarian)\n\n','Half Order $10.5 | Full Order $14',2,2,'2020-10-10 22:15:24','2020-10-10 22:15:24'),(4,'The Mother Clucker','Weekend At Benny\'s!','Fried Chicken, Poached Egg, Peppered Bacon Bits, Maple Syrup Drizzle, & Country Gravy on Cornbread\n','Half Order $10.5 | Full Order $14',2,2,'2020-10-10 22:16:36','2020-10-10 22:16:36'),(5,'If Natalie Portman Were A Benny...','Weekend At Benny\'s!','(Vegan)\nRice, Lentil & Bean Cake, Avocado, Tomato, Roasted Corn Salsa, Pickled Red Onion, & Vegan Garlic Aioli Drizzle on an English Muffin.\n','Half Order $10.5 | Full Order $14',2,2,'2020-10-10 22:19:14','2020-10-10 22:19:14'),(6,'Spiked Coffee','Brunch Drinks','(1 oz.)\nFresh Brewed Shuswap Coffee Company Drip with Bailey\'s, Amaretto, Kahlua, Frangelico, Jameson, or Creme de Menthe','$4.75',2,2,'2020-10-10 22:20:46','2020-10-10 22:20:46'),(7,'Screwdrivers','Brunch Drinks','Orange Juice with Vodka','1oz. $5.25 | 2oz. $7.25',2,2,'2020-10-10 22:21:39','2020-10-10 22:21:40'),(8,'Double Caesars','Brunch Drinks','Classic Caesar Served with House Pickled Vegetables','$9',2,2,'2020-10-10 22:22:18','2020-10-10 22:22:19'),(9,'The Dude','Brunch Drinks','(1.5 oz.)\nA White Russian with a Caffeinated Kick! Iced Coffee, Vodka, Kahlua, and Dairy Free Cream','$7.5',2,2,'2020-10-10 22:23:21','2020-10-10 22:23:21'),(10,'The Axe Burger','Burgers She Wrote','Bacon, Smoked Cheddar, Garlic Aioli, Lettuce, Tomato, Onion, & Pickles','$16',2,2,'2020-10-10 22:25:09','2020-10-10 22:29:16'),(11,'Canadian \"EH\"','Burgers She Wrote','Poutine Burger, Quebec Cheese Curds, Fries, House Gravy, Onions, and  Garlic Aioli on a Brioche Bun\n(Vegan Option Available)\n','$16',2,2,'2020-10-10 22:26:38','2020-10-10 22:26:38'),(12,'\'Merica Classic Burger','Burgers She Wrote','Make America Tasty Again!\nCaramelized Onions, American Cheddar, Pickles, Mayo, Mustard, Lettuce, Tomato, & Onion\n','$16',2,2,'2020-10-10 22:27:12','2020-10-10 22:29:03'),(13,'Into The Great Beyond Burger','Burgers She Wrote','Beyond Meat Burger, Daiya Cheddar, Vegan Mayo, Yellow Mustard, Lettuce, Tomato, Onion, & Pickles\n(Vegan Option Available)','$16',2,2,'2020-10-10 22:28:19','2020-10-10 22:29:32'),(14,'The Crispy Kenny Rogers','Burgers She Wrote','Crispy Fried Chicken Breast, Garlic Aioli, Lettuce, Tomato, Onion, & Pickles\n(No Gluten Free Option Available)','$16',2,2,'2020-10-10 22:28:55','2020-10-10 22:31:40'),(15,'Roadhouse!','Burgers She Wrote','Swayze Yourself With A Kick To The Tastebuds! \n6oz. Ground Chuck Patty, House Smoked Pulled Pork, Deep Fried Mac & Cheese Patty, Cheese Curds, Fries, House Gravy, Chipotle Aioli, Lettuce, Tomato, & Onion.\n(Vegetarian Option Available)\n(No Gluten Free Option Available)\n','$20',2,2,'2020-10-10 22:30:57','2020-10-10 22:31:23'),(16,'Axe Salad','Eat Your Vegetables!','(Gluten Free)\nFeta, Cranberries, Toasted Walnut, Apple, Mixed Greens, & Balsamic Dijon Vinaigrette\n(Vegan Option Available)\n','sm $8 | lg $12',2,2,'2020-10-10 22:32:44','2020-10-10 22:32:44'),(17,'Thai One On Salad','Eat Your Vegetables!','(Gluten Free/Vegan) \nCarrot, Peppers, Onion, Mango Jalapeno Salsa, Cabbage, Peanuts, Vermicelli Noodles, & \nThai Peanut Dressing\n','sm $10 | lg $15',2,2,'2020-10-10 22:33:20','2020-10-10 22:33:20'),(18,'Hunter Poutine','Vladimir Poutines','House Gravy, Quebec Cheese Curds, & Kennebec Fries','$10',2,2,'2020-10-10 22:34:01','2020-10-10 22:34:19'),(19,'Gatherer Poutine','Vladimir Poutines','(Gluten free/Vegan)\nHouse Chickpea Gravy, Vegan Smoked Gouda, Kennebec Fries\n','$10',2,2,'2020-10-10 22:34:56','2020-10-10 22:34:56');
/*!40000 ALTER TABLE `menu_weekend_breakfast_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_drinks`
--

DROP TABLE IF EXISTS `menu_drinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_drinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_drinks`
--

LOCK TABLES `menu_drinks` WRITE;
/*!40000 ALTER TABLE `menu_drinks` DISABLE KEYS */;
INSERT INTO `menu_drinks` VALUES (1,'Brews Brothers','Havin\' A Domestic','$5','Alexander Keiths, Budweiser, Bud Light, OK Springs 1516, Pabst Blue Ribbon',2,2,'2020-10-10 21:34:44','2020-10-10 21:34:44'),(2,'Brews Brothers','Little More Flava Flav','$6','Coors Banquet, Rickard\'s Radler, Red Racer IPA, Mt. Begbie Nasty Habit',2,2,'2020-10-10 21:36:02','2020-10-10 21:36:02'),(3,'Brews Brothers','Craft Beer',NULL,'Ask Your Server About Our Rotating Craft Beers',2,2,'2020-10-10 21:37:11','2020-10-10 21:37:11'),(4,'Brews Brothers','Draft Beer','$7 pints | $22 pitchers','Ask Your Server About Our Rotating Draft Beers',2,2,'2020-10-10 21:38:58','2020-10-10 21:38:58'),(5,'Brews Brothers','1 Litre Growler Fills','$14 (+ $5 bottle deposit)',NULL,2,2,'2020-10-10 21:39:42','2020-10-10 21:39:42'),(6,'Ciders & Basic B\'s...','Strongbow','$7',NULL,2,2,'2020-10-10 21:40:33','2020-10-10 21:40:33'),(7,'Ciders & Basic B\'s...','Wize Vodka Sodas',NULL,'Root Beer, Vanilla Cola, & Cream Soda',2,2,'2020-10-10 21:41:39','2020-10-10 21:41:39'),(8,'Something to Wine About','Reds','6 oz. $7 | 9 oz. $9','La Posada Organic Tempranillo, Jackson Triggs Malbec, Copper Moon Shiraz',2,2,'2020-10-10 21:43:43','2020-10-10 21:43:43'),(9,'Something to Wine About','Whites','6 oz. $7 | 9 oz. $9','Peller Estates Pinot Grigio, Jackson Triggs Sauvignon Blanc',2,2,'2020-10-10 21:44:16','2020-10-10 21:44:16'),(10,'Something to Wine About','Rosé','6 oz. $7 | 9 oz. $9','Ask Your Server About Our Rotating Feature',2,2,'2020-10-10 21:45:21','2020-10-10 21:45:21'),(11,'OG Cocktails','Island Time!','$12','(2 oz.)\nSailor Jerry Spiced Rum, Mailbu Coconut Rum,\nMango Purée, Pineapple Juice, & Grenadine',2,2,'2020-10-10 21:46:30','2020-10-10 21:46:30'),(12,'OG Cocktails','Raddy Daddy','$9.5','Richard’s Grapefruit Radler with a Shot of\nGin... Jelly Donut Yourself... Why Not!?',2,2,'2020-10-10 21:47:23','2020-10-10 21:51:35'),(13,'OG Cocktails','Jalapeño Bidness Margarita','$9','(1 oz.)\nA Small Axe Classic with Triple Sec, Tequila,\nFresh Jalapeño, Lime, and Cucumber',2,2,'2020-10-10 21:48:38','2020-10-10 21:48:38'),(14,'OG Cocktails','The Dude','$8','(1.5 oz.)\nA White Russian with a Caffeinated Kick... Iced\nCoffee, Kahlúa, Vodka, & Dairy Free Cream...\nServed Over Ice... The Dude Abides!',2,2,'2020-10-10 21:50:11','2020-10-10 21:50:11'),(15,'OG Cocktails','Cool Hand Cuke','$7.5','(1 oz.)\nGin, Fresh Cucumber, Lime, Mint, Simple Syrup, & Soda',2,2,'2020-10-10 21:51:24','2020-10-10 21:51:24'),(16,'OG Cocktails','Edward Caesar Hands','$7.5','(1 oz.)\nClassic Ceasar Served With House Pickled\nVegetables',2,2,'2020-10-10 21:52:46','2020-10-10 21:55:45'),(17,'OG Cocktails','The Drunk Republican','$7','(1 oz.)\nAn Arnold Palmer, but with Booze... Half\nLemonade, Half Iced Tea, & Vodka... \'Cause Booze Makes Everything Better!',2,2,'2020-10-10 21:54:19','2020-10-10 21:55:55'),(18,'OG Cocktails','Strawberry Feels Forever','$7','(1 oz.)\nLemonade, Vodka, and House Stawberry Purée',2,2,'2020-10-10 21:55:26','2020-10-10 21:55:26'),(19,'OG Cocktails','Sangre-Ahhhhh','$6','Summertime Bliss in a Glass!',2,2,'2020-10-10 21:57:05','2020-10-10 21:57:05'),(20,'OG Cocktails','Bye Felicia!','$3.5','Our Last Call Special - A Well Shot for $3.5, But You Gots to Go After!',2,2,'2020-10-10 21:58:08','2020-10-10 21:58:09'),(21,'On The Wagon...','Coffee','$2','Freshly Brewed Shuswap Coffee Company Drip',2,2,'2020-10-10 21:59:05','2020-10-10 21:59:05'),(22,'On The Wagon...','Tea','$2','Twining\'s Earl Grey, Pure Peppermint, Pure Chamomile, Pure Rooibos Red, Honeybush Mandarin-Orange',2,2,'2020-10-10 22:02:08','2020-10-10 22:02:08'),(23,'On The Wagon...','Iced Coffee','$3','House Iced Shuswap Coffee Company Drip',2,2,'2020-10-10 22:03:34','2020-10-10 22:03:34'),(24,'On The Wagon...','Lemonade & Juice','$3','Lemonade, Orange Juice, Pineapple Juice, Cranberry Juice',2,2,'2020-10-10 22:04:32','2020-10-10 22:04:32'),(25,'On The Wagon...','Shirley Temple','$4','7up, Orange & Pineapple Juice, Grenadine, & Topped with a Maraschino Cherry',2,2,'2020-10-10 22:05:09','2020-10-10 22:06:43'),(26,'On The Wagon...','Soda-Pop','$2.5','Pepsi, Diet Pepsi, Dr. Pepper, Root Beer, 7up, Ginger Ale, Iced Tea',2,2,'2020-10-10 22:06:23','2020-10-10 22:06:23');
/*!40000 ALTER TABLE `menu_drinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_main_items`
--

DROP TABLE IF EXISTS `menu_main_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_main_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_main_items`
--

LOCK TABLES `menu_main_items` WRITE;
/*!40000 ALTER TABLE `menu_main_items` DISABLE KEYS */;
INSERT INTO `menu_main_items` VALUES (1,'Pull My Pork','(Gluten Free) Pulled Pork, Maple Lime BBQ, Mango Jalapeño Salsa, Avocado, Chipotle Aioli, Pickled Red Onions, & Cabbage','2 for $9',2,2,'2020-10-10 21:01:43','2020-10-10 21:01:43','Taco Walk on the Wild Side'),(2,'Jack My Fruit','(Gluten Free/Vegan) Jackfruit, Maple Lime BBQ, Mango Jalapeño Salsa, Avocado, Chipotle Aioli, Pickled Red Onions, & Cabbage','2 for $9',2,2,'2020-10-10 21:02:44','2020-10-10 21:02:44','Taco Walk on the Wild Side'),(3,'Black Eyed Chick Peas','(Gluten Free/Vegan) Small Axe Cajun Spiced Chickpeas, House Tomato Salsa, Avocado, Cilantro Lime Crema, Pickled Red Onions, & Cabbage','2 for $9',2,2,'2020-10-10 21:03:32','2020-10-10 21:12:25','Taco Walk on the Wild Side'),(4,'Le Prawn James','Coconut Crusted Prawns, Mango Jalapeño Salsa, Avocado, Chipotle Aioli, Pickled Red Onions, & Cabbage','2 for $9',2,2,'2020-10-10 21:04:13','2020-10-10 21:04:13','Taco Walk on the Wild Side'),(5,'Hunter Poutine','House Gravy, Quebec Cheese Curds, & Kennebec Fries','$10',2,2,'2020-10-10 21:05:06','2020-10-10 21:06:26','Vladimir Poutines'),(6,'Gatherer Poutine','(Gluten Free/Vegan) House Chick Pea Gravy, Vegan Smoked Gouda, & Kennebec Fries','$10',2,2,'2020-10-10 21:06:16','2020-10-10 21:20:23','Vladimir Poutines'),(7,'Mexi-Can Tots','(Gluten Free/Vegan) Roasted Corn Salsa, Cilantro Lime Crema, Chipotle Aioli, Tomato, Green Onions, Pickled Red Onions, & Blackened Tots','$10',2,2,'2020-10-10 21:07:03','2020-10-10 21:20:31','Vladimir Poutines'),(8,'Nacho Average Rice Bowl','(Vegan/Gluten Free) Cajun Rice, Avocado, Hummus, Spinach, Roasted Corn & Black Bean Salsa, Pickled Cabbage, Tomato, Peppers, Corn Chips, Green Onion, Cilantro Lime Crema, & Chipotle Dressing','$15',2,2,'2020-10-10 21:08:38','2020-10-10 21:20:38','Eat Your Vegetables!'),(9,'The Bruce Moose Buddha Bowl','(Gluten Free) Crispy Chickpeas, Coconut Brown Rice, Avocado, Roasted Garlic Hummus, Spinach, Beets, Hemp Hearts, Pumpkin Seeds, Apples, & Green Goddess Dressing\n(Vegan Option Available)','$15',2,2,'2020-10-10 21:10:08','2020-10-10 21:10:08','Eat Your Vegetables!'),(10,'Axe Salad','(Gluten Free) Feta, Cranberries, Toasted Walnut, Apples, Mixed Greens, & Honey Dijon Vinaigrette \n(Vegan Option Available)','sm $8 | lg $12',2,2,'2020-10-10 21:14:30','2020-10-10 21:14:30','Eat Your Vegetables!'),(11,'Thai One On Salad','(Gluten Free/Vegan) Carrot, Peppers, Cucumbers, Onions, Mango Jalapeño Salsa, Cabbage, Peanuts, Vermicelli Noodles, & Thai Peanut Dressing\n(Add Coconut Crusted Prawns for $2 each)','sm $10 | lg $15',2,2,'2020-10-10 21:15:54','2020-10-10 21:15:54','Eat Your Vegetables!'),(12,'The Axe Burger','Bacon, Smoked Cheddar, Garlic Aioli, Lettuce, Tomato, Onions, & Pickles','$16',2,2,'2020-10-10 21:17:09','2020-10-10 21:20:55','Burgers She Wrote'),(13,'Canadian \"EH\"','Poutine Burger, Quebec Cheese Curds, Fries, House Gravy, Onions, & Garlic Aioli on a Brioche Bun (Vegan Option Available)','$16',2,2,'2020-10-10 21:18:28','2020-10-10 21:20:16','Burgers She Wrote'),(14,'\'Merica Classic Burger','Make America Tasty Again!\nCaramelized Onions, American Cheddar,, Mayo, Mustard, Lettuce, Tomato, Onion, & Pickles','$16',2,2,'2020-10-10 21:20:04','2020-10-10 21:29:11','Burgers She Wrote'),(15,'Into The Great Beyond Burger','Beyond Meat Burger, Daiya Cheddar, Vegan Mayo, Yellow Mustard, Lettuce, Tomato, Onions, & Pickles\n(Vegan Option Available)','$16',2,2,'2020-10-10 21:23:00','2020-10-10 21:23:00','Burgers She Wrote'),(16,'The Greta Thunberg','(Vegan) Lentil, Rice, & Bean Burger, Ginger Peanut Sauce, Carrot, Cucumber, Pickled Cabbage, & Onion on a Whole Wheat Bun \n(No Gluten Free Option Available)','$16',2,2,'2020-10-10 21:24:24','2020-10-10 21:24:24','Burgers She Wrote'),(17,'Krabby Patty Po\' Boy','House Made Crab Cake, Creamy Slaw, Cajun Remoulade, Lettuce, Tomato, Onions, & Pickles - Sponge Bob Approved\n(No Gluten Free Option Available)','$16',2,2,'2020-10-10 21:25:15','2020-10-10 21:25:15','Burgers She Wrote'),(18,'Porky\'s','Maple Bourbon BBQ Pulled Pork, Creamy Slaw, Chipotle Aioli, Smoked Cheddar, Pickled Onions, & Topped with Corn Chips','$16',2,2,'2020-10-10 21:26:24','2020-10-10 21:26:24','Burgers She Wrote'),(19,'Porky\'s Revenge','Maple Bourbon BBQ Pulled Jackfruit, Creamy Slaw, Chipotle Aioli, Pickled Onions, & Topped with Corn Chips\n(Vegan Option Available When Requested)','$16',2,2,'2020-10-10 21:27:01','2020-10-10 21:27:01','Burgers She Wrote'),(20,'The Crispy Kenny Rogers','Crispy Fried Chicken Breast, Garlic Aioli, Lettuce, Tomato, Onion, & Pickles \n(No Gluten Free Option Available)','$16',2,2,'2020-10-10 21:27:43','2020-10-10 21:27:43','Burgers She Wrote'),(21,'Not Even If There\'s A Fire!','A Crispy Kenny Rogers With Added Heat! Done Nashville Hot Chicken Style with Sour Cream & Dill Ranch, Pickled Cabbage, Lettuce, Tomato, Onion, & Pickles\n(No Gluten Free Option Available)','$16',2,2,'2020-10-10 21:28:51','2020-10-10 21:28:51','Burgers She Wrote'),(22,'Roadhouse!','Swayze Yourself With a Roadhouse Kick to Your Tastebuds!\n6 oz. Ground Chuck Patty, House Smoked Pulled Pork, Deep Fried Mac & Cheese Patty, Cheese Curds, Fries, House Gravy, Chipotle Aioli, Lettuce, Tomato, & Onions\n(Vegetarian Option Available)\n(No Gluten Free Option Available)','$20',2,2,'2020-10-10 21:30:42','2020-10-10 21:30:42','Burgers She Wrote'),(23,'Big Ole Yorkie','Braised Beef, Garlic Mashed Potatoes, House Gravy, & Horseradish Crema in a Giant Yorkshire Pudding Bowl','$18',2,2,'2020-10-10 21:31:48','2020-10-10 21:31:48','Fan Favourite!'),(24,'Feature Dessert',NULL,'$7',2,2,'2020-10-10 21:32:26','2020-10-10 21:32:26','Sweet Tooth'),(25,'Gluten Free Dessert',NULL,'$8',2,2,'2020-10-10 21:32:52','2020-10-10 21:32:52','Sweet Tooth'),(26,'Vegan Dessert',NULL,'$8',2,2,'2020-10-10 21:33:03','2020-10-10 21:33:03','Sweet Tooth');
/*!40000 ALTER TABLE `menu_main_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-12 23:21:44
