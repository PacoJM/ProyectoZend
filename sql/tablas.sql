-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.1.65-community - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2013-05-23 18:40:46
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping database structure for empleados_db
DROP DATABASE IF EXISTS `empleados_db`;
CREATE DATABASE IF NOT EXISTS `empleados_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `empleados_db`;


-- Dumping structure for table empleados_db.departamento
DROP TABLE IF EXISTS `departamento`;
CREATE TABLE IF NOT EXISTS `departamento` (
  `DEPTNO` tinyint(10) NOT NULL,
  `DNAME` varchar(50) DEFAULT NULL,
  `LOC` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DEPTNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table empleados_db.departamento: ~4 rows (approximately)
DELETE FROM `departamento`;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` (`DEPTNO`, `DNAME`, `LOC`) VALUES
	(10, 'CONTABILIDAD', 'MADRID'),
	(20, 'INVESTIGACION', 'BILBAO'),
	(30, 'VENTAS', 'SEVILLA'),
	(40, 'OPERACIONES', 'MALAGA');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;


-- Dumping structure for table empleados_db.empleado
DROP TABLE IF EXISTS `empleado`;
CREATE TABLE IF NOT EXISTS `empleado` (
  `EMP_NO` int(10) NOT NULL,
  `APELLIDO` varchar(50) DEFAULT NULL,
  `OFICIO` varchar(50) DEFAULT NULL,
  `DIR` int(11) DEFAULT NULL,
  `FECHA_ALTA` date DEFAULT NULL,
  `SALARIO` double DEFAULT NULL,
  `COMISION` double DEFAULT NULL,
  `DEPT_NO` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`EMP_NO`),
  KEY `FK_emp_dept` (`DEPT_NO`),
  CONSTRAINT `FK_emp_dept` FOREIGN KEY (`DEPT_NO`) REFERENCES `departamento` (`DEPTNO`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table empleados_db.empleado: ~14 rows (approximately)
DELETE FROM `empleado`;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` (`EMP_NO`, `APELLIDO`, `OFICIO`, `DIR`, `FECHA_ALTA`, `SALARIO`, `COMISION`, `DEPT_NO`) VALUES
	(7369, 'SANCHEZ', 'EMPLEADO', 7902, '2013-01-16', 58500, NULL, 20),
	(7499, 'ARROYO', 'VENDEDOR', 7698, '2013-01-16', 117000, 21937, 30),
	(7521, 'SALA', 'VENDEDOR', 7698, '2013-01-16', 91406, 36562, 30),
	(7566, 'JIMENEZ', 'DIRECTOR', 7839, '2013-01-16', 217546, NULL, 20),
	(7654, 'ARENAS', 'VENDEDOR', 7698, '2013-01-16', 91406, 102375, 30),
	(7698, 'NEGRO', 'DIRECTOR', 7839, '2013-01-16', 208406, NULL, 30),
	(7782, 'CEREZO', 'DIRECTOR', 7839, '2013-01-16', 100755, NULL, 10),
	(7788, 'GIL', 'ANALISTA', 7566, '2013-01-16', 219375, NULL, 20),
	(7839, 'REY', 'PRESIDENTE', NULL, '2013-01-16', 365625, NULL, 10),
	(7844, 'TOVAR', 'VENDEDOR', 7698, '2013-01-16', 109687, 0, 30),
	(7876, 'ALONSO', 'EMPLEADO', 7788, '2013-01-16', 80437, NULL, 20),
	(7900, 'JIMENO', 'EMPLEADO', 7698, '2013-01-16', 69468, NULL, 30),
	(7902, 'FERNANDEZ', 'ANALISTA', 7566, '2013-01-16', 219375, NULL, 20);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
