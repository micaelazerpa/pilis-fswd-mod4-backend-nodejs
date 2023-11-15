-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: recipes-db
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1',
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `userId` int DEFAULT NULL,
  `ingredients` varchar(500) NOT NULL,
  `preparation` varchar(800) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fe30fdc515f6c94d39cd4bbfa76` (`userId`),
  CONSTRAINT `FK_fe30fdc515f6c94d39cd4bbfa76` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (5,'Empanadas','Empanadas rellenas de carne, papas y especias, muy populares en la región de Jujuy.','https://cloudfront-us-east-1.images.arcpublishing.com/radiomitre/NLOL2RWKK5AAVMGRC7IFLZFZ7U.jpg','02:00',1,'2023-11-08 14:22:13.894540','2023-11-15 01:29:17.000000',4,'Masa para empanadas \n 250g de carne molida \n 2 papas \n 1 cebolla \n Comino, ají molido, sal y pimienta','Pela y corta las papas en cubos pequeños. Cocínalas hasta que estén tiernas. \n En una sartén, saltea la cebolla y la carne molida hasta que estén cocidas. \n Agrega las papas cocidas y las especias. Mezcla bien. \n Rellena las empanadas con la mezcla y hornéalas hasta que estén doradas.'),(8,'Locro','Una sopa espesa a base de maíz, carne de cerdo y chorizo','https://statics.somosjujuy.com.ar/2021/05/634236349c0e0.jpg','02:00',1,'2023-11-15 02:05:08.937384','2023-11-15 02:05:08.937384',3,'1 taza de maíz blanco \n 200g de carne de cerdo (tocino) \n 2 chorizos \n 1 cebolla \n 1 pimiento rojo \n 1 pimiento verde \n 1 zanahoria \n 2 papas \n 1/2 taza de arvejas \n 1 cucharada de pimentón dulce \n Sal y pimienta al gusto','Remoja el maíz blanco en agua durante la noche. \n En una olla grande, hierve el maíz con la carne de cerdo y los chorizos hasta que el maíz esté tierno. \n Agrega la cebolla, los pimientos, la zanahoria, las papas y las arvejas. Cocina hasta que las verduras estén tiernas. \n Agrega el pimentón, sal y pimienta al gusto. \n Sirve caliente y disfruta.'),(9,'Tamales','Pequeños tamales rellenos de carne o queso, una delicia de la región de Jujuy.','https://cocinerosargentinos.com/content/recipes/500x500/tamales-litoralenos.5656.jpg','02:00',1,'2023-11-15 02:05:49.115132','2023-11-15 02:05:49.115132',3,'Choclo (maíz) desgranado \n Carne molida o queso \n Ají molido \n Comino \n sal al gusto','Preparar una masa con el choclo molido y las especias. \n Rellenar pequeñas porciones de masa con carne molida o queso. \n Cocinar al vapor hasta que estén cocidos. \n Servir con ají molido al gusto.'),(10,'Picante de pollo','Una variante con sabores regionales de Jujuy.','https://media.todojujuy.com/p/9ebc6346b67fd4ee9d9680cba29683ac/adjuntos/227/imagenes/003/215/0003215149/770x0/smart/picante-pollo-saratoga-y-sangria-son-los-elegidos-las-comadres.png','01:30',1,'2023-11-15 02:07:01.661097','2023-11-15 02:07:01.661097',4,'1kg de cebollas \n 1 pollo grande \n 1kg de papa andina \n 2 huevos \n 1/2 kg de papa chuño \n aceite cantidad necesaria \n 1 kg de arroz \n sal \n 150 gr de maní \n perejil \n comino \n 1/2 kilo de tomates \n azafrán \n medio kilo de arvejas \n ají en vaina disecado amarillo o rojo','La noche anterior remojar el chuño. \n Horas antes hervir el pollo y la papa andina por separado. \n Picar la cebolla finita y el pimiento, rehogar en aceite, agregar el tomate, la arveja, el ají y el comino agregar agua hervida, el pollo hervido y trozado.  \n Aparte preparar el chuño: picar 1 cebolla, rehogarla en aceite, agregar el chuño picado y hervido, dejar cocinar unos minutos, incorporar los huevos y el maní. \n Cocinar el arroz tostado con azafrán. \n Picar el tomate en rodajas y la cebolla en tiras finas.'),(11,'Humita','Tamales de choclo envueltos en hojas de maíz, una delicia típica de Jujuy.','https://www.vivijujuy.com.ar/wp-content/uploads/2019/02/humitas.jpg','01:30',1,'2023-11-15 02:07:38.296932','2023-11-15 02:07:38.296932',4,'Choclo (maíz) desgranado \n Queso fresco \n Azúcar \n Sal al gusto','Moler el choclo y mezclarlo con queso fresco, azúcar y sal al gusto. \n Envolver la mezcla en hojas de maíz previamente remojadas. \n Servir caliente y disfrutar.'),(12,'Anchi','Esta es un postre tradicional de la provincia de Jujuy, es bastante sana y sencilla de preparar.','https://comidas-tipicas.com/wp-content/uploads/2017/12/anchi.jpg','01:30',1,'2023-11-15 22:15:24.581932','2023-11-15 22:15:24.581932',3,'medio Kg de Sémola de Maíz \n medio Kg de Azúcar \n 2 Limones \n 2 Naranjas \n 1 Rama de Canela \n 1 litro de agua','Coloca la Sémola en una olla y coloca la naranja, los limones, la azúcar, las cascaras de naranja, y colocarlo a hervir. \n En un bol de vidrio dejar enfriar y meterla en la nevera, algunos prefieren comerlo caliente esto también es válido, pero una vez estén frías esta tomara una consistencia espesa.');
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `active` tinyint NOT NULL DEFAULT '1',
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (3,1,'2023-11-05 22:23:00.981000','2023-11-15 21:51:57.000000','fulanito@gmail.com','$2b$10$qtRgHJPza1HfRu4AxY8UIuLOAxtzHhKsTXvT31W72HSWTtDyjtLUK'),(4,1,'2023-11-06 02:52:28.028671','2023-11-06 02:52:28.028671','micaela@gmail.com','$2b$10$iYSPY4Gewm79Vc87ajY0HuWeALQG0br7EXMhh18whBQXnlI3yAFsS');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'recipes-db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-15 19:45:11
