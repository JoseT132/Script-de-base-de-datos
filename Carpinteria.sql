-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         11.3.0-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para bd_carpinteria
CREATE DATABASE IF NOT EXISTS `bd_carpinteria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `bd_carpinteria`;

-- Volcando estructura para tabla bd_carpinteria.factura
CREATE TABLE IF NOT EXISTS `factura` (
  `No_Factura` char(50) NOT NULL DEFAULT 'no.',
  `C_producto` char(50) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  PRIMARY KEY (`No_Factura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla bd_carpinteria.factura: ~3 rows (aproximadamente)
INSERT INTO `factura` (`No_Factura`, `C_producto`, `Fecha`) VALUES
	('no.001', 'C001', '2023-10-04'),
	('no.002', 'C002', '2023-10-04'),
	('no.003', 'C003', '2023-10-04');

-- Volcando estructura para tabla bd_carpinteria.material
CREATE TABLE IF NOT EXISTS `material` (
  `C_Material` char(50) NOT NULL DEFAULT 'CC',
  `Nombre` char(50) DEFAULT NULL,
  `Codigo` char(50) DEFAULT NULL,
  PRIMARY KEY (`C_Material`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla bd_carpinteria.material: ~4 rows (aproximadamente)
INSERT INTO `material` (`C_Material`, `Nombre`, `Codigo`) VALUES
	('PC01', 'Clavos', 'PC01'),
	('PC02', 'Pie_Madera', 'PC02'),
	('PC03', 'Pegamento', 'PC03'),
	('PC04', 'Barniz', 'PC04');

-- Volcando estructura para tabla bd_carpinteria.producto
CREATE TABLE IF NOT EXISTS `producto` (
  `T_Madera` char(50) DEFAULT NULL,
  `C_Producto` char(50) DEFAULT NULL,
  `Estado` char(50) NOT NULL DEFAULT 'EST' COMMENT '"Estado puede ser ensamblado, barnizado , terminado ',
  PRIMARY KEY (`Estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla bd_carpinteria.producto: ~2 rows (aproximadamente)
INSERT INTO `producto` (`T_Madera`, `C_Producto`, `Estado`) VALUES
	('Pino', 'C002', 'Barnizado'),
	('Cedro', 'C001', 'Ensamblado');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
