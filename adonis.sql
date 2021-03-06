-- MariaDB dump 10.19  Distrib 10.5.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: adonis
-- ------------------------------------------------------
-- Server version	10.5.12-MariaDB-0+deb11u1

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
-- Table structure for table `adonis_schema`
--

DROP TABLE IF EXISTS `adonis_schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adonis_schema` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `migration_time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adonis_schema`
--

LOCK TABLES `adonis_schema` WRITE;
/*!40000 ALTER TABLE `adonis_schema` DISABLE KEYS */;
INSERT INTO `adonis_schema` VALUES (1,'1503250034279_user',1,'2021-10-27 01:46:12'),(2,'1503250034280_token',1,'2021-10-27 01:46:12'),(3,'1635298981598_decks_schema',1,'2021-10-27 01:46:12'),(4,'1635299044373_cards_schema',1,'2021-10-27 01:46:12');
/*!40000 ALTER TABLE `adonis_schema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cards`
--

DROP TABLE IF EXISTS `cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deck_id` int(10) unsigned DEFAULT NULL,
  `prevision` varchar(1000) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cards_deck_id_foreign` (`deck_id`),
  CONSTRAINT `cards_deck_id_foreign` FOREIGN KEY (`deck_id`) REFERENCES `decks` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cards`
--

LOCK TABLES `cards` WRITE;
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
INSERT INTO `cards` VALUES (1,1,'A autoconfian??a ?? aquela convic????o que vez ou outra descobrimos em n??s mesmos, a afirma????o indubit??vel da nossa capacidade de conseguir algo. Uma certeza de que ?? poss??vel chegar l??, seja aonde e quando for.','2021-10-26 23:18:32','2021-10-26 23:18:32'),(2,2,'Seus talentos e seus pr??prios dons s??o as chaves para o seu sucesso em qualquer situa????o questionada. ?? como se voc?? tivesse todas as ferramentas que precisa bem na sua frente para garantir que o sucesso potencial se manifeste.','2021-10-26 23:20:36','2021-10-26 23:20:36'),(3,3,'Voc?? deve ter o preparo para lidar com diversos tipos de quest??es com sabedoria ou a falta de afeto e dificuldade em expor sentimentos. Sua maior necessidade ?? de introspec????o para um trabalho de autoconhecimento. Manter seus planos em segredo at?? poder coloc??-los em pr??tica ?? a melhor forma de chegar ao resultado desejado.','2021-10-26 23:23:36','2021-10-26 23:23:36'),(4,4,'Volte suas aten????o ??s energias femininas, para representa seu poder de manter estabilidade em qualquer tipo de relacionamento. Voc?? possuir?? consci??ncia de seus problemas e saber?? como enfrent??-los da melhor forma, estar?? tamb??m apta para entender profundamente quest??es sociais ou os sentimentos das pessoas mais pr??ximas a voc??, podendo orient??-los de forma inteligente.','2021-10-26 23:26:42','2021-10-26 23:26:42'),(5,5,'Voc?? est?? adotando um papel paternal na vida de algu??m, seja voc?? homem ou mulher. Provavelmente, voc?? se sente respons??vel por cuidar da sua fam??lia, defende-a e leva o p??o para dentro de casa. Seus familiares confiam em sua estabilidade e seguran??a. Em troca, voc?? exige respeito e autoridade. Ser reconhecida ?? algo muito importante para voc??. O papel de lideran??a ?? o que te faz mais feliz.','2021-10-26 23:28:48','2021-10-26 23:28:48'),(6,6,'Valores e cren??as espirituais estabelecidos a voc?? s??o muito importantes. ?? necess??rio que voc?? aprenda sobre seus pr??prios valores antes de fazer qualquer escolha. O conselho da carta ?? para voc?? procurar um professor, um mentor ou um guia para ensin??-la sobre valores e cren??as espirituais de maneira estruturada. Caso seja voc?? a portadora da sabedoria que domina um campo espec??fico de estudo, a carta pede para que voc?? assuma o papel de professora e ensine outras pessoas.','2021-10-26 23:34:23','2021-10-26 23:34:23'),(7,7,'O livre-arb??trio e a necessidade de fazer uma escolha. ?? poss??vel que voc?? tenha delegado suas escolhas para outras pessoas e esse ?? o momento de assumi-las em sua vida. Este arcano tenta acender a luz da consci??ncia que est?? ofuscada por desejos. O motivo pelo qual essas d??vidas surgem s??o diversas op????es em seu caminho. Por isso ?? importante utilizar os conhecimentos adquiridos para escolher qual estrada seguir.','2021-10-26 23:51:04','2021-10-26 23:51:04'),(8,8,'Um per??odo de grande afeto e prote????o, que pode trazer grandes e intensas atividades. A????es estas que dever??o contar com boa sa??de e esfor??o por parte do consulente. Essa carta indica que voc?? pode ser alvo de pessoas oportunistas, ou ser?? movido por ambi????o, onde mesmo sabendo que est??o te explorando, voc?? se deixar?? levar devido ao seu orgulho.','2021-10-26 23:53:14','2021-10-26 23:53:14'),(9,9,'Situa????es em que ser??o necess??rias s??bias escolhas surgir??o em seu caminho e voc?? ser?? o respons??vel por como conduzir suas solu????es. N??o d?? nenhum passo sem pensar, sem ponderar, sem refletir. Portanto busque o autoconhecimento, entenda todos os lados, imagine solu????es com clareza e harmonia, n??o fa??a nada sem estudar detalhadamente o que pode ganhar ou perder com o acontecimento.','2021-10-26 23:54:39','2021-10-26 23:54:39'),(10,10,'Esse ?? seu momento de parar e rever tudo que alcan??ou e que fez at?? esse ponto de sua vida. H?? muito ainda que construir e encontrar solu????es, mas para isso voc?? precisa pensar e tomar as melhores decis??es. Portanto, evite a solid??o e preste mais aten????o aos acontecimentos que est??o passando diante de ti e que pedem foco.','2021-10-26 23:56:33','2021-10-26 23:56:33');
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `decks`
--

DROP TABLE IF EXISTS `decks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `decks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `decks_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `decks`
--

LOCK TABLES `decks` WRITE;
/*!40000 ALTER TABLE `decks` DISABLE KEYS */;
INSERT INTO `decks` VALUES (1,'O Louco','2021-10-26 23:18:31','2021-10-26 23:18:31'),(2,'O Mago','2021-10-26 23:20:36','2021-10-26 23:20:36'),(3,'A Papisa','2021-10-26 23:23:36','2021-10-26 23:23:36'),(4,'A Imperatriz','2021-10-26 23:26:42','2021-10-26 23:26:42'),(5,'O Imperador','2021-10-26 23:28:48','2021-10-26 23:28:48'),(6,'O Papa','2021-10-26 23:34:23','2021-10-26 23:34:23'),(7,'O Enamorados','2021-10-26 23:51:04','2021-10-26 23:51:04'),(8,'O Carruagem','2021-10-26 23:53:14','2021-10-26 23:53:14'),(9,'A Justi??a','2021-10-26 23:54:39','2021-10-26 23:54:39'),(10,'O Eremita','2021-10-26 23:56:33','2021-10-26 23:56:33');
/*!40000 ALTER TABLE `decks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `type` varchar(80) NOT NULL,
  `is_revoked` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tokens_token_unique` (`token`),
  KEY `tokens_user_id_foreign` (`user_id`),
  KEY `tokens_token_index` (`token`),
  CONSTRAINT `tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(80) NOT NULL,
  `cod` varchar(254) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_cod_unique` (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2021-10-27  1:16:18
