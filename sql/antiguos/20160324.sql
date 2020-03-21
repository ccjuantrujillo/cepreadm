-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.6.16 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2016-03-24 02:38:08
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping structure for table cepreadm.access_url
CREATE TABLE IF NOT EXISTS `access_url` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `description` text,
  `active` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `tms` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.access_url: 1 rows
/*!40000 ALTER TABLE `access_url` DISABLE KEYS */;
INSERT INTO `access_url` (`id`, `url`, `description`, `active`, `created_by`, `tms`) VALUES
	(1, 'http://localhost/', ' ', 1, 1, '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `access_url` ENABLE KEYS */;


-- Dumping structure for table cepreadm.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.admin: 1 rows
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`, `user_id`) VALUES
	(1, 1);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_acceso
CREATE TABLE IF NOT EXISTS `ant_acceso` (
  `ACCESOP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `PERSP_Codigo` int(11) NOT NULL DEFAULT '0',
  `ACCESOC_Fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ACCESOP_Codigo`),
  KEY `FK_acceso_persona` (`PERSP_Codigo`),
  CONSTRAINT `FK_acceso_persona` FOREIGN KEY (`PERSP_Codigo`) REFERENCES `ant_persona` (`PERSP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_acceso: ~99 rows (approximately)
/*!40000 ALTER TABLE `ant_acceso` DISABLE KEYS */;
INSERT INTO `ant_acceso` (`ACCESOP_Codigo`, `PERSP_Codigo`, `ACCESOC_Fecha`) VALUES
	(1, 1, '2015-11-23 09:15:37'),
	(2, 1, '2015-11-23 09:15:58'),
	(3, 1, '2015-11-23 09:28:14'),
	(4, 94, '2015-11-23 09:28:44'),
	(5, 1, '2015-11-23 09:30:26'),
	(8, 1, '2015-11-23 10:21:19'),
	(10, 1, '2015-11-23 10:23:41'),
	(11, 1, '2015-11-23 10:26:48'),
	(12, 1, '2015-11-24 05:44:18'),
	(13, 1, '2015-11-24 12:40:33'),
	(14, 1, '2015-11-24 03:28:36'),
	(15, 1, '2015-11-27 05:59:08'),
	(16, 1, '2015-11-27 02:01:21'),
	(17, 1, '2015-11-27 05:59:51'),
	(18, 1, '2015-11-27 06:02:42'),
	(19, 1, '2015-11-27 06:05:23'),
	(20, 1, '2015-11-27 06:49:42'),
	(21, 1, '2015-11-28 06:04:58'),
	(22, 1, '2015-11-28 12:51:47'),
	(23, 1, '2015-11-28 05:51:09'),
	(24, 1, '2015-11-29 04:36:50'),
	(25, 1, '2015-11-30 12:15:54'),
	(26, 1, '2015-11-30 12:19:03'),
	(27, 1, '2015-11-30 01:08:36'),
	(28, 1, '2015-11-30 01:19:08'),
	(29, 1, '2015-11-30 05:21:22'),
	(30, 1, '2015-11-30 06:15:56'),
	(31, 1, '2015-11-30 01:10:38'),
	(32, 1, '2015-11-30 02:35:08'),
	(33, 94, '2015-11-30 02:35:39'),
	(34, 1, '2015-11-30 02:39:51'),
	(35, 1, '2015-11-30 05:37:30'),
	(36, 1, '2015-11-30 06:52:52'),
	(37, 1, '2015-11-30 07:06:27'),
	(38, 1, '2015-11-30 07:06:53'),
	(39, 1, '2015-11-30 07:29:43'),
	(40, 1, '2015-12-12 01:58:42'),
	(41, 1, '2015-12-14 12:40:38'),
	(42, 1, '2015-12-15 10:49:20'),
	(43, 1, '2015-12-19 03:22:51'),
	(44, 1, '2015-12-19 03:41:22'),
	(45, 1, '2015-12-19 04:45:06'),
	(46, 1, '2015-12-19 02:07:49'),
	(47, 1, '2015-12-19 02:14:49'),
	(48, 1, '2015-12-19 02:18:23'),
	(49, 1, '2015-12-19 07:24:37'),
	(50, 1, '2015-12-22 02:18:35'),
	(51, 1, '2015-12-23 07:25:25'),
	(52, 1, '2015-12-23 11:57:32'),
	(53, 1, '2015-12-24 03:36:44'),
	(54, 1, '2015-12-24 04:50:37'),
	(55, 1, '2015-12-25 09:40:58'),
	(56, 1, '2015-12-26 05:01:59'),
	(57, 1, '2015-12-26 02:22:24'),
	(58, 1, '2015-12-28 05:28:01'),
	(59, 1, '2015-12-30 10:03:05'),
	(60, 1, '2015-12-31 02:58:04'),
	(61, 1, '2016-01-04 10:08:21'),
	(62, 1, '2016-01-05 01:38:58'),
	(63, 1, '2016-01-05 01:25:33'),
	(64, 1, '2016-01-05 02:09:41'),
	(65, 1, '2016-01-05 03:25:19'),
	(66, 1, '2016-01-06 05:07:22'),
	(67, 1, '2016-01-09 07:00:48'),
	(68, 1, '2016-01-09 03:55:02'),
	(69, 1, '2016-01-15 09:50:54'),
	(70, 1, '2016-01-16 04:25:15'),
	(71, 1, '2016-01-22 01:21:01'),
	(72, 1, '2016-01-26 10:56:03'),
	(73, 1, '2016-01-28 05:36:45'),
	(74, 1, '2016-01-29 04:44:57'),
	(75, 1, '2016-01-30 06:04:57'),
	(76, 1, '2016-02-13 06:17:31'),
	(77, 1, '2016-02-19 05:29:13'),
	(78, 1, '2016-02-20 04:57:51'),
	(79, 1, '2016-02-21 05:04:43'),
	(80, 1, '2016-02-21 06:57:18'),
	(81, 1, '2016-02-22 04:37:44'),
	(82, 1, '2016-02-26 03:16:25'),
	(83, 1, '2016-02-26 05:12:25'),
	(84, 1, '2016-02-26 05:25:06'),
	(85, 229, '2016-02-26 05:27:07'),
	(86, 1, '2016-02-26 05:31:48'),
	(87, 229, '2016-02-26 05:44:42'),
	(88, 1, '2016-03-01 02:56:47'),
	(89, 229, '2016-03-01 05:01:49'),
	(90, 1, '2016-03-01 05:15:40'),
	(91, 1, '2016-03-04 12:09:32'),
	(92, 229, '2016-03-05 05:04:36'),
	(93, 1, '2016-03-05 05:20:14'),
	(94, 1, '2016-03-06 05:08:57'),
	(95, 1, '2016-03-07 04:36:34'),
	(96, 1, '2016-03-11 04:48:09'),
	(97, 229, '2016-03-11 05:32:41'),
	(98, 1, '2016-03-12 04:25:17'),
	(99, 1, '2016-03-12 06:56:38'),
	(100, 1, '2016-03-12 12:06:38'),
	(101, 1, '2016-03-12 03:12:10'),
	(102, 1, '2016-03-13 05:43:32'),
	(103, 1, '2016-03-24 07:34:25');
/*!40000 ALTER TABLE `ant_acceso` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_acta
CREATE TABLE IF NOT EXISTS `ant_acta` (
  `ACTAP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `USUA_Codigo` int(11) NOT NULL,
  `PROP_Codigo` int(11) NOT NULL,
  `TIPCICLOP_Codigo` int(11) NOT NULL,
  `ACTAC_Tipo` char(2) DEFAULT '',
  `ACTAC_Fecha` date NOT NULL DEFAULT '0000-00-00',
  `ACTAC_Titulo` varchar(500) NOT NULL,
  `ACTAC_Agenda` text NOT NULL,
  `ACTAC_Detalle` text NOT NULL,
  `ACTAC_Hinicio` time NOT NULL,
  `ACTAC_Hfin` time NOT NULL,
  `ACTAC_FechaModificacion` datetime DEFAULT NULL,
  `ACTAC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ACTAP_Codigo`),
  KEY `FK_acta_usuario` (`USUA_Codigo`),
  KEY `FK_acta_profesor` (`PROP_Codigo`),
  KEY `FK_acta_tipoestudiociclo` (`TIPCICLOP_Codigo`),
  CONSTRAINT `FK_acta_profesor` FOREIGN KEY (`PROP_Codigo`) REFERENCES `ant_profesor` (`PROP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_acta_tipoestudiociclo` FOREIGN KEY (`TIPCICLOP_Codigo`) REFERENCES `ant_tipoestudiociclo` (`TIPCICLOP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_acta_usuario` FOREIGN KEY (`USUA_Codigo`) REFERENCES `ant_usuario` (`USUA_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_acta: ~3 rows (approximately)
/*!40000 ALTER TABLE `ant_acta` DISABLE KEYS */;
INSERT INTO `ant_acta` (`ACTAP_Codigo`, `USUA_Codigo`, `PROP_Codigo`, `TIPCICLOP_Codigo`, `ACTAC_Tipo`, `ACTAC_Fecha`, `ACTAC_Titulo`, `ACTAC_Agenda`, `ACTAC_Detalle`, `ACTAC_Hinicio`, `ACTAC_Hfin`, `ACTAC_FechaModificacion`, `ACTAC_FechaRegistro`) VALUES
	(5, 7, 109, 1, '', '2016-03-06', 'Reunion X', 'Reunion X', '', '14:00:00', '17:00:00', NULL, '2016-03-05 23:14:11'),
	(9, 7, 104, 1, '', '2016-03-11', 'Reunion de Prueba Final', 'Reunion de Prueba Final', '', '14:00:00', '17:00:00', NULL, '2016-03-10 23:15:59'),
	(12, 7, 181, 3, '', '2016-03-13', '123', '', '', '00:00:00', '00:00:00', NULL, '2016-03-13 00:53:25');
/*!40000 ALTER TABLE `ant_acta` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_actadetalle
CREATE TABLE IF NOT EXISTS `ant_actadetalle` (
  `ACTADETP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `ACTAP_Codigo` int(11) NOT NULL DEFAULT '0',
  `ACTADETC_Nombre` varchar(150) DEFAULT NULL,
  `ACTADETC_Observacion` text,
  `ACTADETC_FechaModificacion` datetime DEFAULT NULL,
  `ACTADETC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ACTADETP_Codigo`),
  KEY `FK_actadetalle_acta` (`ACTAP_Codigo`),
  CONSTRAINT `FK_actadetalle_acta` FOREIGN KEY (`ACTAP_Codigo`) REFERENCES `ant_acta` (`ACTAP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_actadetalle: ~3 rows (approximately)
/*!40000 ALTER TABLE `ant_actadetalle` DISABLE KEYS */;
INSERT INTO `ant_actadetalle` (`ACTADETP_Codigo`, `ACTAP_Codigo`, `ACTADETC_Nombre`, `ACTADETC_Observacion`, `ACTADETC_FechaModificacion`, `ACTADETC_FechaRegistro`) VALUES
	(15, 12, 'qwerqw', 'wqrqwrqwrqwr', NULL, '2016-03-13 01:30:25'),
	(17, 12, '', '', NULL, '2016-03-13 01:31:27'),
	(18, 12, 'wwe', 'as', NULL, '2016-03-13 01:31:45');
/*!40000 ALTER TABLE `ant_actadetalle` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_actaexposicion
CREATE TABLE IF NOT EXISTS `ant_actaexposicion` (
  `ACTAEXPOSP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `ACTAP_Codigo` int(11) NOT NULL,
  `PROP_Codigo` int(11) NOT NULL,
  `PRODATRIBDET_Codigo` int(11) NOT NULL COMMENT '//Id Tema',
  `ACTAEXPOSC_Archivo` varchar(50) NOT NULL,
  `ACTAEXPOSC_Descripcion` varchar(250) NOT NULL,
  `ACTAEXPOSC_Duracion` int(11) NOT NULL,
  `ACTAEXPOSC_FechaModificacion` datetime DEFAULT NULL,
  `ACTAEXPOSC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ACTAEXPOSP_Codigo`),
  KEY `FK_ant_actaexposicion_ant_acta` (`ACTAP_Codigo`),
  KEY `FK_ant_actaexposicion_ant_profesor` (`PROP_Codigo`),
  KEY `FK_ant_actaexposicion_ant_tema` (`PRODATRIBDET_Codigo`),
  CONSTRAINT `FK_ant_actaexposicion_ant_acta` FOREIGN KEY (`ACTAP_Codigo`) REFERENCES `ant_acta` (`ACTAP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ant_actaexposicion_ant_profesor` FOREIGN KEY (`PROP_Codigo`) REFERENCES `ant_profesor` (`PROP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ant_actaexposicion_ant_tema` FOREIGN KEY (`PRODATRIBDET_Codigo`) REFERENCES `ant_tema` (`PRODATRIBDET_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_actaexposicion: ~3 rows (approximately)
/*!40000 ALTER TABLE `ant_actaexposicion` DISABLE KEYS */;
INSERT INTO `ant_actaexposicion` (`ACTAEXPOSP_Codigo`, `ACTAP_Codigo`, `PROP_Codigo`, `PRODATRIBDET_Codigo`, `ACTAEXPOSC_Archivo`, `ACTAEXPOSC_Descripcion`, `ACTAEXPOSC_Duracion`, `ACTAEXPOSC_FechaModificacion`, `ACTAEXPOSC_FechaRegistro`) VALUES
	(16, 5, 108, 18, '79areas_regiones_planas[1].pdf', 'Areas', 45, NULL, '2016-03-05 23:19:58'),
	(17, 9, 103, 5, '33img_20150826_0004.pdf', '1321321', 1, NULL, '2016-03-12 23:58:02'),
	(18, 9, 105, 11, '45musicaesacra.pdf', '454949', 0, NULL, '2016-03-12 23:58:23');
/*!40000 ALTER TABLE `ant_actaexposicion` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_actaprofesor
CREATE TABLE IF NOT EXISTS `ant_actaprofesor` (
  `ACTAPROFP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `ACTAP_Codigo` int(11) NOT NULL DEFAULT '0',
  `PROP_Codigo` int(11) NOT NULL DEFAULT '0',
  `ACTAPROFC_Hingreso` time DEFAULT NULL,
  `ACTAPROFC_Hsalida` time DEFAULT NULL,
  `ACTAPROFC_Observacion` varchar(150) DEFAULT NULL,
  `ACTAPROFC_FechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ACTAPROFP_Codigo`),
  KEY `FK_actaprofesor_acta` (`ACTAP_Codigo`),
  KEY `FK_actaprofesor_profesor` (`PROP_Codigo`),
  CONSTRAINT `FK_actaprofesor_acta` FOREIGN KEY (`ACTAP_Codigo`) REFERENCES `ant_acta` (`ACTAP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_actaprofesor_profesor` FOREIGN KEY (`PROP_Codigo`) REFERENCES `ant_profesor` (`PROP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_actaprofesor: ~6 rows (approximately)
/*!40000 ALTER TABLE `ant_actaprofesor` DISABLE KEYS */;
INSERT INTO `ant_actaprofesor` (`ACTAPROFP_Codigo`, `ACTAP_Codigo`, `PROP_Codigo`, `ACTAPROFC_Hingreso`, `ACTAPROFC_Hsalida`, `ACTAPROFC_Observacion`, `ACTAPROFC_FechaRegistro`) VALUES
	(50, 9, 109, '14:00:00', '17:00:00', '', '2016-03-10 23:19:12'),
	(51, 9, 118, '14:00:00', '17:00:00', '', '2016-03-10 23:19:12'),
	(52, 9, 119, '14:00:00', '17:00:00', '', '2016-03-10 23:19:12'),
	(53, 9, 122, '14:00:00', '17:00:00', '', '2016-03-10 23:19:13'),
	(54, 9, 123, '14:00:00', '17:00:00', '', '2016-03-10 23:19:13'),
	(55, 9, 124, '14:00:00', '17:00:00', '', '2016-03-10 23:19:13');
/*!40000 ALTER TABLE `ant_actaprofesor` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_actividad
CREATE TABLE IF NOT EXISTS `ant_actividad` (
  `ACTP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `ORDENP_Codigo` int(11) NOT NULL,
  `ACTC_Accion` varchar(250) NOT NULL,
  `ACTC_Modulo` varchar(250) NOT NULL,
  `ACTC_Session` varchar(250) NOT NULL,
  `ACTC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ACTP_Codigo`),
  KEY `FK_actividad_orden` (`ORDENP_Codigo`),
  CONSTRAINT `FK_actividad_orden` FOREIGN KEY (`ORDENP_Codigo`) REFERENCES `ant_matricula` (`ORDENP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_actividad: ~0 rows (approximately)
/*!40000 ALTER TABLE `ant_actividad` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_actividad` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_afiliacion
CREATE TABLE IF NOT EXISTS `ant_afiliacion` (
  `AFILIAP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `SOCIEDP_Codigo` int(11) NOT NULL DEFAULT '0',
  `PROP_Codigo` int(11) NOT NULL DEFAULT '0',
  `AFILIAC_Fecha` date NOT NULL DEFAULT '0000-00-00',
  `AFILIAC_FechaModificacion` datetime DEFAULT NULL,
  `AFILIAC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`AFILIAP_Codigo`),
  KEY `FK_afiliacion_sociedad` (`SOCIEDP_Codigo`),
  KEY `FK_afiliacion_profesor` (`PROP_Codigo`),
  CONSTRAINT `FK_afiliacion_profesor` FOREIGN KEY (`PROP_Codigo`) REFERENCES `ant_profesor` (`PROP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_afiliacion_sociedad` FOREIGN KEY (`SOCIEDP_Codigo`) REFERENCES `ant_sociedad` (`SOCIEDP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_afiliacion: ~0 rows (approximately)
/*!40000 ALTER TABLE `ant_afiliacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_afiliacion` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_alumno
CREATE TABLE IF NOT EXISTS `ant_alumno` (
  `ALUMP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `PERSP_Codigo` int(11) NOT NULL,
  `CICLOP_Codigo` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ALUMC_FlagEstado` char(1) DEFAULT '1',
  `ALUMC_FechaModificacion` datetime DEFAULT NULL,
  `ALUMC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ALUMP_Codigo`),
  KEY `FK_cliente_persona` (`PERSP_Codigo`),
  KEY `FK_ant_alumno_ant_ciclo` (`CICLOP_Codigo`),
  CONSTRAINT `FK_ant_alumno_ant_ciclo` FOREIGN KEY (`CICLOP_Codigo`) REFERENCES `ant_ciclo` (`CICLOP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_cliente_persona` FOREIGN KEY (`PERSP_Codigo`) REFERENCES `ant_persona` (`PERSP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_alumno: ~45 rows (approximately)
/*!40000 ALTER TABLE `ant_alumno` DISABLE KEYS */;
INSERT INTO `ant_alumno` (`ALUMP_Codigo`, `PERSP_Codigo`, `CICLOP_Codigo`, `user_id`, `ALUMC_FlagEstado`, `ALUMC_FechaModificacion`, `ALUMC_FechaRegistro`) VALUES
	(20, 179, 1, 0, '1', '2015-11-06 16:21:20', '2015-11-06 10:21:20'),
	(21, 180, 1, 0, '1', '2015-11-06 16:22:25', '2015-11-06 10:22:25'),
	(25, 383, 1, 4, '1', NULL, '2015-12-28 11:56:12'),
	(26, 384, 1, 5, '1', NULL, '2015-12-28 11:56:12'),
	(27, 385, 1, 6, '1', NULL, '2015-12-28 11:56:12'),
	(28, 386, 1, 7, '1', NULL, '2015-12-28 11:56:12'),
	(29, 387, 1, 8, '1', NULL, '2015-12-28 11:56:12'),
	(30, 388, 1, 9, '1', NULL, '2015-12-28 11:56:12'),
	(31, 389, 1, 10, '1', NULL, '2015-12-28 11:56:12'),
	(32, 390, 1, 11, '1', NULL, '2015-12-28 11:56:12'),
	(34, 392, 1, 13, '1', NULL, '2015-12-28 11:56:12'),
	(35, 393, 1, 14, '1', NULL, '2015-12-28 11:56:12'),
	(36, 394, 1, 15, '1', NULL, '2015-12-28 11:56:12'),
	(37, 395, 1, 16, '1', NULL, '2015-12-28 11:56:12'),
	(38, 396, 1, 17, '1', NULL, '2015-12-28 11:56:12'),
	(39, 397, 1, 18, '1', NULL, '2015-12-28 11:56:12'),
	(40, 398, 1, 19, '1', NULL, '2015-12-28 11:56:12'),
	(43, 401, 1, 23, '1', NULL, '2015-12-28 11:56:12'),
	(44, 402, 1, 24, '1', NULL, '2015-12-28 11:56:12'),
	(45, 403, 1, 25, '1', NULL, '2015-12-28 11:56:12'),
	(46, 404, 1, 26, '1', NULL, '2015-12-28 11:56:12'),
	(47, 405, 1, 27, '1', NULL, '2015-12-28 11:56:12'),
	(48, 406, 1, 28, '1', NULL, '2015-12-28 11:56:12'),
	(49, 407, 1, 29, '1', NULL, '2015-12-28 11:56:12'),
	(50, 408, 1, 30, '1', NULL, '2015-12-28 11:56:12'),
	(51, 409, 1, 32, '1', NULL, '2015-12-28 11:56:12'),
	(52, 410, 1, 33, '1', NULL, '2015-12-28 11:56:12'),
	(53, 411, 1, 34, '1', NULL, '2015-12-28 11:56:12'),
	(55, 413, 1, 36, '1', NULL, '2015-12-28 11:56:12'),
	(56, 414, 1, 37, '1', NULL, '2015-12-28 11:56:12'),
	(57, 415, 1, 38, '1', NULL, '2015-12-28 11:56:12'),
	(58, 416, 1, 39, '1', NULL, '2015-12-28 11:56:12'),
	(59, 417, 1, 40, '1', NULL, '2015-12-28 11:56:12'),
	(60, 418, 1, 41, '1', NULL, '2015-12-28 11:56:12'),
	(61, 419, 1, 42, '1', NULL, '2015-12-28 11:56:12'),
	(62, 420, 1, 43, '1', NULL, '2015-12-28 11:56:12'),
	(63, 421, 1, 44, '1', NULL, '2015-12-28 11:56:12'),
	(64, 422, 1, 45, '1', NULL, '2015-12-28 11:56:12'),
	(65, 423, 1, 46, '1', NULL, '2015-12-28 11:56:12'),
	(67, 425, 1, 48, '1', NULL, '2015-12-28 11:56:12'),
	(68, 426, 1, 49, '1', NULL, '2015-12-28 11:56:12'),
	(69, 427, 1, 0, '1', NULL, '2015-12-28 11:56:12'),
	(70, 428, 1, 51, '1', NULL, '2015-12-28 11:56:12'),
	(71, 429, 1, 52, '1', NULL, '2015-12-28 11:56:12'),
	(72, 430, 1, 53, '1', NULL, '2015-12-28 11:56:12');
/*!40000 ALTER TABLE `ant_alumno` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_apertura
CREATE TABLE IF NOT EXISTS `ant_apertura` (
  `APERTUP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `CICLOP_Codigo` int(11) NOT NULL DEFAULT '0',
  `TIPCICLOP_Codigo` int(11) NOT NULL DEFAULT '0',
  `AULAP_Codigo` int(11) NOT NULL DEFAULT '0',
  `TURNOP_Codigo` int(11) NOT NULL,
  `MODULOP_Codigo` int(11) NOT NULL,
  `APERTUC_Descripcion` varchar(250) DEFAULT NULL,
  `APERTUC_Observacion` varchar(250) DEFAULT NULL,
  `APERTUC_FlagEstado` char(1) DEFAULT '1' COMMENT '1:Activo,2;Inactivo',
  `APERTUC_Fecha` date DEFAULT '0000-00-00',
  `APERTUC_FechaModificacion` datetime DEFAULT NULL,
  `APERTUC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`APERTUP_Codigo`),
  UNIQUE KEY `CICLOP_Codigo_AULAP_Codigo_APERTUC_Turno` (`CICLOP_Codigo`,`AULAP_Codigo`,`TURNOP_Codigo`),
  KEY `FK_ant_apertura_ant_tipoestudiociclo` (`TIPCICLOP_Codigo`),
  KEY `FK_ant_apertura_ant_aula` (`AULAP_Codigo`),
  KEY `FK_ant_apertura_ant_turno` (`TURNOP_Codigo`),
  KEY `FK_ant_apertura_ant_modulo` (`MODULOP_Codigo`),
  CONSTRAINT `FK_ant_apertura_ant_aula` FOREIGN KEY (`AULAP_Codigo`) REFERENCES `ant_aula` (`AULAP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ant_apertura_ant_ciclo` FOREIGN KEY (`CICLOP_Codigo`) REFERENCES `ant_ciclo` (`CICLOP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ant_apertura_ant_modulo` FOREIGN KEY (`MODULOP_Codigo`) REFERENCES `ant_modulo` (`MODULOP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ant_apertura_ant_tipoestudiociclo` FOREIGN KEY (`TIPCICLOP_Codigo`) REFERENCES `ant_tipoestudiociclo` (`TIPCICLOP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ant_apertura_ant_turno` FOREIGN KEY (`TURNOP_Codigo`) REFERENCES `ant_turno` (`TURNOP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_apertura: ~51 rows (approximately)
/*!40000 ALTER TABLE `ant_apertura` DISABLE KEYS */;
INSERT INTO `ant_apertura` (`APERTUP_Codigo`, `CICLOP_Codigo`, `TIPCICLOP_Codigo`, `AULAP_Codigo`, `TURNOP_Codigo`, `MODULOP_Codigo`, `APERTUC_Descripcion`, `APERTUC_Observacion`, `APERTUC_FlagEstado`, `APERTUC_Fecha`, `APERTUC_FechaModificacion`, `APERTUC_FechaRegistro`) VALUES
	(4, 1, 3, 43, 1, 1, '', NULL, '1', '2016-02-19', NULL, '2016-02-18 23:59:43'),
	(5, 1, 3, 37, 1, 1, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:00:36'),
	(6, 1, 3, 38, 1, 1, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:03:03'),
	(7, 1, 3, 36, 1, 1, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:03:53'),
	(8, 1, 3, 17, 1, 1, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:04:41'),
	(9, 1, 3, 5, 1, 1, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:06:11'),
	(10, 1, 3, 35, 1, 1, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:06:48'),
	(11, 1, 3, 6, 1, 1, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:07:59'),
	(12, 1, 3, 42, 1, 1, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:08:43'),
	(13, 1, 3, 45, 1, 1, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:09:21'),
	(14, 1, 3, 29, 1, 1, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:10:07'),
	(15, 1, 3, 31, 1, 1, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:10:47'),
	(16, 1, 3, 30, 1, 1, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:11:24'),
	(17, 1, 3, 44, 1, 1, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:12:10'),
	(18, 1, 3, 4, 1, 1, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:12:47'),
	(19, 1, 3, 7, 1, 2, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:13:59'),
	(20, 1, 3, 40, 1, 2, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:15:38'),
	(21, 1, 3, 33, 1, 2, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:17:05'),
	(22, 1, 3, 39, 1, 2, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:17:40'),
	(23, 1, 3, 14, 1, 2, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:18:16'),
	(24, 1, 3, 47, 1, 2, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:18:53'),
	(25, 1, 3, 8, 1, 2, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:19:53'),
	(26, 1, 3, 16, 1, 2, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:20:57'),
	(27, 1, 3, 15, 1, 2, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:21:29'),
	(28, 1, 3, 32, 1, 2, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:22:03'),
	(29, 1, 3, 48, 1, 2, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:22:35'),
	(30, 1, 3, 41, 1, 2, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:23:07'),
	(31, 1, 3, 46, 1, 2, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:23:36'),
	(32, 1, 3, 34, 1, 2, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:24:11'),
	(37, 1, 3, 9, 1, 2, '', NULL, '1', '2016-02-19', NULL, '2016-02-19 00:25:05'),
	(38, 1, 1, 2, 1, 5, '', NULL, '1', '2016-02-21', NULL, '2016-02-20 23:09:15'),
	(39, 1, 3, 29, 2, 3, '', NULL, '1', '2016-02-21', NULL, '2016-02-21 01:03:58'),
	(40, 1, 3, 37, 2, 3, '', NULL, '1', '2016-02-21', NULL, '2016-02-21 01:04:44'),
	(41, 1, 3, 35, 2, 3, '', NULL, '1', '2016-02-21', NULL, '2016-02-21 01:05:33'),
	(42, 1, 3, 38, 2, 3, '', NULL, '1', '2016-02-21', NULL, '2016-02-21 01:06:12'),
	(43, 1, 3, 31, 2, 3, '', NULL, '1', '2016-02-21', NULL, '2016-02-21 01:06:47'),
	(44, 1, 3, 42, 2, 3, '', NULL, '1', '2016-02-21', NULL, '2016-02-21 01:07:22'),
	(45, 1, 3, 16, 2, 4, '', NULL, '1', '2016-02-21', NULL, '2016-02-21 01:14:30'),
	(46, 1, 3, 34, 2, 4, '', NULL, '1', '2016-02-21', NULL, '2016-02-21 01:15:03'),
	(47, 1, 3, 32, 2, 4, '', NULL, '1', '2016-02-21', NULL, '2016-02-21 01:15:46'),
	(48, 1, 3, 14, 2, 4, '', NULL, '1', '2016-02-21', NULL, '2016-02-21 01:18:21'),
	(49, 1, 3, 41, 2, 4, '', NULL, '1', '2016-02-21', NULL, '2016-02-21 01:19:07'),
	(50, 1, 3, 15, 2, 4, '', NULL, '1', '2016-02-21', NULL, '2016-02-21 01:19:57'),
	(51, 1, 1, 17, 2, 8, '', NULL, '1', '2016-02-21', NULL, '2016-02-21 01:21:02'),
	(52, 1, 4, 11, 1, 9, '', NULL, '1', '2016-02-22', NULL, '2016-02-21 23:37:57'),
	(53, 1, 4, 3, 1, 10, '', NULL, '1', '2016-02-22', NULL, '2016-02-21 23:39:12'),
	(54, 1, 4, 44, 2, 11, '', NULL, '1', '2016-02-22', NULL, '2016-02-21 23:41:41'),
	(55, 1, 12, 1, 2, 14, '', NULL, '1', '2016-02-26', NULL, '2016-02-25 21:31:49'),
	(56, 1, 11, 10, 2, 15, '', NULL, '1', '2016-02-26', NULL, '2016-02-25 21:32:52'),
	(57, 1, 5, 48, 2, 13, '', NULL, '1', '2016-02-26', NULL, '2016-02-25 21:34:15'),
	(58, 1, 1, 10, 1, 5, '', NULL, '1', '2016-03-05', NULL, '2016-03-04 23:21:31');
/*!40000 ALTER TABLE `ant_apertura` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_asignacion
CREATE TABLE IF NOT EXISTS `ant_asignacion` (
  `ASIGP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `PROP_Codigo` int(11) NOT NULL DEFAULT '0',
  `CICLOP_Codigo` int(11) NOT NULL DEFAULT '0',
  `course_id` int(11) NOT NULL DEFAULT '0',
  `SUBCURSOP_Codigo` int(11) NOT NULL DEFAULT '0',
  `ASIGC_Grupo` char(1) DEFAULT NULL COMMENT '1,2',
  `ASIGC_Descripcion` varchar(250) NOT NULL DEFAULT '0',
  `ASIGC_Fecha` datetime NOT NULL,
  `ASIGC_FlagEstado` char(1) NOT NULL DEFAULT '1',
  `ASIGC_FechaModificacion` datetime DEFAULT NULL,
  `ASIGC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ASIGP_Codigo`),
  KEY `FK_asignacion_profesor` (`PROP_Codigo`),
  KEY `FK_asignacion_ciclo` (`CICLOP_Codigo`),
  KEY `FK_ant_asignacion_course` (`course_id`),
  CONSTRAINT `FK_ant_asignacion_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_asignacion_ciclo` FOREIGN KEY (`CICLOP_Codigo`) REFERENCES `ant_ciclo` (`CICLOP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_asignacion_profesor` FOREIGN KEY (`PROP_Codigo`) REFERENCES `ant_profesor` (`PROP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_asignacion: ~58 rows (approximately)
/*!40000 ALTER TABLE `ant_asignacion` DISABLE KEYS */;
INSERT INTO `ant_asignacion` (`ASIGP_Codigo`, `PROP_Codigo`, `CICLOP_Codigo`, `course_id`, `SUBCURSOP_Codigo`, `ASIGC_Grupo`, `ASIGC_Descripcion`, `ASIGC_Fecha`, `ASIGC_FlagEstado`, `ASIGC_FechaModificacion`, `ASIGC_FechaRegistro`) VALUES
	(43, 148, 1, 149, 0, '0', '0', '2015-12-24 00:00:00', '1', NULL, '2015-12-24 14:26:27'),
	(44, 148, 1, 156, 0, '0', '0', '2015-12-24 00:00:00', '1', NULL, '2015-12-24 14:30:55'),
	(46, 148, 1, 212, 0, '0', '0', '2015-12-24 00:00:00', '1', NULL, '2015-12-24 14:39:40'),
	(48, 153, 1, 198, 0, '0', '0', '2015-12-28 00:00:00', '1', NULL, '2015-12-28 12:50:48'),
	(49, 136, 1, 148, 0, '0', '0', '2016-01-22 00:00:00', '1', NULL, '2016-01-21 22:10:50'),
	(50, 126, 1, 204, 0, '0', '0', '2016-01-22 00:00:00', '1', NULL, '2016-01-21 22:11:29'),
	(52, 149, 1, 184, 0, '0', '0', '2016-01-27 00:00:00', '1', NULL, '2016-01-26 18:53:37'),
	(53, 129, 1, 191, 0, '0', '0', '2016-01-27 00:00:00', '1', NULL, '2016-01-26 18:54:02'),
	(54, 102, 1, 24, 0, '0', '0', '2016-02-26 00:00:00', '1', NULL, '2016-02-25 23:21:03'),
	(55, 102, 1, 129, 0, '0', '0', '2016-02-26 00:00:00', '1', NULL, '2016-02-25 23:30:23'),
	(56, 103, 1, 31, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 21:06:18'),
	(57, 103, 1, 136, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 21:08:33'),
	(58, 103, 1, 241, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 21:10:50'),
	(59, 103, 1, 283, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 21:14:14'),
	(60, 104, 1, 38, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 21:24:02'),
	(61, 104, 1, 143, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 21:25:08'),
	(62, 104, 1, 353, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 21:29:32'),
	(63, 105, 1, 45, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 21:35:14'),
	(64, 105, 1, 150, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 21:36:21'),
	(65, 107, 1, 52, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 21:37:45'),
	(66, 107, 1, 157, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 21:39:07'),
	(67, 107, 1, 346, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 22:03:48'),
	(68, 108, 1, 164, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 22:09:52'),
	(69, 108, 1, 360, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 22:12:11'),
	(70, 109, 1, 234, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 22:18:12'),
	(71, 110, 1, 59, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 22:19:41'),
	(72, 110, 1, 171, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 22:20:50'),
	(73, 110, 1, 290, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 22:22:09'),
	(74, 111, 1, 66, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 22:26:08'),
	(75, 111, 1, 178, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 22:26:52'),
	(76, 112, 1, 297, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 22:38:05'),
	(77, 112, 1, 332, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 22:39:54'),
	(78, 113, 1, 73, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 22:45:47'),
	(79, 113, 1, 185, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 22:47:01'),
	(80, 114, 1, 80, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 22:49:26'),
	(81, 114, 1, 192, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 22:50:25'),
	(82, 114, 1, 248, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 22:51:54'),
	(83, 115, 1, 87, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 23:23:29'),
	(84, 115, 1, 199, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 23:24:38'),
	(85, 115, 1, 255, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 23:26:05'),
	(86, 116, 1, 94, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 23:27:57'),
	(87, 116, 1, 206, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 23:28:58'),
	(88, 117, 1, 262, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-02-29 23:42:30'),
	(89, 118, 1, 101, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-03-01 00:07:26'),
	(90, 118, 1, 213, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-03-01 00:08:29'),
	(91, 118, 1, 325, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-03-01 00:10:24'),
	(92, 119, 1, 304, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-03-01 00:11:28'),
	(93, 120, 1, 108, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-03-01 00:13:36'),
	(94, 120, 1, 220, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-03-01 00:14:40'),
	(95, 120, 1, 269, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-03-01 00:16:00'),
	(96, 121, 1, 311, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-03-01 00:17:20'),
	(97, 122, 1, 276, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-03-01 00:18:25'),
	(98, 122, 1, 318, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-03-01 00:19:15'),
	(99, 122, 1, 367, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-03-01 00:21:01'),
	(100, 123, 1, 115, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-03-01 00:21:59'),
	(101, 123, 1, 339, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-03-01 00:23:04'),
	(102, 124, 1, 122, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-03-01 00:24:05'),
	(103, 124, 1, 227, 0, '0', '0', '2016-03-01 00:00:00', '1', NULL, '2016-03-01 00:24:58');
/*!40000 ALTER TABLE `ant_asignacion` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_asignaciondetalle
CREATE TABLE IF NOT EXISTS `ant_asignaciondetalle` (
  `ASIGDETP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `ASIGP_Codigo` int(11) NOT NULL DEFAULT '0',
  `ASIGDETC_Dia` int(1) NOT NULL DEFAULT '0',
  `ASIGDETC_Desde` time DEFAULT NULL,
  `ASIGDETC_Hasta` time DEFAULT NULL,
  `ASIGDETC_FechaModificacion` datetime DEFAULT NULL,
  `ASIGDETC_FechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ASIGDETP_Codigo`),
  KEY `FK_asignaciondetalle_asignacion` (`ASIGP_Codigo`),
  CONSTRAINT `FK_asignaciondetalle_asignacion` FOREIGN KEY (`ASIGP_Codigo`) REFERENCES `ant_asignacion` (`ASIGP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_asignaciondetalle: ~116 rows (approximately)
/*!40000 ALTER TABLE `ant_asignaciondetalle` DISABLE KEYS */;
INSERT INTO `ant_asignaciondetalle` (`ASIGDETP_Codigo`, `ASIGP_Codigo`, `ASIGDETC_Dia`, `ASIGDETC_Desde`, `ASIGDETC_Hasta`, `ASIGDETC_FechaModificacion`, `ASIGDETC_FechaRegistro`) VALUES
	(67, 43, 1, '10:20:00', '12:10:00', NULL, '2016-01-21 22:09:42'),
	(68, 43, 3, '10:20:00', '12:10:00', NULL, '2016-01-21 22:09:42'),
	(69, 44, 1, '10:20:00', '12:10:00', NULL, '2016-01-21 22:09:57'),
	(70, 44, 3, '10:20:00', '12:10:00', NULL, '2016-01-21 22:09:57'),
	(71, 46, 1, '08:10:00', '10:00:00', NULL, '2016-01-21 22:10:04'),
	(72, 46, 3, '08:10:00', '10:00:00', NULL, '2016-01-21 22:10:04'),
	(73, 48, 1, '07:30:00', '10:00:00', NULL, '2016-01-21 22:10:12'),
	(74, 48, 3, '07:30:00', '10:00:00', NULL, '2016-01-21 22:10:12'),
	(77, 49, 3, '08:10:00', '10:00:00', NULL, '2016-01-21 22:10:50'),
	(78, 49, 5, '08:10:00', '10:00:00', NULL, '2016-01-21 22:10:50'),
	(79, 50, 3, '10:20:00', '12:10:00', NULL, '2016-01-21 22:11:29'),
	(80, 50, 5, '10:20:00', '12:10:00', NULL, '2016-01-21 22:11:29'),
	(83, 52, 1, '08:10:00', '10:00:00', NULL, '2016-01-26 18:53:37'),
	(84, 52, 3, '08:10:00', '10:00:00', NULL, '2016-01-26 18:53:38'),
	(85, 53, 1, '08:10:00', '10:00:00', NULL, '2016-01-26 18:54:02'),
	(86, 53, 3, '08:10:00', '10:00:00', NULL, '2016-01-26 18:54:02'),
	(87, 54, 2, '07:30:00', '10:00:00', NULL, '2016-02-25 23:21:03'),
	(88, 54, 4, '07:30:00', '10:00:00', NULL, '2016-02-25 23:21:03'),
	(89, 55, 2, '10:20:00', '12:50:00', NULL, '2016-02-25 23:30:23'),
	(90, 55, 4, '10:20:00', '12:50:00', NULL, '2016-02-25 23:30:23'),
	(91, 56, 2, '07:30:00', '10:00:00', NULL, '2016-02-29 21:06:18'),
	(92, 56, 4, '07:30:00', '10:00:00', NULL, '2016-02-29 21:06:18'),
	(93, 57, 2, '10:20:00', '12:50:00', NULL, '2016-02-29 21:08:33'),
	(94, 57, 4, '10:20:00', '12:50:00', NULL, '2016-02-29 21:08:33'),
	(95, 58, 2, '15:20:00', '17:50:00', NULL, '2016-02-29 21:10:50'),
	(96, 58, 4, '15:20:00', '17:50:00', NULL, '2016-02-29 21:10:51'),
	(97, 59, 2, '18:10:00', '20:40:00', NULL, '2016-02-29 21:14:14'),
	(98, 59, 4, '18:10:00', '20:40:00', NULL, '2016-02-29 21:14:14'),
	(99, 60, 2, '07:30:00', '10:00:00', NULL, '2016-02-29 21:24:02'),
	(100, 60, 4, '07:30:00', '10:00:00', NULL, '2016-02-29 21:24:02'),
	(101, 61, 2, '10:20:00', '12:50:00', NULL, '2016-02-29 21:25:08'),
	(102, 61, 4, '10:20:00', '12:50:00', NULL, '2016-02-29 21:25:09'),
	(103, 62, 1, '16:10:00', '18:55:00', NULL, '2016-02-29 21:29:32'),
	(104, 62, 3, '16:10:00', '18:55:00', NULL, '2016-02-29 21:29:32'),
	(105, 63, 2, '07:30:00', '10:00:00', NULL, '2016-02-29 21:35:14'),
	(106, 63, 4, '07:30:00', '10:00:00', NULL, '2016-02-29 21:35:14'),
	(107, 64, 2, '10:20:00', '12:50:00', NULL, '2016-02-29 21:36:21'),
	(108, 64, 4, '10:20:00', '12:50:00', NULL, '2016-02-29 21:36:23'),
	(109, 65, 2, '07:30:00', '10:00:00', NULL, '2016-02-29 21:37:46'),
	(110, 65, 4, '07:30:00', '10:00:00', NULL, '2016-02-29 21:37:46'),
	(111, 66, 2, '10:20:00', '12:50:00', NULL, '2016-02-29 21:39:07'),
	(112, 66, 4, '10:20:00', '12:50:00', NULL, '2016-02-29 21:39:07'),
	(113, 67, 1, '14:25:00', '17:50:00', NULL, '2016-02-29 22:03:48'),
	(114, 67, 5, '18:10:00', '20:15:00', NULL, '2016-02-29 22:03:48'),
	(115, 68, 2, '10:20:00', '12:50:00', NULL, '2016-02-29 22:09:52'),
	(116, 68, 4, '10:20:00', '12:50:00', NULL, '2016-02-29 22:09:53'),
	(117, 69, 1, '16:10:00', '18:55:00', NULL, '2016-02-29 22:12:11'),
	(118, 69, 3, '16:10:00', '18:55:00', NULL, '2016-02-29 22:12:11'),
	(119, 70, 2, '08:10:00', '10:00:00', NULL, '2016-02-29 22:18:12'),
	(120, 70, 4, '08:10:00', '10:00:00', NULL, '2016-02-29 22:18:12'),
	(121, 71, 2, '07:30:00', '10:00:00', NULL, '2016-02-29 22:19:42'),
	(122, 71, 4, '07:30:00', '10:00:00', NULL, '2016-02-29 22:19:42'),
	(123, 72, 2, '10:20:00', '12:50:00', NULL, '2016-02-29 22:20:50'),
	(124, 72, 4, '10:20:00', '12:50:00', NULL, '2016-02-29 22:20:51'),
	(125, 73, 2, '18:10:00', '20:40:00', NULL, '2016-02-29 22:22:09'),
	(126, 73, 4, '18:10:00', '20:40:00', NULL, '2016-02-29 22:22:09'),
	(127, 74, 2, '07:30:00', '10:00:00', NULL, '2016-02-29 22:26:08'),
	(128, 74, 4, '07:30:00', '10:00:00', NULL, '2016-02-29 22:26:08'),
	(129, 75, 2, '10:20:00', '12:50:00', NULL, '2016-02-29 22:26:53'),
	(130, 75, 4, '10:20:00', '12:50:00', NULL, '2016-02-29 22:26:53'),
	(131, 76, 2, '18:10:00', '20:40:00', NULL, '2016-02-29 22:38:05'),
	(132, 76, 4, '18:10:00', '20:40:00', NULL, '2016-02-29 22:38:05'),
	(133, 77, 1, '07:30:00', '10:00:00', NULL, '2016-02-29 22:39:55'),
	(134, 77, 5, '10:20:00', '13:20:00', NULL, '2016-02-29 22:39:56'),
	(135, 78, 2, '07:30:00', '10:00:00', NULL, '2016-02-29 22:45:47'),
	(136, 78, 4, '07:30:00', '10:00:00', NULL, '2016-02-29 22:45:47'),
	(137, 79, 2, '10:20:00', '12:50:00', NULL, '2016-02-29 22:47:01'),
	(138, 79, 4, '10:20:00', '12:50:00', NULL, '2016-02-29 22:47:01'),
	(139, 80, 2, '07:30:00', '10:00:00', NULL, '2016-02-29 22:49:26'),
	(140, 80, 4, '07:30:00', '10:00:00', NULL, '2016-02-29 22:49:26'),
	(141, 81, 2, '10:20:00', '12:50:00', NULL, '2016-02-29 22:50:26'),
	(142, 81, 4, '10:20:00', '12:50:00', NULL, '2016-02-29 22:50:26'),
	(143, 82, 2, '15:20:00', '17:50:00', NULL, '2016-02-29 22:51:54'),
	(144, 82, 4, '15:20:00', '17:50:00', NULL, '2016-02-29 22:51:55'),
	(145, 83, 2, '07:30:00', '10:00:00', NULL, '2016-02-29 23:23:29'),
	(146, 83, 4, '07:30:00', '10:00:00', NULL, '2016-02-29 23:23:29'),
	(147, 84, 2, '10:20:00', '12:50:00', NULL, '2016-02-29 23:24:38'),
	(148, 84, 4, '10:20:00', '12:50:00', NULL, '2016-02-29 23:24:38'),
	(149, 85, 2, '15:20:00', '17:50:00', NULL, '2016-02-29 23:26:05'),
	(150, 85, 4, '15:20:00', '17:50:00', NULL, '2016-02-29 23:26:05'),
	(151, 86, 2, '07:30:00', '10:00:00', NULL, '2016-02-29 23:27:57'),
	(152, 86, 4, '07:30:00', '10:00:00', NULL, '2016-02-29 23:27:57'),
	(153, 87, 2, '10:20:00', '12:50:00', NULL, '2016-02-29 23:28:58'),
	(154, 87, 4, '10:20:00', '12:50:00', NULL, '2016-02-29 23:28:58'),
	(155, 88, 2, '15:20:00', '17:50:00', NULL, '2016-02-29 23:42:30'),
	(156, 88, 4, '15:20:00', '17:50:00', NULL, '2016-02-29 23:42:32'),
	(157, 89, 2, '07:30:00', '10:00:00', NULL, '2016-03-01 00:07:26'),
	(158, 89, 4, '07:30:00', '10:00:00', NULL, '2016-03-01 00:07:26'),
	(159, 90, 2, '10:20:00', '12:50:00', NULL, '2016-03-01 00:08:30'),
	(160, 90, 4, '10:20:00', '12:50:00', NULL, '2016-03-01 00:08:30'),
	(161, 91, 2, '18:10:00', '20:00:00', NULL, '2016-03-01 00:10:24'),
	(162, 91, 4, '18:10:00', '20:00:00', NULL, '2016-03-01 00:10:24'),
	(163, 92, 2, '18:10:00', '20:40:00', NULL, '2016-03-01 00:11:28'),
	(164, 92, 4, '18:10:00', '20:40:00', NULL, '2016-03-01 00:11:28'),
	(165, 93, 2, '07:30:00', '10:00:00', NULL, '2016-03-01 00:13:36'),
	(166, 93, 4, '07:30:00', '10:00:00', NULL, '2016-03-01 00:13:36'),
	(167, 94, 2, '10:20:00', '12:50:00', NULL, '2016-03-01 00:14:41'),
	(168, 94, 4, '10:20:00', '12:50:00', NULL, '2016-03-01 00:14:42'),
	(169, 95, 2, '15:20:00', '17:50:00', NULL, '2016-03-01 00:16:00'),
	(170, 95, 4, '15:20:00', '17:50:00', NULL, '2016-03-01 00:16:00'),
	(171, 96, 2, '18:10:00', '20:40:00', NULL, '2016-03-01 00:17:21'),
	(172, 96, 4, '18:10:00', '20:40:00', NULL, '2016-03-01 00:17:21'),
	(173, 97, 2, '15:20:00', '17:50:00', NULL, '2016-03-01 00:18:25'),
	(174, 97, 4, '15:20:00', '17:50:00', NULL, '2016-03-01 00:18:25'),
	(175, 98, 2, '18:10:00', '20:40:00', NULL, '2016-03-01 00:19:15'),
	(176, 98, 4, '18:10:00', '20:40:00', NULL, '2016-03-01 00:19:15'),
	(177, 99, 3, '14:00:00', '15:50:00', NULL, '2016-03-01 00:21:01'),
	(178, 99, 3, '16:10:00', '18:55:00', NULL, '2016-03-01 00:21:01'),
	(179, 100, 2, '07:30:00', '10:00:00', NULL, '2016-03-01 00:22:00'),
	(180, 100, 4, '07:30:00', '10:00:00', NULL, '2016-03-01 00:22:00'),
	(181, 101, 1, '10:20:00', '13:20:00', NULL, '2016-03-01 00:23:04'),
	(182, 101, 5, '07:30:00', '10:00:00', NULL, '2016-03-01 00:23:05'),
	(183, 102, 2, '07:30:00', '10:00:00', NULL, '2016-03-01 00:24:06'),
	(184, 102, 4, '07:30:00', '10:00:00', NULL, '2016-03-01 00:24:06'),
	(185, 103, 2, '10:20:00', '12:50:00', NULL, '2016-03-01 00:24:58'),
	(186, 103, 4, '10:20:00', '12:50:00', NULL, '2016-03-01 00:24:58');
/*!40000 ALTER TABLE `ant_asignaciondetalle` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_aula
CREATE TABLE IF NOT EXISTS `ant_aula` (
  `AULAP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `LOCP_Codigo` int(11) NOT NULL,
  `AULAC_Nombre` varchar(100) DEFAULT NULL,
  `AULAC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`AULAP_Codigo`),
  UNIQUE KEY `AULAC_Nombre` (`AULAC_Nombre`),
  KEY `FK_aula_local` (`LOCP_Codigo`),
  CONSTRAINT `FK_aula_local` FOREIGN KEY (`LOCP_Codigo`) REFERENCES `ant_local` (`LOCP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_aula: ~37 rows (approximately)
/*!40000 ALTER TABLE `ant_aula` DISABLE KEYS */;
INSERT INTO `ant_aula` (`AULAP_Codigo`, `LOCP_Codigo`, `AULAC_Nombre`, `AULAC_FechaRegistro`) VALUES
	(1, 1, 'D101', '2015-05-16 12:46:43'),
	(2, 1, 'D102', '2015-05-16 12:46:58'),
	(3, 1, 'D103', '2015-05-16 12:47:11'),
	(4, 1, 'D104', '2015-05-16 12:47:20'),
	(5, 1, 'D201', '2015-05-16 12:47:30'),
	(6, 1, 'D202', '2015-05-16 12:47:40'),
	(7, 1, 'D203', '2015-05-16 12:47:49'),
	(8, 1, 'D204', '2015-05-16 12:47:58'),
	(9, 1, 'D205', '2015-05-16 12:48:06'),
	(10, 1, 'D206', '2015-05-16 12:48:14'),
	(11, 2, 'A101', '2015-05-16 12:48:30'),
	(14, 2, 'B101', '2015-05-16 12:49:06'),
	(15, 2, 'B102', '2015-05-16 12:49:14'),
	(16, 2, 'B103', '2015-05-16 12:49:23'),
	(17, 2, 'C101', '2015-05-16 12:49:32'),
	(18, 2, 'C102', '2015-05-16 12:49:40'),
	(21, 2, 'C103', '2016-02-13 12:35:54'),
	(29, 2, 'A201', '2016-02-18 23:36:24'),
	(30, 2, 'A202', '2016-02-18 23:36:49'),
	(31, 2, 'A203', '2016-02-18 23:37:11'),
	(32, 2, 'B201', '2016-02-18 23:37:43'),
	(33, 2, 'B202', '2016-02-18 23:37:58'),
	(34, 2, 'B203', '2016-02-18 23:38:30'),
	(35, 2, 'A301', '2016-02-18 23:50:49'),
	(36, 2, 'A302', '2016-02-18 23:51:09'),
	(37, 2, 'A303', '2016-02-18 23:51:24'),
	(38, 2, 'A304', '2016-02-18 23:52:02'),
	(39, 2, 'B301', '2016-02-18 23:52:36'),
	(40, 2, 'B302', '2016-02-18 23:52:56'),
	(41, 2, 'B303', '2016-02-18 23:53:12'),
	(42, 2, 'A401', '2016-02-18 23:54:16'),
	(43, 2, 'A402', '2016-02-18 23:54:27'),
	(44, 2, 'A403', '2016-02-18 23:54:38'),
	(45, 2, 'A404', '2016-02-18 23:55:05'),
	(46, 2, 'B401', '2016-02-18 23:55:29'),
	(47, 2, 'B402', '2016-02-18 23:55:48'),
	(48, 2, 'B403', '2016-02-18 23:55:58');
/*!40000 ALTER TABLE `ant_aula` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_ciclo
CREATE TABLE IF NOT EXISTS `ant_ciclo` (
  `CICLOP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `TIPOCICLOP_Codigo` int(11) NOT NULL,
  `COMPC_Nombre` varchar(250) NOT NULL,
  `CICC_FECHA_INICIO` date NOT NULL,
  `CICC_FECHA_FIN` date NOT NULL,
  `CICC_DESCRIPCION` varchar(255) NOT NULL,
  `COMPC_FlagEstado` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`CICLOP_Codigo`),
  KEY `FK_ciclo_tipociclo` (`TIPOCICLOP_Codigo`),
  CONSTRAINT `FK_ciclo_tipociclo` FOREIGN KEY (`TIPOCICLOP_Codigo`) REFERENCES `ant_tipociclo` (`TIPOCICLOP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table cepreadm.ant_ciclo: ~3 rows (approximately)
/*!40000 ALTER TABLE `ant_ciclo` DISABLE KEYS */;
INSERT INTO `ant_ciclo` (`CICLOP_Codigo`, `TIPOCICLOP_Codigo`, `COMPC_Nombre`, `CICC_FECHA_INICIO`, `CICC_FECHA_FIN`, `CICC_DESCRIPCION`, `COMPC_FlagEstado`) VALUES
	(1, 1, 'ADMISION 2016-1', '0000-00-00', '1990-05-11', 'CICLO DE INICIO DEL AÃ±O', 1),
	(2, 2, 'ADMISION 2015-2', '2015-05-06', '2015-10-25', 'CICLO DE FIN DE AÃ±O', 2),
	(3, 1, 'ADMISION 2016-2', '2015-02-11', '2015-02-11', '', 1);
/*!40000 ALTER TABLE `ant_ciclo` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_conferencia
CREATE TABLE IF NOT EXISTS `ant_conferencia` (
  `CONFERP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `PROP_Codigo` int(11) NOT NULL,
  `CONFERC_Nombre` varchar(50) DEFAULT NULL,
  `CONFERC_Descripcion` varchar(150) DEFAULT NULL,
  `CONFERC_Fecha` date DEFAULT '0000-00-00',
  `CONFERC_FechaModificacion` datetime DEFAULT NULL,
  `CONFERC_FechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CONFERP_Codigo`),
  KEY `FK_conferencia_profesor` (`PROP_Codigo`),
  CONSTRAINT `FK_conferencia_profesor` FOREIGN KEY (`PROP_Codigo`) REFERENCES `ant_profesor` (`PROP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_conferencia: ~0 rows (approximately)
/*!40000 ALTER TABLE `ant_conferencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_conferencia` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_curso
CREATE TABLE IF NOT EXISTS `ant_curso` (
  `PROD_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `TIPPROD_Codigo` int(11) NOT NULL,
  `PROD_Nombre` varchar(100) DEFAULT NULL,
  `PROD_DescripcionBreve` varchar(200) DEFAULT NULL,
  `PROD_EspecificacionPDF` varchar(100) DEFAULT NULL,
  `PROD_Comentario` text,
  `PROD_Cantidad` double DEFAULT NULL,
  `PROD_Intentos` double DEFAULT NULL,
  `PROD_Tiempo` double DEFAULT NULL,
  `PROD_TiempoExamen` double NOT NULL DEFAULT '30',
  `PROD_Puntaje` double DEFAULT '14',
  `PROD_Imagen` varchar(150) DEFAULT NULL,
  `PROD_Silabus` varchar(150) DEFAULT NULL,
  `PROD_FlagEstado` char(1) NOT NULL DEFAULT '1',
  `PROD_FechaModificacion` datetime DEFAULT NULL,
  `PROD_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PROD_Codigo`),
  KEY `FK_cji_producto_cji_tipoproducto` (`TIPPROD_Codigo`),
  CONSTRAINT `FK_cji_producto_cji_tipoproducto` FOREIGN KEY (`TIPPROD_Codigo`) REFERENCES `ant_tipoproducto` (`TIPPROD_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- Dumping data for table cepreadm.ant_curso: ~7 rows (approximately)
/*!40000 ALTER TABLE `ant_curso` DISABLE KEYS */;
INSERT INTO `ant_curso` (`PROD_Codigo`, `TIPPROD_Codigo`, `PROD_Nombre`, `PROD_DescripcionBreve`, `PROD_EspecificacionPDF`, `PROD_Comentario`, `PROD_Cantidad`, `PROD_Intentos`, `PROD_Tiempo`, `PROD_TiempoExamen`, `PROD_Puntaje`, `PROD_Imagen`, `PROD_Silabus`, `PROD_FlagEstado`, `PROD_FechaModificacion`, `PROD_FechaRegistro`) VALUES
	(5, 1, 'Trigonometria', '', '0', '0', 88, 3, 2, 5, 14, 'erp.png', 'capitulo06.pdf', '1', '2015-10-16 16:24:21', '2011-01-18 07:20:19'),
	(92, 1, 'Fisica', 'EDWARD 2', '0', '0', 3, 5, 5, 30, 14, NULL, NULL, '1', '2015-10-16 16:23:57', '2015-03-25 18:01:35'),
	(93, 1, 'Geometria', 'EDWARD', '0', '0', 4, 5, 5, 30, 14, NULL, NULL, '1', '2015-10-16 16:24:05', '2015-03-25 18:02:55'),
	(95, 1, 'Aritmetica', 'SDFASDF', '0', '0', 12, 5, 5, 30, 14, NULL, NULL, '1', '2015-10-16 16:23:49', '2015-07-24 23:55:23'),
	(96, 1, 'Algebra', '', '0', '0', 11, 5, 5, 30, 14, NULL, '123.docx', '1', '2016-03-04 00:48:40', '2015-07-24 23:55:41'),
	(97, 1, 'Quimica', '', '0', '0', 0, 5, 5, 30, 14, NULL, NULL, '1', '2015-10-16 16:24:12', '2015-10-16 09:20:50'),
	(98, 4, 'Humanidades', '', '0', '0', 0, 5, 5, 30, 14, NULL, NULL, '1', NULL, '2015-10-16 09:24:30');
/*!40000 ALTER TABLE `ant_curso` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_cursociclo
CREATE TABLE IF NOT EXISTS `ant_cursociclo` (
  `CURSOCIP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `PROD_Codigo` int(11) NOT NULL DEFAULT '0',
  `CICLOP_Codigo` int(11) NOT NULL DEFAULT '0',
  `CURSOCIC_FlagEstado` char(1) NOT NULL DEFAULT '1',
  `CURSOCIC_FechaModificacion` datetime DEFAULT NULL,
  `CURSOCIC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CURSOCIP_Codigo`),
  UNIQUE KEY `PROD_Codigo_CICLOP_Codigo` (`PROD_Codigo`,`CICLOP_Codigo`),
  KEY `FK_cursociclo_ciclo` (`CICLOP_Codigo`),
  CONSTRAINT `FK_cursociclo_ciclo` FOREIGN KEY (`CICLOP_Codigo`) REFERENCES `ant_ciclo` (`CICLOP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_cursociclo_curso` FOREIGN KEY (`PROD_Codigo`) REFERENCES `ant_curso` (`PROD_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_cursociclo: ~9 rows (approximately)
/*!40000 ALTER TABLE `ant_cursociclo` DISABLE KEYS */;
INSERT INTO `ant_cursociclo` (`CURSOCIP_Codigo`, `PROD_Codigo`, `CICLOP_Codigo`, `CURSOCIC_FlagEstado`, `CURSOCIC_FechaModificacion`, `CURSOCIC_FechaRegistro`) VALUES
	(4, 93, 1, '1', NULL, '2015-08-12 12:08:18'),
	(5, 96, 1, '1', '2015-08-12 15:23:50', '2015-08-12 12:08:33'),
	(6, 95, 1, '1', NULL, '2015-08-12 12:08:43'),
	(7, 5, 1, '1', NULL, '2015-08-12 12:09:17'),
	(8, 92, 1, '1', NULL, '2015-08-12 14:03:10'),
	(10, 92, 2, '1', NULL, '2015-08-12 15:10:46'),
	(12, 5, 2, '1', NULL, '2015-08-12 15:11:07'),
	(13, 98, 1, '1', NULL, '2015-12-01 00:13:15'),
	(14, 97, 1, '1', NULL, '2015-12-24 13:00:29');
/*!40000 ALTER TABLE `ant_cursociclo` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_cursotipoestudio
CREATE TABLE IF NOT EXISTS `ant_cursotipoestudio` (
  `CURSOTIPOP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `CURSOCIP_Codigo` int(11) NOT NULL DEFAULT '0',
  `TIPP_Codigo` int(11) NOT NULL DEFAULT '0',
  `CURSOTIPOC_FlagEstado` char(1) NOT NULL DEFAULT '1',
  `CURSOTIPOC_FechaModificacion` datetime DEFAULT NULL,
  `CURSOTIPOC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CURSOTIPOP_Codigo`),
  KEY `FK_cursotipoestudio_cursociclo` (`CURSOCIP_Codigo`),
  KEY `FK_cursotipoestudio_tipoestudio` (`TIPP_Codigo`),
  CONSTRAINT `FK_cursotipoestudio_cursociclo` FOREIGN KEY (`CURSOCIP_Codigo`) REFERENCES `ant_cursociclo` (`CURSOCIP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_cursotipoestudio_tipoestudio` FOREIGN KEY (`TIPP_Codigo`) REFERENCES `ant_tipoestudio` (`TIPP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_cursotipoestudio: ~0 rows (approximately)
/*!40000 ALTER TABLE `ant_cursotipoestudio` DISABLE KEYS */;
INSERT INTO `ant_cursotipoestudio` (`CURSOTIPOP_Codigo`, `CURSOCIP_Codigo`, `TIPP_Codigo`, `CURSOTIPOC_FlagEstado`, `CURSOTIPOC_FechaModificacion`, `CURSOTIPOC_FechaRegistro`) VALUES
	(1, 7, 5, '1', NULL, '2015-12-26 08:22:56');
/*!40000 ALTER TABLE `ant_cursotipoestudio` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_empresa
CREATE TABLE IF NOT EXISTS `ant_empresa` (
  `EMPRP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `SECTORP_Codigo` int(11) NOT NULL,
  `EMPRC_Ruc` char(11) DEFAULT NULL,
  `EMPRC_RazonSocial` varchar(150) DEFAULT NULL,
  `EMPRC_Telefono` varchar(50) DEFAULT NULL,
  `EMPRC_Movil` varchar(50) DEFAULT NULL,
  `EMPRC_Fax` varchar(50) DEFAULT NULL,
  `EMPRC_Web` varchar(250) DEFAULT NULL,
  `EMPRC_Email` varchar(250) DEFAULT NULL,
  `EMPRC_Direccion` varchar(300) DEFAULT NULL,
  `EMPRC_FlagEstado` char(1) DEFAULT '1',
  `EMPRC_FechaModificacion` datetime DEFAULT NULL,
  `EMPRC_FechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`EMPRP_Codigo`),
  KEY `FK_empresa_sector` (`SECTORP_Codigo`),
  CONSTRAINT `FK_empresa_sector` FOREIGN KEY (`SECTORP_Codigo`) REFERENCES `ant_sector` (`SECTORP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_empresa: ~2 rows (approximately)
/*!40000 ALTER TABLE `ant_empresa` DISABLE KEYS */;
INSERT INTO `ant_empresa` (`EMPRP_Codigo`, `SECTORP_Codigo`, `EMPRC_Ruc`, `EMPRC_RazonSocial`, `EMPRC_Telefono`, `EMPRC_Movil`, `EMPRC_Fax`, `EMPRC_Web`, `EMPRC_Email`, `EMPRC_Direccion`, `EMPRC_FlagEstado`, `EMPRC_FechaModificacion`, `EMPRC_FechaRegistro`) VALUES
	(1, 1, '43242342342', 'Ferreteria de los olvisos', '567567', '3424', '234234', '234234', '234', '4234234234', '1', NULL, '2011-01-09 15:30:59'),
	(2, 1, NULL, 'EMPRESA NO REGISTRADA', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2010-12-17 04:34:56');
/*!40000 ALTER TABLE `ant_empresa` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_estudios
CREATE TABLE IF NOT EXISTS `ant_estudios` (
  `ESTUDIOP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `PROP_Codigo` int(11) NOT NULL DEFAULT '0',
  `UNIVP_Codigo` int(11) NOT NULL DEFAULT '0',
  `GRADOP_Codigo` int(11) NOT NULL DEFAULT '0',
  `ESTUDIOC_Descripcion` varchar(150) DEFAULT NULL,
  `ESTUDIOC_Estado` char(1) NOT NULL DEFAULT '1' COMMENT '1:Culminado, 2:En curso,3:Abandonado',
  `ESTUDIOC_FechaInicio` date DEFAULT '0000-00-00',
  `ESTUDIOC_FechaFin` date DEFAULT '0000-00-00',
  `ESTUDIOC_FechaModificacion` datetime DEFAULT NULL,
  `ESTUDIOC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ESTUDIOP_Codigo`),
  KEY `FK_estudios_universidad` (`UNIVP_Codigo`),
  KEY `FK_estudios_grado` (`GRADOP_Codigo`),
  KEY `FK_estudios_profesor` (`PROP_Codigo`),
  CONSTRAINT `FK_estudios_grado` FOREIGN KEY (`GRADOP_Codigo`) REFERENCES `ant_grado` (`GRADOP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_estudios_profesor` FOREIGN KEY (`PROP_Codigo`) REFERENCES `ant_profesor` (`PROP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_estudios_universidad` FOREIGN KEY (`UNIVP_Codigo`) REFERENCES `ant_universidad` (`UNIVP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_estudios: ~0 rows (approximately)
/*!40000 ALTER TABLE `ant_estudios` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_estudios` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_estudiosidiomas
CREATE TABLE IF NOT EXISTS `ant_estudiosidiomas` (
  `ESTIDIOMP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `PROP_Codigo` int(11) NOT NULL DEFAULT '0',
  `IDIOMP_Codigo` int(11) NOT NULL DEFAULT '0',
  `ESTIDIOMC_Descripcion` varchar(150) DEFAULT NULL,
  `ESTIDIOMC_Nivel` char(1) NOT NULL DEFAULT '1',
  `ESTIDIOMC_Estado` char(1) DEFAULT '1' COMMENT '1:Culminado, 2:En curso,3:Abandonado',
  `ESTIDIOMC_FechaInicio` date DEFAULT '0000-00-00',
  `ESTIDIOMC_FechaFin` date DEFAULT '0000-00-00',
  `ESTIDIOMC_FechaModificacion` datetime DEFAULT NULL,
  `ESTIDIOMC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ESTIDIOMP_Codigo`),
  KEY `FK_estudiosidiomas_profesor` (`PROP_Codigo`),
  KEY `FK_estudiosidiomas_idiomas` (`IDIOMP_Codigo`),
  CONSTRAINT `FK_estudiosidiomas_idiomas` FOREIGN KEY (`IDIOMP_Codigo`) REFERENCES `ant_idiomas` (`IDIOMP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_estudiosidiomas_profesor` FOREIGN KEY (`PROP_Codigo`) REFERENCES `ant_profesor` (`PROP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_estudiosidiomas: ~0 rows (approximately)
/*!40000 ALTER TABLE `ant_estudiosidiomas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_estudiosidiomas` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_experiencia
CREATE TABLE IF NOT EXISTS `ant_experiencia` (
  `EXPERP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `UNIVP_Codigo` int(11) NOT NULL DEFAULT '0',
  `PROP_Codigo` int(11) NOT NULL DEFAULT '0',
  `EXPERPC_Cargo` varchar(150) DEFAULT NULL,
  `EXPERPC_Empresa` varchar(150) DEFAULT NULL,
  `EXPERPC_Curso` varchar(150) DEFAULT NULL,
  `EXPERPC_FechaInicio` date DEFAULT '0000-00-00',
  `EXPERPC_FechaFin` date DEFAULT '0000-00-00',
  `EXPERPC_FechaModificacion` datetime DEFAULT NULL,
  `EXPERPC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`EXPERP_Codigo`),
  KEY `FK_experiencia_profesor` (`PROP_Codigo`),
  KEY `FK_experiencia_universidad` (`UNIVP_Codigo`),
  CONSTRAINT `FK_experiencia_profesor` FOREIGN KEY (`PROP_Codigo`) REFERENCES `ant_profesor` (`PROP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_experiencia_universidad` FOREIGN KEY (`UNIVP_Codigo`) REFERENCES `ant_universidad` (`UNIVP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_experiencia: ~0 rows (approximately)
/*!40000 ALTER TABLE `ant_experiencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_experiencia` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_grado
CREATE TABLE IF NOT EXISTS `ant_grado` (
  `GRADOP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `GRADOC_Descripcion` varchar(150) NOT NULL,
  `GRADOC_FechaModificacion` datetime DEFAULT NULL,
  `GRADOC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`GRADOP_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_grado: ~5 rows (approximately)
/*!40000 ALTER TABLE `ant_grado` DISABLE KEYS */;
INSERT INTO `ant_grado` (`GRADOP_Codigo`, `GRADOC_Descripcion`, `GRADOC_FechaModificacion`, `GRADOC_FechaRegistro`) VALUES
	(1, 'Bachiller', NULL, '2015-10-26 07:29:06'),
	(2, 'Titulado', NULL, '2015-10-26 07:29:11'),
	(3, 'Maestria', NULL, '2015-10-26 07:29:16'),
	(4, 'Doctorado', NULL, '2015-10-26 07:29:21'),
	(5, 'Licenciado', NULL, '2015-10-26 08:48:33');
/*!40000 ALTER TABLE `ant_grado` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_idiomas
CREATE TABLE IF NOT EXISTS `ant_idiomas` (
  `IDIOMP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `IDIOMC_Descripcion` varchar(150) DEFAULT NULL,
  `IDIOMC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`IDIOMP_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_idiomas: ~6 rows (approximately)
/*!40000 ALTER TABLE `ant_idiomas` DISABLE KEYS */;
INSERT INTO `ant_idiomas` (`IDIOMP_Codigo`, `IDIOMC_Descripcion`, `IDIOMC_FechaRegistro`) VALUES
	(1, 'Ingles', '2015-10-29 07:57:58'),
	(2, 'Frances', '2015-10-29 07:58:03'),
	(3, 'Aleman', '2015-10-29 07:58:14'),
	(4, 'Portugues', '2015-10-29 07:58:23'),
	(5, 'Italiano', '2015-10-29 07:58:28'),
	(6, 'Otros', '2015-10-29 07:59:02');
/*!40000 ALTER TABLE `ant_idiomas` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_local
CREATE TABLE IF NOT EXISTS `ant_local` (
  `LOCP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `LOCC_Nombre` varchar(150) NOT NULL,
  `LOCC_Direccion` varchar(250) NOT NULL,
  `LOCC_Telefono` varchar(250) NOT NULL,
  `LOCC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`LOCP_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_local: ~3 rows (approximately)
/*!40000 ALTER TABLE `ant_local` DISABLE KEYS */;
INSERT INTO `ant_local` (`LOCP_Codigo`, `LOCC_Nombre`, `LOCC_Direccion`, `LOCC_Telefono`, `LOCC_FechaRegistro`) VALUES
	(1, 'Sede Sucre', 'AVENIDA SUCRE 1239', '4543278', '2015-05-16 12:45:22'),
	(2, 'Sede Javier Prado', 'Javier Prado 321', '5640904', '2015-05-16 12:45:32'),
	(4, 'Sede Los Olivos', 'Mz R Lote 50 Los Nisperos', '47646', '2015-07-23 16:34:35');
/*!40000 ALTER TABLE `ant_local` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_matricula
CREATE TABLE IF NOT EXISTS `ant_matricula` (
  `ORDENP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `CICLOP_Codigo` int(11) DEFAULT NULL,
  `AULAP_Codigo` int(11) NOT NULL,
  `TIPP_Codigo` int(11) NOT NULL,
  `ALUMP_Codigo` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ORDENC_Observacion` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `ORDENC_Fecot` date DEFAULT NULL,
  `ORDENC_FlagEstado` char(1) NOT NULL DEFAULT '1',
  `ORDENC_FechaModificacion` datetime DEFAULT NULL,
  `ORDENC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ORDENP_Codigo`),
  KEY `FK_orden_compania` (`CICLOP_Codigo`),
  KEY `FK_orden_aula` (`AULAP_Codigo`),
  KEY `FK_matricula_tipoestudio` (`TIPP_Codigo`),
  KEY `FK_ant_matricula_ant_alumno` (`ALUMP_Codigo`),
  CONSTRAINT `FK_ant_matricula_ant_alumno` FOREIGN KEY (`ALUMP_Codigo`) REFERENCES `ant_alumno` (`ALUMP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_matricula_ciclo` FOREIGN KEY (`CICLOP_Codigo`) REFERENCES `ant_ciclo` (`CICLOP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_matricula_tipoestudio` FOREIGN KEY (`TIPP_Codigo`) REFERENCES `ant_tipoestudio` (`TIPP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_orden_aula` FOREIGN KEY (`AULAP_Codigo`) REFERENCES `ant_aula` (`AULAP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cepreadm.ant_matricula: ~0 rows (approximately)
/*!40000 ALTER TABLE `ant_matricula` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_matricula` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_menu
CREATE TABLE IF NOT EXISTS `ant_menu` (
  `MENU_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `MENU_Codigo_Padre` int(11) NOT NULL DEFAULT '0',
  `MENU_Descripcion` varchar(150) DEFAULT NULL,
  `MENU_Comentario` varchar(250) DEFAULT NULL,
  `MENU_Url` varchar(250) DEFAULT '#',
  `MENU_Orden` int(1) DEFAULT '1',
  `MENU_Imagen` varchar(100) DEFAULT NULL,
  `MENU_FlagEstado` char(1) DEFAULT '1',
  `MENU_FechaModificacion` datetime DEFAULT NULL,
  `MENU_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`MENU_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- Dumping data for table cepreadm.ant_menu: ~40 rows (approximately)
/*!40000 ALTER TABLE `ant_menu` DISABLE KEYS */;
INSERT INTO `ant_menu` (`MENU_Codigo`, `MENU_Codigo_Padre`, `MENU_Descripcion`, `MENU_Comentario`, `MENU_Url`, `MENU_Orden`, `MENU_Imagen`, `MENU_FlagEstado`, `MENU_FechaModificacion`, `MENU_FechaRegistro`) VALUES
	(2, 58, 'Maestro de Alumnos', 'Aquí se podrán subir las imágenes o aniamciones que serán contenidas en la marquesina', 'index.php/ventas/alumno/listar', 1, 'alumno.jpg', '1', NULL, '2015-08-03 20:06:30'),
	(3, 1, 'MANTENIMIENTOS', '', 'index.php/almacen/curso/listar', 1, 'libros.jpg', '1', NULL, '2015-06-20 22:04:31'),
	(4, 1, 'PROCESOS', '', 'index.php/ventas/orden/listar', 2, 'matri.jpg', '1', NULL, '2015-08-12 15:34:09'),
	(22, 75, 'Maestro de Cursos', 'Maestro de Cursos', 'index.php/almacen/curso/listar', 1, '', '1', NULL, '2015-08-11 08:27:54'),
	(48, 4, 'Matricula de alumnos', 'Matricula de alumnos', 'index.php/ventas/matricula/listar', 3, 'matri.jpg', '1', NULL, '2015-12-23 16:58:57'),
	(49, 4, 'Cargas de trabajo', 'Cargas de trabajo', 'index.php/ventas/asignacion/listar', 2, NULL, '1', NULL, '2015-12-23 16:56:18'),
	(52, 3, 'Documentos', NULL, 'index.php/inicio/principal', 4, NULL, '1', NULL, '2015-08-12 15:35:34'),
	(53, 58, 'Maestro de Profesores', 'Tabla de Profesores', 'index.php/ventas/profesor/listar', 1, NULL, '1', NULL, '2015-08-03 20:06:22'),
	(55, 3, 'Ejemplo 1', 'Ejemplo 1', 'index.php/almacen/curso/listar', 1, NULL, '1', NULL, '2015-04-02 20:40:06'),
	(56, 3, 'Ejemplo 3', 'Ejemplo 3', 'index.php/almacen/curso/listar', 1, NULL, '1', NULL, '2015-08-05 11:48:18'),
	(57, 56, 'Ejemplo 5', 'Ejemplo 5', 'Ejemplo5', 1, NULL, '1', NULL, '2015-04-02 21:18:33'),
	(58, 3, 'Configuracion Personal', NULL, '#', 1, NULL, '1', NULL, '2015-08-03 20:05:22'),
	(59, 74, 'Maestro de Aulas', 'Maestro de Aulas', 'index.php/maestros/aula/listar', 6, NULL, '1', NULL, '2015-11-16 12:29:53'),
	(61, 74, 'Maestro de Locales', 'Maestro de Locales', 'index.php/maestros/local/listar', 5, NULL, '1', NULL, '2015-11-16 12:29:51'),
	(62, 74, 'Maestro de Ciclo', 'Maestro de Ciclo', 'index.php/maestros/ciclo/listar', 1, NULL, '1', NULL, '2015-10-16 12:43:26'),
	(63, 74, 'Tipo Estudio ', NULL, 'index.php/maestros/tipoestudio/listar', 2, NULL, '1', NULL, '2015-09-08 00:20:56'),
	(64, 1, 'REPORTES Y CONSULTAS', NULL, NULL, 3, NULL, '1', NULL, '2015-08-12 15:34:20'),
	(65, 2, 'Alumnos pequeños', NULL, NULL, 1, NULL, '1', NULL, '2015-06-20 23:06:16'),
	(66, 58, 'Maestro de Usuarios', 'Usuarios', 'index.php/seguridad/usuario/listar', 1, NULL, '1', NULL, '2015-08-03 20:05:56'),
	(67, 4, 'Reuniones de plana', 'Actas de reunion', 'index.php/ventas/acta/listar', 4, NULL, '1', NULL, '2015-12-23 16:56:29'),
	(68, 4, 'Tareas asignadas', 'Tareas asignadas', 'index.php/ventas/tarea/listar', 7, NULL, '1', NULL, '2015-12-23 16:56:56'),
	(69, 4, 'Vigilancia de practicas', 'Vigilancia de practicas', 'index.php/ventas/vigilancia/listar', 8, NULL, '1', NULL, '2015-12-23 16:57:32'),
	(70, 4, 'Tardanzas Reemplazos', 'Tardanzas Reemplazos', 'index.php/ventas/tardanza/listar', 9, NULL, '1', NULL, '2015-12-23 16:58:37'),
	(71, 4, 'Asistencia de alumnos', 'Asistencia de alumnos', 'index.php/ventas/asistencia/editar', 6, NULL, '1', NULL, '2015-12-23 16:56:47'),
	(72, 74, 'Maestro de Semana', 'Maestro de Semana', 'index.php/almacen/semana/listar', 4, NULL, '1', NULL, '2015-11-16 12:28:47'),
	(73, 75, 'Maestro de Temas', 'Maestro de Temas', 'index.php/almacen/tema/listar', 4, NULL, '1', NULL, '2015-08-12 15:29:17'),
	(74, 3, 'Configuracion Sistema', 'Configuracion Sistema', '#', 3, NULL, '1', NULL, '2015-08-12 15:35:19'),
	(75, 3, 'Configuracion Cursos', 'Configuracion Cursos', '#', 2, NULL, '1', NULL, '2015-08-12 15:35:17'),
	(76, 75, 'Maestro de Cursos Ciclo', 'Maestro de Cursos Ciclo', 'index.php/almacen/cursociclo/listar', 2, NULL, '1', NULL, '2015-08-12 15:28:56'),
	(77, 75, 'Maestro de Cursos Tipo', 'Maestro de Cursos Tipo', 'index.php/almacen/cursotipoestudio/listar', 3, NULL, '1', NULL, '2015-08-12 16:08:25'),
	(78, 74, 'Tipo Estudio por ciclo', NULL, 'index.php/maestros/tipoestudiociclo/listar', 3, NULL, '1', NULL, '2015-09-19 22:19:29'),
	(79, 74, 'Maestro de Empresas', 'Maestro de Empresas', 'index.php/maestros/empresa/listar', 7, NULL, '1', NULL, '2015-11-16 12:32:52'),
	(80, 74, 'Maestro de Sectores', 'Maestro de Sectores', 'index.php/maestros/sector/listar', 8, NULL, '1', NULL, '2015-11-16 12:33:31'),
	(81, 64, 'Seguimiento tareas', 'Seguimiento tareas', 'index.php/ventas/tarea/rpt_seguimiento_tareas', 1, NULL, '1', NULL, '2015-11-29 01:36:15'),
	(82, 4, 'Asistencia de profesores', 'Asistencia de profesores', '#', 5, NULL, '1', NULL, '2015-12-23 16:56:45'),
	(83, 4, 'Apertura de aulas', 'Apertura de aulas', 'index.php/ventas/apertura/listar', 1, NULL, '1', NULL, '2015-12-19 10:26:01'),
	(84, 64, 'Asignacion de aulas', 'Asignacion de aulas', 'index.php/ventas/asignacion/rpt_asignacion_aulas', 1, NULL, '1', NULL, '2016-01-04 16:49:16'),
	(85, 64, 'Horario por aula', 'Horario por aula', 'index.php/ventas/asignacion/rpt_horario_curso', 1, NULL, '1', NULL, '2016-01-22 01:28:24'),
	(86, 74, 'Maestro de Modulos', 'Maestro de Modulos', 'index.php/ventas/modulo/listar', 9, NULL, '1', NULL, '2016-01-15 22:26:06'),
	(87, 64, 'Problemas seminarios', 'Problemas seminarios', 'index.php/ventas/tarea/rpt_problemas_seminarios', 1, NULL, '1', NULL, '2016-01-26 19:21:41');
/*!40000 ALTER TABLE `ant_menu` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_modulo
CREATE TABLE IF NOT EXISTS `ant_modulo` (
  `MODULOP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `TURNOP_Codigo` int(11) NOT NULL,
  `TIPP_Codigo` int(11) NOT NULL,
  `MODULOC_Descripcion` varchar(250) DEFAULT NULL,
  `MODULOC_FechaModificacion` datetime DEFAULT NULL,
  `MODULOC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`MODULOP_Codigo`),
  KEY `FK_ant_modulo_ant_turno` (`TURNOP_Codigo`),
  KEY `FK_ant_modulo_ant_tipoestudio` (`TIPP_Codigo`),
  CONSTRAINT `FK_ant_modulo_ant_tipoestudio` FOREIGN KEY (`TIPP_Codigo`) REFERENCES `ant_tipoestudio` (`TIPP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ant_modulo_ant_turno` FOREIGN KEY (`TURNOP_Codigo`) REFERENCES `ant_turno` (`TURNOP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_modulo: ~15 rows (approximately)
/*!40000 ALTER TABLE `ant_modulo` DISABLE KEYS */;
INSERT INTO `ant_modulo` (`MODULOP_Codigo`, `TURNOP_Codigo`, `TIPP_Codigo`, `MODULOC_Descripcion`, `MODULOC_FechaModificacion`, `MODULOC_FechaRegistro`) VALUES
	(1, 1, 3, 'Modulo I', NULL, '2016-01-15 18:17:12'),
	(2, 1, 3, 'Modulo II', NULL, '2016-01-15 18:17:22'),
	(3, 2, 3, 'Modulo I', NULL, '2016-01-15 18:17:37'),
	(4, 2, 3, 'Modulo II', NULL, '2016-01-15 18:17:47'),
	(5, 1, 5, 'Modulo I', NULL, '2016-01-15 23:55:00'),
	(6, 1, 5, 'Modulo II', NULL, '2016-01-15 23:55:21'),
	(7, 2, 5, 'Modulo I', NULL, '2016-01-16 00:31:35'),
	(8, 2, 5, 'Modulo II', NULL, '2016-01-16 00:35:28'),
	(9, 1, 6, 'Modulo I', NULL, '2016-02-21 23:00:29'),
	(10, 1, 6, 'Modulo II', NULL, '2016-02-21 23:10:59'),
	(11, 2, 6, 'Modulo I', NULL, '2016-02-21 23:21:47'),
	(12, 2, 6, 'Modulo II', NULL, '2016-02-21 23:31:31'),
	(13, 2, 7, 'Modulo I', NULL, '2016-02-21 23:56:08'),
	(14, 2, 8, 'Modulo I', NULL, '2016-02-22 00:02:17'),
	(15, 2, 9, 'Modulo I', NULL, '2016-02-22 00:10:12');
/*!40000 ALTER TABLE `ant_modulo` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_modulodetalle
CREATE TABLE IF NOT EXISTS `ant_modulodetalle` (
  `MODULODETP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `MODULOP_Codigo` int(11) DEFAULT NULL,
  `PROD_Codigo` int(11) DEFAULT NULL,
  `MODULODETC_Dia` int(1) NOT NULL DEFAULT '0',
  `MODULODETC_Desde` time DEFAULT NULL,
  `MODULODETC_Hasta` time DEFAULT NULL,
  `MODULODETC_FechaModificacion` datetime DEFAULT NULL,
  `MODULODETC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`MODULODETP_Codigo`),
  KEY `FK_ant_modulodetalle_ant_modulo` (`MODULOP_Codigo`),
  KEY `FK_ant_modulodetalle_ant_curso` (`PROD_Codigo`),
  CONSTRAINT `FK_ant_modulodetalle_ant_curso` FOREIGN KEY (`PROD_Codigo`) REFERENCES `ant_curso` (`PROD_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ant_modulodetalle_ant_modulo` FOREIGN KEY (`MODULOP_Codigo`) REFERENCES `ant_modulo` (`MODULOP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_modulodetalle: ~198 rows (approximately)
/*!40000 ALTER TABLE `ant_modulodetalle` DISABLE KEYS */;
INSERT INTO `ant_modulodetalle` (`MODULODETP_Codigo`, `MODULOP_Codigo`, `PROD_Codigo`, `MODULODETC_Dia`, `MODULODETC_Desde`, `MODULODETC_Hasta`, `MODULODETC_FechaModificacion`, `MODULODETC_FechaRegistro`) VALUES
	(4, 5, 96, 1, '08:10:00', '10:00:00', NULL, '2016-01-16 00:14:46'),
	(5, 5, 5, 1, '10:20:00', '12:10:00', NULL, '2016-01-16 00:14:46'),
	(6, 5, 93, 2, '08:10:00', '10:00:00', NULL, '2016-01-16 00:14:46'),
	(7, 5, 92, 2, '10:20:00', '12:10:00', NULL, '2016-01-16 00:14:46'),
	(8, 5, 96, 3, '08:10:00', '10:00:00', NULL, '2016-01-16 00:18:17'),
	(9, 5, 95, 3, '10:20:00', '12:10:00', NULL, '2016-01-16 00:18:17'),
	(10, 5, 93, 4, '08:10:00', '10:00:00', NULL, '2016-01-16 00:18:17'),
	(11, 5, 92, 4, '10:20:00', '12:09:00', NULL, '2016-01-16 00:18:17'),
	(12, 5, 97, 5, '08:10:00', '10:00:00', NULL, '2016-01-16 00:18:17'),
	(13, 5, 95, 5, '10:20:00', '12:10:00', NULL, '2016-01-16 00:18:17'),
	(14, 5, 97, 6, '08:10:00', '10:00:00', NULL, '2016-01-16 00:18:17'),
	(15, 5, 5, 6, '10:20:00', '12:10:00', NULL, '2016-01-16 00:18:18'),
	(16, 6, 5, 1, '08:10:00', '10:00:00', NULL, '2016-01-16 00:26:05'),
	(17, 6, 96, 1, '10:20:00', '12:10:00', NULL, '2016-01-16 00:26:05'),
	(18, 6, 92, 2, '08:10:00', '10:00:00', NULL, '2016-01-16 00:26:05'),
	(19, 6, 93, 2, '10:20:00', '12:10:00', NULL, '2016-01-16 00:26:05'),
	(20, 6, 95, 3, '08:10:00', '10:00:00', NULL, '2016-01-16 00:26:06'),
	(21, 6, 96, 3, '10:20:00', '12:10:00', NULL, '2016-01-16 00:26:06'),
	(22, 6, 92, 4, '08:10:00', '10:00:00', NULL, '2016-01-16 00:26:06'),
	(23, 6, 93, 4, '10:20:00', '12:10:00', NULL, '2016-01-16 00:26:06'),
	(24, 6, 95, 5, '08:10:00', '10:00:00', NULL, '2016-01-16 00:26:06'),
	(25, 6, 97, 5, '10:20:00', '12:10:00', NULL, '2016-01-16 00:26:06'),
	(26, 6, 5, 6, '08:10:00', '10:00:00', NULL, '2016-01-16 00:26:06'),
	(27, 6, 97, 6, '10:20:00', '12:07:00', NULL, '2016-01-16 00:26:06'),
	(28, 7, 96, 1, '16:00:00', '17:50:00', NULL, '2016-01-16 00:31:35'),
	(29, 7, 5, 1, '18:10:00', '20:00:00', NULL, '2016-01-16 00:31:35'),
	(30, 7, 93, 2, '16:00:00', '17:50:00', NULL, '2016-01-16 00:31:35'),
	(31, 7, 92, 2, '18:10:00', '20:00:00', NULL, '2016-01-16 00:31:35'),
	(32, 7, 96, 3, '16:00:00', '17:50:00', NULL, '2016-01-16 00:31:35'),
	(33, 7, 95, 3, '18:10:00', '20:00:00', NULL, '2016-01-16 00:31:35'),
	(34, 7, 93, 4, '16:00:00', '17:50:00', NULL, '2016-01-16 00:31:35'),
	(35, 7, 92, 4, '18:10:00', '20:00:00', NULL, '2016-01-16 00:31:35'),
	(36, 7, 97, 5, '16:00:00', '17:50:00', NULL, '2016-01-16 00:31:35'),
	(37, 7, 95, 5, '18:10:00', '20:00:00', NULL, '2016-01-16 00:31:35'),
	(38, 7, 97, 6, '16:00:00', '17:50:00', NULL, '2016-01-16 00:31:35'),
	(39, 7, 5, 6, '18:10:00', '20:00:00', NULL, '2016-01-16 00:31:35'),
	(40, 8, 5, 1, '16:00:00', '17:50:00', NULL, '2016-01-16 00:35:28'),
	(41, 8, 96, 1, '18:10:00', '20:00:00', NULL, '2016-01-16 00:35:28'),
	(42, 8, 92, 2, '16:00:00', '17:50:00', NULL, '2016-01-16 00:35:28'),
	(43, 8, 93, 2, '18:10:00', '20:00:00', NULL, '2016-01-16 00:35:28'),
	(44, 8, 95, 3, '16:00:00', '17:50:00', NULL, '2016-01-16 00:35:28'),
	(45, 8, 96, 3, '18:10:00', '20:00:00', NULL, '2016-01-16 00:35:28'),
	(46, 8, 92, 4, '16:00:00', '17:50:00', NULL, '2016-01-16 00:35:28'),
	(47, 8, 93, 4, '18:10:00', '20:00:00', NULL, '2016-01-16 00:35:28'),
	(48, 8, 95, 5, '16:00:00', '17:50:00', NULL, '2016-01-16 00:35:29'),
	(49, 8, 97, 5, '18:10:00', '20:00:00', NULL, '2016-01-16 00:35:29'),
	(50, 8, 5, 6, '16:00:00', '17:50:00', NULL, '2016-01-16 00:35:29'),
	(51, 8, 97, 6, '18:10:00', '20:00:00', NULL, '2016-01-16 00:35:29'),
	(52, 1, 96, 1, '07:30:00', '10:00:00', NULL, '2016-01-16 00:41:32'),
	(53, 1, 5, 1, '10:20:00', '12:50:00', NULL, '2016-01-16 00:41:32'),
	(54, 1, 98, 1, '12:50:00', '13:45:00', NULL, '2016-01-16 00:41:32'),
	(55, 1, 93, 2, '07:30:00', '10:00:00', NULL, '2016-01-16 00:41:32'),
	(56, 1, 92, 2, '10:20:00', '12:50:00', NULL, '2016-01-16 00:41:32'),
	(57, 1, 98, 2, '12:50:00', '13:45:00', NULL, '2016-01-16 00:41:32'),
	(58, 1, 96, 3, '07:30:00', '10:00:00', NULL, '2016-01-16 00:41:32'),
	(59, 1, 95, 3, '10:20:00', '12:50:00', NULL, '2016-01-16 00:41:32'),
	(60, 1, 98, 3, '12:50:00', '13:45:00', NULL, '2016-01-16 00:41:32'),
	(61, 1, 93, 4, '07:30:00', '10:00:00', NULL, '2016-01-16 00:41:32'),
	(62, 1, 92, 4, '10:20:00', '12:50:00', NULL, '2016-01-16 00:41:32'),
	(63, 1, 98, 4, '12:50:00', '13:45:00', NULL, '2016-01-16 00:41:32'),
	(64, 1, 97, 5, '07:30:00', '10:00:00', NULL, '2016-01-16 00:41:32'),
	(65, 1, 95, 5, '10:20:00', '12:50:00', NULL, '2016-01-16 00:41:32'),
	(66, 1, 98, 5, '12:50:00', '13:45:00', NULL, '2016-01-16 00:41:33'),
	(67, 1, 97, 6, '07:30:00', '10:00:00', NULL, '2016-01-16 00:41:33'),
	(68, 1, 5, 6, '10:20:00', '12:47:00', NULL, '2016-01-16 00:41:33'),
	(69, 1, 98, 6, '12:50:00', '13:45:00', NULL, '2016-01-16 00:41:33'),
	(70, 2, 5, 1, '07:30:00', '10:00:00', NULL, '2016-01-16 00:47:59'),
	(71, 2, 96, 1, '10:20:00', '12:50:00', NULL, '2016-01-16 00:47:59'),
	(72, 2, 98, 1, '12:50:00', '13:45:00', NULL, '2016-01-16 00:47:59'),
	(73, 2, 92, 2, '07:30:00', '10:00:00', NULL, '2016-01-16 00:47:59'),
	(74, 2, 93, 2, '10:20:00', '12:50:00', NULL, '2016-01-16 00:47:59'),
	(75, 2, 98, 2, '12:50:00', '13:45:00', NULL, '2016-01-16 00:47:59'),
	(76, 2, 95, 3, '07:30:00', '10:00:00', NULL, '2016-01-16 00:47:59'),
	(77, 2, 96, 3, '10:20:00', '12:50:00', NULL, '2016-01-16 00:47:59'),
	(78, 2, 98, 3, '12:50:00', '13:45:00', NULL, '2016-01-16 00:47:59'),
	(79, 2, 92, 4, '07:30:00', '10:00:00', NULL, '2016-01-16 00:47:59'),
	(80, 2, 93, 4, '10:20:00', '12:50:00', NULL, '2016-01-16 00:47:59'),
	(81, 2, 98, 4, '12:50:00', '13:45:00', NULL, '2016-01-16 00:47:59'),
	(82, 2, 95, 5, '07:30:00', '10:00:00', NULL, '2016-01-16 00:47:59'),
	(83, 2, 97, 5, '10:20:00', '12:50:00', NULL, '2016-01-16 00:47:59'),
	(84, 2, 98, 5, '12:50:00', '13:45:00', NULL, '2016-01-16 00:47:59'),
	(85, 2, 5, 6, '07:30:00', '10:00:00', NULL, '2016-01-16 00:47:59'),
	(86, 2, 97, 6, '10:20:00', '12:50:00', NULL, '2016-01-16 00:47:59'),
	(87, 2, 98, 6, '12:50:00', '13:45:00', NULL, '2016-01-16 00:48:00'),
	(88, 3, 98, 1, '14:25:00', '15:20:00', NULL, '2016-01-16 00:54:11'),
	(89, 3, 96, 1, '15:20:00', '17:50:00', NULL, '2016-01-16 00:54:11'),
	(90, 3, 5, 1, '18:10:00', '20:40:00', NULL, '2016-01-16 00:54:11'),
	(91, 3, 98, 2, '14:25:00', '15:20:00', NULL, '2016-01-16 00:54:11'),
	(92, 3, 93, 2, '15:20:00', '17:50:00', NULL, '2016-01-16 00:54:11'),
	(93, 3, 92, 2, '18:10:00', '20:40:00', NULL, '2016-01-16 00:54:11'),
	(94, 3, 98, 3, '14:25:00', '15:20:00', NULL, '2016-01-16 00:54:11'),
	(95, 3, 96, 3, '15:20:00', '17:50:00', NULL, '2016-01-16 00:54:11'),
	(96, 3, 95, 3, '18:10:00', '20:40:00', NULL, '2016-01-16 00:54:11'),
	(97, 3, 98, 4, '14:25:00', '15:20:00', NULL, '2016-01-16 00:54:11'),
	(98, 3, 93, 4, '15:20:00', '17:50:00', NULL, '2016-01-16 00:54:11'),
	(99, 3, 92, 4, '18:10:00', '20:40:00', NULL, '2016-01-16 00:54:11'),
	(100, 3, 98, 5, '14:25:00', '15:20:00', NULL, '2016-01-16 00:54:11'),
	(101, 3, 97, 5, '15:20:00', '17:50:00', NULL, '2016-01-16 00:54:11'),
	(102, 3, 95, 5, '18:10:00', '20:40:00', NULL, '2016-01-16 00:54:11'),
	(103, 3, 98, 6, '14:25:00', '15:20:00', NULL, '2016-01-16 00:54:11'),
	(104, 3, 97, 6, '15:20:00', '17:50:00', NULL, '2016-01-16 00:54:11'),
	(105, 3, 5, 6, '18:10:00', '20:40:00', NULL, '2016-01-16 00:54:11'),
	(106, 4, 98, 1, '14:25:00', '15:20:00', NULL, '2016-01-16 01:01:54'),
	(107, 4, 5, 1, '15:20:00', '17:50:00', NULL, '2016-01-16 01:01:54'),
	(108, 4, 96, 1, '18:10:00', '20:40:00', NULL, '2016-01-16 01:01:54'),
	(109, 4, 98, 2, '14:25:00', '15:20:00', NULL, '2016-01-16 01:01:54'),
	(110, 4, 92, 2, '15:20:00', '17:50:00', NULL, '2016-01-16 01:01:55'),
	(111, 4, 93, 2, '18:10:00', '20:40:00', NULL, '2016-01-16 01:01:55'),
	(112, 4, 98, 3, '14:25:00', '15:20:00', NULL, '2016-01-16 01:01:55'),
	(113, 4, 95, 3, '15:20:00', '17:50:00', NULL, '2016-01-16 01:01:55'),
	(114, 4, 96, 3, '18:10:00', '20:40:00', NULL, '2016-01-16 01:01:55'),
	(115, 4, 98, 4, '14:25:00', '15:20:00', NULL, '2016-01-16 01:01:55'),
	(116, 4, 92, 4, '15:20:00', '17:50:00', NULL, '2016-01-16 01:01:55'),
	(117, 4, 93, 4, '18:10:00', '20:40:00', NULL, '2016-01-16 01:01:55'),
	(118, 4, 98, 5, '14:25:00', '15:20:00', NULL, '2016-01-16 01:01:55'),
	(119, 4, 95, 5, '15:20:00', '17:50:00', NULL, '2016-01-16 01:01:55'),
	(120, 4, 97, 5, '18:10:00', '20:40:00', NULL, '2016-01-16 01:01:55'),
	(121, 4, 98, 6, '14:25:00', '15:20:00', NULL, '2016-01-16 01:01:55'),
	(122, 4, 5, 6, '15:20:00', '17:50:00', NULL, '2016-01-16 01:01:55'),
	(123, 4, 97, 6, '18:10:00', '20:40:00', NULL, '2016-01-16 01:01:55'),
	(124, 9, 93, 1, '07:30:00', '10:00:00', NULL, '2016-02-21 23:00:30'),
	(125, 9, 97, 1, '10:20:00', '13:20:00', NULL, '2016-02-21 23:00:30'),
	(126, 9, 95, 2, '07:30:00', '10:00:00', NULL, '2016-02-21 23:00:30'),
	(127, 9, 5, 2, '10:20:00', '13:20:00', NULL, '2016-02-21 23:00:30'),
	(128, 9, 97, 3, '07:30:00', '10:00:00', NULL, '2016-02-21 23:00:30'),
	(129, 9, 92, 3, '10:20:00', '13:20:00', NULL, '2016-02-21 23:00:30'),
	(130, 9, 5, 4, '07:30:00', '10:00:00', NULL, '2016-02-21 23:00:30'),
	(131, 9, 96, 4, '10:20:00', '13:20:00', NULL, '2016-02-21 23:00:30'),
	(132, 9, 96, 5, '07:30:00', '10:00:00', NULL, '2016-02-21 23:00:30'),
	(133, 9, 93, 5, '10:20:00', '13:20:00', NULL, '2016-02-21 23:00:30'),
	(134, 9, 92, 6, '07:30:00', '10:00:00', NULL, '2016-02-21 23:00:30'),
	(135, 9, 95, 6, '10:20:00', '13:20:00', NULL, '2016-02-21 23:00:30'),
	(136, 10, 97, 1, '07:30:00', '10:00:00', NULL, '2016-02-21 23:10:59'),
	(137, 10, 93, 1, '10:20:00', '13:20:00', NULL, '2016-02-21 23:10:59'),
	(138, 10, 5, 2, '07:30:00', '10:00:00', NULL, '2016-02-21 23:10:59'),
	(139, 10, 95, 2, '10:20:00', '13:20:00', NULL, '2016-02-21 23:10:59'),
	(140, 10, 92, 3, '07:30:00', '10:00:00', NULL, '2016-02-21 23:11:00'),
	(141, 10, 97, 3, '10:20:00', '13:20:00', NULL, '2016-02-21 23:11:01'),
	(142, 10, 96, 4, '07:30:00', '10:00:00', NULL, '2016-02-21 23:11:01'),
	(143, 10, 5, 4, '10:20:00', '13:20:00', NULL, '2016-02-21 23:11:01'),
	(144, 10, 93, 5, '07:30:00', '10:00:00', NULL, '2016-02-21 23:11:01'),
	(145, 10, 96, 5, '10:20:00', '13:20:00', NULL, '2016-02-21 23:11:01'),
	(146, 10, 95, 6, '07:30:00', '10:00:00', NULL, '2016-02-21 23:11:01'),
	(147, 10, 92, 6, '10:20:00', '13:20:00', NULL, '2016-02-21 23:11:01'),
	(148, 11, 93, 1, '14:25:00', '17:50:00', NULL, '2016-02-21 23:21:47'),
	(149, 11, 97, 1, '18:10:00', '20:15:00', NULL, '2016-02-21 23:21:49'),
	(150, 11, 95, 2, '14:25:00', '17:50:00', NULL, '2016-02-21 23:21:49'),
	(151, 11, 5, 2, '18:10:00', '20:15:00', NULL, '2016-02-21 23:21:49'),
	(152, 11, 97, 3, '14:25:00', '17:50:00', NULL, '2016-02-21 23:21:49'),
	(153, 11, 92, 3, '18:10:00', '20:15:00', NULL, '2016-02-21 23:21:49'),
	(154, 11, 5, 4, '14:25:00', '17:50:00', NULL, '2016-02-21 23:21:49'),
	(155, 11, 96, 4, '18:10:00', '20:15:00', NULL, '2016-02-21 23:21:49'),
	(156, 11, 96, 5, '14:25:00', '17:50:00', NULL, '2016-02-21 23:21:49'),
	(157, 11, 93, 5, '18:10:00', '20:15:00', NULL, '2016-02-21 23:21:50'),
	(158, 11, 92, 6, '14:25:00', '17:50:00', NULL, '2016-02-21 23:21:50'),
	(159, 11, 95, 6, '18:10:00', '20:15:00', NULL, '2016-02-21 23:21:50'),
	(160, 12, 97, 1, '14:25:00', '17:50:00', NULL, '2016-02-21 23:31:31'),
	(161, 12, 93, 1, '18:10:00', '20:15:00', NULL, '2016-02-21 23:31:31'),
	(162, 12, 5, 2, '14:25:00', '17:50:00', NULL, '2016-02-21 23:31:32'),
	(163, 12, 95, 2, '18:10:00', '20:15:00', NULL, '2016-02-21 23:31:32'),
	(164, 12, 92, 3, '14:25:00', '17:50:00', NULL, '2016-02-21 23:31:32'),
	(165, 12, 97, 3, '18:10:00', '20:15:00', NULL, '2016-02-21 23:31:32'),
	(166, 12, 96, 4, '14:25:00', '17:50:00', NULL, '2016-02-21 23:31:32'),
	(167, 12, 5, 4, '18:10:00', '20:15:00', NULL, '2016-02-21 23:31:32'),
	(168, 12, 93, 5, '14:25:00', '17:50:00', NULL, '2016-02-21 23:31:32'),
	(169, 12, 96, 5, '18:10:00', '20:15:00', NULL, '2016-02-21 23:31:32'),
	(170, 12, 95, 6, '14:25:00', '17:50:00', NULL, '2016-02-21 23:31:32'),
	(171, 12, 92, 6, '18:10:00', '20:15:00', NULL, '2016-02-21 23:31:32'),
	(172, 13, 96, 1, '14:00:00', '15:50:00', NULL, '2016-02-21 23:56:09'),
	(173, 13, 97, 1, '16:10:00', '18:55:00', NULL, '2016-02-21 23:56:09'),
	(174, 13, 95, 2, '14:00:00', '15:50:00', NULL, '2016-02-21 23:56:09'),
	(175, 13, 95, 2, '16:10:00', '18:55:00', NULL, '2016-02-21 23:56:09'),
	(176, 13, 93, 3, '14:00:00', '15:50:00', NULL, '2016-02-21 23:56:10'),
	(177, 13, 93, 3, '16:10:00', '18:55:00', NULL, '2016-02-21 23:56:10'),
	(178, 13, 98, 4, '14:00:00', '15:50:00', NULL, '2016-02-21 23:56:10'),
	(179, 13, 97, 4, '16:10:00', '18:55:00', NULL, '2016-02-21 23:56:10'),
	(180, 13, 96, 5, '14:00:00', '15:50:00', NULL, '2016-02-21 23:56:10'),
	(181, 13, 96, 5, '16:10:00', '18:55:00', NULL, '2016-02-21 23:56:10'),
	(182, 14, 96, 1, '14:00:00', '15:50:00', NULL, '2016-02-22 00:02:18'),
	(183, 14, 93, 1, '16:10:00', '18:55:00', NULL, '2016-02-22 00:02:19'),
	(184, 14, 5, 2, '14:00:00', '15:50:00', NULL, '2016-02-22 00:02:19'),
	(185, 14, 95, 2, '16:10:00', '18:55:00', NULL, '2016-02-22 00:02:19'),
	(186, 14, 98, 3, '14:00:00', '15:50:00', NULL, '2016-02-22 00:02:19'),
	(187, 14, 93, 3, '16:10:00', '18:55:00', NULL, '2016-02-22 00:02:19'),
	(188, 14, 97, 4, '14:00:00', '15:50:00', NULL, '2016-02-22 00:02:19'),
	(189, 14, 97, 4, '16:10:00', '18:55:00', NULL, '2016-02-22 00:02:19'),
	(190, 14, 92, 5, '14:00:00', '15:50:00', NULL, '2016-02-22 00:02:19'),
	(191, 14, 92, 5, '16:10:00', '18:55:00', NULL, '2016-02-22 00:02:19'),
	(192, 15, 96, 1, '14:00:00', '15:50:00', NULL, '2016-02-22 00:10:12'),
	(193, 15, 93, 1, '16:10:00', '18:55:00', NULL, '2016-02-22 00:10:12'),
	(194, 15, 98, 2, '14:00:00', '15:50:00', NULL, '2016-02-22 00:10:12'),
	(195, 15, 5, 2, '16:10:00', '18:55:00', NULL, '2016-02-22 00:10:12'),
	(196, 15, 97, 3, '14:00:00', '15:50:00', NULL, '2016-02-22 00:10:12'),
	(197, 15, 93, 3, '16:10:00', '18:55:00', NULL, '2016-02-22 00:10:13'),
	(198, 15, 95, 4, '14:00:00', '15:50:00', NULL, '2016-02-22 00:10:13'),
	(199, 15, 5, 4, '16:10:00', '18:55:00', NULL, '2016-02-22 00:10:13'),
	(200, 15, 92, 5, '14:00:00', '15:50:00', NULL, '2016-02-22 00:10:13'),
	(201, 15, 92, 5, '16:10:00', '18:55:00', NULL, '2016-02-22 00:10:13');
/*!40000 ALTER TABLE `ant_modulodetalle` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_nacionalidad
CREATE TABLE IF NOT EXISTS `ant_nacionalidad` (
  `NACP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `COMPP_Codigo` int(11) DEFAULT NULL,
  `NACC_Descripcion` varchar(150) DEFAULT NULL,
  `NACC_FechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`NACP_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_nacionalidad: ~274 rows (approximately)
/*!40000 ALTER TABLE `ant_nacionalidad` DISABLE KEYS */;
INSERT INTO `ant_nacionalidad` (`NACP_Codigo`, `COMPP_Codigo`, `NACC_Descripcion`, `NACC_FechaRegistro`) VALUES
	(1, 1, 'BOUVET ISLAND', '2010-12-13 17:54:36'),
	(2, 1, 'COTE D IVOIRE', '2010-12-13 17:54:36'),
	(3, 1, 'FALKLAND ISLANDS (MALVINAS)', '2010-12-13 17:54:36'),
	(4, 1, 'FRANCE, METROPOLITAN', '2010-12-13 17:54:36'),
	(5, 1, 'FRENCH SOUTHERN TERRITORIES', '2010-12-13 17:54:36'),
	(6, 1, 'HEARD AND MC DONALD ISLANDS', '2010-12-13 17:54:36'),
	(7, 1, 'MAYOTTE', '2010-12-13 17:54:36'),
	(8, 1, 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', '2010-12-13 17:54:36'),
	(9, 1, 'SVALBARD AND JAN MAYEN ISLANDS', '2010-12-13 17:54:36'),
	(10, 1, 'UNITED STATES MINOR OUTLYING ISLANDS', '2010-12-13 17:54:36'),
	(11, 1, 'OTROS PAISES O LUGARES', '2010-12-13 17:54:36'),
	(12, 1, 'AFGANISTAN', '2010-12-13 17:54:36'),
	(13, 1, 'ALBANIA', '2010-12-13 17:54:36'),
	(14, 1, 'ALDERNEY', '2010-12-13 17:54:36'),
	(15, 1, 'ALEMANIA', '2010-12-13 17:54:36'),
	(16, 1, 'ARMENIA', '2010-12-13 17:54:36'),
	(17, 1, 'ARUBA', '2010-12-13 17:54:36'),
	(18, 1, 'ASCENCION', '2010-12-13 17:54:36'),
	(19, 1, 'BOSNIA-HERZEGOVINA', '2010-12-13 17:54:36'),
	(20, 1, 'BURKINA FASO', '2010-12-13 17:54:36'),
	(21, 1, 'ANDORRA', '2010-12-13 17:54:36'),
	(22, 1, 'ANGOLA', '2010-12-13 17:54:36'),
	(23, 1, 'ANGUILLA', '2010-12-13 17:54:36'),
	(24, 1, 'ANTIGUA Y BARBUDA', '2010-12-13 17:54:36'),
	(25, 1, 'ANTILLAS HOLANDESAS', '2010-12-13 17:54:36'),
	(26, 1, 'ARABIA SAUDITA', '2010-12-13 17:54:36'),
	(27, 1, 'ARGELIA', '2010-12-13 17:54:36'),
	(28, 1, 'ARGENTINA', '2010-12-13 17:54:36'),
	(29, 1, 'AUSTRALIA', '2010-12-13 17:54:36'),
	(30, 1, 'AUSTRIA', '2010-12-13 17:54:36'),
	(31, 1, 'AZERBAIJÁN', '2010-12-13 17:54:36'),
	(32, 1, 'BAHAMAS', '2010-12-13 17:54:36'),
	(33, 1, 'BAHREIN', '2010-12-13 17:54:36'),
	(34, 1, 'BANGLA DESH', '2010-12-13 17:54:36'),
	(35, 1, 'BARBADOS', '2010-12-13 17:54:36'),
	(36, 1, 'BÉLGICA', '2010-12-13 17:54:36'),
	(37, 1, 'BELICE', '2010-12-13 17:54:36'),
	(38, 1, 'BERMUDAS', '2010-12-13 17:54:36'),
	(39, 1, 'BELARUS', '2010-12-13 17:54:36'),
	(40, 1, 'MYANMAR', '2010-12-13 17:54:36'),
	(41, 1, 'BOLIVIA', '2010-12-13 17:54:36'),
	(42, 1, 'BOTSWANA', '2010-12-13 17:54:36'),
	(43, 1, 'BRASIL', '2010-12-13 17:54:36'),
	(44, 1, 'BRUNEI DARUSSALAM', '2010-12-13 17:54:36'),
	(45, 1, 'BULGARIA', '2010-12-13 17:54:36'),
	(46, 1, 'BURUNDI', '2010-12-13 17:54:36'),
	(47, 1, 'BUTÁN', '2010-12-13 17:54:36'),
	(48, 1, 'CABO VERDE', '2010-12-13 17:54:36'),
	(49, 1, 'CAIMÁN, ISLAS', '2010-12-13 17:54:36'),
	(50, 1, 'CAMBOYA', '2010-12-13 17:54:36'),
	(51, 1, 'CAMERÚN, REPUBLICA UNIDA DEL', '2010-12-13 17:54:36'),
	(52, 1, 'CAMPIONE D TALIA', '2010-12-13 17:54:36'),
	(53, 1, 'CANADÁ', '2010-12-13 17:54:36'),
	(54, 1, 'CANAL (NORMANDAS), ISLAS', '2010-12-13 17:54:36'),
	(55, 1, 'CANTÓN Y ENDERBURRY', '2010-12-13 17:54:36'),
	(56, 1, 'SANTA SEDE', '2010-12-13 17:54:36'),
	(57, 1, 'COCOS (KEELING),ISLAS', '2010-12-13 17:54:36'),
	(58, 1, 'COLOMBIA', '2010-12-13 17:54:36'),
	(59, 1, 'COMORAS', '2010-12-13 17:54:36'),
	(60, 1, 'CONGO', '2010-12-13 17:54:36'),
	(61, 1, 'COOK, ISLAS', '2010-12-13 17:54:36'),
	(62, 1, 'COREA (NORTE), REPUBLICA POPULAR DEMOCRATICA DE', '2010-12-13 17:54:36'),
	(63, 1, 'COREA (SUR), REPUBLICA DE', '2010-12-13 17:54:36'),
	(64, 1, 'COSTA DE MARFIL', '2010-12-13 17:54:36'),
	(65, 1, 'COSTA RICA', '2010-12-13 17:54:36'),
	(66, 1, 'CROACIA', '2010-12-13 17:54:36'),
	(67, 1, 'CUBA', '2010-12-13 17:54:36'),
	(68, 1, 'CHAD', '2010-12-13 17:54:36'),
	(69, 1, 'CHECOSLOVAQUIA', '2010-12-13 17:54:36'),
	(70, 1, 'CHILE', '2010-12-13 17:54:36'),
	(71, 1, 'CHINA', '2010-12-13 17:54:36'),
	(72, 1, 'TAIWAN (FORMOSA)', '2010-12-13 17:54:36'),
	(73, 1, 'CHIPRE', '2010-12-13 17:54:36'),
	(74, 1, 'BENIN', '2010-12-13 17:54:36'),
	(75, 1, 'DINAMARCA', '2010-12-13 17:54:36'),
	(76, 1, 'DOMINICA', '2010-12-13 17:54:36'),
	(77, 1, 'ECUADOR', '2010-12-13 17:54:36'),
	(78, 1, 'EGIPTO', '2010-12-13 17:54:36'),
	(79, 1, 'EL SALVADOR', '2010-12-13 17:54:36'),
	(80, 1, 'ERITREA', '2010-12-13 17:54:36'),
	(81, 1, 'EMIRATOS ARABES UNIDOS', '2010-12-13 17:54:36'),
	(82, 1, 'ESPANA', '2010-12-13 17:54:36'),
	(83, 1, 'ESLOVAQUIA', '2010-12-13 17:54:36'),
	(84, 1, 'ESLOVENIA', '2010-12-13 17:54:36'),
	(85, 1, 'ESTADOS UNIDOS', '2010-12-13 17:54:36'),
	(86, 1, 'ESTONIA', '2010-12-13 17:54:36'),
	(87, 1, 'ETIOPIA', '2010-12-13 17:54:36'),
	(88, 1, 'FEROE, ISLAS', '2010-12-13 17:54:36'),
	(89, 1, 'FILIPINAS', '2010-12-13 17:54:36'),
	(90, 1, 'FINLANDIA', '2010-12-13 17:54:36'),
	(91, 1, 'FRANCIA', '2010-12-13 17:54:36'),
	(92, 1, 'GABON', '2010-12-13 17:54:36'),
	(93, 1, 'GAMBIA', '2010-12-13 17:54:36'),
	(94, 1, 'GAZA Y JERICO', '2010-12-13 17:54:36'),
	(95, 1, 'GEORGIA', '2010-12-13 17:54:36'),
	(96, 1, 'GHANA', '2010-12-13 17:54:36'),
	(97, 1, 'GIBRALTAR', '2010-12-13 17:54:36'),
	(98, 1, 'GRANADA', '2010-12-13 17:54:36'),
	(99, 1, 'GRECIA', '2010-12-13 17:54:36'),
	(100, 1, 'GROENLANDIA', '2010-12-13 17:54:36'),
	(101, 1, 'GUADALUPE', '2010-12-13 17:54:36'),
	(102, 1, 'GUAM', '2010-12-13 17:54:36'),
	(103, 1, 'GUATEMALA', '2010-12-13 17:54:36'),
	(104, 1, 'GUAYANA FRANCESA', '2010-12-13 17:54:36'),
	(105, 1, 'GUERNSEY', '2010-12-13 17:54:36'),
	(106, 1, 'GUINEA', '2010-12-13 17:54:36'),
	(107, 1, 'GUINEA ECUATORIAL', '2010-12-13 17:54:36'),
	(108, 1, 'GUINEA-BISSAU', '2010-12-13 17:54:36'),
	(109, 1, 'GUYANA', '2010-12-13 17:54:36'),
	(110, 1, 'HAITI', '2010-12-13 17:54:36'),
	(111, 1, 'HONDURAS', '2010-12-13 17:54:36'),
	(112, 1, 'HONDURAS BRITANICAS', '2010-12-13 17:54:36'),
	(113, 1, 'HONG KONG', '2010-12-13 17:54:36'),
	(114, 1, 'HUNGRIA', '2010-12-13 17:54:36'),
	(115, 1, 'INDIA', '2010-12-13 17:54:36'),
	(116, 1, 'INDONESIA', '2010-12-13 17:54:36'),
	(117, 1, 'IRAK', '2010-12-13 17:54:36'),
	(118, 1, 'IRAN, REPUBLICA ISLAMICA DEL', '2010-12-13 17:54:36'),
	(119, 1, 'IRLANDA (EIRE)', '2010-12-13 17:54:36'),
	(120, 1, 'ISLA AZORES', '2010-12-13 17:54:36'),
	(121, 1, 'ISLA DEL MAN', '2010-12-13 17:54:36'),
	(122, 1, 'ISLANDIA', '2010-12-13 17:54:36'),
	(123, 1, 'ISLAS CANARIAS', '2010-12-13 17:54:36'),
	(124, 1, 'ISLAS DE CHRISTMAS', '2010-12-13 17:54:36'),
	(125, 1, 'ISLAS QESHM', '2010-12-13 17:54:36'),
	(126, 1, 'ISRAEL', '2010-12-13 17:54:36'),
	(127, 1, 'ITALIA', '2010-12-13 17:54:36'),
	(128, 1, 'JAMAICA', '2010-12-13 17:54:36'),
	(129, 1, 'JONSTON, ISLAS', '2010-12-13 17:54:36'),
	(130, 1, 'JAPON', '2010-12-13 17:54:36'),
	(131, 1, 'JERSEY', '2010-12-13 17:54:36'),
	(132, 1, 'JORDANIA', '2010-12-13 17:54:36'),
	(133, 1, 'KAZAJSTAN', '2010-12-13 17:54:36'),
	(134, 1, 'KENIA', '2010-12-13 17:54:36'),
	(135, 1, 'KIRIBATI', '2010-12-13 17:54:36'),
	(136, 1, 'KIRGUIZISTAN', '2010-12-13 17:54:36'),
	(137, 1, 'KUWAIT', '2010-12-13 17:54:36'),
	(138, 1, 'LABUN', '2010-12-13 17:54:36'),
	(139, 1, 'LAOS, REPUBLICA POPULAR DEMOCRATICA DE', '2010-12-13 17:54:36'),
	(140, 1, 'LESOTHO', '2010-12-13 17:54:36'),
	(141, 1, 'LETONIA', '2010-12-13 17:54:36'),
	(142, 1, 'LIBANO', '2010-12-13 17:54:36'),
	(143, 1, 'LIBERIA', '2010-12-13 17:54:36'),
	(144, 1, 'LIBIA', '2010-12-13 17:54:36'),
	(145, 1, 'LIECHTENSTEIN', '2010-12-13 17:54:36'),
	(146, 1, 'LITUANIA', '2010-12-13 17:54:36'),
	(147, 1, 'LUXEMBURGO', '2010-12-13 17:54:36'),
	(148, 1, 'MACAO', '2010-12-13 17:54:36'),
	(149, 1, 'MACEDONIA', '2010-12-13 17:54:36'),
	(150, 1, 'MADAGASCAR', '2010-12-13 17:54:36'),
	(151, 1, 'MADEIRA', '2010-12-13 17:54:36'),
	(152, 1, 'MALAYSIA', '2010-12-13 17:54:36'),
	(153, 1, 'MALAWI', '2010-12-13 17:54:36'),
	(154, 1, 'MALDIVAS', '2010-12-13 17:54:36'),
	(155, 1, 'MALI', '2010-12-13 17:54:36'),
	(156, 1, 'MALTA', '2010-12-13 17:54:36'),
	(157, 1, 'MARIANAS DEL NORTE, ISLAS', '2010-12-13 17:54:36'),
	(158, 1, 'MARSHALL, ISLAS', '2010-12-13 17:54:36'),
	(159, 1, 'MARRUECOS', '2010-12-13 17:54:36'),
	(160, 1, 'MARTINICA', '2010-12-13 17:54:36'),
	(161, 1, 'MAURICIO', '2010-12-13 17:54:36'),
	(162, 1, 'MAURITANIA', '2010-12-13 17:54:36'),
	(163, 1, 'MEXICO', '2010-12-13 17:54:36'),
	(164, 1, 'MICRONESIA, ESTADOS FEDERADOS DE', '2010-12-13 17:54:36'),
	(165, 1, 'MIDWAY ISLAS', '2010-12-13 17:54:36'),
	(166, 1, 'MOLDAVIA', '2010-12-13 17:54:36'),
	(167, 1, 'MONGOLIA', '2010-12-13 17:54:36'),
	(168, 1, 'MONACO', '2010-12-13 17:54:36'),
	(169, 1, 'MONTSERRAT, ISLA', '2010-12-13 17:54:36'),
	(170, 1, 'MOZAMBIQUE', '2010-12-13 17:54:36'),
	(171, 1, 'NAMIBIA', '2010-12-13 17:54:36'),
	(172, 1, 'NAURU', '2010-12-13 17:54:36'),
	(173, 1, 'NAVIDAD (CHRISTMAS), ISLA', '2010-12-13 17:54:36'),
	(174, 1, 'NEPAL', '2010-12-13 17:54:36'),
	(175, 1, 'NICARAGUA', '2010-12-13 17:54:36'),
	(176, 1, 'NIGER', '2010-12-13 17:54:36'),
	(177, 1, 'NIGERIA', '2010-12-13 17:54:36'),
	(178, 1, 'NIUE, ISLA', '2010-12-13 17:54:36'),
	(179, 1, 'NORFOLK, ISLA', '2010-12-13 17:54:36'),
	(180, 1, 'NORUEGA', '2010-12-13 17:54:36'),
	(181, 1, 'NUEVA CALEDONIA', '2010-12-13 17:54:36'),
	(182, 1, 'PAPUASIA NUEVA GUINEA', '2010-12-13 17:54:36'),
	(183, 1, 'NUEVA ZELANDA', '2010-12-13 17:54:36'),
	(184, 1, 'VANUATU', '2010-12-13 17:54:36'),
	(185, 1, 'OMAN', '2010-12-13 17:54:36'),
	(186, 1, 'PACIFICO, ISLAS DEL', '2010-12-13 17:54:36'),
	(187, 1, 'PAISES BAJOS', '2010-12-13 17:54:36'),
	(188, 1, 'PAKISTAN', '2010-12-13 17:54:36'),
	(189, 1, 'PALAU, ISLAS', '2010-12-13 17:54:36'),
	(190, 1, 'TERRITORIO AUTONOMO DE PALESTINA.', '2010-12-13 17:54:36'),
	(191, 1, 'PANAMA', '2010-12-13 17:54:36'),
	(192, 1, 'PARAGUAY', '2010-12-13 17:54:36'),
	(193, 1, 'PERÚ', '2010-12-13 17:54:36'),
	(194, 1, 'PITCAIRN, ISLA', '2010-12-13 17:54:36'),
	(195, 1, 'POLINESIA FRANCESA', '2010-12-13 17:54:36'),
	(196, 1, 'POLONIA', '2010-12-13 17:54:36'),
	(197, 1, 'PORTUGAL', '2010-12-13 17:54:36'),
	(198, 1, 'PUERTO RICO', '2010-12-13 17:54:36'),
	(199, 1, 'QATAR', '2010-12-13 17:54:36'),
	(200, 1, 'REINO UNIDO', '2010-12-13 17:54:36'),
	(201, 1, 'ESCOCIA', '2010-12-13 17:54:36'),
	(202, 1, 'REPUBLICA ARABE UNIDA', '2010-12-13 17:54:36'),
	(203, 1, 'REPUBLICA CENTROAFRICANA', '2010-12-13 17:54:36'),
	(204, 1, 'REPUBLICA CHECA', '2010-12-13 17:54:36'),
	(205, 1, 'REPUBLICA DE SWAZILANDIA', '2010-12-13 17:54:36'),
	(206, 1, 'REPUBLICA DE TUNEZ', '2010-12-13 17:54:36'),
	(207, 1, 'REPUBLICA DOMINICANA', '2010-12-13 17:54:36'),
	(208, 1, 'REUNION', '2010-12-13 17:54:36'),
	(209, 1, 'ZIMBABWE', '2010-12-13 17:54:36'),
	(210, 1, 'RUMANIA', '2010-12-13 17:54:36'),
	(211, 1, 'RUANDA', '2010-12-13 17:54:36'),
	(212, 1, 'RUSIA', '2010-12-13 17:54:36'),
	(213, 1, 'SALOMON, ISLAS', '2010-12-13 17:54:36'),
	(214, 1, 'SAHARA OCCIDENTAL', '2010-12-13 17:54:36'),
	(215, 1, 'SAMOA OCCIDENTAL', '2010-12-13 17:54:36'),
	(216, 1, 'SAMOA NORTEAMERICANA', '2010-12-13 17:54:36'),
	(217, 1, 'SAN CRISTOBAL Y NIEVES', '2010-12-13 17:54:36'),
	(218, 1, 'SAN MARINO', '2010-12-13 17:54:36'),
	(219, 1, 'SAN PEDRO Y MIQUELON', '2010-12-13 17:54:36'),
	(220, 1, 'SAN VICENTE Y LAS GRANADINAS', '2010-12-13 17:54:36'),
	(221, 1, 'SANTA ELENA', '2010-12-13 17:54:36'),
	(222, 1, 'SANTA LUCIA', '2010-12-13 17:54:36'),
	(223, 1, 'SANTO TOME Y PRINCIPE', '2010-12-13 17:54:36'),
	(224, 1, 'SENEGAL', '2010-12-13 17:54:36'),
	(225, 1, 'SEYCHELLES', '2010-12-13 17:54:36'),
	(226, 1, 'SIERRA LEONA', '2010-12-13 17:54:36'),
	(227, 1, 'SINGAPUR', '2010-12-13 17:54:36'),
	(228, 1, 'SIRIA, REPUBLICA ARABE DE', '2010-12-13 17:54:36'),
	(229, 1, 'SOMALIA', '2010-12-13 17:54:36'),
	(230, 1, 'SRI LANKA', '2010-12-13 17:54:36'),
	(231, 1, 'SUDAFRICA, REPUBLICA DE', '2010-12-13 17:54:36'),
	(232, 1, 'SUDAN', '2010-12-13 17:54:36'),
	(233, 1, 'SUECIA', '2010-12-13 17:54:36'),
	(234, 1, 'SUIZA', '2010-12-13 17:54:36'),
	(235, 1, 'SURINAM', '2010-12-13 17:54:36'),
	(236, 1, 'SAWSILANDIA', '2010-12-13 17:54:36'),
	(237, 1, 'TADJIKISTAN', '2010-12-13 17:54:36'),
	(238, 1, 'TAILANDIA', '2010-12-13 17:54:36'),
	(239, 1, 'TANZANIA, REPUBLICA UNIDA DE', '2010-12-13 17:54:36'),
	(240, 1, 'DJIBOUTI', '2010-12-13 17:54:36'),
	(241, 1, 'TERRITORIO ANTARTICO BRITANICO', '2010-12-13 17:54:36'),
	(242, 1, 'TERRITORIO BRITANICO DEL OCEANO INDICO', '2010-12-13 17:54:36'),
	(243, 1, 'TIMOR DEL ESTE', '2010-12-13 17:54:36'),
	(244, 1, 'TOGO', '2010-12-13 17:54:36'),
	(245, 1, 'TOKELAU', '2010-12-13 17:54:36'),
	(246, 1, 'TONGA', '2010-12-13 17:54:36'),
	(247, 1, 'TRINIDAD Y TOBAGO', '2010-12-13 17:54:36'),
	(248, 1, 'TRISTAN DA CUNHA', '2010-12-13 17:54:36'),
	(249, 1, 'TUNICIA', '2010-12-13 17:54:36'),
	(250, 1, 'TURCAS Y CAICOS, ISLAS', '2010-12-13 17:54:36'),
	(251, 1, 'TURKMENISTAN', '2010-12-13 17:54:36'),
	(252, 1, 'TURQUIA', '2010-12-13 17:54:36'),
	(253, 1, 'TUVALU', '2010-12-13 17:54:36'),
	(254, 1, 'UCRANIA', '2010-12-13 17:54:36'),
	(255, 1, 'UGANDA', '2010-12-13 17:54:36'),
	(256, 1, 'URSS', '2010-12-13 17:54:36'),
	(257, 1, 'URUGUAY', '2010-12-13 17:54:36'),
	(258, 1, 'UZBEKISTAN', '2010-12-13 17:54:36'),
	(259, 1, 'VENEZUELA', '2010-12-13 17:54:36'),
	(260, 1, 'VIET NAM', '2010-12-13 17:54:36'),
	(261, 1, 'VIETNAM (DEL NORTE)', '2010-12-13 17:54:36'),
	(262, 1, 'VIRGENES, ISLAS (BRITANICAS)', '2010-12-13 17:54:36'),
	(263, 1, 'VIRGENES, ISLAS (NORTEAMERICANAS)', '2010-12-13 17:54:36'),
	(264, 1, 'FIJI', '2010-12-13 17:54:36'),
	(265, 1, 'WAKE, ISLA', '2010-12-13 17:54:36'),
	(266, 1, 'WALLIS Y FORTUNA, ISLAS', '2010-12-13 17:54:36'),
	(267, 1, 'YEMEN', '2010-12-13 17:54:36'),
	(268, 1, 'YUGOSLAVIA', '2010-12-13 17:54:36'),
	(269, 1, 'ZAIRE', '2010-12-13 17:54:36'),
	(270, 1, 'ZAMBIA', '2010-12-13 17:54:36'),
	(271, 1, 'ZONA DEL CANAL DE PANAMA', '2010-12-13 17:54:36'),
	(272, 1, 'ZONA LIBRE OSTRAVA', '2010-12-13 17:54:36'),
	(273, 1, 'ZONA NEUTRAL (PALESTINA)', '2010-12-13 17:54:36'),
	(274, 1, '::Seleccione::', '2014-10-06 04:27:07');
/*!40000 ALTER TABLE `ant_nacionalidad` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_permiso
CREATE TABLE IF NOT EXISTS `ant_permiso` (
  `PERM_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `ROL_Codigo` int(11) NOT NULL,
  `MENU_Codigo` int(11) NOT NULL,
  `PERM_FlagEstado` char(1) DEFAULT '1',
  PRIMARY KEY (`PERM_Codigo`),
  UNIQUE KEY `ROL_Codigo_MENU_Codigo` (`ROL_Codigo`,`MENU_Codigo`),
  KEY `FK_cji_permiso_cji_menu` (`MENU_Codigo`),
  CONSTRAINT `FK_ant_permiso_ant_menu` FOREIGN KEY (`MENU_Codigo`) REFERENCES `ant_menu` (`MENU_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ant_permiso_ant_rol` FOREIGN KEY (`ROL_Codigo`) REFERENCES `ant_rol` (`ROL_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- Dumping data for table cepreadm.ant_permiso: ~60 rows (approximately)
/*!40000 ALTER TABLE `ant_permiso` DISABLE KEYS */;
INSERT INTO `ant_permiso` (`PERM_Codigo`, `ROL_Codigo`, `MENU_Codigo`, `PERM_FlagEstado`) VALUES
	(4, 4, 3, '1'),
	(5, 4, 4, '1'),
	(29, 4, 22, '1'),
	(33, 4, 49, '1'),
	(39, 4, 53, '1'),
	(45, 4, 57, '1'),
	(46, 4, 58, '1'),
	(47, 4, 59, '1'),
	(48, 4, 61, '1'),
	(49, 4, 62, '1'),
	(50, 4, 63, '1'),
	(51, 4, 64, '1'),
	(52, 4, 65, '1'),
	(53, 4, 66, '1'),
	(54, 4, 67, '1'),
	(55, 4, 68, '1'),
	(56, 4, 69, '1'),
	(57, 4, 70, '1'),
	(59, 4, 72, '1'),
	(60, 4, 73, '1'),
	(61, 4, 74, '1'),
	(62, 4, 75, '1'),
	(63, 4, 76, '1'),
	(64, 4, 77, '1'),
	(65, 4, 78, '1'),
	(66, 6, 3, '1'),
	(67, 6, 4, '1'),
	(68, 6, 22, '1'),
	(69, 6, 49, '1'),
	(71, 6, 53, '1'),
	(72, 6, 57, '1'),
	(73, 6, 58, '1'),
	(74, 6, 59, '1'),
	(75, 6, 61, '1'),
	(76, 6, 62, '1'),
	(77, 6, 63, '1'),
	(78, 6, 64, '1'),
	(79, 6, 65, '1'),
	(81, 6, 67, '1'),
	(82, 6, 68, '1'),
	(83, 6, 69, '1'),
	(84, 6, 70, '1'),
	(85, 6, 72, '1'),
	(86, 6, 73, '1'),
	(87, 6, 74, '1'),
	(88, 6, 75, '1'),
	(89, 6, 76, '1'),
	(91, 6, 78, '1'),
	(92, 4, 79, '1'),
	(93, 4, 80, '1'),
	(94, 4, 81, '1'),
	(96, 4, 2, '1'),
	(99, 7, 3, '1'),
	(100, 7, 58, '1'),
	(101, 7, 53, '1'),
	(102, 4, 83, '1'),
	(103, 4, 84, '1'),
	(104, 4, 85, '1'),
	(105, 4, 86, '1'),
	(106, 4, 87, '1');
/*!40000 ALTER TABLE `ant_permiso` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_persona
CREATE TABLE IF NOT EXISTS `ant_persona` (
  `PERSP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `TIPDOCP_Codigo` int(11) NOT NULL DEFAULT '0',
  `PERSC_ApellidoPaterno` varchar(150) DEFAULT NULL,
  `PERSC_ApellidoMaterno` varchar(150) DEFAULT NULL,
  `PERSC_Nombre` varchar(150) DEFAULT NULL,
  `PERSC_NumeroDocIdentidad` char(8) DEFAULT NULL,
  `PERSC_Direccion` varchar(250) DEFAULT NULL,
  `PERSC_Telefono` varchar(20) DEFAULT NULL,
  `PERSC_Movil` varchar(20) DEFAULT NULL,
  `PERSC_Fax` varchar(20) DEFAULT NULL,
  `PERSC_Email` varchar(200) DEFAULT NULL,
  `PERSC_Domicilio` varchar(250) DEFAULT NULL,
  `PERSC_Web` varchar(250) DEFAULT NULL,
  `PERSC_Sexo` char(2) DEFAULT NULL,
  `PERSC_FechaNacimiento` date DEFAULT '0000-00-00',
  `PERSC_FlagEstado` char(1) DEFAULT '1',
  `PERSC_FechaModificacion` datetime DEFAULT NULL,
  `PERSC_FechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PERSP_Codigo`),
  KEY `FK_persona_tipodocumento` (`TIPDOCP_Codigo`),
  CONSTRAINT `FK_persona_tipodocumento` FOREIGN KEY (`TIPDOCP_Codigo`) REFERENCES `ant_tipodocumento` (`TIPDOCP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=434 DEFAULT CHARSET=utf8;

-- Dumping data for table cepreadm.ant_persona: ~152 rows (approximately)
/*!40000 ALTER TABLE `ant_persona` DISABLE KEYS */;
INSERT INTO `ant_persona` (`PERSP_Codigo`, `TIPDOCP_Codigo`, `PERSC_ApellidoPaterno`, `PERSC_ApellidoMaterno`, `PERSC_Nombre`, `PERSC_NumeroDocIdentidad`, `PERSC_Direccion`, `PERSC_Telefono`, `PERSC_Movil`, `PERSC_Fax`, `PERSC_Email`, `PERSC_Domicilio`, `PERSC_Web`, `PERSC_Sexo`, `PERSC_FechaNacimiento`, `PERSC_FlagEstado`, `PERSC_FechaModificacion`, `PERSC_FechaRegistro`) VALUES
	(1, 1, 'Administrador', 'General', 'Adm. General', '0', '0', '0', '0', '0', '', '0', '0', '1', '2015-12-03', '1', '2015-08-05 11:53:24', '2010-12-29 20:15:19'),
	(88, 1, 'FIGUEROA', 'MALDONADO', 'EDWARD', '40772496', 'AV. ABANCAY 986 S.M.P.', '5681903', '0', '0', 'edward.figueroa.ing@gmail.com', 'AV. ABANCAY 986 S.M.P.', '0', '0', '1980-03-19', '1', '2015-08-05 00:27:56', '2015-03-21 11:32:00'),
	(89, 1, 'FIGUEROA', 'MALDONADO', 'EDWARD', '40772496', 'ABANCAY 986 SMP', '5681903', '0', '0', 'edward.figueroa.ing@gmail.com', 'ABANCAY 986 SMP', '0', '0', '2015-03-18', '1', '2015-08-05 00:27:56', '2015-03-21 11:32:58'),
	(94, 1, 'Arevalo', 'Villanueva', 'Manuel', '234234', '', '324234324', '2', '0', '', '', '0', '1', '0000-00-00', '1', '2015-10-16 09:50:38', '2015-05-16 12:25:47'),
	(136, 0, 'sanchez', 'calderon', 'josefina', '0', '0', '0', '0', '0', '', '0', '0', '0', '0000-00-00', '1', NULL, '2015-08-05 18:53:28'),
	(137, 0, 'Alvarado', 'Jaramillo', 'Luis', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-10-16 09:07:14'),
	(179, 0, 'Mitanda', 'Cuadros', 'Yordi', '12313232', 'Mz G Lote 6 - Los Chasquis', '997157682', '0', '0', 'yordi_efra@hotmail.com', 'Mz G Lote 6 - Los Chasquis', '0', '0', '2005-11-17', '1', NULL, '2015-11-06 10:21:20'),
	(180, 0, 'Chuquisaca', 'Chec-huaya', 'Rosmery Melissa', '23423423', 'Mz R Lote 24 Los NÃ­speros', '', '0', '0', '', 'Mz R Lote 24 Los NÃ­speros', '0', '0', '0000-00-00', '1', NULL, '2015-11-06 10:22:25'),
	(185, 1, 'Espirime', 'Ortega', 'David', '', '', '', '', '0', '', '', '0', '0', '0000-00-00', '1', NULL, '2015-11-30 06:12:05'),
	(186, 1, 'Espirime', 'Ortega', 'David', '', '', '', '', '0', '', '', '0', '0', '0000-00-00', '1', NULL, '2015-11-30 06:12:16'),
	(187, 1, 'Espirime', 'Ortega', 'David', '', '', '', '', '0', '', '', '0', '0', '0000-00-00', '1', NULL, '2015-11-30 06:13:04'),
	(218, 1, 'Barrientos', 'Apumayta', 'Enrique', '', '', '', '', '0', '', '', '0', '0', '0000-00-00', '1', NULL, '2015-11-30 06:29:47'),
	(219, 1, 'Barrientos', 'Apumayta', 'Enrique', '', '', '', '', '0', '', '', '0', '0', '0000-00-00', '1', NULL, '2015-11-30 06:29:51'),
	(226, 1, 'Aguilar', 'Fuentes', 'Inocente', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:11:23'),
	(227, 1, 'Almora', 'Rivas', 'Enrique', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:12:47'),
	(228, 1, 'Alva', 'Gallegos', 'Fernando MartÃ­n', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:13:19'),
	(229, 1, 'Arevalo', 'Villanueva', 'Manuel', '', '', '', '', '0', '', '', '0', '1', '2015-12-09', '1', NULL, '2015-12-24 13:14:45'),
	(230, 1, 'Arias', 'Antonio', 'Leandro', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:15:07'),
	(231, 1, 'Carhuay', 'Pampas', 'Enrique', '', '', '', '', '0', '', '', '0', '1', '2015-12-02', '1', NULL, '2015-12-24 13:15:50'),
	(232, 1, 'Cribillero', 'Aching', 'Juan', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:16:12'),
	(233, 1, 'Custodio', 'Chung', 'Victor', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:16:37'),
	(234, 1, 'Figueroa', 'Maldonado', 'Edward', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:16:57'),
	(235, 1, 'Figueroa', 'Maldonado', 'Edward', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:20:02'),
	(236, 1, 'Flor', 'Vicente', 'Carlos Daniel', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:21:00'),
	(237, 1, 'GodiÃ±ez ', 'De la Cruz ', 'Ernesto Juan', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:21:37'),
	(238, 1, 'Leon', 'Villanueva', 'Jhony', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:22:01'),
	(239, 1, 'Luna', 'Martinez', 'Julio', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:22:28'),
	(240, 1, 'MadueÃ±o', 'Sulca', 'CÃ©sar', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:22:54'),
	(241, 1, 'Mendoza', 'Reyes', 'Carlos Alberto', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:23:14'),
	(242, 1, 'Obregon', 'Sotelo', 'Jose', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:28:44'),
	(243, 1, 'Ramos', 'Riofrio', 'Arturo', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:29:09'),
	(244, 1, 'Rios', 'Ibarra', 'Alejandro', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:29:31'),
	(245, 1, 'Roca', 'Meneses', 'Roni', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:29:50'),
	(246, 1, 'Rodriguez', 'De los Rios', 'Rolando', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:30:12'),
	(247, 1, 'Salazar', 'MInaya', 'Angel', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:30:29'),
	(248, 1, 'Vasquez', 'Dominguez', 'Riquelmer', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:30:53'),
	(249, 1, 'Vila', 'Zavala', 'Herbert', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:31:13'),
	(250, 1, 'Vivas', 'Fajardo', 'Ramon', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:31:35'),
	(251, 1, 'Alvarado', 'Jaramillo', 'Luis', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:32:16'),
	(252, 1, 'Arevalo', 'Castro', 'Victor Manuel', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:32:43'),
	(253, 1, 'Arias', 'Chumpitaz', 'Ulises', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:33:04'),
	(254, 1, 'Barzola', 'Esteban', 'Marcelo', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:33:30'),
	(255, 1, 'Espirme', 'Ortega', 'David', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:34:11'),
	(256, 1, 'Lopez', 'Esquivel', 'Miguel Angel', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:34:35'),
	(257, 1, 'Mamani', 'Sulca', 'Oscar', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:34:52'),
	(258, 1, 'Mas', 'HuamÃ¡n', 'Ronald JesÃºs', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:35:16'),
	(259, 1, 'MejÃ­a', 'Rodrigo', 'Edwin', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:35:42'),
	(260, 1, 'Minaya', 'Ames', 'Julio CÃ©sar', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:36:08'),
	(261, 1, 'Nizama', 'Victoria', 'Luis Enrique', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:36:29'),
	(262, 1, 'Norabuena', 'Meza', 'Edgard', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:36:50'),
	(263, 1, 'Ã‘aupari', 'Huatuco', 'Zocimo', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:37:12'),
	(264, 1, 'PÃ©rez', 'Cupe', 'RÃ³sulo', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:37:31'),
	(265, 1, 'Reyes', 'MuÃ±oz', 'Elva', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:37:50'),
	(266, 1, 'Silva', 'Santiesteban', 'Mario', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:38:19'),
	(267, 1, 'Silvestre', 'Valer', 'Jim', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:38:35'),
	(268, 1, 'Sotelo', 'Chico', 'JosÃ© Carlos', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:38:55'),
	(269, 1, 'Tori', 'Loza', 'JosÃ©', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:39:14'),
	(270, 1, 'Valderrama', 'Soto', 'Ericka', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:39:30'),
	(271, 1, 'Vidal', 'DomÃ­nguez', 'Emilio', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:39:48'),
	(272, 1, 'Visurraga', 'Reinoso', 'Roberto', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:40:07'),
	(273, 1, 'Zamudio', 'Peves', 'JosÃ© Fernando', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:40:25'),
	(274, 1, 'Cabrera', 'Chavez', 'Julio Cesar', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:49:30'),
	(275, 1, 'Escudero', 'Acero', 'Phamela', '', '', '', '', '0', '', '', '0', '2', '0000-00-00', '1', NULL, '2015-12-24 13:49:51'),
	(276, 1, 'Espinoza', 'Vasquez', 'Manuel', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:50:14'),
	(277, 1, 'Gallardo', 'Vasquez', 'Pablo', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:54:24'),
	(278, 1, 'Gamarra', 'Lezcano', 'Melbert', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:54:47'),
	(279, 1, 'Huaccha', 'Quiroz', 'Eduardo', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:55:13'),
	(280, 1, 'Huaranca', 'Tanta', 'Sergio', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:55:37'),
	(281, 1, 'Iquise', 'Mamani', 'Luis Alberto', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:56:00'),
	(282, 1, 'Juscamayta', 'Tineo', 'Nerio Hermes', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:56:40'),
	(283, 1, 'Laurente', 'Artola', 'Victor Hugo', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:57:11'),
	(284, 1, 'Mamani', 'Quea', 'Loo Javier', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:58:11'),
	(285, 1, 'Mayta', 'Guillermo', 'Jorge Enrique', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:58:35'),
	(286, 1, 'Moya', 'Guevara', 'Paulo CÃ©sar', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:59:07'),
	(287, 1, 'MuÃ±oz', 'Ramos', 'Luis Daniel', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 13:59:28'),
	(288, 1, 'Naupay', 'GUSUKUMA', 'Alvarado Miguel', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:00:00'),
	(289, 1, 'Pacheco', 'Colquicocha', 'Vladimir Gonzalo', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:00:32'),
	(290, 1, 'Palomino', 'Vildoso', 'Rolando Raul', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:01:01'),
	(291, 1, 'Perez', 'Diaz', 'Elbert', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:01:29'),
	(292, 1, 'Rodriguez', 'Soto', 'Victor Eduardo', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:02:01'),
	(293, 1, 'Rojas', 'Cerna', 'Victor Daniel', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:02:25'),
	(294, 1, 'Torres', 'Matos', 'Carlos', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:02:48'),
	(295, 1, 'Valencia', 'Miranda', 'Angel', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:03:12'),
	(296, 1, 'Villalobos', 'Solano', 'Juan Javier', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:03:32'),
	(297, 1, 'Yarasca', 'Moscol', 'Julio Eduardo', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:04:01'),
	(298, 1, 'Andi', 'Chinchay', 'Alberto Julio', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:05:12'),
	(299, 1, 'Arambulo', 'Ostos', 'Carlos Eduardo', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:05:47'),
	(300, 1, 'Carbonel', 'Olazabal', 'Daniel Roberto', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:06:15'),
	(301, 1, 'Castro', 'Montesino', 'Jorge Antonio', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:06:44'),
	(302, 1, 'Correa', 'GarcÃ­a', 'Manuel', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:07:12'),
	(303, 1, 'Cortez', 'Galindo', 'Cancio Nicolas', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:08:14'),
	(304, 1, 'Chavez', 'Vivar', 'Javier', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:08:36'),
	(305, 1, 'Chilet', 'Cama', 'Wilber', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:08:54'),
	(306, 1, 'Diaz', 'Chavez', 'Henry Jose', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:09:15'),
	(307, 1, 'Garcia', 'Rodas', 'Wilfredo', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:09:37'),
	(308, 1, 'Huaman', 'Sanchez', 'Alejandro Apolinario', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:10:07'),
	(309, 1, 'Huilca', 'Guevara', 'Ruben Elias', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:10:32'),
	(310, 1, 'Kurokawa', 'Guerrero', 'Manuel', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:10:55'),
	(311, 1, 'Lazo', 'Ochoa', 'Domingo Pedro', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:11:13'),
	(312, 1, 'Lopez', 'Arroyo', 'Jorge', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:11:31'),
	(313, 1, 'Oria', 'Chavarria', 'Mario', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:11:57'),
	(314, 1, 'Pachas', 'Salhuana', 'Jose Teodoro', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:12:23'),
	(315, 1, 'Pozo', 'Vilchez', 'Manuel Ignacio', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:12:51'),
	(316, 1, 'Tito', 'CCOICCA', 'Saul Gregorio', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:13:12'),
	(317, 1, 'Valverde', 'Sandoval', 'Oscar Guillermo', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:13:46'),
	(318, 1, 'Vilca', 'Mucha', 'Henry Alonso', '', '', '', '', '0', '', '', '0', '1', '0000-00-00', '1', NULL, '2015-12-24 14:14:06'),
	(383, 1, 'Guerrero', 'Herrera', 'Anita Mercedes', NULL, NULL, '', NULL, NULL, 'anita@anita.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(384, 1, 'Chavez', NULL, 'Mirta', NULL, NULL, '', NULL, NULL, 'mirta@mirta.es', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(385, 1, 'Olivos', 'Diaz', 'Yesmith', NULL, NULL, '', NULL, NULL, 'yesmith@yesmith.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(386, 1, 'ney', NULL, 'ney', NULL, NULL, '', NULL, NULL, 'ney@ney.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(387, 1, 'Delgado ', 'Garay', 'Teresa Alumno', NULL, NULL, '', NULL, NULL, 'teresa@teresa.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(388, 1, 'perez', NULL, 'juan', NULL, NULL, '5681903', NULL, NULL, 'unkl70@hotmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(389, 1, 'tapia', NULL, 'miguel', NULL, NULL, '', NULL, NULL, 'mtapia@gmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(390, 1, 'Ramirez', 'Ayuque', 'Jesus', NULL, NULL, '', NULL, NULL, 'jesus_15pre@hotmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(392, 1, 'Colorado Monja', NULL, 'Leonardo', NULL, NULL, '', NULL, NULL, 'leocm1503@gmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(393, 1, 'Palacios Intusca', NULL, 'Alfonso', NULL, NULL, '', NULL, NULL, 'alfonsicar_prototype_rip@hotmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(394, 1, 'Lorena Huamani', NULL, 'Christian Jaime', NULL, NULL, '', NULL, NULL, 'christyanlorena@gmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(395, 1, 'Espinoza Meza', NULL, 'Daniel Enrique', NULL, NULL, '', NULL, NULL, 'danielenrique.23@hotmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(396, 1, 'Tordoya Licla', NULL, 'Jose Maria', NULL, NULL, '', NULL, NULL, 'jose.xmen.charger@gmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(397, 1, 'Zulueta Flores', NULL, 'Xiomara', NULL, NULL, '', NULL, NULL, 'xiomi_2504@hotmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(398, 1, 'Campos Arotinco', NULL, 'Shirley', NULL, NULL, '', NULL, NULL, 'shirley_6_@hotmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(401, 1, 'Santos Diaz', NULL, 'Yofre Abiel', NULL, NULL, '', NULL, NULL, 'chaval-9@gmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(402, 1, 'Trujillo Aguirre', NULL, 'Jose Gabriel', NULL, NULL, '', NULL, NULL, 'josegabriel1219@hotmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(403, 1, 'Suarez Dipas', NULL, 'Diego Alonso', NULL, NULL, '', NULL, NULL, 'diego.alonso.cr7@hotmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(404, 1, 'Wong Delgado', NULL, 'Allison', NULL, NULL, '', NULL, NULL, 'alli3103@hotmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(405, 1, 'Yataco Zamudio', NULL, 'Keisy Yanali', NULL, NULL, '', NULL, NULL, 'keisy_060798@hotmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(406, 1, 'Sanchez Lopez', NULL, 'Patricia Alejandra', NULL, NULL, '', NULL, NULL, 'patricia.sanchez.lopez@hotmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(407, 1, 'Mego Solano', NULL, 'Manuel Gerardo', NULL, NULL, '', NULL, NULL, 'gerardo_mego@hotmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(408, 1, 'Roa Bernardillo', NULL, 'Gianfranco', NULL, NULL, '', NULL, NULL, 'star_of_shadow@hotmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(409, 1, 'Dominguez Jaramillo', NULL, 'Max Marcelino', NULL, NULL, '', NULL, NULL, 'm.ax_2009@hotmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(410, 1, 'Espinoza Valdez', NULL, 'Angel Leonardo', NULL, NULL, '', NULL, NULL, 'leonardoev@hotmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(411, 1, 'Roldan Sanchez', NULL, 'Gabriel Alexander', NULL, NULL, '', NULL, NULL, 'alexander_0615@hotmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(413, 1, 'Soncco Veliz', NULL, 'Andy Sinoe', NULL, NULL, '', NULL, NULL, 'andy_sinoe@outlook.es', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(414, 1, 'Gutierrez Burgos', NULL, 'Jaime', NULL, NULL, '', NULL, NULL, 'chock2908@gmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(415, 1, 'Pamo', NULL, 'Franco', NULL, NULL, '', NULL, NULL, 'frankopk@hotmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(416, 1, 'Cercado Quispe', NULL, 'Kevin', NULL, NULL, '', NULL, NULL, 'kevin_12k@hotmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(417, 1, 'Romero Huamani', NULL, 'Gustavo Enrique', NULL, NULL, '', NULL, NULL, 'gerh10_7@hotmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(418, 1, 'Gonzales', NULL, 'Julian', NULL, NULL, '', NULL, NULL, 'ingenierominero98@hotmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(419, 1, 'Fonseca Acuña', NULL, 'Daniel', NULL, NULL, '', NULL, NULL, 'dfonseca@live.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(420, 1, 'Garcia Sanchez', NULL, 'Bosilluader Shean Andres', NULL, NULL, '', NULL, NULL, 'sheanag@hotmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(421, 1, 'Vasquez Garcia', NULL, 'Kelly Vanessa Gloria Maria', NULL, NULL, '', NULL, NULL, 'kelly_miflor@hotmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(422, 1, 'Ramirez Amaya', NULL, 'Abraham', NULL, NULL, '', NULL, NULL, 'abrafernando@hotmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(423, 1, 'Miranda Gonzales', NULL, 'Katherine', NULL, NULL, '', NULL, NULL, 'libra_30_katy@hotmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(425, 1, 'Curro Villaorduña', NULL, 'Deyvis Bryan', NULL, NULL, '', NULL, NULL, 'deyvis_tauro19@hotmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(426, 1, 'Santos Beraun', NULL, 'Barry Barton', NULL, NULL, '', NULL, NULL, 'elcrack1999@outlook.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(427, 0, 'Barrenechea Chuquizuta', '', 'Milushca Ursula', '0', '', '', '0', '0', 'milu.bch.9@hotmail.com', '', '0', '0', '2015-12-16', '1', NULL, '2015-12-28 11:54:04'),
	(428, 1, 'Paredes Anyoza', NULL, 'Nicolas Daniel', NULL, NULL, '7853855', NULL, NULL, 'paredes_anyoza@hotmail.es', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(429, 1, 'Nonato Villena', NULL, 'Grecia Jemina', NULL, NULL, '', NULL, NULL, 'irisvima.let@hotmail.com', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(430, 1, 'Paredes Anyoza', NULL, 'Nicolas Daniel', NULL, NULL, '', NULL, NULL, 'paredes_anyoza@hotmail.es', NULL, NULL, NULL, '0000-00-00', '1', NULL, '2015-12-28 11:54:04'),
	(431, 0, 'aaaaaaaaa', 'aaaaa', 'Aaaaaaaaaaaaa', '0', '24234', '324234', '0', '0', '', '24234', '0', '0', '0000-00-00', '1', NULL, '2015-12-30 21:46:34'),
	(432, 0, 'aaaaaaaaa', 'aaaaa', 'Aaaaaaaaaaaaa', '0', '24234', '324234', '0', '0', '', '24234', '0', '0', '0000-00-00', '1', NULL, '2015-12-30 21:46:39'),
	(433, 1, 'Aguilar', 'Fuentes', 'Inocente', '40553496', 'la paz 123 smp', '5679012', '988940035', '0', 'aguilar@hotmaill.com', 'la paz 123 smp', '0', '0', '2016-02-10', '1', NULL, '2016-02-25 23:47:56');
/*!40000 ALTER TABLE `ant_persona` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_productoatributo2
CREATE TABLE IF NOT EXISTS `ant_productoatributo2` (
  `PRODATRIB2_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `PROD_Codigo` int(11) DEFAULT NULL,
  `COMPP_Codigo` int(11) DEFAULT NULL,
  `PRODATRIB2_Descripcion` varchar(150) DEFAULT NULL,
  `PRODATRIB2_FechaModificacion` datetime DEFAULT NULL,
  `PRODATRIB2_FechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PRODATRIB2_Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_productoatributo2: ~0 rows (approximately)
/*!40000 ALTER TABLE `ant_productoatributo2` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_productoatributo2` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_productoprecio
CREATE TABLE IF NOT EXISTS `ant_productoprecio` (
  `PRODPREP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `PROD_Codigo` int(11) NOT NULL,
  `MONED_Codigo` int(11) NOT NULL,
  `PRODPREC_Precio` double NOT NULL,
  `PRODPREC_FlagEstado` char(1) NOT NULL DEFAULT '1',
  `PRODPREC_FechaModificacion` datetime DEFAULT NULL,
  `PRODPREC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PRODPREP_Codigo`),
  UNIQUE KEY `PROD_Codigo` (`PROD_Codigo`,`MONED_Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cepreadm.ant_productoprecio: ~0 rows (approximately)
/*!40000 ALTER TABLE `ant_productoprecio` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_productoprecio` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_profesor
CREATE TABLE IF NOT EXISTS `ant_profesor` (
  `PROP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `PROD_Codigo` int(11) NOT NULL,
  `SUBCURSOP_Codigo` int(11) NOT NULL,
  `PERSP_Codigo` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `PROC_FlagEstado` char(1) NOT NULL DEFAULT '1',
  `PROC_FlagBorrado` char(1) NOT NULL DEFAULT '1' COMMENT '1:Activo, 0: Borrado',
  `PROC_FlagCoordinador` char(1) NOT NULL DEFAULT '0' COMMENT '1:Es Coordinador de plana,0 No es coordinador de plana',
  `PROC_FechaModificacion` datetime DEFAULT NULL,
  `PROC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PROP_Codigo`),
  UNIQUE KEY `PERSP_Codigo` (`PERSP_Codigo`),
  KEY `FK_profesor_persona` (`PERSP_Codigo`),
  KEY `FK_profesor_curso` (`PROD_Codigo`),
  CONSTRAINT `FK_profesor_persona` FOREIGN KEY (`PERSP_Codigo`) REFERENCES `ant_persona` (`PERSP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_profesor: ~94 rows (approximately)
/*!40000 ALTER TABLE `ant_profesor` DISABLE KEYS */;
INSERT INTO `ant_profesor` (`PROP_Codigo`, `PROD_Codigo`, `SUBCURSOP_Codigo`, `PERSP_Codigo`, `user_id`, `PROC_FlagEstado`, `PROC_FlagBorrado`, `PROC_FlagCoordinador`, `PROC_FechaModificacion`, `PROC_FechaRegistro`) VALUES
	(95, 0, 0, 1, 0, '1', '1', '0', '2016-01-05 14:05:43', '2015-12-18 21:29:29'),
	(101, 96, 0, 226, 58, '1', '1', '0', '2016-01-09 16:41:24', '2015-12-24 13:11:23'),
	(102, 93, 0, 227, 59, '1', '1', '0', '2015-12-24 19:12:47', '2015-12-24 13:12:47'),
	(103, 93, 0, 228, 60, '1', '1', '0', '2015-12-24 19:13:19', '2015-12-24 13:13:19'),
	(104, 93, 0, 229, 61, '1', '1', '1', '2015-12-24 19:14:45', '2015-12-24 13:14:45'),
	(105, 93, 0, 230, 62, '1', '1', '0', '2015-12-24 19:15:07', '2015-12-24 13:15:07'),
	(106, 93, 0, 231, 63, '1', '1', '0', '2015-12-24 19:15:50', '2015-12-24 13:15:50'),
	(107, 93, 0, 232, 64, '1', '1', '0', '2015-12-24 19:16:12', '2015-12-24 13:16:12'),
	(108, 93, 0, 233, 65, '1', '1', '0', '2015-12-24 19:16:37', '2015-12-24 13:16:37'),
	(109, 93, 0, 235, 66, '1', '1', '0', '2015-12-24 19:20:02', '2015-12-24 13:20:02'),
	(110, 93, 0, 236, 67, '1', '1', '0', '2015-12-24 19:21:00', '2015-12-24 13:21:00'),
	(111, 93, 0, 237, 68, '1', '1', '0', '2015-12-24 19:21:37', '2015-12-24 13:21:37'),
	(112, 93, 0, 238, 69, '1', '1', '0', '2015-12-24 19:22:01', '2015-12-24 13:22:01'),
	(113, 93, 0, 239, 70, '1', '1', '0', '2015-12-24 19:22:29', '2015-12-24 13:22:29'),
	(114, 93, 0, 240, 71, '1', '1', '0', '2015-12-24 19:22:54', '2015-12-24 13:22:54'),
	(115, 93, 0, 241, 72, '1', '1', '0', '2015-12-24 19:23:14', '2015-12-24 13:23:14'),
	(116, 93, 0, 242, 73, '1', '1', '0', '2015-12-24 19:28:44', '2015-12-24 13:28:44'),
	(117, 93, 0, 243, 74, '1', '1', '0', '2015-12-24 19:29:09', '2015-12-24 13:29:09'),
	(118, 93, 0, 244, 75, '1', '1', '0', '2015-12-24 19:29:31', '2015-12-24 13:29:31'),
	(119, 93, 0, 245, 76, '1', '1', '0', '2015-12-24 19:29:50', '2015-12-24 13:29:50'),
	(120, 93, 0, 246, 77, '1', '1', '0', '2015-12-24 19:30:12', '2015-12-24 13:30:12'),
	(121, 93, 0, 247, 78, '1', '1', '0', '2015-12-24 19:30:29', '2015-12-24 13:30:29'),
	(122, 93, 0, 248, 79, '1', '1', '0', '2015-12-24 19:30:53', '2015-12-24 13:30:53'),
	(123, 93, 0, 249, 80, '1', '1', '0', '2015-12-24 19:31:13', '2015-12-24 13:31:13'),
	(124, 93, 0, 250, 81, '1', '1', '0', '2015-12-24 19:31:35', '2015-12-24 13:31:35'),
	(125, 95, 0, 251, 82, '1', '1', '0', '2015-12-24 19:32:17', '2015-12-24 13:32:17'),
	(126, 95, 0, 252, 83, '1', '1', '0', '2015-12-24 19:32:43', '2015-12-24 13:32:43'),
	(127, 95, 0, 253, 84, '1', '1', '0', '2015-12-24 19:33:04', '2015-12-24 13:33:04'),
	(128, 95, 0, 254, 85, '1', '1', '0', '2015-12-24 19:33:30', '2015-12-24 13:33:30'),
	(129, 96, 0, 255, 86, '1', '1', '0', '2016-01-09 16:42:17', '2015-12-24 13:34:11'),
	(130, 95, 0, 256, 87, '1', '1', '0', '2015-12-24 19:34:35', '2015-12-24 13:34:35'),
	(131, 95, 0, 257, 88, '1', '1', '0', '2015-12-24 19:34:52', '2015-12-24 13:34:52'),
	(132, 95, 0, 258, 89, '1', '1', '0', '2015-12-24 19:35:16', '2015-12-24 13:35:16'),
	(133, 95, 0, 259, 90, '1', '1', '0', '2015-12-24 19:35:42', '2015-12-24 13:35:42'),
	(134, 95, 0, 260, 91, '1', '1', '0', '2015-12-24 19:36:08', '2015-12-24 13:36:08'),
	(135, 95, 0, 261, 92, '1', '1', '0', '2015-12-24 19:36:29', '2015-12-24 13:36:29'),
	(136, 95, 0, 262, 93, '1', '1', '0', '2015-12-24 19:36:51', '2015-12-24 13:36:51'),
	(137, 95, 0, 263, 94, '1', '1', '1', '2015-12-24 19:37:12', '2015-12-24 13:37:12'),
	(138, 95, 0, 264, 95, '1', '1', '0', '2015-12-24 19:37:31', '2015-12-24 13:37:31'),
	(139, 95, 0, 265, 96, '1', '1', '0', '2015-12-24 19:37:50', '2015-12-24 13:37:50'),
	(140, 95, 0, 266, 97, '1', '1', '0', '2015-12-24 19:38:19', '2015-12-24 13:38:19'),
	(141, 95, 0, 267, 98, '1', '1', '0', '2015-12-24 19:38:35', '2015-12-24 13:38:35'),
	(142, 95, 0, 268, 99, '1', '1', '0', '2015-12-24 19:38:55', '2015-12-24 13:38:55'),
	(143, 95, 0, 269, 100, '1', '1', '0', '2015-12-24 19:39:14', '2015-12-24 13:39:14'),
	(144, 95, 0, 270, 101, '1', '1', '0', '2015-12-24 19:39:30', '2015-12-24 13:39:30'),
	(145, 95, 0, 271, 102, '1', '1', '0', '2015-12-24 19:39:48', '2015-12-24 13:39:48'),
	(146, 95, 0, 272, 103, '1', '1', '0', '2015-12-24 19:40:07', '2015-12-24 13:40:07'),
	(147, 95, 0, 273, 104, '1', '1', '0', '2015-12-24 19:40:25', '2015-12-24 13:40:25'),
	(148, 96, 0, 274, 105, '1', '1', '1', '2015-12-24 19:49:30', '2015-12-24 13:49:30'),
	(149, 96, 0, 275, 106, '1', '1', '0', '2015-12-24 19:49:51', '2015-12-24 13:49:51'),
	(150, 96, 0, 276, 107, '1', '1', '0', '2015-12-24 19:50:14', '2015-12-24 13:50:14'),
	(151, 96, 0, 277, 108, '1', '1', '0', '2015-12-24 19:54:24', '2015-12-24 13:54:24'),
	(152, 96, 0, 278, 109, '1', '1', '0', '2015-12-24 19:54:47', '2015-12-24 13:54:47'),
	(153, 96, 0, 279, 110, '1', '1', '0', '2015-12-24 19:55:13', '2015-12-24 13:55:13'),
	(154, 96, 0, 280, 111, '1', '1', '0', '2015-12-24 19:55:37', '2015-12-24 13:55:37'),
	(155, 96, 0, 281, 112, '1', '1', '0', '2015-12-24 19:56:00', '2015-12-24 13:56:00'),
	(156, 96, 0, 282, 113, '1', '1', '0', '2015-12-24 19:56:40', '2015-12-24 13:56:40'),
	(157, 96, 0, 283, 114, '1', '1', '0', '2015-12-24 19:57:12', '2015-12-24 13:57:12'),
	(158, 96, 0, 284, 115, '1', '1', '0', '2015-12-24 19:58:11', '2015-12-24 13:58:11'),
	(159, 96, 0, 285, 116, '1', '1', '0', '2015-12-24 19:58:35', '2015-12-24 13:58:35'),
	(160, 96, 0, 286, 117, '1', '1', '0', '2015-12-24 19:59:07', '2015-12-24 13:59:07'),
	(161, 96, 0, 287, 118, '1', '1', '0', '2015-12-24 19:59:28', '2015-12-24 13:59:28'),
	(162, 96, 0, 288, 119, '1', '1', '0', '2015-12-24 20:00:00', '2015-12-24 14:00:00'),
	(163, 96, 0, 289, 120, '1', '1', '0', '2015-12-24 20:00:32', '2015-12-24 14:00:32'),
	(164, 96, 0, 290, 121, '1', '1', '0', '2015-12-24 20:01:01', '2015-12-24 14:01:01'),
	(165, 96, 0, 291, 122, '1', '1', '0', '2015-12-24 20:01:30', '2015-12-24 14:01:30'),
	(166, 96, 0, 292, 123, '1', '1', '0', '2015-12-24 20:02:01', '2015-12-24 14:02:01'),
	(167, 96, 0, 293, 124, '1', '1', '0', '2015-12-24 20:02:25', '2015-12-24 14:02:25'),
	(168, 96, 0, 294, 125, '1', '1', '1', '2015-12-24 20:02:48', '2015-12-24 14:02:48'),
	(169, 96, 0, 295, 126, '1', '1', '0', '2015-12-24 20:03:12', '2015-12-24 14:03:12'),
	(170, 96, 0, 296, 127, '1', '1', '0', '2015-12-24 20:03:32', '2015-12-24 14:03:32'),
	(171, 96, 0, 297, 128, '1', '1', '0', '2015-12-24 20:04:01', '2015-12-24 14:04:01'),
	(172, 5, 0, 298, 129, '1', '1', '0', '2015-12-24 20:05:12', '2015-12-24 14:05:12'),
	(173, 5, 0, 299, 130, '1', '1', '0', '2015-12-24 20:05:47', '2015-12-24 14:05:47'),
	(174, 5, 0, 300, 131, '1', '1', '0', '2015-12-24 20:06:15', '2015-12-24 14:06:15'),
	(175, 5, 0, 301, 132, '1', '1', '0', '2015-12-24 20:06:44', '2015-12-24 14:06:44'),
	(176, 5, 0, 302, 133, '1', '1', '0', '2015-12-24 20:07:12', '2015-12-24 14:07:12'),
	(177, 5, 0, 303, 134, '1', '1', '0', '2015-12-24 20:08:14', '2015-12-24 14:08:14'),
	(178, 5, 0, 304, 135, '1', '1', '0', '2015-12-24 20:08:36', '2015-12-24 14:08:36'),
	(179, 5, 0, 305, 136, '1', '1', '0', '2015-12-24 20:08:54', '2015-12-24 14:08:54'),
	(180, 5, 0, 306, 137, '1', '1', '0', '2015-12-24 20:09:15', '2015-12-24 14:09:15'),
	(181, 5, 0, 307, 138, '1', '1', '1', '2015-12-24 20:09:37', '2015-12-24 14:09:37'),
	(182, 5, 0, 308, 139, '1', '1', '0', '2015-12-24 20:10:07', '2015-12-24 14:10:07'),
	(183, 5, 0, 309, 140, '1', '1', '0', '2015-12-24 20:10:32', '2015-12-24 14:10:32'),
	(184, 5, 0, 310, 141, '1', '1', '0', '2015-12-24 20:10:55', '2015-12-24 14:10:55'),
	(185, 5, 0, 311, 142, '1', '1', '0', '2015-12-24 20:11:13', '2015-12-24 14:11:13'),
	(186, 5, 0, 312, 143, '1', '1', '0', '2015-12-24 20:11:31', '2015-12-24 14:11:31'),
	(187, 5, 0, 313, 144, '1', '1', '0', '2015-12-24 20:11:57', '2015-12-24 14:11:57'),
	(188, 5, 0, 314, 145, '1', '1', '0', '2015-12-24 20:12:23', '2015-12-24 14:12:23'),
	(189, 5, 0, 315, 146, '1', '1', '0', '2015-12-24 20:12:51', '2015-12-24 14:12:51'),
	(190, 5, 0, 316, 147, '1', '1', '0', '2015-12-24 20:13:12', '2015-12-24 14:13:12'),
	(191, 5, 0, 317, 148, '1', '1', '0', '2015-12-24 20:13:46', '2015-12-24 14:13:46'),
	(192, 5, 0, 318, 149, '1', '1', '0', '2015-12-24 20:14:06', '2015-12-24 14:14:06'),
	(193, 93, 0, 433, 0, '1', '1', '0', '2016-02-26 05:47:56', '2016-02-25 23:47:56');
/*!40000 ALTER TABLE `ant_profesor` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_profesorsociedad
CREATE TABLE IF NOT EXISTS `ant_profesorsociedad` (
  `PROFSOCP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `PROP_Codigo` int(11) NOT NULL DEFAULT '0',
  `SOCIEDP_Codigo` int(11) NOT NULL DEFAULT '0',
  `PROFSOCC_FechaSuscripcion` date NOT NULL DEFAULT '0000-00-00',
  `PROFSOCC_FechaModificacion` datetime DEFAULT NULL,
  `PROFSOCC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PROFSOCP_Codigo`),
  KEY `FK_profesorsociedad_profesor` (`PROP_Codigo`),
  KEY `FK_profesorsociedad_sociedad` (`SOCIEDP_Codigo`),
  CONSTRAINT `FK_profesorsociedad_profesor` FOREIGN KEY (`PROP_Codigo`) REFERENCES `ant_profesor` (`PROP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_profesorsociedad_sociedad` FOREIGN KEY (`SOCIEDP_Codigo`) REFERENCES `ant_sociedad` (`SOCIEDP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_profesorsociedad: ~0 rows (approximately)
/*!40000 ALTER TABLE `ant_profesorsociedad` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_profesorsociedad` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_puntaje
CREATE TABLE IF NOT EXISTS `ant_puntaje` (
  `PUNTP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `PRODATRIB_Codigo` int(11) NOT NULL,
  `ORDENP_Codigo` int(11) NOT NULL DEFAULT '0',
  `PUNTC_Puntaje` double NOT NULL DEFAULT '0',
  `PUNTC_FechaInicio` datetime DEFAULT NULL,
  `PUNTC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PUNTP_Codigo`),
  KEY `FK_puntaje_productoatributo` (`PRODATRIB_Codigo`),
  KEY `FK_puntaje_orden` (`ORDENP_Codigo`),
  CONSTRAINT `FK_puntaje_orden` FOREIGN KEY (`ORDENP_Codigo`) REFERENCES `ant_matricula` (`ORDENP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_puntaje: ~0 rows (approximately)
/*!40000 ALTER TABLE `ant_puntaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_puntaje` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_rol
CREATE TABLE IF NOT EXISTS `ant_rol` (
  `ROL_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `ROL_Descripcion` varchar(150) DEFAULT NULL,
  `ROL_FlagEstado` char(1) DEFAULT '1',
  `ROL_FlagAcceso` char(1) DEFAULT '3' COMMENT '1:Total, 2:Por curso,3: Por profesor ',
  `ROL_FechaModificacion` datetime DEFAULT NULL,
  `ROL_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ROL_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table cepreadm.ant_rol: ~4 rows (approximately)
/*!40000 ALTER TABLE `ant_rol` DISABLE KEYS */;
INSERT INTO `ant_rol` (`ROL_Codigo`, `ROL_Descripcion`, `ROL_FlagEstado`, `ROL_FlagAcceso`, `ROL_FechaModificacion`, `ROL_FechaRegistro`) VALUES
	(4, 'Coordinador general', '1', '1', NULL, '2015-10-16 08:53:26'),
	(6, 'Coordinador de plana', '1', '2', NULL, '2015-12-18 21:32:25'),
	(7, 'Profesor', '1', '3', NULL, '2015-12-18 21:32:06'),
	(8, ':::Seleccione:::', '1', '1', NULL, '2015-08-05 16:08:09');
/*!40000 ALTER TABLE `ant_rol` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_sector
CREATE TABLE IF NOT EXISTS `ant_sector` (
  `SECTORP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `SECTORC_Descripcion` varchar(150) DEFAULT NULL,
  `SECTORC_FechaModificacion` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SECTORC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`SECTORP_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_sector: ~6 rows (approximately)
/*!40000 ALTER TABLE `ant_sector` DISABLE KEYS */;
INSERT INTO `ant_sector` (`SECTORP_Codigo`, `SECTORC_Descripcion`, `SECTORC_FechaModificacion`, `SECTORC_FechaRegistro`) VALUES
	(1, 'Educacion', '0000-00-00 00:00:00', '2015-11-16 11:32:23'),
	(2, 'Pesqueria', '0000-00-00 00:00:00', '2015-11-16 11:32:30'),
	(3, 'Mineria', '0000-00-00 00:00:00', '2015-11-16 11:32:36'),
	(4, 'Construccion', '0000-00-00 00:00:00', '2015-11-16 11:32:43'),
	(5, 'Metalmecanico', '0000-00-00 00:00:00', '2015-11-16 11:32:50'),
	(6, 'Electricidad', '0000-00-00 00:00:00', '2015-11-16 11:32:57');
/*!40000 ALTER TABLE `ant_sector` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_semana
CREATE TABLE IF NOT EXISTS `ant_semana` (
  `PRODATRIB_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `CICLOP_Codigo` int(11) NOT NULL,
  `TIPCICLOP_Codigo` int(11) NOT NULL,
  `PRODATRIB_Nombre` varchar(250) DEFAULT NULL,
  `PRODATRIB_Descripcion` varchar(250) DEFAULT NULL,
  `PRODATRIB_FechaInicio` date NOT NULL DEFAULT '0000-00-00',
  `PRODATRIB_FechaFin` date NOT NULL DEFAULT '0000-00-00',
  `PRODATRIB_FechaModificacion` datetime DEFAULT NULL,
  `PRODATRIB_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PRODATRIB_Codigo`),
  KEY `FK_semana_ciclo` (`CICLOP_Codigo`),
  KEY `FK_semana_tipoestudiociclo` (`TIPCICLOP_Codigo`),
  CONSTRAINT `FK_semana_ciclo` FOREIGN KEY (`CICLOP_Codigo`) REFERENCES `ant_ciclo` (`CICLOP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_semana_tipoestudiociclo` FOREIGN KEY (`TIPCICLOP_Codigo`) REFERENCES `ant_tipoestudiociclo` (`TIPCICLOP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- Dumping data for table cepreadm.ant_semana: ~64 rows (approximately)
/*!40000 ALTER TABLE `ant_semana` DISABLE KEYS */;
INSERT INTO `ant_semana` (`PRODATRIB_Codigo`, `CICLOP_Codigo`, `TIPCICLOP_Codigo`, `PRODATRIB_Nombre`, `PRODATRIB_Descripcion`, `PRODATRIB_FechaInicio`, `PRODATRIB_FechaFin`, `PRODATRIB_FechaModificacion`, `PRODATRIB_FechaRegistro`) VALUES
	(1, 1, 1, 'Semana 01', 'erty sdfsff fdassdf ', '2015-09-02', '2015-09-04', '2015-09-21 10:27:04', '2015-09-21 09:57:19'),
	(2, 1, 1, 'Semana 02', '', '2015-09-09', '2015-09-11', NULL, '2015-09-21 10:27:35'),
	(3, 1, 1, 'Semana 03', '', '2015-09-16', '2015-09-18', NULL, '2015-09-21 10:27:59'),
	(4, 1, 1, 'Semana 04', '', '2015-09-23', '2015-09-25', NULL, '2015-09-21 10:28:17'),
	(5, 1, 1, 'Semana 05', '', '2015-09-30', '2015-10-02', NULL, '2015-09-21 10:28:45'),
	(6, 1, 1, 'Semana 06', '', '2015-10-07', '2015-10-09', NULL, '2015-09-21 10:29:08'),
	(7, 1, 1, 'Semana 07', '', '2015-10-14', '2015-10-16', NULL, '2015-09-21 10:29:34'),
	(8, 1, 1, 'Semana 08', '', '2015-10-21', '2015-10-23', NULL, '2015-09-21 10:29:57'),
	(9, 1, 1, 'Semana 09', '', '2015-10-28', '2015-10-30', NULL, '2015-09-21 10:32:13'),
	(10, 1, 1, 'Semana 10', '', '2015-11-04', '2015-11-06', NULL, '2015-09-21 10:32:37'),
	(11, 1, 1, 'Semana 11', '', '2015-11-11', '2015-11-13', NULL, '2015-09-21 10:32:57'),
	(12, 1, 1, 'Semana 12', '', '2015-11-18', '2015-11-20', '2015-09-21 10:35:59', '2015-09-21 10:33:16'),
	(13, 1, 1, 'Semana 13', '', '2015-11-25', '2015-11-27', NULL, '2015-09-21 10:33:37'),
	(14, 1, 1, 'Semana 14', '', '2015-12-02', '2015-12-04', NULL, '2015-09-21 10:33:56'),
	(15, 1, 1, 'Semana 15', '', '2015-12-09', '2015-12-11', NULL, '2015-09-21 10:34:16'),
	(16, 1, 1, 'Semana 16', '', '2015-12-16', '2015-12-18', NULL, '2015-09-21 10:34:38'),
	(17, 1, 1, 'Semana 17', '', '2015-12-23', '2015-12-30', NULL, '2015-09-21 10:34:56'),
	(18, 1, 1, 'Semana 18', '', '2016-01-06', '2016-01-08', NULL, '2015-09-21 10:35:15'),
	(19, 1, 1, 'Semana 19', '', '2016-02-13', '2016-01-15', '2015-09-21 10:36:09', '2015-09-21 10:35:33'),
	(20, 1, 1, 'Semana 20', '', '2016-01-20', '2016-01-22', NULL, '2015-09-21 10:36:33'),
	(21, 1, 11, 'Semana 01', '', '2016-01-05', '2016-01-07', NULL, '2015-09-21 10:38:10'),
	(22, 1, 11, 'Semana 02', '', '2016-01-12', '2016-01-14', NULL, '2015-09-21 10:38:55'),
	(23, 1, 11, 'Semana 03', '', '2016-01-19', '2016-01-21', '2015-09-21 10:39:52', '2015-09-21 10:39:15'),
	(24, 1, 11, 'Semana 04', '', '2016-01-26', '2016-01-28', NULL, '2015-09-21 10:39:34'),
	(25, 1, 11, 'Semana 05', '', '2016-02-02', '2016-02-04', NULL, '2015-09-21 10:40:20'),
	(26, 1, 11, 'Semana 06', '', '2016-02-09', '2016-02-11', NULL, '2015-09-21 10:40:42'),
	(27, 1, 11, 'Semana 07', '', '2016-02-16', '2016-02-18', NULL, '2015-09-21 10:41:10'),
	(28, 1, 11, 'Semana 08', '', '2016-02-23', '2016-02-25', NULL, '2015-09-21 10:41:38'),
	(29, 1, 3, 'Semana 01', '', '0000-00-00', '0000-00-00', NULL, '2015-11-27 13:23:54'),
	(30, 1, 3, 'Semana 02', '', '0000-00-00', '0000-00-00', NULL, '2015-11-27 13:24:25'),
	(31, 1, 3, 'Semana 03', '', '0000-00-00', '0000-00-00', NULL, '2015-11-27 13:24:36'),
	(32, 1, 3, 'Semana 04', '', '0000-00-00', '0000-00-00', NULL, '2015-11-27 13:24:47'),
	(33, 1, 3, 'Semana 05', '', '0000-00-00', '0000-00-00', NULL, '2015-11-27 13:28:24'),
	(34, 1, 3, 'Semana 06', '', '0000-00-00', '0000-00-00', NULL, '2015-11-27 13:28:34'),
	(35, 1, 3, 'Semana 07', '', '0000-00-00', '0000-00-00', NULL, '2015-11-27 13:28:43'),
	(36, 1, 3, 'Semana 08', '', '0000-00-00', '0000-00-00', NULL, '2015-11-27 13:28:53'),
	(37, 1, 3, 'Semana 09', '', '0000-00-00', '0000-00-00', NULL, '2015-11-27 13:29:02'),
	(38, 1, 3, 'Semana 10', '', '0000-00-00', '0000-00-00', NULL, '2015-11-27 13:29:10'),
	(39, 1, 3, 'Semana 11', '', '0000-00-00', '0000-00-00', NULL, '2015-11-27 13:29:20'),
	(40, 1, 3, 'Semana 12', '', '0000-00-00', '0000-00-00', NULL, '2015-11-27 13:29:29'),
	(41, 1, 3, 'Semana 13', '', '0000-00-00', '0000-00-00', NULL, '2015-11-27 13:29:37'),
	(42, 1, 3, 'Semana 14', '', '0000-00-00', '0000-00-00', NULL, '2015-11-27 13:29:47'),
	(43, 1, 3, 'Semana 15', '', '0000-00-00', '0000-00-00', NULL, '2015-11-27 13:29:55'),
	(44, 1, 3, 'Semana 16', '', '0000-00-00', '0000-00-00', NULL, '2015-11-27 13:30:05'),
	(45, 1, 3, 'Semana 17', '', '0000-00-00', '0000-00-00', NULL, '2015-11-27 13:30:14'),
	(46, 1, 3, 'Semana 18', '', '0000-00-00', '0000-00-00', NULL, '2015-11-27 13:30:23'),
	(47, 1, 3, 'Semana 19', '', '0000-00-00', '0000-00-00', NULL, '2015-11-27 13:30:31'),
	(48, 1, 3, 'Semana 20', '', '0000-00-00', '0000-00-00', NULL, '2015-11-27 13:30:41'),
	(49, 1, 5, 'Semana 01', '', '0000-00-00', '0000-00-00', NULL, '2015-11-28 00:06:59'),
	(50, 1, 5, 'Semana 02', '', '0000-00-00', '0000-00-00', NULL, '2015-11-28 00:07:13'),
	(51, 1, 5, 'Semana 03', '', '0000-00-00', '0000-00-00', NULL, '2015-11-28 00:07:27'),
	(52, 1, 5, 'Semana 04', '', '0000-00-00', '0000-00-00', NULL, '2015-11-28 00:08:57'),
	(53, 1, 5, 'Semana 05', '', '0000-00-00', '0000-00-00', NULL, '2015-11-28 00:09:13'),
	(54, 1, 5, 'Semana 06', '', '0000-00-00', '0000-00-00', NULL, '2015-11-28 00:09:24'),
	(55, 1, 5, 'Semana 07', '', '0000-00-00', '0000-00-00', NULL, '2015-11-28 00:09:36'),
	(56, 1, 5, 'Semana 08', '', '0000-00-00', '0000-00-00', NULL, '2015-11-28 00:09:47'),
	(57, 1, 12, 'Semana 01', '', '0000-00-00', '0000-00-00', NULL, '2015-11-28 00:11:47'),
	(58, 1, 12, 'Semana 02', '', '0000-00-00', '0000-00-00', NULL, '2015-11-28 00:12:01'),
	(59, 1, 12, 'Semana 03', '', '0000-00-00', '0000-00-00', NULL, '2015-11-28 00:12:12'),
	(60, 1, 12, 'Semana 04', '', '0000-00-00', '0000-00-00', NULL, '2015-11-28 00:12:24'),
	(61, 1, 12, 'Semana 05', '', '0000-00-00', '0000-00-00', NULL, '2015-11-28 00:12:35'),
	(62, 1, 12, 'Semana 06', '', '0000-00-00', '0000-00-00', NULL, '2015-11-28 00:12:48'),
	(63, 1, 12, 'Semana 07', '', '0000-00-00', '0000-00-00', NULL, '2015-11-28 00:13:24'),
	(64, 1, 12, 'Semana 08', '', '0000-00-00', '0000-00-00', NULL, '2015-11-28 00:13:34');
/*!40000 ALTER TABLE `ant_semana` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_sociedad
CREATE TABLE IF NOT EXISTS `ant_sociedad` (
  `SOCIEDP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `SOCIEDC_Nombre` varchar(50) NOT NULL,
  `SOCIEDC_Descripcion` varchar(150) NOT NULL,
  `SOCIEDC_FechaModificacion` datetime DEFAULT NULL,
  `SOCIEDC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`SOCIEDP_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_sociedad: ~2 rows (approximately)
/*!40000 ALTER TABLE `ant_sociedad` DISABLE KEYS */;
INSERT INTO `ant_sociedad` (`SOCIEDP_Codigo`, `SOCIEDC_Nombre`, `SOCIEDC_Descripcion`, `SOCIEDC_FechaModificacion`, `SOCIEDC_FechaRegistro`) VALUES
	(1, 'IEE', 'Instituto de Ingeniero Electricos Electricisas', NULL, '2015-11-06 12:30:09'),
	(2, 'AEP', 'Asociacion Electrotecnica Peruana', NULL, '2015-11-06 12:30:26');
/*!40000 ALTER TABLE `ant_sociedad` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_subcurso
CREATE TABLE IF NOT EXISTS `ant_subcurso` (
  `SUBCURSOP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `PROD_Codigo` int(11) NOT NULL,
  `SUBCURSOC_Nombre` varchar(150) NOT NULL,
  `SUBCURSOC_FechaModificacion` datetime NOT NULL,
  `SUBCURSOC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`SUBCURSOP_Codigo`),
  KEY `FK_ant_subcurso_ant_curso` (`PROD_Codigo`),
  CONSTRAINT `FK_ant_subcurso_ant_curso` FOREIGN KEY (`PROD_Codigo`) REFERENCES `ant_curso` (`PROD_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_subcurso: ~6 rows (approximately)
/*!40000 ALTER TABLE `ant_subcurso` DISABLE KEYS */;
INSERT INTO `ant_subcurso` (`SUBCURSOP_Codigo`, `PROD_Codigo`, `SUBCURSOC_Nombre`, `SUBCURSOC_FechaModificacion`, `SUBCURSOC_FechaRegistro`) VALUES
	(1, 98, 'Historia', '0000-00-00 00:00:00', '2016-01-09 09:51:54'),
	(2, 98, 'R.Verbal', '0000-00-00 00:00:00', '2016-01-09 09:53:38'),
	(3, 98, 'Historia', '0000-00-00 00:00:00', '2016-01-09 09:53:48'),
	(4, 98, 'Economia', '0000-00-00 00:00:00', '2016-01-09 09:54:05'),
	(5, 98, 'Lenguaje', '0000-00-00 00:00:00', '2016-01-09 09:54:16'),
	(6, 98, 'Literatura', '0000-00-00 00:00:00', '2016-01-09 09:54:25');
/*!40000 ALTER TABLE `ant_subcurso` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_tarea
CREATE TABLE IF NOT EXISTS `ant_tarea` (
  `TAREAP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `USUA_Codigo` int(11) NOT NULL,
  `PROP_Codigo` int(11) NOT NULL,
  `CICLOP_Codigo` int(11) NOT NULL,
  `TIPOTAREAP_Codigo` int(11) DEFAULT NULL,
  `TAREAC_Nombre` varchar(500) NOT NULL,
  `TAREAC_Descripcion` varchar(500) NOT NULL,
  `TAREAC_Numero` int(11) DEFAULT NULL,
  `TAREAC_Fecha` date NOT NULL DEFAULT '0000-00-00',
  `TAREAC_FechaEntrega` date NOT NULL DEFAULT '0000-00-00',
  `TAREAC_FechaModificacion` datetime DEFAULT NULL,
  `TAREAC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`TAREAP_Codigo`),
  KEY `FK_tarea_usuario` (`USUA_Codigo`),
  KEY `FK_tarea_profesor` (`PROP_Codigo`),
  KEY `FK_tarea_ciclo` (`CICLOP_Codigo`),
  KEY `FK_tarea_tipotarea` (`TIPOTAREAP_Codigo`),
  CONSTRAINT `FK_tarea_ciclo` FOREIGN KEY (`CICLOP_Codigo`) REFERENCES `ant_ciclo` (`CICLOP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tarea_profesor` FOREIGN KEY (`PROP_Codigo`) REFERENCES `ant_profesor` (`PROP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tarea_tipotarea` FOREIGN KEY (`TIPOTAREAP_Codigo`) REFERENCES `ant_tipotarea` (`TIPOTAREAP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tarea_usuario` FOREIGN KEY (`USUA_Codigo`) REFERENCES `ant_usuario` (`USUA_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_tarea: ~5 rows (approximately)
/*!40000 ALTER TABLE `ant_tarea` DISABLE KEYS */;
INSERT INTO `ant_tarea` (`TAREAP_Codigo`, `USUA_Codigo`, `PROP_Codigo`, `CICLOP_Codigo`, `TIPOTAREAP_Codigo`, `TAREAC_Nombre`, `TAREAC_Descripcion`, `TAREAC_Numero`, `TAREAC_Fecha`, `TAREAC_FechaEntrega`, `TAREAC_FechaModificacion`, `TAREAC_FechaRegistro`) VALUES
	(10, 7, 104, 1, 2, 'Problemas para el seminario 5', 'Problemas para el seminario 5', 5, '2016-03-24', '2016-04-09', NULL, '2016-03-24 01:46:07');
/*!40000 ALTER TABLE `ant_tarea` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_tareadetalle
CREATE TABLE IF NOT EXISTS `ant_tareadetalle` (
  `TAREADETP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `TAREAP_Codigo` int(11) NOT NULL DEFAULT '0',
  `TIPCICLOP_Codigo` int(11) NOT NULL DEFAULT '0',
  `PROP_Codigo` int(11) DEFAULT '0',
  `PRODATRIBDET_Codigo` int(11) DEFAULT '0',
  `TAREADETC_Cantidad` varchar(50) DEFAULT NULL,
  `TAREADETC_CantidadEntregada` varchar(50) DEFAULT NULL,
  `TAREADETC_Situacion` char(1) DEFAULT '1' COMMENT '1: Pendiente, 2:OK, 3:Leve, 4:Retraso',
  `TAREADETC_FechaEntrega` date NOT NULL DEFAULT '0000-00-00',
  `TAREADETC_FechaModificacion` datetime DEFAULT NULL,
  `TAREADETC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`TAREADETP_Codigo`),
  KEY `FK_tareadetalle_tarea` (`TAREAP_Codigo`),
  KEY `FK_tareadetalle_profesor` (`PROP_Codigo`),
  CONSTRAINT `FK_tareadetalle_profesor` FOREIGN KEY (`PROP_Codigo`) REFERENCES `ant_profesor` (`PROP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tareadetalle_tarea` FOREIGN KEY (`TAREAP_Codigo`) REFERENCES `ant_tarea` (`TAREAP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_tareadetalle: ~9 rows (approximately)
/*!40000 ALTER TABLE `ant_tareadetalle` DISABLE KEYS */;
INSERT INTO `ant_tareadetalle` (`TAREADETP_Codigo`, `TAREAP_Codigo`, `TIPCICLOP_Codigo`, `PROP_Codigo`, `PRODATRIBDET_Codigo`, `TAREADETC_Cantidad`, `TAREADETC_CantidadEntregada`, `TAREADETC_Situacion`, `TAREADETC_FechaEntrega`, `TAREADETC_FechaModificacion`, `TAREADETC_FechaRegistro`) VALUES
	(12, 10, 1, 102, 12, '7', NULL, '2', '2016-04-09', NULL, '2016-03-24 01:46:07'),
	(13, 10, 1, 105, 13, '5', NULL, '2', '2016-04-09', NULL, '2016-03-24 01:46:07'),
	(14, 10, 1, 118, 14, '10', NULL, '2', '2016-04-09', NULL, '2016-03-24 01:46:07'),
	(15, 10, 1, 119, 15, '7', NULL, '2', '2016-04-09', NULL, '2016-03-24 01:46:07'),
	(16, 10, 1, 110, 16, '10', NULL, '2', '2016-04-09', NULL, '2016-03-24 01:46:08'),
	(17, 10, 1, 116, 17, '5', NULL, '2', '2016-04-09', NULL, '2016-03-24 01:46:08'),
	(18, 10, 1, 106, 18, '10', NULL, '2', '2016-04-09', NULL, '2016-03-24 01:46:08'),
	(19, 10, 1, 109, 19, '9', NULL, '2', '2016-04-09', NULL, '2016-03-24 01:46:08');
/*!40000 ALTER TABLE `ant_tareadetalle` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_tareo
CREATE TABLE IF NOT EXISTS `ant_tareo` (
  `TAREOP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `PROP_Codigo` int(11) NOT NULL DEFAULT '0',
  `AULAP_Codigo` int(11) NOT NULL DEFAULT '0',
  `TAREOC_Tipo` int(1) NOT NULL DEFAULT '0' COMMENT '1:Asistencia,2:Reemplazo;3:Falta',
  `USUA_Codigo` int(1) NOT NULL DEFAULT '0',
  `TAREOC_ProfesorReemplazado` int(11) NOT NULL DEFAULT '0',
  `TAREOC_Fecha` date NOT NULL DEFAULT '0000-00-00',
  `TAREOC_Hinicio` time NOT NULL,
  `TAREOC_Hfin` time NOT NULL,
  `TAREOC_Costo` double NOT NULL,
  `TAREOC_FechaModificacion` datetime DEFAULT NULL,
  `TAREOC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`TAREOP_Codigo`),
  KEY `FK_tareo_profesor` (`PROP_Codigo`),
  KEY `FK_tareo_aula` (`AULAP_Codigo`),
  KEY `FK_tareo_tipoasistencia` (`TAREOC_Tipo`),
  KEY `FK_tareo_usuario` (`USUA_Codigo`),
  CONSTRAINT `FK_tareo_aula` FOREIGN KEY (`AULAP_Codigo`) REFERENCES `ant_aula` (`AULAP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tareo_profesor` FOREIGN KEY (`PROP_Codigo`) REFERENCES `ant_profesor` (`PROP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tareo_tipoasistencia` FOREIGN KEY (`TAREOC_Tipo`) REFERENCES `ant_tipoasistencia` (`TIPOASISP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tareo_usuario` FOREIGN KEY (`USUA_Codigo`) REFERENCES `ant_usuario` (`USUA_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_tareo: ~0 rows (approximately)
/*!40000 ALTER TABLE `ant_tareo` DISABLE KEYS */;
INSERT INTO `ant_tareo` (`TAREOP_Codigo`, `PROP_Codigo`, `AULAP_Codigo`, `TAREOC_Tipo`, `USUA_Codigo`, `TAREOC_ProfesorReemplazado`, `TAREOC_Fecha`, `TAREOC_Hinicio`, `TAREOC_Hfin`, `TAREOC_Costo`, `TAREOC_FechaModificacion`, `TAREOC_FechaRegistro`) VALUES
	(1, 109, 1, 1, 7, 0, '2016-03-12', '08:30:00', '10:00:00', 0, NULL, '2016-03-11 22:59:31');
/*!40000 ALTER TABLE `ant_tareo` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_tema
CREATE TABLE IF NOT EXISTS `ant_tema` (
  `PRODATRIBDET_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `PRODATRIB_Codigo` int(11) NOT NULL,
  `CURSOCIP_Codigo` int(11) NOT NULL DEFAULT '0',
  `TIPCICLOP_Codigo` int(11) NOT NULL DEFAULT '0',
  `TEMAC_Descripcion` varchar(250) DEFAULT NULL,
  `TEMAC_FechaModificacion` datetime DEFAULT NULL,
  `TEMAC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PRODATRIBDET_Codigo`),
  KEY `FK_tema_semana` (`PRODATRIB_Codigo`),
  KEY `FK_tema_cursociclo` (`CURSOCIP_Codigo`),
  KEY `FK_tema_tipoestudiociclo` (`TIPCICLOP_Codigo`),
  CONSTRAINT `FK_tema_cursociclo` FOREIGN KEY (`CURSOCIP_Codigo`) REFERENCES `ant_cursociclo` (`CURSOCIP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tema_tipoestudiociclo` FOREIGN KEY (`TIPCICLOP_Codigo`) REFERENCES `ant_tipoestudiociclo` (`TIPCICLOP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- Dumping data for table cepreadm.ant_tema: ~37 rows (approximately)
/*!40000 ALTER TABLE `ant_tema` DISABLE KEYS */;
INSERT INTO `ant_tema` (`PRODATRIBDET_Codigo`, `PRODATRIB_Codigo`, `CURSOCIP_Codigo`, `TIPCICLOP_Codigo`, `TEMAC_Descripcion`, `TEMAC_FechaModificacion`, `TEMAC_FechaRegistro`) VALUES
	(2, 0, 4, 1, 'Nociones basicas 2', '2015-09-21 11:46:35', '2015-09-21 11:45:31'),
	(3, 1, 4, 1, 'Segmentos de recta', NULL, '2015-09-21 11:46:52'),
	(4, 2, 4, 1, 'Triangulos', NULL, '2015-09-21 11:47:11'),
	(5, 0, 4, 1, 'Angulos y lados', NULL, '2015-09-21 11:47:32'),
	(6, 3, 4, 1, 'Congruencia de triangulos', NULL, '2015-09-21 11:47:57'),
	(7, 3, 4, 1, 'Aplicaciones de la congruencia', NULL, '2015-09-21 11:48:17'),
	(8, 4, 4, 1, 'Teorema de base media', NULL, '2015-09-21 11:48:35'),
	(9, 4, 4, 1, 'Poligonos', NULL, '2015-09-21 11:48:53'),
	(10, 5, 4, 1, 'Cuadrilateros', NULL, '2015-09-21 11:49:12'),
	(11, 0, 4, 1, 'Circunferencia II', NULL, '2015-09-21 11:49:34'),
	(12, 6, 4, 1, 'Cuadrilaterio circunscrito y circunscriptible', NULL, '2015-09-21 11:50:03'),
	(13, 6, 4, 1, 'Angulos en la circunferencia', NULL, '2015-09-21 11:50:29'),
	(14, 7, 4, 1, 'Proporcionalidad', NULL, '2015-09-21 11:50:45'),
	(15, 7, 4, 1, 'Semejanza de triangulos', NULL, '2015-09-21 11:51:02'),
	(16, 8, 4, 1, 'Relacione metricas en el trianglo rectangulo', NULL, '2015-09-21 11:51:23'),
	(17, 8, 4, 1, 'Teorema de Heron', NULL, '2015-09-21 11:51:37'),
	(18, 9, 4, 1, 'Poligonos regulares', NULL, '2015-09-21 11:51:55'),
	(19, 9, 4, 1, 'Poligonos regulares notables inscritos', NULL, '2015-09-21 11:52:18'),
	(20, 21, 4, 11, 'Repaso de geometria plana', NULL, '2015-09-21 11:53:06'),
	(21, 21, 4, 11, 'Postulados y teroresmas de la congruencia de triangulos', NULL, '2015-09-21 11:53:32'),
	(22, 22, 4, 11, 'Teorema sobre paralelogramso trapecios', NULL, '2015-09-21 11:54:22'),
	(23, 22, 4, 11, 'Teorema de Thales', NULL, '2015-09-21 11:54:41'),
	(24, 0, 4, 3, 'Angulos', NULL, '2015-11-27 13:31:50'),
	(25, 0, 4, 3, 'Poligonos', NULL, '2015-11-27 13:32:34'),
	(26, 30, 8, 3, 'Cinematica de una particula', NULL, '2015-11-27 13:32:54'),
	(28, 31, 8, 3, 'Cimetaica de una particula', NULL, '2015-11-28 00:42:50'),
	(29, 31, 8, 3, 'Movimiento en 2 direcciones', NULL, '2015-11-28 00:43:14'),
	(30, 32, 8, 3, 'Movimiento circular uniforme', NULL, '2015-11-28 00:44:02'),
	(31, 32, 8, 3, 'Leyes de Newton', NULL, '2015-11-28 00:44:26'),
	(32, 33, 8, 3, 'Conceptro de cuerpo rigido', NULL, '2015-11-28 00:44:59'),
	(33, 33, 8, 3, 'Aplicacion de la segunda ley de Newton', NULL, '2015-11-28 00:45:33'),
	(34, 34, 8, 3, 'Gravitacion Universal', NULL, '2015-11-28 00:46:02'),
	(35, 34, 8, 3, 'Trabajo y energia', NULL, '2015-11-28 00:46:22'),
	(36, 35, 8, 3, 'Impulso', NULL, '2015-11-28 00:47:08'),
	(37, 35, 8, 3, 'Cantidad de movimiento', NULL, '2015-11-28 00:47:35'),
	(38, 36, 8, 3, 'Oscilaciones', NULL, '2015-11-28 00:48:33'),
	(39, 36, 8, 3, 'Ondas sonoras', NULL, '2015-11-28 00:48:59');
/*!40000 ALTER TABLE `ant_tema` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_tipoasistencia
CREATE TABLE IF NOT EXISTS `ant_tipoasistencia` (
  `TIPOASISP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `TIPOASISC_Nombre` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`TIPOASISP_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_tipoasistencia: ~2 rows (approximately)
/*!40000 ALTER TABLE `ant_tipoasistencia` DISABLE KEYS */;
INSERT INTO `ant_tipoasistencia` (`TIPOASISP_Codigo`, `TIPOASISC_Nombre`) VALUES
	(1, 'Tardanza'),
	(2, 'Reemplazo');
/*!40000 ALTER TABLE `ant_tipoasistencia` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_tipociclo
CREATE TABLE IF NOT EXISTS `ant_tipociclo` (
  `TIPOCICLOP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `TIPOCICLOC_Descripcion` varchar(100) DEFAULT NULL,
  `TIPOCICLOC_Comentario` varchar(100) DEFAULT NULL,
  `TIPOCICLOC_FechaRegistro` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`TIPOCICLOP_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_tipociclo: ~2 rows (approximately)
/*!40000 ALTER TABLE `ant_tipociclo` DISABLE KEYS */;
INSERT INTO `ant_tipociclo` (`TIPOCICLOP_Codigo`, `TIPOCICLOC_Descripcion`, `TIPOCICLOC_Comentario`, `TIPOCICLOC_FechaRegistro`) VALUES
	(1, 'Ciclo 1', 'Ciclo de inicio de año', '2015-08-10 18:14:14'),
	(2, 'Ciclo 2', 'Ciclo de fin de año', '2015-08-10 18:14:19');
/*!40000 ALTER TABLE `ant_tipociclo` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_tipodocumento
CREATE TABLE IF NOT EXISTS `ant_tipodocumento` (
  `TIPDOCP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `TIPDOCC_Descripcion` varchar(150) DEFAULT NULL,
  `TIPOCC_Inciales` varchar(150) DEFAULT NULL,
  `TIPOCC_FlagEstado` char(1) DEFAULT '1',
  `TIPOCC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`TIPDOCP_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table cepreadm.ant_tipodocumento: ~3 rows (approximately)
/*!40000 ALTER TABLE `ant_tipodocumento` DISABLE KEYS */;
INSERT INTO `ant_tipodocumento` (`TIPDOCP_Codigo`, `TIPDOCC_Descripcion`, `TIPOCC_Inciales`, `TIPOCC_FlagEstado`, `TIPOCC_FechaRegistro`) VALUES
	(1, 'Documento Nacional de Identidad', 'D.N.I.', '1', '2010-12-16 12:50:42'),
	(2, 'Carnet de Extranjeria', 'C.E.', '1', '2010-12-16 12:50:46'),
	(3, '::Seleccione::', '::Seleccione::', '1', '2014-10-06 04:19:27');
/*!40000 ALTER TABLE `ant_tipodocumento` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_tipoestudio
CREATE TABLE IF NOT EXISTS `ant_tipoestudio` (
  `TIPP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `TIPC_Nombre` varchar(100) DEFAULT NULL,
  `TIPC_Descripcion` varchar(100) DEFAULT NULL,
  `TIPC_FlagEstado` char(1) NOT NULL DEFAULT '1',
  `TIPC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`TIPP_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_tipoestudio: ~7 rows (approximately)
/*!40000 ALTER TABLE `ant_tipoestudio` DISABLE KEYS */;
INSERT INTO `ant_tipoestudio` (`TIPP_Codigo`, `TIPC_Nombre`, `TIPC_Descripcion`, `TIPC_FlagEstado`, `TIPC_FechaRegistro`) VALUES
	(3, 'Pre', 'Tipo de Estudio para los alumnos que van a postular a la UNI', '1', '2015-05-15 04:19:44'),
	(4, 'Repaso', 'Tipo de estudio para los alumnos que requieren un repaso antes de postular a la UNI', '1', '2015-05-15 04:19:49'),
	(5, 'Basico', 'Tipo de Estudio para los alumnos que recien egresan del colegio', '1', '2015-05-15 04:20:23'),
	(6, 'Intensivo', 'Tipo de Estudio para resolver problemas antes de dar el examen de la UNI', '1', '2015-05-15 04:20:28'),
	(7, 'Escolar 3ero', 'Tipo de Estudio para resolver problemas antes de dar el examen de la UNI', '1', '2015-08-10 12:16:34'),
	(8, 'Escolar 4to', 'Tipo de Estudio para resolver problemas antes de dar el examen de la UNI', '1', '2015-08-10 12:18:30'),
	(9, 'Escolar 5to', 'Tipo de Estudio para resolver problemas antes de dar el examen de la UNI', '1', '2015-08-10 12:18:46');
/*!40000 ALTER TABLE `ant_tipoestudio` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_tipoestudiociclo
CREATE TABLE IF NOT EXISTS `ant_tipoestudiociclo` (
  `TIPCICLOP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `TIPP_Codigo` int(11) NOT NULL DEFAULT '0',
  `CICLOP_Codigo` int(11) NOT NULL DEFAULT '0',
  `TIPCICLOC_Observacion` varchar(150) DEFAULT NULL,
  `TIPCICLOC_FlagEstado` char(1) NOT NULL DEFAULT '1',
  `TIPCICLOC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`TIPCICLOP_Codigo`),
  KEY `FK_tipoestudiociclo_tipoestudio` (`TIPP_Codigo`),
  KEY `FK_tipoestudiociclo_ciclo` (`CICLOP_Codigo`),
  CONSTRAINT `FK_tipoestudiociclo_ciclo` FOREIGN KEY (`CICLOP_Codigo`) REFERENCES `ant_ciclo` (`CICLOP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tipoestudiociclo_tipoestudio` FOREIGN KEY (`TIPP_Codigo`) REFERENCES `ant_tipoestudio` (`TIPP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_tipoestudiociclo: ~9 rows (approximately)
/*!40000 ALTER TABLE `ant_tipoestudiociclo` DISABLE KEYS */;
INSERT INTO `ant_tipoestudiociclo` (`TIPCICLOP_Codigo`, `TIPP_Codigo`, `CICLOP_Codigo`, `TIPCICLOC_Observacion`, `TIPCICLOC_FlagEstado`, `TIPCICLOC_FechaRegistro`) VALUES
	(1, 5, 1, 'gfgdfgdfg', '1', '2015-09-19 22:47:46'),
	(2, 4, 1, 'Por defecto', '1', '2015-09-21 08:29:31'),
	(3, 3, 1, 'Ciclo pre', '1', '2015-09-21 08:31:14'),
	(4, 6, 1, 'Este ciclo es intensico', '1', '2015-09-21 08:31:36'),
	(5, 7, 1, 'escolar', '1', '2015-09-21 08:32:08'),
	(8, 4, 2, 'sdfg', '1', '2015-09-21 08:33:59'),
	(9, 6, 2, 'sdfg', '1', '2015-09-21 08:34:10'),
	(11, 9, 1, 'Ciclo preparatoria', '1', '2015-09-21 10:37:27'),
	(12, 8, 1, '', '1', '2015-11-28 00:10:47');
/*!40000 ALTER TABLE `ant_tipoestudiociclo` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_tipoproducto
CREATE TABLE IF NOT EXISTS `ant_tipoproducto` (
  `TIPPROD_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `CICLOP_Codigo` int(11) DEFAULT NULL,
  `TIPPROD_Descripcion` varchar(250) DEFAULT NULL,
  `TIPPROD_FlagEstado` char(1) DEFAULT '1',
  `TIPPROD_FechaModificacion` datetime DEFAULT NULL,
  `TIPPROD_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`TIPPROD_Codigo`),
  KEY `FK_tipoproducto_compania` (`CICLOP_Codigo`),
  CONSTRAINT `FK_tipoproducto_compania` FOREIGN KEY (`CICLOP_Codigo`) REFERENCES `ant_ciclo` (`CICLOP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table cepreadm.ant_tipoproducto: ~3 rows (approximately)
/*!40000 ALTER TABLE `ant_tipoproducto` DISABLE KEYS */;
INSERT INTO `ant_tipoproducto` (`TIPPROD_Codigo`, `CICLOP_Codigo`, `TIPPROD_Descripcion`, `TIPPROD_FlagEstado`, `TIPPROD_FechaModificacion`, `TIPPROD_FechaRegistro`) VALUES
	(1, 1, 'Matematicas', '1', NULL, '2011-01-04 04:31:10'),
	(4, 1, 'Letras', '1', NULL, '2015-10-16 09:23:18'),
	(5, 1, ':::SELECCIONE::', '1', NULL, '2014-10-06 19:37:56');
/*!40000 ALTER TABLE `ant_tipoproducto` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_tipotarea
CREATE TABLE IF NOT EXISTS `ant_tipotarea` (
  `TIPOTAREAP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `TIPOTAREAC_Nombre` varchar(100) DEFAULT NULL,
  `TIPOTAREAC_FechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`TIPOTAREAP_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_tipotarea: ~3 rows (approximately)
/*!40000 ALTER TABLE `ant_tipotarea` DISABLE KEYS */;
INSERT INTO `ant_tipotarea` (`TIPOTAREAP_Codigo`, `TIPOTAREAC_Nombre`, `TIPOTAREAC_FechaRegistro`) VALUES
	(1, 'Problemas para PC', '2015-09-29 14:17:08'),
	(2, 'Problemas para Seminario', '2015-09-29 14:17:05'),
	(3, 'Revisión de probemas', '2015-09-29 14:17:07');
/*!40000 ALTER TABLE `ant_tipotarea` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_trabajo
CREATE TABLE IF NOT EXISTS `ant_trabajo` (
  `TRABAJP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `PROP_Codigo` int(11) NOT NULL DEFAULT '0',
  `EMPRP_Codigo` int(11) NOT NULL DEFAULT '0',
  `TRABAJC_Descripcion` varchar(150) DEFAULT NULL,
  `TRABAJC_FechaInicio` date NOT NULL DEFAULT '0000-00-00',
  `TRABAJC_FechaFin` date NOT NULL DEFAULT '0000-00-00',
  `TRABAJC_FechaModificacion` datetime DEFAULT NULL,
  `TRABAJC_FechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`TRABAJP_Codigo`),
  KEY `FK_trabajo_profesor` (`PROP_Codigo`),
  KEY `FK_trabajo_empresa` (`EMPRP_Codigo`),
  CONSTRAINT `FK_trabajo_empresa` FOREIGN KEY (`EMPRP_Codigo`) REFERENCES `ant_empresa` (`EMPRP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_trabajo_profesor` FOREIGN KEY (`PROP_Codigo`) REFERENCES `ant_profesor` (`PROP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_trabajo: ~0 rows (approximately)
/*!40000 ALTER TABLE `ant_trabajo` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_trabajo` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_turno
CREATE TABLE IF NOT EXISTS `ant_turno` (
  `TURNOP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `TURNOC_Descripcion` varchar(250) DEFAULT NULL,
  `TURNOC_Estado` char(1) NOT NULL DEFAULT '1' COMMENT '1:Activo,2:Inactivo',
  `TURNOC_FechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`TURNOP_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_turno: ~3 rows (approximately)
/*!40000 ALTER TABLE `ant_turno` DISABLE KEYS */;
INSERT INTO `ant_turno` (`TURNOP_Codigo`, `TURNOC_Descripcion`, `TURNOC_Estado`, `TURNOC_FechaRegistro`) VALUES
	(1, 'Mañana', '1', '2015-12-25 16:37:54'),
	(2, 'Tarde', '1', '2015-12-25 16:38:00'),
	(3, 'Noche', '2', '2015-12-25 16:38:05');
/*!40000 ALTER TABLE `ant_turno` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_universidad
CREATE TABLE IF NOT EXISTS `ant_universidad` (
  `UNIVP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `UNIVC_Nombre` varchar(150) NOT NULL,
  `UNIVC_Iniciales` varchar(50) DEFAULT NULL,
  `UNIVC_FechaModificacion` datetime DEFAULT NULL,
  `UNIVC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`UNIVP_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_universidad: ~18 rows (approximately)
/*!40000 ALTER TABLE `ant_universidad` DISABLE KEYS */;
INSERT INTO `ant_universidad` (`UNIVP_Codigo`, `UNIVC_Nombre`, `UNIVC_Iniciales`, `UNIVC_FechaModificacion`, `UNIVC_FechaRegistro`) VALUES
	(1, 'Universidad Nacional Mayor de San Marcos', 'UNMSM', NULL, '2015-10-26 07:19:02'),
	(2, 'Universidad Nacional de Ingenieria', 'UNI', NULL, '2015-10-26 07:20:02'),
	(3, 'Universidad Nacional San Agustin', 'UNSA', NULL, '2015-10-26 07:20:24'),
	(4, 'Universidad Nacional Federico Villareal', 'UNFV', NULL, '2015-10-26 07:20:43'),
	(5, 'Universidad Nacional Agraria La Molina', NULL, NULL, '2015-10-26 07:21:07'),
	(6, 'Universidad Privada del Norte', 'UPN', NULL, '2015-10-26 07:21:33'),
	(7, 'Universidad Cesar Vallejo', 'UCV', NULL, '2015-10-26 07:21:45'),
	(8, 'Universidad Catolica Sedes Sapientiae', 'UCSS', NULL, '2015-10-26 07:22:07'),
	(9, 'Universidad Femenina del Sagrado Corazon', 'UNIFE', NULL, '2015-10-26 07:22:23'),
	(10, 'Universidad Privada San Juan Bautista', NULL, NULL, '2015-10-26 07:23:08'),
	(11, 'Universidad Privada Norbert Wiener', NULL, NULL, '2015-10-26 07:23:22'),
	(12, 'Universidad Marcelino Champagnat', NULL, NULL, '2015-10-26 07:23:45'),
	(13, 'Universidad Peruana de Ciencias Aplicadas', 'UPC', NULL, '2015-10-26 07:24:01'),
	(14, 'Universidad del Pacifico', NULL, NULL, '2015-10-26 07:24:24'),
	(15, 'Universidad Cientifica del Sur', NULL, NULL, '2015-10-26 07:24:39'),
	(16, 'Universidad Peruana Cayetano Heredia', 'UCH', NULL, '2015-10-26 07:24:55'),
	(17, 'Universidad Antonio Ruiz de Montoya', 'UARM', NULL, '2015-10-26 07:25:09'),
	(18, 'Universidad Tecnologica del Peru', 'UTP', NULL, '2015-10-26 07:25:36');
/*!40000 ALTER TABLE `ant_universidad` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_usuario
CREATE TABLE IF NOT EXISTS `ant_usuario` (
  `USUA_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `PERSP_Codigo` int(11) NOT NULL,
  `ROL_Codigo` int(11) NOT NULL,
  `USUA_usuario` varchar(20) DEFAULT NULL,
  `USUA_Password` varchar(50) DEFAULT NULL,
  `USUA_FlagEstado` char(1) DEFAULT '1',
  `USUA_FechaModificacion` datetime DEFAULT NULL,
  `USUA_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`USUA_Codigo`),
  UNIQUE KEY `PERSP_Codigo_ROL_Codigo` (`PERSP_Codigo`,`ROL_Codigo`),
  KEY `FK_usuario_persona` (`PERSP_Codigo`),
  KEY `FK_usuario_rol` (`ROL_Codigo`),
  CONSTRAINT `FK_usuario_persona` FOREIGN KEY (`PERSP_Codigo`) REFERENCES `ant_persona` (`PERSP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_usuario_rol` FOREIGN KEY (`ROL_Codigo`) REFERENCES `ant_rol` (`ROL_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- Dumping data for table cepreadm.ant_usuario: ~8 rows (approximately)
/*!40000 ALTER TABLE `ant_usuario` DISABLE KEYS */;
INSERT INTO `ant_usuario` (`USUA_Codigo`, `PERSP_Codigo`, `ROL_Codigo`, `USUA_usuario`, `USUA_Password`, `USUA_FlagEstado`, `USUA_FechaModificacion`, `USUA_FechaRegistro`) VALUES
	(7, 1, 4, 'demo', 'e10adc3949ba59abbe56e057f20f883e', '1', '2015-08-05 12:09:17', '2015-08-04 00:25:58'),
	(8, 229, 6, 'arevalo', 'c26be8aaf53b15054896983b43eb6a65', '1', NULL, '2016-02-25 23:26:49'),
	(9, 433, 7, 'afuentes', 'e10adc3949ba59abbe56e057f20f883e', '1', NULL, '2016-03-12 09:18:59'),
	(11, 235, 7, 'yy', '71ca9079d08bfa85e1e803427d25205a', '1', NULL, '2016-03-12 11:10:46'),
	(19, 274, 6, 'ftwer', '12b6e2a16e3800b6155dbdfea9460408', '1', NULL, '2016-03-12 12:00:51'),
	(20, 263, 6, 'asfa', '0a040ec34abbfb7f3030345244a913c9', '1', NULL, '2016-03-12 12:01:03'),
	(21, 307, 6, 'asfasf', '8f01b1b9946594d17996e4eea1e3da2b', '1', NULL, '2016-03-12 12:01:14'),
	(22, 295, 7, 'asdf', '6a204bd89f3c8348afd5c77c717a097a', '1', NULL, '2016-03-12 12:01:43');
/*!40000 ALTER TABLE `ant_usuario` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_vigilancia
CREATE TABLE IF NOT EXISTS `ant_vigilancia` (
  `VIGILAP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `PROP_Codigo` int(11) NOT NULL DEFAULT '0',
  `TIPCICLOP_Codigo` int(11) NOT NULL DEFAULT '0',
  `VIGILAC_Nombre` varchar(50) NOT NULL,
  `VIGILAC_Numero` int(11) DEFAULT NULL,
  `VIGILAC_Descripcion` varchar(250) NOT NULL,
  `VIGILAC_Fecha` date NOT NULL,
  `VIGILAC_FechaModificacion` datetime DEFAULT NULL,
  `VIGILAC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`VIGILAP_Codigo`),
  KEY `FK_vigilancia_profesor` (`PROP_Codigo`),
  KEY `FK_vigilancia_tipoestudiociclo` (`TIPCICLOP_Codigo`),
  CONSTRAINT `FK_vigilancia_profesor` FOREIGN KEY (`PROP_Codigo`) REFERENCES `ant_profesor` (`PROP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_vigilancia_tipoestudiociclo` FOREIGN KEY (`TIPCICLOP_Codigo`) REFERENCES `ant_tipoestudiociclo` (`TIPCICLOP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_vigilancia: ~0 rows (approximately)
/*!40000 ALTER TABLE `ant_vigilancia` DISABLE KEYS */;
INSERT INTO `ant_vigilancia` (`VIGILAP_Codigo`, `PROP_Codigo`, `TIPCICLOP_Codigo`, `VIGILAC_Nombre`, `VIGILAC_Numero`, `VIGILAC_Descripcion`, `VIGILAC_Fecha`, `VIGILAC_FechaModificacion`, `VIGILAC_FechaRegistro`) VALUES
	(2, 110, 1, '', 2, 'Relacion de Vigilantes para la vigilancia de la practica calificada numero 2', '2016-03-12', NULL, '2016-03-11 22:47:43');
/*!40000 ALTER TABLE `ant_vigilancia` ENABLE KEYS */;


-- Dumping structure for table cepreadm.ant_vigilanciadetalle
CREATE TABLE IF NOT EXISTS `ant_vigilanciadetalle` (
  `VIGILADETP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `VIGILAP_Codigo` int(11) NOT NULL DEFAULT '0',
  `PROD_Codigo` int(11) NOT NULL DEFAULT '0',
  `PROP_Codigo` int(11) NOT NULL DEFAULT '0',
  `VIGILADETC_FechaModificacion` datetime DEFAULT NULL,
  `VIGILADETC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`VIGILADETP_Codigo`),
  KEY `FK_vigilanciadetalle_vigilancia` (`VIGILAP_Codigo`),
  KEY `FK_vigilanciadetalle_curso` (`PROD_Codigo`),
  KEY `FK_vigilanciadetalle_profesor` (`PROP_Codigo`),
  CONSTRAINT `FK_vigilanciadetalle_curso` FOREIGN KEY (`PROD_Codigo`) REFERENCES `ant_curso` (`PROD_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_vigilanciadetalle_profesor` FOREIGN KEY (`PROP_Codigo`) REFERENCES `ant_profesor` (`PROP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_vigilanciadetalle_vigilancia` FOREIGN KEY (`VIGILAP_Codigo`) REFERENCES `ant_vigilancia` (`VIGILAP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.ant_vigilanciadetalle: ~3 rows (approximately)
/*!40000 ALTER TABLE `ant_vigilanciadetalle` DISABLE KEYS */;
INSERT INTO `ant_vigilanciadetalle` (`VIGILADETP_Codigo`, `VIGILAP_Codigo`, `PROD_Codigo`, `PROP_Codigo`, `VIGILADETC_FechaModificacion`, `VIGILADETC_FechaRegistro`) VALUES
	(8, 2, 93, 107, NULL, '2016-03-11 22:47:43'),
	(9, 2, 93, 117, NULL, '2016-03-11 22:47:44'),
	(10, 2, 93, 118, NULL, '2016-03-11 22:47:44');
/*!40000 ALTER TABLE `ant_vigilanciadetalle` ENABLE KEYS */;


-- Dumping structure for table cepreadm.course
CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `APERTUP_Codigo` int(11) NOT NULL DEFAULT '0',
  `CURSOCIP_Codigo` int(11) NOT NULL DEFAULT '0',
  `flgAsignado` int(11) NOT NULL DEFAULT '0',
  `code` varchar(40) NOT NULL,
  `directory` varchar(40) DEFAULT NULL,
  `db_name` varchar(40) DEFAULT NULL,
  `course_language` varchar(20) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `description` text,
  `category_code` varchar(40) DEFAULT NULL,
  `visibility` tinyint(4) DEFAULT '0',
  `show_score` int(11) NOT NULL DEFAULT '1',
  `tutor_name` varchar(200) DEFAULT NULL,
  `visual_code` varchar(40) DEFAULT NULL,
  `department_name` varchar(30) DEFAULT NULL,
  `department_url` varchar(180) DEFAULT NULL,
  `disk_quota` bigint(20) unsigned DEFAULT NULL,
  `last_visit` datetime DEFAULT NULL,
  `last_edit` datetime DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `target_course_code` varchar(40) DEFAULT NULL,
  `subscribe` tinyint(4) NOT NULL DEFAULT '1',
  `unsubscribe` tinyint(4) NOT NULL DEFAULT '1',
  `registration_code` varchar(255) NOT NULL DEFAULT '',
  `legal` text NOT NULL,
  `activate_legal` int(11) NOT NULL DEFAULT '0',
  `course_type_id` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `idx_course_category_code` (`category_code`),
  KEY `idx_course_directory` (`directory`(10))
) ENGINE=InnoDB AUTO_INCREMENT=379 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.course: ~0 rows (approximately)
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` (`id`, `APERTUP_Codigo`, `CURSOCIP_Codigo`, `flgAsignado`, `code`, `directory`, `db_name`, `course_language`, `title`, `description`, `category_code`, `visibility`, `show_score`, `tutor_name`, `visual_code`, `department_name`, `department_url`, `disk_quota`, `last_visit`, `last_edit`, `creation_date`, `expiration_date`, `target_course_code`, `subscribe`, `unsubscribe`, `registration_code`, `legal`, `activate_legal`, `course_type_id`) VALUES
	(1, 0, 7, 0, '161BASITRIGOND102T', '161BASITRIGOND102T', NULL, 'spanish', 'Trigonometria D102 Basico-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASITRIGOND102T', NULL, 'http://', 0, NULL, NULL, '2016-02-13 07:33:46', NULL, NULL, 1, 0, '', '', 0, 1),
	(2, 0, 8, 0, '161BASIFISICAD102T', '161BASIFISICAD102T', NULL, 'spanish', 'Fisica D102 Basico-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIFISICAD102T', NULL, 'http://', 0, NULL, NULL, '2016-02-13 07:33:46', NULL, NULL, 1, 0, '', '', 0, 1),
	(3, 0, 4, 0, '161BASIGEOMETD102T', '161BASIGEOMETD102T', NULL, 'spanish', 'Geometria D102 Basico-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIGEOMETD102T', NULL, 'http://', 0, NULL, NULL, '2016-02-13 07:33:46', NULL, NULL, 1, 0, '', '', 0, 1),
	(4, 0, 6, 0, '161BASIARITMED102T', '161BASIARITMED102T', NULL, 'spanish', 'Aritmetica D102 Basico-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIARITMED102T', NULL, 'http://', 0, NULL, NULL, '2016-02-13 07:33:46', NULL, NULL, 1, 0, '', '', 0, 1),
	(5, 0, 5, 0, '161BASIALGEBRD102T', '161BASIALGEBRD102T', NULL, 'spanish', 'Algebra D102 Basico-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIALGEBRD102T', NULL, 'http://', 0, NULL, NULL, '2016-02-13 07:33:46', NULL, NULL, 1, 0, '', '', 0, 1),
	(6, 0, 14, 0, '161BASIQUIMICD102T', '161BASIQUIMICD102T', NULL, 'spanish', 'Quimica D102 Basico-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIQUIMICD102T', NULL, 'http://', 0, NULL, NULL, '2016-02-13 07:33:46', NULL, NULL, 1, 0, '', '', 0, 1),
	(7, 0, 13, 0, '161BASIHUMANID102T', '161BASIHUMANID102T', NULL, 'spanish', 'Humanidades D102 Basico-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIHUMANID102T', NULL, 'http://', 0, NULL, NULL, '2016-02-13 07:33:46', NULL, NULL, 1, 0, '', '', 0, 1),
	(22, 4, 7, 0, '161PRETRIGONA402M', '161PRETRIGONA402M', NULL, 'spanish', 'Trigonometria A402 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONA402M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 05:59:43', NULL, NULL, 1, 0, '', '', 0, 1),
	(23, 4, 8, 0, '161PREFISICAA402M', '161PREFISICAA402M', NULL, 'spanish', 'Fisica A402 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAA402M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 05:59:43', NULL, NULL, 1, 0, '', '', 0, 1),
	(24, 4, 4, 1, '161PREGEOMETA402M', '161PREGEOMETA402M', NULL, 'spanish', 'Geometria A402 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETA402M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 05:59:43', NULL, NULL, 1, 0, '', '', 0, 1),
	(25, 4, 6, 0, '161PREARITMEA402M', '161PREARITMEA402M', NULL, 'spanish', 'Aritmetica A402 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEA402M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 05:59:43', NULL, NULL, 1, 0, '', '', 0, 1),
	(26, 4, 5, 0, '161PREALGEBRA402M', '161PREALGEBRA402M', NULL, 'spanish', 'Algebra A402 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRA402M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 05:59:43', NULL, NULL, 1, 0, '', '', 0, 1),
	(27, 4, 14, 0, '161PREQUIMICA402M', '161PREQUIMICA402M', NULL, 'spanish', 'Quimica A402 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICA402M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 05:59:43', NULL, NULL, 1, 0, '', '', 0, 1),
	(28, 4, 13, 0, '161PREHUMANIA402M', '161PREHUMANIA402M', NULL, 'spanish', 'Humanidades A402 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIA402M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 05:59:43', NULL, NULL, 1, 0, '', '', 0, 1),
	(29, 5, 7, 0, '161PRETRIGONA303M', '161PRETRIGONA303M', NULL, 'spanish', 'Trigonometria A303 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONA303M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:00:36', NULL, NULL, 1, 0, '', '', 0, 1),
	(30, 5, 8, 0, '161PREFISICAA303M', '161PREFISICAA303M', NULL, 'spanish', 'Fisica A303 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAA303M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:00:36', NULL, NULL, 1, 0, '', '', 0, 1),
	(31, 5, 4, 1, '161PREGEOMETA303M', '161PREGEOMETA303M', NULL, 'spanish', 'Geometria A303 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETA303M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:00:36', NULL, NULL, 1, 0, '', '', 0, 1),
	(32, 5, 6, 0, '161PREARITMEA303M', '161PREARITMEA303M', NULL, 'spanish', 'Aritmetica A303 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEA303M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:00:36', NULL, NULL, 1, 0, '', '', 0, 1),
	(33, 5, 5, 0, '161PREALGEBRA303M', '161PREALGEBRA303M', NULL, 'spanish', 'Algebra A303 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRA303M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:00:36', NULL, NULL, 1, 0, '', '', 0, 1),
	(34, 5, 14, 0, '161PREQUIMICA303M', '161PREQUIMICA303M', NULL, 'spanish', 'Quimica A303 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICA303M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:00:36', NULL, NULL, 1, 0, '', '', 0, 1),
	(35, 5, 13, 0, '161PREHUMANIA303M', '161PREHUMANIA303M', NULL, 'spanish', 'Humanidades A303 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIA303M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:00:36', NULL, NULL, 1, 0, '', '', 0, 1),
	(36, 6, 7, 0, '161PRETRIGONA304M', '161PRETRIGONA304M', NULL, 'spanish', 'Trigonometria A304 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONA304M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:03:03', NULL, NULL, 1, 0, '', '', 0, 1),
	(37, 6, 8, 0, '161PREFISICAA304M', '161PREFISICAA304M', NULL, 'spanish', 'Fisica A304 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAA304M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:03:03', NULL, NULL, 1, 0, '', '', 0, 1),
	(38, 6, 4, 1, '161PREGEOMETA304M', '161PREGEOMETA304M', NULL, 'spanish', 'Geometria A304 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETA304M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:03:03', NULL, NULL, 1, 0, '', '', 0, 1),
	(39, 6, 6, 0, '161PREARITMEA304M', '161PREARITMEA304M', NULL, 'spanish', 'Aritmetica A304 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEA304M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:03:03', NULL, NULL, 1, 0, '', '', 0, 1),
	(40, 6, 5, 0, '161PREALGEBRA304M', '161PREALGEBRA304M', NULL, 'spanish', 'Algebra A304 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRA304M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:03:03', NULL, NULL, 1, 0, '', '', 0, 1),
	(41, 6, 14, 0, '161PREQUIMICA304M', '161PREQUIMICA304M', NULL, 'spanish', 'Quimica A304 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICA304M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:03:03', NULL, NULL, 1, 0, '', '', 0, 1),
	(42, 6, 13, 0, '161PREHUMANIA304M', '161PREHUMANIA304M', NULL, 'spanish', 'Humanidades A304 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIA304M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:03:03', NULL, NULL, 1, 0, '', '', 0, 1),
	(43, 7, 7, 0, '161PRETRIGONA302M', '161PRETRIGONA302M', NULL, 'spanish', 'Trigonometria A302 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONA302M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:03:53', NULL, NULL, 1, 0, '', '', 0, 1),
	(44, 7, 8, 0, '161PREFISICAA302M', '161PREFISICAA302M', NULL, 'spanish', 'Fisica A302 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAA302M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:03:53', NULL, NULL, 1, 0, '', '', 0, 1),
	(45, 7, 4, 1, '161PREGEOMETA302M', '161PREGEOMETA302M', NULL, 'spanish', 'Geometria A302 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETA302M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:03:53', NULL, NULL, 1, 0, '', '', 0, 1),
	(46, 7, 6, 0, '161PREARITMEA302M', '161PREARITMEA302M', NULL, 'spanish', 'Aritmetica A302 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEA302M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:03:53', NULL, NULL, 1, 0, '', '', 0, 1),
	(47, 7, 5, 0, '161PREALGEBRA302M', '161PREALGEBRA302M', NULL, 'spanish', 'Algebra A302 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRA302M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:03:53', NULL, NULL, 1, 0, '', '', 0, 1),
	(48, 7, 14, 0, '161PREQUIMICA302M', '161PREQUIMICA302M', NULL, 'spanish', 'Quimica A302 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICA302M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:03:53', NULL, NULL, 1, 0, '', '', 0, 1),
	(49, 7, 13, 0, '161PREHUMANIA302M', '161PREHUMANIA302M', NULL, 'spanish', 'Humanidades A302 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIA302M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:03:53', NULL, NULL, 1, 0, '', '', 0, 1),
	(50, 8, 7, 0, '161PRETRIGONC101M', '161PRETRIGONC101M', NULL, 'spanish', 'Trigonometria C101 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONC101M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:04:42', NULL, NULL, 1, 0, '', '', 0, 1),
	(51, 8, 8, 0, '161PREFISICAC101M', '161PREFISICAC101M', NULL, 'spanish', 'Fisica C101 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAC101M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:04:42', NULL, NULL, 1, 0, '', '', 0, 1),
	(52, 8, 4, 1, '161PREGEOMETC101M', '161PREGEOMETC101M', NULL, 'spanish', 'Geometria C101 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETC101M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:04:42', NULL, NULL, 1, 0, '', '', 0, 1),
	(53, 8, 6, 0, '161PREARITMEC101M', '161PREARITMEC101M', NULL, 'spanish', 'Aritmetica C101 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEC101M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:04:42', NULL, NULL, 1, 0, '', '', 0, 1),
	(54, 8, 5, 0, '161PREALGEBRC101M', '161PREALGEBRC101M', NULL, 'spanish', 'Algebra C101 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRC101M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:04:42', NULL, NULL, 1, 0, '', '', 0, 1),
	(55, 8, 14, 0, '161PREQUIMICC101M', '161PREQUIMICC101M', NULL, 'spanish', 'Quimica C101 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICC101M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:04:42', NULL, NULL, 1, 0, '', '', 0, 1),
	(56, 8, 13, 0, '161PREHUMANIC101M', '161PREHUMANIC101M', NULL, 'spanish', 'Humanidades C101 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIC101M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:04:42', NULL, NULL, 1, 0, '', '', 0, 1),
	(57, 9, 7, 0, '161PRETRIGOND201M', '161PRETRIGOND201M', NULL, 'spanish', 'Trigonometria D201 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGOND201M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:06:11', NULL, NULL, 1, 0, '', '', 0, 1),
	(58, 9, 8, 0, '161PREFISICAD201M', '161PREFISICAD201M', NULL, 'spanish', 'Fisica D201 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAD201M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:06:11', NULL, NULL, 1, 0, '', '', 0, 1),
	(59, 9, 4, 1, '161PREGEOMETD201M', '161PREGEOMETD201M', NULL, 'spanish', 'Geometria D201 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETD201M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:06:11', NULL, NULL, 1, 0, '', '', 0, 1),
	(60, 9, 6, 0, '161PREARITMED201M', '161PREARITMED201M', NULL, 'spanish', 'Aritmetica D201 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMED201M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:06:11', NULL, NULL, 1, 0, '', '', 0, 1),
	(61, 9, 5, 0, '161PREALGEBRD201M', '161PREALGEBRD201M', NULL, 'spanish', 'Algebra D201 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRD201M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:06:11', NULL, NULL, 1, 0, '', '', 0, 1),
	(62, 9, 14, 0, '161PREQUIMICD201M', '161PREQUIMICD201M', NULL, 'spanish', 'Quimica D201 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICD201M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:06:11', NULL, NULL, 1, 0, '', '', 0, 1),
	(63, 9, 13, 0, '161PREHUMANID201M', '161PREHUMANID201M', NULL, 'spanish', 'Humanidades D201 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANID201M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:06:11', NULL, NULL, 1, 0, '', '', 0, 1),
	(64, 10, 7, 0, '161PRETRIGONA301M', '161PRETRIGONA301M', NULL, 'spanish', 'Trigonometria A301 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONA301M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:06:49', NULL, NULL, 1, 0, '', '', 0, 1),
	(65, 10, 8, 0, '161PREFISICAA301M', '161PREFISICAA301M', NULL, 'spanish', 'Fisica A301 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAA301M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:06:49', NULL, NULL, 1, 0, '', '', 0, 1),
	(66, 10, 4, 1, '161PREGEOMETA301M', '161PREGEOMETA301M', NULL, 'spanish', 'Geometria A301 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETA301M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:06:49', NULL, NULL, 1, 0, '', '', 0, 1),
	(67, 10, 6, 0, '161PREARITMEA301M', '161PREARITMEA301M', NULL, 'spanish', 'Aritmetica A301 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEA301M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:06:49', NULL, NULL, 1, 0, '', '', 0, 1),
	(68, 10, 5, 0, '161PREALGEBRA301M', '161PREALGEBRA301M', NULL, 'spanish', 'Algebra A301 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRA301M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:06:49', NULL, NULL, 1, 0, '', '', 0, 1),
	(69, 10, 14, 0, '161PREQUIMICA301M', '161PREQUIMICA301M', NULL, 'spanish', 'Quimica A301 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICA301M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:06:49', NULL, NULL, 1, 0, '', '', 0, 1),
	(70, 10, 13, 0, '161PREHUMANIA301M', '161PREHUMANIA301M', NULL, 'spanish', 'Humanidades A301 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIA301M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:06:49', NULL, NULL, 1, 0, '', '', 0, 1),
	(71, 11, 7, 0, '161PRETRIGOND202M', '161PRETRIGOND202M', NULL, 'spanish', 'Trigonometria D202 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGOND202M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:07:59', NULL, NULL, 1, 0, '', '', 0, 1),
	(72, 11, 8, 0, '161PREFISICAD202M', '161PREFISICAD202M', NULL, 'spanish', 'Fisica D202 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAD202M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:07:59', NULL, NULL, 1, 0, '', '', 0, 1),
	(73, 11, 4, 1, '161PREGEOMETD202M', '161PREGEOMETD202M', NULL, 'spanish', 'Geometria D202 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETD202M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:07:59', NULL, NULL, 1, 0, '', '', 0, 1),
	(74, 11, 6, 0, '161PREARITMED202M', '161PREARITMED202M', NULL, 'spanish', 'Aritmetica D202 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMED202M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:07:59', NULL, NULL, 1, 0, '', '', 0, 1),
	(75, 11, 5, 0, '161PREALGEBRD202M', '161PREALGEBRD202M', NULL, 'spanish', 'Algebra D202 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRD202M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:07:59', NULL, NULL, 1, 0, '', '', 0, 1),
	(76, 11, 14, 0, '161PREQUIMICD202M', '161PREQUIMICD202M', NULL, 'spanish', 'Quimica D202 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICD202M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:07:59', NULL, NULL, 1, 0, '', '', 0, 1),
	(77, 11, 13, 0, '161PREHUMANID202M', '161PREHUMANID202M', NULL, 'spanish', 'Humanidades D202 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANID202M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:07:59', NULL, NULL, 1, 0, '', '', 0, 1),
	(78, 12, 7, 0, '161PRETRIGONA401M', '161PRETRIGONA401M', NULL, 'spanish', 'Trigonometria A401 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONA401M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:08:43', NULL, NULL, 1, 0, '', '', 0, 1),
	(79, 12, 8, 0, '161PREFISICAA401M', '161PREFISICAA401M', NULL, 'spanish', 'Fisica A401 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAA401M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:08:43', NULL, NULL, 1, 0, '', '', 0, 1),
	(80, 12, 4, 1, '161PREGEOMETA401M', '161PREGEOMETA401M', NULL, 'spanish', 'Geometria A401 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETA401M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:08:43', NULL, NULL, 1, 0, '', '', 0, 1),
	(81, 12, 6, 0, '161PREARITMEA401M', '161PREARITMEA401M', NULL, 'spanish', 'Aritmetica A401 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEA401M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:08:43', NULL, NULL, 1, 0, '', '', 0, 1),
	(82, 12, 5, 0, '161PREALGEBRA401M', '161PREALGEBRA401M', NULL, 'spanish', 'Algebra A401 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRA401M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:08:43', NULL, NULL, 1, 0, '', '', 0, 1),
	(83, 12, 14, 0, '161PREQUIMICA401M', '161PREQUIMICA401M', NULL, 'spanish', 'Quimica A401 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICA401M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:08:43', NULL, NULL, 1, 0, '', '', 0, 1),
	(84, 12, 13, 0, '161PREHUMANIA401M', '161PREHUMANIA401M', NULL, 'spanish', 'Humanidades A401 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIA401M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:08:43', NULL, NULL, 1, 0, '', '', 0, 1),
	(85, 13, 7, 0, '161PRETRIGONA404M', '161PRETRIGONA404M', NULL, 'spanish', 'Trigonometria A404 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONA404M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:09:21', NULL, NULL, 1, 0, '', '', 0, 1),
	(86, 13, 8, 0, '161PREFISICAA404M', '161PREFISICAA404M', NULL, 'spanish', 'Fisica A404 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAA404M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:09:21', NULL, NULL, 1, 0, '', '', 0, 1),
	(87, 13, 4, 1, '161PREGEOMETA404M', '161PREGEOMETA404M', NULL, 'spanish', 'Geometria A404 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETA404M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:09:21', NULL, NULL, 1, 0, '', '', 0, 1),
	(88, 13, 6, 0, '161PREARITMEA404M', '161PREARITMEA404M', NULL, 'spanish', 'Aritmetica A404 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEA404M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:09:21', NULL, NULL, 1, 0, '', '', 0, 1),
	(89, 13, 5, 0, '161PREALGEBRA404M', '161PREALGEBRA404M', NULL, 'spanish', 'Algebra A404 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRA404M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:09:21', NULL, NULL, 1, 0, '', '', 0, 1),
	(90, 13, 14, 0, '161PREQUIMICA404M', '161PREQUIMICA404M', NULL, 'spanish', 'Quimica A404 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICA404M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:09:21', NULL, NULL, 1, 0, '', '', 0, 1),
	(91, 13, 13, 0, '161PREHUMANIA404M', '161PREHUMANIA404M', NULL, 'spanish', 'Humanidades A404 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIA404M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:09:21', NULL, NULL, 1, 0, '', '', 0, 1),
	(92, 14, 7, 0, '161PRETRIGONA201M', '161PRETRIGONA201M', NULL, 'spanish', 'Trigonometria A201 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONA201M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:10:07', NULL, NULL, 1, 0, '', '', 0, 1),
	(93, 14, 8, 0, '161PREFISICAA201M', '161PREFISICAA201M', NULL, 'spanish', 'Fisica A201 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAA201M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:10:07', NULL, NULL, 1, 0, '', '', 0, 1),
	(94, 14, 4, 1, '161PREGEOMETA201M', '161PREGEOMETA201M', NULL, 'spanish', 'Geometria A201 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETA201M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:10:07', NULL, NULL, 1, 0, '', '', 0, 1),
	(95, 14, 6, 0, '161PREARITMEA201M', '161PREARITMEA201M', NULL, 'spanish', 'Aritmetica A201 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEA201M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:10:07', NULL, NULL, 1, 0, '', '', 0, 1),
	(96, 14, 5, 0, '161PREALGEBRA201M', '161PREALGEBRA201M', NULL, 'spanish', 'Algebra A201 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRA201M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:10:07', NULL, NULL, 1, 0, '', '', 0, 1),
	(97, 14, 14, 0, '161PREQUIMICA201M', '161PREQUIMICA201M', NULL, 'spanish', 'Quimica A201 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICA201M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:10:07', NULL, NULL, 1, 0, '', '', 0, 1),
	(98, 14, 13, 0, '161PREHUMANIA201M', '161PREHUMANIA201M', NULL, 'spanish', 'Humanidades A201 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIA201M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:10:07', NULL, NULL, 1, 0, '', '', 0, 1),
	(99, 15, 7, 0, '161PRETRIGONA203M', '161PRETRIGONA203M', NULL, 'spanish', 'Trigonometria A203 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONA203M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:10:47', NULL, NULL, 1, 0, '', '', 0, 1),
	(100, 15, 8, 0, '161PREFISICAA203M', '161PREFISICAA203M', NULL, 'spanish', 'Fisica A203 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAA203M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:10:47', NULL, NULL, 1, 0, '', '', 0, 1),
	(101, 15, 4, 1, '161PREGEOMETA203M', '161PREGEOMETA203M', NULL, 'spanish', 'Geometria A203 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETA203M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:10:47', NULL, NULL, 1, 0, '', '', 0, 1),
	(102, 15, 6, 0, '161PREARITMEA203M', '161PREARITMEA203M', NULL, 'spanish', 'Aritmetica A203 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEA203M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:10:47', NULL, NULL, 1, 0, '', '', 0, 1),
	(103, 15, 5, 0, '161PREALGEBRA203M', '161PREALGEBRA203M', NULL, 'spanish', 'Algebra A203 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRA203M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:10:47', NULL, NULL, 1, 0, '', '', 0, 1),
	(104, 15, 14, 0, '161PREQUIMICA203M', '161PREQUIMICA203M', NULL, 'spanish', 'Quimica A203 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICA203M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:10:47', NULL, NULL, 1, 0, '', '', 0, 1),
	(105, 15, 13, 0, '161PREHUMANIA203M', '161PREHUMANIA203M', NULL, 'spanish', 'Humanidades A203 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIA203M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:10:47', NULL, NULL, 1, 0, '', '', 0, 1),
	(106, 16, 7, 0, '161PRETRIGONA202M', '161PRETRIGONA202M', NULL, 'spanish', 'Trigonometria A202 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONA202M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:11:24', NULL, NULL, 1, 0, '', '', 0, 1),
	(107, 16, 8, 0, '161PREFISICAA202M', '161PREFISICAA202M', NULL, 'spanish', 'Fisica A202 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAA202M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:11:24', NULL, NULL, 1, 0, '', '', 0, 1),
	(108, 16, 4, 1, '161PREGEOMETA202M', '161PREGEOMETA202M', NULL, 'spanish', 'Geometria A202 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETA202M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:11:24', NULL, NULL, 1, 0, '', '', 0, 1),
	(109, 16, 6, 0, '161PREARITMEA202M', '161PREARITMEA202M', NULL, 'spanish', 'Aritmetica A202 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEA202M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:11:24', NULL, NULL, 1, 0, '', '', 0, 1),
	(110, 16, 5, 0, '161PREALGEBRA202M', '161PREALGEBRA202M', NULL, 'spanish', 'Algebra A202 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRA202M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:11:24', NULL, NULL, 1, 0, '', '', 0, 1),
	(111, 16, 14, 0, '161PREQUIMICA202M', '161PREQUIMICA202M', NULL, 'spanish', 'Quimica A202 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICA202M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:11:24', NULL, NULL, 1, 0, '', '', 0, 1),
	(112, 16, 13, 0, '161PREHUMANIA202M', '161PREHUMANIA202M', NULL, 'spanish', 'Humanidades A202 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIA202M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:11:24', NULL, NULL, 1, 0, '', '', 0, 1),
	(113, 17, 7, 0, '161PRETRIGONA403M', '161PRETRIGONA403M', NULL, 'spanish', 'Trigonometria A403 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONA403M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:12:10', NULL, NULL, 1, 0, '', '', 0, 1),
	(114, 17, 8, 0, '161PREFISICAA403M', '161PREFISICAA403M', NULL, 'spanish', 'Fisica A403 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAA403M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:12:10', NULL, NULL, 1, 0, '', '', 0, 1),
	(115, 17, 4, 1, '161PREGEOMETA403M', '161PREGEOMETA403M', NULL, 'spanish', 'Geometria A403 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETA403M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:12:10', NULL, NULL, 1, 0, '', '', 0, 1),
	(116, 17, 6, 0, '161PREARITMEA403M', '161PREARITMEA403M', NULL, 'spanish', 'Aritmetica A403 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEA403M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:12:10', NULL, NULL, 1, 0, '', '', 0, 1),
	(117, 17, 5, 0, '161PREALGEBRA403M', '161PREALGEBRA403M', NULL, 'spanish', 'Algebra A403 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRA403M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:12:10', NULL, NULL, 1, 0, '', '', 0, 1),
	(118, 17, 14, 0, '161PREQUIMICA403M', '161PREQUIMICA403M', NULL, 'spanish', 'Quimica A403 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICA403M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:12:10', NULL, NULL, 1, 0, '', '', 0, 1),
	(119, 17, 13, 0, '161PREHUMANIA403M', '161PREHUMANIA403M', NULL, 'spanish', 'Humanidades A403 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIA403M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:12:10', NULL, NULL, 1, 0, '', '', 0, 1),
	(120, 18, 7, 0, '161PRETRIGOND104M', '161PRETRIGOND104M', NULL, 'spanish', 'Trigonometria D104 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGOND104M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:12:47', NULL, NULL, 1, 0, '', '', 0, 1),
	(121, 18, 8, 0, '161PREFISICAD104M', '161PREFISICAD104M', NULL, 'spanish', 'Fisica D104 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAD104M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:12:47', NULL, NULL, 1, 0, '', '', 0, 1),
	(122, 18, 4, 1, '161PREGEOMETD104M', '161PREGEOMETD104M', NULL, 'spanish', 'Geometria D104 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETD104M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:12:47', NULL, NULL, 1, 0, '', '', 0, 1),
	(123, 18, 6, 0, '161PREARITMED104M', '161PREARITMED104M', NULL, 'spanish', 'Aritmetica D104 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMED104M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:12:47', NULL, NULL, 1, 0, '', '', 0, 1),
	(124, 18, 5, 0, '161PREALGEBRD104M', '161PREALGEBRD104M', NULL, 'spanish', 'Algebra D104 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRD104M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:12:47', NULL, NULL, 1, 0, '', '', 0, 1),
	(125, 18, 14, 0, '161PREQUIMICD104M', '161PREQUIMICD104M', NULL, 'spanish', 'Quimica D104 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICD104M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:12:47', NULL, NULL, 1, 0, '', '', 0, 1),
	(126, 18, 13, 0, '161PREHUMANID104M', '161PREHUMANID104M', NULL, 'spanish', 'Humanidades D104 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANID104M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:12:47', NULL, NULL, 1, 0, '', '', 0, 1),
	(127, 19, 7, 0, '161PRETRIGOND203M', '161PRETRIGOND203M', NULL, 'spanish', 'Trigonometria D203 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGOND203M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:13:59', NULL, NULL, 1, 0, '', '', 0, 1),
	(128, 19, 8, 0, '161PREFISICAD203M', '161PREFISICAD203M', NULL, 'spanish', 'Fisica D203 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAD203M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:13:59', NULL, NULL, 1, 0, '', '', 0, 1),
	(129, 19, 4, 1, '161PREGEOMETD203M', '161PREGEOMETD203M', NULL, 'spanish', 'Geometria D203 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETD203M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:13:59', NULL, NULL, 1, 0, '', '', 0, 1),
	(130, 19, 6, 0, '161PREARITMED203M', '161PREARITMED203M', NULL, 'spanish', 'Aritmetica D203 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMED203M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:13:59', NULL, NULL, 1, 0, '', '', 0, 1),
	(131, 19, 5, 0, '161PREALGEBRD203M', '161PREALGEBRD203M', NULL, 'spanish', 'Algebra D203 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRD203M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:13:59', NULL, NULL, 1, 0, '', '', 0, 1),
	(132, 19, 14, 0, '161PREQUIMICD203M', '161PREQUIMICD203M', NULL, 'spanish', 'Quimica D203 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICD203M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:13:59', NULL, NULL, 1, 0, '', '', 0, 1),
	(133, 19, 13, 0, '161PREHUMANID203M', '161PREHUMANID203M', NULL, 'spanish', 'Humanidades D203 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANID203M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:13:59', NULL, NULL, 1, 0, '', '', 0, 1),
	(134, 20, 7, 0, '161PRETRIGONB302M', '161PRETRIGONB302M', NULL, 'spanish', 'Trigonometria B302 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONB302M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:15:38', NULL, NULL, 1, 0, '', '', 0, 1),
	(135, 20, 8, 0, '161PREFISICAB302M', '161PREFISICAB302M', NULL, 'spanish', 'Fisica B302 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAB302M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:15:38', NULL, NULL, 1, 0, '', '', 0, 1),
	(136, 20, 4, 1, '161PREGEOMETB302M', '161PREGEOMETB302M', NULL, 'spanish', 'Geometria B302 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETB302M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:15:38', NULL, NULL, 1, 0, '', '', 0, 1),
	(137, 20, 6, 0, '161PREARITMEB302M', '161PREARITMEB302M', NULL, 'spanish', 'Aritmetica B302 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEB302M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:15:38', NULL, NULL, 1, 0, '', '', 0, 1),
	(138, 20, 5, 0, '161PREALGEBRB302M', '161PREALGEBRB302M', NULL, 'spanish', 'Algebra B302 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRB302M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:15:38', NULL, NULL, 1, 0, '', '', 0, 1),
	(139, 20, 14, 0, '161PREQUIMICB302M', '161PREQUIMICB302M', NULL, 'spanish', 'Quimica B302 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICB302M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:15:38', NULL, NULL, 1, 0, '', '', 0, 1),
	(140, 20, 13, 0, '161PREHUMANIB302M', '161PREHUMANIB302M', NULL, 'spanish', 'Humanidades B302 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIB302M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:15:38', NULL, NULL, 1, 0, '', '', 0, 1),
	(141, 21, 7, 0, '161PRETRIGONB202M', '161PRETRIGONB202M', NULL, 'spanish', 'Trigonometria B202 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONB202M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:17:05', NULL, NULL, 1, 0, '', '', 0, 1),
	(142, 21, 8, 0, '161PREFISICAB202M', '161PREFISICAB202M', NULL, 'spanish', 'Fisica B202 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAB202M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:17:05', NULL, NULL, 1, 0, '', '', 0, 1),
	(143, 21, 4, 1, '161PREGEOMETB202M', '161PREGEOMETB202M', NULL, 'spanish', 'Geometria B202 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETB202M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:17:05', NULL, NULL, 1, 0, '', '', 0, 1),
	(144, 21, 6, 0, '161PREARITMEB202M', '161PREARITMEB202M', NULL, 'spanish', 'Aritmetica B202 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEB202M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:17:05', NULL, NULL, 1, 0, '', '', 0, 1),
	(145, 21, 5, 0, '161PREALGEBRB202M', '161PREALGEBRB202M', NULL, 'spanish', 'Algebra B202 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRB202M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:17:05', NULL, NULL, 1, 0, '', '', 0, 1),
	(146, 21, 14, 0, '161PREQUIMICB202M', '161PREQUIMICB202M', NULL, 'spanish', 'Quimica B202 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICB202M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:17:05', NULL, NULL, 1, 0, '', '', 0, 1),
	(147, 21, 13, 0, '161PREHUMANIB202M', '161PREHUMANIB202M', NULL, 'spanish', 'Humanidades B202 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIB202M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:17:05', NULL, NULL, 1, 0, '', '', 0, 1),
	(148, 22, 7, 0, '161PRETRIGONB301M', '161PRETRIGONB301M', NULL, 'spanish', 'Trigonometria B301 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONB301M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:17:40', NULL, NULL, 1, 0, '', '', 0, 1),
	(149, 22, 8, 0, '161PREFISICAB301M', '161PREFISICAB301M', NULL, 'spanish', 'Fisica B301 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAB301M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:17:40', NULL, NULL, 1, 0, '', '', 0, 1),
	(150, 22, 4, 1, '161PREGEOMETB301M', '161PREGEOMETB301M', NULL, 'spanish', 'Geometria B301 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETB301M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:17:40', NULL, NULL, 1, 0, '', '', 0, 1),
	(151, 22, 6, 0, '161PREARITMEB301M', '161PREARITMEB301M', NULL, 'spanish', 'Aritmetica B301 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEB301M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:17:40', NULL, NULL, 1, 0, '', '', 0, 1),
	(152, 22, 5, 0, '161PREALGEBRB301M', '161PREALGEBRB301M', NULL, 'spanish', 'Algebra B301 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRB301M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:17:40', NULL, NULL, 1, 0, '', '', 0, 1),
	(153, 22, 14, 0, '161PREQUIMICB301M', '161PREQUIMICB301M', NULL, 'spanish', 'Quimica B301 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICB301M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:17:40', NULL, NULL, 1, 0, '', '', 0, 1),
	(154, 22, 13, 0, '161PREHUMANIB301M', '161PREHUMANIB301M', NULL, 'spanish', 'Humanidades B301 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIB301M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:17:40', NULL, NULL, 1, 0, '', '', 0, 1),
	(155, 23, 7, 0, '161PRETRIGONB101M', '161PRETRIGONB101M', NULL, 'spanish', 'Trigonometria B101 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONB101M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:18:17', NULL, NULL, 1, 0, '', '', 0, 1),
	(156, 23, 8, 0, '161PREFISICAB101M', '161PREFISICAB101M', NULL, 'spanish', 'Fisica B101 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAB101M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:18:17', NULL, NULL, 1, 0, '', '', 0, 1),
	(157, 23, 4, 1, '161PREGEOMETB101M', '161PREGEOMETB101M', NULL, 'spanish', 'Geometria B101 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETB101M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:18:17', NULL, NULL, 1, 0, '', '', 0, 1),
	(158, 23, 6, 0, '161PREARITMEB101M', '161PREARITMEB101M', NULL, 'spanish', 'Aritmetica B101 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEB101M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:18:17', NULL, NULL, 1, 0, '', '', 0, 1),
	(159, 23, 5, 0, '161PREALGEBRB101M', '161PREALGEBRB101M', NULL, 'spanish', 'Algebra B101 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRB101M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:18:17', NULL, NULL, 1, 0, '', '', 0, 1),
	(160, 23, 14, 0, '161PREQUIMICB101M', '161PREQUIMICB101M', NULL, 'spanish', 'Quimica B101 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICB101M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:18:17', NULL, NULL, 1, 0, '', '', 0, 1),
	(161, 23, 13, 0, '161PREHUMANIB101M', '161PREHUMANIB101M', NULL, 'spanish', 'Humanidades B101 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIB101M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:18:17', NULL, NULL, 1, 0, '', '', 0, 1),
	(162, 24, 7, 0, '161PRETRIGONB402M', '161PRETRIGONB402M', NULL, 'spanish', 'Trigonometria B402 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONB402M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:18:53', NULL, NULL, 1, 0, '', '', 0, 1),
	(163, 24, 8, 0, '161PREFISICAB402M', '161PREFISICAB402M', NULL, 'spanish', 'Fisica B402 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAB402M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:18:53', NULL, NULL, 1, 0, '', '', 0, 1),
	(164, 24, 4, 1, '161PREGEOMETB402M', '161PREGEOMETB402M', NULL, 'spanish', 'Geometria B402 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETB402M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:18:53', NULL, NULL, 1, 0, '', '', 0, 1),
	(165, 24, 6, 0, '161PREARITMEB402M', '161PREARITMEB402M', NULL, 'spanish', 'Aritmetica B402 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEB402M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:18:53', NULL, NULL, 1, 0, '', '', 0, 1),
	(166, 24, 5, 0, '161PREALGEBRB402M', '161PREALGEBRB402M', NULL, 'spanish', 'Algebra B402 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRB402M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:18:53', NULL, NULL, 1, 0, '', '', 0, 1),
	(167, 24, 14, 0, '161PREQUIMICB402M', '161PREQUIMICB402M', NULL, 'spanish', 'Quimica B402 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICB402M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:18:53', NULL, NULL, 1, 0, '', '', 0, 1),
	(168, 24, 13, 0, '161PREHUMANIB402M', '161PREHUMANIB402M', NULL, 'spanish', 'Humanidades B402 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIB402M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:18:53', NULL, NULL, 1, 0, '', '', 0, 1),
	(169, 25, 7, 0, '161PRETRIGOND204M', '161PRETRIGOND204M', NULL, 'spanish', 'Trigonometria D204 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGOND204M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:19:53', NULL, NULL, 1, 0, '', '', 0, 1),
	(170, 25, 8, 0, '161PREFISICAD204M', '161PREFISICAD204M', NULL, 'spanish', 'Fisica D204 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAD204M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:19:53', NULL, NULL, 1, 0, '', '', 0, 1),
	(171, 25, 4, 1, '161PREGEOMETD204M', '161PREGEOMETD204M', NULL, 'spanish', 'Geometria D204 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETD204M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:19:53', NULL, NULL, 1, 0, '', '', 0, 1),
	(172, 25, 6, 0, '161PREARITMED204M', '161PREARITMED204M', NULL, 'spanish', 'Aritmetica D204 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMED204M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:19:53', NULL, NULL, 1, 0, '', '', 0, 1),
	(173, 25, 5, 0, '161PREALGEBRD204M', '161PREALGEBRD204M', NULL, 'spanish', 'Algebra D204 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRD204M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:19:53', NULL, NULL, 1, 0, '', '', 0, 1),
	(174, 25, 14, 0, '161PREQUIMICD204M', '161PREQUIMICD204M', NULL, 'spanish', 'Quimica D204 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICD204M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:19:53', NULL, NULL, 1, 0, '', '', 0, 1),
	(175, 25, 13, 0, '161PREHUMANID204M', '161PREHUMANID204M', NULL, 'spanish', 'Humanidades D204 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANID204M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:19:53', NULL, NULL, 1, 0, '', '', 0, 1),
	(176, 26, 7, 0, '161PRETRIGONB103M', '161PRETRIGONB103M', NULL, 'spanish', 'Trigonometria B103 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONB103M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:20:57', NULL, NULL, 1, 0, '', '', 0, 1),
	(177, 26, 8, 0, '161PREFISICAB103M', '161PREFISICAB103M', NULL, 'spanish', 'Fisica B103 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAB103M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:20:57', NULL, NULL, 1, 0, '', '', 0, 1),
	(178, 26, 4, 1, '161PREGEOMETB103M', '161PREGEOMETB103M', NULL, 'spanish', 'Geometria B103 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETB103M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:20:57', NULL, NULL, 1, 0, '', '', 0, 1),
	(179, 26, 6, 0, '161PREARITMEB103M', '161PREARITMEB103M', NULL, 'spanish', 'Aritmetica B103 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEB103M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:20:57', NULL, NULL, 1, 0, '', '', 0, 1),
	(180, 26, 5, 0, '161PREALGEBRB103M', '161PREALGEBRB103M', NULL, 'spanish', 'Algebra B103 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRB103M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:20:57', NULL, NULL, 1, 0, '', '', 0, 1),
	(181, 26, 14, 0, '161PREQUIMICB103M', '161PREQUIMICB103M', NULL, 'spanish', 'Quimica B103 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICB103M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:20:57', NULL, NULL, 1, 0, '', '', 0, 1),
	(182, 26, 13, 0, '161PREHUMANIB103M', '161PREHUMANIB103M', NULL, 'spanish', 'Humanidades B103 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIB103M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:20:57', NULL, NULL, 1, 0, '', '', 0, 1),
	(183, 27, 7, 0, '161PRETRIGONB102M', '161PRETRIGONB102M', NULL, 'spanish', 'Trigonometria B102 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONB102M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:21:29', NULL, NULL, 1, 0, '', '', 0, 1),
	(184, 27, 8, 0, '161PREFISICAB102M', '161PREFISICAB102M', NULL, 'spanish', 'Fisica B102 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAB102M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:21:29', NULL, NULL, 1, 0, '', '', 0, 1),
	(185, 27, 4, 1, '161PREGEOMETB102M', '161PREGEOMETB102M', NULL, 'spanish', 'Geometria B102 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETB102M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:21:29', NULL, NULL, 1, 0, '', '', 0, 1),
	(186, 27, 6, 0, '161PREARITMEB102M', '161PREARITMEB102M', NULL, 'spanish', 'Aritmetica B102 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEB102M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:21:29', NULL, NULL, 1, 0, '', '', 0, 1),
	(187, 27, 5, 0, '161PREALGEBRB102M', '161PREALGEBRB102M', NULL, 'spanish', 'Algebra B102 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRB102M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:21:29', NULL, NULL, 1, 0, '', '', 0, 1),
	(188, 27, 14, 0, '161PREQUIMICB102M', '161PREQUIMICB102M', NULL, 'spanish', 'Quimica B102 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICB102M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:21:29', NULL, NULL, 1, 0, '', '', 0, 1),
	(189, 27, 13, 0, '161PREHUMANIB102M', '161PREHUMANIB102M', NULL, 'spanish', 'Humanidades B102 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIB102M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:21:29', NULL, NULL, 1, 0, '', '', 0, 1),
	(190, 28, 7, 0, '161PRETRIGONB201M', '161PRETRIGONB201M', NULL, 'spanish', 'Trigonometria B201 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONB201M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:22:03', NULL, NULL, 1, 0, '', '', 0, 1),
	(191, 28, 8, 0, '161PREFISICAB201M', '161PREFISICAB201M', NULL, 'spanish', 'Fisica B201 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAB201M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:22:03', NULL, NULL, 1, 0, '', '', 0, 1),
	(192, 28, 4, 1, '161PREGEOMETB201M', '161PREGEOMETB201M', NULL, 'spanish', 'Geometria B201 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETB201M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:22:03', NULL, NULL, 1, 0, '', '', 0, 1),
	(193, 28, 6, 0, '161PREARITMEB201M', '161PREARITMEB201M', NULL, 'spanish', 'Aritmetica B201 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEB201M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:22:03', NULL, NULL, 1, 0, '', '', 0, 1),
	(194, 28, 5, 0, '161PREALGEBRB201M', '161PREALGEBRB201M', NULL, 'spanish', 'Algebra B201 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRB201M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:22:03', NULL, NULL, 1, 0, '', '', 0, 1),
	(195, 28, 14, 0, '161PREQUIMICB201M', '161PREQUIMICB201M', NULL, 'spanish', 'Quimica B201 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICB201M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:22:03', NULL, NULL, 1, 0, '', '', 0, 1),
	(196, 28, 13, 0, '161PREHUMANIB201M', '161PREHUMANIB201M', NULL, 'spanish', 'Humanidades B201 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIB201M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:22:03', NULL, NULL, 1, 0, '', '', 0, 1),
	(197, 29, 7, 0, '161PRETRIGONB403M', '161PRETRIGONB403M', NULL, 'spanish', 'Trigonometria B403 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONB403M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:22:36', NULL, NULL, 1, 0, '', '', 0, 1),
	(198, 29, 8, 0, '161PREFISICAB403M', '161PREFISICAB403M', NULL, 'spanish', 'Fisica B403 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAB403M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:22:36', NULL, NULL, 1, 0, '', '', 0, 1),
	(199, 29, 4, 1, '161PREGEOMETB403M', '161PREGEOMETB403M', NULL, 'spanish', 'Geometria B403 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETB403M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:22:36', NULL, NULL, 1, 0, '', '', 0, 1),
	(200, 29, 6, 0, '161PREARITMEB403M', '161PREARITMEB403M', NULL, 'spanish', 'Aritmetica B403 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEB403M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:22:36', NULL, NULL, 1, 0, '', '', 0, 1),
	(201, 29, 5, 0, '161PREALGEBRB403M', '161PREALGEBRB403M', NULL, 'spanish', 'Algebra B403 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRB403M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:22:36', NULL, NULL, 1, 0, '', '', 0, 1),
	(202, 29, 14, 0, '161PREQUIMICB403M', '161PREQUIMICB403M', NULL, 'spanish', 'Quimica B403 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICB403M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:22:36', NULL, NULL, 1, 0, '', '', 0, 1),
	(203, 29, 13, 0, '161PREHUMANIB403M', '161PREHUMANIB403M', NULL, 'spanish', 'Humanidades B403 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIB403M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:22:36', NULL, NULL, 1, 0, '', '', 0, 1),
	(204, 30, 7, 0, '161PRETRIGONB303M', '161PRETRIGONB303M', NULL, 'spanish', 'Trigonometria B303 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONB303M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:23:07', NULL, NULL, 1, 0, '', '', 0, 1),
	(205, 30, 8, 0, '161PREFISICAB303M', '161PREFISICAB303M', NULL, 'spanish', 'Fisica B303 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAB303M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:23:07', NULL, NULL, 1, 0, '', '', 0, 1),
	(206, 30, 4, 1, '161PREGEOMETB303M', '161PREGEOMETB303M', NULL, 'spanish', 'Geometria B303 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETB303M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:23:07', NULL, NULL, 1, 0, '', '', 0, 1),
	(207, 30, 6, 0, '161PREARITMEB303M', '161PREARITMEB303M', NULL, 'spanish', 'Aritmetica B303 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEB303M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:23:07', NULL, NULL, 1, 0, '', '', 0, 1),
	(208, 30, 5, 0, '161PREALGEBRB303M', '161PREALGEBRB303M', NULL, 'spanish', 'Algebra B303 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRB303M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:23:07', NULL, NULL, 1, 0, '', '', 0, 1),
	(209, 30, 14, 0, '161PREQUIMICB303M', '161PREQUIMICB303M', NULL, 'spanish', 'Quimica B303 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICB303M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:23:07', NULL, NULL, 1, 0, '', '', 0, 1),
	(210, 30, 13, 0, '161PREHUMANIB303M', '161PREHUMANIB303M', NULL, 'spanish', 'Humanidades B303 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIB303M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:23:07', NULL, NULL, 1, 0, '', '', 0, 1),
	(211, 31, 7, 0, '161PRETRIGONB401M', '161PRETRIGONB401M', NULL, 'spanish', 'Trigonometria B401 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONB401M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:23:36', NULL, NULL, 1, 0, '', '', 0, 1),
	(212, 31, 8, 0, '161PREFISICAB401M', '161PREFISICAB401M', NULL, 'spanish', 'Fisica B401 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAB401M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:23:36', NULL, NULL, 1, 0, '', '', 0, 1),
	(213, 31, 4, 1, '161PREGEOMETB401M', '161PREGEOMETB401M', NULL, 'spanish', 'Geometria B401 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETB401M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:23:36', NULL, NULL, 1, 0, '', '', 0, 1),
	(214, 31, 6, 0, '161PREARITMEB401M', '161PREARITMEB401M', NULL, 'spanish', 'Aritmetica B401 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEB401M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:23:36', NULL, NULL, 1, 0, '', '', 0, 1),
	(215, 31, 5, 0, '161PREALGEBRB401M', '161PREALGEBRB401M', NULL, 'spanish', 'Algebra B401 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRB401M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:23:36', NULL, NULL, 1, 0, '', '', 0, 1),
	(216, 31, 14, 0, '161PREQUIMICB401M', '161PREQUIMICB401M', NULL, 'spanish', 'Quimica B401 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICB401M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:23:36', NULL, NULL, 1, 0, '', '', 0, 1),
	(217, 31, 13, 0, '161PREHUMANIB401M', '161PREHUMANIB401M', NULL, 'spanish', 'Humanidades B401 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIB401M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:23:36', NULL, NULL, 1, 0, '', '', 0, 1),
	(218, 32, 7, 0, '161PRETRIGONB203M', '161PRETRIGONB203M', NULL, 'spanish', 'Trigonometria B203 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONB203M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:24:11', NULL, NULL, 1, 0, '', '', 0, 1),
	(219, 32, 8, 0, '161PREFISICAB203M', '161PREFISICAB203M', NULL, 'spanish', 'Fisica B203 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAB203M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:24:11', NULL, NULL, 1, 0, '', '', 0, 1),
	(220, 32, 4, 1, '161PREGEOMETB203M', '161PREGEOMETB203M', NULL, 'spanish', 'Geometria B203 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETB203M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:24:11', NULL, NULL, 1, 0, '', '', 0, 1),
	(221, 32, 6, 0, '161PREARITMEB203M', '161PREARITMEB203M', NULL, 'spanish', 'Aritmetica B203 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEB203M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:24:11', NULL, NULL, 1, 0, '', '', 0, 1),
	(222, 32, 5, 0, '161PREALGEBRB203M', '161PREALGEBRB203M', NULL, 'spanish', 'Algebra B203 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRB203M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:24:11', NULL, NULL, 1, 0, '', '', 0, 1),
	(223, 32, 14, 0, '161PREQUIMICB203M', '161PREQUIMICB203M', NULL, 'spanish', 'Quimica B203 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICB203M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:24:11', NULL, NULL, 1, 0, '', '', 0, 1),
	(224, 32, 13, 0, '161PREHUMANIB203M', '161PREHUMANIB203M', NULL, 'spanish', 'Humanidades B203 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIB203M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:24:11', NULL, NULL, 1, 0, '', '', 0, 1),
	(225, 37, 7, 0, '161PRETRIGOND205M', '161PRETRIGOND205M', NULL, 'spanish', 'Trigonometria D205 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGOND205M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:25:05', NULL, NULL, 1, 0, '', '', 0, 1),
	(226, 37, 8, 0, '161PREFISICAD205M', '161PREFISICAD205M', NULL, 'spanish', 'Fisica D205 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAD205M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:25:05', NULL, NULL, 1, 0, '', '', 0, 1),
	(227, 37, 4, 1, '161PREGEOMETD205M', '161PREGEOMETD205M', NULL, 'spanish', 'Geometria D205 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETD205M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:25:05', NULL, NULL, 1, 0, '', '', 0, 1),
	(228, 37, 6, 0, '161PREARITMED205M', '161PREARITMED205M', NULL, 'spanish', 'Aritmetica D205 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMED205M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:25:05', NULL, NULL, 1, 0, '', '', 0, 1),
	(229, 37, 5, 0, '161PREALGEBRD205M', '161PREALGEBRD205M', NULL, 'spanish', 'Algebra D205 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRD205M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:25:05', NULL, NULL, 1, 0, '', '', 0, 1),
	(230, 37, 14, 0, '161PREQUIMICD205M', '161PREQUIMICD205M', NULL, 'spanish', 'Quimica D205 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICD205M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:25:05', NULL, NULL, 1, 0, '', '', 0, 1),
	(231, 37, 13, 0, '161PREHUMANID205M', '161PREHUMANID205M', NULL, 'spanish', 'Humanidades D205 Pre-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANID205M', NULL, 'http://', 0, NULL, NULL, '2016-02-19 06:25:05', NULL, NULL, 1, 0, '', '', 0, 1),
	(232, 38, 7, 0, '161BASITRIGOND102M', '161BASITRIGOND102M', NULL, 'spanish', 'Trigonometria D102 Basico-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASITRIGOND102M', NULL, 'http://', 0, NULL, NULL, '2016-02-21 05:09:15', NULL, NULL, 1, 0, '', '', 0, 1),
	(233, 38, 8, 0, '161BASIFISICAD102M', '161BASIFISICAD102M', NULL, 'spanish', 'Fisica D102 Basico-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIFISICAD102M', NULL, 'http://', 0, NULL, NULL, '2016-02-21 05:09:15', NULL, NULL, 1, 0, '', '', 0, 1),
	(234, 38, 4, 1, '161BASIGEOMETD102M', '161BASIGEOMETD102M', NULL, 'spanish', 'Geometria D102 Basico-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIGEOMETD102M', NULL, 'http://', 0, NULL, NULL, '2016-02-21 05:09:16', NULL, NULL, 1, 0, '', '', 0, 1),
	(235, 38, 6, 0, '161BASIARITMED102M', '161BASIARITMED102M', NULL, 'spanish', 'Aritmetica D102 Basico-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIARITMED102M', NULL, 'http://', 0, NULL, NULL, '2016-02-21 05:09:16', NULL, NULL, 1, 0, '', '', 0, 1),
	(236, 38, 5, 0, '161BASIALGEBRD102M', '161BASIALGEBRD102M', NULL, 'spanish', 'Algebra D102 Basico-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIALGEBRD102M', NULL, 'http://', 0, NULL, NULL, '2016-02-21 05:09:16', NULL, NULL, 1, 0, '', '', 0, 1),
	(237, 38, 14, 0, '161BASIQUIMICD102M', '161BASIQUIMICD102M', NULL, 'spanish', 'Quimica D102 Basico-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIQUIMICD102M', NULL, 'http://', 0, NULL, NULL, '2016-02-21 05:09:16', NULL, NULL, 1, 0, '', '', 0, 1),
	(239, 39, 7, 0, '161PRETRIGONA201T', '161PRETRIGONA201T', NULL, 'spanish', 'Trigonometria A201 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONA201T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:03:58', NULL, NULL, 1, 0, '', '', 0, 1),
	(240, 39, 8, 0, '161PREFISICAA201T', '161PREFISICAA201T', NULL, 'spanish', 'Fisica A201 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAA201T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:03:58', NULL, NULL, 1, 0, '', '', 0, 1),
	(241, 39, 4, 1, '161PREGEOMETA201T', '161PREGEOMETA201T', NULL, 'spanish', 'Geometria A201 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETA201T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:03:58', NULL, NULL, 1, 0, '', '', 0, 1),
	(242, 39, 6, 0, '161PREARITMEA201T', '161PREARITMEA201T', NULL, 'spanish', 'Aritmetica A201 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEA201T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:03:58', NULL, NULL, 1, 0, '', '', 0, 1),
	(243, 39, 5, 0, '161PREALGEBRA201T', '161PREALGEBRA201T', NULL, 'spanish', 'Algebra A201 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRA201T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:03:58', NULL, NULL, 1, 0, '', '', 0, 1),
	(244, 39, 14, 0, '161PREQUIMICA201T', '161PREQUIMICA201T', NULL, 'spanish', 'Quimica A201 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICA201T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:03:58', NULL, NULL, 1, 0, '', '', 0, 1),
	(245, 39, 13, 0, '161PREHUMANIA201T', '161PREHUMANIA201T', NULL, 'spanish', 'Humanidades A201 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIA201T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:03:58', NULL, NULL, 1, 0, '', '', 0, 1),
	(246, 40, 7, 0, '161PRETRIGONA303T', '161PRETRIGONA303T', NULL, 'spanish', 'Trigonometria A303 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONA303T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:04:44', NULL, NULL, 1, 0, '', '', 0, 1),
	(247, 40, 8, 0, '161PREFISICAA303T', '161PREFISICAA303T', NULL, 'spanish', 'Fisica A303 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAA303T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:04:44', NULL, NULL, 1, 0, '', '', 0, 1),
	(248, 40, 4, 1, '161PREGEOMETA303T', '161PREGEOMETA303T', NULL, 'spanish', 'Geometria A303 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETA303T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:04:44', NULL, NULL, 1, 0, '', '', 0, 1),
	(249, 40, 6, 0, '161PREARITMEA303T', '161PREARITMEA303T', NULL, 'spanish', 'Aritmetica A303 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEA303T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:04:44', NULL, NULL, 1, 0, '', '', 0, 1),
	(250, 40, 5, 0, '161PREALGEBRA303T', '161PREALGEBRA303T', NULL, 'spanish', 'Algebra A303 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRA303T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:04:44', NULL, NULL, 1, 0, '', '', 0, 1),
	(251, 40, 14, 0, '161PREQUIMICA303T', '161PREQUIMICA303T', NULL, 'spanish', 'Quimica A303 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICA303T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:04:44', NULL, NULL, 1, 0, '', '', 0, 1),
	(252, 40, 13, 0, '161PREHUMANIA303T', '161PREHUMANIA303T', NULL, 'spanish', 'Humanidades A303 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIA303T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:04:44', NULL, NULL, 1, 0, '', '', 0, 1),
	(253, 41, 7, 0, '161PRETRIGONA301T', '161PRETRIGONA301T', NULL, 'spanish', 'Trigonometria A301 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONA301T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:05:33', NULL, NULL, 1, 0, '', '', 0, 1),
	(254, 41, 8, 0, '161PREFISICAA301T', '161PREFISICAA301T', NULL, 'spanish', 'Fisica A301 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAA301T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:05:33', NULL, NULL, 1, 0, '', '', 0, 1),
	(255, 41, 4, 1, '161PREGEOMETA301T', '161PREGEOMETA301T', NULL, 'spanish', 'Geometria A301 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETA301T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:05:33', NULL, NULL, 1, 0, '', '', 0, 1),
	(256, 41, 6, 0, '161PREARITMEA301T', '161PREARITMEA301T', NULL, 'spanish', 'Aritmetica A301 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEA301T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:05:33', NULL, NULL, 1, 0, '', '', 0, 1),
	(257, 41, 5, 0, '161PREALGEBRA301T', '161PREALGEBRA301T', NULL, 'spanish', 'Algebra A301 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRA301T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:05:33', NULL, NULL, 1, 0, '', '', 0, 1),
	(258, 41, 14, 0, '161PREQUIMICA301T', '161PREQUIMICA301T', NULL, 'spanish', 'Quimica A301 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICA301T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:05:33', NULL, NULL, 1, 0, '', '', 0, 1),
	(259, 41, 13, 0, '161PREHUMANIA301T', '161PREHUMANIA301T', NULL, 'spanish', 'Humanidades A301 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIA301T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:05:33', NULL, NULL, 1, 0, '', '', 0, 1),
	(260, 42, 7, 0, '161PRETRIGONA304T', '161PRETRIGONA304T', NULL, 'spanish', 'Trigonometria A304 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONA304T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:06:12', NULL, NULL, 1, 0, '', '', 0, 1),
	(261, 42, 8, 0, '161PREFISICAA304T', '161PREFISICAA304T', NULL, 'spanish', 'Fisica A304 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAA304T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:06:12', NULL, NULL, 1, 0, '', '', 0, 1),
	(262, 42, 4, 1, '161PREGEOMETA304T', '161PREGEOMETA304T', NULL, 'spanish', 'Geometria A304 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETA304T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:06:12', NULL, NULL, 1, 0, '', '', 0, 1),
	(263, 42, 6, 0, '161PREARITMEA304T', '161PREARITMEA304T', NULL, 'spanish', 'Aritmetica A304 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEA304T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:06:12', NULL, NULL, 1, 0, '', '', 0, 1),
	(264, 42, 5, 0, '161PREALGEBRA304T', '161PREALGEBRA304T', NULL, 'spanish', 'Algebra A304 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRA304T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:06:12', NULL, NULL, 1, 0, '', '', 0, 1),
	(265, 42, 14, 0, '161PREQUIMICA304T', '161PREQUIMICA304T', NULL, 'spanish', 'Quimica A304 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICA304T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:06:12', NULL, NULL, 1, 0, '', '', 0, 1),
	(266, 42, 13, 0, '161PREHUMANIA304T', '161PREHUMANIA304T', NULL, 'spanish', 'Humanidades A304 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIA304T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:06:12', NULL, NULL, 1, 0, '', '', 0, 1),
	(267, 43, 7, 0, '161PRETRIGONA203T', '161PRETRIGONA203T', NULL, 'spanish', 'Trigonometria A203 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONA203T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:06:48', NULL, NULL, 1, 0, '', '', 0, 1),
	(268, 43, 8, 0, '161PREFISICAA203T', '161PREFISICAA203T', NULL, 'spanish', 'Fisica A203 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAA203T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:06:48', NULL, NULL, 1, 0, '', '', 0, 1),
	(269, 43, 4, 1, '161PREGEOMETA203T', '161PREGEOMETA203T', NULL, 'spanish', 'Geometria A203 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETA203T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:06:48', NULL, NULL, 1, 0, '', '', 0, 1),
	(270, 43, 6, 0, '161PREARITMEA203T', '161PREARITMEA203T', NULL, 'spanish', 'Aritmetica A203 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEA203T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:06:48', NULL, NULL, 1, 0, '', '', 0, 1),
	(271, 43, 5, 0, '161PREALGEBRA203T', '161PREALGEBRA203T', NULL, 'spanish', 'Algebra A203 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRA203T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:06:48', NULL, NULL, 1, 0, '', '', 0, 1),
	(272, 43, 14, 0, '161PREQUIMICA203T', '161PREQUIMICA203T', NULL, 'spanish', 'Quimica A203 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICA203T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:06:48', NULL, NULL, 1, 0, '', '', 0, 1),
	(273, 43, 13, 0, '161PREHUMANIA203T', '161PREHUMANIA203T', NULL, 'spanish', 'Humanidades A203 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIA203T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:06:48', NULL, NULL, 1, 0, '', '', 0, 1),
	(274, 44, 7, 0, '161PRETRIGONA401T', '161PRETRIGONA401T', NULL, 'spanish', 'Trigonometria A401 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONA401T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:07:22', NULL, NULL, 1, 0, '', '', 0, 1),
	(275, 44, 8, 0, '161PREFISICAA401T', '161PREFISICAA401T', NULL, 'spanish', 'Fisica A401 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAA401T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:07:22', NULL, NULL, 1, 0, '', '', 0, 1),
	(276, 44, 4, 1, '161PREGEOMETA401T', '161PREGEOMETA401T', NULL, 'spanish', 'Geometria A401 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETA401T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:07:22', NULL, NULL, 1, 0, '', '', 0, 1),
	(277, 44, 6, 0, '161PREARITMEA401T', '161PREARITMEA401T', NULL, 'spanish', 'Aritmetica A401 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEA401T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:07:22', NULL, NULL, 1, 0, '', '', 0, 1),
	(278, 44, 5, 0, '161PREALGEBRA401T', '161PREALGEBRA401T', NULL, 'spanish', 'Algebra A401 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRA401T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:07:22', NULL, NULL, 1, 0, '', '', 0, 1),
	(279, 44, 14, 0, '161PREQUIMICA401T', '161PREQUIMICA401T', NULL, 'spanish', 'Quimica A401 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICA401T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:07:22', NULL, NULL, 1, 0, '', '', 0, 1),
	(280, 44, 13, 0, '161PREHUMANIA401T', '161PREHUMANIA401T', NULL, 'spanish', 'Humanidades A401 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIA401T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:07:22', NULL, NULL, 1, 0, '', '', 0, 1),
	(281, 45, 7, 0, '161PRETRIGONB103T', '161PRETRIGONB103T', NULL, 'spanish', 'Trigonometria B103 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONB103T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:14:31', NULL, NULL, 1, 0, '', '', 0, 1),
	(282, 45, 8, 0, '161PREFISICAB103T', '161PREFISICAB103T', NULL, 'spanish', 'Fisica B103 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAB103T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:14:31', NULL, NULL, 1, 0, '', '', 0, 1),
	(283, 45, 4, 1, '161PREGEOMETB103T', '161PREGEOMETB103T', NULL, 'spanish', 'Geometria B103 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETB103T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:14:31', NULL, NULL, 1, 0, '', '', 0, 1),
	(284, 45, 6, 0, '161PREARITMEB103T', '161PREARITMEB103T', NULL, 'spanish', 'Aritmetica B103 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEB103T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:14:31', NULL, NULL, 1, 0, '', '', 0, 1),
	(285, 45, 5, 0, '161PREALGEBRB103T', '161PREALGEBRB103T', NULL, 'spanish', 'Algebra B103 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRB103T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:14:31', NULL, NULL, 1, 0, '', '', 0, 1),
	(286, 45, 14, 0, '161PREQUIMICB103T', '161PREQUIMICB103T', NULL, 'spanish', 'Quimica B103 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICB103T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:14:31', NULL, NULL, 1, 0, '', '', 0, 1),
	(287, 45, 13, 0, '161PREHUMANIB103T', '161PREHUMANIB103T', NULL, 'spanish', 'Humanidades B103 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIB103T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:14:31', NULL, NULL, 1, 0, '', '', 0, 1),
	(288, 46, 7, 0, '161PRETRIGONB203T', '161PRETRIGONB203T', NULL, 'spanish', 'Trigonometria B203 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONB203T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:15:03', NULL, NULL, 1, 0, '', '', 0, 1),
	(289, 46, 8, 0, '161PREFISICAB203T', '161PREFISICAB203T', NULL, 'spanish', 'Fisica B203 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAB203T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:15:03', NULL, NULL, 1, 0, '', '', 0, 1),
	(290, 46, 4, 1, '161PREGEOMETB203T', '161PREGEOMETB203T', NULL, 'spanish', 'Geometria B203 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETB203T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:15:03', NULL, NULL, 1, 0, '', '', 0, 1),
	(291, 46, 6, 0, '161PREARITMEB203T', '161PREARITMEB203T', NULL, 'spanish', 'Aritmetica B203 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEB203T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:15:03', NULL, NULL, 1, 0, '', '', 0, 1),
	(292, 46, 5, 0, '161PREALGEBRB203T', '161PREALGEBRB203T', NULL, 'spanish', 'Algebra B203 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRB203T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:15:03', NULL, NULL, 1, 0, '', '', 0, 1),
	(293, 46, 14, 0, '161PREQUIMICB203T', '161PREQUIMICB203T', NULL, 'spanish', 'Quimica B203 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICB203T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:15:03', NULL, NULL, 1, 0, '', '', 0, 1),
	(294, 46, 13, 0, '161PREHUMANIB203T', '161PREHUMANIB203T', NULL, 'spanish', 'Humanidades B203 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIB203T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:15:03', NULL, NULL, 1, 0, '', '', 0, 1),
	(295, 47, 7, 0, '161PRETRIGONB201T', '161PRETRIGONB201T', NULL, 'spanish', 'Trigonometria B201 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONB201T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:15:46', NULL, NULL, 1, 0, '', '', 0, 1),
	(296, 47, 8, 0, '161PREFISICAB201T', '161PREFISICAB201T', NULL, 'spanish', 'Fisica B201 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAB201T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:15:46', NULL, NULL, 1, 0, '', '', 0, 1),
	(297, 47, 4, 1, '161PREGEOMETB201T', '161PREGEOMETB201T', NULL, 'spanish', 'Geometria B201 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETB201T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:15:46', NULL, NULL, 1, 0, '', '', 0, 1),
	(298, 47, 6, 0, '161PREARITMEB201T', '161PREARITMEB201T', NULL, 'spanish', 'Aritmetica B201 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEB201T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:15:46', NULL, NULL, 1, 0, '', '', 0, 1),
	(299, 47, 5, 0, '161PREALGEBRB201T', '161PREALGEBRB201T', NULL, 'spanish', 'Algebra B201 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRB201T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:15:46', NULL, NULL, 1, 0, '', '', 0, 1),
	(300, 47, 14, 0, '161PREQUIMICB201T', '161PREQUIMICB201T', NULL, 'spanish', 'Quimica B201 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICB201T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:15:46', NULL, NULL, 1, 0, '', '', 0, 1),
	(301, 47, 13, 0, '161PREHUMANIB201T', '161PREHUMANIB201T', NULL, 'spanish', 'Humanidades B201 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIB201T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:15:46', NULL, NULL, 1, 0, '', '', 0, 1),
	(302, 48, 7, 0, '161PRETRIGONB101T', '161PRETRIGONB101T', NULL, 'spanish', 'Trigonometria B101 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONB101T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:18:21', NULL, NULL, 1, 0, '', '', 0, 1),
	(303, 48, 8, 0, '161PREFISICAB101T', '161PREFISICAB101T', NULL, 'spanish', 'Fisica B101 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAB101T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:18:21', NULL, NULL, 1, 0, '', '', 0, 1),
	(304, 48, 4, 1, '161PREGEOMETB101T', '161PREGEOMETB101T', NULL, 'spanish', 'Geometria B101 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETB101T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:18:21', NULL, NULL, 1, 0, '', '', 0, 1),
	(305, 48, 6, 0, '161PREARITMEB101T', '161PREARITMEB101T', NULL, 'spanish', 'Aritmetica B101 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEB101T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:18:21', NULL, NULL, 1, 0, '', '', 0, 1),
	(306, 48, 5, 0, '161PREALGEBRB101T', '161PREALGEBRB101T', NULL, 'spanish', 'Algebra B101 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRB101T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:18:21', NULL, NULL, 1, 0, '', '', 0, 1),
	(307, 48, 14, 0, '161PREQUIMICB101T', '161PREQUIMICB101T', NULL, 'spanish', 'Quimica B101 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICB101T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:18:21', NULL, NULL, 1, 0, '', '', 0, 1),
	(308, 48, 13, 0, '161PREHUMANIB101T', '161PREHUMANIB101T', NULL, 'spanish', 'Humanidades B101 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIB101T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:18:21', NULL, NULL, 1, 0, '', '', 0, 1),
	(309, 49, 7, 0, '161PRETRIGONB303T', '161PRETRIGONB303T', NULL, 'spanish', 'Trigonometria B303 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONB303T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:19:07', NULL, NULL, 1, 0, '', '', 0, 1),
	(310, 49, 8, 0, '161PREFISICAB303T', '161PREFISICAB303T', NULL, 'spanish', 'Fisica B303 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAB303T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:19:07', NULL, NULL, 1, 0, '', '', 0, 1),
	(311, 49, 4, 1, '161PREGEOMETB303T', '161PREGEOMETB303T', NULL, 'spanish', 'Geometria B303 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETB303T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:19:07', NULL, NULL, 1, 0, '', '', 0, 1),
	(312, 49, 6, 0, '161PREARITMEB303T', '161PREARITMEB303T', NULL, 'spanish', 'Aritmetica B303 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEB303T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:19:07', NULL, NULL, 1, 0, '', '', 0, 1),
	(313, 49, 5, 0, '161PREALGEBRB303T', '161PREALGEBRB303T', NULL, 'spanish', 'Algebra B303 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRB303T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:19:07', NULL, NULL, 1, 0, '', '', 0, 1),
	(314, 49, 14, 0, '161PREQUIMICB303T', '161PREQUIMICB303T', NULL, 'spanish', 'Quimica B303 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICB303T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:19:07', NULL, NULL, 1, 0, '', '', 0, 1),
	(315, 49, 13, 0, '161PREHUMANIB303T', '161PREHUMANIB303T', NULL, 'spanish', 'Humanidades B303 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIB303T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:19:07', NULL, NULL, 1, 0, '', '', 0, 1),
	(316, 50, 7, 0, '161PRETRIGONB102T', '161PRETRIGONB102T', NULL, 'spanish', 'Trigonometria B102 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONB102T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:19:57', NULL, NULL, 1, 0, '', '', 0, 1),
	(317, 50, 8, 0, '161PREFISICAB102T', '161PREFISICAB102T', NULL, 'spanish', 'Fisica B102 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAB102T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:19:57', NULL, NULL, 1, 0, '', '', 0, 1),
	(318, 50, 4, 1, '161PREGEOMETB102T', '161PREGEOMETB102T', NULL, 'spanish', 'Geometria B102 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETB102T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:19:57', NULL, NULL, 1, 0, '', '', 0, 1),
	(319, 50, 6, 0, '161PREARITMEB102T', '161PREARITMEB102T', NULL, 'spanish', 'Aritmetica B102 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEB102T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:19:57', NULL, NULL, 1, 0, '', '', 0, 1),
	(320, 50, 5, 0, '161PREALGEBRB102T', '161PREALGEBRB102T', NULL, 'spanish', 'Algebra B102 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRB102T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:19:57', NULL, NULL, 1, 0, '', '', 0, 1),
	(321, 50, 14, 0, '161PREQUIMICB102T', '161PREQUIMICB102T', NULL, 'spanish', 'Quimica B102 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICB102T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:19:57', NULL, NULL, 1, 0, '', '', 0, 1),
	(322, 50, 13, 0, '161PREHUMANIB102T', '161PREHUMANIB102T', NULL, 'spanish', 'Humanidades B102 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIB102T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:19:57', NULL, NULL, 1, 0, '', '', 0, 1),
	(323, 51, 7, 0, '161BASITRIGONC101T', '161BASITRIGONC101T', NULL, 'spanish', 'Trigonometria C101 Basico-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASITRIGONC101T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:21:02', NULL, NULL, 1, 0, '', '', 0, 1),
	(324, 51, 8, 0, '161BASIFISICAC101T', '161BASIFISICAC101T', NULL, 'spanish', 'Fisica C101 Basico-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIFISICAC101T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:21:02', NULL, NULL, 1, 0, '', '', 0, 1),
	(325, 51, 4, 1, '161BASIGEOMETC101T', '161BASIGEOMETC101T', NULL, 'spanish', 'Geometria C101 Basico-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIGEOMETC101T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:21:02', NULL, NULL, 1, 0, '', '', 0, 1),
	(326, 51, 6, 0, '161BASIARITMEC101T', '161BASIARITMEC101T', NULL, 'spanish', 'Aritmetica C101 Basico-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIARITMEC101T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:21:02', NULL, NULL, 1, 0, '', '', 0, 1),
	(327, 51, 5, 0, '161BASIALGEBRC101T', '161BASIALGEBRC101T', NULL, 'spanish', 'Algebra C101 Basico-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIALGEBRC101T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:21:02', NULL, NULL, 1, 0, '', '', 0, 1),
	(328, 51, 14, 0, '161BASIQUIMICC101T', '161BASIQUIMICC101T', NULL, 'spanish', 'Quimica C101 Basico-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIQUIMICC101T', NULL, 'http://', 0, NULL, NULL, '2016-02-21 07:21:02', NULL, NULL, 1, 0, '', '', 0, 1),
	(330, 52, 7, 0, '161INTETRIGONA101M', '161INTETRIGONA101M', NULL, 'spanish', 'Trigonometria A101 Intensivo-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161INTETRIGONA101M', NULL, 'http://', 0, NULL, NULL, '2016-02-22 05:37:57', NULL, NULL, 1, 0, '', '', 0, 1),
	(331, 52, 8, 0, '161INTEFISICAA101M', '161INTEFISICAA101M', NULL, 'spanish', 'Fisica A101 Intensivo-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161INTEFISICAA101M', NULL, 'http://', 0, NULL, NULL, '2016-02-22 05:37:57', NULL, NULL, 1, 0, '', '', 0, 1),
	(332, 52, 4, 1, '161INTEGEOMETA101M', '161INTEGEOMETA101M', NULL, 'spanish', 'Geometria A101 Intensivo-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161INTEGEOMETA101M', NULL, 'http://', 0, NULL, NULL, '2016-02-22 05:37:57', NULL, NULL, 1, 0, '', '', 0, 1),
	(333, 52, 6, 0, '161INTEARITMEA101M', '161INTEARITMEA101M', NULL, 'spanish', 'Aritmetica A101 Intensivo-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161INTEARITMEA101M', NULL, 'http://', 0, NULL, NULL, '2016-02-22 05:37:57', NULL, NULL, 1, 0, '', '', 0, 1),
	(334, 52, 5, 0, '161INTEALGEBRA101M', '161INTEALGEBRA101M', NULL, 'spanish', 'Algebra A101 Intensivo-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161INTEALGEBRA101M', NULL, 'http://', 0, NULL, NULL, '2016-02-22 05:37:57', NULL, NULL, 1, 0, '', '', 0, 1),
	(335, 52, 14, 0, '161INTEQUIMICA101M', '161INTEQUIMICA101M', NULL, 'spanish', 'Quimica A101 Intensivo-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161INTEQUIMICA101M', NULL, 'http://', 0, NULL, NULL, '2016-02-22 05:37:57', NULL, NULL, 1, 0, '', '', 0, 1),
	(336, 52, 13, 0, '161INTEHUMANIA101M', '161INTEHUMANIA101M', NULL, 'spanish', 'Humanidades A101 Intensivo-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161INTEHUMANIA101M', NULL, 'http://', 0, NULL, NULL, '2016-02-22 05:37:57', NULL, NULL, 1, 0, '', '', 0, 1),
	(337, 53, 7, 0, '161INTETRIGOND103M', '161INTETRIGOND103M', NULL, 'spanish', 'Trigonometria D103 Intensivo-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161INTETRIGOND103M', NULL, 'http://', 0, NULL, NULL, '2016-02-22 05:39:12', NULL, NULL, 1, 0, '', '', 0, 1),
	(338, 53, 8, 0, '161INTEFISICAD103M', '161INTEFISICAD103M', NULL, 'spanish', 'Fisica D103 Intensivo-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161INTEFISICAD103M', NULL, 'http://', 0, NULL, NULL, '2016-02-22 05:39:12', NULL, NULL, 1, 0, '', '', 0, 1),
	(339, 53, 4, 1, '161INTEGEOMETD103M', '161INTEGEOMETD103M', NULL, 'spanish', 'Geometria D103 Intensivo-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161INTEGEOMETD103M', NULL, 'http://', 0, NULL, NULL, '2016-02-22 05:39:12', NULL, NULL, 1, 0, '', '', 0, 1),
	(340, 53, 6, 0, '161INTEARITMED103M', '161INTEARITMED103M', NULL, 'spanish', 'Aritmetica D103 Intensivo-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161INTEARITMED103M', NULL, 'http://', 0, NULL, NULL, '2016-02-22 05:39:12', NULL, NULL, 1, 0, '', '', 0, 1),
	(341, 53, 5, 0, '161INTEALGEBRD103M', '161INTEALGEBRD103M', NULL, 'spanish', 'Algebra D103 Intensivo-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161INTEALGEBRD103M', NULL, 'http://', 0, NULL, NULL, '2016-02-22 05:39:12', NULL, NULL, 1, 0, '', '', 0, 1),
	(342, 53, 14, 0, '161INTEQUIMICD103M', '161INTEQUIMICD103M', NULL, 'spanish', 'Quimica D103 Intensivo-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161INTEQUIMICD103M', NULL, 'http://', 0, NULL, NULL, '2016-02-22 05:39:12', NULL, NULL, 1, 0, '', '', 0, 1),
	(343, 53, 13, 0, '161INTEHUMANID103M', '161INTEHUMANID103M', NULL, 'spanish', 'Humanidades D103 Intensivo-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161INTEHUMANID103M', NULL, 'http://', 0, NULL, NULL, '2016-02-22 05:39:12', NULL, NULL, 1, 0, '', '', 0, 1),
	(344, 54, 7, 0, '161INTETRIGONA403T', '161INTETRIGONA403T', NULL, 'spanish', 'Trigonometria A403 Intensivo-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161INTETRIGONA403T', NULL, 'http://', 0, NULL, NULL, '2016-02-22 05:41:41', NULL, NULL, 1, 0, '', '', 0, 1),
	(345, 54, 8, 0, '161INTEFISICAA403T', '161INTEFISICAA403T', NULL, 'spanish', 'Fisica A403 Intensivo-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161INTEFISICAA403T', NULL, 'http://', 0, NULL, NULL, '2016-02-22 05:41:41', NULL, NULL, 1, 0, '', '', 0, 1),
	(346, 54, 4, 1, '161INTEGEOMETA403T', '161INTEGEOMETA403T', NULL, 'spanish', 'Geometria A403 Intensivo-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161INTEGEOMETA403T', NULL, 'http://', 0, NULL, NULL, '2016-02-22 05:41:41', NULL, NULL, 1, 0, '', '', 0, 1),
	(347, 54, 6, 0, '161INTEARITMEA403T', '161INTEARITMEA403T', NULL, 'spanish', 'Aritmetica A403 Intensivo-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161INTEARITMEA403T', NULL, 'http://', 0, NULL, NULL, '2016-02-22 05:41:41', NULL, NULL, 1, 0, '', '', 0, 1),
	(348, 54, 5, 0, '161INTEALGEBRA403T', '161INTEALGEBRA403T', NULL, 'spanish', 'Algebra A403 Intensivo-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161INTEALGEBRA403T', NULL, 'http://', 0, NULL, NULL, '2016-02-22 05:41:41', NULL, NULL, 1, 0, '', '', 0, 1),
	(349, 54, 14, 0, '161INTEQUIMICA403T', '161INTEQUIMICA403T', NULL, 'spanish', 'Quimica A403 Intensivo-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161INTEQUIMICA403T', NULL, 'http://', 0, NULL, NULL, '2016-02-22 05:41:41', NULL, NULL, 1, 0, '', '', 0, 1),
	(350, 54, 13, 0, '161INTEHUMANIA403T', '161INTEHUMANIA403T', NULL, 'spanish', 'Humanidades A403 Intensivo-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161INTEHUMANIA403T', NULL, 'http://', 0, NULL, NULL, '2016-02-22 05:41:41', NULL, NULL, 1, 0, '', '', 0, 1),
	(351, 55, 7, 0, '161ESCOTRIGOND101T', '161ESCOTRIGOND101T', NULL, 'spanish', 'Trigonometria D101 Escolar 4to-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161ESCOTRIGOND101T', NULL, 'http://', 0, NULL, NULL, '2016-02-26 03:31:49', NULL, NULL, 1, 0, '', '', 0, 1),
	(352, 55, 8, 0, '161ESCOFISICAD101T', '161ESCOFISICAD101T', NULL, 'spanish', 'Fisica D101 Escolar 4to-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161ESCOFISICAD101T', NULL, 'http://', 0, NULL, NULL, '2016-02-26 03:31:49', NULL, NULL, 1, 0, '', '', 0, 1),
	(353, 55, 4, 1, '161ESCOGEOMETD101T', '161ESCOGEOMETD101T', NULL, 'spanish', 'Geometria D101 Escolar 4to-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161ESCOGEOMETD101T', NULL, 'http://', 0, NULL, NULL, '2016-02-26 03:31:49', NULL, NULL, 1, 0, '', '', 0, 1),
	(354, 55, 6, 0, '161ESCOARITMED101T', '161ESCOARITMED101T', NULL, 'spanish', 'Aritmetica D101 Escolar 4to-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161ESCOARITMED101T', NULL, 'http://', 0, NULL, NULL, '2016-02-26 03:31:49', NULL, NULL, 1, 0, '', '', 0, 1),
	(355, 55, 5, 0, '161ESCOALGEBRD101T', '161ESCOALGEBRD101T', NULL, 'spanish', 'Algebra D101 Escolar 4to-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161ESCOALGEBRD101T', NULL, 'http://', 0, NULL, NULL, '2016-02-26 03:31:49', NULL, NULL, 1, 0, '', '', 0, 1),
	(356, 55, 14, 0, '161ESCOQUIMICD101T', '161ESCOQUIMICD101T', NULL, 'spanish', 'Quimica D101 Escolar 4to-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161ESCOQUIMICD101T', NULL, 'http://', 0, NULL, NULL, '2016-02-26 03:31:49', NULL, NULL, 1, 0, '', '', 0, 1),
	(357, 55, 13, 0, '161ESCOHUMANID101T', '161ESCOHUMANID101T', NULL, 'spanish', 'Humanidades D101 Escolar 4to-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161ESCOHUMANID101T', NULL, 'http://', 0, NULL, NULL, '2016-02-26 03:31:49', NULL, NULL, 1, 0, '', '', 0, 1),
	(358, 56, 7, 0, '161ESCOTRIGOND206T', '161ESCOTRIGOND206T', NULL, 'spanish', 'Trigonometria D206 Escolar 5to-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161ESCOTRIGOND206T', NULL, 'http://', 0, NULL, NULL, '2016-02-26 03:32:52', NULL, NULL, 1, 0, '', '', 0, 1),
	(359, 56, 8, 0, '161ESCOFISICAD206T', '161ESCOFISICAD206T', NULL, 'spanish', 'Fisica D206 Escolar 5to-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161ESCOFISICAD206T', NULL, 'http://', 0, NULL, NULL, '2016-02-26 03:32:52', NULL, NULL, 1, 0, '', '', 0, 1),
	(360, 56, 4, 1, '161ESCOGEOMETD206T', '161ESCOGEOMETD206T', NULL, 'spanish', 'Geometria D206 Escolar 5to-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161ESCOGEOMETD206T', NULL, 'http://', 0, NULL, NULL, '2016-02-26 03:32:52', NULL, NULL, 1, 0, '', '', 0, 1),
	(361, 56, 6, 0, '161ESCOARITMED206T', '161ESCOARITMED206T', NULL, 'spanish', 'Aritmetica D206 Escolar 5to-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161ESCOARITMED206T', NULL, 'http://', 0, NULL, NULL, '2016-02-26 03:32:52', NULL, NULL, 1, 0, '', '', 0, 1),
	(362, 56, 5, 0, '161ESCOALGEBRD206T', '161ESCOALGEBRD206T', NULL, 'spanish', 'Algebra D206 Escolar 5to-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161ESCOALGEBRD206T', NULL, 'http://', 0, NULL, NULL, '2016-02-26 03:32:52', NULL, NULL, 1, 0, '', '', 0, 1),
	(363, 56, 14, 0, '161ESCOQUIMICD206T', '161ESCOQUIMICD206T', NULL, 'spanish', 'Quimica D206 Escolar 5to-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161ESCOQUIMICD206T', NULL, 'http://', 0, NULL, NULL, '2016-02-26 03:32:52', NULL, NULL, 1, 0, '', '', 0, 1),
	(364, 56, 13, 0, '161ESCOHUMANID206T', '161ESCOHUMANID206T', NULL, 'spanish', 'Humanidades D206 Escolar 5to-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161ESCOHUMANID206T', NULL, 'http://', 0, NULL, NULL, '2016-02-26 03:32:52', NULL, NULL, 1, 0, '', '', 0, 1),
	(365, 57, 7, 0, '161ESCOTRIGONB403T', '161ESCOTRIGONB403T', NULL, 'spanish', 'Trigonometria B403 Escolar 3ero-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161ESCOTRIGONB403T', NULL, 'http://', 0, NULL, NULL, '2016-02-26 03:34:15', NULL, NULL, 1, 0, '', '', 0, 1),
	(366, 57, 8, 0, '161ESCOFISICAB403T', '161ESCOFISICAB403T', NULL, 'spanish', 'Fisica B403 Escolar 3ero-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161ESCOFISICAB403T', NULL, 'http://', 0, NULL, NULL, '2016-02-26 03:34:15', NULL, NULL, 1, 0, '', '', 0, 1),
	(367, 57, 4, 1, '161ESCOGEOMETB403T', '161ESCOGEOMETB403T', NULL, 'spanish', 'Geometria B403 Escolar 3ero-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161ESCOGEOMETB403T', NULL, 'http://', 0, NULL, NULL, '2016-02-26 03:34:15', NULL, NULL, 1, 0, '', '', 0, 1),
	(368, 57, 6, 0, '161ESCOARITMEB403T', '161ESCOARITMEB403T', NULL, 'spanish', 'Aritmetica B403 Escolar 3ero-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161ESCOARITMEB403T', NULL, 'http://', 0, NULL, NULL, '2016-02-26 03:34:15', NULL, NULL, 1, 0, '', '', 0, 1),
	(369, 57, 5, 0, '161ESCOALGEBRB403T', '161ESCOALGEBRB403T', NULL, 'spanish', 'Algebra B403 Escolar 3ero-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161ESCOALGEBRB403T', NULL, 'http://', 0, NULL, NULL, '2016-02-26 03:34:15', NULL, NULL, 1, 0, '', '', 0, 1),
	(370, 57, 14, 0, '161ESCOQUIMICB403T', '161ESCOQUIMICB403T', NULL, 'spanish', 'Quimica B403 Escolar 3ero-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161ESCOQUIMICB403T', NULL, 'http://', 0, NULL, NULL, '2016-02-26 03:34:15', NULL, NULL, 1, 0, '', '', 0, 1),
	(371, 57, 13, 0, '161ESCOHUMANIB403T', '161ESCOHUMANIB403T', NULL, 'spanish', 'Humanidades B403 Escolar 3ero-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161ESCOHUMANIB403T', NULL, 'http://', 0, NULL, NULL, '2016-02-26 03:34:15', NULL, NULL, 1, 0, '', '', 0, 1),
	(372, 58, 7, 0, '161BASITRIGOND206M', '161BASITRIGOND206M', NULL, 'spanish', 'Trigonometria D206 Basico-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASITRIGOND206M', NULL, 'http://', 0, NULL, NULL, '2016-03-05 05:21:31', NULL, NULL, 1, 0, '', '', 0, 1),
	(373, 58, 8, 0, '161BASIFISICAD206M', '161BASIFISICAD206M', NULL, 'spanish', 'Fisica D206 Basico-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIFISICAD206M', NULL, 'http://', 0, NULL, NULL, '2016-03-05 05:21:31', NULL, NULL, 1, 0, '', '', 0, 1),
	(374, 58, 4, 0, '161BASIGEOMETD206M', '161BASIGEOMETD206M', NULL, 'spanish', 'Geometria D206 Basico-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIGEOMETD206M', NULL, 'http://', 0, NULL, NULL, '2016-03-05 05:21:31', NULL, NULL, 1, 0, '', '', 0, 1),
	(375, 58, 6, 0, '161BASIARITMED206M', '161BASIARITMED206M', NULL, 'spanish', 'Aritmetica D206 Basico-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIARITMED206M', NULL, 'http://', 0, NULL, NULL, '2016-03-05 05:21:31', NULL, NULL, 1, 0, '', '', 0, 1),
	(376, 58, 5, 0, '161BASIALGEBRD206M', '161BASIALGEBRD206M', NULL, 'spanish', 'Algebra D206 Basico-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIALGEBRD206M', NULL, 'http://', 0, NULL, NULL, '2016-03-05 05:21:31', NULL, NULL, 1, 0, '', '', 0, 1),
	(377, 58, 14, 0, '161BASIQUIMICD206M', '161BASIQUIMICD206M', NULL, 'spanish', 'Quimica D206 Basico-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIQUIMICD206M', NULL, 'http://', 0, NULL, NULL, '2016-03-05 05:21:31', NULL, NULL, 1, 0, '', '', 0, 1),
	(378, 58, 13, 0, '161BASIHUMANID206M', '161BASIHUMANID206M', NULL, 'spanish', 'Humanidades D206 Basico-Maï¿½ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIHUMANID206M', NULL, 'http://', 0, NULL, NULL, '2016-03-05 05:21:31', NULL, NULL, 1, 0, '', '', 0, 1);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;


-- Dumping structure for table cepreadm.user
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lastname` varchar(60) DEFAULT NULL,
  `firstname` varchar(60) DEFAULT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `auth_source` varchar(50) DEFAULT 'platform',
  `email` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '5',
  `official_code` varchar(40) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `picture_uri` varchar(250) DEFAULT NULL,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `competences` text,
  `diplomas` text,
  `openarea` text,
  `teach` text,
  `productions` varchar(250) DEFAULT NULL,
  `chatcall_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `chatcall_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `chatcall_text` varchar(50) NOT NULL DEFAULT '',
  `language` varchar(40) DEFAULT NULL,
  `registration_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expiration_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `openid` varchar(255) DEFAULT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `hr_dept_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=latin1;

-- Dumping data for table cepreadm.user: ~0 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`, `lastname`, `firstname`, `username`, `password`, `auth_source`, `email`, `status`, `official_code`, `phone`, `picture_uri`, `creator_id`, `competences`, `diplomas`, `openarea`, `teach`, `productions`, `chatcall_user_id`, `chatcall_date`, `chatcall_text`, `language`, `registration_date`, `expiration_date`, `active`, `openid`, `theme`, `hr_dept_id`) VALUES
	(1, 'Martin', 'Trujillo Bustamante', 'mtrujillo', '496bd9e51adbd1af72f8a225a5ea12e25f8bdf9c', 'platform', 'martin.trujillo1105@gmail.com', 1, 'Administrador', '957595320', '', 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-09-16 20:55:15', '0000-00-00 00:00:00', 1, 'http://', NULL, 0),
	(2, 'Anonymous', 'Joe', '', '', 'platform', 'anonymous@localhost', 6, 'anonymous', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-09-16 20:55:15', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(3, 'Figueroa Maldonado', 'Edward', 'efigueroa', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'platform', 'ing.edward.figueroa@gmail.com', 1, 'Profesor', '', '', 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-09-16 21:08:25', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(4, 'Guerrero Herrera', 'Anita Mercedes', 'anita', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'platform', 'anita@anita.com', 5, '', '', '', 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-09-16 21:26:04', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(5, 'Chavez', 'Mirta', 'mirta', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'platform', 'mirta@mirta.es', 5, '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-09-17 13:05:10', '0000-00-00 00:00:00', 1, 'http://', NULL, 0),
	(6, 'Olivos Diaz', 'Yesmith', 'yesmith', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'platform', 'yesmith@yesmith.com', 5, '', '', '', 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-12 21:21:04', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(7, 'ney', 'ney', 'ney', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'platform', 'ney@ney.com', 5, '', '', '', 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-12 21:21:31', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(8, 'Delgado Garay', 'Teresa Alumno', 'TerDelgado', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'platform', 'teresa@teresa.com', 5, '', '', '', 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-12 21:25:28', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(9, 'perez', 'juan', 'jperez', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'platform', 'unkl70@hotmail.com', 5, 'JPEREZ', '5681903', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-24 06:36:31', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(10, 'tapia', 'miguel', 'mtapia', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'platform', 'mtapia@gmail.com', 5, 'MTAPIA', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-24 06:41:03', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(11, 'Ramirez Ayuque', 'Jesus', 'jramirez', '5c1e78b458e86c383cc6ae7b80e358227795f857', 'platform', 'jesus_15pre@hotmail.com', 5, 'JRAMIREZ', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 02:42:23', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(12, 'Arias Vilchez', 'Arias Vilchez', 'darias', '9519a2cebc22b46ca45b8395f77c1d9a780209bc', 'platform', 'libra_alexis.1997@hotmail.com', 5, 'DARIAS', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 02:45:48', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(13, 'Colorado Monja', 'Leonardo', 'lcolorado', '5b60c4db18a6ce275d6d325187d7563a592bfac4', 'platform', 'leocm1503@gmail.com', 5, 'LCOLORADO', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 02:46:53', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(14, 'Palacios Intusca', 'Alfonso', 'apalacios', 'daea49d60fe367a26a5996fee19303521795aa6b', 'platform', 'alfonsicar_prototype_rip@hotmail.com', 5, 'APALACIOS', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 02:48:01', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(15, 'Lorena Huamani', 'Christian Jaime', 'clorena', 'e4da8b4ae1b492e47c1fdcd8afa6071a7bcfdcf9', 'platform', 'christyanlorena@gmail.com', 5, 'CLORENA', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:01:57', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(16, 'Espinoza Meza', 'Daniel Enrique', 'despinoza', '012643fbf5598437f5cf41c344b6ea0e87ce2fb9', 'platform', 'danielenrique.23@hotmail.com', 5, 'DESPINOZA', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:02:59', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(17, 'Tordoya Licla', 'Jose Maria', 'jtordoya', 'b70045b16a9583166aa1954b87b9a13f46b3e917', 'platform', 'jose.xmen.charger@gmail.com', 5, 'JTORDOYA', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:03:55', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(18, 'Zulueta Flores', 'Xiomara', 'xzulueta', '1e110399fee3c0b65e4e1a0d619fc03ba108f9a6', 'platform', 'xiomi_2504@hotmail.com', 5, 'XZULUETA', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:05:01', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(19, 'Campos Arotinco', 'Shirley', 'scampos', '4577d24118907b61664fda91aafc0d94e82334ea', 'platform', 'shirley_6_@hotmail.com', 5, 'SCAMPOS', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:06:18', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(20, 'Argumanis Aponte', 'Marko Elias', 'MarArgumanis', 'ff104f7885a9a3c3bd7d60e325b3a5784495210f', 'platform', 'marko.cxhxa.009@gmail.com', 5, 'MARGUMANIS', '466465456', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:07:27', '0000-00-00 00:00:00', 1, 'http://', NULL, 0),
	(22, 'Paredes Ramos', 'Bryan Marlon', 'bparedes', 'd6e479c8f3384281b8f60b98200c3b9d7b65759b', 'platform', 'brother98_ryan@hotmail.com', 5, 'BPAREDES', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:18:33', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(23, 'Santos Diaz', 'Yofre Abiel', 'ysantos', 'be06f7c59407951103c83be9a44605cab706bc51', 'platform', 'chaval-9@gmail.com', 5, 'YSANTOS', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:19:28', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(24, 'Trujillo Aguirre', 'Jose Gabriel', 'jtrujillo', '0c37622c2ddf94695e30a791d48853384559e6d7', 'platform', 'josegabriel1219@hotmail.com', 5, 'JTRUJILLO', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:20:26', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(25, 'Suarez Dipas', 'Diego Alonso', 'dsuarez', 'fced4b7764f5b0e8950e2b8e3ce2979827d004fa', 'platform', 'diego.alonso.cr7@hotmail.com', 5, 'DSUAREZ', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:21:31', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(26, 'Wong Delgado', 'Allison', 'awong', '6b2f72b9d0b2e3d743a6e685d8c3ef18ffef549b', 'platform', 'alli3103@hotmail.com', 5, 'AWONG', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:22:42', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(27, 'Yataco Zamudio', 'Keisy Yanali', 'kyataco', '40e0ad706ce9f337379717e18ecbea4b6ba473c2', 'platform', 'keisy_060798@hotmail.com', 5, 'KYATACO', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:23:44', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(28, 'Sanchez Lopez', 'Patricia Alejandra', 'psanchez', 'e5a78914a56a7242ea02e965b55666e95ea2a24b', 'platform', 'patricia.sanchez.lopez@hotmail.com', 5, 'PSANCHEZ', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:25:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(29, 'Mego Solano', 'Manuel Gerardo', 'mmego', '353081e83449934c748bb4131b053fbb76d70344', 'platform', 'gerardo_mego@hotmail.com', 5, 'MMEGO', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:26:04', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(30, 'Roa Bernardillo', 'Gianfranco', 'groa', '8999c2c78327599e65ba47b9766558140a8e3010', 'platform', 'star_of_shadow@hotmail.com', 5, 'GROA', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:27:09', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(32, 'Dominguez Jaramillo', 'Max Marcelino', 'mdominguez', 'a35f96e70b2be369644de030cf0d6aee1454fe20', 'platform', 'm.ax_2009@hotmail.com', 5, 'MDOMINGUEZ', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:35:07', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(33, 'Espinoza Valdez', 'Angel Leonardo', 'aespinoza', '93b218036d13dfba7febdd1d49c47b98cb6f4a3e', 'platform', 'leonardoev@hotmail.com', 5, 'AESPINOZA', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:35:58', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(34, 'Roldan Sanchez', 'Gabriel Alexander', 'groldan', '4410c1d7420bf03ad3dd9c3078da57826708507a', 'platform', 'alexander_0615@hotmail.com', 5, 'GROLDAN', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:37:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(35, 'Camacho Gutarra', 'Adrian', 'acamacho', '9f69856bdd53077ab405684be46af6b800f315a2', 'platform', 'adrixx34@hotmail.com', 5, 'ACAMACHO', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:37:50', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(36, 'Soncco Veliz', 'Andy Sinoe', 'asoncco', '1634a9b325cf5bd91234ae23d52d392b35c44dc9', 'platform', 'andy_sinoe@outlook.es', 5, 'ASONCCO', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:38:49', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(37, 'Gutierrez Burgos', 'Jaime', 'jgutierrez', '1ef71c6c89fd45ab79ba064d5db88ccbc83c5fe6', 'platform', 'chock2908@gmail.com', 5, 'JGUTIERREZ', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:39:56', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(38, 'Pamo', 'Franco', 'fpamo', '2cbf7173da2c4697c5ef77ac2c3aeaa686b38191', 'platform', 'frankopk@hotmail.com', 5, 'FPAMO', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:41:24', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(39, 'Cercado Quispe', 'Kevin', 'kcercado', '35922cf4718e79b1bb466d501e0c73d1c4b04967', 'platform', 'kevin_12k@hotmail.com', 5, 'KCERCADO', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:42:24', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(40, 'Romero Huamani', 'Gustavo Enrique', 'gromero', '32445417e071a5c5ecf5a8e5e1c3c41a343b7fbd', 'platform', 'gerh10_7@hotmail.com', 5, 'GROMERO', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:43:47', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(41, 'Gonzales', 'Julian', 'jgonzales', '24918f0598d023f6babf01e9a2175f4f00805994', 'platform', 'ingenierominero98@hotmail.com', 5, 'JGONZALES', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:49:48', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(42, 'Fonseca Acuña', 'Daniel', 'dfonseca', 'bc27cee8779c077087346cc9508143bce0474ded', 'platform', 'dfonseca@live.com', 5, 'DFONSECA', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:50:58', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(43, 'Garcia Sanchez', 'Bosilluader Shean Andres', 'bgarcia', 'd800ff21682e77629b8e494c9b66208d5f72159c', 'platform', 'sheanag@hotmail.com', 5, 'BGARCIA', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:51:56', '0000-00-00 00:00:00', 1, 'http://', NULL, 0),
	(44, 'Vasquez Garcia', 'Kelly Vanessa Gloria Maria', 'kvasquez', 'cf1e43d87ae62f8d9181786d3f7b479cee8d5600', 'platform', 'kelly_miflor@hotmail.com', 5, 'KVASQUEZ', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:52:56', '0000-00-00 00:00:00', 1, 'http://', NULL, 0),
	(45, 'Ramirez Amaya', 'Abraham', 'aramirez', 'abce2d7236ee36d8ce9a3fccf63b4d5710f1d4da', 'platform', 'abrafernando@hotmail.com', 5, 'ARAMIREZ', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:54:15', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(46, 'Miranda Gonzales', 'Katherine', 'kmiranda', '7bed15e4697444fd7a0f6544bcdb630abf609742', 'platform', 'libra_30_katy@hotmail.com', 5, 'KMIRANDA', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:55:09', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(47, 'Barragan Aromi', 'Samuel Arnulfo', 'sbarragan', '9f595e6a3220d12af9468bc4ec47570105983401', 'platform', 'arni_sam@hotmail.com', 5, 'SBARRAGAN', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:56:05', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(48, 'Curro Villaorduña', 'Deyvis Bryan', 'dcurro', '5734c7e7eecd204002e5c7d09ff24fe5adcfb8ca', 'platform', 'deyvis_tauro19@hotmail.com', 5, 'DCURRO', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:57:02', '0000-00-00 00:00:00', 1, 'http://', NULL, 0),
	(49, 'Santos Beraun', 'Barry Barton', 'bsantos', 'b45c96cdc2a2dd1b4adf239dd4c02d51bed548d4', 'platform', 'elcrack1999@outlook.com', 5, 'BSANTOS', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:58:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(50, 'Barrenechea Chuquizuta', 'Milushca Ursula', 'mbarrenechea', '92f9aa258b46588409dcf526c75e521836fc5e54', 'platform', 'milu.bch.9@hotmail.com', 5, 'MBARRENECHEA', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-30 03:58:53', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(51, 'Paredes Anyoza', 'Nicolas Daniel', 'kaiser', '60eec9328c53512f6aacff7c2ba72332b1bd2067', 'platform', 'paredes_anyoza@hotmail.es', 5, 'KAISER', '7853855', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-10-31 03:55:05', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(52, 'Nonato Villena', 'Grecia Jemina', 'gnonato', '3ec89b0549bdf962d67e45683149caa0c3cf77c7', 'platform', 'irisvima.let@hotmail.com', 5, 'GNONATO', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-11-08 19:28:48', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(53, 'Paredes Anyoza', 'Nicolas Daniel', 'nparedes', '6227f1ccf7b2b247aa5df9f45fed548edd685625', 'platform', 'paredes_anyoza@hotmail.es', 5, 'NPAREDES', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '2015-11-11 03:55:39', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(58, 'Aguilar Fuentes', 'Inocente', 'IAguilar', '', 'platform', '', 1, 'IAGUILAR', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(59, 'Almora Rivas', 'Enrique', 'ealmora', '', 'platform', '', 1, 'EALMORA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(60, 'Alva Gallegos', 'Fernando MartÃ­n', 'falva', '', 'platform', '', 1, 'FALVA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(61, 'Arevalo Villanueva', 'Manuel', 'marevalo', '', 'platform', '', 1, 'MAREVALO', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(62, 'Arias Antonio', 'Leandro', 'larias', '', 'platform', '', 1, 'LARIAS', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(63, 'Carhuay Pampas', 'Enrique', 'ecarhuay', '', 'platform', '', 1, 'ECARHUAY', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(64, 'Cribillero Aching', 'Juan', 'jcribillero', '', 'platform', '', 1, 'JCRIBILLERO', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(65, 'Custodio Chung', 'Victor', 'vcustodio', '', 'platform', '', 1, 'VCUSTODIO', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(66, 'Figueroa Maldonado', 'Edward', 'edwfigueroa', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'platform', 'sergio.d.ca@hotmail.com', 1, 'EDWFIGUEROA', '', '', 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(67, 'Flor Vicente', 'Carlos Daniel', 'carflor', '', 'platform', '', 1, 'CARFLOR', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(68, 'GodiÃ±ez  De la Cruz ', 'Ernesto Juan', 'erngodiÃ±ez ', '', 'platform', '', 1, 'ERNGODIÃ±EZ ', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(69, 'Leon Villanueva', 'Jhony', 'jholeon', '', 'platform', '', 1, 'JHOLEON', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(70, 'Luna Martinez', 'Julio', 'julluna', '', 'platform', '', 1, 'JULLUNA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(71, 'MadueÃ±o Sulca', 'CÃ©sar', 'cÃ©madueÃ±o', '', 'platform', '', 1, 'CÃ©MADUEÃ±O', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(72, 'Mendoza Reyes', 'Carlos Alberto', 'carmendoza', '', 'platform', '', 1, 'CARMENDOZA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(73, 'Obregon Sotelo', 'Jose', 'josobregon', '', 'platform', '', 1, 'JOSOBREGON', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(74, 'Ramos Riofrio', 'Arturo', 'artramos', '', 'platform', '', 1, 'ARTRAMOS', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(75, 'Rios Ibarra', 'Alejandro', 'alerios', '', 'platform', '', 1, 'ALERIOS', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(76, 'Roca Meneses', 'Roni', 'ronroca', '', 'platform', '', 1, 'RONROCA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(77, 'Rodriguez De los Rios', 'Rolando', 'rolrodriguez', '', 'platform', '', 1, 'ROLRODRIGUEZ', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(78, 'Salazar MInaya', 'Angel', 'angsalazar', '', 'platform', '', 1, 'ANGSALAZAR', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(79, 'Vasquez Dominguez', 'Riquelmer', 'riqvasquez', '', 'platform', '', 1, 'RIQVASQUEZ', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(80, 'Vila Zavala', 'Herbert', 'hervila', '', 'platform', '', 1, 'HERVILA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(81, 'Vivas Fajardo', 'Ramon', 'ramvivas', '', 'platform', '', 1, 'RAMVIVAS', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(82, 'Alvarado Jaramillo', 'Luis', 'luialvarado', '', 'platform', '', 1, 'LUIALVARADO', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(83, 'Arevalo Castro', 'Victor Manuel', 'vicarevalo', '', 'platform', '', 1, 'VICAREVALO', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(84, 'Arias Chumpitaz', 'Ulises', 'uliarias', '', 'platform', '', 1, 'ULIARIAS', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(85, 'Barzola Esteban', 'Marcelo', 'marbarzola', '', 'platform', '', 1, 'MARBARZOLA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(86, 'Espirme Ortega', 'David', 'davespirme', '', 'platform', '', 1, 'DAVESPIRME', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(87, 'Lopez Esquivel', 'Miguel Angel', 'miglopez', '', 'platform', '', 1, 'MIGLOPEZ', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(88, 'Mamani Sulca', 'Oscar', 'oscmamani', '', 'platform', '', 1, 'OSCMAMANI', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(89, 'Mas HuamÃ¡n', 'Ronald JesÃºs', 'ronmas', '', 'platform', '', 1, 'RONMAS', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(90, 'MejÃ­a Rodrigo', 'Edwin', 'edwmejÃ­a', '', 'platform', '', 1, 'EDWMEJÃ­A', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(91, 'Minaya Ames', 'Julio CÃ©sar', 'julminaya', '', 'platform', '', 1, 'JULMINAYA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(92, 'Nizama Victoria', 'Luis Enrique', 'luinizama', '', 'platform', '', 1, 'LUINIZAMA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(93, 'Norabuena Meza', 'Edgard', 'edgnorabuena', '', 'platform', '', 1, 'EDGNORABUENA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(94, 'Ã‘aupari Huatuco', 'Zocimo', 'zocÃ‘aupari', '', 'platform', '', 1, 'ZOCÃ‘AUPARI', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(95, 'PÃ©rez Cupe', 'RÃ³sulo', 'rÃ³pÃ©rez', '', 'platform', '', 1, 'RÃ³PÃ©REZ', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(96, 'Reyes MuÃ±oz', 'Elva', 'elvreyes', '', 'platform', '', 1, 'ELVREYES', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(97, 'Silva Santiesteban', 'Mario', 'marsilva', '', 'platform', '', 1, 'MARSILVA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(98, 'Silvestre Valer', 'Jim', 'jimsilvestre', '', 'platform', '', 1, 'JIMSILVESTRE', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(99, 'Sotelo Chico', 'JosÃ© Carlos', 'jossotelo', '', 'platform', '', 1, 'JOSSOTELO', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(100, 'Tori Loza', 'JosÃ©', 'jostori', '', 'platform', '', 1, 'JOSTORI', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(101, 'Valderrama Soto', 'Ericka', 'erivalderrama', '', 'platform', '', 1, 'ERIVALDERRAMA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(102, 'Vidal DomÃ­nguez', 'Emilio', 'emividal', '', 'platform', '', 1, 'EMIVIDAL', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(103, 'Visurraga Reinoso', 'Roberto', 'robvisurraga', '', 'platform', '', 1, 'ROBVISURRAGA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(104, 'Zamudio Peves', 'JosÃ© Fernando', 'joszamudio', '', 'platform', '', 1, 'JOSZAMUDIO', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(105, 'Cabrera Chavez', 'Julio Cesar', 'julcabrera', '', 'platform', '', 1, 'JULCABRERA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(106, 'Escudero Acero', 'Phamela', 'phaescudero', '', 'platform', '', 1, 'PHAESCUDERO', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(107, 'Espinoza Vasquez', 'Manuel', 'manespinoza', '', 'platform', '', 1, 'MANESPINOZA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(108, 'Gallardo Vasquez', 'Pablo', 'pabgallardo', '', 'platform', '', 1, 'PABGALLARDO', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(109, 'Gamarra Lezcano', 'Melbert', 'melgamarra', '', 'platform', '', 1, 'MELGAMARRA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(110, 'Huaccha Quiroz', 'Eduardo', 'eduhuaccha', '', 'platform', '', 1, 'EDUHUACCHA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(111, 'Huaranca Tanta', 'Sergio', 'serhuaranca', '', 'platform', '', 1, 'SERHUARANCA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(112, 'Iquise Mamani', 'Luis Alberto', 'luiiquise', '', 'platform', '', 1, 'LUIIQUISE', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(113, 'Juscamayta Tineo', 'Nerio Hermes', 'nerjuscamayta', '', 'platform', '', 1, 'NERJUSCAMAYTA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(114, 'Laurente Artola', 'Victor Hugo', 'viclaurente', '', 'platform', '', 1, 'VICLAURENTE', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(115, 'Mamani Quea', 'Loo Javier', 'loomamani', '', 'platform', '', 1, 'LOOMAMANI', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(116, 'Mayta Guillermo', 'Jorge Enrique', 'jormayta', '', 'platform', '', 1, 'JORMAYTA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(117, 'Moya Guevara', 'Paulo CÃ©sar', 'paumoya', '', 'platform', '', 1, 'PAUMOYA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(118, 'MuÃ±oz Ramos', 'Luis Daniel', 'luimuÃ±oz', '', 'platform', '', 1, 'LUIMUÃ±OZ', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(119, 'Naupay GUSUKUMA', 'Alvarado Miguel', 'alvnaupay', '', 'platform', '', 1, 'ALVNAUPAY', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(120, 'Pacheco Colquicocha', 'Vladimir Gonzalo', 'vlapacheco', '', 'platform', '', 1, 'VLAPACHECO', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(121, 'Palomino Vildoso', 'Rolando Raul', 'rolpalomino', '', 'platform', '', 1, 'ROLPALOMINO', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(122, 'Perez Diaz', 'Elbert', 'elbperez', '', 'platform', '', 1, 'ELBPEREZ', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(123, 'Rodriguez Soto', 'Victor Eduardo', 'vicrodriguez', '', 'platform', '', 1, 'VICRODRIGUEZ', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(124, 'Rojas Cerna', 'Victor Daniel', 'vicrojas', '', 'platform', '', 1, 'VICROJAS', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(125, 'Torres Matos', 'Carlos', 'cartorres', '', 'platform', '', 1, 'CARTORRES', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(126, 'Valencia Miranda', 'Angel', 'angvalencia', '', 'platform', '', 1, 'ANGVALENCIA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(127, 'Villalobos Solano', 'Juan Javier', 'juavillalobos', '', 'platform', '', 1, 'JUAVILLALOBOS', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(128, 'Yarasca Moscol', 'Julio Eduardo', 'julyarasca', '', 'platform', '', 1, 'JULYARASCA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(129, 'Andi Chinchay', 'Alberto Julio', 'albandi', '', 'platform', '', 1, 'ALBANDI', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(130, 'Arambulo Ostos', 'Carlos Eduardo', 'cararambulo', '', 'platform', '', 1, 'CARARAMBULO', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(131, 'Carbonel Olazabal', 'Daniel Roberto', 'dancarbonel', '', 'platform', '', 1, 'DANCARBONEL', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(132, 'Castro Montesino', 'Jorge Antonio', 'jorcastro', '', 'platform', '', 1, 'JORCASTRO', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(133, 'Correa GarcÃ­a', 'Manuel', 'mancorrea', '', 'platform', '', 1, 'MANCORREA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(134, 'Cortez Galindo', 'Cancio Nicolas', 'cancortez', '', 'platform', '', 1, 'CANCORTEZ', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(135, 'Chavez Vivar', 'Javier', 'javchavez', '', 'platform', '', 1, 'JAVCHAVEZ', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(136, 'Chilet Cama', 'Wilber', 'wilchilet', '', 'platform', '', 1, 'WILCHILET', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(137, 'Diaz Chavez', 'Henry Jose', 'hendiaz', '', 'platform', '', 1, 'HENDIAZ', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(138, 'Garcia Rodas', 'Wilfredo', 'wilgarcia', '', 'platform', '', 1, 'WILGARCIA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(139, 'Huaman Sanchez', 'Alejandro Apolinario', 'alehuaman', '', 'platform', '', 1, 'ALEHUAMAN', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(140, 'Huilca Guevara', 'Ruben Elias', 'rubhuilca', '', 'platform', '', 1, 'RUBHUILCA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(141, 'Kurokawa Guerrero', 'Manuel', 'mankurokawa', '', 'platform', '', 1, 'MANKUROKAWA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(142, 'Lazo Ochoa', 'Domingo Pedro', 'domlazo', '', 'platform', '', 1, 'DOMLAZO', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(143, 'Lopez Arroyo', 'Jorge', 'jorlopez', '', 'platform', '', 1, 'JORLOPEZ', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(144, 'Oria Chavarria', 'Mario', 'maroria', '', 'platform', '', 1, 'MARORIA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(145, 'Pachas Salhuana', 'Jose Teodoro', 'jospachas', '', 'platform', '', 1, 'JOSPACHAS', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(146, 'Pozo Vilchez', 'Manuel Ignacio', 'manpozo', '', 'platform', '', 1, 'MANPOZO', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(147, 'Tito CCOICCA', 'Saul Gregorio', 'sautito', '', 'platform', '', 1, 'SAUTITO', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(148, 'Valverde Sandoval', 'Oscar Guillermo', 'oscvalverde', '', 'platform', '', 1, 'OSCVALVERDE', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0),
	(149, 'Vilca Mucha', 'Henry Alonso', 'henvilca', '', 'platform', '', 1, 'HENVILCA', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '', 'spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
