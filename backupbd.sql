-- MySQL dump 10.17  Distrib 10.3.23-MariaDB, for Win64 (AMD64)
--
-- Host: 192.241.144.140    Database: Spotify
-- ------------------------------------------------------
-- Server version	10.4.13-MariaDB-1:10.4.13+maria~bionic

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
-- Table structure for table `Album`
--

DROP TABLE IF EXISTS `Album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Album` (
  `id_album` int(11) NOT NULL AUTO_INCREMENT,
  `titulo_album` varchar(45) NOT NULL,
  `anio` date DEFAULT NULL,
  `genero` varchar(30) DEFAULT NULL,
  `interprete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_album`),
  KEY `interprete` (`interprete`),
  CONSTRAINT `Album_ibfk_1` FOREIGN KEY (`interprete`) REFERENCES `Artista` (`id_artista`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Album`
--

LOCK TABLES `Album` WRITE;
/*!40000 ALTER TABLE `Album` DISABLE KEYS */;
INSERT INTO `Album` VALUES (1,'The Eminem Show','2019-08-30','Hip Hop',1),(2,'Revival','2021-02-05','Pop',2),(3,'Visionary','2020-10-03','Reggaeton',3),(4,'Sweetener','2020-02-05','Pop',4),(5,'Purpose','2019-09-23','Pop',5),(6,'Arde el cielo','2019-09-16','Rock',6),(7,'I Wanna Thank Me','2021-04-06','Hip Hop',7),(8,'YHLQMDLG','2020-12-07','Pop',8),(9,'Damn','2019-08-04','Soul',9),(10,'When It\'s Dark Out','2021-03-01','Hip Hop',10);
/*!40000 ALTER TABLE `Album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Artista`
--

DROP TABLE IF EXISTS `Artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Artista` (
  `id_artista` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_artista` varchar(45) DEFAULT NULL,
  `oyentes_mensuales` float DEFAULT NULL,
  PRIMARY KEY (`id_artista`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Artista`
--

LOCK TABLES `Artista` WRITE;
/*!40000 ALTER TABLE `Artista` DISABLE KEYS */;
INSERT INTO `Artista` VALUES (1,'Daddy Yankee',345451000),(2,'Manuel Turizo',36978500),(3,'Farruko',61526100),(4,'Arcangel',77606600),(5,'Alejandro Sanz',23988100),(6,'Mana',28493000),(7,'Enrique Iglesias',30759300),(8,'Bad Bunny',113324000),(9,'Avicii',223542000),(10,'Tyga',49983900);
/*!40000 ALTER TABLE `Artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cancion`
--

DROP TABLE IF EXISTS `Cancion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cancion` (
  `id_cancion` int(11) NOT NULL AUTO_INCREMENT,
  `interprete` int(11) DEFAULT NULL,
  `titulo_cancion` varchar(45) NOT NULL,
  `duracion` time DEFAULT NULL,
  `reproducciones` float DEFAULT NULL,
  PRIMARY KEY (`id_cancion`),
  KEY `interprete` (`interprete`),
  CONSTRAINT `Cancion_ibfk_1` FOREIGN KEY (`interprete`) REFERENCES `Artista` (`id_artista`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cancion`
--

LOCK TABLES `Cancion` WRITE;
/*!40000 ALTER TABLE `Cancion` DISABLE KEYS */;
INSERT INTO `Cancion` VALUES (1,1,'La nueva y la ex','03:44:00',341543000),(2,2,'Lose you to love me','03:21:00',279833000),(3,3,'Chillax','03:01:00',1021940000),(4,4,'7 rings','03:10:00',768544000),(5,5,'Company','02:56:00',576486000),(6,6,'Labios compartidos','03:19:00',1499570000),(7,7,'Who am I','02:54:00',338909000),(8,8,'Si veo a tu mamá','03:00:00',2421950000),(9,9,'Humble','04:01:00',715235000),(10,10,'Sober','03:39:00',32873300);
/*!40000 ALTER TABLE `Cancion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contrasena`
--

DROP TABLE IF EXISTS `Contrasena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Contrasena` (
  `idContrasena` int(11) NOT NULL AUTO_INCREMENT,
  `c_contrasenia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idContrasena`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contrasena`
--

LOCK TABLES `Contrasena` WRITE;
/*!40000 ALTER TABLE `Contrasena` DISABLE KEYS */;
INSERT INTO `Contrasena` VALUES (1,'ZHH14MTC1IF'),(2,'EBQ30EPA9SC'),(3,'KYG51HCM1IK'),(4,'WUK46WNA3LQ'),(5,'ZXL38IRQ6RH'),(6,'XFZ24RZY7YJ'),(7,'JPX39ZDE9SC'),(8,'SVE96THV3AS'),(9,'DOF17QIP0FT'),(10,'JGM04ZNN6QT');
/*!40000 ALTER TABLE `Contrasena` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `IngresoUsuario`
--

DROP TABLE IF EXISTS `IngresoUsuario`;
/*!50001 DROP VIEW IF EXISTS `IngresoUsuario`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `IngresoUsuario` (
  `username` tinyint NOT NULL,
  `ultima_fecha_ingreso` tinyint NOT NULL,
  `entrada` tinyint NOT NULL,
  `salida` tinyint NOT NULL,
  `cantidad_ingreso` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Ingresos`
--

DROP TABLE IF EXISTS `Ingresos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ingresos` (
  `id_ingresos` int(11) NOT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `entrada` time DEFAULT NULL,
  `salida` time DEFAULT NULL,
  `CodUser` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ingresos`),
  KEY `CodUser` (`CodUser`),
  CONSTRAINT `Ingresos_ibfk_1` FOREIGN KEY (`CodUser`) REFERENCES `Usuario` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ingresos`
--

LOCK TABLES `Ingresos` WRITE;
/*!40000 ALTER TABLE `Ingresos` DISABLE KEYS */;
INSERT INTO `Ingresos` VALUES (1,'2010-05-12','04:30:00','06:30:00',1),(2,'2019-09-24','14:30:05','15:09:04',2),(3,'2018-04-21','13:18:39','14:30:02',3),(4,'2009-12-12','09:45:10','09:50:00',4),(5,'2012-11-10','10:01:03','11:03:30',5),(6,'2014-06-02','08:30:47','08:35:12',6),(7,'2019-07-12','07:00:04','07:32:19',7),(8,'2018-03-26','16:48:55','17:34:38',8),(9,'2018-04-23','21:38:45','21:54:36',9),(10,'2019-10-10','23:23:23','23:45:00',10);
/*!40000 ALTER TABLE `Ingresos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Podcasts`
--

DROP TABLE IF EXISTS `Podcasts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Podcasts` (
  `id_podcasts` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) NOT NULL,
  PRIMARY KEY (`id_podcasts`),
  UNIQUE KEY `titulo` (`titulo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Podcasts`
--

LOCK TABLES `Podcasts` WRITE;
/*!40000 ALTER TABLE `Podcasts` DISABLE KEYS */;
INSERT INTO `Podcasts` VALUES (5,'Conanr'),(1,'Fisher'),(8,'Hirames'),(2,'Klein'),(9,'Macaulope'),(3,'Russo'),(4,'Salinas'),(10,'Thorray'),(6,'Watkins'),(7,'Xamolina');
/*!40000 ALTER TABLE `Podcasts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Roles`
--

DROP TABLE IF EXISTS `Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Roles` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_rol` varchar(20) NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Roles`
--

LOCK TABLES `Roles` WRITE;
/*!40000 ALTER TABLE `Roles` DISABLE KEYS */;
INSERT INTO `Roles` VALUES (1,'Administrador'),(2,'PremiumDuo'),(3,'PremiumUniversitario'),(4,'PremiumFamiliar'),(5,'PremiumIndividual'),(6,'Basico');
/*!40000 ALTER TABLE `Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tarjeta`
--

DROP TABLE IF EXISTS `Tarjeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tarjeta` (
  `idTarjeta` int(11) NOT NULL,
  `CodUser` int(11) DEFAULT NULL,
  `NumTarjeta` float DEFAULT NULL,
  `FechaExpTarjeta` date NOT NULL,
  `cvcTarjeta` int(11) NOT NULL,
  PRIMARY KEY (`idTarjeta`),
  UNIQUE KEY `NumTarjeta` (`NumTarjeta`),
  KEY `fk_tarjetauser` (`CodUser`),
  CONSTRAINT `fk_tarjetauser` FOREIGN KEY (`CodUser`) REFERENCES `Usuario` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tarjeta`
--

LOCK TABLES `Tarjeta` WRITE;
/*!40000 ALTER TABLE `Tarjeta` DISABLE KEYS */;
INSERT INTO `Tarjeta` VALUES (1,NULL,4.28665e15,'2021-01-03',604),(2,NULL,4929030000000,'2020-08-13',156),(3,NULL,4.71648e15,'2020-11-18',645),(4,NULL,4024010000000,'2020-08-31',761),(5,NULL,4.53938e15,'2020-06-16',294),(6,NULL,4532270000000,'2021-03-26',498),(7,NULL,4716960000000,'2020-11-10',424),(8,NULL,4.556e15,'2021-02-28',714),(9,NULL,4539250000000,'2020-08-23',760),(10,NULL,4598260000000,'2020-12-22',994);
/*!40000 ALTER TABLE `Tarjeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuario` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `CodPodcasts` int(11) DEFAULT NULL,
  `CodRol` int(11) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contrasenia` int(11) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sexo` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `contrasenia` (`contrasenia`),
  KEY `fk_podcastsusuario` (`CodPodcasts`),
  KEY `fk_rolesuser` (`CodRol`),
  CONSTRAINT `Usuario_ibfk_1` FOREIGN KEY (`contrasenia`) REFERENCES `Contrasena` (`idContrasena`),
  CONSTRAINT `fk_podcastsusuario` FOREIGN KEY (`CodPodcasts`) REFERENCES `Podcasts` (`id_podcasts`),
  CONSTRAINT `fk_rolesuser` FOREIGN KEY (`CodRol`) REFERENCES `Roles` (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
INSERT INTO `Usuario` VALUES (1,1,1,'jmd234','velit.dui.semper@pellentesque.org',1,'1990-03-20','M'),(2,2,2,'jmowe232','erat.in@magnatellusfaucibus.co.uk',2,'1980-05-21','F'),(3,3,3,'weijp124','Nullam.feugiat@turpisNulla.edu',3,'1985-10-19','F'),(4,4,4,'32sdcs','aliquet.magna.a@egetmassaSuspendisse.net',4,'1993-06-20','M'),(5,5,5,'lkjoi23r','commodo.ipsum.Suspendisse@eratsemper.edu',5,'2009-03-19','F'),(6,6,6,'kjoi798','Praesent@DonecegestasDuis.net',6,'2010-04-19','F'),(7,7,3,'ohiuwe8','tincidunt@magna.ca',7,'2005-05-21','M'),(8,8,4,'hduey73','ut@eget.org',8,'2000-08-20','M'),(9,9,5,'dui873','et@magnisdisparturient.net',9,'2002-09-19','F'),(10,10,6,'francis78','Proin@amet.net',10,'2006-12-20','M');
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `canciones_mas_escuchadas`
--

DROP TABLE IF EXISTS `canciones_mas_escuchadas`;
/*!50001 DROP VIEW IF EXISTS `canciones_mas_escuchadas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `canciones_mas_escuchadas` (
  `titulo_cancion` tinyint NOT NULL,
  `titulo_album` tinyint NOT NULL,
  `nombre_artista` tinyint NOT NULL,
  `reproducciones` tinyint NOT NULL,
  `usuarios_diferentes` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `favSong`
--

DROP TABLE IF EXISTS `favSong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favSong` (
  `id_favSong` int(11) NOT NULL AUTO_INCREMENT,
  `idcancion` int(11) DEFAULT NULL,
  `interprete` int(11) DEFAULT NULL,
  `idplaylist` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_favSong`),
  KEY `idcancion` (`idcancion`),
  KEY `interprete` (`interprete`),
  KEY `idplaylist` (`idplaylist`),
  CONSTRAINT `favSong_ibfk_1` FOREIGN KEY (`idcancion`) REFERENCES `Cancion` (`id_cancion`),
  CONSTRAINT `favSong_ibfk_2` FOREIGN KEY (`interprete`) REFERENCES `Artista` (`id_artista`),
  CONSTRAINT `favSong_ibfk_3` FOREIGN KEY (`idplaylist`) REFERENCES `playList` (`id_playList`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favSong`
--

LOCK TABLES `favSong` WRITE;
/*!40000 ALTER TABLE `favSong` DISABLE KEYS */;
INSERT INTO `favSong` VALUES (1,1,1,1),(2,2,2,2),(3,3,3,3),(4,4,4,4),(5,5,5,5),(6,6,6,6),(7,7,7,7),(8,8,8,8),(9,9,9,9),(10,10,10,10);
/*!40000 ALTER TABLE `favSong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `oyentesmensuales`
--

DROP TABLE IF EXISTS `oyentesmensuales`;
/*!50001 DROP VIEW IF EXISTS `oyentesmensuales`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `oyentesmensuales` (
  `nombre_artista` tinyint NOT NULL,
  `oyentes_mensuales` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `playList`
--

DROP TABLE IF EXISTS `playList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playList` (
  `id_playList` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_playList`),
  UNIQUE KEY `titulo` (`titulo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playList`
--

LOCK TABLES `playList` WRITE;
/*!40000 ALTER TABLE `playList` DISABLE KEYS */;
INSERT INTO `playList` VALUES (8,'Acline'),(5,'Buckminster'),(1,'Galvinlist'),(10,'Hip Hop 2020'),(3,'listHarrison'),(2,'listTaylor'),(7,'Marshalllist'),(4,'Pricelist'),(9,'sadsongs'),(6,'Shaw');
/*!40000 ALTER TABLE `playList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recentlyListened`
--

DROP TABLE IF EXISTS `recentlyListened`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recentlyListened` (
  `id_recentlyListened` int(11) NOT NULL AUTO_INCREMENT,
  `idalbum` int(11) DEFAULT NULL,
  `idcancion` int(11) DEFAULT NULL,
  `idplaylist` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_recentlyListened`),
  KEY `idalbum` (`idalbum`),
  KEY `idcancion` (`idcancion`),
  KEY `idplaylist` (`idplaylist`),
  CONSTRAINT `recentlyListened_ibfk_1` FOREIGN KEY (`idalbum`) REFERENCES `Album` (`id_album`),
  CONSTRAINT `recentlyListened_ibfk_2` FOREIGN KEY (`idcancion`) REFERENCES `Cancion` (`id_cancion`),
  CONSTRAINT `recentlyListened_ibfk_3` FOREIGN KEY (`idplaylist`) REFERENCES `playList` (`id_playList`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recentlyListened`
--

LOCK TABLES `recentlyListened` WRITE;
/*!40000 ALTER TABLE `recentlyListened` DISABLE KEYS */;
INSERT INTO `recentlyListened` VALUES (1,1,1,1),(2,2,2,2),(3,3,3,3),(4,4,4,4),(5,5,5,5),(6,6,6,6),(7,7,7,7),(8,8,8,8),(9,9,9,9),(10,10,10,10);
/*!40000 ALTER TABLE `recentlyListened` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songsPlaylist`
--

DROP TABLE IF EXISTS `songsPlaylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `songsPlaylist` (
  `id_songsPlaylist` int(11) NOT NULL AUTO_INCREMENT,
  `idplaylist` int(11) DEFAULT NULL,
  `interprete` int(11) DEFAULT NULL,
  `idcancion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_songsPlaylist`),
  KEY `idplaylist` (`idplaylist`),
  KEY `interprete` (`interprete`),
  KEY `idcancion` (`idcancion`),
  CONSTRAINT `songsPlaylist_ibfk_1` FOREIGN KEY (`idplaylist`) REFERENCES `playList` (`id_playList`),
  CONSTRAINT `songsPlaylist_ibfk_2` FOREIGN KEY (`interprete`) REFERENCES `Artista` (`id_artista`),
  CONSTRAINT `songsPlaylist_ibfk_3` FOREIGN KEY (`idcancion`) REFERENCES `Cancion` (`id_cancion`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songsPlaylist`
--

LOCK TABLES `songsPlaylist` WRITE;
/*!40000 ALTER TABLE `songsPlaylist` DISABLE KEYS */;
INSERT INTO `songsPlaylist` VALUES (1,1,1,1),(2,2,2,2),(3,3,3,3),(4,4,4,4),(5,5,5,5),(6,6,6,6),(7,7,7,7),(8,8,8,8),(9,9,9,9),(10,10,10,10);
/*!40000 ALTER TABLE `songsPlaylist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `IngresoUsuario`
--

/*!50001 DROP TABLE IF EXISTS `IngresoUsuario`*/;
/*!50001 DROP VIEW IF EXISTS `IngresoUsuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `IngresoUsuario` AS select `Usuario`.`username` AS `username`,max(`Ingresos`.`fecha_ingreso`) AS `ultima_fecha_ingreso`,`Ingresos`.`entrada` AS `entrada`,`Ingresos`.`salida` AS `salida`,count(`Ingresos`.`CodUser`) AS `cantidad_ingreso` from (`Usuario` join `Ingresos` on(`Usuario`.`id_user` = `Ingresos`.`CodUser`)) group by `Usuario`.`id_user` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `canciones_mas_escuchadas`
--

/*!50001 DROP TABLE IF EXISTS `canciones_mas_escuchadas`*/;
/*!50001 DROP VIEW IF EXISTS `canciones_mas_escuchadas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `canciones_mas_escuchadas` AS select `Cancion`.`titulo_cancion` AS `titulo_cancion`,`Album`.`titulo_album` AS `titulo_album`,`Artista`.`nombre_artista` AS `nombre_artista`,`Cancion`.`reproducciones` AS `reproducciones`,`Usuario`.`username` AS `usuarios_diferentes` from (((`Cancion` join `Album`) join `Artista`) join `Usuario`) where `Cancion`.`id_cancion` = `Artista`.`id_artista` and `Album`.`id_album` = `Artista`.`id_artista` and `Cancion`.`reproducciones` > 800000000 order by `Cancion`.`reproducciones` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `oyentesmensuales`
--

/*!50001 DROP TABLE IF EXISTS `oyentesmensuales`*/;
/*!50001 DROP VIEW IF EXISTS `oyentesmensuales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `oyentesmensuales` AS select `Artista`.`nombre_artista` AS `nombre_artista`,`Artista`.`oyentes_mensuales` AS `oyentes_mensuales` from ((`Cancion` join `Album`) join `Artista`) where `Cancion`.`id_cancion` = `Artista`.`id_artista` and `Album`.`id_album` = `Artista`.`id_artista` order by `Artista`.`oyentes_mensuales` desc */;
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

-- Dump completed on 2020-06-02 22:02:49
