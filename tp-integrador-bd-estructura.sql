-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.34 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para integrador_cac
DROP DATABASE IF EXISTS `integrador_cac`;
CREATE DATABASE IF NOT EXISTS `integrador_cac` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `integrador_cac`;

-- Volcando estructura para tabla integrador_cac.oradores
DROP TABLE IF EXISTS `oradores`;
CREATE TABLE IF NOT EXISTS `oradores` (
  `id_orador` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(65) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `apellido` varchar(65) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `mail` varchar(85) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tema` varchar(150) NOT NULL,
  `fecha_alta` date NOT NULL DEFAULT (now()),
  PRIMARY KEY (`id_orador`),
  UNIQUE KEY `nombre_apellido_unique` (`nombre`,`apellido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla integrador_cac.oradores: ~0 rows (aproximadamente)
DELETE FROM `oradores`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
