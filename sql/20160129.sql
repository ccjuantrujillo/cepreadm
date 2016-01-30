-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.6.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.2.0.4947
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura para tabla cepreadm.access_url
CREATE TABLE IF NOT EXISTS `access_url` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `description` text,
  `active` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `tms` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.access_url: 1 rows
DELETE FROM `access_url`;
/*!40000 ALTER TABLE `access_url` DISABLE KEYS */;
INSERT INTO `access_url` (`id`, `url`, `description`, `active`, `created_by`, `tms`) VALUES
	(1, 'http://localhost/', ' ', 1, 1, '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `access_url` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.access_url_rel_course
CREATE TABLE IF NOT EXISTS `access_url_rel_course` (
  `access_url_id` int(10) unsigned NOT NULL,
  `course_code` char(40) NOT NULL,
  PRIMARY KEY (`access_url_id`,`course_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.access_url_rel_course: 78 rows
DELETE FROM `access_url_rel_course`;
/*!40000 ALTER TABLE `access_url_rel_course` DISABLE KEYS */;
INSERT INTO `access_url_rel_course` (`access_url_id`, `course_code`) VALUES
	(1, '161BASIALGEBRA103M'),
	(1, '161BASIALGEBRD101M'),
	(1, '161BASIALGEBRD102M'),
	(1, '161BASIALGEBRD103M'),
	(1, '161BASIALGEBRD104M'),
	(1, '161BASIALGEBRD201M'),
	(1, '161BASIALGEBRD202M'),
	(1, '161BASIALGEBRD203M'),
	(1, '161BASIALGEBRD204M'),
	(1, '161BASIALGEBRD205M'),
	(1, '161BASIALGEBRD206M'),
	(1, '161BASIARITMEA103M'),
	(1, '161BASIARITMED101M'),
	(1, '161BASIARITMED102M'),
	(1, '161BASIARITMED103M'),
	(1, '161BASIARITMED104M'),
	(1, '161BASIARITMED201M'),
	(1, '161BASIARITMED202M'),
	(1, '161BASIARITMED203M'),
	(1, '161BASIARITMED204M'),
	(1, '161BASIARITMED205M'),
	(1, '161BASIARITMED206M'),
	(1, '161BASIFISICAA103M'),
	(1, '161BASIFISICAD101M'),
	(1, '161BASIFISICAD102M'),
	(1, '161BASIFISICAD103M'),
	(1, '161BASIFISICAD104M'),
	(1, '161BASIFISICAD201M'),
	(1, '161BASIFISICAD202M'),
	(1, '161BASIFISICAD203M'),
	(1, '161BASIFISICAD204M'),
	(1, '161BASIFISICAD205M'),
	(1, '161BASIFISICAD206M'),
	(1, '161BASIGEOMETA103M'),
	(1, '161BASIGEOMETD101M'),
	(1, '161BASIGEOMETD102M'),
	(1, '161BASIGEOMETD103M'),
	(1, '161BASIGEOMETD104M'),
	(1, '161BASIGEOMETD201M'),
	(1, '161BASIGEOMETD202M'),
	(1, '161BASIGEOMETD203M'),
	(1, '161BASIGEOMETD204M'),
	(1, '161BASIGEOMETD205M'),
	(1, '161BASIGEOMETD206M'),
	(1, '161BASIHUMANID101M'),
	(1, '161BASIHUMANID102M'),
	(1, '161BASIHUMANID103M'),
	(1, '161BASIHUMANID104M'),
	(1, '161BASIHUMANID201M'),
	(1, '161BASIHUMANID202M'),
	(1, '161BASIHUMANID203M'),
	(1, '161BASIHUMANID204M'),
	(1, '161BASIHUMANID205M'),
	(1, '161BASIHUMANID206M'),
	(1, '161BASIQUIMICD101M'),
	(1, '161BASIQUIMICD102M'),
	(1, '161BASIQUIMICD103M'),
	(1, '161BASIQUIMICD104M'),
	(1, '161BASIQUIMICD201M'),
	(1, '161BASIQUIMICD202M'),
	(1, '161BASIQUIMICD203M'),
	(1, '161BASIQUIMICD204M'),
	(1, '161BASIQUIMICD205M'),
	(1, '161BASIQUIMICD206M'),
	(1, '161BASITRIGONA103M'),
	(1, '161BASITRIGOND102M'),
	(1, '161BASITRIGOND103M'),
	(1, '161BASITRIGOND104M'),
	(1, '161BASITRIGOND201M'),
	(1, '161BASITRIGOND202M'),
	(1, '161BASITRIGOND203M'),
	(1, '161BASITRIGOND204M'),
	(1, '161BASITRIGOND205M'),
	(1, '161BASITRIGOND206M'),
	(1, 'GEOMETRIACEPREUNIA101'),
	(1, 'GEOMETRIACEPREUNID103'),
	(1, 'NUEVOCUR1'),
	(1, 'PHPPROGRAMACIONWEB');
/*!40000 ALTER TABLE `access_url_rel_course` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.access_url_rel_session
CREATE TABLE IF NOT EXISTS `access_url_rel_session` (
  `access_url_id` int(10) unsigned NOT NULL,
  `session_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`access_url_id`,`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.access_url_rel_session: 0 rows
DELETE FROM `access_url_rel_session`;
/*!40000 ALTER TABLE `access_url_rel_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `access_url_rel_session` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.access_url_rel_user
CREATE TABLE IF NOT EXISTS `access_url_rel_user` (
  `access_url_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`access_url_id`,`user_id`),
  KEY `idx_access_url_rel_user_user` (`user_id`),
  KEY `idx_access_url_rel_user_access_url` (`access_url_id`),
  KEY `idx_access_url_rel_user_access_url_user` (`user_id`,`access_url_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.access_url_rel_user: 53 rows
DELETE FROM `access_url_rel_user`;
/*!40000 ALTER TABLE `access_url_rel_user` DISABLE KEYS */;
INSERT INTO `access_url_rel_user` (`access_url_id`, `user_id`) VALUES
	(1, 1),
	(1, 3),
	(1, 4),
	(1, 5),
	(1, 6),
	(1, 7),
	(1, 8),
	(1, 9),
	(1, 10),
	(1, 11),
	(1, 12),
	(1, 13),
	(1, 14),
	(1, 15),
	(1, 16),
	(1, 17),
	(1, 18),
	(1, 19),
	(1, 20),
	(1, 21),
	(1, 22),
	(1, 23),
	(1, 24),
	(1, 25),
	(1, 26),
	(1, 27),
	(1, 28),
	(1, 29),
	(1, 30),
	(1, 31),
	(1, 32),
	(1, 33),
	(1, 34),
	(1, 35),
	(1, 36),
	(1, 37),
	(1, 38),
	(1, 39),
	(1, 40),
	(1, 41),
	(1, 42),
	(1, 43),
	(1, 44),
	(1, 45),
	(1, 46),
	(1, 47),
	(1, 48),
	(1, 49),
	(1, 50),
	(1, 51),
	(1, 52),
	(1, 53),
	(1, 54);
/*!40000 ALTER TABLE `access_url_rel_user` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.admin: 1 rows
DELETE FROM `admin`;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`, `user_id`) VALUES
	(1, 1);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.announcement_rel_group
CREATE TABLE IF NOT EXISTS `announcement_rel_group` (
  `group_id` int(11) NOT NULL,
  `announcement_id` int(11) NOT NULL,
  PRIMARY KEY (`group_id`,`announcement_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.announcement_rel_group: 0 rows
DELETE FROM `announcement_rel_group`;
/*!40000 ALTER TABLE `announcement_rel_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcement_rel_group` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_acceso
CREATE TABLE IF NOT EXISTS `ant_acceso` (
  `ACCESOP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `PERSP_Codigo` int(11) NOT NULL DEFAULT '0',
  `ACCESOC_Fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ACCESOP_Codigo`),
  KEY `FK_acceso_persona` (`PERSP_Codigo`),
  CONSTRAINT `FK_acceso_persona` FOREIGN KEY (`PERSP_Codigo`) REFERENCES `ant_persona` (`PERSP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_acceso: ~39 rows (aproximadamente)
DELETE FROM `ant_acceso`;
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
	(74, 1, '2016-01-29 04:44:57');
/*!40000 ALTER TABLE `ant_acceso` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_acta
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_acta: ~3 rows (aproximadamente)
DELETE FROM `ant_acta`;
/*!40000 ALTER TABLE `ant_acta` DISABLE KEYS */;
INSERT INTO `ant_acta` (`ACTAP_Codigo`, `USUA_Codigo`, `PROP_Codigo`, `TIPCICLOP_Codigo`, `ACTAC_Tipo`, `ACTAC_Fecha`, `ACTAC_Titulo`, `ACTAC_Agenda`, `ACTAC_Detalle`, `ACTAC_Hinicio`, `ACTAC_Hfin`, `ACTAC_FechaModificacion`, `ACTAC_FechaRegistro`) VALUES
	(1, 7, 105, 1, '', '2016-01-09', 'asdf', '', '', '01:00:00', '00:00:00', NULL, '2016-01-09 01:01:32'),
	(2, 7, 104, 4, '', '2016-01-26', 'reuon otra', 'asdfasdf', '', '00:00:00', '01:01:00', NULL, '2016-01-26 17:00:49'),
	(4, 7, 192, 5, '', '2016-01-26', 'uio', 'uiouio', '', '00:00:00', '00:00:00', NULL, '2016-01-26 17:53:06');
/*!40000 ALTER TABLE `ant_acta` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_actadetalle
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_actadetalle: ~3 rows (aproximadamente)
DELETE FROM `ant_actadetalle`;
/*!40000 ALTER TABLE `ant_actadetalle` DISABLE KEYS */;
INSERT INTO `ant_actadetalle` (`ACTADETP_Codigo`, `ACTAP_Codigo`, `ACTADETC_Nombre`, `ACTADETC_Observacion`, `ACTADETC_FechaModificacion`, `ACTADETC_FechaRegistro`) VALUES
	(1, 1, 'a', 'asdf', NULL, '2016-01-09 01:01:32'),
	(2, 1, 'b', 'asfsadf', NULL, '2016-01-26 17:02:11'),
	(3, 1, 'c', 'dfasdfasdfasdfasf', NULL, '2016-01-26 17:02:20');
/*!40000 ALTER TABLE `ant_actadetalle` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_actaexposicion
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_actaexposicion: ~0 rows (aproximadamente)
DELETE FROM `ant_actaexposicion`;
/*!40000 ALTER TABLE `ant_actaexposicion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_actaexposicion` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_actaprofesor
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_actaprofesor: ~26 rows (aproximadamente)
DELETE FROM `ant_actaprofesor`;
/*!40000 ALTER TABLE `ant_actaprofesor` DISABLE KEYS */;
INSERT INTO `ant_actaprofesor` (`ACTAPROFP_Codigo`, `ACTAP_Codigo`, `PROP_Codigo`, `ACTAPROFC_Hingreso`, `ACTAPROFC_Hsalida`, `ACTAPROFC_Observacion`, `ACTAPROFC_FechaRegistro`) VALUES
	(1, 1, 102, '00:00:00', '00:00:00', 'o', '2016-01-26 16:59:53'),
	(2, 1, 103, '01:00:00', '00:00:00', 'o', '2016-01-26 16:59:53'),
	(3, 1, 104, '01:00:00', '00:00:00', 'o', '2016-01-26 16:59:53'),
	(4, 1, 105, '01:00:00', '00:00:00', 'oo', '2016-01-26 16:59:53'),
	(5, 1, 106, '01:00:00', '00:00:00', 'o', '2016-01-26 16:59:53'),
	(6, 1, 107, '01:00:00', '00:00:00', 'o', '2016-01-26 16:59:53'),
	(7, 1, 108, '01:00:00', '00:00:00', 'o', '2016-01-26 16:59:53'),
	(8, 1, 109, '00:00:00', '00:00:00', 'uuuuu', '2016-01-26 16:59:53'),
	(9, 1, 110, '00:00:00', '00:00:00', 'o', '2016-01-26 16:59:53'),
	(10, 1, 111, '00:00:00', '00:00:00', 'o', '2016-01-26 16:59:53'),
	(11, 1, 112, '00:00:00', '00:00:00', 'o', '2016-01-26 16:59:53'),
	(12, 1, 113, '00:00:00', '00:00:00', 'o', '2016-01-26 16:59:53'),
	(13, 1, 114, '00:00:00', '00:00:00', 'o', '2016-01-26 16:59:53'),
	(14, 1, 115, '00:00:00', '00:00:00', 'o', '2016-01-26 16:59:53'),
	(15, 1, 116, '00:00:00', '00:00:00', '', '2016-01-26 16:59:53'),
	(16, 1, 117, '00:00:00', '00:00:00', '', '2016-01-26 16:59:53'),
	(17, 1, 118, '00:00:00', '00:00:00', '', '2016-01-26 16:59:53'),
	(18, 1, 119, '00:00:00', '00:00:00', '', '2016-01-26 16:59:53'),
	(19, 1, 120, '00:00:00', '00:00:00', '', '2016-01-26 16:59:53'),
	(20, 1, 121, '00:00:00', '00:00:00', '', '2016-01-26 16:59:53'),
	(34, 2, 112, '00:00:00', '00:00:00', '1', '2016-01-26 17:01:03'),
	(36, 2, 114, '00:00:00', '00:00:00', '2', '2016-01-26 17:01:04'),
	(37, 2, 115, '00:00:00', '00:00:00', '3', '2016-01-26 17:01:04'),
	(42, 2, 120, '00:00:00', '00:00:00', '4', '2016-01-26 17:01:04'),
	(44, 2, 122, '00:00:00', '00:00:00', '5', '2016-01-26 17:01:04');
/*!40000 ALTER TABLE `ant_actaprofesor` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_actividad
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

-- Volcando datos para la tabla cepreadm.ant_actividad: ~0 rows (aproximadamente)
DELETE FROM `ant_actividad`;
/*!40000 ALTER TABLE `ant_actividad` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_actividad` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_afiliacion
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

-- Volcando datos para la tabla cepreadm.ant_afiliacion: ~0 rows (aproximadamente)
DELETE FROM `ant_afiliacion`;
/*!40000 ALTER TABLE `ant_afiliacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_afiliacion` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_alumno
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

-- Volcando datos para la tabla cepreadm.ant_alumno: ~45 rows (aproximadamente)
DELETE FROM `ant_alumno`;
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


-- Volcando estructura para tabla cepreadm.ant_apertura
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_apertura: ~12 rows (aproximadamente)
DELETE FROM `ant_apertura`;
/*!40000 ALTER TABLE `ant_apertura` DISABLE KEYS */;
INSERT INTO `ant_apertura` (`APERTUP_Codigo`, `CICLOP_Codigo`, `TIPCICLOP_Codigo`, `AULAP_Codigo`, `TURNOP_Codigo`, `MODULOP_Codigo`, `APERTUC_Descripcion`, `APERTUC_Observacion`, `APERTUC_FlagEstado`, `APERTUC_Fecha`, `APERTUC_FechaModificacion`, `APERTUC_FechaRegistro`) VALUES
	(35, 1, 1, 1, 1, 6, '', NULL, '1', '2015-12-24', NULL, '2015-12-24 13:42:30'),
	(36, 1, 1, 2, 1, 6, '', NULL, '1', '2015-12-24', NULL, '2015-12-24 13:42:46'),
	(37, 1, 1, 3, 1, 5, '', NULL, '1', '2015-12-24', NULL, '2015-12-24 13:43:01'),
	(43, 1, 1, 4, 1, 5, '', NULL, '1', '2015-12-24', NULL, '2015-12-24 13:43:35'),
	(56, 1, 1, 5, 1, 5, '', NULL, '1', '2015-12-24', NULL, '2015-12-24 13:45:45'),
	(57, 1, 1, 6, 1, 5, '', NULL, '1', '2015-12-24', NULL, '2015-12-24 13:46:33'),
	(58, 1, 1, 7, 1, 5, '', NULL, '1', '2015-12-24', NULL, '2015-12-24 13:46:47'),
	(59, 1, 1, 8, 1, 1, '', NULL, '1', '2015-12-24', NULL, '2015-12-24 13:47:00'),
	(60, 1, 1, 9, 1, 5, '', NULL, '1', '2015-12-24', NULL, '2015-12-24 13:47:18'),
	(61, 1, 1, 10, 1, 5, '', NULL, '1', '2015-12-24', NULL, '2015-12-24 13:47:37'),
	(62, 1, 1, 13, 1, 5, '', NULL, '1', '2016-01-09', NULL, '2016-01-09 10:48:47'),
	(65, 1, 1, 13, 2, 7, '', NULL, '1', '2016-01-22', NULL, '2016-01-21 20:08:53'),
	(81, 1, 3, 14, 2, 3, '', NULL, '1', '2016-01-22', NULL, '2016-01-22 01:32:22');
/*!40000 ALTER TABLE `ant_apertura` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_asignacion
CREATE TABLE IF NOT EXISTS `ant_asignacion` (
  `ASIGP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `PROP_Codigo` int(11) NOT NULL DEFAULT '0',
  `CICLOP_Codigo` int(11) NOT NULL DEFAULT '0',
  `course_id` int(11) NOT NULL DEFAULT '0',
  `ASIGC_Grupo` char(1) DEFAULT NULL COMMENT '1,2',
  `ASIGC_Descripcion` varchar(250) NOT NULL DEFAULT '0',
  `ASIGC_Fecha` datetime NOT NULL,
  `ASIGC_FlagEstado` char(1) NOT NULL DEFAULT '1',
  `ASIGC_FechaModificacion` datetime DEFAULT NULL,
  `ASIGC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ASIGP_Codigo`),
  KEY `FK_asignacion_profesor` (`PROP_Codigo`),
  KEY `FK_asignacion_ciclo` (`CICLOP_Codigo`),
  CONSTRAINT `FK_asignacion_ciclo` FOREIGN KEY (`CICLOP_Codigo`) REFERENCES `ant_ciclo` (`CICLOP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_asignacion_profesor` FOREIGN KEY (`PROP_Codigo`) REFERENCES `ant_profesor` (`PROP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_asignacion: ~8 rows (aproximadamente)
DELETE FROM `ant_asignacion`;
/*!40000 ALTER TABLE `ant_asignacion` DISABLE KEYS */;
INSERT INTO `ant_asignacion` (`ASIGP_Codigo`, `PROP_Codigo`, `CICLOP_Codigo`, `course_id`, `ASIGC_Grupo`, `ASIGC_Descripcion`, `ASIGC_Fecha`, `ASIGC_FlagEstado`, `ASIGC_FechaModificacion`, `ASIGC_FechaRegistro`) VALUES
	(43, 148, 1, 149, '0', '0', '2015-12-24 00:00:00', '1', NULL, '2015-12-24 14:26:27'),
	(44, 148, 1, 156, '0', '0', '2015-12-24 00:00:00', '1', NULL, '2015-12-24 14:30:55'),
	(46, 148, 1, 212, '0', '0', '2015-12-24 00:00:00', '1', NULL, '2015-12-24 14:39:40'),
	(48, 153, 1, 198, '0', '0', '2015-12-28 00:00:00', '1', NULL, '2015-12-28 12:50:48'),
	(49, 136, 1, 148, '0', '0', '2016-01-22 00:00:00', '1', NULL, '2016-01-21 22:10:50'),
	(50, 126, 1, 204, '0', '0', '2016-01-22 00:00:00', '1', NULL, '2016-01-21 22:11:29'),
	(51, 102, 1, 147, '0', '0', '2016-01-27 00:00:00', '1', NULL, '2016-01-26 18:50:01'),
	(52, 149, 1, 184, '0', '0', '2016-01-27 00:00:00', '1', NULL, '2016-01-26 18:53:37'),
	(53, 129, 1, 191, '0', '0', '2016-01-27 00:00:00', '1', NULL, '2016-01-26 18:54:02');
/*!40000 ALTER TABLE `ant_asignacion` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_asignaciondetalle
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_asignaciondetalle: ~18 rows (aproximadamente)
DELETE FROM `ant_asignaciondetalle`;
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
	(81, 51, 2, '10:20:00', '12:10:00', NULL, '2016-01-26 18:50:01'),
	(82, 51, 4, '10:20:00', '12:10:00', NULL, '2016-01-26 18:50:01'),
	(83, 52, 1, '08:10:00', '10:00:00', NULL, '2016-01-26 18:53:37'),
	(84, 52, 3, '08:10:00', '10:00:00', NULL, '2016-01-26 18:53:38'),
	(85, 53, 1, '08:10:00', '10:00:00', NULL, '2016-01-26 18:54:02'),
	(86, 53, 3, '08:10:00', '10:00:00', NULL, '2016-01-26 18:54:02');
/*!40000 ALTER TABLE `ant_asignaciondetalle` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_aula
CREATE TABLE IF NOT EXISTS `ant_aula` (
  `AULAP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `LOCP_Codigo` int(11) NOT NULL,
  `AULAC_Nombre` varchar(100) DEFAULT NULL,
  `AULAC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`AULAP_Codigo`),
  KEY `FK_aula_local` (`LOCP_Codigo`),
  CONSTRAINT `FK_aula_local` FOREIGN KEY (`LOCP_Codigo`) REFERENCES `ant_local` (`LOCP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_aula: ~19 rows (aproximadamente)
DELETE FROM `ant_aula`;
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
	(12, 2, 'A102', '2015-05-16 12:48:41'),
	(13, 2, 'A103', '2015-05-16 12:48:54'),
	(14, 2, 'B101', '2015-05-16 12:49:06'),
	(15, 2, 'B102', '2015-05-16 12:49:14'),
	(16, 2, 'B103', '2015-05-16 12:49:23'),
	(17, 2, 'C101', '2015-05-16 12:49:32'),
	(18, 2, 'C102', '2015-05-16 12:49:40'),
	(19, 2, 'C103', '2015-05-16 12:49:48');
/*!40000 ALTER TABLE `ant_aula` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_ciclo
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

-- Volcando datos para la tabla cepreadm.ant_ciclo: ~2 rows (aproximadamente)
DELETE FROM `ant_ciclo`;
/*!40000 ALTER TABLE `ant_ciclo` DISABLE KEYS */;
INSERT INTO `ant_ciclo` (`CICLOP_Codigo`, `TIPOCICLOP_Codigo`, `COMPC_Nombre`, `CICC_FECHA_INICIO`, `CICC_FECHA_FIN`, `CICC_DESCRIPCION`, `COMPC_FlagEstado`) VALUES
	(1, 1, 'ADMISION 2016-1', '0000-00-00', '1990-05-11', 'CICLO DE INICIO DEL AÃ±O', 1),
	(2, 2, 'ADMISION 2015-2', '2015-05-06', '2015-10-25', 'CICLO DE FIN DE AÃ±O', 2),
	(3, 1, 'ADMISION 2016-2', '2015-02-11', '2015-02-11', '', 1);
/*!40000 ALTER TABLE `ant_ciclo` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_conferencia
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

-- Volcando datos para la tabla cepreadm.ant_conferencia: ~0 rows (aproximadamente)
DELETE FROM `ant_conferencia`;
/*!40000 ALTER TABLE `ant_conferencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_conferencia` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_curso
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

-- Volcando datos para la tabla cepreadm.ant_curso: ~7 rows (aproximadamente)
DELETE FROM `ant_curso`;
/*!40000 ALTER TABLE `ant_curso` DISABLE KEYS */;
INSERT INTO `ant_curso` (`PROD_Codigo`, `TIPPROD_Codigo`, `PROD_Nombre`, `PROD_DescripcionBreve`, `PROD_EspecificacionPDF`, `PROD_Comentario`, `PROD_Cantidad`, `PROD_Intentos`, `PROD_Tiempo`, `PROD_TiempoExamen`, `PROD_Puntaje`, `PROD_Imagen`, `PROD_Silabus`, `PROD_FlagEstado`, `PROD_FechaModificacion`, `PROD_FechaRegistro`) VALUES
	(5, 1, 'Trigonometria', '', '0', '0', 88, 3, 2, 5, 14, 'erp.png', 'capitulo06.pdf', '1', '2015-10-16 16:24:21', '2011-01-18 07:20:19'),
	(92, 1, 'Fisica', 'EDWARD 2', '0', '0', 3, 5, 5, 30, 14, NULL, NULL, '1', '2015-10-16 16:23:57', '2015-03-25 18:01:35'),
	(93, 1, 'Geometria', 'EDWARD', '0', '0', 4, 5, 5, 30, 14, NULL, NULL, '1', '2015-10-16 16:24:05', '2015-03-25 18:02:55'),
	(95, 1, 'Aritmetica', 'SDFASDF', '0', '0', 12, 5, 5, 30, 14, NULL, NULL, '1', '2015-10-16 16:23:49', '2015-07-24 23:55:23'),
	(96, 1, 'Algebra', '', '0', '0', 11, 5, 5, 30, 14, NULL, NULL, '1', '2015-10-16 16:23:41', '2015-07-24 23:55:41'),
	(97, 1, 'Quimica', '', '0', '0', 0, 5, 5, 30, 14, NULL, NULL, '1', '2015-10-16 16:24:12', '2015-10-16 09:20:50'),
	(98, 4, 'Humanidades', '', '0', '0', 0, 5, 5, 30, 14, NULL, NULL, '1', NULL, '2015-10-16 09:24:30');
/*!40000 ALTER TABLE `ant_curso` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_cursociclo
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

-- Volcando datos para la tabla cepreadm.ant_cursociclo: ~8 rows (aproximadamente)
DELETE FROM `ant_cursociclo`;
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


-- Volcando estructura para tabla cepreadm.ant_cursotipoestudio
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

-- Volcando datos para la tabla cepreadm.ant_cursotipoestudio: ~0 rows (aproximadamente)
DELETE FROM `ant_cursotipoestudio`;
/*!40000 ALTER TABLE `ant_cursotipoestudio` DISABLE KEYS */;
INSERT INTO `ant_cursotipoestudio` (`CURSOTIPOP_Codigo`, `CURSOCIP_Codigo`, `TIPP_Codigo`, `CURSOTIPOC_FlagEstado`, `CURSOTIPOC_FechaModificacion`, `CURSOTIPOC_FechaRegistro`) VALUES
	(1, 7, 5, '1', NULL, '2015-12-26 08:22:56');
/*!40000 ALTER TABLE `ant_cursotipoestudio` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_empresa
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_empresa: ~2 rows (aproximadamente)
DELETE FROM `ant_empresa`;
/*!40000 ALTER TABLE `ant_empresa` DISABLE KEYS */;
INSERT INTO `ant_empresa` (`EMPRP_Codigo`, `SECTORP_Codigo`, `EMPRC_Ruc`, `EMPRC_RazonSocial`, `EMPRC_Telefono`, `EMPRC_Movil`, `EMPRC_Fax`, `EMPRC_Web`, `EMPRC_Email`, `EMPRC_Direccion`, `EMPRC_FlagEstado`, `EMPRC_FechaModificacion`, `EMPRC_FechaRegistro`) VALUES
	(0, 1, NULL, 'EMPRESA NO REGISTRADA', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2010-12-17 04:34:56'),
	(1, 1, '43242342342', 'Ferreteria de los olvisos', '567567', '3424', '234234', '234234', '234', '4234234234', '1', NULL, '2011-01-09 15:30:59');
/*!40000 ALTER TABLE `ant_empresa` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_estudios
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

-- Volcando datos para la tabla cepreadm.ant_estudios: ~0 rows (aproximadamente)
DELETE FROM `ant_estudios`;
/*!40000 ALTER TABLE `ant_estudios` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_estudios` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_estudiosidiomas
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

-- Volcando datos para la tabla cepreadm.ant_estudiosidiomas: ~0 rows (aproximadamente)
DELETE FROM `ant_estudiosidiomas`;
/*!40000 ALTER TABLE `ant_estudiosidiomas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_estudiosidiomas` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_experiencia
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

-- Volcando datos para la tabla cepreadm.ant_experiencia: ~0 rows (aproximadamente)
DELETE FROM `ant_experiencia`;
/*!40000 ALTER TABLE `ant_experiencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_experiencia` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_grado
CREATE TABLE IF NOT EXISTS `ant_grado` (
  `GRADOP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `GRADOC_Descripcion` varchar(150) NOT NULL,
  `GRADOC_FechaModificacion` datetime DEFAULT NULL,
  `GRADOC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`GRADOP_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_grado: ~5 rows (aproximadamente)
DELETE FROM `ant_grado`;
/*!40000 ALTER TABLE `ant_grado` DISABLE KEYS */;
INSERT INTO `ant_grado` (`GRADOP_Codigo`, `GRADOC_Descripcion`, `GRADOC_FechaModificacion`, `GRADOC_FechaRegistro`) VALUES
	(1, 'Bachiller', NULL, '2015-10-26 07:29:06'),
	(2, 'Titulado', NULL, '2015-10-26 07:29:11'),
	(3, 'Maestria', NULL, '2015-10-26 07:29:16'),
	(4, 'Doctorado', NULL, '2015-10-26 07:29:21'),
	(5, 'Licenciado', NULL, '2015-10-26 08:48:33');
/*!40000 ALTER TABLE `ant_grado` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_idiomas
CREATE TABLE IF NOT EXISTS `ant_idiomas` (
  `IDIOMP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `IDIOMC_Descripcion` varchar(150) DEFAULT NULL,
  `IDIOMC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`IDIOMP_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_idiomas: ~6 rows (aproximadamente)
DELETE FROM `ant_idiomas`;
/*!40000 ALTER TABLE `ant_idiomas` DISABLE KEYS */;
INSERT INTO `ant_idiomas` (`IDIOMP_Codigo`, `IDIOMC_Descripcion`, `IDIOMC_FechaRegistro`) VALUES
	(1, 'Ingles', '2015-10-29 07:57:58'),
	(2, 'Frances', '2015-10-29 07:58:03'),
	(3, 'Aleman', '2015-10-29 07:58:14'),
	(4, 'Portugues', '2015-10-29 07:58:23'),
	(5, 'Italiano', '2015-10-29 07:58:28'),
	(6, 'Otros', '2015-10-29 07:59:02');
/*!40000 ALTER TABLE `ant_idiomas` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_local
CREATE TABLE IF NOT EXISTS `ant_local` (
  `LOCP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `LOCC_Nombre` varchar(150) NOT NULL,
  `LOCC_Direccion` varchar(250) NOT NULL,
  `LOCC_Telefono` varchar(250) NOT NULL,
  `LOCC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`LOCP_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_local: ~3 rows (aproximadamente)
DELETE FROM `ant_local`;
/*!40000 ALTER TABLE `ant_local` DISABLE KEYS */;
INSERT INTO `ant_local` (`LOCP_Codigo`, `LOCC_Nombre`, `LOCC_Direccion`, `LOCC_Telefono`, `LOCC_FechaRegistro`) VALUES
	(1, 'Sede Sucre', 'AVENIDA SUCRE 1239', '4543278', '2015-05-16 12:45:22'),
	(2, 'Sede Javier Prado', 'Javier Prado 321', '5640904', '2015-05-16 12:45:32'),
	(4, 'Sede Los Olivos', 'Mz R Lote 50 Los Nisperos', '47646', '2015-07-23 16:34:35');
/*!40000 ALTER TABLE `ant_local` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_matricula
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

-- Volcando datos para la tabla cepreadm.ant_matricula: ~0 rows (aproximadamente)
DELETE FROM `ant_matricula`;
/*!40000 ALTER TABLE `ant_matricula` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_matricula` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_menu
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

-- Volcando datos para la tabla cepreadm.ant_menu: ~34 rows (aproximadamente)
DELETE FROM `ant_menu`;
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


-- Volcando estructura para tabla cepreadm.ant_modulo
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_modulo: ~8 rows (aproximadamente)
DELETE FROM `ant_modulo`;
/*!40000 ALTER TABLE `ant_modulo` DISABLE KEYS */;
INSERT INTO `ant_modulo` (`MODULOP_Codigo`, `TURNOP_Codigo`, `TIPP_Codigo`, `MODULOC_Descripcion`, `MODULOC_FechaModificacion`, `MODULOC_FechaRegistro`) VALUES
	(1, 1, 3, 'Modulo I', NULL, '2016-01-15 18:17:12'),
	(2, 1, 3, 'Modulo II', NULL, '2016-01-15 18:17:22'),
	(3, 2, 3, 'Modulo I', NULL, '2016-01-15 18:17:37'),
	(4, 2, 3, 'Modulo II', NULL, '2016-01-15 18:17:47'),
	(5, 1, 5, 'Modulo I', NULL, '2016-01-15 23:55:00'),
	(6, 1, 5, 'Modulo II', NULL, '2016-01-15 23:55:21'),
	(7, 2, 5, 'Modulo I', NULL, '2016-01-16 00:31:35'),
	(8, 2, 5, 'Modulo II', NULL, '2016-01-16 00:35:28');
/*!40000 ALTER TABLE `ant_modulo` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_modulodetalle
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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_modulodetalle: ~115 rows (aproximadamente)
DELETE FROM `ant_modulodetalle`;
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
	(123, 4, 97, 6, '18:10:00', '20:40:00', NULL, '2016-01-16 01:01:55');
/*!40000 ALTER TABLE `ant_modulodetalle` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_nacionalidad
CREATE TABLE IF NOT EXISTS `ant_nacionalidad` (
  `NACP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `COMPP_Codigo` int(11) DEFAULT NULL,
  `NACC_Descripcion` varchar(150) DEFAULT NULL,
  `NACC_FechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`NACP_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_nacionalidad: ~274 rows (aproximadamente)
DELETE FROM `ant_nacionalidad`;
/*!40000 ALTER TABLE `ant_nacionalidad` DISABLE KEYS */;
INSERT INTO `ant_nacionalidad` (`NACP_Codigo`, `COMPP_Codigo`, `NACC_Descripcion`, `NACC_FechaRegistro`) VALUES
	(0, 1, '::Seleccione::', '2014-10-06 04:27:07'),
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
	(273, 1, 'ZONA NEUTRAL (PALESTINA)', '2010-12-13 17:54:36');
/*!40000 ALTER TABLE `ant_nacionalidad` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_permiso
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

-- Volcando datos para la tabla cepreadm.ant_permiso: ~59 rows (aproximadamente)
DELETE FROM `ant_permiso`;
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


-- Volcando estructura para tabla cepreadm.ant_persona
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
) ENGINE=InnoDB AUTO_INCREMENT=433 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.ant_persona: ~154 rows (aproximadamente)
DELETE FROM `ant_persona`;
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
	(432, 0, 'aaaaaaaaa', 'aaaaa', 'Aaaaaaaaaaaaa', '0', '24234', '324234', '0', '0', '', '24234', '0', '0', '0000-00-00', '1', NULL, '2015-12-30 21:46:39');
/*!40000 ALTER TABLE `ant_persona` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_productoatributo2
CREATE TABLE IF NOT EXISTS `ant_productoatributo2` (
  `PRODATRIB2_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `PROD_Codigo` int(11) DEFAULT NULL,
  `COMPP_Codigo` int(11) DEFAULT NULL,
  `PRODATRIB2_Descripcion` varchar(150) DEFAULT NULL,
  `PRODATRIB2_FechaModificacion` datetime DEFAULT NULL,
  `PRODATRIB2_FechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PRODATRIB2_Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_productoatributo2: ~0 rows (aproximadamente)
DELETE FROM `ant_productoatributo2`;
/*!40000 ALTER TABLE `ant_productoatributo2` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_productoatributo2` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_productoprecio
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

-- Volcando datos para la tabla cepreadm.ant_productoprecio: ~0 rows (aproximadamente)
DELETE FROM `ant_productoprecio`;
/*!40000 ALTER TABLE `ant_productoprecio` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_productoprecio` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_profesor
CREATE TABLE IF NOT EXISTS `ant_profesor` (
  `PROP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `PROD_Codigo` int(11) NOT NULL,
  `SUBCURSOP_Codigo` int(11) NOT NULL,
  `PERSP_Codigo` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `PROC_FlagEstado` char(1) NOT NULL DEFAULT '1',
  `PROC_FlagBorrado` char(1) NOT NULL DEFAULT '1' COMMENT '1:Activo, 0: Borrado',
  `PROC_FechaModificacion` datetime DEFAULT NULL,
  `PROC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PROP_Codigo`),
  UNIQUE KEY `PERSP_Codigo` (`PERSP_Codigo`),
  KEY `FK_profesor_persona` (`PERSP_Codigo`),
  KEY `FK_profesor_curso` (`PROD_Codigo`),
  CONSTRAINT `FK_profesor_persona` FOREIGN KEY (`PERSP_Codigo`) REFERENCES `ant_persona` (`PERSP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_profesor: ~93 rows (aproximadamente)
DELETE FROM `ant_profesor`;
/*!40000 ALTER TABLE `ant_profesor` DISABLE KEYS */;
INSERT INTO `ant_profesor` (`PROP_Codigo`, `PROD_Codigo`, `SUBCURSOP_Codigo`, `PERSP_Codigo`, `user_id`, `PROC_FlagEstado`, `PROC_FlagBorrado`, `PROC_FechaModificacion`, `PROC_FechaRegistro`) VALUES
	(95, 0, 0, 1, 0, '1', '1', '2016-01-05 14:05:43', '2015-12-18 21:29:29'),
	(101, 96, 0, 226, 58, '1', '1', '2016-01-09 16:41:24', '2015-12-24 13:11:23'),
	(102, 93, 0, 227, 59, '1', '1', '2015-12-24 19:12:47', '2015-12-24 13:12:47'),
	(103, 93, 0, 228, 60, '1', '1', '2015-12-24 19:13:19', '2015-12-24 13:13:19'),
	(104, 93, 0, 229, 61, '1', '1', '2015-12-24 19:14:45', '2015-12-24 13:14:45'),
	(105, 93, 0, 230, 62, '1', '1', '2015-12-24 19:15:07', '2015-12-24 13:15:07'),
	(106, 93, 0, 231, 63, '1', '1', '2015-12-24 19:15:50', '2015-12-24 13:15:50'),
	(107, 93, 0, 232, 64, '1', '1', '2015-12-24 19:16:12', '2015-12-24 13:16:12'),
	(108, 93, 0, 233, 65, '1', '1', '2015-12-24 19:16:37', '2015-12-24 13:16:37'),
	(109, 93, 0, 235, 66, '1', '1', '2015-12-24 19:20:02', '2015-12-24 13:20:02'),
	(110, 93, 0, 236, 67, '1', '1', '2015-12-24 19:21:00', '2015-12-24 13:21:00'),
	(111, 93, 0, 237, 68, '1', '1', '2015-12-24 19:21:37', '2015-12-24 13:21:37'),
	(112, 93, 0, 238, 69, '1', '1', '2015-12-24 19:22:01', '2015-12-24 13:22:01'),
	(113, 93, 0, 239, 70, '1', '1', '2015-12-24 19:22:29', '2015-12-24 13:22:29'),
	(114, 93, 0, 240, 71, '1', '1', '2015-12-24 19:22:54', '2015-12-24 13:22:54'),
	(115, 93, 0, 241, 72, '1', '1', '2015-12-24 19:23:14', '2015-12-24 13:23:14'),
	(116, 93, 0, 242, 73, '1', '1', '2015-12-24 19:28:44', '2015-12-24 13:28:44'),
	(117, 93, 0, 243, 74, '1', '1', '2015-12-24 19:29:09', '2015-12-24 13:29:09'),
	(118, 93, 0, 244, 75, '1', '1', '2015-12-24 19:29:31', '2015-12-24 13:29:31'),
	(119, 93, 0, 245, 76, '1', '1', '2015-12-24 19:29:50', '2015-12-24 13:29:50'),
	(120, 93, 0, 246, 77, '1', '1', '2015-12-24 19:30:12', '2015-12-24 13:30:12'),
	(121, 93, 0, 247, 78, '1', '1', '2015-12-24 19:30:29', '2015-12-24 13:30:29'),
	(122, 93, 0, 248, 79, '1', '1', '2015-12-24 19:30:53', '2015-12-24 13:30:53'),
	(123, 93, 0, 249, 80, '1', '1', '2015-12-24 19:31:13', '2015-12-24 13:31:13'),
	(124, 93, 0, 250, 81, '1', '1', '2015-12-24 19:31:35', '2015-12-24 13:31:35'),
	(125, 95, 0, 251, 82, '1', '1', '2015-12-24 19:32:17', '2015-12-24 13:32:17'),
	(126, 95, 0, 252, 83, '1', '1', '2015-12-24 19:32:43', '2015-12-24 13:32:43'),
	(127, 95, 0, 253, 84, '1', '1', '2015-12-24 19:33:04', '2015-12-24 13:33:04'),
	(128, 95, 0, 254, 85, '1', '1', '2015-12-24 19:33:30', '2015-12-24 13:33:30'),
	(129, 96, 0, 255, 86, '1', '1', '2016-01-09 16:42:17', '2015-12-24 13:34:11'),
	(130, 95, 0, 256, 87, '1', '1', '2015-12-24 19:34:35', '2015-12-24 13:34:35'),
	(131, 95, 0, 257, 88, '1', '1', '2015-12-24 19:34:52', '2015-12-24 13:34:52'),
	(132, 95, 0, 258, 89, '1', '1', '2015-12-24 19:35:16', '2015-12-24 13:35:16'),
	(133, 95, 0, 259, 90, '1', '1', '2015-12-24 19:35:42', '2015-12-24 13:35:42'),
	(134, 95, 0, 260, 91, '1', '1', '2015-12-24 19:36:08', '2015-12-24 13:36:08'),
	(135, 95, 0, 261, 92, '1', '1', '2015-12-24 19:36:29', '2015-12-24 13:36:29'),
	(136, 95, 0, 262, 93, '1', '1', '2015-12-24 19:36:51', '2015-12-24 13:36:51'),
	(137, 95, 0, 263, 94, '1', '1', '2015-12-24 19:37:12', '2015-12-24 13:37:12'),
	(138, 95, 0, 264, 95, '1', '1', '2015-12-24 19:37:31', '2015-12-24 13:37:31'),
	(139, 95, 0, 265, 96, '1', '1', '2015-12-24 19:37:50', '2015-12-24 13:37:50'),
	(140, 95, 0, 266, 97, '1', '1', '2015-12-24 19:38:19', '2015-12-24 13:38:19'),
	(141, 95, 0, 267, 98, '1', '1', '2015-12-24 19:38:35', '2015-12-24 13:38:35'),
	(142, 95, 0, 268, 99, '1', '1', '2015-12-24 19:38:55', '2015-12-24 13:38:55'),
	(143, 95, 0, 269, 100, '1', '1', '2015-12-24 19:39:14', '2015-12-24 13:39:14'),
	(144, 95, 0, 270, 101, '1', '1', '2015-12-24 19:39:30', '2015-12-24 13:39:30'),
	(145, 95, 0, 271, 102, '1', '1', '2015-12-24 19:39:48', '2015-12-24 13:39:48'),
	(146, 95, 0, 272, 103, '1', '1', '2015-12-24 19:40:07', '2015-12-24 13:40:07'),
	(147, 95, 0, 273, 104, '1', '1', '2015-12-24 19:40:25', '2015-12-24 13:40:25'),
	(148, 96, 0, 274, 105, '1', '1', '2015-12-24 19:49:30', '2015-12-24 13:49:30'),
	(149, 96, 0, 275, 106, '1', '1', '2015-12-24 19:49:51', '2015-12-24 13:49:51'),
	(150, 96, 0, 276, 107, '1', '1', '2015-12-24 19:50:14', '2015-12-24 13:50:14'),
	(151, 96, 0, 277, 108, '1', '1', '2015-12-24 19:54:24', '2015-12-24 13:54:24'),
	(152, 96, 0, 278, 109, '1', '1', '2015-12-24 19:54:47', '2015-12-24 13:54:47'),
	(153, 96, 0, 279, 110, '1', '1', '2015-12-24 19:55:13', '2015-12-24 13:55:13'),
	(154, 96, 0, 280, 111, '1', '1', '2015-12-24 19:55:37', '2015-12-24 13:55:37'),
	(155, 96, 0, 281, 112, '1', '1', '2015-12-24 19:56:00', '2015-12-24 13:56:00'),
	(156, 96, 0, 282, 113, '1', '1', '2015-12-24 19:56:40', '2015-12-24 13:56:40'),
	(157, 96, 0, 283, 114, '1', '1', '2015-12-24 19:57:12', '2015-12-24 13:57:12'),
	(158, 96, 0, 284, 115, '1', '1', '2015-12-24 19:58:11', '2015-12-24 13:58:11'),
	(159, 96, 0, 285, 116, '1', '1', '2015-12-24 19:58:35', '2015-12-24 13:58:35'),
	(160, 96, 0, 286, 117, '1', '1', '2015-12-24 19:59:07', '2015-12-24 13:59:07'),
	(161, 96, 0, 287, 118, '1', '1', '2015-12-24 19:59:28', '2015-12-24 13:59:28'),
	(162, 96, 0, 288, 119, '1', '1', '2015-12-24 20:00:00', '2015-12-24 14:00:00'),
	(163, 96, 0, 289, 120, '1', '1', '2015-12-24 20:00:32', '2015-12-24 14:00:32'),
	(164, 96, 0, 290, 121, '1', '1', '2015-12-24 20:01:01', '2015-12-24 14:01:01'),
	(165, 96, 0, 291, 122, '1', '1', '2015-12-24 20:01:30', '2015-12-24 14:01:30'),
	(166, 96, 0, 292, 123, '1', '1', '2015-12-24 20:02:01', '2015-12-24 14:02:01'),
	(167, 96, 0, 293, 124, '1', '1', '2015-12-24 20:02:25', '2015-12-24 14:02:25'),
	(168, 96, 0, 294, 125, '1', '1', '2015-12-24 20:02:48', '2015-12-24 14:02:48'),
	(169, 96, 0, 295, 126, '1', '1', '2015-12-24 20:03:12', '2015-12-24 14:03:12'),
	(170, 96, 0, 296, 127, '1', '1', '2015-12-24 20:03:32', '2015-12-24 14:03:32'),
	(171, 96, 0, 297, 128, '1', '1', '2015-12-24 20:04:01', '2015-12-24 14:04:01'),
	(172, 5, 0, 298, 129, '1', '1', '2015-12-24 20:05:12', '2015-12-24 14:05:12'),
	(173, 5, 0, 299, 130, '1', '1', '2015-12-24 20:05:47', '2015-12-24 14:05:47'),
	(174, 5, 0, 300, 131, '1', '1', '2015-12-24 20:06:15', '2015-12-24 14:06:15'),
	(175, 5, 0, 301, 132, '1', '1', '2015-12-24 20:06:44', '2015-12-24 14:06:44'),
	(176, 5, 0, 302, 133, '1', '1', '2015-12-24 20:07:12', '2015-12-24 14:07:12'),
	(177, 5, 0, 303, 134, '1', '1', '2015-12-24 20:08:14', '2015-12-24 14:08:14'),
	(178, 5, 0, 304, 135, '1', '1', '2015-12-24 20:08:36', '2015-12-24 14:08:36'),
	(179, 5, 0, 305, 136, '1', '1', '2015-12-24 20:08:54', '2015-12-24 14:08:54'),
	(180, 5, 0, 306, 137, '1', '1', '2015-12-24 20:09:15', '2015-12-24 14:09:15'),
	(181, 5, 0, 307, 138, '1', '1', '2015-12-24 20:09:37', '2015-12-24 14:09:37'),
	(182, 5, 0, 308, 139, '1', '1', '2015-12-24 20:10:07', '2015-12-24 14:10:07'),
	(183, 5, 0, 309, 140, '1', '1', '2015-12-24 20:10:32', '2015-12-24 14:10:32'),
	(184, 5, 0, 310, 141, '1', '1', '2015-12-24 20:10:55', '2015-12-24 14:10:55'),
	(185, 5, 0, 311, 142, '1', '1', '2015-12-24 20:11:13', '2015-12-24 14:11:13'),
	(186, 5, 0, 312, 143, '1', '1', '2015-12-24 20:11:31', '2015-12-24 14:11:31'),
	(187, 5, 0, 313, 144, '1', '1', '2015-12-24 20:11:57', '2015-12-24 14:11:57'),
	(188, 5, 0, 314, 145, '1', '1', '2015-12-24 20:12:23', '2015-12-24 14:12:23'),
	(189, 5, 0, 315, 146, '1', '1', '2015-12-24 20:12:51', '2015-12-24 14:12:51'),
	(190, 5, 0, 316, 147, '1', '1', '2015-12-24 20:13:12', '2015-12-24 14:13:12'),
	(191, 5, 0, 317, 148, '1', '1', '2015-12-24 20:13:46', '2015-12-24 14:13:46'),
	(192, 5, 0, 318, 149, '1', '1', '2015-12-24 20:14:06', '2015-12-24 14:14:06');
/*!40000 ALTER TABLE `ant_profesor` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_profesorsociedad
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

-- Volcando datos para la tabla cepreadm.ant_profesorsociedad: ~0 rows (aproximadamente)
DELETE FROM `ant_profesorsociedad`;
/*!40000 ALTER TABLE `ant_profesorsociedad` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_profesorsociedad` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_puntaje
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

-- Volcando datos para la tabla cepreadm.ant_puntaje: ~0 rows (aproximadamente)
DELETE FROM `ant_puntaje`;
/*!40000 ALTER TABLE `ant_puntaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_puntaje` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_rol
CREATE TABLE IF NOT EXISTS `ant_rol` (
  `ROL_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `ROL_Descripcion` varchar(150) DEFAULT NULL,
  `ROL_FlagEstado` char(1) DEFAULT '1',
  `ROL_FlagAcceso` char(1) DEFAULT '3' COMMENT '1:Total, 2:Por curso,3: Por profesor ',
  `ROL_FechaModificacion` datetime DEFAULT NULL,
  `ROL_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ROL_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.ant_rol: ~3 rows (aproximadamente)
DELETE FROM `ant_rol`;
/*!40000 ALTER TABLE `ant_rol` DISABLE KEYS */;
INSERT INTO `ant_rol` (`ROL_Codigo`, `ROL_Descripcion`, `ROL_FlagEstado`, `ROL_FlagAcceso`, `ROL_FechaModificacion`, `ROL_FechaRegistro`) VALUES
	(0, ':::Seleccione:::', '1', '1', NULL, '2015-08-05 16:08:09'),
	(4, 'Coordinador general', '1', '1', NULL, '2015-10-16 08:53:26'),
	(6, 'Coordinador de plana', '1', '2', NULL, '2015-12-18 21:32:25'),
	(7, 'Profesor', '1', '3', NULL, '2015-12-18 21:32:06');
/*!40000 ALTER TABLE `ant_rol` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_sector
CREATE TABLE IF NOT EXISTS `ant_sector` (
  `SECTORP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `SECTORC_Descripcion` varchar(150) DEFAULT NULL,
  `SECTORC_FechaModificacion` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SECTORC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`SECTORP_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_sector: ~6 rows (aproximadamente)
DELETE FROM `ant_sector`;
/*!40000 ALTER TABLE `ant_sector` DISABLE KEYS */;
INSERT INTO `ant_sector` (`SECTORP_Codigo`, `SECTORC_Descripcion`, `SECTORC_FechaModificacion`, `SECTORC_FechaRegistro`) VALUES
	(1, 'Educacion', '0000-00-00 00:00:00', '2015-11-16 11:32:23'),
	(2, 'Pesqueria', '0000-00-00 00:00:00', '2015-11-16 11:32:30'),
	(3, 'Mineria', '0000-00-00 00:00:00', '2015-11-16 11:32:36'),
	(4, 'Construccion', '0000-00-00 00:00:00', '2015-11-16 11:32:43'),
	(5, 'Metalmecanico', '0000-00-00 00:00:00', '2015-11-16 11:32:50'),
	(6, 'Electricidad', '0000-00-00 00:00:00', '2015-11-16 11:32:57');
/*!40000 ALTER TABLE `ant_sector` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_semana
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

-- Volcando datos para la tabla cepreadm.ant_semana: ~64 rows (aproximadamente)
DELETE FROM `ant_semana`;
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


-- Volcando estructura para tabla cepreadm.ant_sociedad
CREATE TABLE IF NOT EXISTS `ant_sociedad` (
  `SOCIEDP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `SOCIEDC_Nombre` varchar(50) NOT NULL,
  `SOCIEDC_Descripcion` varchar(150) NOT NULL,
  `SOCIEDC_FechaModificacion` datetime DEFAULT NULL,
  `SOCIEDC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`SOCIEDP_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_sociedad: ~2 rows (aproximadamente)
DELETE FROM `ant_sociedad`;
/*!40000 ALTER TABLE `ant_sociedad` DISABLE KEYS */;
INSERT INTO `ant_sociedad` (`SOCIEDP_Codigo`, `SOCIEDC_Nombre`, `SOCIEDC_Descripcion`, `SOCIEDC_FechaModificacion`, `SOCIEDC_FechaRegistro`) VALUES
	(1, 'IEE', 'Instituto de Ingeniero Electricos Electricisas', NULL, '2015-11-06 12:30:09'),
	(2, 'AEP', 'Asociacion Electrotecnica Peruana', NULL, '2015-11-06 12:30:26');
/*!40000 ALTER TABLE `ant_sociedad` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_subcurso
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

-- Volcando datos para la tabla cepreadm.ant_subcurso: ~6 rows (aproximadamente)
DELETE FROM `ant_subcurso`;
/*!40000 ALTER TABLE `ant_subcurso` DISABLE KEYS */;
INSERT INTO `ant_subcurso` (`SUBCURSOP_Codigo`, `PROD_Codigo`, `SUBCURSOC_Nombre`, `SUBCURSOC_FechaModificacion`, `SUBCURSOC_FechaRegistro`) VALUES
	(1, 98, 'Historia', '0000-00-00 00:00:00', '2016-01-09 09:51:54'),
	(2, 98, 'R.Verbal', '0000-00-00 00:00:00', '2016-01-09 09:53:38'),
	(3, 98, 'Historia', '0000-00-00 00:00:00', '2016-01-09 09:53:48'),
	(4, 98, 'Economia', '0000-00-00 00:00:00', '2016-01-09 09:54:05'),
	(5, 98, 'Lenguaje', '0000-00-00 00:00:00', '2016-01-09 09:54:16'),
	(6, 98, 'Literatura', '0000-00-00 00:00:00', '2016-01-09 09:54:25');
/*!40000 ALTER TABLE `ant_subcurso` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_tarea
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_tarea: ~3 rows (aproximadamente)
DELETE FROM `ant_tarea`;
/*!40000 ALTER TABLE `ant_tarea` DISABLE KEYS */;
INSERT INTO `ant_tarea` (`TAREAP_Codigo`, `USUA_Codigo`, `PROP_Codigo`, `CICLOP_Codigo`, `TIPOTAREAP_Codigo`, `TAREAC_Nombre`, `TAREAC_Descripcion`, `TAREAC_Numero`, `TAREAC_Fecha`, `TAREAC_FechaEntrega`, `TAREAC_FechaModificacion`, `TAREAC_FechaRegistro`) VALUES
	(4, 7, 108, 1, 1, 'asdf', 'asdfasf', 2, '2016-01-27', '2016-01-13', NULL, '2016-01-26 19:10:34'),
	(5, 7, 105, 1, 1, 'TAREA 3', 'asdfasdfasdf', 2, '2016-01-28', '2016-01-04', NULL, '2016-01-28 00:40:26'),
	(6, 7, 107, 1, 3, 'QWE', 'QWEQWE', 1, '2016-01-28', '2016-01-11', NULL, '2016-01-28 01:01:52');
/*!40000 ALTER TABLE `ant_tarea` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_tareadetalle
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_tareadetalle: ~4 rows (aproximadamente)
DELETE FROM `ant_tareadetalle`;
/*!40000 ALTER TABLE `ant_tareadetalle` DISABLE KEYS */;
INSERT INTO `ant_tareadetalle` (`TAREADETP_Codigo`, `TAREAP_Codigo`, `TIPCICLOP_Codigo`, `PROP_Codigo`, `PRODATRIBDET_Codigo`, `TAREADETC_Cantidad`, `TAREADETC_CantidadEntregada`, `TAREADETC_Situacion`, `TAREADETC_FechaEntrega`, `TAREADETC_FechaModificacion`, `TAREADETC_FechaRegistro`) VALUES
	(1, 4, 1, 104, 5, '2', NULL, '2', '2016-01-12', NULL, '2016-01-26 19:10:34'),
	(2, 4, 3, 104, 24, '5', NULL, '3', '2016-01-18', NULL, '2016-01-26 19:13:29'),
	(3, 5, 1, 109, 7, '21', NULL, '4', '2016-01-19', NULL, '2016-01-28 00:40:26'),
	(4, 6, 1, 105, 0, '1-50', NULL, '1', '0000-00-00', NULL, '2016-01-28 01:01:52');
/*!40000 ALTER TABLE `ant_tareadetalle` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_tareo
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_tareo: ~0 rows (aproximadamente)
DELETE FROM `ant_tareo`;
/*!40000 ALTER TABLE `ant_tareo` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_tareo` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_tema
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

-- Volcando datos para la tabla cepreadm.ant_tema: ~37 rows (aproximadamente)
DELETE FROM `ant_tema`;
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


-- Volcando estructura para tabla cepreadm.ant_tipoasistencia
CREATE TABLE IF NOT EXISTS `ant_tipoasistencia` (
  `TIPOASISP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `TIPOASISC_Nombre` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`TIPOASISP_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_tipoasistencia: ~2 rows (aproximadamente)
DELETE FROM `ant_tipoasistencia`;
/*!40000 ALTER TABLE `ant_tipoasistencia` DISABLE KEYS */;
INSERT INTO `ant_tipoasistencia` (`TIPOASISP_Codigo`, `TIPOASISC_Nombre`) VALUES
	(1, 'Tardanza'),
	(2, 'Reemplazo');
/*!40000 ALTER TABLE `ant_tipoasistencia` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_tipociclo
CREATE TABLE IF NOT EXISTS `ant_tipociclo` (
  `TIPOCICLOP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `TIPOCICLOC_Descripcion` varchar(100) DEFAULT NULL,
  `TIPOCICLOC_Comentario` varchar(100) DEFAULT NULL,
  `TIPOCICLOC_FechaRegistro` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`TIPOCICLOP_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_tipociclo: ~2 rows (aproximadamente)
DELETE FROM `ant_tipociclo`;
/*!40000 ALTER TABLE `ant_tipociclo` DISABLE KEYS */;
INSERT INTO `ant_tipociclo` (`TIPOCICLOP_Codigo`, `TIPOCICLOC_Descripcion`, `TIPOCICLOC_Comentario`, `TIPOCICLOC_FechaRegistro`) VALUES
	(1, 'Ciclo 1', 'Ciclo de inicio de año', '2015-08-10 18:14:14'),
	(2, 'Ciclo 2', 'Ciclo de fin de año', '2015-08-10 18:14:19');
/*!40000 ALTER TABLE `ant_tipociclo` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_tipodocumento
CREATE TABLE IF NOT EXISTS `ant_tipodocumento` (
  `TIPDOCP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `TIPDOCC_Descripcion` varchar(150) DEFAULT NULL,
  `TIPOCC_Inciales` varchar(150) DEFAULT NULL,
  `TIPOCC_FlagEstado` char(1) DEFAULT '1',
  `TIPOCC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`TIPDOCP_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.ant_tipodocumento: ~3 rows (aproximadamente)
DELETE FROM `ant_tipodocumento`;
/*!40000 ALTER TABLE `ant_tipodocumento` DISABLE KEYS */;
INSERT INTO `ant_tipodocumento` (`TIPDOCP_Codigo`, `TIPDOCC_Descripcion`, `TIPOCC_Inciales`, `TIPOCC_FlagEstado`, `TIPOCC_FechaRegistro`) VALUES
	(0, '::Seleccione::', '::Seleccione::', '1', '2014-10-06 04:19:27'),
	(1, 'Documento Nacional de Identidad', 'D.N.I.', '1', '2010-12-16 12:50:42'),
	(2, 'Carnet de Extranjeria', 'C.E.', '1', '2010-12-16 12:50:46');
/*!40000 ALTER TABLE `ant_tipodocumento` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_tipoestudio
CREATE TABLE IF NOT EXISTS `ant_tipoestudio` (
  `TIPP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `TIPC_Nombre` varchar(100) DEFAULT NULL,
  `TIPC_Descripcion` varchar(100) DEFAULT NULL,
  `TIPC_FlagEstado` char(1) NOT NULL DEFAULT '1',
  `TIPC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`TIPP_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_tipoestudio: ~7 rows (aproximadamente)
DELETE FROM `ant_tipoestudio`;
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


-- Volcando estructura para tabla cepreadm.ant_tipoestudiociclo
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

-- Volcando datos para la tabla cepreadm.ant_tipoestudiociclo: ~9 rows (aproximadamente)
DELETE FROM `ant_tipoestudiociclo`;
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


-- Volcando estructura para tabla cepreadm.ant_tipoproducto
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.ant_tipoproducto: ~3 rows (aproximadamente)
DELETE FROM `ant_tipoproducto`;
/*!40000 ALTER TABLE `ant_tipoproducto` DISABLE KEYS */;
INSERT INTO `ant_tipoproducto` (`TIPPROD_Codigo`, `CICLOP_Codigo`, `TIPPROD_Descripcion`, `TIPPROD_FlagEstado`, `TIPPROD_FechaModificacion`, `TIPPROD_FechaRegistro`) VALUES
	(0, 1, ':::SELECCIONE::', '1', NULL, '2014-10-06 19:37:56'),
	(1, 1, 'Matematicas', '1', NULL, '2011-01-04 04:31:10'),
	(4, 1, 'Letras', '1', NULL, '2015-10-16 09:23:18');
/*!40000 ALTER TABLE `ant_tipoproducto` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_tipotarea
CREATE TABLE IF NOT EXISTS `ant_tipotarea` (
  `TIPOTAREAP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `TIPOTAREAC_Nombre` varchar(100) DEFAULT NULL,
  `TIPOTAREAC_FechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`TIPOTAREAP_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_tipotarea: ~3 rows (aproximadamente)
DELETE FROM `ant_tipotarea`;
/*!40000 ALTER TABLE `ant_tipotarea` DISABLE KEYS */;
INSERT INTO `ant_tipotarea` (`TIPOTAREAP_Codigo`, `TIPOTAREAC_Nombre`, `TIPOTAREAC_FechaRegistro`) VALUES
	(1, 'Problemas para PC', '2015-09-29 14:17:08'),
	(2, 'Problemas para Seminario', '2015-09-29 14:17:05'),
	(3, 'Revisión de probemas', '2015-09-29 14:17:07');
/*!40000 ALTER TABLE `ant_tipotarea` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_trabajo
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

-- Volcando datos para la tabla cepreadm.ant_trabajo: ~0 rows (aproximadamente)
DELETE FROM `ant_trabajo`;
/*!40000 ALTER TABLE `ant_trabajo` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_trabajo` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_turno
CREATE TABLE IF NOT EXISTS `ant_turno` (
  `TURNOP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `TURNOC_Descripcion` varchar(250) DEFAULT NULL,
  `TURNOC_Estado` char(1) NOT NULL DEFAULT '1' COMMENT '1:Activo,2:Inactivo',
  `TURNOC_FechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`TURNOP_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_turno: ~3 rows (aproximadamente)
DELETE FROM `ant_turno`;
/*!40000 ALTER TABLE `ant_turno` DISABLE KEYS */;
INSERT INTO `ant_turno` (`TURNOP_Codigo`, `TURNOC_Descripcion`, `TURNOC_Estado`, `TURNOC_FechaRegistro`) VALUES
	(1, 'Mañana', '1', '2015-12-25 16:37:54'),
	(2, 'Tarde', '1', '2015-12-25 16:38:00'),
	(3, 'Noche', '2', '2015-12-25 16:38:05');
/*!40000 ALTER TABLE `ant_turno` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_universidad
CREATE TABLE IF NOT EXISTS `ant_universidad` (
  `UNIVP_Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `UNIVC_Nombre` varchar(150) NOT NULL,
  `UNIVC_Iniciales` varchar(50) DEFAULT NULL,
  `UNIVC_FechaModificacion` datetime DEFAULT NULL,
  `UNIVC_FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`UNIVP_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_universidad: ~18 rows (aproximadamente)
DELETE FROM `ant_universidad`;
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


-- Volcando estructura para tabla cepreadm.ant_usuario
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
  KEY `FK_usuario_persona` (`PERSP_Codigo`),
  KEY `FK_usuario_rol` (`ROL_Codigo`),
  CONSTRAINT `FK_usuario_persona` FOREIGN KEY (`PERSP_Codigo`) REFERENCES `ant_persona` (`PERSP_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_usuario_rol` FOREIGN KEY (`ROL_Codigo`) REFERENCES `ant_rol` (`ROL_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.ant_usuario: ~1 rows (aproximadamente)
DELETE FROM `ant_usuario`;
/*!40000 ALTER TABLE `ant_usuario` DISABLE KEYS */;
INSERT INTO `ant_usuario` (`USUA_Codigo`, `PERSP_Codigo`, `ROL_Codigo`, `USUA_usuario`, `USUA_Password`, `USUA_FlagEstado`, `USUA_FechaModificacion`, `USUA_FechaRegistro`) VALUES
	(7, 1, 4, 'demo', 'e10adc3949ba59abbe56e057f20f883e', '1', '2015-08-05 12:09:17', '2015-08-04 00:25:58');
/*!40000 ALTER TABLE `ant_usuario` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_vigilancia
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_vigilancia: ~0 rows (aproximadamente)
DELETE FROM `ant_vigilancia`;
/*!40000 ALTER TABLE `ant_vigilancia` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_vigilancia` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.ant_vigilanciadetalle
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.ant_vigilanciadetalle: ~0 rows (aproximadamente)
DELETE FROM `ant_vigilanciadetalle`;
/*!40000 ALTER TABLE `ant_vigilanciadetalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `ant_vigilanciadetalle` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.block
CREATE TABLE IF NOT EXISTS `block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `path` varchar(255) NOT NULL,
  `controller` varchar(100) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.block: 0 rows
DELETE FROM `block`;
/*!40000 ALTER TABLE `block` DISABLE KEYS */;
/*!40000 ALTER TABLE `block` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.career
CREATE TABLE IF NOT EXISTS `career` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.career: 0 rows
DELETE FROM `career`;
/*!40000 ALTER TABLE `career` DISABLE KEYS */;
/*!40000 ALTER TABLE `career` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.chat
CREATE TABLE IF NOT EXISTS `chat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user` int(11) DEFAULT NULL,
  `to_user` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `recd` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_chat_to_user` (`to_user`),
  KEY `idx_chat_from_user` (`from_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.chat: 0 rows
DELETE FROM `chat`;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.class
CREATE TABLE IF NOT EXISTS `class` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(40) DEFAULT '',
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.class: 0 rows
DELETE FROM `class`;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
/*!40000 ALTER TABLE `class` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.class_user
CREATE TABLE IF NOT EXISTS `class_user` (
  `class_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`class_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.class_user: 0 rows
DELETE FROM `class_user`;
/*!40000 ALTER TABLE `class_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_user` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.course
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
) ENGINE=MyISAM AUTO_INCREMENT=236 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.course: 82 rows
DELETE FROM `course`;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` (`id`, `APERTUP_Codigo`, `CURSOCIP_Codigo`, `flgAsignado`, `code`, `directory`, `db_name`, `course_language`, `title`, `description`, `category_code`, `visibility`, `show_score`, `tutor_name`, `visual_code`, `department_name`, `department_url`, `disk_quota`, `last_visit`, `last_edit`, `creation_date`, `expiration_date`, `target_course_code`, `subscribe`, `unsubscribe`, `registration_code`, `legal`, `activate_legal`, `course_type_id`) VALUES
	(1, 0, 0, 0, 'PHPPROGRAMACIONWEB', 'PHPPROGRAMACIONWEB', NULL, 'spanish', 'Diseño y programación web con PHP', 'Descripción del curso', '', 3, 1, '', 'PHPPROGRAMACIONWEB', '', 'http://', 100034150, '2015-12-19 14:32:02', '2015-09-16 21:05:26', '2015-09-16 21:05:26', '2016-09-15 21:05:26', NULL, 1, 0, '', '', 0, 1),
	(4, 0, 0, 0, 'SEMINARIODELINUX', 'SEMINARIODELINUX', NULL, 'spanish', 'Seminario de Linux', 'Descripción del curso', '', 3, 1, '', 'SEMINARIODELINUX', '', 'http://', 100034150, '2015-12-19 14:31:49', '2015-10-14 11:43:27', '2015-10-14 11:43:27', '2016-10-13 11:43:27', NULL, 1, 0, '', '', 0, 1),
	(3, 0, 0, 0, 'GEOMETRIACEPREUNID103', 'GEOMETRIACEPREUNID103', NULL, 'spanish', 'Geometria CEPREUNI D103', 'Descripción del curso', '', 1, 1, '', 'GEOMETRIACEPREUNID103', '', 'http://', 209715200, '2015-12-19 14:32:29', '2015-09-18 06:47:16', '2015-09-18 06:47:16', '2016-09-17 06:47:16', NULL, 0, 0, '', '', 0, 1),
	(5, 0, 0, 0, 'GEOMETRIACEPREUNIA101', 'GEOMETRIACEPREUNIA101', NULL, 'spanish', 'Geometria CEPREUNI A101', 'Descripción del curso', '', 1, 1, '', 'GEOMETRIACEPREUNIA101', '', 'http://', 100034150, '2015-12-19 23:00:39', '2015-10-25 06:21:24', '2015-10-25 06:21:24', '2016-10-24 06:21:24', NULL, 1, 0, '', '', 0, 1),
	(174, 56, 8, 0, '161BASIFISICAD201M', '161BASIFISICAD201M', NULL, 'spanish', 'Fisica D201 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIFISICAD201M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:45:45', NULL, NULL, 1, 0, '', '', 0, 1),
	(173, 56, 7, 0, '161BASITRIGOND201M', '161BASITRIGOND201M', NULL, 'spanish', 'Trigonometria D201 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASITRIGOND201M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:45:45', NULL, NULL, 1, 0, '', '', 0, 1),
	(233, 81, 5, 0, '161PREALGEBRB101T', '161PREALGEBRB101T', NULL, 'spanish', 'Algebra B101 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREALGEBRB101T', NULL, 'http://', 100034150, NULL, NULL, '2016-01-22 07:32:22', NULL, NULL, 1, 0, '', '', 0, 1),
	(171, 43, 14, 0, '161BASIQUIMICD104M', '161BASIQUIMICD104M', NULL, 'spanish', 'Quimica D104 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIQUIMICD104M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:43:35', NULL, NULL, 1, 0, '', '', 0, 1),
	(170, 43, 5, 0, '161BASIALGEBRD104M', '161BASIALGEBRD104M', NULL, 'spanish', 'Algebra D104 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIALGEBRD104M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:43:35', NULL, NULL, 1, 0, '', '', 0, 1),
	(169, 43, 6, 0, '161BASIARITMED104M', '161BASIARITMED104M', NULL, 'spanish', 'Aritmetica D104 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIARITMED104M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:43:35', NULL, NULL, 1, 0, '', '', 0, 1),
	(168, 43, 4, 0, '161BASIGEOMETD104M', '161BASIGEOMETD104M', NULL, 'spanish', 'Geometria D104 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIGEOMETD104M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:43:35', NULL, NULL, 1, 0, '', '', 0, 1),
	(167, 43, 8, 0, '161BASIFISICAD104M', '161BASIFISICAD104M', NULL, 'spanish', 'Fisica D104 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIFISICAD104M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:43:35', NULL, NULL, 1, 0, '', '', 0, 1),
	(166, 43, 7, 0, '161BASITRIGOND104M', '161BASITRIGOND104M', NULL, 'spanish', 'Trigonometria D104 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASITRIGOND104M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:43:35', NULL, NULL, 1, 0, '', '', 0, 1),
	(229, 81, 7, 0, '161PRETRIGONB101T', '161PRETRIGONB101T', NULL, 'spanish', 'Trigonometria B101 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PRETRIGONB101T', NULL, 'http://', 100034150, NULL, NULL, '2016-01-22 07:32:22', NULL, NULL, 1, 0, '', '', 0, 1),
	(163, 37, 5, 0, '161BASIALGEBRD103M', '161BASIALGEBRD103M', NULL, 'spanish', 'Algebra D103 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIALGEBRD103M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:43:01', NULL, NULL, 1, 0, '', '', 0, 1),
	(164, 37, 14, 0, '161BASIQUIMICD103M', '161BASIQUIMICD103M', NULL, 'spanish', 'Quimica D103 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIQUIMICD103M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:43:01', NULL, NULL, 1, 0, '', '', 0, 1),
	(162, 37, 6, 0, '161BASIARITMED103M', '161BASIARITMED103M', NULL, 'spanish', 'Aritmetica D103 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIARITMED103M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:43:01', NULL, NULL, 1, 0, '', '', 0, 1),
	(161, 37, 4, 0, '161BASIGEOMETD103M', '161BASIGEOMETD103M', NULL, 'spanish', 'Geometria D103 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIGEOMETD103M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:43:01', NULL, NULL, 1, 0, '', '', 0, 1),
	(160, 37, 8, 0, '161BASIFISICAD103M', '161BASIFISICAD103M', NULL, 'spanish', 'Fisica D103 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIFISICAD103M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:43:01', NULL, NULL, 1, 0, '', '', 0, 1),
	(232, 81, 6, 0, '161PREARITMEB101T', '161PREARITMEB101T', NULL, 'spanish', 'Aritmetica B101 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREARITMEB101T', NULL, 'http://', 100034150, NULL, NULL, '2016-01-22 07:32:22', NULL, NULL, 1, 0, '', '', 0, 1),
	(159, 37, 7, 0, '161BASITRIGOND103M', '161BASITRIGOND103M', NULL, 'spanish', 'Trigonometria D103 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASITRIGOND103M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:43:01', NULL, NULL, 1, 0, '', '', 0, 1),
	(157, 36, 14, 0, '161BASIQUIMICD102M', '161BASIQUIMICD102M', NULL, 'spanish', 'Quimica D102 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIQUIMICD102M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:42:46', NULL, NULL, 1, 0, '', '', 0, 1),
	(155, 36, 6, 0, '161BASIARITMED102M', '161BASIARITMED102M', NULL, 'spanish', 'Aritmetica D102 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIARITMED102M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:42:46', NULL, NULL, 1, 0, '', '', 0, 1),
	(156, 36, 5, 1, '161BASIALGEBRD102M', '161BASIALGEBRD102M', NULL, 'spanish', 'Algebra D102 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIALGEBRD102M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:42:46', NULL, NULL, 1, 0, '', '', 0, 1),
	(154, 36, 4, 0, '161BASIGEOMETD102M', '161BASIGEOMETD102M', NULL, 'spanish', 'Geometria D102 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIGEOMETD102M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:42:46', NULL, NULL, 1, 0, '', '', 0, 1),
	(152, 36, 7, 0, '161BASITRIGOND102M', '161BASITRIGOND102M', NULL, 'spanish', 'Trigonometria D102 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASITRIGOND102M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:42:46', NULL, NULL, 1, 0, '', '', 0, 1),
	(153, 36, 8, 0, '161BASIFISICAD102M', '161BASIFISICAD102M', NULL, 'spanish', 'Fisica D102 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIFISICAD102M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:42:46', NULL, NULL, 1, 0, '', '', 0, 1),
	(230, 81, 8, 0, '161PREFISICAB101T', '161PREFISICAB101T', NULL, 'spanish', 'Fisica B101 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREFISICAB101T', NULL, 'http://', 100034150, NULL, NULL, '2016-01-22 07:32:22', NULL, NULL, 1, 0, '', '', 0, 1),
	(150, 35, 14, 0, '161BASIQUIMICD101M', '161BASIQUIMICD101M', NULL, 'spanish', 'Quimica D101 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIQUIMICD101M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:42:30', NULL, NULL, 1, 0, '', '', 0, 1),
	(149, 35, 5, 1, '161BASIALGEBRD101M', '161BASIALGEBRD101M', NULL, 'spanish', 'Algebra D101 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIALGEBRD101M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:42:30', NULL, NULL, 1, 0, '', '', 0, 1),
	(148, 35, 6, 1, '161BASIARITMED101M', '161BASIARITMED101M', NULL, 'spanish', 'Aritmetica D101 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIARITMED101M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:42:30', NULL, NULL, 1, 0, '', '', 0, 1),
	(146, 35, 8, 0, '161BASIFISICAD101M', '161BASIFISICAD101M', NULL, 'spanish', 'Fisica D101 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIFISICAD101M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:42:30', NULL, NULL, 1, 0, '', '', 0, 1),
	(147, 35, 4, 1, '161BASIGEOMETD101M', '161BASIGEOMETD101M', NULL, 'spanish', 'Geometria D101 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIGEOMETD101M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:42:30', NULL, NULL, 1, 0, '', '', 0, 1),
	(215, 62, 7, 0, '161BASITRIGONA103M', '161BASITRIGONA103M', NULL, 'spanish', 'Trigonometria A103 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASITRIGONA103M', NULL, 'http://', 100034150, NULL, NULL, '2016-01-09 04:48:47', NULL, NULL, 1, 0, '', '', 0, 1),
	(57, 0, 0, 0, 'NUEVOCUR1', 'NUEVOCUR1', NULL, 'spanish', 'Nuevo curso', 'Descripción del curso', '', 2, 1, '', 'NUEVOCUR1', 'uni', '', 100034150, '2015-12-23 22:32:33', '2015-12-22 00:30:39', '2015-12-22 00:30:39', '2016-12-21 00:30:39', NULL, 1, 0, '', '', 0, 1),
	(175, 56, 4, 0, '161BASIGEOMETD201M', '161BASIGEOMETD201M', NULL, 'spanish', 'Geometria D201 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIGEOMETD201M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:45:45', NULL, NULL, 1, 0, '', '', 0, 1),
	(176, 56, 6, 0, '161BASIARITMED201M', '161BASIARITMED201M', NULL, 'spanish', 'Aritmetica D201 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIARITMED201M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:45:45', NULL, NULL, 1, 0, '', '', 0, 1),
	(177, 56, 5, 0, '161BASIALGEBRD201M', '161BASIALGEBRD201M', NULL, 'spanish', 'Algebra D201 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIALGEBRD201M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:45:45', NULL, NULL, 1, 0, '', '', 0, 1),
	(178, 56, 14, 0, '161BASIQUIMICD201M', '161BASIQUIMICD201M', NULL, 'spanish', 'Quimica D201 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIQUIMICD201M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:45:45', NULL, NULL, 1, 0, '', '', 0, 1),
	(234, 81, 14, 0, '161PREQUIMICB101T', '161PREQUIMICB101T', NULL, 'spanish', 'Quimica B101 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREQUIMICB101T', NULL, 'http://', 100034150, NULL, NULL, '2016-01-22 07:32:22', NULL, NULL, 1, 0, '', '', 0, 1),
	(180, 57, 7, 0, '161BASITRIGOND202M', '161BASITRIGOND202M', NULL, 'spanish', 'Trigonometria D202 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASITRIGOND202M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:46:33', NULL, NULL, 1, 0, '', '', 0, 1),
	(181, 57, 8, 0, '161BASIFISICAD202M', '161BASIFISICAD202M', NULL, 'spanish', 'Fisica D202 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIFISICAD202M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:46:33', NULL, NULL, 1, 0, '', '', 0, 1),
	(182, 57, 4, 0, '161BASIGEOMETD202M', '161BASIGEOMETD202M', NULL, 'spanish', 'Geometria D202 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIGEOMETD202M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:46:33', NULL, NULL, 1, 0, '', '', 0, 1),
	(183, 57, 6, 0, '161BASIARITMED202M', '161BASIARITMED202M', NULL, 'spanish', 'Aritmetica D202 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIARITMED202M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:46:33', NULL, NULL, 1, 0, '', '', 0, 1),
	(184, 57, 5, 1, '161BASIALGEBRD202M', '161BASIALGEBRD202M', NULL, 'spanish', 'Algebra D202 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIALGEBRD202M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:46:33', NULL, NULL, 1, 0, '', '', 0, 1),
	(185, 57, 14, 0, '161BASIQUIMICD202M', '161BASIQUIMICD202M', NULL, 'spanish', 'Quimica D202 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIQUIMICD202M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:46:33', NULL, NULL, 1, 0, '', '', 0, 1),
	(235, 81, 13, 0, '161PREHUMANIB101T', '161PREHUMANIB101T', NULL, 'spanish', 'Humanidades B101 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREHUMANIB101T', NULL, 'http://', 100034150, NULL, NULL, '2016-01-22 07:32:22', NULL, NULL, 1, 0, '', '', 0, 1),
	(187, 58, 7, 0, '161BASITRIGOND203M', '161BASITRIGOND203M', NULL, 'spanish', 'Trigonometria D203 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASITRIGOND203M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:46:47', NULL, NULL, 1, 0, '', '', 0, 1),
	(188, 58, 8, 0, '161BASIFISICAD203M', '161BASIFISICAD203M', NULL, 'spanish', 'Fisica D203 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIFISICAD203M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:46:47', NULL, NULL, 1, 0, '', '', 0, 1),
	(189, 58, 4, 0, '161BASIGEOMETD203M', '161BASIGEOMETD203M', NULL, 'spanish', 'Geometria D203 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIGEOMETD203M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:46:47', NULL, NULL, 1, 0, '', '', 0, 1),
	(190, 58, 6, 0, '161BASIARITMED203M', '161BASIARITMED203M', NULL, 'spanish', 'Aritmetica D203 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIARITMED203M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:46:47', NULL, NULL, 1, 0, '', '', 0, 1),
	(191, 58, 5, 1, '161BASIALGEBRD203M', '161BASIALGEBRD203M', NULL, 'spanish', 'Algebra D203 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIALGEBRD203M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:46:47', NULL, NULL, 1, 0, '', '', 0, 1),
	(192, 58, 14, 0, '161BASIQUIMICD203M', '161BASIQUIMICD203M', NULL, 'spanish', 'Quimica D203 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIQUIMICD203M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:46:47', NULL, NULL, 1, 0, '', '', 0, 1),
	(194, 59, 7, 0, '161BASITRIGOND204M', '161BASITRIGOND204M', NULL, 'spanish', 'Trigonometria D204 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASITRIGOND204M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:47:00', NULL, NULL, 1, 0, '', '', 0, 1),
	(195, 59, 8, 0, '161BASIFISICAD204M', '161BASIFISICAD204M', NULL, 'spanish', 'Fisica D204 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIFISICAD204M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:47:00', NULL, NULL, 1, 0, '', '', 0, 1),
	(196, 59, 4, 0, '161BASIGEOMETD204M', '161BASIGEOMETD204M', NULL, 'spanish', 'Geometria D204 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIGEOMETD204M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:47:00', NULL, NULL, 1, 0, '', '', 0, 1),
	(197, 59, 6, 0, '161BASIARITMED204M', '161BASIARITMED204M', NULL, 'spanish', 'Aritmetica D204 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIARITMED204M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:47:00', NULL, NULL, 1, 0, '', '', 0, 1),
	(198, 59, 5, 1, '161BASIALGEBRD204M', '161BASIALGEBRD204M', NULL, 'spanish', 'Algebra D204 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIALGEBRD204M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:47:00', NULL, NULL, 1, 0, '', '', 0, 1),
	(199, 59, 14, 0, '161BASIQUIMICD204M', '161BASIQUIMICD204M', NULL, 'spanish', 'Quimica D204 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIQUIMICD204M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:47:00', NULL, NULL, 1, 0, '', '', 0, 1),
	(201, 60, 7, 0, '161BASITRIGOND205M', '161BASITRIGOND205M', NULL, 'spanish', 'Trigonometria D205 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASITRIGOND205M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:47:18', NULL, NULL, 1, 0, '', '', 0, 1),
	(202, 60, 8, 0, '161BASIFISICAD205M', '161BASIFISICAD205M', NULL, 'spanish', 'Fisica D205 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIFISICAD205M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:47:18', NULL, NULL, 1, 0, '', '', 0, 1),
	(203, 60, 4, 0, '161BASIGEOMETD205M', '161BASIGEOMETD205M', NULL, 'spanish', 'Geometria D205 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIGEOMETD205M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:47:18', NULL, NULL, 1, 0, '', '', 0, 1),
	(204, 60, 6, 1, '161BASIARITMED205M', '161BASIARITMED205M', NULL, 'spanish', 'Aritmetica D205 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIARITMED205M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:47:18', NULL, NULL, 1, 0, '', '', 0, 1),
	(205, 60, 5, 0, '161BASIALGEBRD205M', '161BASIALGEBRD205M', NULL, 'spanish', 'Algebra D205 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIALGEBRD205M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:47:18', NULL, NULL, 1, 0, '', '', 0, 1),
	(206, 60, 14, 0, '161BASIQUIMICD205M', '161BASIQUIMICD205M', NULL, 'spanish', 'Quimica D205 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIQUIMICD205M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:47:18', NULL, NULL, 1, 0, '', '', 0, 1),
	(208, 61, 7, 0, '161BASITRIGOND206M', '161BASITRIGOND206M', NULL, 'spanish', 'Trigonometria D206 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASITRIGOND206M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:47:37', NULL, NULL, 1, 0, '', '', 0, 1),
	(209, 61, 8, 0, '161BASIFISICAD206M', '161BASIFISICAD206M', NULL, 'spanish', 'Fisica D206 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIFISICAD206M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:47:37', NULL, NULL, 1, 0, '', '', 0, 1),
	(210, 61, 4, 0, '161BASIGEOMETD206M', '161BASIGEOMETD206M', NULL, 'spanish', 'Geometria D206 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIGEOMETD206M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:47:37', NULL, NULL, 1, 0, '', '', 0, 1),
	(211, 61, 6, 0, '161BASIARITMED206M', '161BASIARITMED206M', NULL, 'spanish', 'Aritmetica D206 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIARITMED206M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:47:37', NULL, NULL, 1, 0, '', '', 0, 1),
	(212, 61, 5, 1, '161BASIALGEBRD206M', '161BASIALGEBRD206M', NULL, 'spanish', 'Algebra D206 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIALGEBRD206M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:47:37', NULL, NULL, 1, 0, '', '', 0, 1),
	(213, 61, 14, 0, '161BASIQUIMICD206M', '161BASIQUIMICD206M', NULL, 'spanish', 'Quimica D206 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIQUIMICD206M', NULL, 'http://', 100034150, NULL, NULL, '2015-12-24 07:47:37', NULL, NULL, 1, 0, '', '', 0, 1),
	(216, 62, 8, 0, '161BASIFISICAA103M', '161BASIFISICAA103M', NULL, 'spanish', 'Fisica A103 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIFISICAA103M', NULL, 'http://', 100034150, NULL, NULL, '2016-01-09 04:48:47', NULL, NULL, 1, 0, '', '', 0, 1),
	(217, 62, 4, 0, '161BASIGEOMETA103M', '161BASIGEOMETA103M', NULL, 'spanish', 'Geometria A103 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIGEOMETA103M', NULL, 'http://', 100034150, NULL, NULL, '2016-01-09 04:48:47', NULL, NULL, 1, 0, '', '', 0, 1),
	(218, 62, 6, 0, '161BASIARITMEA103M', '161BASIARITMEA103M', NULL, 'spanish', 'Aritmetica A103 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIARITMEA103M', NULL, 'http://', 100034150, NULL, NULL, '2016-01-09 04:48:47', NULL, NULL, 1, 0, '', '', 0, 1),
	(219, 62, 5, 0, '161BASIALGEBRA103M', '161BASIALGEBRA103M', NULL, 'spanish', 'Algebra A103 Basico-MaÃ±ana', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIALGEBRA103M', NULL, 'http://', 100034150, NULL, NULL, '2016-01-09 04:48:47', NULL, NULL, 1, 0, '', '', 0, 1),
	(222, 65, 7, 0, '161BASITRIGONA103T', '161BASITRIGONA103T', NULL, 'spanish', 'Trigonometria A103 Basico-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASITRIGONA103T', NULL, 'http://', 100034150, NULL, NULL, '2016-01-22 02:08:54', NULL, NULL, 1, 0, '', '', 0, 1),
	(223, 65, 8, 0, '161BASIFISICAA103T', '161BASIFISICAA103T', NULL, 'spanish', 'Fisica A103 Basico-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIFISICAA103T', NULL, 'http://', 100034150, NULL, NULL, '2016-01-22 02:08:54', NULL, NULL, 1, 0, '', '', 0, 1),
	(224, 65, 4, 0, '161BASIGEOMETA103T', '161BASIGEOMETA103T', NULL, 'spanish', 'Geometria A103 Basico-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIGEOMETA103T', NULL, 'http://', 100034150, NULL, NULL, '2016-01-22 02:08:54', NULL, NULL, 1, 0, '', '', 0, 1),
	(225, 65, 6, 0, '161BASIARITMEA103T', '161BASIARITMEA103T', NULL, 'spanish', 'Aritmetica A103 Basico-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIARITMEA103T', NULL, 'http://', 100034150, NULL, NULL, '2016-01-22 02:08:54', NULL, NULL, 1, 0, '', '', 0, 1),
	(226, 65, 5, 0, '161BASIALGEBRA103T', '161BASIALGEBRA103T', NULL, 'spanish', 'Algebra A103 Basico-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIALGEBRA103T', NULL, 'http://', 100034150, NULL, NULL, '2016-01-22 02:08:54', NULL, NULL, 1, 0, '', '', 0, 1),
	(227, 65, 14, 0, '161BASIQUIMICA103T', '161BASIQUIMICA103T', NULL, 'spanish', 'Quimica A103 Basico-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161BASIQUIMICA103T', NULL, 'http://', 100034150, NULL, NULL, '2016-01-22 02:08:54', NULL, NULL, 1, 0, '', '', 0, 1),
	(231, 81, 4, 0, '161PREGEOMETB101T', '161PREGEOMETB101T', NULL, 'spanish', 'Geometria B101 Pre-Tarde', 'DescripciÃ³n del curso', NULL, 1, 1, NULL, '161PREGEOMETB101T', NULL, 'http://', 100034150, NULL, NULL, '2016-01-22 07:32:22', NULL, NULL, 1, 0, '', '', 0, 1);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.course_category
CREATE TABLE IF NOT EXISTS `course_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `code` varchar(40) NOT NULL DEFAULT '',
  `parent_id` varchar(40) DEFAULT NULL,
  `tree_pos` int(10) unsigned DEFAULT NULL,
  `children_count` smallint(6) DEFAULT NULL,
  `auth_course_child` enum('TRUE','FALSE') DEFAULT 'TRUE',
  `auth_cat_child` enum('TRUE','FALSE') DEFAULT 'TRUE',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `parent_id` (`parent_id`),
  KEY `tree_pos` (`tree_pos`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.course_category: 3 rows
DELETE FROM `course_category`;
/*!40000 ALTER TABLE `course_category` DISABLE KEYS */;
INSERT INTO `course_category` (`id`, `name`, `code`, `parent_id`, `tree_pos`, `children_count`, `auth_course_child`, `auth_cat_child`) VALUES
	(1, 'Language skills', 'LANG', NULL, 1, 0, 'TRUE', 'TRUE'),
	(2, 'PC Skills', 'PC', NULL, 2, 0, 'TRUE', 'TRUE'),
	(3, 'Projects', 'PROJ', NULL, 3, 0, 'TRUE', 'TRUE');
/*!40000 ALTER TABLE `course_category` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.course_field
CREATE TABLE IF NOT EXISTS `course_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_type` int(11) NOT NULL DEFAULT '1',
  `field_variable` varchar(64) NOT NULL,
  `field_display_text` varchar(64) DEFAULT NULL,
  `field_default_value` text,
  `field_order` int(11) DEFAULT NULL,
  `field_visible` tinyint(4) DEFAULT '0',
  `field_changeable` tinyint(4) DEFAULT '0',
  `field_filter` tinyint(4) DEFAULT '0',
  `tms` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.course_field: 1 rows
DELETE FROM `course_field`;
/*!40000 ALTER TABLE `course_field` DISABLE KEYS */;
INSERT INTO `course_field` (`id`, `field_type`, `field_variable`, `field_display_text`, `field_default_value`, `field_order`, `field_visible`, `field_changeable`, `field_filter`, `tms`) VALUES
	(1, 10, 'special_course', 'Special course', 'Yes', NULL, 1, 1, 0, '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `course_field` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.course_field_values
CREATE TABLE IF NOT EXISTS `course_field_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_code` varchar(40) NOT NULL,
  `field_id` int(11) NOT NULL,
  `field_value` text,
  `tms` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.course_field_values: 4 rows
DELETE FROM `course_field_values`;
/*!40000 ALTER TABLE `course_field_values` DISABLE KEYS */;
INSERT INTO `course_field_values` (`id`, `course_code`, `field_id`, `field_value`, `tms`) VALUES
	(1, 'GEOMETRIACEPREUNID103', 1, '0', '2015-09-21 21:30:05'),
	(2, 'PHPPROGRAMACIONWEB', 1, '0', '2015-09-21 21:31:11'),
	(3, 'SEMINARIODELINUX', 1, '0', '2015-10-14 11:46:42'),
	(4, 'GEOMETRIACEPREUNIA101', 1, '0', '2015-12-19 09:23:34');
/*!40000 ALTER TABLE `course_field_values` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.course_module
CREATE TABLE IF NOT EXISTS `course_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `row` int(10) unsigned NOT NULL DEFAULT '0',
  `column` int(10) unsigned NOT NULL DEFAULT '0',
  `position` varchar(20) NOT NULL DEFAULT 'basic',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.course_module: 30 rows
DELETE FROM `course_module`;
/*!40000 ALTER TABLE `course_module` DISABLE KEYS */;
INSERT INTO `course_module` (`id`, `name`, `link`, `image`, `row`, `column`, `position`) VALUES
	(1, 'calendar_event', 'calendar/agenda.php', 'agenda.gif', 1, 1, 'basic'),
	(2, 'link', 'link/link.php', 'links.gif', 4, 1, 'basic'),
	(3, 'document', 'document/document.php', 'documents.gif', 3, 1, 'basic'),
	(4, 'student_publication', 'work/work.php', 'works.gif', 3, 2, 'basic'),
	(5, 'announcement', 'announcements/announcements.php', 'valves.gif', 2, 1, 'basic'),
	(6, 'user', 'user/user.php', 'members.gif', 2, 3, 'basic'),
	(7, 'forum', 'forum/index.php', 'forum.gif', 1, 2, 'basic'),
	(8, 'quiz', 'exercice/exercice.php', 'quiz.gif', 2, 2, 'basic'),
	(9, 'group', 'group/group.php', 'group.gif', 3, 3, 'basic'),
	(10, 'course_description', 'course_description/', 'info.gif', 1, 3, 'basic'),
	(11, 'chat', 'chat/chat.php', 'chat.gif', 0, 0, 'external'),
	(12, 'dropbox', 'dropbox/index.php', 'dropbox.gif', 4, 2, 'basic'),
	(13, 'tracking', 'tracking/courseLog.php', 'statistics.gif', 1, 3, 'courseadmin'),
	(14, 'homepage_link', 'link/link.php?action=addlink', 'npage.gif', 1, 1, 'courseadmin'),
	(15, 'course_setting', 'course_info/infocours.php', 'reference.gif', 1, 1, 'courseadmin'),
	(16, 'External', '', 'external.gif', 0, 0, 'external'),
	(17, 'AddedLearnpath', '', 'scormbuilder.gif', 0, 0, 'external'),
	(18, 'conference', 'conference/index.php?type=conference', 'conf.gif', 0, 0, 'external'),
	(19, 'conference', 'conference/index.php?type=classroom', 'conf.gif', 0, 0, 'external'),
	(20, 'learnpath', 'newscorm/lp_controller.php', 'scorms.gif', 5, 1, 'basic'),
	(21, 'blog', 'blog/blog.php', 'blog.gif', 1, 2, 'basic'),
	(22, 'blog_management', 'blog/blog_admin.php', 'blog_admin.gif', 1, 2, 'courseadmin'),
	(23, 'course_maintenance', 'course_info/maintenance.php', 'backup.gif', 2, 3, 'courseadmin'),
	(24, 'survey', 'survey/survey_list.php', 'survey.gif', 2, 1, 'basic'),
	(25, 'wiki', 'wiki/index.php', 'wiki.gif', 2, 3, 'basic'),
	(26, 'gradebook', 'gradebook/index.php', 'gradebook.gif', 2, 2, 'basic'),
	(27, 'glossary', 'glossary/index.php', 'glossary.gif', 2, 1, 'basic'),
	(28, 'notebook', 'notebook/index.php', 'notebook.gif', 2, 1, 'basic'),
	(29, 'attendance', 'attendance/index.php', 'attendance.gif', 2, 1, 'basic'),
	(30, 'course_progress', 'course_progress/index.php', 'course_progress.gif', 2, 1, 'basic');
/*!40000 ALTER TABLE `course_module` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.course_rel_class
CREATE TABLE IF NOT EXISTS `course_rel_class` (
  `course_code` char(40) NOT NULL,
  `class_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`course_code`,`class_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.course_rel_class: 0 rows
DELETE FROM `course_rel_class`;
/*!40000 ALTER TABLE `course_rel_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_rel_class` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.course_rel_user
CREATE TABLE IF NOT EXISTS `course_rel_user` (
  `course_code` varchar(40) NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '5',
  `role` varchar(60) DEFAULT NULL,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `tutor_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) DEFAULT NULL,
  `user_course_cat` int(11) DEFAULT '0',
  `relation_type` int(11) NOT NULL DEFAULT '0',
  `legal_agreement` int(11) DEFAULT '0',
  PRIMARY KEY (`course_code`,`user_id`,`relation_type`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.course_rel_user: 135 rows
DELETE FROM `course_rel_user`;
/*!40000 ALTER TABLE `course_rel_user` DISABLE KEYS */;
INSERT INTO `course_rel_user` (`course_code`, `user_id`, `status`, `role`, `group_id`, `tutor_id`, `sort`, `user_course_cat`, `relation_type`, `legal_agreement`) VALUES
	('PHPPROGRAMACIONWEB', 1, 1, 'Profesor', 0, 0, 2, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 0, 1, '', 0, 0, 0, 0, 0, 0),
	('PHPPROGRAMACIONWEB', 4, 5, NULL, 0, 0, 1, 0, 0, 0),
	('PHPPROGRAMACIONWEB', 5, 5, NULL, 0, 0, 1, 0, 0, 0),
	('PHPPROGRAMACIONWEB', 0, 1, '', 0, 0, 0, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 3, 1, 'Profesor', 0, 0, 3, 0, 0, 0),
	('PHPPROGRAMACIONWEB', 7, 5, NULL, 0, 0, 1, 0, 0, 0),
	('PHPPROGRAMACIONWEB', 6, 5, NULL, 0, 0, 1, 0, 0, 0),
	('PHPPROGRAMACIONWEB', 8, 5, NULL, 0, 0, 1, 0, 0, 0),
	('SEMINARIODELINUX', 1, 1, 'Profesor', 0, 0, 6, 0, 0, 0),
	('SEMINARIODELINUX', 0, 1, '', 0, 0, 0, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 9, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 10, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNIA101', 3, 1, 'Profesor', 0, 0, 2, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 11, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 12, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 13, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 14, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 15, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 16, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 17, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 18, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 19, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 20, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 21, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 22, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 23, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 24, 5, NULL, 0, 0, 2, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 25, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 26, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 27, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 28, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 29, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 30, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 31, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 32, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 33, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 34, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 35, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 36, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 37, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 38, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 39, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 40, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 41, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 42, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 43, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 44, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 45, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 46, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 47, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 48, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 49, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 50, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 52, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNID103', 53, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNIA101', 24, 5, NULL, 0, 0, 1, 0, 0, 0),
	('GEOMETRIACEPREUNIA101', 0, 1, '', 0, 0, 0, 0, 0, 0),
	('SEMINARIODELINUX', 31, 5, NULL, 0, 0, 2, 0, 0, 0),
	('SEMINARIODELINUX', 21, 5, NULL, 0, 0, 2, 0, 0, 0),
	('161BASIFISICAD103M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIGEOMETD103M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('NUEVOCUR1', 1, 1, 'Profesor', 0, 0, 3, 0, 0, 0),
	('161BASIHUMANID103M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIQUIMICD103M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIARITMED103M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIALGEBRD103M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASITRIGOND103M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASITRIGONA103M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIFISICAD101M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIGEOMETD101M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIARITMED101M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIALGEBRD101M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIQUIMICD101M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIHUMANID101M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASITRIGOND102M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIFISICAD102M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIGEOMETD102M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIARITMED102M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIALGEBRD102M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIQUIMICD102M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIHUMANID102M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASITRIGOND104M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIFISICAD104M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIGEOMETD104M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIARITMED104M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIALGEBRD104M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIQUIMICD104M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIHUMANID104M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASITRIGOND201M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIFISICAD201M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIGEOMETD201M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIARITMED201M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIALGEBRD201M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIQUIMICD201M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIHUMANID201M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASITRIGOND202M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIFISICAD202M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIGEOMETD202M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIARITMED202M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIALGEBRD202M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIQUIMICD202M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIHUMANID202M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASITRIGOND203M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIFISICAD203M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIGEOMETD203M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIARITMED203M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIALGEBRD203M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIQUIMICD203M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIHUMANID203M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASITRIGOND204M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIFISICAD204M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIGEOMETD204M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIARITMED204M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIALGEBRD204M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIQUIMICD204M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIHUMANID204M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASITRIGOND205M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIFISICAD205M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIGEOMETD205M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIARITMED205M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIALGEBRD205M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIQUIMICD205M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIHUMANID205M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASITRIGOND206M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIFISICAD206M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIGEOMETD206M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIARITMED206M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIALGEBRD206M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIQUIMICD206M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIHUMANID206M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIFISICAA103M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIGEOMETA103M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIARITMEA103M', 1, 1, '', 0, 0, 1, 0, 0, 0),
	('161BASIALGEBRA103M', 1, 1, '', 0, 0, 1, 0, 0, 0);
/*!40000 ALTER TABLE `course_rel_user` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.course_request
CREATE TABLE IF NOT EXISTS `course_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(40) NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `directory` varchar(40) DEFAULT NULL,
  `db_name` varchar(40) DEFAULT NULL,
  `course_language` varchar(20) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `description` text,
  `category_code` varchar(40) DEFAULT NULL,
  `tutor_name` varchar(200) DEFAULT NULL,
  `visual_code` varchar(40) DEFAULT NULL,
  `request_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `objetives` text,
  `target_audience` text,
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  `info` int(10) unsigned NOT NULL DEFAULT '0',
  `exemplary_content` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.course_request: 0 rows
DELETE FROM `course_request`;
/*!40000 ALTER TABLE `course_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_request` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.course_type
CREATE TABLE IF NOT EXISTS `course_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `translation_var` char(40) DEFAULT 'UndefinedCourseTypeLabel',
  `description` text,
  `props` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.course_type: 2 rows
DELETE FROM `course_type`;
/*!40000 ALTER TABLE `course_type` DISABLE KEYS */;
INSERT INTO `course_type` (`id`, `name`, `translation_var`, `description`, `props`) VALUES
	(1, 'All tools', 'UndefinedCourseTypeLabel', NULL, NULL),
	(2, 'Entry exam', 'UndefinedCourseTypeLabel', NULL, NULL);
/*!40000 ALTER TABLE `course_type` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_announcement
CREATE TABLE IF NOT EXISTS `c_announcement` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text,
  `content` mediumtext,
  `end_date` date DEFAULT NULL,
  `display_order` mediumint(9) NOT NULL DEFAULT '0',
  `email_sent` tinyint(4) DEFAULT '0',
  `session_id` int(11) DEFAULT '0',
  PRIMARY KEY (`c_id`,`id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_announcement: 11 rows
DELETE FROM `c_announcement`;
/*!40000 ALTER TABLE `c_announcement` DISABLE KEYS */;
INSERT INTO `c_announcement` (`c_id`, `id`, `title`, `content`, `end_date`, `display_order`, `email_sent`, `session_id`) VALUES
	(3, 1, 'Examen Parcial', '<p>Mensaje de Prueba</p>', '2015-10-19', 1, 0, 0),
	(3, 2, 'Cumpleaños del Profesor', 'Cumpleaños del Profesor', '2015-10-25', 2, 1, 0),
	(1, 1, 'Entrega de práctica de condicioales', '<p>&nbsp;Estimados</p><p>La entrega de la pr&aacute;ctica de condicionales se debe realizar hasta el d&iacute;a de hoy.</p><p>El profesor.</p>', '0000-00-00', 1, 1, 0),
	(1, 2, 'Examen Final', 'PHP\r\n===\r\n- Variables\r\n- Estructuras condicionales\r\n- Estructuras de control\r\n- Conexión con base de datos', '2015-11-27', 2, 1, 0),
	(1, 3, 'Entrega de proyecto', 'Diseño de sitio web.', '2015-11-27', 3, 1, 0),
	(3, 3, 'Cuarta Practica Calificada', '<p>El domingo 22 de Noviembre se realizara la <strong>Cuarta Prueba Calificada</strong></p>', '2015-11-17', 3, 1, 0),
	(3, 4, 'Segundo Examen Parcial', 'Segundo Examen Parcial', '2015-12-06', 4, 1, 0),
	(3, 5, 'Quinta Prueba Calificada', 'Quinta Prueba Calificada', '2015-12-20', 5, 1, 0),
	(3, 6, 'Sexta Prueba Calificada', 'Sexta Prueba Calificada', '2016-01-17', 6, 1, 0),
	(3, 7, 'Septima Prueba Calificada', 'Septima Prueba Calificada', '2016-01-31', 7, 1, 0),
	(3, 8, 'Examen Final', 'Examen Final', '2016-02-07', 8, 1, 0);
/*!40000 ALTER TABLE `c_announcement` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_announcement_attachment
CREATE TABLE IF NOT EXISTS `c_announcement_attachment` (
  `c_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `comment` text,
  `size` int(11) NOT NULL DEFAULT '0',
  `announcement_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  PRIMARY KEY (`c_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_announcement_attachment: 0 rows
DELETE FROM `c_announcement_attachment`;
/*!40000 ALTER TABLE `c_announcement_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_announcement_attachment` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_attendance
CREATE TABLE IF NOT EXISTS `c_attendance` (
  `c_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `description` text,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `attendance_qualify_title` varchar(255) DEFAULT NULL,
  `attendance_qualify_max` int(11) NOT NULL DEFAULT '0',
  `attendance_weight` float(6,2) NOT NULL DEFAULT '0.00',
  `session_id` int(11) NOT NULL DEFAULT '0',
  `locked` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`id`),
  KEY `session_id` (`session_id`),
  KEY `active` (`active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_attendance: 6 rows
DELETE FROM `c_attendance`;
/*!40000 ALTER TABLE `c_attendance` DISABLE KEYS */;
INSERT INTO `c_attendance` (`c_id`, `id`, `name`, `description`, `active`, `attendance_qualify_title`, `attendance_qualify_max`, `attendance_weight`, `session_id`, `locked`) VALUES
	(1, 1, 'Asistencia', 'Asistencia', 1, '', 0, 0.00, 0, 0),
	(1, 2, 'PHP Programacion web', '<p>&nbsp;asdf</p>', 1, '', 33, 0.00, 0, 0),
	(3, 1, 'Asistencia', 'Asistencia', 1, '', 0, 0.00, 0, 0),
	(3, 2, 'Ejemplo', '<p>Ejemplo</p>', 1, '', 0, 0.00, 0, 0),
	(4, 1, 'Asistencia', 'Asistencia', 1, '', 0, 0.00, 0, 0),
	(4, 2, '1 maqueta', '', 1, '', 0, 0.00, 0, 0);
/*!40000 ALTER TABLE `c_attendance` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_attendance_calendar
CREATE TABLE IF NOT EXISTS `c_attendance_calendar` (
  `c_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attendance_id` int(11) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `done_attendance` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`id`),
  KEY `attendance_id` (`attendance_id`),
  KEY `done_attendance` (`done_attendance`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_attendance_calendar: 37 rows
DELETE FROM `c_attendance_calendar`;
/*!40000 ALTER TABLE `c_attendance_calendar` DISABLE KEYS */;
INSERT INTO `c_attendance_calendar` (`c_id`, `id`, `attendance_id`, `date_time`, `done_attendance`) VALUES
	(1, 9, 2, '2015-09-16 18:20:00', 1),
	(1, 2, 2, '2015-10-12 21:23:11', 1),
	(1, 3, 2, '2015-09-18 12:59:00', 1),
	(1, 4, 2, '2015-10-05 21:30:00', 1),
	(1, 5, 2, '2015-10-07 21:31:00', 1),
	(1, 6, 2, '2015-10-02 21:31:00', 1),
	(1, 7, 2, '2015-10-14 22:14:00', 1),
	(1, 8, 2, '2015-10-16 18:19:00', 1),
	(3, 1, 2, '2015-10-20 03:12:00', 0),
	(3, 2, 2, '2015-10-20 03:13:00', 0),
	(3, 3, 2, '2015-10-27 03:13:00', 0),
	(1, 10, 2, '2015-08-21 18:21:00', 1),
	(1, 11, 2, '2015-08-24 18:22:00', 1),
	(1, 12, 2, '2015-08-26 18:22:00', 1),
	(1, 13, 2, '2015-08-28 18:22:00', 1),
	(1, 14, 2, '2015-08-31 18:23:00', 1),
	(1, 15, 2, '2015-09-02 18:23:00', 1),
	(1, 16, 2, '2015-09-04 18:23:00', 1),
	(1, 17, 2, '2015-09-07 18:23:00', 1),
	(1, 18, 2, '2015-09-09 18:23:00', 1),
	(1, 19, 2, '2015-09-11 18:24:00', 1),
	(1, 20, 2, '2015-09-14 18:24:00', 1),
	(1, 21, 2, '2015-09-21 18:24:00', 1),
	(1, 22, 2, '2015-10-19 18:25:00', 1),
	(1, 23, 2, '2015-10-21 18:25:00', 1),
	(1, 24, 2, '2015-10-23 18:26:00', 1),
	(1, 25, 2, '2015-10-26 18:36:00', 1),
	(1, 26, 2, '2015-10-30 18:36:00', 1),
	(1, 27, 2, '2015-11-02 18:38:00', 1),
	(1, 28, 2, '2015-11-04 18:39:00', 1),
	(1, 29, 2, '2015-11-06 18:39:00', 1),
	(1, 30, 2, '2015-11-10 00:24:00', 1),
	(1, 31, 2, '2015-11-12 00:25:00', 1),
	(1, 32, 2, '2015-11-14 00:25:00', 1),
	(1, 33, 2, '2015-11-17 00:25:00', 1),
	(1, 34, 2, '2015-11-18 10:57:00', 1),
	(4, 1, 2, '2015-12-18 13:44:00', 0);
/*!40000 ALTER TABLE `c_attendance_calendar` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_attendance_result
CREATE TABLE IF NOT EXISTS `c_attendance_result` (
  `c_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `attendance_id` int(11) NOT NULL,
  `score` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`id`),
  KEY `attendance_id` (`attendance_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_attendance_result: 5 rows
DELETE FROM `c_attendance_result`;
/*!40000 ALTER TABLE `c_attendance_result` DISABLE KEYS */;
INSERT INTO `c_attendance_result` (`c_id`, `id`, `user_id`, `attendance_id`, `score`) VALUES
	(1, 1, 4, 2, 29),
	(1, 2, 5, 2, 31),
	(1, 3, 7, 2, 25),
	(1, 4, 6, 2, 32),
	(1, 5, 8, 2, 29);
/*!40000 ALTER TABLE `c_attendance_result` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_attendance_sheet
CREATE TABLE IF NOT EXISTS `c_attendance_sheet` (
  `c_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `attendance_calendar_id` int(11) NOT NULL,
  `presence` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`user_id`,`attendance_calendar_id`),
  KEY `presence` (`presence`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_attendance_sheet: 165 rows
DELETE FROM `c_attendance_sheet`;
/*!40000 ALTER TABLE `c_attendance_sheet` DISABLE KEYS */;
INSERT INTO `c_attendance_sheet` (`c_id`, `user_id`, `attendance_calendar_id`, `presence`) VALUES
	(1, 4, 2, 1),
	(1, 5, 2, 1),
	(1, 7, 2, 1),
	(1, 6, 2, 1),
	(1, 8, 2, 1),
	(1, 6, 9, 1),
	(1, 8, 9, 1),
	(1, 7, 9, 1),
	(1, 5, 9, 1),
	(1, 4, 9, 1),
	(1, 4, 5, 1),
	(1, 5, 5, 1),
	(1, 7, 5, 1),
	(1, 6, 5, 1),
	(1, 8, 5, 0),
	(1, 4, 3, 1),
	(1, 5, 3, 1),
	(1, 7, 3, 1),
	(1, 8, 3, 1),
	(1, 6, 3, 1),
	(1, 4, 6, 1),
	(1, 5, 6, 0),
	(1, 7, 6, 1),
	(1, 8, 6, 1),
	(1, 6, 6, 1),
	(1, 4, 8, 0),
	(1, 6, 8, 1),
	(1, 8, 8, 1),
	(1, 7, 8, 1),
	(1, 5, 8, 1),
	(1, 4, 4, 1),
	(1, 5, 4, 1),
	(1, 7, 4, 1),
	(1, 8, 4, 1),
	(1, 6, 4, 1),
	(1, 4, 7, 1),
	(1, 5, 7, 1),
	(1, 7, 7, 1),
	(1, 8, 7, 1),
	(1, 6, 7, 1),
	(1, 4, 10, 1),
	(1, 5, 10, 1),
	(1, 7, 10, 1),
	(1, 8, 10, 1),
	(1, 6, 10, 1),
	(1, 4, 11, 1),
	(1, 5, 11, 1),
	(1, 7, 11, 1),
	(1, 8, 11, 1),
	(1, 6, 11, 1),
	(1, 4, 12, 1),
	(1, 5, 12, 1),
	(1, 7, 12, 1),
	(1, 6, 12, 1),
	(1, 8, 12, 0),
	(1, 4, 13, 1),
	(1, 5, 13, 1),
	(1, 7, 13, 1),
	(1, 8, 13, 1),
	(1, 6, 13, 1),
	(1, 4, 14, 1),
	(1, 5, 14, 1),
	(1, 7, 14, 1),
	(1, 6, 14, 1),
	(1, 8, 14, 0),
	(1, 4, 15, 1),
	(1, 5, 15, 1),
	(1, 7, 15, 1),
	(1, 8, 15, 1),
	(1, 6, 15, 1),
	(1, 4, 16, 1),
	(1, 5, 16, 1),
	(1, 7, 16, 1),
	(1, 8, 16, 1),
	(1, 6, 16, 1),
	(1, 4, 17, 1),
	(1, 5, 17, 1),
	(1, 7, 17, 1),
	(1, 8, 17, 1),
	(1, 6, 17, 1),
	(1, 4, 18, 1),
	(1, 5, 18, 1),
	(1, 7, 18, 1),
	(1, 8, 18, 1),
	(1, 6, 18, 1),
	(1, 4, 19, 1),
	(1, 5, 19, 1),
	(1, 8, 19, 1),
	(1, 6, 19, 1),
	(1, 7, 19, 0),
	(1, 4, 20, 1),
	(1, 5, 20, 1),
	(1, 7, 20, 1),
	(1, 8, 20, 1),
	(1, 6, 20, 1),
	(1, 4, 21, 1),
	(1, 5, 21, 1),
	(1, 7, 21, 1),
	(1, 8, 21, 1),
	(1, 6, 21, 1),
	(1, 4, 22, 1),
	(1, 5, 22, 1),
	(1, 7, 22, 1),
	(1, 8, 22, 1),
	(1, 6, 22, 1),
	(1, 5, 23, 1),
	(1, 7, 23, 1),
	(1, 8, 23, 1),
	(1, 6, 23, 1),
	(1, 4, 23, 0),
	(1, 5, 25, 1),
	(1, 8, 25, 1),
	(1, 4, 25, 1),
	(1, 7, 25, 1),
	(1, 6, 25, 1),
	(1, 5, 26, 1),
	(1, 8, 26, 1),
	(1, 4, 26, 1),
	(1, 7, 26, 1),
	(1, 6, 26, 1),
	(1, 5, 24, 1),
	(1, 8, 24, 1),
	(1, 4, 24, 1),
	(1, 7, 24, 1),
	(1, 6, 24, 1),
	(1, 5, 27, 1),
	(1, 8, 27, 1),
	(1, 4, 27, 1),
	(1, 7, 27, 1),
	(1, 6, 27, 1),
	(1, 5, 28, 1),
	(1, 8, 28, 1),
	(1, 6, 28, 1),
	(1, 4, 28, 0),
	(1, 7, 28, 0),
	(1, 5, 29, 1),
	(1, 8, 29, 1),
	(1, 4, 29, 1),
	(1, 6, 29, 1),
	(1, 7, 29, 0),
	(1, 5, 30, 0),
	(1, 8, 30, 0),
	(1, 4, 30, 0),
	(1, 7, 30, 0),
	(1, 6, 30, 0),
	(1, 5, 31, 1),
	(1, 8, 31, 1),
	(1, 4, 31, 1),
	(1, 6, 31, 1),
	(1, 7, 31, 0),
	(1, 5, 32, 1),
	(1, 8, 32, 1),
	(1, 4, 32, 1),
	(1, 6, 32, 1),
	(1, 7, 32, 0),
	(1, 5, 33, 1),
	(1, 8, 33, 1),
	(1, 4, 33, 1),
	(1, 6, 33, 1),
	(1, 7, 33, 0),
	(1, 5, 34, 1),
	(1, 8, 34, 1),
	(1, 4, 34, 1),
	(1, 6, 34, 1),
	(1, 7, 34, 0);
/*!40000 ALTER TABLE `c_attendance_sheet` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_attendance_sheet_log
CREATE TABLE IF NOT EXISTS `c_attendance_sheet_log` (
  `c_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attendance_id` int(11) NOT NULL DEFAULT '0',
  `lastedit_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastedit_type` varchar(200) NOT NULL,
  `lastedit_user_id` int(11) NOT NULL DEFAULT '0',
  `calendar_date_value` datetime DEFAULT NULL,
  PRIMARY KEY (`c_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_attendance_sheet_log: 40 rows
DELETE FROM `c_attendance_sheet_log`;
/*!40000 ALTER TABLE `c_attendance_sheet_log` DISABLE KEYS */;
INSERT INTO `c_attendance_sheet_log` (`c_id`, `id`, `attendance_id`, `lastedit_date`, `lastedit_type`, `lastedit_user_id`, `calendar_date_value`) VALUES
	(1, 1, 2, '2015-10-12 16:23:43', 'done_attendance_sheet', 1, '2015-10-12 16:23:11'),
	(1, 2, 2, '2015-10-12 16:29:42', 'updated_attendance_sheet', 1, '2015-10-12 16:23:11'),
	(1, 3, 2, '2015-10-12 16:32:38', 'done_attendance_sheet', 1, '2015-09-17 08:01:01'),
	(1, 4, 2, '2015-10-12 16:32:38', 'done_attendance_sheet', 1, '2015-10-07 16:31:00'),
	(1, 5, 2, '2015-10-16 17:13:45', 'done_attendance_sheet', 1, '2015-09-18 07:59:00'),
	(1, 6, 2, '2015-10-16 17:13:45', 'updated_attendance_sheet', 1, '2015-10-12 16:23:11'),
	(1, 7, 2, '2015-10-16 17:15:33', 'done_attendance_sheet', 1, '2015-10-02 16:31:00'),
	(1, 8, 2, '2015-10-16 17:15:33', 'done_attendance_sheet', 1, '2015-10-16 17:14:00'),
	(1, 9, 2, '2015-10-16 17:15:45', 'done_attendance_sheet', 1, '2015-10-05 16:30:00'),
	(1, 10, 2, '2015-10-19 14:51:45', 'done_attendance_sheet', 1, '2015-10-14 17:14:00'),
	(1, 11, 2, '2015-10-19 14:52:14', 'updated_attendance_sheet', 1, '2015-10-16 17:14:00'),
	(1, 12, 2, '2015-10-23 13:14:07', 'locked_attendance_sheet', 1, '0000-00-00 00:00:00'),
	(1, 13, 2, '2015-10-23 13:20:06', 'done_attendance_sheet', 1, '2015-10-16 13:19:00'),
	(1, 14, 2, '2015-10-23 13:21:16', 'done_attendance_sheet', 1, '2015-09-16 13:20:00'),
	(1, 15, 2, '2015-10-23 13:28:28', 'done_attendance_sheet', 1, '2015-08-21 13:21:00'),
	(1, 16, 2, '2015-10-23 13:28:49', 'done_attendance_sheet', 1, '2015-08-24 13:22:00'),
	(1, 17, 2, '2015-10-23 13:29:11', 'done_attendance_sheet', 1, '2015-08-26 13:22:00'),
	(1, 18, 2, '2015-10-23 13:29:25', 'done_attendance_sheet', 1, '2015-08-28 13:22:00'),
	(1, 19, 2, '2015-10-23 13:29:45', 'done_attendance_sheet', 1, '2015-08-31 13:23:00'),
	(1, 20, 2, '2015-10-23 13:30:09', 'done_attendance_sheet', 1, '2015-09-02 13:23:00'),
	(1, 21, 2, '2015-10-23 13:30:26', 'done_attendance_sheet', 1, '2015-09-04 13:23:00'),
	(1, 22, 2, '2015-10-23 13:30:58', 'done_attendance_sheet', 1, '2015-09-07 13:23:00'),
	(1, 23, 2, '2015-10-23 13:31:17', 'done_attendance_sheet', 1, '2015-09-09 13:23:00'),
	(1, 24, 2, '2015-10-23 13:31:36', 'done_attendance_sheet', 1, '2015-09-11 13:24:00'),
	(1, 25, 2, '2015-10-23 13:31:49', 'done_attendance_sheet', 1, '2015-09-14 13:24:00'),
	(1, 26, 2, '2015-10-23 13:32:28', 'done_attendance_sheet', 1, '2015-09-21 13:24:00'),
	(1, 27, 2, '2015-10-23 13:32:52', 'updated_attendance_sheet', 1, '2015-10-02 16:31:00'),
	(1, 28, 2, '2015-10-23 13:34:22', 'done_attendance_sheet', 1, '2015-10-19 13:25:00'),
	(1, 29, 2, '2015-10-23 13:34:45', 'done_attendance_sheet', 1, '2015-10-21 13:25:00'),
	(1, 30, 2, '2015-11-09 13:37:44', 'done_attendance_sheet', 1, '2015-10-26 13:36:00'),
	(1, 31, 2, '2015-11-09 13:38:01', 'done_attendance_sheet', 1, '2015-10-30 13:36:00'),
	(1, 32, 2, '2015-11-09 13:38:19', 'done_attendance_sheet', 1, '2015-10-23 13:26:00'),
	(1, 33, 2, '2015-11-09 13:39:46', 'done_attendance_sheet', 1, '2015-11-02 13:38:00'),
	(1, 34, 2, '2015-11-09 13:40:18', 'done_attendance_sheet', 1, '2015-11-04 13:39:00'),
	(1, 35, 2, '2015-11-09 13:40:34', 'done_attendance_sheet', 1, '2015-11-06 13:39:00'),
	(1, 36, 2, '2015-11-18 19:26:59', 'done_attendance_sheet', 1, '2015-11-09 19:24:00'),
	(1, 37, 2, '2015-11-18 19:27:32', 'done_attendance_sheet', 1, '2015-11-11 19:25:00'),
	(1, 38, 2, '2015-11-18 19:27:46', 'done_attendance_sheet', 1, '2015-11-13 19:25:00'),
	(1, 39, 2, '2015-11-19 05:57:05', 'done_attendance_sheet', 1, '2015-11-16 19:25:00'),
	(1, 40, 2, '2015-11-19 05:57:42', 'done_attendance_sheet', 1, '2015-11-18 05:57:00');
/*!40000 ALTER TABLE `c_attendance_sheet_log` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_blog
CREATE TABLE IF NOT EXISTS `c_blog` (
  `c_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_name` varchar(250) NOT NULL DEFAULT '',
  `blog_subtitle` varchar(250) DEFAULT NULL,
  `date_creation` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `visibility` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `session_id` int(11) DEFAULT '0',
  PRIMARY KEY (`c_id`,`blog_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Table with blogs in this course';

-- Volcando datos para la tabla cepreadm.c_blog: 1 rows
DELETE FROM `c_blog`;
/*!40000 ALTER TABLE `c_blog` DISABLE KEYS */;
INSERT INTO `c_blog` (`c_id`, `blog_id`, `blog_name`, `blog_subtitle`, `date_creation`, `visibility`, `session_id`) VALUES
	(3, 1, 'Geometria', 'Geometria', '2015-10-24 01:28:56', 1, 0);
/*!40000 ALTER TABLE `c_blog` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_blog_attachment
CREATE TABLE IF NOT EXISTS `c_blog_attachment` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL COMMENT 'the real filename',
  `comment` text,
  `size` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL COMMENT 'the user s file name',
  `blog_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_blog_attachment: 0 rows
DELETE FROM `c_blog_attachment`;
/*!40000 ALTER TABLE `c_blog_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_blog_attachment` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_blog_comment
CREATE TABLE IF NOT EXISTS `c_blog_comment` (
  `c_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `comment` longtext NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) DEFAULT NULL,
  `parent_comment_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Table with comments on posts in a blog';

-- Volcando datos para la tabla cepreadm.c_blog_comment: 0 rows
DELETE FROM `c_blog_comment`;
/*!40000 ALTER TABLE `c_blog_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_blog_comment` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_blog_post
CREATE TABLE IF NOT EXISTS `c_blog_post` (
  `c_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `full_text` longtext NOT NULL,
  `date_creation` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Table with posts / blog.';

-- Volcando datos para la tabla cepreadm.c_blog_post: 2 rows
DELETE FROM `c_blog_post`;
/*!40000 ALTER TABLE `c_blog_post` DISABLE KEYS */;
INSERT INTO `c_blog_post` (`c_id`, `post_id`, `title`, `full_text`, `date_creation`, `blog_id`, `author_id`) VALUES
	(3, 1, 'Bienvenido', '¡ Este es el primer artículo en el blog ! En adelante, todos los usuarios suscritos a este blog pueden participar', '2015-10-24 01:28:56', 1, 3),
	(3, 2, 'Geometria Moderna', '', '2015-10-24 01:30:36', 1, 3);
/*!40000 ALTER TABLE `c_blog_post` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_blog_rating
CREATE TABLE IF NOT EXISTS `c_blog_rating` (
  `c_id` int(11) NOT NULL,
  `rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `rating_type` enum('post','comment') NOT NULL DEFAULT 'post',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `rating` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`rating_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Table with ratings for post/comments in a certain blog';

-- Volcando datos para la tabla cepreadm.c_blog_rating: 0 rows
DELETE FROM `c_blog_rating`;
/*!40000 ALTER TABLE `c_blog_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_blog_rating` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_blog_rel_user
CREATE TABLE IF NOT EXISTS `c_blog_rel_user` (
  `c_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`blog_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Table representing users subscribed to a blog';

-- Volcando datos para la tabla cepreadm.c_blog_rel_user: 1 rows
DELETE FROM `c_blog_rel_user`;
/*!40000 ALTER TABLE `c_blog_rel_user` DISABLE KEYS */;
INSERT INTO `c_blog_rel_user` (`c_id`, `blog_id`, `user_id`) VALUES
	(3, 1, 3);
/*!40000 ALTER TABLE `c_blog_rel_user` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_blog_task
CREATE TABLE IF NOT EXISTS `c_blog_task` (
  `c_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `color` varchar(10) NOT NULL DEFAULT '',
  `system_task` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`task_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Table with tasks for a blog';

-- Volcando datos para la tabla cepreadm.c_blog_task: 1 rows
DELETE FROM `c_blog_task`;
/*!40000 ALTER TABLE `c_blog_task` DISABLE KEYS */;
INSERT INTO `c_blog_task` (`c_id`, `task_id`, `blog_id`, `title`, `description`, `color`, `system_task`) VALUES
	(3, 1, 1, 'Investigacion', '', '990033', 0);
/*!40000 ALTER TABLE `c_blog_task` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_blog_task_rel_user
CREATE TABLE IF NOT EXISTS `c_blog_task_rel_user` (
  `c_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `target_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`c_id`,`blog_id`,`user_id`,`task_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Table with tasks assigned to a user in a blog';

-- Volcando datos para la tabla cepreadm.c_blog_task_rel_user: 1 rows
DELETE FROM `c_blog_task_rel_user`;
/*!40000 ALTER TABLE `c_blog_task_rel_user` DISABLE KEYS */;
INSERT INTO `c_blog_task_rel_user` (`c_id`, `blog_id`, `user_id`, `task_id`, `target_date`) VALUES
	(3, 1, 3, 1, '2015-10-24');
/*!40000 ALTER TABLE `c_blog_task_rel_user` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_calendar_event
CREATE TABLE IF NOT EXISTS `c_calendar_event` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text,
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `parent_event_id` int(11) DEFAULT NULL,
  `session_id` int(10) unsigned NOT NULL DEFAULT '0',
  `all_day` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_calendar_event: 11 rows
DELETE FROM `c_calendar_event`;
/*!40000 ALTER TABLE `c_calendar_event` DISABLE KEYS */;
INSERT INTO `c_calendar_event` (`c_id`, `id`, `title`, `content`, `start_date`, `end_date`, `parent_event_id`, `session_id`, `all_day`) VALUES
	(3, 1, 'Cumpleaños del Profesor', 'Cumpleaños del Profesor', '2015-10-25 05:00:00', '2015-10-25 05:00:00', NULL, 0, 1),
	(3, 2, 'Examen Parcial', '<p>Examen Parcial</p>', '2015-10-19 05:00:00', '2015-10-20 04:59:00', NULL, 0, 0),
	(3, 3, 'Prueba', '<p>Prueba</p>', '2015-10-27 05:00:00', '2015-10-28 04:59:00', NULL, 0, 0),
	(1, 1, 'Examen Final', 'PHP\r\n===\r\n- Variables\r\n- Estructuras condicionales\r\n- Estructuras de control\r\n- Conexión con base de datos', '2015-11-27 05:00:00', '2015-11-27 05:00:00', NULL, 0, 1),
	(1, 2, 'Entrega de proyecto', 'Diseño de sitio web.', '2015-11-27 05:00:00', '2015-11-27 05:00:00', NULL, 0, 1),
	(3, 4, 'Cuarta Practica Calificada', 'El dia domingo 22 de Noviembre se realizara la Cuarta Practica Calificada', '2015-11-22 05:00:00', '2015-11-22 05:00:00', NULL, 0, 1),
	(3, 5, 'Segundo Examen Parcial', 'Segundo Examen Parcial', '2015-12-06 05:00:00', '2015-12-06 05:00:00', NULL, 0, 1),
	(3, 6, 'Quinta Prueba Calificada', 'Quinta Prueba Calificada', '2015-12-20 05:00:00', '2015-12-20 05:00:00', NULL, 0, 1),
	(3, 7, 'Sexta Prueba Calificada', 'Sexta Prueba Calificada', '2016-01-17 05:00:00', '2016-01-17 05:00:00', NULL, 0, 1),
	(3, 8, 'Septima Prueba Calificada', 'Septima Prueba Calificada', '2016-01-31 05:00:00', '2016-01-31 05:00:00', NULL, 0, 1),
	(3, 9, 'Examen Final', 'Examen Final', '2016-02-07 05:00:00', '2016-02-07 05:00:00', NULL, 0, 1);
/*!40000 ALTER TABLE `c_calendar_event` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_calendar_event_attachment
CREATE TABLE IF NOT EXISTS `c_calendar_event_attachment` (
  `c_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `comment` text,
  `size` int(11) NOT NULL DEFAULT '0',
  `agenda_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  PRIMARY KEY (`c_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_calendar_event_attachment: 0 rows
DELETE FROM `c_calendar_event_attachment`;
/*!40000 ALTER TABLE `c_calendar_event_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_calendar_event_attachment` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_calendar_event_repeat
CREATE TABLE IF NOT EXISTS `c_calendar_event_repeat` (
  `c_id` int(11) NOT NULL,
  `cal_id` int(11) NOT NULL DEFAULT '0',
  `cal_type` varchar(20) DEFAULT NULL,
  `cal_end` int(11) DEFAULT NULL,
  `cal_frequency` int(11) DEFAULT '1',
  `cal_days` char(7) DEFAULT NULL,
  PRIMARY KEY (`c_id`,`cal_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_calendar_event_repeat: 0 rows
DELETE FROM `c_calendar_event_repeat`;
/*!40000 ALTER TABLE `c_calendar_event_repeat` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_calendar_event_repeat` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_calendar_event_repeat_not
CREATE TABLE IF NOT EXISTS `c_calendar_event_repeat_not` (
  `c_id` int(11) NOT NULL,
  `cal_id` int(11) NOT NULL,
  `cal_date` int(11) NOT NULL,
  PRIMARY KEY (`c_id`,`cal_id`,`cal_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_calendar_event_repeat_not: 0 rows
DELETE FROM `c_calendar_event_repeat_not`;
/*!40000 ALTER TABLE `c_calendar_event_repeat_not` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_calendar_event_repeat_not` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_chat_connected
CREATE TABLE IF NOT EXISTS `c_chat_connected` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `last_connection` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `session_id` int(11) NOT NULL DEFAULT '0',
  `to_group_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`id`,`user_id`,`last_connection`),
  KEY `char_connected_index` (`user_id`,`session_id`,`to_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_chat_connected: 3 rows
DELETE FROM `c_chat_connected`;
/*!40000 ALTER TABLE `c_chat_connected` DISABLE KEYS */;
INSERT INTO `c_chat_connected` (`c_id`, `id`, `user_id`, `last_connection`, `session_id`, `to_group_id`) VALUES
	(3, 4, 42, '2015-11-06 17:30:09', 0, 0),
	(3, 6, 44, '2015-11-21 22:24:07', 0, 0),
	(3, 7, 43, '2015-11-28 19:55:04', 0, 0);
/*!40000 ALTER TABLE `c_chat_connected` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_course_description
CREATE TABLE IF NOT EXISTS `c_course_description` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `session_id` int(11) DEFAULT '0',
  `description_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `progress` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_course_description: 7 rows
DELETE FROM `c_course_description`;
/*!40000 ALTER TABLE `c_course_description` DISABLE KEYS */;
INSERT INTO `c_course_description` (`c_id`, `id`, `title`, `content`, `session_id`, `description_type`, `progress`) VALUES
	(1, 1, 'Sílabo del curso', '<p><b>PRE-REQUISITOS<o:p></o:p></b></p>      <ul><li><span style="font-stretch: normal; font-size: 7pt; font-family: \'Times New Roman\';">&nbsp;</span><!--[endif]-->Windows<o:p></o:p></li><li><span style="font-stretch: normal; font-size: 7pt; font-family: \'Times New Roman\';">&nbsp;</span><!--[endif]-->Internet b&aacute;sico<o:p></o:p></li></ul>  <p class="MsoNormal"><b>CONTENIDO<o:p></o:p></b></p>  <p class="MsoNormal"><b>Sesi&oacute;n 1: Aspectos b&aacute;sicos del programa<o:p></o:p></b></p>              <ul><li>Descripci&oacute;n del entorno del programa<o:p></o:p></li><li>Visualizaci&oacute;n de los paneles<o:p></o:p></li><li>Formas de trabajar con un documento: vista de c&oacute;digo y de dise&ntilde;o<o:p></o:p></li><li>Concepto y creaci&oacute;n de un sitio loca&acute;l</li><li>Creaci&oacute;n de p&aacute;ginas en un sitio local<o:p></o:p></li><li>Configurar propiedades de un documento<o:p></o:p></li><li>Las etiquetas HTML<o:p></o:p></li></ul>  <p class="MsoNormal"><b>Sesi&oacute;n 2: Formatos que se aplican a un texto<o:p></o:p></b></p>                    <ul><li>Formatos que se aplican a un texto<o:p></o:p></li><li>Crear listas ordenadas y sin ordenar<o:p></o:p></li><li><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol"><span style="font-stretch: normal; font-size: 7pt; font-family: \'Times New Roman\';">&nbsp;</span></span><!--[endif]-->V&iacute;nculos o hiperv&iacute;nculos de documentos<o:p></o:p></li><li><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol"><span style="font-stretch: normal; font-size: 7pt; font-family: \'Times New Roman\';">&nbsp;</span></span><!--[endif]-->V&iacute;nculos a otro documento<o:p></o:p></li><li><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol"><span style="font-stretch: normal; font-size: 7pt; font-family: \'Times New Roman\';">&nbsp;</span></span><!--[endif]-->V&iacute;nculos a un lugar del mismo documento<o:p></o:p></li><li>Insertar im&aacute;genes<o:p></o:p></li><li>Propiedades de las im&aacute;genes<o:p></o:p></li><li>V&iacute;nculos con im&aacute;genes<o:p></o:p></li><li>Crear un mapa de im&aacute;genes<o:p></o:p></li><li>Insertar pel&iacute;culas flash<o:p></o:p></li></ul>  <p class="MsoNormal"><b>Sesi&oacute;n 3: Dise&ntilde;o de p&aacute;ginas<o:p></o:p></b></p>            <ul><li>Creaci&oacute;n de tablas<o:p></o:p></li><li>Propiedades de las tablas<o:p></o:p></li><li>Propiedades de columnas y filas<o:p></o:p></li><li><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol"><span style="font-stretch: normal; font-size: 7pt; font-family: \'Times New Roman\';">&nbsp;</span></span><!--[endif]-->Anidar tablas<o:p></o:p></li><li>Creaci&oacute;n de formularios<o:p></o:p></li><li>Objetos de formularios<o:p></o:p></li></ul>  <p class="MsoNormal"><b>Sesi&oacute;n 4: Creaci&oacute;n de estilos<o:p></o:p></b></p>          <ul><li>Utilizar estilos CSS<o:p></o:p></li><li><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol"><span style="font-stretch: normal; font-size: 7pt; font-family: \'Times New Roman\';">&nbsp;</span></span><!--[endif]-->Aplicaci&oacute;n de estilos de clase<o:p></o:p></li><li>Creaci&oacute;n de estilos<o:p></o:p></li><li>Editar regla de estilos<o:p></o:p></li><li><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol"><span style="font-stretch: normal; font-size: 7pt; font-family: \'Times New Roman\';">&nbsp;</span></span><!--[endif]-->Vincular a estilos externos<o:p></o:p></li></ul>  <p class="MsoNormal"><b>Sesi&oacute;n 5: Maquetaci&oacute;n Web<o:p></o:p></b></p>          <ul><li>Elementos DIV<o:p></o:p></li><li>Elementos DIV PA<o:p></o:p></li><li>Trabajar con elementos Div PA<o:p></o:p></li><li>Propiedades de elementos Div PA<o:p></o:p></li><li>Maquetaci&oacute;n web DIV PA y DIV sin posici&oacute;n<o:p></o:p></li></ul>  <p class="MsoNormal"><b>Sesi&oacute;n 6: Comportamientos y javascript<o:p></o:p></b></p>            <ul><li>Comportamientos<o:p></o:p></li><li>El panel comportamientos<o:p></o:p></li><li>Eventos de comportamiento<o:p></o:p></li><li>Comportamiento y textos<o:p></o:p></li><li>Usar las acciones de comportamiento incluidas en Dreamweaver<o:p></o:p></li><li>Introducci&oacute;n a Javascript<o:p></o:p></li></ul>  <p class="MsoNormal"><b>Sesi&oacute;n 7: Fundamentos de PHP<o:p></o:p></b></p>          <ul><li>Instalaci&oacute;n de servidor web, php y mysql<o:p></o:p></li><li>Estructuras de decisi&oacute;n (if, while)<o:p></o:p></li><li>Estructuras de control (for, while, foreach)<o:p></o:p></li><li>Funciones para el manejo de textos, fecha, arrays<o:p></o:p></li><li>Creaci&oacute;n de libro de visita.<o:p></o:p></li></ul>  <p class="MsoNormal"><b>Sesi&oacute;n 8: Conexiones a base de datos<o:p></o:p></b></p>        <ul><li>Conexiones a base de datos<o:p></o:p></li><li><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol"><span style="font-stretch: normal; font-size: 7pt; font-family: \'Times New Roman\';">&nbsp;</span></span><!--[endif]-->Aspectos b&aacute;sicos de las conexiones a las bases de datos<o:p></o:p></li><li>Manejo de registros<o:p></o:p></li><li>Proyecto creaci&oacute;n de carrito de compra.<o:p></o:p></li></ul>    <p>&nbsp;</p>', 0, 7, 0),
	(3, 1, 'Descripcion general del Curso de Geometria', '<p>En este curso se estudia la Geometria Moderna, desde sus nociones basicas hasta la geometria del espacio.</p>', 0, 1, 0),
	(3, 2, 'Objetivos del Curso de Geometria', '<p>El principal objetivo del curso de Geometria es que los alumnos ingresen a la Universidad Nacional de Ingenieria, aprobando satisfactoriamente el examen de Admision para la Universidad Nacional de Ingenieria.</p>', 0, 2, 0),
	(3, 3, 'Contenido del Curso de Geometria', '<p><strong>Nociones Basicas</strong></p><p>Introduccion, Postulados y Definiciones Fundamentales.</p><p><strong>Conjunto Convexo y No Convexo</strong></p><p>Definicion, Teorema de la Interseccion de Conjuntos Convexos. Particion de un Conjunto.</p><p><strong>Angulo</strong></p><p>Definicion. Interior y Exterior de un Angulo. Postulado de la medida de un angulo. Postulado de la Construccion de un Angulo. Postulado de la Adicion de Angulos. Definiciones. Clasificacion. Angulos Complementarios y Suplementarios. Rectas Perpendiculares.</p><p><strong>Triangulos</strong></p><p>Definicion. Angulos en el Triangulo. Interior y Exterior de un Triangulo. Perimetro del Triangulo. Clasificacion de los Triangulos. Teoremas Fundamentales en el Triangulo. Correspondencia entre Lados y Angulos. Desigualdad Triangular. Lineas Notables del Triangulo</p><p><strong>Congruencia de Triangulos</strong></p><p>Definicion. Postulados y Teoremas de la Congruencia de Triangulos (LAL,ALA,LLL). Corolario. Aplicaciones de la Congruencia. Teorema de la Mediatriz de un Segmento. Teorema de la bisectriz de un angulo. Teorema de la Base Media. Teorema de la menor mediana de un Trinagulo Rectangulo. Triangulos Rectangulos Notables.</p><p><strong>Poligonos</strong></p><p>Definicion. Elementos del Poligono. Clasificacion de los Poligonos. Poligono Equiletero. Poligono Equiangulo. Poligono Regular. Poligono Irregular. Teoremas Fundamentales en los Poligonos Convexos.</p><p><strong>Cuadrilateros</strong></p><p>Definicion. Clasificacion de los Cuadrilateros Convexos. Teoremas en los Trapecios y Paralelogramos.</p><p><strong>Circunferencia</strong></p><p>Definicion. Posiciones Relativas entre dos Circunferencias Coplanares. Teoremas Fundamentales en la Circunferencia. Teorema de Poncelet.</p><p><strong>Cuadrilatero Circunscrito y Circunscriptible</strong></p><p>Definicion. Teorema de Pithot. Reciproco del Teorema de Pithot Cuadrilatero Ex-inscrito. Teorema de Steiner. Reciproco del Teorema de Steiner. Generalizacion del Teorema de Pithot.</p><p><strong>Angulos en la Circunferencia</strong></p><p>Angulo Central. Arco menor y Arco mayor. Medida en grados de un arco. Congruncia de arcos. Cuerda de un Arco. Teoremas. Angulo Inscrito. Angulo Seminscrito. Angulo Interior. Angulo Exterior. Cuadrilatero Inscrito e Inscriptible. Definicion. Teoremas.</p><p><strong>Proporcionalidad</strong></p><p>Razon de dos Segmentos. Segmentos Proporcionales. Cuarta Proporcional. Tercera Proporcional. Media Proporcional. Teorema de las Equiparalelas. Teorema de Thales. Teorema de la Bisectriz Interior de un Triangulo. Teorema de la Bisectriz Exterior de un Triangulo. Teorema del Incentro. Teorema de Menelao. Teorema de Ceva.</p><p><strong>Semejanza de Triangulos</strong></p><p>Definicion. Teoremas. Puntos Notables de un Triangulo. Teoremas</p><p><strong>Relaciones Metricas en el Triangulo Rectangulo</strong></p><p>Proyeccion Ortogonal de un Punto y un Segmento sobre una Recta. Teoremas en el Triangulo Rectangulo.</p><p><strong>Relaciones Metricas en el Triangulo Oblicuangulo</strong></p><p>Teoremas de las Proyecciones. Teorema de Stewart. Teorema de la Mediana. Teorema de Heron. Teorema de Euler en los Cuadrilateros.</p><p><strong>Relaciones Metricas en la Circunferencia</strong></p><p>Teorema de la Cuerda. Teorema de la Secante. Teorema de la Tangente.  Teorema de las Isogonales. Teorema del Triangulo Inscrito en una Circunferencia. Teorema de la Longitud de la Bisectriz Interior. Teorema de la Longitud de la Bisectriz Exterior. Teorema de Ptolomeo. Teorema de Viette.</p><p><strong>Poligonos Regulares</strong></p><p>Definicion. Poligono Regular Inscrito en una Circunferencia. Poligono Regular Circunscrito a una Circunferencia. Centro de un Poligono Regular. Definicion de Angulo Central. Apotema de un Poligono Regular. Formula del Apotema. Formula del Poligono de 2n Lados. Poligonos Regulares Notables Inscritos (n = 2,4,5,6,8,10,12). Poligonos Regulares Isoperimetricos. Poligonos Regulares Notables Inscritos. Division de un Segmento en Media y Extrema Razon. Longitud de la Seccion Aurea de un Segmento.</p><p><strong>Simetria en el Plano</strong></p><p>Definicion de Simetria respecto a un Punto. Definicion de Simetria respecto a una Recta. Figura Simetrica.</p><p><strong>Longitud de Circunferencia y Longitud de Arco</strong></p><p>Definicion. Teorema. Longitud de Arco de una Circunferencia</p><p><strong>Area de Regiones Poligonale</strong><strong>s</strong></p><p>Definicion. Postulados Fundamentales. Area de una Region Cuadrada. Area de una Region Rectangular. Area de una Region Paralelogramica. Area de una Region Triangular.</p><p><strong>Area de una Region Triangular</strong></p><p>Formula Trigonometrica. Area de una Region Triangular en Funcion a sus tres Lados. Area de una Region Triangular en funcion del Inradio. Area de una Region Triangular en funcion del Exradio relativo a un Lado. Area de una Region Triangular en funcion del Circunradio.</p><p><strong>Relacion de Areas Triangulares</strong></p><p>Areas de Regiones Triangulares de altura congruente. Areas de Regiones Triangulares con un angulo congruente o con un angulo suplementario. Areas de Regiones Triangulares Semejantes.</p><p><strong>Area de Regiones Cuadrangulares</strong></p><p>Area de una Region Paralelogramica. Area de una Region Rombica. Area de una Region Trapecial. Area de una Region Trapezoidal. Area de una Region Cuadrangular Circunscrita a una Circunferencia. Area de una Region Cuadrangular Inscrita en una Circunferencia. Relacion entre areas de regiones Cuadrangulares.</p><p><strong>Area de Regiones Circulares</strong></p><p>Area del Circulo. Area del Sector Circular. Area de Segmento Circular. Area de Corona Circular. Area de Trapecio Circular. Lunulas de Hipocrates.</p><p><strong>Elementos de Geometria en el Espacio</strong></p><p>Definicion. Postulados de la Geometria del Espacio. Determinacion de un Plano. Posiciones Relativas de Planos y Rectas en el Espacio. Angulo entre dos Rectas Cruzadas.</p><p><strong>Teorema de las Tres Perpendiculares</strong></p><p>Rectas y Planos Perpendiculares. Teorema de las Tres Perpendiculares. Proyeccion Ortogonal sobre un Plano. Distancia entre dos Rectas Cruzadas. Teoremas. Angulo entre una Recta y un Plano. Teorema de Thales en el Espacio.</p><p><strong>Angulo Diedro</strong></p><p>Definicion. Elementos de un Angulo Diedro. Notacion. Angulo Plano o Rectilineo de un Diedro y Medida de un Angulo Diedro. Planos Perpendiculares. Proyeccion Ortogonal de una Region Poligonal sobre un Plano dado.</p><p><strong>Angulos Poliedros</strong></p><p>Definicion. Elementos. Notacion. Clasificacion. Teoremas generales en los angulos poliedros convexos.</p><p><strong>Angulo Triedro</strong></p><p>Definicion. Teoremas en el Angulo Triedro. Clasificacion de los Angulos Triedros. Triedros Polares o Suplementarios.</p><p><strong>Poliedros</strong></p><p>Definicion. Elementos de los Poliedros. Clasificacion de los Poliedros. Teoremas Generales en los Poliedros Convexos.</p><p><strong>Poliedros Regulares</strong></p><p>Definicion. Teorema. Propiedades Poliedros Conjugados. Determinacion de un Poliedro Regular Conjugado.</p><p><strong>Nociones de Simetria en el Espacio</strong></p><p>Definicion de Simetria respecto a un Punto. Definicion de Simetria respecto a una Recta. Definicion de Simetria respecto a un Plano. Eje, Plano y Centro de Simetria en una Figura.</p><p><strong>Prisma</strong></p><p>Superficie Prismatica. Prisma. Elementos del Prisma. Clasificacion de los Prismas. Area de la Superficie de un Prisma. Volumen del Solido limitado por un Prisma.</p><p><strong>Tronco de Prisma</strong></p><p>Definicion. Notacion. Tronco de Prisma Regular, Recto y Oblicuo. Volumen de un Tronco de Prisma Triangular. Tronco de Prisma Triangular Oblicuo. Tronco de Prisma Triangular Recto.</p><p><strong>Piramide</strong></p><p>Superficie Piramidal. Piramide. Piramide Regular. Desarrollo de la Superficie de una Piramide Regular. Area Lateral y Area Total de una Piramide. Volumen del Solido que determina una Piramide. Relacion de Volumenes en Piramides.</p><p><strong>Tronco de Piramide</strong></p><p>Definicon. Notacion. Volumen del Tronco de Piramide. Tronco de Piramide de bases paralelas. Volumen del solido determinado por un Tronco de Piramide de Bases Paralelas. Tronco de Piramide Regular. Desarrollo de la Superficie de un Tronco de Piramide Regular.</p><p><strong>Cilindro</strong></p><p>Superficie Cilindrica. Cilindro. Cilindro Recto. Cilindro Oblicuo. Cilindro de Revolucion. Desarrollo de la Superficie de un Cilindro de Revolucion. Tronco de Cilindro de Revolucion. Tronco de Cilindro Oblicuo de Seccion Recta Circular.</p><p><strong>Cono</strong></p><p>Superficie Conica. Cono. Cono Recto. Conos Semejantes. Cono de Revolucion. Desarrollo de la Superficie del Cono de Revolucion. Tronco de Cono de Bases Paralelas. Tronco de Cono de Revolucion. Desarrollo de la Superficie de un Tronco de Cono de Revolucion.</p><p><strong>Superficie Esferica</strong></p><p>Superficie de Revolucion. Teorema. Teorema de Arquimedes. Superficie Esferica. Teorema. Zona Esferica. Teorema. Casquete Esferico. Teorema. Huso Esferico. Teorema. Areas. Volumen del Solido generado por la rotacion de una region triangular alrededor de un eje coplanar que contiene a un&nbsp; vertice. Volumen del solido generado por la rotacion de una region poligonal regular alrededor de un eje coplanar que contiene a su vertice.</p><p><strong>Volumen de la Esfera</strong></p><p>Teorema. Segundo Teorema de Arquimedes. Sector Esferico. Teorema. Cu&ntilde;a Esferica. Teorema. Anillo Esferico. Teorema Segmento Esferico. </p><p><strong>Teoremas de Pappus-Gulding.</strong></p><p>Teorema de Pappus. Teorema de Gulding.</p><p><strong><br /></strong></p>', 0, 3, 0),
	(3, 4, 'Metodologia del Curso de Geometria', '<p>En el Presente curso se expondran los conceptos y se generaran las evaluaciones respecivas con el objetivo de lograr el aprendizaje del curso de Geometria.</p>', 0, 4, 0),
	(3, 5, 'Materiales del Curso de Geometria', '<p>Para el presente curso de Geometria se necesitan resolver los problemas usando papel y lapiz esos son los unicos materiales necesarios.</p>', 0, 5, 0),
	(3, 6, 'Evaluacion del Curso de Geometria', '<p>Para el aprendizaje del curso de Geometria cada leccion tendra su respectiva evaluacion.</p>', 0, 7, 0);
/*!40000 ALTER TABLE `c_course_description` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_course_setting
CREATE TABLE IF NOT EXISTS `c_course_setting` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `variable` varchar(255) NOT NULL DEFAULT '',
  `subkey` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `value` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `comment` varchar(255) DEFAULT NULL,
  `subkeytext` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`c_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_course_setting: 1.347 rows
DELETE FROM `c_course_setting`;
/*!40000 ALTER TABLE `c_course_setting` DISABLE KEYS */;
INSERT INTO `c_course_setting` (`c_id`, `id`, `variable`, `subkey`, `type`, `category`, `value`, `title`, `comment`, `subkeytext`) VALUES
	(1, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(1, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(1, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(1, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(1, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '1', '', NULL, NULL),
	(1, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '1', '', NULL, NULL),
	(1, 7, 'course_theme', NULL, NULL, 'theme', '', '', NULL, NULL),
	(1, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '1', '', NULL, NULL),
	(1, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '1', '', NULL, NULL),
	(1, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(1, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '1', '', NULL, NULL),
	(1, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '1', '', NULL, NULL),
	(1, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(1, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(1, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '', '', NULL, NULL),
	(1, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '', '', NULL, NULL),
	(1, 17, 'documents_default_visibility', NULL, NULL, NULL, '', '', NULL, NULL),
	(4, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '1', '', NULL, NULL),
	(4, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '1', '', NULL, NULL),
	(4, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(4, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '1', '', NULL, NULL),
	(4, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '1', '', NULL, NULL),
	(4, 7, 'course_theme', NULL, NULL, 'theme', '', '', NULL, NULL),
	(4, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '1', '', NULL, NULL),
	(4, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '1', '', NULL, NULL),
	(4, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(4, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(4, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(4, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(1, 18, 'show_system_folders', NULL, NULL, NULL, '', '', NULL, NULL),
	(3, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(3, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(3, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(3, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(3, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '1', '', NULL, NULL),
	(3, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '1', '', NULL, NULL),
	(3, 7, 'course_theme', NULL, NULL, 'theme', '', '', NULL, NULL),
	(3, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '1', '', NULL, NULL),
	(3, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '1', '', NULL, NULL),
	(3, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(3, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '1', '', NULL, NULL),
	(3, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '1', '', NULL, NULL),
	(3, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(3, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(3, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '', '', NULL, NULL),
	(3, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '', '', NULL, NULL),
	(3, 17, 'documents_default_visibility', NULL, NULL, NULL, '', '', NULL, NULL),
	(4, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(4, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(4, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '', '', NULL, NULL),
	(4, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '', '', NULL, NULL),
	(4, 17, 'documents_default_visibility', NULL, NULL, NULL, '', '', NULL, NULL),
	(4, 18, 'show_system_folders', NULL, NULL, NULL, '', '', NULL, NULL),
	(3, 18, 'show_system_folders', NULL, NULL, NULL, '', '', NULL, NULL),
	(5, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(5, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(5, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(5, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(5, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '1', '', NULL, NULL),
	(5, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '1', '', NULL, NULL),
	(5, 7, 'course_theme', NULL, NULL, 'theme', '', '', NULL, NULL),
	(5, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '1', '', NULL, NULL),
	(5, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '1', '', NULL, NULL),
	(5, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(5, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '1', '', NULL, NULL),
	(5, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '1', '', NULL, NULL),
	(5, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(5, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(5, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '', '', NULL, NULL),
	(5, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '', '', NULL, NULL),
	(5, 17, 'documents_default_visibility', NULL, NULL, NULL, '', '', NULL, NULL),
	(5, 18, 'show_system_folders', NULL, NULL, NULL, '', '', NULL, NULL),
	(57, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '', '', NULL, NULL),
	(57, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '', '', NULL, NULL),
	(57, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(57, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(57, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '1', '', NULL, NULL),
	(57, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '1', '', NULL, NULL),
	(57, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(57, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '1', '', NULL, NULL),
	(57, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '1', '', NULL, NULL),
	(57, 7, 'course_theme', NULL, NULL, 'theme', '', '', NULL, NULL),
	(57, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(57, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(57, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(57, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(57, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '1', '', NULL, NULL),
	(57, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '1', '', NULL, NULL),
	(57, 17, 'documents_default_visibility', NULL, NULL, NULL, 'visible', '', NULL, NULL),
	(160, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(160, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(160, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(160, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(160, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(160, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(160, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(160, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(160, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(160, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(160, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(158, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(158, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(158, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(159, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(159, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(159, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(159, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(159, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(159, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(159, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(159, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(159, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(159, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(159, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(159, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(158, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(157, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(157, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(157, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(157, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(157, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(157, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(157, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(157, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(159, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(159, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(159, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(159, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(159, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(158, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(158, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(158, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(158, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(157, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(158, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(158, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(158, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(158, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(158, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(158, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(158, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(158, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(158, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(157, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(154, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(154, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(154, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(154, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(154, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(154, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(154, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(154, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(154, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(154, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(154, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(154, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(154, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(154, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(154, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(154, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(155, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(155, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(155, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(155, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(155, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(155, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(155, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(155, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(155, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(155, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(155, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(155, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(155, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(155, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(155, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(155, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(155, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(156, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(156, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(156, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(156, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(156, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(156, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(156, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(156, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(156, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(156, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(156, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(156, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(156, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(156, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(156, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(156, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(156, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(157, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(157, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(157, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(157, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(157, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(157, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(157, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(154, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(152, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(152, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(152, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(152, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(152, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(152, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(152, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(152, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(152, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(152, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(152, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(152, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(152, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(152, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(152, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(153, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(153, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(153, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(153, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(153, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(153, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(153, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(153, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(153, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(153, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(153, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(153, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(153, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(153, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(153, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(153, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(153, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(151, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(151, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(151, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(151, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(151, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(151, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(151, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(151, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(151, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(151, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(151, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(151, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(151, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(151, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(151, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(151, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(152, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(152, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(149, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(150, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(150, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(150, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(150, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(150, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(150, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(150, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(150, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(150, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(150, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(150, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(150, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(150, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(150, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(150, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(150, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(150, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(151, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(149, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(149, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(149, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(149, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(149, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(149, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(149, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(149, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(149, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(149, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(149, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(149, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(149, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(149, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(149, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(149, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(148, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(148, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(148, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(148, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(148, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(148, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(148, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(148, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(148, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(215, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(215, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(215, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(215, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(215, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(215, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(215, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(215, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(215, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(215, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(215, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(215, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(215, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(215, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(215, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(146, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(146, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(146, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(146, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(146, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(146, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(146, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(146, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(146, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(146, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(146, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(146, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(146, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(146, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(146, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(146, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(146, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(147, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(147, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(147, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(147, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(147, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(147, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(147, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(147, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(147, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(147, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(147, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(147, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(147, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(147, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(147, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(147, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(147, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(148, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(148, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(148, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(148, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(148, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(148, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(148, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(148, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(160, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(160, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(161, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(161, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(161, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(161, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(161, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(161, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(161, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(161, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(161, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(161, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(160, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(160, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(160, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(160, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(162, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(162, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(162, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(162, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(161, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(161, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(161, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(161, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(161, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(161, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(161, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(163, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(163, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(163, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(163, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(162, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(162, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(162, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(162, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(162, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(162, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(162, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(162, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(162, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(162, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(162, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(162, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(162, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(163, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(163, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(163, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(163, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(163, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(163, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(163, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(163, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(163, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(163, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(163, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(163, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(164, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(164, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(164, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(164, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(164, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(164, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(164, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(163, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(164, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(164, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(164, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(164, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(165, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(165, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(165, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(164, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(164, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(164, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(164, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(164, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(164, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(166, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(165, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(165, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(165, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(165, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(165, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(165, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(165, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(165, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(165, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(165, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(165, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(165, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(165, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(165, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(166, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(166, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(166, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(166, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(166, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(166, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(166, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(166, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(166, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(166, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(166, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(166, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(166, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(166, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(166, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(166, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(167, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(167, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(167, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(167, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(167, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(167, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(167, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(167, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(167, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(167, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(167, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(167, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(167, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(167, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(167, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(167, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(167, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(168, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(168, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(168, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(168, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(168, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(168, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(168, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(168, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(168, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(168, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(168, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(168, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(168, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(168, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(168, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(168, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(168, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(169, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(169, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(169, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(169, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(169, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(169, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(169, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(169, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(169, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(169, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(169, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(169, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(169, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(169, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(169, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(169, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(169, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(170, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(170, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(170, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(170, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(170, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(170, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(170, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(170, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(170, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(170, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(170, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(170, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(170, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(170, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(170, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(170, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(170, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(171, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(171, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(171, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(171, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(171, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(171, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(171, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(171, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(171, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(171, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(171, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(171, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(171, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(171, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(171, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(171, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(171, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(172, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(172, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(172, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(172, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(172, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(172, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(172, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(172, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(172, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(172, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(172, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(172, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(172, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(172, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(172, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(172, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(172, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(173, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(173, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(173, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(173, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(173, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(173, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(173, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(173, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(173, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(173, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(173, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(173, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(173, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(173, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(173, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(173, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(173, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(174, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(174, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(174, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(174, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(174, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(174, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(174, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(174, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(174, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(174, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(174, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(174, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(174, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(174, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(174, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(174, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(174, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(175, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(175, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(175, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(175, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(175, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(175, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(175, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(175, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(175, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(175, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(175, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(175, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(175, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(175, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(175, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(175, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(175, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(176, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(176, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(176, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(176, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(176, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(176, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(176, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(176, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(176, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(176, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(176, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(176, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(176, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(176, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(176, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(176, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(176, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(177, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(177, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(177, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(177, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(177, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(177, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(177, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(177, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(177, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(177, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(177, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(177, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(177, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(177, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(177, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(177, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(177, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(178, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(178, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(178, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(178, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(178, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(178, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(178, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(178, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(178, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(178, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(178, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(178, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(178, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(178, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(178, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(178, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(178, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(179, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(179, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(179, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(179, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(179, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(179, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(179, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(179, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(179, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(179, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(179, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(179, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(179, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(179, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(179, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(179, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(179, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(180, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(180, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(180, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(180, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(180, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(180, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(180, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(180, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(180, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(180, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(180, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(180, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(180, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(180, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(180, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(180, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(180, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(181, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(181, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(181, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(181, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(181, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(181, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(181, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(181, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(181, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(181, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(181, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(181, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(181, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(181, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(181, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(181, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(181, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(182, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(182, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(182, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(182, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(182, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(182, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(182, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(182, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(182, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(182, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(182, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(182, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(182, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(182, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(182, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(182, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(182, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(183, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(183, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(183, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(183, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(183, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(183, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(183, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(183, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(183, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(183, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(183, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(183, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(183, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(183, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(183, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(183, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(183, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(184, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(184, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(184, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(184, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(184, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(184, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(184, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(184, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(184, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(184, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(184, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(184, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(184, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(184, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(184, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(184, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(184, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(185, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(185, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(185, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(185, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(185, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(185, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(185, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(185, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(185, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(185, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(185, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(185, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(185, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(185, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(185, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(185, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(185, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(186, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(186, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(186, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(186, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(186, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(186, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(186, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(186, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(186, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(186, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(186, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(186, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(186, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(186, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(186, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(186, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(186, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(187, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(187, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(187, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(187, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(187, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(187, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(187, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(187, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(187, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(187, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(187, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(187, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(187, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(187, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(187, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(187, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(187, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(188, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(188, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(188, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(188, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(188, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(188, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(188, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(188, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(188, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(188, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(188, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(188, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(188, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(188, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(188, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(188, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(188, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(189, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(189, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(189, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(189, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(189, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(189, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(189, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(189, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(189, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(189, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(189, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(189, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(189, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(189, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(189, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(189, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(189, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(190, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(190, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(190, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(190, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(190, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(190, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(190, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(190, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(190, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(190, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(190, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(190, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(190, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(190, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(190, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(190, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(190, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(191, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(191, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(191, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(191, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(191, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(191, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(191, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(191, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(191, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(191, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(191, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(191, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(191, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(191, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(191, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(191, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(191, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(192, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(192, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(192, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(192, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(192, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(192, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(192, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(192, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(192, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(192, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(192, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(192, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(192, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(192, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(192, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(192, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(192, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(193, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(193, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(193, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(193, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(193, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(193, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(193, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(193, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(193, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(193, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(193, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(193, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(193, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(193, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(193, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(193, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(193, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(194, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(194, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(194, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(194, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(194, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(194, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(194, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(194, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(194, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(194, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(194, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(194, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(194, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(194, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(194, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(194, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(194, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(195, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(195, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(195, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(195, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(195, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(195, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(195, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(195, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(195, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(195, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(195, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(195, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(195, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(195, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(195, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(195, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(195, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(196, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(196, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(196, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(196, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(196, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(196, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(196, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(196, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(196, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(196, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(196, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(196, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(196, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(196, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(196, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(196, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(196, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(197, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(197, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(197, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(197, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(197, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(197, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(197, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(197, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(197, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(197, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(197, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(197, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(197, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(197, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(197, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(197, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(197, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(198, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(198, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(198, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(198, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(198, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(198, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(198, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(198, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(198, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(198, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(198, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(198, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(198, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(198, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(198, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(198, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(198, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(199, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(199, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(199, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(199, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(199, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(199, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(199, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(199, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(199, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(199, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(199, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(199, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(199, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(199, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(199, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(199, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(199, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(200, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(200, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(200, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(200, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(200, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(200, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(200, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(200, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(200, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(200, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(200, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(200, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(200, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(200, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(200, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(200, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(200, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(201, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(201, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(201, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(201, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(201, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(201, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(201, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(201, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(201, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(201, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(201, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(201, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(201, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(201, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(201, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(201, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(201, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(202, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(202, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(202, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(202, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(202, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(202, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(202, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(202, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(202, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(202, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(202, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(202, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(202, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(202, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(202, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(202, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(202, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(203, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(203, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(203, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(203, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(203, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(203, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(203, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(203, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(203, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(203, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(203, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(203, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(203, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(203, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(203, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(203, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(203, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(204, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(204, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(204, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(204, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(204, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(204, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(204, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(204, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(204, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(204, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(204, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(204, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(204, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(204, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(204, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(204, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(204, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(205, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(205, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(205, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(205, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(205, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(205, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(205, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(205, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(205, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(205, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(205, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(205, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(205, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(205, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(205, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(205, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(205, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(206, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(206, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(206, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(206, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(206, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(206, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(206, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(206, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(206, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(206, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(206, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(206, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(206, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(206, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(206, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(206, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(206, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(207, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(207, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(207, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(207, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(207, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(207, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(207, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(207, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(207, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(207, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(207, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(207, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(207, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(207, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(207, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(207, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(207, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(208, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(208, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(208, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(208, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(208, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(208, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(208, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(208, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(208, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(208, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(208, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(208, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(208, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(208, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(208, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(208, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(208, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(209, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(209, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(209, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(209, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(209, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(209, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(209, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(209, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(209, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(209, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(209, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(209, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(209, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(209, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(209, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(209, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(209, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(210, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(210, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(210, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(210, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(210, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(210, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(210, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(210, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(210, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(210, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(210, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(210, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(210, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(210, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(210, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(210, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(210, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(211, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(211, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(211, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(211, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(211, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(211, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(211, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(211, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(211, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(211, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(211, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(211, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(211, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(211, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(211, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(211, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(211, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(212, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(212, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(212, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(212, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(212, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(212, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(212, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(212, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(212, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(212, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(212, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(212, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(212, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(212, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(212, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(212, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(212, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(213, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(213, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(213, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(213, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(213, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(213, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(213, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(213, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(213, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(213, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(213, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(213, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(213, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(213, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(213, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(213, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(213, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(214, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(214, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(214, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(214, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(214, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(214, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(214, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(214, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(214, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(214, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(214, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(214, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(214, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(214, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(214, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(214, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(214, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(215, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(215, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(216, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(216, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(216, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(216, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(216, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(216, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(216, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(216, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(216, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(216, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(216, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(216, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(216, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(216, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(216, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(216, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(216, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(217, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(217, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(217, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(217, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(217, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(217, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(217, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(217, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(217, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(217, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(217, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(217, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(217, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(217, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(217, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(217, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(217, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(218, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(218, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(218, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(218, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(218, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(218, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(218, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(218, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(218, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(218, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(218, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(218, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(218, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(218, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(218, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(218, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(218, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL),
	(219, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
	(219, 2, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
	(219, 3, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
	(219, 4, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
	(219, 5, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '0', '', NULL, NULL),
	(219, 6, 'allow_user_image_forum', NULL, NULL, 'forum', '0', '', NULL, NULL),
	(219, 7, 'course_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(219, 8, 'allow_learning_path_theme', NULL, NULL, 'theme', '0', '', NULL, NULL),
	(219, 9, 'allow_open_chat_window', NULL, NULL, 'chat', '0', '', NULL, NULL),
	(219, 10, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
	(219, 11, 'allow_user_view_user_list', NULL, NULL, 'user', '0', '', NULL, NULL),
	(219, 12, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '0', '', NULL, NULL),
	(219, 13, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
	(219, 14, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(219, 15, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
	(219, 16, 'allow_public_certificates', NULL, NULL, 'certificates', '0', '', NULL, NULL),
	(219, 17, 'documents_default_visibility', NULL, NULL, '', '0', '', NULL, NULL);
/*!40000 ALTER TABLE `c_course_setting` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_document
CREATE TABLE IF NOT EXISTS `c_document` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `title` varchar(255) DEFAULT NULL,
  `filetype` set('file','folder') NOT NULL DEFAULT 'file',
  `size` int(11) NOT NULL DEFAULT '0',
  `readonly` tinyint(3) unsigned NOT NULL,
  `session_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_document: 501 rows
DELETE FROM `c_document`;
/*!40000 ALTER TABLE `c_document` DISABLE KEYS */;
INSERT INTO `c_document` (`c_id`, `id`, `path`, `comment`, `title`, `filetype`, `size`, `readonly`, `session_id`) VALUES
	(1, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(1, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(1, 19, '/learning_path/Dreamweaver_y_HTML/Laboratorio_1/Laboratorio_No_1.docx_DELETED_19', '', 'Laboratorio_No_1', 'file', 223183, 0, 0),
	(1, 3, '/learning_path', '', 'Lecciones', 'folder', 0, 0, 0),
	(1, 4, '/certificates', '', 'Certificados', 'folder', 0, 0, 0),
	(1, 5, '/shared_folder/sf_user_1', '', 'Martin, Trujillo Bustamante', 'folder', 0, 0, 0),
	(1, 6, '/learning_path/Clase_01_DELETED_6', '', 'Clase 01', 'folder', 0, 0, 0),
	(1, 7, '/clase_javascript.doc_DELETED_7', '', 'clase_javascript', 'file', 56832, 0, 0),
	(1, 8, '/learning_path/Clase_01/Clase_javascript.doc_DELETED_8', '', 'Clase_javascript', 'file', 3869696, 0, 0),
	(1, 9, '/shared_folder/sf_user_4', '', 'Alumno, alumno', 'folder', 0, 0, 0),
	(1, 10, '/learning_path/Introduccion_CSS', '', '02 Introducción CSS', 'folder', 4096, 0, 0),
	(1, 11, '/learning_path/Dreamweaver_y_HTML', '', '01 Introducción a HTML', 'folder', 4096, 0, 0),
	(1, 12, '/learning_path/03_Javascript', '', '03 Javascript', 'folder', 0, 0, 0),
	(1, 13, '/learning_path/03_Javascript/Clase_javascript.doc_DELETED_13', '', 'Clase_javascript', 'file', 3869696, 0, 0),
	(1, 14, '/learning_path/Dreamweaver_y_HTML/Introduccion_Html.pdf', '', 'Introduccion_Html', 'file', 216303, 0, 0),
	(1, 15, '/chat_files/messages-2015-09-17.log.html', '', 'messages-2015-09-17.log.html', 'file', 362, 0, 0),
	(1, 18, '/learning_path/Dreamweaver_y_HTML/Laboratorio_1', '', 'Laboratorio Nª1', 'folder', 4096, 0, 0),
	(1, 17, '/shared_folder/sf_user_2', '', ',', 'folder', 0, 0, 0),
	(1, 16, '/shared_folder/sf_user_5', '', 'Bustamante, Yolanda', 'folder', 0, 0, 0),
	(3, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(3, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(3, 3, '/certificates', '', 'Certificados', 'folder', 0, 0, 0),
	(3, 4, '/shared_folder/sf_user_3', '', 'Figueroa Maldonado, Edward', 'folder', 0, 0, 0),
	(3, 5, '/learning_path', '', 'Lecciones', 'folder', 0, 0, 0),
	(3, 6, '/certificates/Certificado_predeterminado.html', '', 'Certificado predeterminado', 'file', 6652, 0, 0),
	(3, 7, '/chat_files/messages-2015-09-18.log.html', '', 'messages-2015-09-18.log.html', 'file', 0, 0, 0),
	(1, 20, '/learning_path/Dreamweaver_y_HTML/Laboratorio_1/archivos_DELETED_20', '', 'archivos', 'folder', 0, 0, 0),
	(1, 21, '/learning_path/Dreamweaver_y_HTML/Laboratorio_1/archivos.zip_DELETED_21', '', 'archivos', 'file', 2639511, 0, 0),
	(1, 22, '/learning_path/Dreamweaver_y_HTML/Laboratorio_1/Laboratorio_No_1.docx', '', 'Laboratorio_No_1', 'file', 4339998, 0, 0),
	(1, 23, '/learning_path/Dreamweaver_y_HTML/Laboratorio_1/Laboratorio_No2.docx_DELETED_23', '', 'Laboratorio_No2', 'file', 4751843, 0, 0),
	(1, 24, '/learning_path/Dreamweaver_y_HTML/Laboratorio_Na2', '', 'Laboratorio Nª2', 'folder', 0, 0, 0),
	(1, 25, '/learning_path/Dreamweaver_y_HTML/Practica_Calificada', '', 'Practica Calificada', 'folder', 0, 0, 0),
	(1, 26, '/learning_path/Dreamweaver_y_HTML/Laboratorio_Na2/Laboratorio_No2.docx', '', 'Laboratorio_No2', 'file', 4751843, 0, 0),
	(1, 27, '/learning_path/Dreamweaver_y_HTML/Practica_Calificada/Practica_calificada_1.docx', '', 'Practica_calificada_1', 'file', 4174292, 0, 0),
	(1, 28, '/learning_path/Introduccion_CSS/Laboratorio_Na4', '', 'Laboratorio Nª4', 'folder', 0, 0, 0),
	(1, 29, '/learning_path/Introduccion_CSS/Laboratorio_Na5', '', 'Laboratorio Nª5', 'folder', 0, 0, 0),
	(1, 30, '/learning_path/Introduccion_CSS/Practica_Calificada_2', '', 'Practica Calificada 2', 'folder', 0, 0, 0),
	(1, 31, '/learning_path/Introduccion_CSS/Practica_Calificada_2/Practica_Calificada_2.docx', '', 'Practica_Calificada_2', 'file', 373611, 0, 0),
	(1, 32, '/learning_path/03_Javascript/Laboratorio_Na6', '', 'Laboratorio Nª6', 'folder', 0, 0, 0),
	(1, 33, '/learning_path/03_Javascript/Laboratorio_Na6/Laboratorio_No_6.docx_DELETED_33', '', 'Laboratorio_No_6', 'file', 7049060, 0, 0),
	(1, 34, '/learning_path/Introduccion_CSS/Laboratorio_Na5/Laboratorio_5.docx', '', 'Laboratorio_5', 'file', 12211265, 0, 0),
	(1, 35, '/learning_path/Introduccion_CSS/Laboratorio_Na4/Laboratorio_4.docx', '', 'Laboratorio_4', 'file', 12336269, 0, 0),
	(1, 36, '/learning_path/Dreamweaver_y_HTML/Laboratorio_1/archivos.zip_DELETED_36', '', 'archivos', 'file', 1009207, 0, 0),
	(1, 37, '/learning_path/Dreamweaver_y_HTML/Laboratorio_1/archivos.zip', '', 'archivos', 'file', 1017964, 0, 0),
	(1, 38, '/learning_path/Dreamweaver_y_HTML/Laboratorio_Na2/archivos.zip', '', 'archivos', 'file', 2889315, 0, 0),
	(1, 39, '/learning_path/Dreamweaver_y_HTML/Practica_Calificada/archivos.zip', '', 'archivos', 'file', 2124539, 0, 0),
	(1, 40, '/learning_path/Introduccion_CSS/Laboratorio_Na4/archivos.zip', '', 'archivos', 'file', 7155, 0, 0),
	(1, 41, '/learning_path/Introduccion_CSS/Laboratorio_Na5/archivos.zip', '', 'archivos', 'file', 26850, 0, 0),
	(1, 42, '/learning_path/03_Javascript/Laboratorio_Na6/Clase_javascript.doc', '', 'Clase_javascript', 'file', 3869696, 0, 0),
	(1, 43, '/learning_path/03_Javascript/Laboratorio_Na6/archivos.zip', '', 'archivos', 'file', 25230, 0, 0),
	(1, 44, '/learning_path/03_Javascript/Laboratorio_Na7', '', 'Laboratorio Nª7', 'folder', 0, 0, 0),
	(1, 45, '/learning_path/03_Javascript/Laboratorio_Na7/Laboratorio_No_7.docx', '', 'Laboratorio_No_7', 'file', 7049060, 0, 0),
	(1, 46, '/certificates/Certificado_predeterminado.html', '', 'Certificado predeterminado', 'file', 6652, 0, 0),
	(1, 47, '/learning_path/04_PHP', '', '04 PHP', 'folder', 0, 0, 0),
	(1, 48, '/learning_path/04_PHP/Laboratorio_Na8', '', 'Laboratorio Nª8 - Fundamentos', 'folder', 4096, 0, 0),
	(1, 49, '/learning_path/04_PHP/Laboratorio_Na8/Laboratorio_No8.docx', '', 'Laboratorio_No8', 'file', 1317050, 0, 0),
	(1, 50, '/learning_path/04_PHP/Laboratorio_Na8/PHP_fundamentos.pptx', '', 'PHP_fundamentos', 'file', 75783, 0, 0),
	(1, 51, '/shared_folder/sf_user_0', '', ',', 'folder', 0, 0, 0),
	(3, 8, '/Presentaciones_DELETED_8', '', 'Presentaciones', 'folder', 0, 0, 0),
	(3, 9, '/Presentaciones/json.pdf_DELETED_9', '', 'json', 'file', 3149382, 0, 0),
	(3, 10, '/Presentaciones/manual-canvas-html5.pdf_DELETED_10', 'HTML 5', 'manual-canvas-html5', 'file', 487449, 0, 0),
	(3, 11, '/Presentaciones/poligonos-1-.pdf_DELETED_11', 'Poligonos', 'poligonos-1-', 'file', 580964, 0, 0),
	(3, 12, '/Presentaciones/poligonos-1-_1.pdf_DELETED_12', 'Poligonos', 'poligonos-1-_1', 'file', 580964, 0, 0),
	(3, 13, '/Presentaciones/poligonos-1-_2.pdf_DELETED_13', '', 'poligonos-1-_2', 'file', 580964, 0, 0),
	(3, 14, '/Presentaciones/cuadrilateros-1-.pdf_DELETED_14', '', 'cuadrilateros-1-', 'file', 343982, 0, 0),
	(3, 15, '/Presentaciones/TRIANGULOS-1-.pdf_DELETED_15', '', 'TRIANGULOS-1-', 'file', 393256, 0, 0),
	(3, 16, '/css', '', 'css', 'folder', 0, 0, 0),
	(3, 17, '/css/frames.css', '', 'frames.css', 'file', 20834, 0, 0),
	(3, 18, '/Cuadrialteros.html_DELETED_18', '', 'Cuadrialteros', 'file', 248, 0, 0),
	(3, 19, '/Presentaciones/css_DELETED_19', '', 'css', 'folder', 0, 0, 0),
	(3, 20, '/Presentaciones/css/frames.css_DELETED_20', '', 'frames.css', 'file', 20834, 0, 0),
	(3, 21, '/Presentaciones/Circunferencia.html_DELETED_21', '', 'Circunferencia', 'file', 236, 0, 0),
	(3, 22, '/Geometria_del_Espacio.html_DELETED_22', '', 'Geometria del Espacio', 'file', 2310, 0, 0),
	(3, 23, '/Imagenes_DELETED_23', '', 'Imagenes', 'folder', 0, 0, 0),
	(3, 24, '/Imagenes/imagen1.png_DELETED_24', '', 'imagen1', 'file', 6644, 0, 0),
	(3, 25, '/Imagenes/imagen2.jpg_DELETED_25', '', 'imagen2', 'file', 8670, 0, 0),
	(3, 26, '/Imagenes/imagen3.jpg_DELETED_26', '', 'imagen3', 'file', 10840, 0, 0),
	(1, 52, '/learning_path/04_PHP/Laboratorio_Na9/Ejercicios_propuestos.docx', '', '01 Ejercicios_propuestos_Variables', 'file', 14827, 0, 0),
	(1, 53, '/learning_path/04_PHP/Laboratorio_Na10/Ejercicios_propuesto___Arrays.docx', '', 'Ejercicios_Resueltos_Arrays', 'file', 16037, 0, 0),
	(1, 54, '/learning_path/04_PHP/Laboratorio_Na8/archivos', '', 'archivos', 'folder', 0, 0, 0),
	(1, 55, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo1f.phps', '', 'ejemplo1f', 'file', 151, 0, 0),
	(1, 56, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo1g.phps', '', 'ejemplo1g', 'file', 258, 0, 0),
	(1, 57, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo1h.phps', '', 'ejemplo1h', 'file', 198, 0, 0),
	(1, 58, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo1i.phps', '', 'ejemplo1i', 'file', 193, 0, 0),
	(1, 59, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo1j.phps', '', 'ejemplo1j', 'file', 213, 0, 0),
	(1, 60, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo1k.phps', '', 'ejemplo1k', 'file', 184, 0, 0),
	(1, 61, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo1o.phps', '', 'ejemplo1o', 'file', 217, 0, 0),
	(1, 62, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo1l.phps', '', 'ejemplo1l', 'file', 830, 0, 0),
	(1, 63, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo2a.phps_DELETED_63', '', 'ejemplo2a', 'file', 345, 0, 0),
	(1, 64, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo2b.phps_DELETED_64', '', 'ejemplo2b', 'file', 136, 0, 0),
	(1, 65, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo2c.phps_DELETED_65', '', 'ejemplo2c', 'file', 140, 0, 0),
	(1, 66, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo2d.phps_DELETED_66', '', 'ejemplo2d', 'file', 179, 0, 0),
	(1, 67, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo2e.phps_DELETED_67', '', 'ejemplo2e', 'file', 232, 0, 0),
	(1, 68, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo2f.phps_DELETED_68', '', 'ejemplo2f', 'file', 154, 0, 0),
	(1, 69, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo2g.phps_DELETED_69', '', 'ejemplo2g', 'file', 114, 0, 0),
	(1, 70, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo2h.phps_DELETED_70', '', 'ejemplo2h', 'file', 108, 0, 0),
	(1, 71, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo2i.phps_DELETED_71', '', 'ejemplo2i', 'file', 94, 0, 0),
	(1, 72, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo2k.phps_DELETED_72', '', 'ejemplo2k', 'file', 143, 0, 0),
	(1, 73, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo2l.phps_DELETED_73', '', 'ejemplo2l', 'file', 379, 0, 0),
	(1, 74, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo2m.phps_DELETED_74', '', 'ejemplo2m', 'file', 527, 0, 0),
	(1, 75, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo1a.phps', '', 'ejemplo1a', 'file', 414, 0, 0),
	(1, 76, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo1b.phps', '', 'ejemplo1b', 'file', 109, 0, 0),
	(1, 77, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo1c.phps', '', 'ejemplo1c', 'file', 184, 0, 0),
	(1, 78, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo1d.phps', '', 'ejemplo1d', 'file', 255, 0, 0),
	(1, 79, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo1e.phps', '', 'ejemplo1e', 'file', 305, 0, 0),
	(3, 27, '/Presentaciones/Problema_58.exe_DELETED_27', '', 'Problema_58', 'file', 1314247, 0, 0),
	(3, 28, '/Presentaciones/Problema_60.exe_DELETED_28', '', 'Problema_60', 'file', 1307528, 0, 0),
	(3, 29, '/Presentaciones/Problema_59.exe_DELETED_29', '', 'Problema_59', 'file', 2106675, 0, 0),
	(3, 30, '/Presentaciones/Problema_61.exe_DELETED_30', '', 'Problema_61', 'file', 2760187, 0, 0),
	(1, 80, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo3a.phps', '', 'ejemplo3a', 'file', 429, 0, 0),
	(1, 81, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo4a.phps', '', 'ejemplo4a', 'file', 378, 0, 0),
	(1, 82, '/learning_path/04_PHP/Laboratorio_Na8/archivos/ejemplo5a.phps', '', 'ejemplo5a', 'file', 274, 0, 0),
	(3, 31, '/images', '', 'images', 'folder', 0, 0, 0),
	(3, 32, '/images/quiz-6.jpg', '', 'quiz-6.jpg', 'file', 14407, 0, 0),
	(3, 33, '/HotPotatoes_files', '', 'Archivos HotPotatoes', 'folder', 0, 0, 0),
	(3, 34, '/learning_path/Semejanza_de_Triangulos', '', 'Semejanza de Triangulos', 'folder', 0, 0, 0),
	(3, 35, '/learning_path/Semejanza_de_Triangulos/Que_es_la_semejanza_de_Triangulos.html', '', 'Que es la semejanza de Triangulos', 'file', 286, 0, 0),
	(3, 36, '/learning_path/Semejanza_de_Triangulos/Proporcionalidad.html', '', 'Concepto de Proporcionalidad', 'file', 234, 0, 0),
	(3, 37, '/learning_path/Relaciones_Metricas_en_el_Triangulo_Rectangulo', '', 'Relaciones Metricas en el Triangulo Rectangulo', 'folder', 0, 0, 0),
	(3, 38, '/learning_path/Relaciones_Metricas_en_el_Triangulo_Rectangulo/Concepto_de_Triangulo_Rectangulo.html', '', 'Concepto de Triangulo Rectangulo', 'file', 254, 0, 0),
	(1, 83, '/learning_path/04_PHP/Laboratorio_Na11/Ejercicios_propuestos_-_Estructuras_condicionales.docx_DELETED_83', '', '03 Ejercicios_propuestos_Condicionales', 'file', 14090, 0, 0),
	(1, 84, '/learning_path/04_PHP/Laboratorio_Na11/Ejercicios_propuestos_-_Miscelania.docx_DELETED_84', '', '04 Ejercicios_propuestos_Miscelania', 'file', 12915, 0, 0),
	(4, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(4, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(4, 3, '/certificates', '', 'Certificados', 'folder', 0, 0, 0),
	(4, 4, '/shared_folder/sf_user_1', '', 'Martin, Trujillo Bustamante', 'folder', 0, 0, 0),
	(4, 5, '/learning_path', '', 'Lecciones', 'folder', 0, 0, 0),
	(4, 6, '/certificates/Certificado_predeterminado.html', '', 'Certificado predeterminado', 'file', 6652, 0, 0),
	(4, 7, '/learning_path/css', '', 'css', 'folder', 0, 0, 0),
	(4, 8, '/learning_path/css/frames.css', '', 'frames.css', 'file', 22491, 0, 0),
	(4, 9, '/learning_path/2._Comandos_basicos/Comando_basicos.html_DELETED_9', '', 'Comando básicos', 'file', 22393, 0, 0),
	(4, 10, '/learning_path/3._Servicios/El_servidor_de_base_de_datos_Mysql.html_DELETED_10', '', 'Servidor de base de datos Mysql', 'file', 9700, 0, 0),
	(4, 11, '/learning_path/3._Servicios/Servidor_de_dominio_BIND.html_DELETED_11', '', 'Servidor de dominio BIND', 'file', 6785, 0, 0),
	(4, 12, '/learning_path/3._Servicios/Servidor_de_correo.html_DELETED_12', '', 'Servidor de correo', 'file', 8740, 0, 0),
	(4, 13, '/learning_path/Instalacion_de_Vmware_8_DELETED_13', '', 'Instalación de Vmware 8', 'folder', 0, 0, 0),
	(4, 14, '/learning_path/Videos/Instalacion_de_Vmware_8.html', '', 'Instalación de Vmware 8', 'file', 481, 0, 0),
	(4, 15, '/learning_path/Videos', '', '1. Instalación', 'folder', 4096, 0, 0),
	(4, 16, '/shared_folder/sf_user_2', '', ',', 'folder', 0, 0, 0),
	(4, 17, '/learning_path/Videos/Instalacion_de_Ubuntu_14.0.html', '', 'Instalación de Ubuntu 14.0', 'file', 485, 0, 0),
	(4, 18, '/learning_path/2._Comandos_basicos_DELETED_18', '', '2. Comandos básicos', 'folder', 0, 0, 0),
	(4, 19, '/learning_path/3._Servicios_DELETED_19', '', '3. Servicios', 'folder', 0, 0, 0),
	(4, 20, '/learning_path/Seminario_de_Linux.docx', '', 'Seminario_de_Linux', 'file', 3966430, 0, 0),
	(1, 85, '/links_linux.txt_DELETED_85', '', 'links_linux', 'file', 665, 0, 0),
	(1, 86, '/learning_path/04_PHP/Laboratorio_Na9', '', 'Laboratorio Nª9 - Variables', 'folder', 4096, 0, 0),
	(1, 87, '/learning_path/04_PHP/Laboratorio_Na10', '', 'Laboratorio Nª10 - Arreglos', 'folder', 4096, 0, 0),
	(1, 88, '/learning_path/04_PHP/Laboratorio_Na11', '', 'Laboratorio Nª11 - Estructuras de decisión', 'folder', 4096, 0, 0),
	(1, 89, '/learning_path/04_PHP/Laboratorio_Na10/archivos', '', 'archivos', 'folder', 0, 0, 0),
	(1, 90, '/learning_path/04_PHP/Laboratorio_Na10/archivos/ejemplo2a.phps', '', 'ejemplo2a', 'file', 345, 0, 0),
	(1, 91, '/learning_path/04_PHP/Laboratorio_Na10/archivos/ejemplo2b.phps', '', 'ejemplo2b', 'file', 136, 0, 0),
	(1, 92, '/learning_path/04_PHP/Laboratorio_Na10/archivos/ejemplo2c.phps', '', 'ejemplo2c', 'file', 140, 0, 0),
	(1, 93, '/learning_path/04_PHP/Laboratorio_Na10/archivos/ejemplo2d.phps', '', 'ejemplo2d', 'file', 179, 0, 0),
	(1, 94, '/learning_path/04_PHP/Laboratorio_Na10/archivos/ejemplo2e.phps', '', 'ejemplo2e', 'file', 232, 0, 0),
	(1, 95, '/learning_path/04_PHP/Laboratorio_Na10/archivos/ejemplo2f.phps', '', 'ejemplo2f', 'file', 154, 0, 0),
	(1, 96, '/learning_path/04_PHP/Laboratorio_Na10/archivos/ejemplo2g.phps', '', 'ejemplo2g', 'file', 114, 0, 0),
	(1, 97, '/learning_path/04_PHP/Laboratorio_Na10/archivos/ejemplo2h.phps', '', 'ejemplo2h', 'file', 108, 0, 0),
	(1, 98, '/learning_path/04_PHP/Laboratorio_Na10/archivos/ejemplo2i.phps', '', 'ejemplo2i', 'file', 94, 0, 0),
	(1, 99, '/learning_path/04_PHP/Laboratorio_Na10/archivos/ejemplo2k.phps', '', 'ejemplo2k', 'file', 143, 0, 0),
	(1, 100, '/learning_path/04_PHP/Laboratorio_Na10/archivos/ejemplo2l.phps', '', 'ejemplo2l', 'file', 379, 0, 0),
	(1, 101, '/learning_path/04_PHP/Laboratorio_Na10/archivos/ejemplo2m.phps', '', 'ejemplo2m', 'file', 527, 0, 0),
	(1, 102, '/learning_path/04_PHP/Laboratorio_Na11/Ejercicios_resueltos_-_Estructuras_condicionales.docx', '', 'Ejercicios-Estructuras_condicionales', 'file', 14296, 0, 0),
	(1, 103, '/learning_path/04_PHP/Laboratorio_Na10/Examen_PHP.docx', '', 'Examen_PHP', 'file', 12959, 0, 0),
	(3, 39, '/Buenos_Estudiantes_groupdocs__0__1', '', 'Buenos_Estudiantes_groupdocs', 'folder', 0, 0, 0),
	(3, 40, '/chat_files/messages-2015-10-21.log.html', '', 'messages-2015-10-21.log.html', 'file', 0, 0, 0),
	(3, 41, '/chat_files/messages-2015-10-21-1.log.html', '', 'messages-2015-10-21-1.log.html', 'file', 354, 0, 0),
	(1, 104, '/learning_path/04_PHP/Laboratorio_Na11/Ejercicios-_Estructuras_condicionales-resuelto.docx', '', 'Ejercicios-_Estructuras_condicionales-resuelto', 'file', 1479008, 0, 0),
	(1, 105, '/learning_path/04_PHP/Laboratorio_Na11/archivos', '', 'archivos', 'folder', 0, 0, 0),
	(1, 106, '/learning_path/04_PHP/Laboratorio_Na11/archivos/ejemplo1.phps', '', 'ejemplo1', 'file', 431, 0, 0),
	(1, 107, '/learning_path/04_PHP/Laboratorio_Na11/archivos/ejemplo5.phps', '', 'ejemplo5', 'file', 332, 0, 0),
	(1, 108, '/learning_path/04_PHP/Laboratorio_Na11/archivos/ejemplo6.phps', '', 'ejemplo6', 'file', 835, 0, 0),
	(1, 109, '/learning_path/04_PHP/Laboratorio_Na11/archivos/ejemplo4.phps', '', 'ejemplo4', 'file', 421, 0, 0),
	(1, 110, '/learning_path/04_PHP/Laboratorio_Na11/archivos/ejemplo3.phps', '', 'ejemplo3', 'file', 387, 0, 0),
	(1, 111, '/learning_path/04_PHP/Laboratorio_Na11/archivos/ejemplo2.phps', '', 'ejemplo2', 'file', 404, 0, 0),
	(1, 112, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control', '', 'Laboratorio N°12 - Estructuras de control', 'folder', 0, 0, 0),
	(1, 113, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control/Ejercicios-Estructuras_de_control.docx', '', 'Ejercicios-Estructuras_de_control', 'file', 14973, 0, 0),
	(1, 114, '/shared_folder/sf_user_8', '', 'Delgado Garay, Teresa', 'folder', 0, 0, 0),
	(1, 115, '/shared_folder/sf_user_7', '', 'ney, ney', 'folder', 0, 0, 0),
	(1, 116, '/shared_folder/sf_user_6', '', 'Olivos Diaz, Yesmith', 'folder', 0, 0, 0),
	(3, 42, '/shared_folder/sf_user_9', '', 'perez, juan', 'folder', 0, 0, 0),
	(3, 43, '/shared_folder/sf_user_10', '', 'tapia, miguel', 'folder', 0, 0, 0),
	(3, 44, '/Semana_8_DELETED_44', '', 'Semana 8', 'folder', 0, 0, 0),
	(3, 45, '/Semana_8/AREAS_REGIONES_PLANAS-1-.pdf_DELETED_45', '', 'AREAS_REGIONES_PLANAS-1-', 'file', 951435, 0, 0),
	(5, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(5, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(3, 46, '/Primer_Escaneo', '', 'Primer Escaneo', 'folder', 0, 0, 0),
	(3, 47, '/Segundo_Escaneo', '', 'Segundo Escaneo', 'folder', 0, 0, 0),
	(3, 48, '/Tercer_Escaneo_Semana_IV_Poligonos', '', 'Tercer Escaneo Semana IV Poligonos', 'folder', 0, 0, 0),
	(3, 49, '/Semana_5', '', 'Semana 5', 'folder', 0, 0, 0),
	(3, 50, '/Semana_6', '', 'Semana 6', 'folder', 0, 0, 0),
	(3, 51, '/Semana_7', '', 'Semana 7', 'folder', 0, 0, 0),
	(3, 52, '/PC_1', '', 'PC 1', 'folder', 0, 0, 0),
	(3, 53, '/PC_2', '', 'PC 2', 'folder', 0, 0, 0),
	(3, 54, '/Primer_Escaneo/Primer_Escaneo.zip', '', 'Primer_Escaneo', 'file', 2245503, 0, 0),
	(3, 55, '/Segundo_Escaneo/Segundo_Escaneo.zip', '', 'Segundo_Escaneo', 'file', 1056174, 0, 0),
	(3, 56, '/Tercer_Escaneo_Semana_IV_Poligonos/Tercer_Escaneo_Semana_IV_Poligonos.zip', '', 'Tercer_Escaneo_Semana_IV_Poligonos', 'file', 547031, 0, 0),
	(3, 57, '/Semana_5/Semana_5.zip', '', 'Semana_5', 'file', 1537646, 0, 0),
	(3, 58, '/Semana_6/Semana_6.zip', '', 'Semana_6', 'file', 615825, 0, 0),
	(3, 59, '/Semana_7/Semana_7.zip', '', 'Semana_7', 'file', 1879168, 0, 0),
	(3, 60, '/PC_1/PC1.zip', '', 'PC1', 'file', 732777, 0, 0),
	(3, 61, '/PC_2/PC2.zip', '', 'PC2', 'file', 426669, 0, 0),
	(5, 3, '/certificates', '', 'Certificados', 'folder', 0, 0, 0),
	(5, 4, '/shared_folder/sf_user_3', '', 'Figueroa Maldonado, Edward', 'folder', 0, 0, 0),
	(5, 5, '/Primer_Escaneo', '', 'Primer Escaneo', 'folder', 0, 0, 0),
	(5, 6, '/Segundo_Escaneo', '', 'Segundo Escaneo', 'folder', 0, 0, 0),
	(5, 7, '/Tercer_Escaneo_Semana_IV_Poligonos', '', 'Tercer Escaneo Semana IV Poligonos', 'folder', 0, 0, 0),
	(5, 8, '/Semana_5', '', 'Semana 5', 'folder', 0, 0, 0),
	(5, 9, '/Semana_6', '', 'Semana 6', 'folder', 0, 0, 0),
	(5, 10, '/Semana_7', '', 'Semana 7', 'folder', 0, 0, 0),
	(5, 11, '/PC_1', '', 'PC 1', 'folder', 0, 0, 0),
	(5, 12, '/PC_2', '', 'PC 2', 'folder', 0, 0, 0),
	(5, 13, '/Primer_Escaneo/Primer_Escaneo.zip', '', 'Primer_Escaneo', 'file', 2245503, 0, 0),
	(5, 14, '/Segundo_Escaneo/Segundo_Escaneo.zip', '', 'Segundo_Escaneo', 'file', 1056174, 0, 0),
	(5, 15, '/Tercer_Escaneo_Semana_IV_Poligonos/Tercer_Escaneo_Semana_IV_Poligonos.zip', '', 'Tercer_Escaneo_Semana_IV_Poligonos', 'file', 547031, 0, 0),
	(5, 16, '/Semana_5/Semana_5.zip', '', 'Semana_5', 'file', 1537646, 0, 0),
	(5, 17, '/Semana_6/Semana_6.zip', '', 'Semana_6', 'file', 615825, 0, 0),
	(5, 18, '/Semana_7/Semana_7.zip', '', 'Semana_7', 'file', 1879168, 0, 0),
	(5, 19, '/PC_1/PC1.zip', '', 'PC1', 'file', 732777, 0, 0),
	(5, 20, '/PC_2/PC2.zip', '', 'PC2', 'file', 426669, 0, 0),
	(1, 117, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control/Ejercicios-Estructuras_de_control_-_resuelto.docx', '', 'Ejercicios-Estructuras_de_control_-_resuelto', 'file', 2371630, 0, 0),
	(1, 118, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control/archivos', '', 'archivos', 'folder', 0, 0, 0),
	(1, 119, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control/archivos/ejemplo2.phps', '', 'ejemplo2', 'file', 204, 0, 0),
	(1, 120, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control/archivos/ejemplo3.phps', '', 'ejemplo3', 'file', 94, 0, 0),
	(1, 121, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control/archivos/ejemplo4.phps', '', 'ejemplo4', 'file', 101, 0, 0),
	(1, 122, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control/archivos/ejemplo7.phps', '', 'ejemplo7', 'file', 444, 0, 0),
	(1, 123, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control/archivos/ejemplo6.phps', '', 'ejemplo6', 'file', 112, 0, 0),
	(1, 124, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control/archivos/ejemplo5.phps', '', 'ejemplo5', 'file', 144, 0, 0),
	(1, 125, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control/archivos/ejemplo8.phps', '', 'ejemplo8', 'file', 176, 0, 0),
	(1, 126, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control/archivos/ejemplo9.phps', '', 'ejemplo9', 'file', 161, 0, 0),
	(1, 127, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control/archivos/ejemplo10.phps', '', 'ejemplo10', 'file', 152, 0, 0),
	(1, 128, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control/archivos/ejemplo1.phps', '', 'ejemplo1', 'file', 93, 0, 0),
	(1, 129, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control/Practica_Domiciliaria.docx_DELETED_129', '', 'Practica_Domiciliaria', 'file', 14270, 0, 0),
	(4, 21, '/shared_folder/sf_user_0', '', ',', 'folder', 0, 0, 0),
	(3, 62, '/shared_folder/sf_user_33', '', 'Espinoza Valdez, Angel Leonardo', 'folder', 0, 0, 0),
	(1, 130, '/shared_folder/sf_user_33', '', 'Espinoza Valdez, Angel Leonardo', 'folder', 0, 0, 0),
	(3, 63, '/shared_folder/sf_user_20', '', 'Argumanis Aponte, Marko Elias', 'folder', 0, 0, 0),
	(3, 64, '/shared_folder/sf_user_37', '', 'Gutierrez Burgos, Jaime', 'folder', 0, 0, 0),
	(1, 131, '/shared_folder/sf_user_20', '', 'Argumanis Aponte, Marko Elias', 'folder', 0, 0, 0),
	(3, 65, '/shared_folder/sf_user_47', '', 'Barragan Aromi, Samuel Arnulfo', 'folder', 0, 0, 0),
	(1, 132, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control/Practica_Domiciliaria.docx', '', 'Practica_Domiciliaria', 'file', 12668, 0, 0),
	(3, 66, '/chat_files/messages-2015-10-30.log.html', '', 'messages-2015-10-30.log.html', 'file', 0, 0, 0),
	(3, 67, '/Geometria_Moderna_Moise.pdf', '', 'Geometria_Moderna_Moise', 'file', 26709166, 0, 0),
	(3, 68, '/chat_files/messages-2015-11-01.log.html', '', 'messages-2015-11-01.log.html', 'file', 0, 0, 0),
	(3, 69, '/shared_folder/sf_user_36', '', 'Soncco Veliz, Andy Sinoe', 'folder', 0, 0, 0),
	(3, 70, '/Semana_8', '', 'Semana 8', 'folder', 0, 0, 0),
	(3, 71, '/Semana_8/Semana_8.zip', '', 'Semana_8', 'file', 2072519, 0, 0),
	(1, 133, '/learning_path/04_PHP/Laboratorio_Na13_-_Conexion_a_la_Base_de_Datos', '', 'Laboratorio Nº13 - Conexion a la Base de Datos', 'folder', 4096, 0, 0),
	(1, 134, '/learning_path/04_PHP/Laboratorio_Na13_-_Conexion_a_la_Base_de_Datos/tienda.sql', '', 'tienda', 'file', 2430, 0, 0),
	(1, 135, '/learning_path/04_PHP/Laboratorio_Na13_-_Conexion_a_la_Base_de_Datos/Ejercicios_de_MySql.docx', '', 'Ejercicios_de_MySql', 'file', 16788, 0, 0),
	(1, 136, '/learning_path/04_PHP/Laboratorio_Na13_-_Conexion_a_la_Base_de_Datos/Practica_Domiciliaria_2.docx', '', 'Practica_Domiciliaria_2', 'file', 13472, 0, 0),
	(1, 137, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control/Ejercicios-Estructuras_de_control_-_resuelto_-_while.docx', '', 'Ejercicios-Estructuras_de_control_-_resuelto_-_while', 'file', 2111477, 0, 0),
	(1, 138, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control/archivos_2', '', 'archivos 2', 'folder', 0, 0, 0),
	(1, 139, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control/archivos_2/ejercicio5.phps', '', 'ejercicio5', 'file', 123, 0, 0),
	(1, 140, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control/archivos_2/ejercicio9.phps', '', 'ejercicio9', 'file', 94, 0, 0),
	(1, 141, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control/archivos_2/ejercicio6.phps', '', 'ejercicio6', 'file', 100, 0, 0),
	(1, 142, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control/archivos_2/ejercicio4.phps', '', 'ejercicio4', 'file', 101, 0, 0),
	(1, 143, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control/archivos_2/ejercicio7.phps', '', 'ejercicio7', 'file', 457, 0, 0),
	(1, 144, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control/archivos_2/ejercicio2.phps', '', 'ejercicio2', 'file', 169, 0, 0),
	(1, 145, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control/archivos_2/ejercicio3.phps', '', 'ejercicio3', 'file', 87, 0, 0),
	(1, 146, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control/archivos_2/ejercicio8.phps', '', 'ejercicio8', 'file', 151, 0, 0),
	(1, 147, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control/archivos_2/ejercicio10.phps', '', 'ejercicio10', 'file', 159, 0, 0),
	(1, 148, '/learning_path/04_PHP/Laboratorio_Ndeg12_-_Estructuras_de_control/archivos_2/ejercicio1.phps', '', 'ejercicio1', 'file', 116, 0, 0),
	(3, 72, '/shared_folder/sf_user_29', '', 'Mego Solano, Manuel Gerardo', 'folder', 0, 0, 0),
	(3, 73, '/chat_files/messages-2015-11-02.log.html', '', 'messages-2015-11-02.log.html', 'file', 0, 0, 0),
	(3, 74, '/shared_folder/sf_user_45', '', 'Ramirez Amaya, Abraham', 'folder', 0, 0, 0),
	(3, 75, '/shared_folder/sf_user_48', '', 'Curro Villaorduña, Deyvis Bryan', 'folder', 0, 0, 0),
	(3, 76, '/chat_files/messages-2015-11-03.log.html', '', 'messages-2015-11-03.log.html', 'file', 0, 0, 0),
	(3, 77, '/shared_folder/sf_user_40', '', 'Romero Huamani, Gustavo Enrique', 'folder', 0, 0, 0),
	(3, 78, '/shared_folder/sf_user_15', '', 'Lorena Huamani, Christian Jaime', 'folder', 0, 0, 0),
	(3, 79, '/chat_files/messages-2015-11-04.log.html', '', 'messages-2015-11-04.log.html', 'file', 0, 0, 0),
	(1, 149, '/learning_path/04_PHP/Laboratorio_Na13_-_Conexion_a_la_Base_de_Datos/Ejercicios_de_MySql-Resuelto.docx', '', 'Ejercicios_de_MySql-Resuelto', 'file', 3321937, 0, 0),
	(3, 80, '/shared_folder/sf_user_46', '', 'Miranda Gonzales, Katherine', 'folder', 0, 0, 0),
	(1, 150, '/learning_path/04_PHP/Laboratorio_Na13_-_Conexion_a_la_Base_de_Datos/peliculas.sql', '', 'peliculas', 'file', 771222, 0, 0),
	(3, 81, '/chat_files/messages-2015-11-05.log.html', '', 'messages-2015-11-05.log.html', 'file', 0, 0, 0),
	(3, 82, '/shared_folder/sf_user_39', '', 'Cercado Quispe, Kevin', 'folder', 0, 0, 0),
	(3, 83, '/shared_folder/sf_user_27', '', 'Yataco Zamudio, Keisy Yanali', 'folder', 0, 0, 0),
	(3, 84, '/shared_folder/sf_user_13', '', 'Colorado Monja, Leonardo', 'folder', 0, 0, 0),
	(3, 85, '/shared_folder/sf_user_14', '', 'Palacios Intusca, Alfonso', 'folder', 0, 0, 0),
	(3, 86, '/shared_folder/sf_user_44', '', 'Vasquez Garcia, Kelly Vanessa Gloria Maria', 'folder', 0, 0, 0),
	(3, 87, '/shared_folder/sf_user_42', '', 'Fonseca Acuña, Daniel', 'folder', 0, 0, 0),
	(3, 88, '/chat_files/messages-2015-11-06.log.html', '', 'messages-2015-11-06.log.html', 'file', 0, 0, 0),
	(1, 151, '/learning_path/04_PHP/Laboratorio_Na14_-_Conexion_a_la_Base_de_Datos_II', '', 'Laboratorio Nº14 - Conexion a la Base de Datos II', 'folder', 4096, 0, 0),
	(1, 152, '/learning_path/04_PHP/Laboratorio_Na14_-_Conexion_a_la_Base_de_Datos_II/Clase.docx', '', 'Clase', 'file', 167731, 0, 0),
	(1, 153, '/learning_path/04_PHP/Laboratorio_Na14_-_Conexion_a_la_Base_de_Datos_II/peliculas.sql', '', 'peliculas', 'file', 771222, 0, 0),
	(1, 154, '/learning_path/04_PHP/Laboratorio_Na14_-_Conexion_a_la_Base_de_Datos_II/Ejercicios_de_MySql_2.docx_DELETED_154', '', 'Ejercicios_de_MySql_2', 'file', 1212456, 0, 0),
	(3, 89, '/shared_folder/sf_user_18', '', 'Zulueta Flores, Xiomara', 'folder', 0, 0, 0),
	(3, 90, '/Semana_9', '', 'Semana 9', 'folder', 0, 0, 0),
	(3, 91, '/Semana_9/Semana_9.zip', '', 'Semana_9', 'file', 1232522, 0, 0),
	(1, 155, '/learning_path/04_PHP/Laboratorio_Na14_-_Conexion_a_la_Base_de_Datos_II/archivos', '', 'archivos', 'folder', 0, 0, 0),
	(1, 156, '/learning_path/04_PHP/Laboratorio_Na14_-_Conexion_a_la_Base_de_Datos_II/archivos/ejemplo2c.phps', '', 'ejemplo2c', 'file', 364, 0, 0),
	(1, 157, '/learning_path/04_PHP/Laboratorio_Na14_-_Conexion_a_la_Base_de_Datos_II/archivos/ejemplo2d.phps', '', 'ejemplo2d', 'file', 345, 0, 0),
	(1, 158, '/learning_path/04_PHP/Laboratorio_Na14_-_Conexion_a_la_Base_de_Datos_II/archivos/ejemplo3a.phps', '', 'ejemplo3a', 'file', 351, 0, 0),
	(1, 159, '/learning_path/04_PHP/Laboratorio_Na14_-_Conexion_a_la_Base_de_Datos_II/archivos/ejemplo3b.phps', '', 'ejemplo3b', 'file', 351, 0, 0),
	(1, 160, '/learning_path/04_PHP/Laboratorio_Na14_-_Conexion_a_la_Base_de_Datos_II/archivos/ejemplo4b.phps', '', 'ejemplo4b', 'file', 356, 0, 0),
	(1, 161, '/learning_path/04_PHP/Laboratorio_Na14_-_Conexion_a_la_Base_de_Datos_II/archivos/ejemplo4c.phps', '', 'ejemplo4c', 'file', 355, 0, 0),
	(1, 162, '/learning_path/04_PHP/Laboratorio_Na14_-_Conexion_a_la_Base_de_Datos_II/archivos/ejemplo3c.phps', '', 'ejemplo3c', 'file', 352, 0, 0),
	(1, 163, '/learning_path/04_PHP/Laboratorio_Na14_-_Conexion_a_la_Base_de_Datos_II/archivos/ejemplo4a.phps', '', 'ejemplo4a', 'file', 588, 0, 0),
	(1, 164, '/learning_path/04_PHP/Laboratorio_Na14_-_Conexion_a_la_Base_de_Datos_II/archivos/ejemplo1a.phps', '', 'ejemplo1a', 'file', 1007, 0, 0),
	(1, 165, '/learning_path/04_PHP/Laboratorio_Na14_-_Conexion_a_la_Base_de_Datos_II/archivos/ejemplo2a.phps', '', 'ejemplo2a', 'file', 869, 0, 0),
	(1, 166, '/learning_path/04_PHP/Laboratorio_Na14_-_Conexion_a_la_Base_de_Datos_II/archivos/ejemplo2b.phps', '', 'ejemplo2b', 'file', 362, 0, 0),
	(1, 167, '/learning_path/04_PHP/Laboratorio_Na14_-_Conexion_a_la_Base_de_Datos_II/archivos/conexion.phps', '', 'conexion', 'file', 261, 0, 0),
	(1, 168, '/learning_path/04_PHP/Laboratorio_Na14_-_Conexion_a_la_Base_de_Datos_II/videos', '', 'videos', 'folder', 0, 0, 0),
	(1, 169, '/learning_path/04_PHP/Laboratorio_Na14_-_Conexion_a_la_Base_de_Datos_II/videos/css', '', 'css', 'folder', 0, 0, 0),
	(1, 170, '/learning_path/04_PHP/Laboratorio_Na14_-_Conexion_a_la_Base_de_Datos_II/videos/css/frames.css', '', 'frames.css', 'file', 22491, 0, 0),
	(1, 171, '/learning_path/04_PHP/Laboratorio_Na14_-_Conexion_a_la_Base_de_Datos_II/videos/Parte_I.html_DELETED_171', '', 'Parte I', 'file', 494, 0, 0),
	(1, 172, '/learning_path/04_PHP/Laboratorio_Na14_-_Conexion_a_la_Base_de_Datos_II/videos/Parte_I.html', '', 'Parte I', 'file', 500, 0, 0),
	(1, 173, '/learning_path/04_PHP/Laboratorio_Na14_-_Conexion_a_la_Base_de_Datos_II/videos/Parte_II.html', '', 'Parte II', 'file', 485, 0, 0),
	(1, 174, '/learning_path/04_PHP/Laboratorio_Na14_-_Conexion_a_la_Base_de_Datos_II/Ejercicios_de_MySql_2_v2.docx', '', 'Ejercicios_de_MySql_2_v2', 'file', 1212498, 0, 0),
	(3, 92, '/Semana_9/Videos_Tutoriales.zip', '', 'Videos_Tutoriales', 'file', 27832470, 0, 0),
	(3, 93, '/chat_files/messages-2015-11-10.log.html', '', 'messages-2015-11-10.log.html', 'file', 0, 0, 0),
	(3, 94, '/chat_files/messages-2015-11-10-1.log.html', '', 'messages-2015-11-10-1.log.html', 'file', 0, 0, 0),
	(3, 95, '/shared_folder/sf_user_53', '', 'Paredes Anyoza, Nicolas Daniel', 'folder', 0, 0, 0),
	(3, 96, '/shared_folder/sf_user_31', '', 'Alva Alcantara, Carlos Anthony', 'folder', 0, 0, 0),
	(3, 97, '/shared_folder/sf_user_43', '', 'Garcia Sanchez, Bosilluader Shean Andres', 'folder', 0, 0, 0),
	(3, 98, '/PC3', '', 'PC 3', 'folder', 4096, 0, 0),
	(3, 99, '/PC3/PC3.zip', '', 'PC3', 'file', 390675, 0, 0),
	(3, 100, '/PC3/Videos_Tutoriales.zip', '', 'Videos_Tutoriales', 'file', 6077288, 0, 0),
	(3, 101, '/chat_files/messages-2015-11-12.log.html', '', 'messages-2015-11-12.log.html', 'file', 0, 0, 0),
	(3, 102, '/shared_folder/sf_user_12', '', 'Arias Vilchez, Arias Vilchez', 'folder', 0, 0, 0),
	(3, 103, '/chat_files/messages-2015-11-13.log.html', '', 'messages-2015-11-13.log.html', 'file', 0, 0, 0),
	(1, 175, '/learning_path/04_PHP/Laboratorio_Na14_-_Conexion_a_la_Base_de_Datos_II/Practica_domiciliaria_3.docx', '', 'Practica_domiciliaria_3', 'file', 14785, 0, 0),
	(1, 176, '/learning_path/04_PHP/Laboratorio_No15_-_Trabajo_final', '', 'Laboratorio Nº15 - Trabajo final', 'folder', 0, 0, 0),
	(1, 177, '/learning_path/04_PHP/Laboratorio_No15_-_Trabajo_final/maquetafinal.zip', '', '1 maqueta', 'file', 26386, 0, 0),
	(1, 178, '/learning_path/04_PHP/Laboratorio_No15_-_Trabajo_final/Proyecto_de_fin_de_curso.docx', '', 'Proyecto_de_fin_de_curso', 'file', 13307, 0, 0),
	(4, 22, '/shared_folder/sf_user_43', '', 'Garcia Sanchez, Bosilluader Shean Andres', 'folder', 0, 0, 0),
	(1, 179, '/shared_folder/sf_user_43', '', 'Garcia Sanchez, Bosilluader Shean Andres', 'folder', 0, 0, 0),
	(3, 104, '/Semana_10', '', 'Semana 10', 'folder', 0, 0, 0),
	(3, 105, '/Semana_10/Semana_10.zip', '', 'Semana_10', 'file', 1769631, 0, 0),
	(1, 180, '/learning_path/04_PHP/Laboratorio_No15_-_Trabajo_final/slider.zip', '', '2 slider', 'file', 332553, 0, 0),
	(3, 106, '/shared_folder/sf_user_24', '', 'Trujillo Aguirre, Jose Gabriel', 'folder', 0, 0, 0),
	(3, 107, '/shared_folder/sf_user_1', '', 'Martin, Trujillo Bustamante', 'folder', 0, 0, 0),
	(3, 108, '/shared_folder/sf_user_32', '', 'Dominguez Jaramillo, Max Marcelino', 'folder', 0, 0, 0),
	(3, 109, '/chat_files/messages-2015-11-19.log.html', '', 'messages-2015-11-19.log.html', 'file', 473, 0, 0),
	(3, 110, '/Videos_Tutoriales.zip_DELETED_110', '', 'Videos_Tutoriales', 'file', 39245969, 0, 0),
	(3, 111, '/Semana_10/Videos_Tutoriales.zip', '', 'Videos_Tutoriales', 'file', 39245969, 0, 0),
	(3, 112, '/chat_files/messages-2015-11-21.log.html', '', 'messages-2015-11-21.log.html', 'file', 0, 0, 0),
	(3, 113, '/shared_folder/sf_user_52', '', 'Nonato Villena, Grecia Jemina', 'folder', 0, 0, 0),
	(1, 181, '/learning_path/04_PHP/Laboratorio_No15_-_Trabajo_final/formulario.zip', '', '3 formulario', 'file', 1527, 0, 0),
	(1, 182, '/learning_path/04_PHP/Laboratorio_No15_-_Trabajo_final/galeria.zip', '', '4 galeria', 'file', 31151, 0, 0),
	(3, 114, '/PC_4', '', 'PC 4', 'folder', 0, 0, 0),
	(3, 115, '/PC_4/PC4.zip', '', 'PC4', 'file', 697657, 0, 0),
	(3, 116, '/PC_4/Videos_Tutoriales.zip', '', 'Videos_Tutoriales', 'file', 6099950, 0, 0),
	(1, 183, '/learning_path/04_PHP/Laboratorio_No16_-_Examen_Diseno_Web', '', 'Laboratorio Nº16 - Examen Diseño Web', 'folder', 0, 0, 0),
	(1, 184, '/learning_path/04_PHP/Laboratorio_No16_-_Examen_Diseno_Web/Examen_final.docx', '', 'Examen_final', 'file', 13256716, 0, 0),
	(1, 185, '/learning_path/04_PHP/Laboratorio_No16_-_Examen_Diseno_Web/examen.zip', '', 'archivos', 'file', 1515726, 0, 0),
	(1, 186, '/learning_path/04_PHP/Laboratorio_Ndeg17_-_Examen_Final', '', 'Laboratorio Nº16 - Examen Programacion Web', 'folder', 4096, 0, 0),
	(1, 187, '/Examen_final.docx_DELETED_187', '', 'Examen_final', 'file', 19968, 0, 0),
	(1, 188, '/learning_path/04_PHP/Laboratorio_Ndeg17_-_Examen_Final/Examen_final.docx', '', 'Examen_final', 'file', 19968, 0, 0),
	(3, 117, '/Semana_11', '', 'Semana 11', 'folder', 0, 0, 0),
	(3, 118, '/Semana_12', '', 'Semana 12', 'folder', 0, 0, 0),
	(3, 119, '/Semana_11/Semana_11.zip', '', 'Semana_11', 'file', 1080864, 0, 0),
	(3, 120, '/Semana_12/Semana_12.zip', '', 'Semana_12', 'file', 1033271, 0, 0),
	(3, 121, '/chat_files/messages-2015-11-28.log.html', '', 'messages-2015-11-28.log.html', 'file', 0, 0, 0),
	(167, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(57, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(57, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(166, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(163, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(163, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(164, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(164, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(165, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(165, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(166, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(161, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(161, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(162, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(162, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(160, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(160, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(159, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(159, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(158, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(158, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(157, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(157, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(215, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(215, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(146, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(146, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(147, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(147, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(148, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(148, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(149, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(149, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(150, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(150, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(151, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(151, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(152, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(152, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(153, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(153, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(154, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(154, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(155, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(155, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(156, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(156, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(167, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(168, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(168, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(169, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(169, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(170, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(170, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(171, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(171, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(172, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(172, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(173, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(173, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(174, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(174, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(175, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(175, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(176, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(176, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(177, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(177, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(178, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(178, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(179, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(179, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(180, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(180, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(181, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(181, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(182, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(182, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(183, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(183, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(184, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(184, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(185, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(185, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(186, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(186, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(187, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(187, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(188, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(188, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(189, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(189, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(190, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(190, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(191, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(191, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(192, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(192, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(193, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(193, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(194, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(194, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(195, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(195, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(196, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(196, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(197, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(197, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(198, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(198, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(199, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(199, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(200, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(200, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(201, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(201, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(202, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(202, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(203, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(203, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(204, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(204, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(205, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(205, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(206, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(206, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(207, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(207, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(208, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(208, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(209, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(209, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(210, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(210, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(211, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(211, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(212, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(212, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(213, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(213, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(214, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(214, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(216, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(216, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(217, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(217, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(218, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(218, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
	(219, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
	(219, 2, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0);
/*!40000 ALTER TABLE `c_document` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_dropbox_category
CREATE TABLE IF NOT EXISTS `c_dropbox_category` (
  `c_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` text NOT NULL,
  `received` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `session_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`cat_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_dropbox_category: 1 rows
DELETE FROM `c_dropbox_category`;
/*!40000 ALTER TABLE `c_dropbox_category` DISABLE KEYS */;
INSERT INTO `c_dropbox_category` (`c_id`, `cat_id`, `cat_name`, `received`, `sent`, `user_id`, `session_id`) VALUES
	(3, 1, 'Geometria Plana', 0, 1, 3, 0);
/*!40000 ALTER TABLE `c_dropbox_category` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_dropbox_feedback
CREATE TABLE IF NOT EXISTS `c_dropbox_feedback` (
  `c_id` int(11) NOT NULL,
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` int(11) NOT NULL DEFAULT '0',
  `author_user_id` int(11) NOT NULL DEFAULT '0',
  `feedback` text NOT NULL,
  `feedback_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`c_id`,`feedback_id`),
  KEY `file_id` (`file_id`),
  KEY `author_user_id` (`author_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_dropbox_feedback: 1 rows
DELETE FROM `c_dropbox_feedback`;
/*!40000 ALTER TABLE `c_dropbox_feedback` DISABLE KEYS */;
INSERT INTO `c_dropbox_feedback` (`c_id`, `feedback_id`, `file_id`, `author_user_id`, `feedback`, `feedback_date`) VALUES
	(3, 1, 1, 3, 'Comentario de Prueba', '2015-10-21 06:27:46');
/*!40000 ALTER TABLE `c_dropbox_feedback` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_dropbox_file
CREATE TABLE IF NOT EXISTS `c_dropbox_file` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uploader_id` int(10) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL,
  `title` varchar(250) DEFAULT '',
  `description` varchar(250) DEFAULT '',
  `author` varchar(250) DEFAULT '',
  `upload_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_upload_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cat_id` int(11) NOT NULL DEFAULT '0',
  `session_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`c_id`,`id`),
  UNIQUE KEY `UN_filename` (`filename`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_dropbox_file: 1 rows
DELETE FROM `c_dropbox_file`;
/*!40000 ALTER TABLE `c_dropbox_file` DISABLE KEYS */;
INSERT INTO `c_dropbox_file` (`c_id`, `id`, `uploader_id`, `filename`, `filesize`, `title`, `description`, `author`, `upload_date`, `last_upload_date`, `cat_id`, `session_id`) VALUES
	(3, 1, 3, 'efigueroa_Triangulos.jpg_562730083030b', 4916, 'Triangulos.jpg', '', 'Figueroa Maldonado, Edward', '2015-10-21 06:26:16', '2015-10-21 06:26:16', 0, 0);
/*!40000 ALTER TABLE `c_dropbox_file` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_dropbox_person
CREATE TABLE IF NOT EXISTS `c_dropbox_person` (
  `c_id` int(11) NOT NULL,
  `file_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`file_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_dropbox_person: 1 rows
DELETE FROM `c_dropbox_person`;
/*!40000 ALTER TABLE `c_dropbox_person` DISABLE KEYS */;
INSERT INTO `c_dropbox_person` (`c_id`, `file_id`, `user_id`) VALUES
	(3, 1, 3);
/*!40000 ALTER TABLE `c_dropbox_person` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_dropbox_post
CREATE TABLE IF NOT EXISTS `c_dropbox_post` (
  `c_id` int(11) NOT NULL,
  `file_id` int(10) unsigned NOT NULL,
  `dest_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `feedback_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `feedback` text,
  `cat_id` int(11) NOT NULL DEFAULT '0',
  `session_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`c_id`,`file_id`,`dest_user_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_dropbox_post: 1 rows
DELETE FROM `c_dropbox_post`;
/*!40000 ALTER TABLE `c_dropbox_post` DISABLE KEYS */;
INSERT INTO `c_dropbox_post` (`c_id`, `file_id`, `dest_user_id`, `feedback_date`, `feedback`, `cat_id`, `session_id`) VALUES
	(3, 1, 3, '0000-00-00 00:00:00', NULL, 0, 0);
/*!40000 ALTER TABLE `c_dropbox_post` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_forum_attachment
CREATE TABLE IF NOT EXISTS `c_forum_attachment` (
  `c_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `comment` text,
  `size` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  PRIMARY KEY (`c_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_forum_attachment: 0 rows
DELETE FROM `c_forum_attachment`;
/*!40000 ALTER TABLE `c_forum_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_forum_attachment` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_forum_category
CREATE TABLE IF NOT EXISTS `c_forum_category` (
  `c_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(255) NOT NULL DEFAULT '',
  `cat_comment` text,
  `cat_order` int(11) NOT NULL DEFAULT '0',
  `locked` int(11) NOT NULL DEFAULT '0',
  `session_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`cat_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_forum_category: 5 rows
DELETE FROM `c_forum_category`;
/*!40000 ALTER TABLE `c_forum_category` DISABLE KEYS */;
INSERT INTO `c_forum_category` (`c_id`, `cat_id`, `cat_title`, `cat_comment`, `cat_order`, `locked`, `session_id`) VALUES
	(1, 1, 'Como utilizar la plataforma', '<p>&iquest;Qu&eacute; hago si?</p><p>Estas inscrito en el curso de introducci&oacute;n a la programaci&oacute;n con PHP con la herramienta Chamilo.&nbsp;</p>', 1, 0, 0),
	(1, 2, 'Cursos de informática', '', 2, 0, 0),
	(1, 3, 'Cursos de matemáticas', '', 3, 0, 0),
	(3, 1, 'Foro I', '<p>Foro I</p>', 1, 0, 0),
	(3, 2, 'Proporcionalidad', '<p>Proporcionalidad</p>', 2, 0, 0);
/*!40000 ALTER TABLE `c_forum_category` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_forum_forum
CREATE TABLE IF NOT EXISTS `c_forum_forum` (
  `c_id` int(11) NOT NULL,
  `forum_id` int(11) NOT NULL AUTO_INCREMENT,
  `forum_title` varchar(255) NOT NULL DEFAULT '',
  `forum_comment` text,
  `forum_threads` int(11) DEFAULT '0',
  `forum_posts` int(11) DEFAULT '0',
  `forum_last_post` int(11) DEFAULT '0',
  `forum_category` int(11) DEFAULT NULL,
  `allow_anonymous` int(11) DEFAULT NULL,
  `allow_edit` int(11) DEFAULT NULL,
  `approval_direct_post` varchar(20) DEFAULT NULL,
  `allow_attachments` int(11) DEFAULT NULL,
  `allow_new_threads` int(11) DEFAULT NULL,
  `default_view` varchar(20) DEFAULT NULL,
  `forum_of_group` varchar(20) DEFAULT NULL,
  `forum_group_public_private` varchar(20) DEFAULT 'public',
  `forum_order` int(11) DEFAULT NULL,
  `locked` int(11) NOT NULL DEFAULT '0',
  `session_id` int(11) NOT NULL DEFAULT '0',
  `forum_image` varchar(255) NOT NULL DEFAULT '',
  `start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`c_id`,`forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_forum_forum: 4 rows
DELETE FROM `c_forum_forum`;
/*!40000 ALTER TABLE `c_forum_forum` DISABLE KEYS */;
INSERT INTO `c_forum_forum` (`c_id`, `forum_id`, `forum_title`, `forum_comment`, `forum_threads`, `forum_posts`, `forum_last_post`, `forum_category`, `allow_anonymous`, `allow_edit`, `approval_direct_post`, `allow_attachments`, `allow_new_threads`, `default_view`, `forum_of_group`, `forum_group_public_private`, `forum_order`, `locked`, `session_id`, `forum_image`, `start_time`, `end_time`) VALUES
	(1, 1, 'Como utilizar la plataforma', '', 0, 0, 0, 1, 0, 0, '', 0, 0, 'flat', '0', 'public', 1, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(1, 2, 'Como utilizar este portal', '', 0, 0, 0, 2, 0, 0, '', 0, 0, 'flat', '0', 'public', 1, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(3, 1, 'Teorema de Thales', '<p>Teorema de Thales</p>', 0, 0, 0, 2, 0, 0, '', 0, 0, 'nested', '0', 'public', 1, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(3, 2, 'Buenos Estudiantes', '', 0, 0, 0, 2, 0, 0, '0', 1, 1, 'flat', '1', 'public', 2, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `c_forum_forum` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_forum_mailcue
CREATE TABLE IF NOT EXISTS `c_forum_mailcue` (
  `c_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `thread_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`c_id`,`thread_id`,`user_id`,`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_forum_mailcue: 0 rows
DELETE FROM `c_forum_mailcue`;
/*!40000 ALTER TABLE `c_forum_mailcue` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_forum_mailcue` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_forum_notification
CREATE TABLE IF NOT EXISTS `c_forum_notification` (
  `c_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `forum_id` int(11) NOT NULL DEFAULT '0',
  `thread_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`c_id`,`user_id`,`forum_id`,`thread_id`,`post_id`),
  KEY `user_id` (`user_id`),
  KEY `forum_id` (`forum_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_forum_notification: 3 rows
DELETE FROM `c_forum_notification`;
/*!40000 ALTER TABLE `c_forum_notification` DISABLE KEYS */;
INSERT INTO `c_forum_notification` (`c_id`, `id`, `user_id`, `forum_id`, `thread_id`, `post_id`) VALUES
	(1, 1, 4, 2, 0, 0),
	(3, 2, 39, 1, 0, 0),
	(3, 3, 31, 0, 2, 0);
/*!40000 ALTER TABLE `c_forum_notification` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_forum_post
CREATE TABLE IF NOT EXISTS `c_forum_post` (
  `c_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(250) DEFAULT NULL,
  `post_text` text,
  `thread_id` int(11) DEFAULT '0',
  `forum_id` int(11) DEFAULT '0',
  `poster_id` int(11) DEFAULT '0',
  `poster_name` varchar(100) DEFAULT '',
  `post_date` datetime DEFAULT '0000-00-00 00:00:00',
  `post_notification` tinyint(4) DEFAULT '0',
  `post_parent_id` int(11) DEFAULT '0',
  `visible` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`c_id`,`post_id`),
  KEY `poster_id` (`poster_id`),
  KEY `forum_id` (`forum_id`),
  KEY `idx_forum_post_thread_id` (`thread_id`),
  KEY `idx_forum_post_visible` (`visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_forum_post: 5 rows
DELETE FROM `c_forum_post`;
/*!40000 ALTER TABLE `c_forum_post` DISABLE KEYS */;
INSERT INTO `c_forum_post` (`c_id`, `post_id`, `post_title`, `post_text`, `thread_id`, `forum_id`, `poster_id`, `poster_name`, `post_date`, `post_notification`, `post_parent_id`, `visible`) VALUES
	(1, 1, 'Presentación de la primera tarea', '<p>&nbsp;sdfasf</p>', 1, 2, 1, '', '2015-09-17 12:57:26', 0, 0, 1),
	(3, 1, 'Que es proporcionalidad', '<p>Que es proporcionalidad...</p>', 1, 1, 3, '', '2015-10-11 06:43:02', 0, 0, 1),
	(3, 2, 'Aplicaciones de la Proporcionalidad en la Ingenieria', '<p>Aplicaciones de la Proporcionalidad en la <strong>Ingenieria</strong>....</p>', 2, 1, 3, '', '2015-10-11 07:01:02', 0, 0, 1),
	(3, 3, 'Re:Aplicaciones de la Proporcionalidad en la Ingenieria', '<p>En la electronica se usan las proporciones de las resistencias para controlar los voltajes que se generan en las resistencias</p>', 2, 1, 3, '', '2015-10-11 07:11:43', 0, 2, 1),
	(3, 4, 'Arquitectua', '<p>Arquitectua</p>', 2, 1, 3, '', '2015-10-11 07:29:45', 0, 0, 1);
/*!40000 ALTER TABLE `c_forum_post` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_forum_thread
CREATE TABLE IF NOT EXISTS `c_forum_thread` (
  `c_id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL AUTO_INCREMENT,
  `thread_title` varchar(255) DEFAULT NULL,
  `forum_id` int(11) DEFAULT NULL,
  `thread_replies` int(11) DEFAULT '0',
  `thread_poster_id` int(11) DEFAULT NULL,
  `thread_poster_name` varchar(100) DEFAULT '',
  `thread_views` int(11) DEFAULT '0',
  `thread_last_post` int(11) DEFAULT NULL,
  `thread_date` datetime DEFAULT '0000-00-00 00:00:00',
  `thread_sticky` tinyint(3) unsigned DEFAULT '0',
  `locked` int(11) NOT NULL DEFAULT '0',
  `session_id` int(10) unsigned DEFAULT NULL,
  `thread_title_qualify` varchar(255) DEFAULT '',
  `thread_qualify_max` float(6,2) unsigned NOT NULL DEFAULT '0.00',
  `thread_close_date` datetime DEFAULT '0000-00-00 00:00:00',
  `thread_weight` float(6,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`c_id`,`thread_id`),
  KEY `idx_forum_thread_forum_id` (`forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_forum_thread: 3 rows
DELETE FROM `c_forum_thread`;
/*!40000 ALTER TABLE `c_forum_thread` DISABLE KEYS */;
INSERT INTO `c_forum_thread` (`c_id`, `thread_id`, `thread_title`, `forum_id`, `thread_replies`, `thread_poster_id`, `thread_poster_name`, `thread_views`, `thread_last_post`, `thread_date`, `thread_sticky`, `locked`, `session_id`, `thread_title_qualify`, `thread_qualify_max`, `thread_close_date`, `thread_weight`) VALUES
	(1, 1, 'Presentación de la primera tarea', 2, 0, 1, '', 0, 1, '2015-09-17 12:57:26', 0, 0, 0, '', 0.00, '0000-00-00 00:00:00', 0.00),
	(3, 1, 'Que es proporcionalidad', 1, 0, 3, '', 1, 1, '2015-10-11 06:43:02', 0, 0, 0, '', 0.00, '0000-00-00 00:00:00', 0.00),
	(3, 2, 'Aplicaciones de la Proporcionalidad en la Ingenieria', 1, 2, 3, '', 26, 4, '2015-10-11 07:29:45', 0, 0, 0, '', 10.00, '0000-00-00 00:00:00', 0.80);
/*!40000 ALTER TABLE `c_forum_thread` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_forum_thread_qualify
CREATE TABLE IF NOT EXISTS `c_forum_thread_qualify` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `thread_id` int(11) NOT NULL,
  `qualify` float(6,2) NOT NULL DEFAULT '0.00',
  `qualify_user_id` int(11) DEFAULT NULL,
  `qualify_time` datetime DEFAULT '0000-00-00 00:00:00',
  `session_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`,`id`),
  KEY `user_id` (`user_id`,`thread_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_forum_thread_qualify: 0 rows
DELETE FROM `c_forum_thread_qualify`;
/*!40000 ALTER TABLE `c_forum_thread_qualify` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_forum_thread_qualify` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_forum_thread_qualify_log
CREATE TABLE IF NOT EXISTS `c_forum_thread_qualify_log` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `thread_id` int(11) NOT NULL,
  `qualify` float(6,2) NOT NULL DEFAULT '0.00',
  `qualify_user_id` int(11) DEFAULT NULL,
  `qualify_time` datetime DEFAULT '0000-00-00 00:00:00',
  `session_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`,`id`),
  KEY `user_id` (`user_id`,`thread_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_forum_thread_qualify_log: 0 rows
DELETE FROM `c_forum_thread_qualify_log`;
/*!40000 ALTER TABLE `c_forum_thread_qualify_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_forum_thread_qualify_log` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_glossary
CREATE TABLE IF NOT EXISTS `c_glossary` (
  `c_id` int(11) NOT NULL,
  `glossary_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `display_order` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT '0',
  PRIMARY KEY (`c_id`,`glossary_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_glossary: 75 rows
DELETE FROM `c_glossary`;
/*!40000 ALTER TABLE `c_glossary` DISABLE KEYS */;
INSERT INTO `c_glossary` (`c_id`, `glossary_id`, `name`, `description`, `display_order`, `session_id`) VALUES
	(3, 3, 'Figura Geometrica', 'Conjunto no vacio de puntos en el espacio', 3, 0),
	(3, 2, 'Geometria', 'Rama de las Matematicas que tiene por objeto el estudio de las figuras geoemtricas', 2, 0),
	(3, 1, 'Cuadrilatero', 'Poligono de cuatro lados', 1, 0),
	(3, 4, 'Espacio', 'Conjunto de todos los puntos', 4, 0),
	(3, 5, 'Conceptos Primitivos', 'Son los primeros que se dan en la teoria (el punto, la recta y el plano)', 5, 0),
	(3, 6, 'Postulados o Axiomas', 'Son las proposiciones que se aceptan sin demostracion', 6, 0),
	(3, 7, 'Teoremas', 'Son las proposiciones que necesitan ser demostradas', 7, 0),
	(3, 8, 'Particion de un Conjunto', 'Se denomina particion de un conjunto A, a cualquier coleccion de subconjuntos de A, ninguno de los cuales es vacio y tales que cada elemento de A pertenece a solo uno de estos subconjuntos de A.', 8, 0),
	(3, 9, 'Conjunto Convexo', 'Un conjunto A de puntos se denomina conjunto convexo, si todo segmento cuyos extremos son dos puntos cualesquiera de A, esta contenido en A.', 9, 0),
	(3, 10, 'Angulo', 'Se denomina angulo a la union de dos rayos no colineales que tienen el mismo origen', 10, 0),
	(3, 11, 'Diagonal', 'Es un segmento que tiene por extremos dos vertices no consecutivos del poligono', 11, 0),
	(3, 12, 'Diagonal Media', 'Es un segmento que tiene por extremos los puntos medios de dos lados cualesquiera del poligono', 12, 0),
	(3, 13, 'Trapazoide', 'Se denomina trapezoide al cuadrilatero que no tiene lados paralelos', 13, 0),
	(3, 14, 'Trapecio', 'Es un cuadrilatero que tiene dos lados paralelos', 14, 0),
	(3, 15, 'Paralelogramo', 'Se denomina paralelogramo al cuadrilatero que tiene los dos pardes de lados opuestos paralelos', 15, 0),
	(3, 16, 'Rectangulo', 'Es un paralelogramo cuyos angulos son congruentes', 16, 0),
	(3, 17, 'Rombo', 'Es un paralelogramo cuyos lados son congruentes', 17, 0),
	(3, 18, 'Cuadrado', 'Es un paralelogramo cuyos lados y angulos son congruentes', 18, 0),
	(3, 19, 'Romboide', 'Es aquel paralelogramo cuyos angulos consecutivos y lados consecutivos no son congruentes', 19, 0),
	(3, 20, 'Circunferencia', 'La circunferencia es el conjunto de todos los puntos de un plano que equidistan de otro punto fijo llamado centro de la circunferencia', 20, 0),
	(3, 21, 'Radio', 'Es el segmento que tiene por extremos al centro de la circunferencia y un punto de la circunferencia', 21, 0),
	(3, 22, 'Interior de una Circunferencia', 'Es el conjunto de todos los puntos del plano cuya distancia al centro es menor que la longitud del radio', 22, 0),
	(3, 23, 'Exterior de una Circunferencia', 'Es el conjunto de todos los puntos del plano cuya distancia al centro es mayor que la longitud del radio', 23, 0),
	(3, 24, 'Circulo', 'Es la union de la circunferencia y su interior', 24, 0),
	(3, 25, 'Cuerda', 'Es el segmento cuyos extremos pertenecen a la circunferencia', 25, 0),
	(3, 26, 'Diametro', 'Es una cuerda que contiene al centro de la circunferencia', 26, 0),
	(3, 27, 'Arco', 'Es cualquier porcion de circunferencia comprendida entre dos puntos de ella', 27, 0),
	(3, 28, 'Recta Tangente', 'Es cualquier recta coplanar con la circunferencia que intersecta a la circunferencia en exactamente un punto llamado punto de tangencia', 28, 0),
	(3, 29, 'Recta Secante', 'Es cualquier recta que intersecta a la circunferencia en dos puntos', 29, 0),
	(3, 30, 'Flecha o Sagita', 'Es la parte de un radio perpendicular a una cuerda comprendida entre la cuerda y su arco correspondiente', 30, 0),
	(3, 31, 'Razon de dos Segmentos', 'Se denomina razon de dos segmentos, al cociente de las longitudes de los segmentos expresados en la misma unidad de medida', 31, 0),
	(3, 32, 'Baricentro', 'El baricentro de un triangulo, es el punto de interseccion de las medianas en el triangulo', 32, 0),
	(3, 33, 'Incentro', 'El incentro de un triangulo, es el punto de interseccion de las bisectrices interiores en el triangulo', 33, 0),
	(3, 34, 'Excentro', 'El excentro de un triangulo, es el punto de interseccion de las bisectrices de dos angulos exteriores y un angulo interior en el triangulo', 34, 0),
	(3, 35, 'Ortocentro', 'El ortocentro de un triangulo, es el punto de interseccion de las alturas del triangulo o de sus prolongaciones', 35, 0),
	(3, 36, 'Circuncentro', 'El circuncentro de un triangulo es el punto de interseccion de las mediatrices de cada lado del triangulo', 36, 0),
	(3, 37, 'Proyeccion ortogonal de un punto', 'La proyeccion ortogonal de un punto sobre una recta que no contiene al punto, es el pie de la perpendicular trazada desde el punto a la recta dada', 37, 0),
	(3, 38, 'Proyeccion ortogonal de un segmento', 'La proyeccion ortogonal de un  segmento sobre una recta que no contiene al segmento, es el conjunto de puntos formados por las proyecciones ortogonales de todos los puntos del segmento sobre la recta dada', 38, 0),
	(3, 39, 'Poligono Regular', 'Es un poligono convexo, equiangulo y equilatero', 39, 0),
	(3, 40, 'Apotema de un Poligono Regular', 'Es el segmento que une el centro del poligono regular con el punto medio de un lado del poligono', 40, 0),
	(3, 41, 'Simetria recpecto de un punto', 'Dos puntos son simetricos respecto de otro punto llamado centro de simetria, si son equidistantes del centro y estan en linea recta con el', 41, 0),
	(3, 42, 'Simetria recpecto de una Recta', 'Dos puntos son simetricos respecto de una recta llamada eje de simetria, si la recta es mediatriz del segmento cuyos extremos son los puntos dados', 42, 0),
	(3, 43, 'Region poligonal', 'Se denomina region poligonal a la union de un poligono y su interior', 43, 0),
	(3, 44, 'Geometria del Espacio', 'Es la parte de la geometria que tiene por objeto el estudio de las propiedades de las figuras geometricas contenidas en el espacio', 44, 0),
	(3, 45, 'Proyeccion de un punto sobre un plano', 'Es el pie de la perpendicular trazada del punto al plano', 45, 0),
	(3, 46, 'Proyeccion de un segmento sobre un plano', 'Es el conjunto de las proyecciones de los puntos del segmento sobre el plano', 46, 0),
	(3, 47, 'Proyeccion de una recta sobre un plano', 'Es el conjunto de las proyecciones de los puntos de la recta sobre el plano', 47, 0),
	(3, 48, 'Angulo Diedro', 'Se denomina angulo diedro a la union de una recta y dos semiplanos no coplanares que tienen a la recta como arista comun', 48, 0),
	(3, 49, 'Angulo plano de un diedro', 'Es el angulo formado por dos rayos perpendiculares a la arista, contenidos cada uno en caras diferentes del angulo diedro', 49, 0),
	(3, 50, 'Proyeccion ortogonal de una region poligonal sobre un plano dado', 'Se denomina proyeccion ortogonal de una region poligonal sobre un plano dado, al conjunto de puntos formados por las proyecciones ortogonales de todos los puntos de la region poligonal sobre dicho plano', 50, 0),
	(3, 51, 'Angulo Triedro', 'Es el angulo poliedro de tres caras', 51, 0),
	(3, 52, 'Poliedros', 'Un poliedro es la union de cuatro o mas regiones poligonales tales que cada uno de sus lados pertenecen precisamente a dos regiones adyacentes no coplanares', 52, 0),
	(3, 53, 'Poliedro Convexo', 'Un poliedro se denomina poliedro convexo si su interior es un conjunto convexo', 53, 0),
	(3, 54, 'Poliedros Regulares', 'Un poliedro convexo, es regular si las caras son regiones poligonales regulares congruentes entre si y todos sus angulos poliedros son congruentes', 54, 0),
	(3, 55, 'Poliedros Regulares Conjugados', 'Se denominan poliedros regulares conjugados aquellos poliedros regulares en que el numero de caras de uno de ellos es igual al numero de vertices del otro y viceversa', 55, 0),
	(3, 56, 'Prisma', 'Es el poliedro formado por una superficie prismatica cerrada y dos planos (paralelos entre si) a la superficie prismatica', 56, 0),
	(3, 57, 'Prisma Oblicuo', 'Es aquel prisma donde las aristas laterales son oblicuas a las bases. Las caras laterales son regiones paralelogramicas', 57, 0),
	(3, 58, 'Prisma Recto', 'Es aquel prisma donde sus aristas laterales son perpendiculares a las bases. Las caras laterales son regiones rectangulares', 58, 0),
	(3, 59, 'Prisma Regular', 'Es un prisma recto cuyas bases son regiones poligonales regulares', 59, 0),
	(3, 60, 'Paralelepipedo', 'Un paralelepipedo es un prisma cuyas bases y caras son regiones paralelogramicas', 60, 0),
	(3, 61, 'Paralelepipedo oblicuo', 'Es aquel paralelepipedo cuyas aristas laterales son oblicuas a la base, las caras laterales son regiones paralelogramicas', 61, 0),
	(3, 62, 'Paralelepipedo Recto', 'Es aquel paralelepipedo cuyas aristas laterales son perpendiculares a las bases. Las caras laterales son regiones rectangulares y sus bases son regiones paralelogramicas', 62, 0),
	(3, 63, 'Romboedro', 'Es aquel paralelepipedo cuyas bases y caras laterales son regiones romboedricas', 63, 0),
	(3, 64, 'Piramide', 'Es el poliedro determinado por una superficie piramidal cerrada de una hoja y un plano secante a las generatrices, que no contiene al vertice', 64, 0),
	(3, 65, 'Piramide Regular', 'Es una piramide cuya base es una region poligonal regular y el pie de la altura es el centro de la base', 65, 0),
	(3, 66, 'Cilindro', 'Es la figura formada por la superficie cilindrica cerrada y las secciones que determinan dos planos paralelos que interceptan a todas las generatrices de la superficie cilindrica', 66, 0),
	(3, 67, 'Superficie de Revolucion', 'Se denomina superficie de revolucion a la superficie que se genera por la rotacion de una linea plana (recta o curva) alrededor de una recta coplanar denominado eje de giro', 67, 0),
	(3, 69, 'Superficie Esferica', 'Se denomina superficie esferica a la superficie generada por la rotacion de una semicircunferencia, al girar una vuelta alrededor de un eje que contiene al diametro', 68, 0),
	(3, 70, 'Zona Esferica', 'Se denomina zona esferica a la parte de una superficie esferica comprendida entre dos circunferencias determinadas por dos planos paralelos entre si, secantes a la superficie esferica', 69, 0),
	(3, 71, 'Casquete Esferico', 'Se denomina casquete esferico a la parte de una superficie esferica determinada por un plano secante', 70, 0),
	(3, 72, 'Huso Esferico', 'Se denomina huso esferico a la parte de una superficie esferica, comprendida entre dos semicircunferencias maximas que tienen en comun el diametro', 71, 0),
	(3, 73, 'Sector Esferico', 'Es el solido determinado por un sector circular que gira alrededor de un diametro situado en el mismo plano y que no lo intersecta', 72, 0),
	(3, 74, 'Anillo Esferico', 'Es el solido determinado por la rotacion de un segmento circular que gira alrededor de un diametro exterior', 73, 0),
	(3, 75, 'Cuña Esferica', 'Es la porcion de la esfera limitada por dos semicirculos maximos que tienen el mismo diametro', 74, 0),
	(3, 76, 'Segmento Esferico', 'Es la porcion de la esfera comprendida ente dos planos secantes paralelos', 75, 0);
/*!40000 ALTER TABLE `c_glossary` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_group_category
CREATE TABLE IF NOT EXISTS `c_group_category` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `doc_state` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `calendar_state` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `work_state` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `announcements_state` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `forum_state` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `wiki_state` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `chat_state` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `max_student` int(10) unsigned NOT NULL DEFAULT '8',
  `self_reg_allowed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `self_unreg_allowed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `groups_per_user` int(10) unsigned NOT NULL DEFAULT '0',
  `display_order` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_group_category: 5 rows
DELETE FROM `c_group_category`;
/*!40000 ALTER TABLE `c_group_category` DISABLE KEYS */;
INSERT INTO `c_group_category` (`c_id`, `id`, `title`, `description`, `doc_state`, `calendar_state`, `work_state`, `announcements_state`, `forum_state`, `wiki_state`, `chat_state`, `max_student`, `self_reg_allowed`, `self_unreg_allowed`, `groups_per_user`, `display_order`) VALUES
	(1, 2, 'Grupos por defecto', '', 1, 1, 1, 1, 1, 1, 1, 8, 0, 0, 0, 0),
	(4, 2, 'Grupos por defecto', '', 1, 1, 1, 1, 1, 1, 1, 8, 0, 0, 0, 0),
	(3, 2, 'Grupos por defecto', '', 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
	(5, 2, 'Grupos por defecto', '', 1, 1, 1, 1, 1, 1, 1, 8, 0, 0, 0, 0),
	(57, 2, 'Grupos por defecto', '', 1, 1, 1, 1, 1, 1, 1, 8, 0, 0, 0, 0);
/*!40000 ALTER TABLE `c_group_category` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_group_info
CREATE TABLE IF NOT EXISTS `c_group_info` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `max_student` int(10) unsigned NOT NULL DEFAULT '8',
  `doc_state` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `calendar_state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `work_state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `announcements_state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `forum_state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `wiki_state` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `chat_state` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `secret_directory` varchar(255) DEFAULT NULL,
  `self_registration_allowed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `self_unregistration_allowed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `session_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_group_info: 1 rows
DELETE FROM `c_group_info`;
/*!40000 ALTER TABLE `c_group_info` DISABLE KEYS */;
INSERT INTO `c_group_info` (`c_id`, `id`, `name`, `category_id`, `description`, `max_student`, `doc_state`, `calendar_state`, `work_state`, `announcements_state`, `forum_state`, `wiki_state`, `chat_state`, `secret_directory`, `self_registration_allowed`, `self_unregistration_allowed`, `session_id`) VALUES
	(3, 1, 'Buenos Estudiantes', 0, '', 0, 1, 1, 1, 1, 1, 1, 1, '/Buenos_Estudiantes_groupdocs__0__1', 0, 0, 0);
/*!40000 ALTER TABLE `c_group_info` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_group_rel_tutor
CREATE TABLE IF NOT EXISTS `c_group_rel_tutor` (
  `c_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_group_rel_tutor: 0 rows
DELETE FROM `c_group_rel_tutor`;
/*!40000 ALTER TABLE `c_group_rel_tutor` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_group_rel_tutor` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_group_rel_user
CREATE TABLE IF NOT EXISTS `c_group_rel_user` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `role` char(50) NOT NULL,
  PRIMARY KEY (`c_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_group_rel_user: 0 rows
DELETE FROM `c_group_rel_user`;
/*!40000 ALTER TABLE `c_group_rel_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_group_rel_user` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_item_property
CREATE TABLE IF NOT EXISTS `c_item_property` (
  `c_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tool` varchar(100) NOT NULL DEFAULT '',
  `insert_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `insert_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastedit_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ref` int(11) NOT NULL DEFAULT '0',
  `lastedit_type` varchar(100) NOT NULL DEFAULT '',
  `lastedit_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `to_group_id` int(10) unsigned DEFAULT NULL,
  `to_user_id` int(10) unsigned DEFAULT NULL,
  `visibility` tinyint(4) NOT NULL DEFAULT '1',
  `start_visible` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_visible` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_session` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`id`),
  KEY `idx_item_property_toolref` (`tool`,`ref`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_item_property: 640 rows
DELETE FROM `c_item_property`;
/*!40000 ALTER TABLE `c_item_property` DISABLE KEYS */;
INSERT INTO `c_item_property` (`c_id`, `id`, `tool`, `insert_user_id`, `insert_date`, `lastedit_date`, `ref`, `lastedit_type`, `lastedit_user_id`, `to_group_id`, `to_user_id`, `visibility`, `start_visible`, `end_visible`, `id_session`) VALUES
	(1, 1, 'document', 1, '2015-09-16 21:05:26', '2015-09-16 21:05:26', 1, 'DocumentAdded', 1, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 2, 'document', 1, '2015-09-16 21:05:26', '2015-09-17 07:58:09', 2, 'DocumentInFolderUpdated', 1, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 36, 'document', 1, '2015-09-21 21:39:31', '2015-09-21 21:40:30', 20, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 3, 'document', 1, '2015-09-16 21:13:21', '2015-11-27 16:44:14', 3, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 4, 'course_description', 1, '2015-09-16 21:14:11', '2015-09-25 18:22:05', 1, 'CourseDescriptionUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 5, 'document', 1, '2015-09-16 21:14:34', '2015-09-16 21:14:34', 4, 'DocumentInvisible', 1, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 6, 'document', 1, '2015-09-16 21:14:34', '2015-09-16 21:14:34', 5, 'DocumentVisible', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 7, 'learnpath', 1, '2015-09-16 21:15:34', '2015-09-21 21:36:26', 1, 'LearnpathDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 8, 'document', 1, '2015-09-16 21:16:30', '2015-09-17 12:13:35', 6, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 9, 'document', 1, '2015-09-16 21:21:16', '2015-09-16 21:25:04', 7, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 10, 'document', 1, '2015-09-16 21:23:49', '2015-09-17 12:13:35', 8, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 14, 'document', 1, '2015-09-17 12:13:35', '2015-09-17 12:13:35', 8, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 11, 'document', 1, '2015-09-16 21:25:04', '2015-09-16 21:25:04', 7, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 12, 'document', 4, '2015-09-16 21:26:49', '2015-09-16 21:26:49', 9, 'DocumentVisible', 4, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 13, 'document', 1, '2015-09-17 12:12:12', '2015-09-25 12:56:27', 10, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 15, 'document', 1, '2015-09-17 12:13:35', '2015-09-17 12:13:35', 6, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 16, 'document', 1, '2015-09-17 12:14:40', '2015-09-25 12:49:46', 11, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 17, 'document', 1, '2015-09-17 12:15:12', '2015-09-25 13:14:23', 12, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 18, 'document', 1, '2015-09-17 12:24:43', '2015-09-25 18:09:01', 13, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 19, 'document', 1, '2015-09-17 12:36:29', '2015-09-17 12:36:29', 14, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 20, 'quiz', 1, '2015-09-17 12:52:00', '2015-10-05 22:47:47', 1, 'QuizDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 21, 'forum_category', 1, '2015-09-17 12:54:18', '2015-09-17 12:55:36', 1, 'ForumcategoryDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 22, 'forum', 1, '2015-09-17 12:55:30', '2015-09-17 12:55:30', 1, 'ForumVisible', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 23, 'forum_category', 1, '2015-09-17 12:56:13', '2015-09-17 12:56:13', 2, 'ForumcategoryVisible', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 24, 'forum_category', 1, '2015-09-17 12:56:32', '2015-09-17 12:56:32', 3, 'ForumcategoryVisible', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 25, 'forum', 1, '2015-09-17 12:56:52', '2015-09-17 12:56:52', 2, 'ForumVisible', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 26, 'forum_thread', 1, '2015-09-17 12:57:26', '2015-09-17 12:57:26', 1, 'ForumthreadVisible', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 27, 'document', 1, '2015-09-17 12:57:48', '2015-09-17 12:57:48', 15, 'DocumentInvisible', 1, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 28, 'attendance', 1, '2015-09-17 12:58:29', '2015-09-17 12:58:29', 1, 'AttendanceAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 29, 'attendance', 1, '2015-09-17 12:58:54', '2015-09-17 12:58:54', 2, 'AttendanceAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 30, 'thematic', 1, '2015-09-17 13:01:52', '2015-09-17 13:01:52', 1, 'ThematicAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 31, 'thematic', 1, '2015-09-17 13:02:28', '2015-09-17 13:02:28', 2, 'ThematicAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 35, 'document', 1, '2015-09-21 21:38:05', '2015-09-21 21:43:20', 19, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 34, 'document', 1, '2015-09-21 21:35:23', '2015-09-25 12:37:19', 18, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 33, 'document', 2, '2015-09-21 21:31:29', '2015-09-21 21:31:29', 17, 'DocumentVisible', 2, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 32, 'document', 5, '2015-09-17 13:07:43', '2015-09-17 13:07:43', 16, 'DocumentVisible', 5, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 1, 'document', 1, '2015-09-18 06:47:16', '2015-09-18 06:47:16', 1, 'DocumentAdded', 1, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 2, 'document', 1, '2015-09-18 06:47:16', '2015-11-28 19:54:57', 2, 'DocumentInFolderUpdated', 43, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 3, 'document', 3, '2015-09-18 07:22:02', '2015-09-18 07:22:02', 3, 'DocumentInvisible', 3, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 4, 'document', 3, '2015-09-18 07:22:02', '2015-09-18 07:22:02', 4, 'DocumentVisible', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 5, 'document', 3, '2015-09-18 07:28:51', '2015-10-26 00:04:39', 5, 'DocumentInvisible', 3, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 6, 'document', 3, '2015-09-18 07:29:30', '2015-09-18 07:29:30', 6, 'visible', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 7, 'attendance', 3, '2015-09-18 07:30:16', '2015-09-18 07:30:16', 1, 'AttendanceAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 8, 'document', 3, '2015-09-18 07:41:43', '2015-09-18 07:41:43', 7, 'DocumentInvisible', 3, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 37, 'document', 1, '2015-09-21 21:40:30', '2015-09-21 21:40:30', 20, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 38, 'document', 1, '2015-09-21 21:42:11', '2015-09-21 21:43:12', 21, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 39, 'document', 1, '2015-09-21 21:43:12', '2015-09-21 21:43:12', 21, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 40, 'document', 1, '2015-09-21 21:43:20', '2015-09-21 21:43:20', 19, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 41, 'document', 1, '2015-09-21 21:45:13', '2015-09-21 21:45:13', 22, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 42, 'document', 1, '2015-09-21 21:48:14', '2015-09-21 21:49:32', 23, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 43, 'document', 1, '2015-09-21 21:49:32', '2015-09-21 21:49:32', 23, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 44, 'document', 1, '2015-09-21 21:50:16', '2015-09-25 12:46:49', 24, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 45, 'document', 1, '2015-09-21 21:50:36', '2015-09-25 12:49:46', 25, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 46, 'document', 1, '2015-09-21 21:52:31', '2015-09-21 21:52:31', 26, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 47, 'document', 1, '2015-09-21 21:54:49', '2015-09-21 21:54:49', 27, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 48, 'document', 1, '2015-09-21 22:03:23', '2015-09-25 12:54:43', 28, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 49, 'document', 1, '2015-09-21 22:03:33', '2015-09-25 12:56:27', 29, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 50, 'document', 1, '2015-09-21 22:11:58', '2015-09-21 17:12:31', 30, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 51, 'document', 1, '2015-09-21 22:12:31', '2015-09-21 22:12:31', 31, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 52, 'document', 1, '2015-09-25 16:50:09', '2015-09-25 13:06:43', 32, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 53, 'document', 1, '2015-09-25 16:53:56', '2015-09-25 18:08:52', 33, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 54, 'document', 1, '2015-09-25 17:20:32', '2015-09-25 17:20:32', 34, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 55, 'document', 1, '2015-09-25 17:26:09', '2015-09-25 17:26:09', 35, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 56, 'document', 1, '2015-09-25 17:28:57', '2015-09-25 17:36:28', 36, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 57, 'document', 1, '2015-09-25 17:36:28', '2015-09-25 17:36:28', 36, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 58, 'document', 1, '2015-09-25 17:37:19', '2015-09-25 17:37:19', 37, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 59, 'document', 1, '2015-09-25 17:46:49', '2015-09-25 17:46:49', 38, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 60, 'document', 1, '2015-09-25 17:49:46', '2015-09-25 17:49:46', 39, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 61, 'document', 1, '2015-09-25 17:54:43', '2015-09-25 17:54:43', 40, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 62, 'document', 1, '2015-09-25 17:56:27', '2015-09-25 17:56:27', 41, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 63, 'document', 1, '2015-09-25 18:02:20', '2015-09-25 18:02:20', 42, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 64, 'document', 1, '2015-09-25 18:06:43', '2015-09-25 18:06:43', 43, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 65, 'document', 1, '2015-09-25 18:08:52', '2015-09-25 18:08:52', 33, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 66, 'document', 1, '2015-09-25 18:09:01', '2015-09-25 18:09:01', 13, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 67, 'document', 1, '2015-09-25 18:09:15', '2015-09-25 13:14:23', 44, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 68, 'document', 1, '2015-09-25 18:14:23', '2015-09-25 18:14:23', 45, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 69, 'document', 1, '2015-09-25 18:22:33', '2015-09-25 18:22:33', 46, 'visible', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 70, 'wiki', 1, '2015-09-25 18:26:01', '2015-09-25 18:26:01', 1, 'WikiAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 71, 'wiki', 1, '2015-09-25 18:26:01', '2015-09-25 18:26:01', 1, 'WikiAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 72, 'wiki', 1, '2015-09-25 18:29:28', '2015-09-25 18:29:28', 2, 'WikiAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 73, 'wiki', 1, '2015-09-25 18:30:18', '2015-09-25 18:30:18', 3, 'WikiAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 74, 'document', 1, '2015-09-30 14:24:44', '2015-11-27 16:44:14', 47, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 75, 'document', 1, '2015-09-30 14:26:05', '2015-10-12 16:15:35', 48, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 76, 'document', 1, '2015-09-30 14:27:34', '2015-09-30 14:27:34', 49, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 77, 'document', 1, '2015-09-30 14:29:34', '2015-09-30 14:29:34', 50, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 78, 'link', 1, '2015-09-30 14:31:05', '2015-09-30 14:35:20', 1, 'LinkDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 79, 'wiki', 1, '2015-09-30 14:34:53', '2015-09-30 14:34:53', 4, 'WikiAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 80, 'wiki', 1, '2015-09-30 14:34:53', '2015-09-30 14:34:53', 4, 'WikiAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 81, 'document', 0, '2015-10-03 01:14:00', '2015-10-03 01:14:00', 51, 'DocumentVisible', 0, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 9, 'document', 3, '2015-10-04 06:47:40', '2015-10-25 06:21:55', 8, 'DocumentDeleted', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 10, 'document', 3, '2015-10-04 06:50:40', '2015-10-25 06:21:55', 9, 'DocumentDeleted', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 93, 'document', 3, '2015-10-25 06:21:55', '2015-10-25 06:21:55', 9, 'delete', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 11, 'document', 3, '2015-10-04 06:51:32', '2015-10-25 06:21:55', 10, 'DocumentDeleted', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 12, 'document', 3, '2015-10-04 06:52:35', '2015-10-25 06:21:55', 11, 'DocumentDeleted', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 13, 'document', 3, '2015-10-04 06:53:13', '2015-10-25 06:21:55', 12, 'DocumentDeleted', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 14, 'document', 3, '2015-10-04 06:53:37', '2015-10-25 06:21:55', 13, 'DocumentDeleted', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 15, 'document', 3, '2015-10-04 07:03:09', '2015-10-25 06:21:55', 14, 'DocumentDeleted', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 16, 'document', 3, '2015-10-04 07:03:12', '2015-10-25 06:21:55', 15, 'DocumentDeleted', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 17, 'document', 3, '2015-10-04 07:10:23', '2015-10-04 07:10:23', 16, 'DocumentInvisible', 3, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 18, 'document', 3, '2015-10-04 07:10:23', '2015-10-04 07:10:23', 17, 'DocumentInvisible', 3, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 19, 'document', 3, '2015-10-04 07:10:23', '2015-10-04 07:16:34', 18, 'DocumentDeleted', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 20, 'document', 3, '2015-10-04 07:11:14', '2015-10-25 06:21:55', 19, 'DocumentDeleted', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 21, 'document', 3, '2015-10-04 07:11:14', '2015-10-25 06:21:55', 20, 'DocumentDeleted', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 100, 'document', 3, '2015-10-25 06:21:55', '2015-10-25 06:21:55', 20, 'delete', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 22, 'document', 3, '2015-10-04 07:11:14', '2015-10-25 06:21:55', 21, 'DocumentDeleted', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 23, 'document', 3, '2015-10-04 07:13:34', '2015-10-25 06:22:03', 22, 'DocumentDeleted', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 24, 'document', 3, '2015-10-04 07:16:34', '2015-10-04 07:16:34', 18, 'delete', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 25, 'document', 3, '2015-10-04 07:19:00', '2015-10-25 06:36:04', 23, 'DocumentDeleted', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 26, 'document', 3, '2015-10-04 07:21:29', '2015-10-25 06:36:04', 24, 'DocumentDeleted', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 127, 'document', 3, '2015-10-25 06:36:04', '2015-10-25 06:36:04', 24, 'delete', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 27, 'document', 3, '2015-10-04 07:21:29', '2015-10-25 06:36:04', 25, 'DocumentDeleted', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 28, 'document', 3, '2015-10-04 07:21:29', '2015-10-25 06:36:04', 26, 'DocumentDeleted', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 82, 'quiz', 1, '2015-10-05 22:48:09', '2015-10-05 22:48:09', 2, 'QuizUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 83, 'document', 1, '2015-10-05 22:50:45', '2015-10-16 22:03:26', 52, 'DocumentMoved', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 84, 'document', 1, '2015-10-05 22:55:09', '2015-10-16 22:04:33', 53, 'DocumentMoved', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 85, 'document', 1, '2015-10-05 23:07:22', '2015-10-07 18:04:11', 54, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 86, 'document', 1, '2015-10-05 23:07:45', '2015-10-05 23:07:45', 55, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 87, 'document', 1, '2015-10-05 23:07:45', '2015-10-05 23:07:45', 56, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 88, 'document', 1, '2015-10-05 23:07:45', '2015-10-05 23:07:45', 57, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 89, 'document', 1, '2015-10-05 23:07:45', '2015-10-05 23:07:45', 58, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 90, 'document', 1, '2015-10-05 23:07:45', '2015-10-05 23:07:45', 59, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 91, 'document', 1, '2015-10-05 23:07:45', '2015-10-05 23:07:45', 60, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 92, 'document', 1, '2015-10-05 23:07:45', '2015-10-05 23:07:45', 61, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 93, 'document', 1, '2015-10-05 23:07:45', '2015-10-05 23:07:45', 62, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 94, 'document', 1, '2015-10-05 23:07:45', '2015-10-16 22:08:10', 63, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 95, 'document', 1, '2015-10-05 23:07:45', '2015-10-16 22:08:10', 64, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 96, 'document', 1, '2015-10-05 23:07:45', '2015-10-16 22:08:10', 65, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 97, 'document', 1, '2015-10-05 23:07:45', '2015-10-16 22:08:10', 66, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 98, 'document', 1, '2015-10-05 23:07:45', '2015-10-16 22:08:10', 67, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 99, 'document', 1, '2015-10-05 23:07:45', '2015-10-16 22:08:10', 68, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 100, 'document', 1, '2015-10-05 23:07:45', '2015-10-16 22:08:10', 69, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 101, 'document', 1, '2015-10-05 23:07:45', '2015-10-16 22:08:10', 70, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 102, 'document', 1, '2015-10-05 23:07:45', '2015-10-16 22:08:10', 71, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 103, 'document', 1, '2015-10-05 23:07:45', '2015-10-16 22:08:10', 72, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 104, 'document', 1, '2015-10-05 23:07:45', '2015-10-16 22:08:10', 73, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 105, 'document', 1, '2015-10-05 23:07:45', '2015-10-16 22:08:10', 74, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 106, 'document', 1, '2015-10-05 23:07:45', '2015-10-05 23:07:45', 75, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 107, 'document', 1, '2015-10-05 23:07:45', '2015-10-05 23:07:45', 76, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 108, 'document', 1, '2015-10-05 23:07:45', '2015-10-05 23:07:45', 77, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 109, 'document', 1, '2015-10-05 23:07:45', '2015-10-05 23:07:45', 78, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 110, 'document', 1, '2015-10-05 23:07:45', '2015-10-05 23:07:45', 79, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 29, 'document', 3, '2015-10-06 03:10:22', '2015-10-25 06:21:55', 27, 'DocumentDeleted', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 30, 'document', 3, '2015-10-06 03:10:43', '2015-10-25 06:21:55', 28, 'DocumentDeleted', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 31, 'document', 3, '2015-10-06 03:10:51', '2015-10-25 06:21:55', 29, 'DocumentDeleted', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 32, 'document', 3, '2015-10-06 03:11:00', '2015-10-25 06:21:55', 30, 'DocumentDeleted', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 111, 'document', 1, '2015-10-07 23:04:11', '2015-10-07 23:04:11', 80, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 112, 'document', 1, '2015-10-07 23:04:11', '2015-10-07 23:04:11', 81, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 113, 'document', 1, '2015-10-07 23:04:11', '2015-10-07 23:04:11', 82, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 33, 'quiz', 3, '2015-10-09 08:16:07', '2015-10-12 06:07:59', 1, 'QuizUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 34, 'quiz', 3, '2015-10-10 07:32:30', '2015-10-10 07:32:30', 2, 'QuizQuestionAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 35, 'quiz', 3, '2015-10-10 07:36:37', '2015-10-10 07:36:37', 3, 'QuizQuestionAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 36, 'quiz', 3, '2015-10-10 07:48:14', '2015-10-10 07:48:14', 4, 'QuizQuestionAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 37, 'quiz', 3, '2015-10-10 07:56:19', '2015-10-10 07:56:19', 5, 'QuizQuestionAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 38, 'quiz', 3, '2015-10-10 08:04:12', '2015-10-10 08:08:55', 6, 'QuizQuestionUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 39, 'document', 3, '2015-10-10 08:04:12', '2015-10-26 00:04:35', 31, 'DocumentInvisible', 3, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 40, 'document', 3, '2015-10-10 08:04:12', '2015-10-10 08:04:12', 32, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 41, 'quiz', 3, '2015-10-10 08:31:56', '2015-10-10 08:31:56', 7, 'QuizQuestionAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 42, 'quiz', 3, '2015-10-10 08:44:18', '2015-10-10 08:44:18', 8, 'QuizQuestionAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 43, 'quiz', 3, '2015-10-10 08:50:08', '2015-10-10 08:50:08', 9, 'QuizQuestionAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 44, 'quiz', 3, '2015-10-10 08:55:07', '2015-10-10 08:57:12', 10, 'QuizQuestionUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 45, 'quiz', 3, '2015-10-10 09:01:17', '2015-10-10 09:01:17', 11, 'QuizQuestionAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 46, 'document', 3, '2015-10-10 09:12:00', '2015-10-10 09:12:00', 33, 'DocumentInvisible', 3, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 47, 'forum_category', 3, '2015-10-10 09:17:54', '2015-10-10 09:19:01', 1, 'ForumcategoryDeleted', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 48, 'forum_category', 3, '2015-10-11 06:32:06', '2015-10-11 06:32:24', 2, 'ForumCategoryUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 49, 'forum', 3, '2015-10-11 06:34:04', '2015-10-11 07:29:45', 1, 'NewMessageInForum', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 50, 'forum_thread', 3, '2015-10-11 06:43:02', '2015-10-11 06:44:22', 1, 'ForumthreadDeleted', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 51, 'forum_attachment', 3, '2015-10-11 06:44:22', '2015-10-11 06:44:22', 0, 'ForumAttachmentDelete', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 52, 'forum_thread', 3, '2015-10-11 07:01:02', '2015-10-11 07:01:02', 2, 'ForumthreadVisible', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 53, 'learnpath', 3, '2015-10-12 05:37:35', '2015-11-17 04:12:11', 1, 'LearnpathInvisible', 3, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 54, 'document', 3, '2015-10-12 05:49:37', '2015-10-12 05:49:37', 34, 'FolderCreated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 55, 'document', 3, '2015-10-12 05:52:43', '2015-10-12 05:52:43', 35, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 56, 'document', 3, '2015-10-12 06:03:25', '2015-10-12 06:03:25', 36, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 57, 'learnpath', 3, '2015-10-12 06:17:09', '2015-11-17 04:12:30', 2, 'LearnpathInvisible', 3, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 58, 'document', 3, '2015-10-12 06:17:18', '2015-10-12 06:17:18', 37, 'FolderCreated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 59, 'document', 3, '2015-10-12 06:18:01', '2015-10-12 06:18:01', 38, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 114, 'document', 1, '2015-10-12 21:14:55', '2015-10-19 21:56:56', 83, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 115, 'document', 1, '2015-10-12 21:15:35', '2015-10-19 21:56:49', 84, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 1, 'document', 1, '2015-10-14 11:43:27', '2015-10-14 11:43:27', 1, 'DocumentAdded', 1, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 2, 'document', 1, '2015-10-14 11:43:27', '2015-10-14 11:43:27', 2, 'DocumentAdded', 1, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 3, 'document', 1, '2015-10-14 11:51:06', '2015-10-14 11:51:06', 3, 'DocumentInvisible', 1, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 4, 'document', 1, '2015-10-14 11:51:06', '2015-10-14 11:51:06', 4, 'DocumentVisible', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 5, 'document', 1, '2015-10-14 11:51:33', '2015-10-14 12:03:54', 5, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 6, 'document', 1, '2015-10-14 11:52:11', '2015-10-14 11:52:11', 6, 'visible', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 7, 'document', 1, '2015-10-14 11:54:42', '2015-10-14 11:54:42', 7, 'DocumentInvisible', 1, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 8, 'document', 1, '2015-10-14 11:54:42', '2015-10-14 11:54:42', 8, 'DocumentInvisible', 1, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 9, 'document', 1, '2015-10-14 11:54:42', '2015-10-14 17:00:02', 9, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 10, 'document', 1, '2015-10-14 11:57:15', '2015-10-14 16:59:36', 10, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 11, 'document', 1, '2015-10-14 12:00:43', '2015-10-14 16:59:45', 11, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 12, 'document', 1, '2015-10-14 12:01:53', '2015-10-14 16:59:40', 12, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 13, 'wiki', 1, '2015-10-14 12:05:13', '2015-10-14 12:05:13', 1, 'WikiAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 14, 'wiki', 1, '2015-10-14 12:05:13', '2015-10-14 12:05:13', 1, 'WikiAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 15, 'wiki', 1, '2015-10-14 12:09:00', '2015-10-14 12:09:00', 2, 'WikiAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 16, 'wiki', 1, '2015-10-14 12:12:32', '2015-10-14 12:12:32', 3, 'WikiAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 17, 'link', 1, '2015-10-14 12:16:02', '2015-10-14 12:21:41', 1, 'LinkDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 18, 'wiki', 1, '2015-10-14 12:18:07', '2015-10-14 12:18:07', 4, 'WikiAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 19, 'wiki', 1, '2015-10-14 12:18:07', '2015-10-14 12:18:07', 4, 'WikiAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 20, 'learnpath', 1, '2015-10-14 12:22:41', '2015-10-14 12:46:17', 1, 'LearnpathDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 21, 'document', 1, '2015-10-14 12:24:43', '2015-10-14 12:37:56', 13, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 22, 'document', 1, '2015-10-14 12:25:17', '2015-10-14 12:38:42', 14, 'DocumentMoved', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 23, 'document', 1, '2015-10-14 12:29:00', '2015-10-14 12:29:00', 15, 'FolderCreated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 24, 'document', 2, '2015-10-14 12:30:46', '2015-10-14 12:30:46', 16, 'DocumentVisible', 2, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 25, 'document', 1, '2015-10-14 12:35:52', '2015-10-14 12:41:17', 17, 'DocumentMoved', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 26, 'document', 1, '2015-10-14 12:37:56', '2015-10-14 12:37:56', 13, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 27, 'document', 1, '2015-10-14 12:42:13', '2015-10-14 17:00:11', 18, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 28, 'document', 1, '2015-10-14 12:42:59', '2015-10-14 16:59:54', 19, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 29, 'link', 1, '2015-10-14 12:45:34', '2015-10-14 13:36:02', 2, 'LinkUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 30, 'link', 1, '2015-10-14 14:16:30', '2015-10-14 14:16:30', 3, 'LinkAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 31, 'link', 1, '2015-10-14 14:55:22', '2015-10-14 14:55:22', 4, 'LinkAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 32, 'link', 1, '2015-10-14 15:40:08', '2015-10-14 15:40:08', 5, 'LinkAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 33, 'link', 1, '2015-10-14 15:58:18', '2015-10-14 15:58:18', 6, 'LinkAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 34, 'link', 1, '2015-10-14 16:35:21', '2015-10-14 16:35:21', 7, 'LinkAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 35, 'document', 1, '2015-10-14 16:59:36', '2015-10-14 16:59:36', 10, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 36, 'document', 1, '2015-10-14 16:59:40', '2015-10-14 16:59:40', 12, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 37, 'document', 1, '2015-10-14 16:59:45', '2015-10-14 16:59:45', 11, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 38, 'document', 1, '2015-10-14 16:59:54', '2015-10-14 16:59:54', 19, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 39, 'document', 1, '2015-10-14 17:00:02', '2015-10-14 17:00:02', 9, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 40, 'document', 1, '2015-10-14 17:00:11', '2015-10-14 17:00:11', 18, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 41, 'document', 1, '2015-10-14 17:03:54', '2015-10-14 17:03:54', 20, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 42, 'link', 1, '2015-10-14 17:06:57', '2015-10-14 17:06:57', 8, 'LinkAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 116, 'document', 1, '2015-10-15 00:58:46', '2015-10-19 21:56:39', 85, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 117, 'document', 1, '2015-10-16 22:03:08', '2015-10-16 22:03:08', 86, 'FolderCreated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 118, 'document', 1, '2015-10-16 22:04:00', '2015-10-19 17:07:12', 87, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 119, 'document', 1, '2015-10-16 22:04:12', '2015-10-23 12:58:41', 88, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 120, 'document', 1, '2015-10-16 22:08:10', '2015-10-16 22:08:10', 63, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 121, 'document', 1, '2015-10-16 22:08:10', '2015-10-16 22:08:10', 64, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 122, 'document', 1, '2015-10-16 22:08:10', '2015-10-16 22:08:10', 65, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 123, 'document', 1, '2015-10-16 22:08:10', '2015-10-16 22:08:10', 66, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 124, 'document', 1, '2015-10-16 22:08:10', '2015-10-16 22:08:10', 67, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 125, 'document', 1, '2015-10-16 22:08:10', '2015-10-16 22:08:10', 68, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 126, 'document', 1, '2015-10-16 22:08:10', '2015-10-16 22:08:10', 69, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 127, 'document', 1, '2015-10-16 22:08:10', '2015-10-16 22:08:10', 70, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 128, 'document', 1, '2015-10-16 22:08:10', '2015-10-16 22:08:10', 71, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 129, 'document', 1, '2015-10-16 22:08:10', '2015-10-16 22:08:10', 72, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 130, 'document', 1, '2015-10-16 22:08:10', '2015-10-16 22:08:10', 73, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 131, 'document', 1, '2015-10-16 22:08:10', '2015-10-16 22:08:10', 74, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 132, 'document', 1, '2015-10-16 22:08:51', '2015-10-16 17:09:17', 89, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 133, 'document', 1, '2015-10-16 22:09:17', '2015-10-16 22:09:17', 90, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 134, 'document', 1, '2015-10-16 22:09:17', '2015-10-16 22:09:17', 91, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 135, 'document', 1, '2015-10-16 22:09:17', '2015-10-16 22:09:17', 92, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 136, 'document', 1, '2015-10-16 22:09:17', '2015-10-16 22:09:17', 93, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 137, 'document', 1, '2015-10-16 22:09:17', '2015-10-16 22:09:17', 94, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 138, 'document', 1, '2015-10-16 22:09:17', '2015-10-16 22:09:17', 95, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 139, 'document', 1, '2015-10-16 22:09:17', '2015-10-16 22:09:17', 96, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 140, 'document', 1, '2015-10-16 22:09:17', '2015-10-16 22:09:17', 97, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 141, 'document', 1, '2015-10-16 22:09:17', '2015-10-16 22:09:17', 98, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 142, 'document', 1, '2015-10-16 22:09:17', '2015-10-16 22:09:17', 99, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 143, 'document', 1, '2015-10-16 22:09:17', '2015-10-16 22:09:17', 100, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 144, 'document', 1, '2015-10-16 22:09:17', '2015-10-16 22:09:17', 101, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 145, 'link', 1, '2015-10-16 22:17:36', '2015-10-16 22:17:36', 2, 'LinkAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 60, 'work', 3, '2015-10-17 08:51:32', '2015-10-17 08:51:32', 1, 'DirectoryCreated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 61, 'wiki', 3, '2015-10-17 09:22:39', '2015-10-17 09:22:39', 1, 'WikiAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 62, 'wiki', 3, '2015-10-17 09:22:39', '2015-10-17 09:22:39', 1, 'WikiAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 63, 'wiki', 3, '2015-10-17 09:27:45', '2015-10-17 09:27:45', 2, 'WikiAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 64, 'link_category', 3, '2015-10-17 09:31:03', '2015-10-17 09:31:03', 1, 'visible', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 65, 'link', 3, '2015-10-17 09:32:00', '2015-10-17 09:32:00', 1, 'LinkAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 66, 'announcement', 3, '2015-10-19 08:44:50', '2015-11-17 04:21:02', 1, 'AnnouncementDeleted', 3, NULL, 3, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 67, 'glossary', 3, '2015-10-19 08:55:06', '2015-11-07 11:04:57', 1, 'GlossaryAdded', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 146, 'document', 1, '2015-10-19 21:56:39', '2015-10-19 21:56:39', 85, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 147, 'document', 1, '2015-10-19 21:56:49', '2015-10-19 21:56:49', 84, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 148, 'document', 1, '2015-10-19 21:56:56', '2015-10-19 21:56:56', 83, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 149, 'document', 1, '2015-10-19 21:59:40', '2015-10-19 21:59:40', 102, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 150, 'document', 1, '2015-10-19 22:07:12', '2015-10-19 22:07:12', 103, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 68, 'attendance', 3, '2015-10-20 03:12:01', '2015-10-20 03:12:01', 2, 'AttendanceAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 69, 'thematic', 3, '2015-10-20 03:17:19', '2015-10-20 03:17:19', 1, 'ThematicAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 70, 'thematic_plan', 3, '2015-10-20 03:19:27', '2015-10-20 03:19:27', 1, 'ThematicPlanAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 71, 'thematic_plan', 3, '2015-10-20 03:19:27', '2015-10-20 03:19:27', 2, 'ThematicPlanAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 72, 'thematic_plan', 3, '2015-10-20 03:19:27', '2015-10-20 03:19:27', 3, 'ThematicPlanAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 73, 'thematic_plan', 3, '2015-10-20 03:19:27', '2015-10-20 03:19:27', 4, 'ThematicPlanAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 74, 'thematic_plan', 3, '2015-10-20 03:19:27', '2015-10-20 03:19:27', 5, 'ThematicPlanAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 75, 'thematic_plan', 3, '2015-10-20 03:19:27', '2015-10-20 03:19:27', 6, 'ThematicPlanAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 76, 'thematic_advance', 3, '2015-10-20 03:20:42', '2015-10-20 03:20:42', 1, 'ThematicAdvanceAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 77, 'calendar_event', 3, '2015-10-20 03:24:29', '2015-10-20 03:24:29', 1, 'CalendareventVisible', 3, NULL, 3, 1, '2015-10-25 05:00:00', '2015-10-25 05:00:00', 0),
	(3, 78, 'announcement', 3, '2015-10-20 03:24:29', '2015-11-17 04:20:56', 2, 'AnnouncementDeleted', 3, NULL, 3, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 79, 'calendar_event', 3, '2015-10-20 03:25:37', '2015-10-20 03:25:37', 2, 'CalendareventVisible', 3, NULL, 3, 1, '2015-10-19 05:00:00', '2015-10-20 04:59:00', 0),
	(3, 80, 'calendar_event', 3, '2015-10-20 03:28:38', '2015-10-20 03:28:38', 3, 'CalendareventVisible', 3, NULL, 3, 1, '2015-10-27 05:00:00', '2015-10-28 04:59:00', 0),
	(3, 81, 'dropbox', 3, '2015-10-21 06:26:16', '2015-10-21 06:26:16', 1, 'DropboxFileAdded', 3, NULL, 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 82, 'document', 3, '2015-10-21 06:32:38', '2015-10-21 06:32:38', 39, 'DocumentVisible', 3, 1, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 83, 'forum', 3, '2015-10-21 06:32:38', '2015-10-21 06:32:38', 2, 'ForumVisible', 3, 1, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 84, 'document', 3, '2015-10-21 06:39:31', '2015-10-21 06:39:31', 40, 'DocumentInvisible', 3, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 85, 'document', 3, '2015-10-21 06:40:39', '2015-10-21 06:40:39', 41, 'DocumentInvisible', 3, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 86, 'survey', 3, '2015-10-22 02:48:48', '2015-10-22 02:50:03', 1, 'SurveyUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 87, 'notebook', 3, '2015-10-22 02:58:11', '2015-10-22 02:58:11', 1, 'NotebookAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 151, 'document', 1, '2015-10-23 17:57:14', '2015-10-23 17:57:14', 104, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 152, 'document', 1, '2015-10-23 17:57:26', '2015-10-23 12:58:41', 105, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 153, 'document', 1, '2015-10-23 17:58:40', '2015-10-23 17:58:40', 106, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 154, 'document', 1, '2015-10-23 17:58:40', '2015-10-23 17:58:40', 107, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 155, 'document', 1, '2015-10-23 17:58:40', '2015-10-23 17:58:40', 108, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 156, 'document', 1, '2015-10-23 17:58:40', '2015-10-23 17:58:40', 109, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 157, 'document', 1, '2015-10-23 17:58:40', '2015-10-23 17:58:40', 110, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 158, 'document', 1, '2015-10-23 17:58:41', '2015-10-23 17:58:41', 111, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 159, 'document', 1, '2015-10-23 17:59:32', '2015-11-02 16:54:44', 112, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 160, 'document', 1, '2015-10-23 18:02:31', '2015-10-23 18:02:31', 113, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 161, 'document', 8, '2015-10-24 00:54:58', '2015-10-24 00:54:58', 114, 'DocumentVisible', 8, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 162, 'document', 7, '2015-10-24 00:55:11', '2015-10-24 00:55:11', 115, 'DocumentVisible', 7, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 163, 'document', 6, '2015-10-24 01:05:54', '2015-10-24 01:05:54', 116, 'DocumentVisible', 6, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 88, 'blog_management', 3, '2015-10-24 06:28:56', '2015-10-24 06:28:56', 1, 'BlogAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 89, 'document', 9, '2015-10-24 06:38:22', '2015-10-24 06:38:22', 42, 'DocumentVisible', 9, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 90, 'document', 10, '2015-10-24 06:44:21', '2015-10-24 06:44:21', 43, 'DocumentVisible', 10, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 91, 'document', 3, '2015-10-24 06:45:25', '2015-10-25 06:23:06', 44, 'DocumentDeleted', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 92, 'document', 3, '2015-10-24 06:46:34', '2015-10-25 06:23:06', 45, 'DocumentDeleted', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 109, 'document', 3, '2015-10-25 06:23:06', '2015-10-25 06:23:06', 45, 'delete', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(5, 1, 'document', 1, '2015-10-25 06:21:24', '2015-10-26 00:04:14', 1, 'DocumentInvisible', 3, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(5, 2, 'document', 1, '2015-10-25 06:21:24', '2015-10-26 00:04:11', 2, 'DocumentInvisible', 3, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 94, 'document', 3, '2015-10-25 06:21:55', '2015-10-25 06:21:55', 10, 'delete', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 95, 'document', 3, '2015-10-25 06:21:55', '2015-10-25 06:21:55', 11, 'delete', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 96, 'document', 3, '2015-10-25 06:21:55', '2015-10-25 06:21:55', 12, 'delete', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 97, 'document', 3, '2015-10-25 06:21:55', '2015-10-25 06:21:55', 13, 'delete', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 98, 'document', 3, '2015-10-25 06:21:55', '2015-10-25 06:21:55', 14, 'delete', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 99, 'document', 3, '2015-10-25 06:21:55', '2015-10-25 06:21:55', 15, 'delete', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 101, 'document', 3, '2015-10-25 06:21:55', '2015-10-25 06:21:55', 19, 'delete', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 102, 'document', 3, '2015-10-25 06:21:55', '2015-10-25 06:21:55', 21, 'delete', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 103, 'document', 3, '2015-10-25 06:21:55', '2015-10-25 06:21:55', 27, 'delete', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 104, 'document', 3, '2015-10-25 06:21:55', '2015-10-25 06:21:55', 28, 'delete', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 105, 'document', 3, '2015-10-25 06:21:55', '2015-10-25 06:21:55', 29, 'delete', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 106, 'document', 3, '2015-10-25 06:21:55', '2015-10-25 06:21:55', 30, 'delete', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 107, 'document', 3, '2015-10-25 06:21:55', '2015-10-25 06:21:55', 8, 'delete', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 108, 'document', 3, '2015-10-25 06:22:03', '2015-10-25 06:22:03', 22, 'delete', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 110, 'document', 3, '2015-10-25 06:23:06', '2015-10-25 06:23:06', 44, 'delete', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 111, 'document', 3, '2015-10-25 06:26:36', '2015-10-25 01:29:38', 46, 'DocumentInFolderUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 112, 'document', 3, '2015-10-25 06:26:55', '2015-10-25 01:30:36', 47, 'DocumentInFolderUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 113, 'document', 3, '2015-10-25 06:27:16', '2015-10-25 01:31:10', 48, 'DocumentInFolderUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 114, 'document', 3, '2015-10-25 06:27:26', '2015-10-25 01:32:25', 49, 'DocumentInFolderUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 115, 'document', 3, '2015-10-25 06:27:40', '2015-10-25 01:32:57', 50, 'DocumentInFolderUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 116, 'document', 3, '2015-10-25 06:27:51', '2015-10-25 01:34:09', 51, 'DocumentInFolderUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 117, 'document', 3, '2015-10-25 06:28:00', '2015-10-25 01:34:51', 52, 'DocumentInFolderUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 118, 'document', 3, '2015-10-25 06:28:08', '2015-10-25 01:35:26', 53, 'DocumentInFolderUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 119, 'document', 3, '2015-10-25 06:29:38', '2015-10-25 06:29:38', 54, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 120, 'document', 3, '2015-10-25 06:30:36', '2015-10-25 06:30:36', 55, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 121, 'document', 3, '2015-10-25 06:31:10', '2015-10-25 06:31:10', 56, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 122, 'document', 3, '2015-10-25 06:32:25', '2015-10-25 06:32:25', 57, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 123, 'document', 3, '2015-10-25 06:32:57', '2015-10-25 06:32:57', 58, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 124, 'document', 3, '2015-10-25 06:34:09', '2015-10-25 06:34:09', 59, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 125, 'document', 3, '2015-10-25 06:34:51', '2015-10-25 06:34:51', 60, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 126, 'document', 3, '2015-10-25 06:35:26', '2015-10-25 06:35:26', 61, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 128, 'document', 3, '2015-10-25 06:36:04', '2015-10-25 06:36:04', 25, 'delete', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 129, 'document', 3, '2015-10-25 06:36:04', '2015-10-25 06:36:04', 26, 'delete', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 130, 'document', 3, '2015-10-25 06:36:04', '2015-10-25 06:36:04', 23, 'delete', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(5, 3, 'document', 3, '2015-10-25 06:36:26', '2015-10-25 06:36:26', 3, 'DocumentInvisible', 3, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(5, 4, 'document', 3, '2015-10-25 06:36:26', '2015-10-25 06:36:26', 4, 'DocumentVisible', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(5, 5, 'document', 3, '2015-10-25 06:36:42', '2015-10-25 01:39:12', 5, 'DocumentInFolderUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(5, 6, 'document', 3, '2015-10-25 06:36:52', '2015-10-25 01:39:55', 6, 'DocumentInFolderUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(5, 7, 'document', 3, '2015-10-25 06:37:01', '2015-10-25 01:40:33', 7, 'DocumentInFolderUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(5, 8, 'document', 3, '2015-10-25 06:37:10', '2015-10-25 01:41:20', 8, 'DocumentInFolderUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(5, 9, 'document', 3, '2015-10-25 06:37:21', '2015-10-25 01:42:46', 9, 'DocumentInFolderUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(5, 10, 'document', 3, '2015-10-25 06:37:31', '2015-10-25 01:44:05', 10, 'DocumentInFolderUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(5, 11, 'document', 3, '2015-10-25 06:37:38', '2015-10-25 01:44:42', 11, 'DocumentInFolderUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(5, 12, 'document', 3, '2015-10-25 06:37:44', '2015-10-25 01:45:11', 12, 'DocumentInFolderUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(5, 13, 'document', 3, '2015-10-25 06:39:12', '2015-10-25 06:39:12', 13, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(5, 14, 'document', 3, '2015-10-25 06:39:55', '2015-10-25 06:39:55', 14, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(5, 15, 'document', 3, '2015-10-25 06:40:33', '2015-10-25 06:40:33', 15, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(5, 16, 'document', 3, '2015-10-25 06:41:20', '2015-10-25 06:41:20', 16, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(5, 17, 'document', 3, '2015-10-25 06:42:46', '2015-10-25 06:42:46', 17, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(5, 18, 'document', 3, '2015-10-25 06:44:05', '2015-10-25 06:44:05', 18, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(5, 19, 'document', 3, '2015-10-25 06:44:42', '2015-10-25 06:44:42', 19, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(5, 20, 'document', 3, '2015-10-25 06:45:11', '2015-10-25 06:45:11', 20, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 164, 'document', 1, '2015-10-26 23:14:51', '2015-10-26 23:14:51', 117, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 165, 'document', 1, '2015-10-26 23:15:15', '2015-10-26 18:16:56', 118, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 166, 'document', 1, '2015-10-26 23:16:56', '2015-10-26 23:16:56', 119, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 167, 'document', 1, '2015-10-26 23:16:56', '2015-10-26 23:16:56', 120, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 168, 'document', 1, '2015-10-26 23:16:56', '2015-10-26 23:16:56', 121, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 169, 'document', 1, '2015-10-26 23:16:56', '2015-10-26 23:16:56', 122, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 170, 'document', 1, '2015-10-26 23:16:56', '2015-10-26 23:16:56', 123, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 171, 'document', 1, '2015-10-26 23:16:56', '2015-10-26 23:16:56', 124, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 172, 'document', 1, '2015-10-26 23:16:56', '2015-10-26 23:16:56', 125, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 173, 'document', 1, '2015-10-26 23:16:56', '2015-10-26 23:16:56', 126, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 174, 'document', 1, '2015-10-26 23:16:56', '2015-10-26 23:16:56', 127, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 175, 'document', 1, '2015-10-26 23:16:56', '2015-10-26 23:16:56', 128, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 176, 'document', 1, '2015-10-26 23:17:28', '2015-10-30 20:58:37', 129, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 43, 'document', 0, '2015-10-28 02:43:58', '2015-10-28 02:43:58', 21, 'DocumentVisible', 0, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 131, 'document', 33, '2015-10-30 03:47:36', '2015-10-30 03:47:36', 62, 'DocumentVisible', 33, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 177, 'document', 33, '2015-10-30 03:49:17', '2015-10-30 03:49:17', 130, 'DocumentVisible', 33, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 132, 'document', 20, '2015-10-30 04:07:20', '2015-10-30 04:07:20', 63, 'DocumentVisible', 20, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 133, 'document', 37, '2015-10-30 04:12:33', '2015-10-30 04:12:33', 64, 'DocumentVisible', 37, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 178, 'document', 20, '2015-10-30 04:50:22', '2015-10-30 04:50:22', 131, 'DocumentVisible', 20, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 134, 'document', 47, '2015-10-30 18:19:29', '2015-10-30 18:19:29', 65, 'DocumentVisible', 47, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 179, 'document', 1, '2015-10-30 20:58:37', '2015-10-30 20:58:37', 129, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 180, 'document', 1, '2015-10-30 20:59:14', '2015-10-30 20:59:14', 132, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 135, 'document', 39, '2015-10-31 04:10:11', '2015-10-31 04:10:11', 66, 'DocumentInvisible', 39, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 136, 'document', 3, '2015-10-31 08:53:32', '2015-10-31 08:53:32', 67, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 137, 'glossary', 3, '2015-10-31 08:59:55', '2015-11-07 11:04:57', 2, 'GlossaryAdded', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 138, 'glossary', 3, '2015-10-31 08:59:55', '2015-11-07 11:04:57', 3, 'GlossaryAdded', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 139, 'document', 40, '2015-11-01 22:16:01', '2015-11-01 22:16:01', 68, 'DocumentInvisible', 40, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 140, 'document', 36, '2015-11-02 00:55:17', '2015-11-02 00:55:17', 69, 'DocumentVisible', 36, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 141, 'document', 3, '2015-11-02 03:31:46', '2015-11-01 22:32:29', 70, 'DocumentInFolderUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 142, 'document', 3, '2015-11-02 03:32:29', '2015-11-02 03:32:29', 71, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 181, 'document', 1, '2015-11-02 21:48:16', '2015-11-04 19:37:34', 133, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 182, 'document', 1, '2015-11-02 21:49:28', '2015-11-02 21:49:28', 134, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 183, 'document', 1, '2015-11-02 21:49:31', '2015-11-02 21:49:31', 135, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 184, 'document', 1, '2015-11-02 21:49:33', '2015-11-02 21:49:33', 136, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 185, 'document', 1, '2015-11-02 21:53:12', '2015-11-02 21:53:12', 137, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 186, 'document', 1, '2015-11-02 21:54:31', '2015-11-02 16:54:44', 138, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 187, 'document', 1, '2015-11-02 21:54:43', '2015-11-02 21:54:43', 139, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 188, 'document', 1, '2015-11-02 21:54:43', '2015-11-02 21:54:43', 140, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 189, 'document', 1, '2015-11-02 21:54:43', '2015-11-02 21:54:43', 141, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 190, 'document', 1, '2015-11-02 21:54:43', '2015-11-02 21:54:43', 142, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 191, 'document', 1, '2015-11-02 21:54:44', '2015-11-02 21:54:44', 143, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 192, 'document', 1, '2015-11-02 21:54:44', '2015-11-02 21:54:44', 144, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 193, 'document', 1, '2015-11-02 21:54:44', '2015-11-02 21:54:44', 145, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 194, 'document', 1, '2015-11-02 21:54:44', '2015-11-02 21:54:44', 146, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 195, 'document', 1, '2015-11-02 21:54:44', '2015-11-02 21:54:44', 147, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 196, 'document', 1, '2015-11-02 21:54:44', '2015-11-02 21:54:44', 148, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 143, 'document', 29, '2015-11-03 00:03:40', '2015-11-03 00:03:40', 72, 'DocumentVisible', 29, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 144, 'document', 40, '2015-11-03 01:01:57', '2015-11-03 01:01:57', 73, 'DocumentInvisible', 40, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 145, 'document', 45, '2015-11-03 18:43:42', '2015-11-03 18:43:42', 74, 'DocumentVisible', 45, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 146, 'document', 48, '2015-11-03 21:53:55', '2015-11-03 21:53:55', 75, 'DocumentVisible', 48, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 147, 'document', 40, '2015-11-04 01:07:50', '2015-11-04 01:07:50', 76, 'DocumentInvisible', 40, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 148, 'document', 40, '2015-11-04 01:55:44', '2015-11-04 01:55:44', 77, 'DocumentVisible', 40, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 149, 'document', 15, '2015-11-04 20:12:09', '2015-11-04 20:12:09', 78, 'DocumentVisible', 15, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 150, 'document', 15, '2015-11-04 20:13:33', '2015-11-04 20:13:33', 79, 'DocumentInvisible', 15, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 197, 'document', 1, '2015-11-04 20:29:10', '2015-11-04 20:29:10', 149, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 151, 'document', 46, '2015-11-04 23:51:02', '2015-11-04 23:51:02', 80, 'DocumentVisible', 46, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 198, 'document', 1, '2015-11-05 00:37:34', '2015-11-05 00:37:34', 150, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 152, 'document', 46, '2015-11-05 20:32:19', '2015-11-05 20:32:19', 81, 'DocumentInvisible', 46, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 153, 'document', 39, '2015-11-06 01:00:42', '2015-11-06 01:00:42', 82, 'DocumentVisible', 39, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 154, 'document', 27, '2015-11-06 01:03:51', '2015-11-06 01:03:51', 83, 'DocumentVisible', 27, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 155, 'document', 13, '2015-11-06 05:53:55', '2015-11-06 05:53:55', 84, 'DocumentVisible', 13, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 199, 'announcement', 1, '2015-11-06 20:06:42', '2015-11-06 20:06:42', 1, 'AnnouncementAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 156, 'document', 14, '2015-11-06 21:07:13', '2015-11-06 21:07:13', 85, 'DocumentVisible', 14, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 157, 'document', 44, '2015-11-06 21:23:42', '2015-11-06 21:23:42', 86, 'DocumentVisible', 44, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 158, 'document', 42, '2015-11-06 22:29:33', '2015-11-06 22:29:33', 87, 'DocumentVisible', 42, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 159, 'document', 42, '2015-11-06 22:29:55', '2015-11-06 22:29:55', 88, 'DocumentInvisible', 42, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 200, 'document', 1, '2015-11-06 22:38:16', '2015-11-13 16:23:17', 151, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 201, 'document', 1, '2015-11-06 22:39:37', '2015-11-06 22:39:37', 152, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 202, 'document', 1, '2015-11-06 22:41:01', '2015-11-06 22:41:01', 153, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 203, 'document', 1, '2015-11-06 22:41:43', '2015-11-09 19:54:54', 154, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 160, 'document', 18, '2015-11-06 23:55:46', '2015-11-06 23:55:46', 89, 'DocumentVisible', 18, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 161, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 4, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 162, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 5, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 163, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 6, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 164, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 7, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 165, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 8, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 166, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 9, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 167, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 10, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 168, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 11, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 169, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 12, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 170, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 13, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 171, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 14, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 172, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 15, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 173, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 16, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 174, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 17, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 175, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 18, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 176, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 19, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 177, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 20, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 178, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 21, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 179, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 22, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 180, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 23, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 181, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 24, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 182, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 25, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 183, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 26, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 184, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 27, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 185, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 28, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 186, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 29, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 187, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 30, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 188, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 31, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 189, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 32, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 190, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 33, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 191, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 34, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 192, 'glossary', 3, '2015-11-07 11:04:57', '2015-11-07 11:04:57', 35, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 193, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 36, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 194, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 37, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 195, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 38, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 196, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 39, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 197, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 40, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 198, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 41, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 199, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 42, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 200, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 43, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 201, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 44, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 202, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 45, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 203, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 46, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 204, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 47, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 205, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 48, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 206, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 49, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 207, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 50, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 208, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 51, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 209, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 52, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 210, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 53, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 211, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 54, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 212, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 55, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 213, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 56, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 214, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 57, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 215, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 58, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 216, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 59, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 217, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 60, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 218, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 61, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 219, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 62, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 220, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 63, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 221, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 64, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 222, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 65, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 223, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 66, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 224, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 67, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 225, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:05:45', 68, 'GlossaryDeleted', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 226, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 69, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 227, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 70, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 228, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 71, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 229, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 72, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 230, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 73, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 231, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 74, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 232, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 75, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 233, 'glossary', 3, '2015-11-07 11:04:58', '2015-11-07 11:04:58', 76, 'GlossaryAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 234, 'document', 3, '2015-11-08 19:19:51', '2015-11-09 21:02:37', 90, 'DocumentInFolderUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 235, 'document', 3, '2015-11-08 19:20:40', '2015-11-08 19:20:40', 91, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 204, 'document', 1, '2015-11-09 18:32:37', '2015-11-09 13:33:19', 155, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 205, 'document', 1, '2015-11-09 18:33:16', '2015-11-09 18:33:16', 156, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 206, 'document', 1, '2015-11-09 18:33:16', '2015-11-09 18:33:16', 157, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 207, 'document', 1, '2015-11-09 18:33:16', '2015-11-09 18:33:16', 158, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 208, 'document', 1, '2015-11-09 18:33:17', '2015-11-09 18:33:17', 159, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 209, 'document', 1, '2015-11-09 18:33:17', '2015-11-09 18:33:17', 160, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 210, 'document', 1, '2015-11-09 18:33:17', '2015-11-09 18:33:17', 161, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 211, 'document', 1, '2015-11-09 18:33:17', '2015-11-09 18:33:17', 162, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 212, 'document', 1, '2015-11-09 18:33:17', '2015-11-09 18:33:17', 163, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 213, 'document', 1, '2015-11-09 18:33:17', '2015-11-09 18:33:17', 164, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 214, 'document', 1, '2015-11-09 18:33:17', '2015-11-09 18:33:17', 165, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 215, 'document', 1, '2015-11-09 18:33:17', '2015-11-09 18:33:17', 166, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 216, 'document', 1, '2015-11-09 18:33:19', '2015-11-09 18:33:19', 167, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 217, 'document', 1, '2015-11-09 18:42:17', '2015-11-09 14:45:00', 168, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 218, 'document', 1, '2015-11-09 18:45:22', '2015-11-09 18:45:22', 169, 'DocumentInvisible', 1, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 219, 'document', 1, '2015-11-09 18:45:22', '2015-11-09 18:45:22', 170, 'DocumentInvisible', 1, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 220, 'document', 1, '2015-11-09 18:45:22', '2015-11-09 18:52:06', 171, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 221, 'document', 1, '2015-11-09 18:52:06', '2015-11-09 18:52:06', 171, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 222, 'document', 1, '2015-11-09 18:52:35', '2015-11-09 18:57:34', 172, 'DocumentUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 223, 'document', 1, '2015-11-09 19:45:00', '2015-11-09 19:45:00', 173, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 224, 'document', 1, '2015-11-09 19:54:54', '2015-11-09 19:54:54', 154, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 225, 'document', 1, '2015-11-09 19:56:02', '2015-11-09 19:56:02', 174, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 236, 'document', 3, '2015-11-10 02:02:37', '2015-11-10 02:02:37', 92, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 237, 'document', 45, '2015-11-10 18:46:41', '2015-11-10 18:46:41', 93, 'DocumentInvisible', 45, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 238, 'document', 3, '2015-11-11 03:59:50', '2015-11-11 03:59:50', 94, 'DocumentInvisible', 3, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 239, 'document', 53, '2015-11-11 04:36:00', '2015-11-11 04:36:00', 95, 'DocumentVisible', 53, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 240, 'document', 31, '2015-11-11 16:43:13', '2015-11-11 16:43:13', 96, 'DocumentVisible', 31, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 241, 'document', 43, '2015-11-11 22:17:17', '2015-11-11 22:17:17', 97, 'DocumentVisible', 43, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 242, 'document', 3, '2015-11-12 00:46:42', '2015-11-11 19:49:47', 98, 'DocumentInFolderUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 243, 'document', 3, '2015-11-12 00:48:45', '2015-11-12 00:48:45', 99, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 244, 'document', 3, '2015-11-12 00:49:47', '2015-11-12 00:49:47', 100, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 245, 'course_description', 3, '2015-11-12 04:02:16', '2015-11-16 23:27:19', 1, 'CourseDescriptionUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 246, 'course_description', 3, '2015-11-12 04:03:40', '2015-11-12 04:03:54', 2, 'CourseDescriptionUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 247, 'document', 46, '2015-11-12 22:33:02', '2015-11-12 22:33:02', 101, 'DocumentInvisible', 46, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 248, 'document', 12, '2015-11-13 05:19:55', '2015-11-13 05:19:55', 102, 'DocumentVisible', 12, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 249, 'document', 45, '2015-11-13 19:58:44', '2015-11-13 19:58:44', 103, 'DocumentInvisible', 45, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 226, 'document', 1, '2015-11-13 21:23:17', '2015-11-13 21:23:17', 175, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 227, 'document', 1, '2015-11-13 21:49:33', '2015-11-23 14:05:28', 176, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 228, 'document', 1, '2015-11-13 21:50:05', '2015-11-13 21:50:05', 177, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 229, 'document', 1, '2015-11-13 22:07:27', '2015-11-13 22:07:27', 178, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 230, 'calendar_event', 1, '2015-11-13 22:13:31', '2015-11-13 22:13:31', 1, 'CalendareventVisible', 1, 0, NULL, 1, '2015-11-27 05:00:00', '2015-11-27 05:00:00', 0),
	(1, 231, 'announcement', 1, '2015-11-13 22:13:31', '2015-11-13 22:13:31', 2, 'AnnouncementAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 232, 'calendar_event', 1, '2015-11-13 22:13:59', '2015-11-13 22:13:59', 2, 'CalendareventVisible', 1, 0, NULL, 1, '2015-11-27 05:00:00', '2015-11-27 05:00:00', 0),
	(1, 233, 'announcement', 1, '2015-11-13 22:13:59', '2015-11-13 22:13:59', 3, 'AnnouncementAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 44, 'document', 43, '2015-11-14 00:18:16', '2015-11-14 00:18:16', 22, 'DocumentVisible', 43, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 250, 'course_description', 3, '2015-11-14 07:06:31', '2015-11-17 04:11:21', 3, 'CourseDescriptionUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 251, 'course_description', 3, '2015-11-14 08:33:38', '2015-11-16 23:28:07', 4, 'CourseDescriptionUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 252, 'course_description', 3, '2015-11-14 08:34:46', '2015-11-16 23:28:27', 5, 'CourseDescriptionUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 253, 'course_description', 3, '2015-11-14 08:35:37', '2015-11-16 23:28:48', 6, 'CourseDescriptionUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 234, 'document', 43, '2015-11-15 19:35:11', '2015-11-15 19:35:11', 179, 'DocumentVisible', 43, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 254, 'document', 3, '2015-11-16 19:54:25', '2015-11-21 01:09:57', 104, 'DocumentInFolderUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 255, 'document', 3, '2015-11-16 19:55:06', '2015-11-16 19:55:06', 105, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 235, 'document', 1, '2015-11-16 23:02:40', '2015-11-16 23:02:40', 180, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 256, 'document', 24, '2015-11-17 04:19:41', '2015-11-17 04:19:41', 106, 'DocumentVisible', 24, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 257, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 31, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 258, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 21, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 259, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 20, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 260, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 12, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 261, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 47, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 262, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 50, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 263, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 35, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 264, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 19, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 265, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 39, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 266, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 13, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 267, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 48, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 268, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 32, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 269, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 16, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 270, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 33, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 271, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 272, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 42, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 273, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 43, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 274, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 41, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 275, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 37, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 276, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 15, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 277, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 29, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 278, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 46, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 279, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 52, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 280, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 14, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 281, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 38, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 282, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 53, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 283, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 22, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 284, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 45, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 285, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 11, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 286, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 30, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 287, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 34, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 288, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 40, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 289, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 28, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 290, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 49, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 291, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 23, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 292, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 36, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 293, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 25, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 294, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 17, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 295, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 24, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 296, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 44, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 297, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 26, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 298, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 27, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 299, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 18, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 300, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 9, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 301, 'announcement', 3, '2015-11-17 04:22:52', '2015-11-17 04:22:52', 3, 'AnnouncementAdded', 3, NULL, 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 302, 'calendar_event', 3, '2015-11-17 04:24:59', '2015-11-17 04:24:59', 4, 'CalendareventVisible', 3, 0, NULL, 1, '2015-11-22 05:00:00', '2015-11-22 05:00:00', 0),
	(3, 303, 'calendar_event', 3, '2015-11-18 08:31:13', '2015-11-18 08:31:13', 5, 'CalendareventVisible', 3, 0, NULL, 1, '2015-12-06 05:00:00', '2015-12-06 05:00:00', 0),
	(3, 304, 'announcement', 3, '2015-11-18 08:31:13', '2015-11-18 08:31:13', 4, 'AnnouncementAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 305, 'calendar_event', 3, '2015-11-18 08:31:42', '2015-11-18 08:31:42', 6, 'CalendareventVisible', 3, 0, NULL, 1, '2015-12-20 05:00:00', '2015-12-20 05:00:00', 0),
	(3, 306, 'announcement', 3, '2015-11-18 08:31:42', '2015-11-18 08:31:42', 5, 'AnnouncementAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 307, 'calendar_event', 3, '2015-11-18 08:32:18', '2015-11-18 08:32:18', 7, 'CalendareventVisible', 3, 0, NULL, 1, '2016-01-17 05:00:00', '2016-01-17 05:00:00', 0),
	(3, 308, 'announcement', 3, '2015-11-18 08:32:18', '2015-11-18 08:32:18', 6, 'AnnouncementAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 309, 'calendar_event', 3, '2015-11-18 08:32:41', '2015-11-18 08:32:41', 8, 'CalendareventVisible', 3, 0, NULL, 1, '2016-01-31 05:00:00', '2016-01-31 05:00:00', 0),
	(3, 310, 'announcement', 3, '2015-11-18 08:32:41', '2015-11-18 08:32:41', 7, 'AnnouncementAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 311, 'calendar_event', 3, '2015-11-18 08:33:03', '2015-11-18 08:33:03', 9, 'CalendareventVisible', 3, 0, NULL, 1, '2016-02-07 05:00:00', '2016-02-07 05:00:00', 0),
	(3, 312, 'announcement', 3, '2015-11-18 08:33:03', '2015-11-18 08:33:03', 8, 'AnnouncementAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 313, 'document', 1, '2015-11-19 10:59:16', '2015-11-19 10:59:16', 107, 'DocumentVisible', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 314, 'document', 32, '2015-11-19 21:09:40', '2015-11-19 21:09:40', 108, 'DocumentVisible', 32, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 315, 'document', 47, '2015-11-19 21:29:56', '2015-11-19 21:29:56', 109, 'DocumentInvisible', 47, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 316, 'document', 3, '2015-11-21 06:02:23', '2015-11-21 06:03:28', 110, 'DocumentDeleted', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 317, 'document', 3, '2015-11-21 06:03:28', '2015-11-21 06:03:28', 110, 'delete', 3, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 318, 'document', 3, '2015-11-21 06:09:57', '2015-11-21 06:09:57', 111, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 319, 'document', 47, '2015-11-21 22:37:27', '2015-11-21 22:37:27', 112, 'DocumentInvisible', 47, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 320, 'document', 52, '2015-11-22 04:30:35', '2015-11-22 04:30:35', 113, 'DocumentVisible', 52, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 236, 'document', 1, '2015-11-23 19:05:27', '2015-11-23 19:05:27', 181, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 237, 'document', 1, '2015-11-23 19:05:28', '2015-11-23 19:05:28', 182, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 321, 'document', 3, '2015-11-25 07:26:06', '2015-11-25 03:28:05', 114, 'DocumentInFolderUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 322, 'document', 3, '2015-11-25 08:27:12', '2015-11-25 08:27:12', 115, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 323, 'document', 3, '2015-11-25 08:28:05', '2015-11-25 08:28:05', 116, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 238, 'document', 1, '2015-11-25 21:36:06', '2015-11-25 16:53:09', 183, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 239, 'document', 1, '2015-11-25 21:48:34', '2015-11-25 21:48:34', 184, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 240, 'document', 1, '2015-11-25 21:53:09', '2015-11-25 21:53:09', 185, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 241, 'document', 1, '2015-11-27 21:41:05', '2015-11-27 16:44:14', 186, 'DocumentInFolderUpdated', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 242, 'document', 1, '2015-11-27 21:43:32', '2015-11-27 21:44:30', 187, 'DocumentDeleted', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 243, 'document', 1, '2015-11-27 21:44:14', '2015-11-27 21:44:14', 188, 'DocumentAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 244, 'document', 1, '2015-11-27 21:44:30', '2015-11-27 21:44:30', 187, 'delete', 1, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 324, 'document', 3, '2015-11-28 04:59:42', '2015-11-28 00:00:38', 117, 'DocumentInFolderUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 325, 'document', 3, '2015-11-28 04:59:54', '2015-11-28 00:01:48', 118, 'DocumentInFolderUpdated', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 326, 'document', 3, '2015-11-28 05:00:38', '2015-11-28 05:00:38', 119, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 327, 'document', 3, '2015-11-28 05:01:48', '2015-11-28 05:01:48', 120, 'DocumentAdded', 3, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 328, 'document', 43, '2015-11-29 00:54:57', '2015-11-29 00:54:57', 121, 'DocumentInvisible', 43, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 45, 'attendance', 1, '2015-12-18 13:36:48', '2015-12-18 13:36:48', 1, 'AttendanceAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 46, 'attendance', 1, '2015-12-18 13:44:38', '2015-12-18 13:44:38', 2, 'AttendanceAdded', 1, 0, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(57, 2, 'document', 1, '2015-12-21 19:30:39', '2015-12-21 19:30:39', 2, 'DocumentAdded', 1, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(57, 1, 'document', 1, '2015-12-21 19:30:39', '2015-12-21 19:30:39', 1, 'DocumentAdded', 1, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
/*!40000 ALTER TABLE `c_item_property` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_link
CREATE TABLE IF NOT EXISTS `c_link` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `description` text,
  `category_id` int(10) unsigned DEFAULT NULL,
  `display_order` int(10) unsigned NOT NULL DEFAULT '0',
  `on_homepage` enum('0','1') NOT NULL DEFAULT '0',
  `target` char(10) DEFAULT '_self',
  `session_id` int(11) DEFAULT '0',
  PRIMARY KEY (`c_id`,`id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_link: 11 rows
DELETE FROM `c_link`;
/*!40000 ALTER TABLE `c_link` DISABLE KEYS */;
INSERT INTO `c_link` (`c_id`, `id`, `url`, `title`, `description`, `category_id`, `display_order`, `on_homepage`, `target`, `session_id`) VALUES
	(1, 1, 'https://www.youtube.com/watch?v=DhT12pV0t_o', 'Instalación de XAMP', 'Pasos para instalar el servidor web Apache, base de datos Mysql y el lenguaje de programación PHP', 0, 1, '0', '_blank', 0),
	(4, 1, 'https://www.youtube.com/watch?v=EBD3qfwE3Zw', 'Instalación de Ubuntu 14.0', '', 0, 1, '0', '_blank', 0),
	(4, 2, 'https://zdes.wordpress.com/2009/01/07/aplicaciones-equivalentes-de-windows-en-ubuntu/', 'Equivalencias entre Windows y Linux', '', 0, 2, '', '_blank', 0),
	(4, 3, 'https://www.hscripts.com/es/tutoriales/linux-commands/cmp.html', 'Comandos Linux', '', 0, 3, '0', '_blank', 0),
	(4, 4, 'https://www.gnu.org/home.es.html', '¿Qué es GNU?', '', 0, 4, '0', '_blank', 0),
	(4, 5, 'https://es.wikipedia.org/wiki/Sistema_operativo', 'Sistemas operativos', '', 0, 5, '0', '_blank', 0),
	(4, 6, 'https://www.youtube.com/watch?v=uPjqg9xs7zs', 'Piratas de Silicon Valley', '', 0, 6, '0', '_blank', 0),
	(4, 7, 'http://informatica.gonzalonazareno.org/plataforma/course/view.php?id=31', 'Servicios de red', '', 0, 7, '0', '_blank', 0),
	(4, 8, 'https://www.youtube.com/watch?v=dFAXmtLbTGI', 'Historia de Linux', '', 0, 8, '0', '_blank', 0),
	(1, 2, 'https://secure.php.net/manual/es/index.php', 'Manual de PHP', '', 0, 2, '0', '_blank', 0),
	(3, 1, 'http://www.google.com', 'google', 'google', 1, 1, '0', '_self', 0);
/*!40000 ALTER TABLE `c_link` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_link_category
CREATE TABLE IF NOT EXISTS `c_link_category` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_title` varchar(255) NOT NULL,
  `description` text,
  `display_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` int(11) DEFAULT '0',
  PRIMARY KEY (`c_id`,`id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_link_category: 1 rows
DELETE FROM `c_link_category`;
/*!40000 ALTER TABLE `c_link_category` DISABLE KEYS */;
INSERT INTO `c_link_category` (`c_id`, `id`, `category_title`, `description`, `display_order`, `session_id`) VALUES
	(3, 1, 'Geometria Plana', 'Geometria Plana URLS', 1, 0);
/*!40000 ALTER TABLE `c_link_category` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_lp
CREATE TABLE IF NOT EXISTS `c_lp` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lp_type` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `ref` tinytext,
  `description` text,
  `path` text NOT NULL,
  `force_commit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `default_view_mod` char(32) NOT NULL DEFAULT 'embedded',
  `default_encoding` char(32) NOT NULL DEFAULT 'UTF-8',
  `display_order` int(10) unsigned NOT NULL DEFAULT '0',
  `content_maker` tinytext NOT NULL,
  `content_local` varchar(32) NOT NULL DEFAULT 'local',
  `content_license` text NOT NULL,
  `prevent_reinit` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `js_lib` tinytext NOT NULL,
  `debug` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(255) NOT NULL DEFAULT '',
  `preview_image` varchar(255) NOT NULL DEFAULT '',
  `author` varchar(255) NOT NULL DEFAULT '',
  `session_id` int(10) unsigned NOT NULL DEFAULT '0',
  `prerequisite` int(10) unsigned NOT NULL DEFAULT '0',
  `hide_toc_frame` tinyint(4) NOT NULL DEFAULT '0',
  `seriousgame_mode` tinyint(4) NOT NULL DEFAULT '0',
  `use_max_score` int(10) unsigned NOT NULL DEFAULT '1',
  `autolunch` int(10) unsigned NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publicated_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expired_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`c_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_lp: 2 rows
DELETE FROM `c_lp`;
/*!40000 ALTER TABLE `c_lp` DISABLE KEYS */;
INSERT INTO `c_lp` (`c_id`, `id`, `lp_type`, `name`, `ref`, `description`, `path`, `force_commit`, `default_view_mod`, `default_encoding`, `display_order`, `content_maker`, `content_local`, `content_license`, `prevent_reinit`, `js_lib`, `debug`, `theme`, `preview_image`, `author`, `session_id`, `prerequisite`, `hide_toc_frame`, `seriousgame_mode`, `use_max_score`, `autolunch`, `created_on`, `modified_on`, `publicated_on`, `expired_on`) VALUES
	(3, 1, 1, 'Semejanza de Triangulos', NULL, '', '', 0, 'embedded', 'UTF-8', 1, 'Chamilo', 'local', '', 1, '', 0, '', '', '', 0, 0, 0, 0, 0, 0, '2015-10-12 05:37:35', '2015-11-10 05:04:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(3, 2, 1, 'Relaciones Metricas en el Triangulo Rectangulo', NULL, '', '', 0, 'embedded', 'UTF-8', 2, 'Chamilo', 'local', '', 1, '', 0, '', '', '', 0, 0, 0, 0, 0, 0, '2015-10-12 06:17:09', '2015-10-12 06:38:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `c_lp` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_lp_item
CREATE TABLE IF NOT EXISTS `c_lp_item` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lp_id` int(10) unsigned NOT NULL,
  `item_type` char(32) NOT NULL DEFAULT 'dokeos_document',
  `ref` tinytext NOT NULL,
  `title` varchar(511) NOT NULL,
  `description` varchar(511) NOT NULL DEFAULT '',
  `path` text NOT NULL,
  `min_score` float unsigned NOT NULL DEFAULT '0',
  `max_score` float unsigned DEFAULT '100',
  `mastery_score` float unsigned DEFAULT NULL,
  `parent_item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `previous_item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `next_item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `display_order` int(10) unsigned NOT NULL DEFAULT '0',
  `prerequisite` text,
  `parameters` text,
  `launch_data` text NOT NULL,
  `max_time_allowed` char(13) DEFAULT '',
  `terms` text,
  `search_did` int(11) DEFAULT NULL,
  `audio` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`c_id`,`id`),
  KEY `lp_id` (`lp_id`),
  KEY `idx_c_lp_item_cid_lp_id` (`c_id`,`lp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_lp_item: 9 rows
DELETE FROM `c_lp_item`;
/*!40000 ALTER TABLE `c_lp_item` DISABLE KEYS */;
INSERT INTO `c_lp_item` (`c_id`, `id`, `lp_id`, `item_type`, `ref`, `title`, `description`, `path`, `min_score`, `max_score`, `mastery_score`, `parent_item_id`, `previous_item_id`, `next_item_id`, `display_order`, `prerequisite`, `parameters`, `launch_data`, `max_time_allowed`, `terms`, `search_did`, `audio`) VALUES
	(3, 1, 1, 'document', '1', 'Que es la semejanza de Triangulos', '', '35', 0, 100, NULL, 0, 5, 8, 4, '5', NULL, '', '0', NULL, NULL, NULL),
	(3, 2, 1, 'dokeos_chapter', '2', 'Proporcionalidad', '', '0', 0, 100, NULL, 0, 0, 3, 1, '', NULL, '', '0', NULL, NULL, NULL),
	(3, 3, 1, 'document', '3', 'Concepto de Proporcionalidad', '', '36', 0, 100, NULL, 0, 2, 5, 2, '', NULL, '', '0', NULL, NULL, NULL),
	(3, 4, 1, 'dokeos_chapter', '4', 'Aplicaciones de la Semejanza', '', '0', 0, 100, NULL, 0, 8, 10, 6, '', NULL, '', '0', NULL, NULL, NULL),
	(3, 5, 1, 'quiz', '5', 'Congruencia de los Triangulos', '', '1', 0, 29, 10, 0, 3, 1, 3, '0', '', '', '0', '', 0, ''),
	(3, 6, 2, 'document', '6', 'Concepto de Triangulo Rectangulo', '', '38', 0, 100, NULL, 0, 7, 0, 2, '0', NULL, '', '0', NULL, NULL, NULL),
	(3, 7, 2, 'dokeos_chapter', '7', 'Conceptos Basicos', '', '0', 0, 100, NULL, 0, 0, 6, 1, '', NULL, '', '0', NULL, NULL, NULL),
	(3, 8, 1, 'document', '8', 'Primer_Escaneo', '', '54', 0, 100, NULL, 0, 1, 4, 5, '0', NULL, '', '0', NULL, NULL, NULL),
	(3, 10, 1, 'document', '10', 'Segundo_Escaneo', '', '55', 0, 100, NULL, 0, 4, 0, 7, '0', NULL, '', '0', NULL, NULL, NULL);
/*!40000 ALTER TABLE `c_lp_item` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_lp_item_view
CREATE TABLE IF NOT EXISTS `c_lp_item_view` (
  `c_id` int(11) NOT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lp_item_id` int(10) unsigned NOT NULL,
  `lp_view_id` int(10) unsigned NOT NULL,
  `view_count` int(10) unsigned NOT NULL DEFAULT '0',
  `start_time` int(10) unsigned NOT NULL,
  `total_time` int(10) unsigned NOT NULL DEFAULT '0',
  `score` float unsigned NOT NULL DEFAULT '0',
  `status` char(32) NOT NULL DEFAULT 'not attempted',
  `suspend_data` longtext,
  `lesson_location` text,
  `core_exit` varchar(32) NOT NULL DEFAULT 'none',
  `max_score` varchar(8) DEFAULT '',
  PRIMARY KEY (`c_id`,`id`),
  KEY `lp_item_id` (`lp_item_id`),
  KEY `lp_view_id` (`lp_view_id`),
  KEY `idx_c_lp_item_view_cid_lp_view_id_lp_item_id` (`c_id`,`lp_view_id`,`lp_item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_lp_item_view: 71 rows
DELETE FROM `c_lp_item_view`;
/*!40000 ALTER TABLE `c_lp_item_view` DISABLE KEYS */;
INSERT INTO `c_lp_item_view` (`c_id`, `id`, `lp_item_id`, `lp_view_id`, `view_count`, `start_time`, `total_time`, `score`, `status`, `suspend_data`, `lesson_location`, `core_exit`, `max_score`) VALUES
	(3, 1, 1, 1, 1, 1448265657, 404, 0, 'completed', '', '', 'none', '100'),
	(3, 2, 2, 1, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 3, 3, 1, 1, 1448265650, 141, 0, 'completed', '', '', 'none', '100'),
	(3, 4, 4, 1, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 5, 5, 1, 1, 1444630307, 316, 17.33, 'completed', '', '', 'none', '29'),
	(3, 6, 6, 2, 1, 1447733543, 126, 0, 'completed', '', '', 'none', '100'),
	(3, 7, 7, 2, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 8, 2, 3, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 9, 3, 3, 1, 1446178204, 13, 0, 'completed', '', '', 'none', '100'),
	(3, 10, 5, 3, 1, 1446179462, 232, 26.99, 'completed', '', '', 'none', '29'),
	(3, 11, 1, 3, 1, 1446179814, 262, 0, 'completed', '', '', 'none', '100'),
	(3, 12, 4, 3, 1, 1446179831, 2, 0, 'completed', '', '', 'none', '100'),
	(3, 13, 7, 4, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 14, 6, 4, 1, 1446179849, 4, 0, 'completed', '', '', 'none', '100'),
	(3, 15, 7, 5, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 16, 6, 5, 1, 1446264562, 0, 0, 'completed', '', '', 'none', '100'),
	(3, 17, 2, 6, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 18, 3, 6, 1, 1446331907, 14, 0, 'completed', '', '', 'none', '100'),
	(3, 19, 5, 6, 1, 1447541309, 1209437, 15.33, 'completed', '', '', 'none', '29'),
	(3, 20, 1, 6, 1, 1447541355, 5, 0, 'completed', '', '', 'none', '100'),
	(3, 21, 4, 6, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 22, 2, 7, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 23, 3, 7, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 24, 5, 7, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 25, 1, 7, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 26, 4, 7, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 27, 7, 8, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 28, 6, 8, 1, 1446588223, 0, 0, 'completed', '', '', 'none', '100'),
	(3, 29, 2, 9, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 30, 3, 9, 1, 1446588262, 894, 0, 'completed', '', '', 'none', '100'),
	(3, 31, 5, 9, 1, 1446589122, 856, 18.49, 'completed', '', '', 'none', '29'),
	(3, 32, 1, 9, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 33, 4, 9, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 34, 2, 10, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 35, 3, 10, 1, 1446680928, 5, 0, 'completed', '', '', 'none', '100'),
	(3, 36, 5, 10, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 37, 1, 10, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 38, 4, 10, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 39, 2, 11, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 40, 3, 11, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 41, 5, 11, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 42, 1, 11, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 43, 4, 11, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 44, 7, 12, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 45, 6, 12, 1, 1446848811, 49, 0, 'completed', '', '', 'none', '100'),
	(3, 46, 2, 13, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 47, 3, 13, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 48, 5, 13, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 49, 1, 13, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 50, 4, 13, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 51, 8, 1, 1, 1448265660, 85, 0, 'completed', '', '', 'none', '100'),
	(3, 52, 9, 1, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 53, 10, 1, 1, 1448155673, 17, 0, 'completed', '', '', 'none', '100'),
	(3, 54, 8, 3, 1, 1447374109, 0, 0, 'completed', '', '', 'none', '100'),
	(3, 55, 9, 3, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 56, 10, 3, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 57, 2, 14, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 58, 3, 14, 1, 1447453308, 6, 0, 'completed', '', '', 'none', '100'),
	(3, 59, 5, 14, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 60, 1, 14, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 61, 8, 14, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 62, 4, 14, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 63, 9, 14, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 64, 10, 14, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 65, 7, 15, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 66, 6, 15, 1, 1447454036, 43, 0, 'completed', '', '', 'none', '100'),
	(3, 67, 8, 6, 1, 1447541363, 0, 0, 'completed', '', '', 'none', '100'),
	(3, 68, 9, 6, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 69, 10, 6, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 70, 7, 16, 1, 0, 0, 0, 'not attempted', NULL, NULL, 'none', ''),
	(3, 71, 6, 16, 1, 1447615952, 49, 0, 'completed', '', '', 'none', '100');
/*!40000 ALTER TABLE `c_lp_item_view` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_lp_iv_interaction
CREATE TABLE IF NOT EXISTS `c_lp_iv_interaction` (
  `c_id` int(11) NOT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lp_iv_id` bigint(20) unsigned NOT NULL,
  `interaction_id` varchar(255) NOT NULL DEFAULT '',
  `interaction_type` varchar(255) NOT NULL DEFAULT '',
  `weighting` double NOT NULL DEFAULT '0',
  `completion_time` varchar(16) NOT NULL DEFAULT '',
  `correct_responses` text NOT NULL,
  `student_response` text NOT NULL,
  `result` varchar(255) NOT NULL DEFAULT '',
  `latency` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`c_id`,`id`),
  KEY `lp_iv_id` (`lp_iv_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_lp_iv_interaction: 0 rows
DELETE FROM `c_lp_iv_interaction`;
/*!40000 ALTER TABLE `c_lp_iv_interaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_lp_iv_interaction` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_lp_iv_objective
CREATE TABLE IF NOT EXISTS `c_lp_iv_objective` (
  `c_id` int(11) NOT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lp_iv_id` bigint(20) unsigned NOT NULL,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `objective_id` varchar(255) NOT NULL DEFAULT '',
  `score_raw` float unsigned NOT NULL DEFAULT '0',
  `score_max` float unsigned NOT NULL DEFAULT '0',
  `score_min` float unsigned NOT NULL DEFAULT '0',
  `status` char(32) NOT NULL DEFAULT 'not attempted',
  PRIMARY KEY (`c_id`,`id`),
  KEY `lp_iv_id` (`lp_iv_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_lp_iv_objective: 0 rows
DELETE FROM `c_lp_iv_objective`;
/*!40000 ALTER TABLE `c_lp_iv_objective` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_lp_iv_objective` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_lp_view
CREATE TABLE IF NOT EXISTS `c_lp_view` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lp_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `view_count` int(10) unsigned NOT NULL DEFAULT '0',
  `last_item` int(10) unsigned NOT NULL DEFAULT '0',
  `progress` int(10) unsigned DEFAULT '0',
  `session_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`id`),
  KEY `lp_id` (`lp_id`),
  KEY `user_id` (`user_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_lp_view: 16 rows
DELETE FROM `c_lp_view`;
/*!40000 ALTER TABLE `c_lp_view` DISABLE KEYS */;
INSERT INTO `c_lp_view` (`c_id`, `id`, `lp_id`, `user_id`, `view_count`, `last_item`, `progress`, `session_id`) VALUES
	(3, 3, 1, 20, 1, 8, 80, 0),
	(3, 2, 2, 3, 1, 6, 100, 0),
	(3, 1, 1, 3, 1, 8, 100, 0),
	(3, 4, 2, 20, 1, 6, 100, 0),
	(3, 5, 2, 39, 1, 0, 0, 0),
	(3, 6, 1, 43, 1, 8, 80, 0),
	(3, 7, 1, 37, 1, 0, 0, 0),
	(3, 8, 2, 48, 1, 6, 100, 0),
	(3, 9, 1, 48, 1, 5, 67, 0),
	(3, 10, 1, 46, 1, 5, 33, 0),
	(3, 11, 1, 39, 1, 0, 0, 0),
	(3, 12, 2, 42, 1, 6, 100, 0),
	(3, 13, 1, 42, 1, 0, 0, 0),
	(3, 14, 1, 21, 1, 5, 20, 0),
	(3, 15, 2, 47, 1, 6, 100, 0),
	(3, 16, 2, 43, 1, 6, 100, 0);
/*!40000 ALTER TABLE `c_lp_view` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_metadata
CREATE TABLE IF NOT EXISTS `c_metadata` (
  `c_id` int(11) NOT NULL,
  `eid` varchar(250) NOT NULL,
  `mdxmltext` text,
  `md5` char(32) DEFAULT '',
  `htmlcache1` text,
  `htmlcache2` text,
  `indexabletext` text,
  PRIMARY KEY (`c_id`,`eid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_metadata: 0 rows
DELETE FROM `c_metadata`;
/*!40000 ALTER TABLE `c_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_metadata` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_notebook
CREATE TABLE IF NOT EXISTS `c_notebook` (
  `c_id` int(11) NOT NULL,
  `notebook_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `course` varchar(40) NOT NULL,
  `session_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `update_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`,`notebook_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_notebook: 1 rows
DELETE FROM `c_notebook`;
/*!40000 ALTER TABLE `c_notebook` DISABLE KEYS */;
INSERT INTO `c_notebook` (`c_id`, `notebook_id`, `user_id`, `course`, `session_id`, `title`, `description`, `creation_date`, `update_date`, `status`) VALUES
	(3, 1, 3, 'GEOMETRIACEPREUNID103', 0, 'Recordatorio', '<p>Escanear las soluciones para los problemas antes del parcial y entregarlos a los alumnos.</p>', '2015-10-21 21:58:11', '2015-10-21 21:58:11', 0);
/*!40000 ALTER TABLE `c_notebook` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_online_connected
CREATE TABLE IF NOT EXISTS `c_online_connected` (
  `c_id` int(11) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `last_connection` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`c_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_online_connected: 0 rows
DELETE FROM `c_online_connected`;
/*!40000 ALTER TABLE `c_online_connected` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_online_connected` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_online_link
CREATE TABLE IF NOT EXISTS `c_online_link` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL DEFAULT '',
  `url` char(100) NOT NULL,
  PRIMARY KEY (`c_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_online_link: 0 rows
DELETE FROM `c_online_link`;
/*!40000 ALTER TABLE `c_online_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_online_link` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_permission_group
CREATE TABLE IF NOT EXISTS `c_permission_group` (
  `c_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `tool` varchar(250) NOT NULL DEFAULT '',
  `action` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`c_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_permission_group: 0 rows
DELETE FROM `c_permission_group`;
/*!40000 ALTER TABLE `c_permission_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_permission_group` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_permission_task
CREATE TABLE IF NOT EXISTS `c_permission_task` (
  `c_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL DEFAULT '0',
  `tool` varchar(250) NOT NULL DEFAULT '',
  `action` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`c_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_permission_task: 3 rows
DELETE FROM `c_permission_task`;
/*!40000 ALTER TABLE `c_permission_task` DISABLE KEYS */;
INSERT INTO `c_permission_task` (`c_id`, `id`, `task_id`, `tool`, `action`) VALUES
	(3, 1, 1, 'BLOG_1', 'article_delete'),
	(3, 2, 1, 'BLOG_1', 'article_edit'),
	(3, 3, 1, 'BLOG_1', 'article_comments_delete');
/*!40000 ALTER TABLE `c_permission_task` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_permission_user
CREATE TABLE IF NOT EXISTS `c_permission_user` (
  `c_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `tool` varchar(250) NOT NULL DEFAULT '',
  `action` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`c_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_permission_user: 2 rows
DELETE FROM `c_permission_user`;
/*!40000 ALTER TABLE `c_permission_user` DISABLE KEYS */;
INSERT INTO `c_permission_user` (`c_id`, `id`, `user_id`, `tool`, `action`) VALUES
	(3, 1, 3, 'BLOG_1', 'article_add'),
	(3, 2, 3, 'BLOG_1', 'article_comments_add');
/*!40000 ALTER TABLE `c_permission_user` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_quiz
CREATE TABLE IF NOT EXISTS `c_quiz` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `sound` varchar(255) DEFAULT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `random` int(11) NOT NULL DEFAULT '0',
  `random_answers` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `results_disabled` int(10) unsigned NOT NULL DEFAULT '0',
  `access_condition` text,
  `max_attempt` int(11) NOT NULL DEFAULT '0',
  `start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `feedback_type` int(11) NOT NULL DEFAULT '0',
  `expired_time` int(11) NOT NULL DEFAULT '0',
  `session_id` int(11) DEFAULT '0',
  `propagate_neg` int(11) NOT NULL DEFAULT '0',
  `review_answers` int(11) NOT NULL DEFAULT '0',
  `random_by_category` int(11) NOT NULL DEFAULT '0',
  `text_when_finished` text,
  `display_category_name` int(11) NOT NULL DEFAULT '1',
  `pass_percentage` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`,`id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_quiz: 3 rows
DELETE FROM `c_quiz`;
/*!40000 ALTER TABLE `c_quiz` DISABLE KEYS */;
INSERT INTO `c_quiz` (`c_id`, `id`, `title`, `description`, `sound`, `type`, `random`, `random_answers`, `active`, `results_disabled`, `access_condition`, `max_attempt`, `start_time`, `end_time`, `feedback_type`, `expired_time`, `session_id`, `propagate_neg`, `review_answers`, `random_by_category`, `text_when_finished`, `display_category_name`, `pass_percentage`) VALUES
	(1, 1, 'HTML', '', '', 2, 0, 0, -1, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, '', 1, 0),
	(1, 2, 'PHP Ejercicios propuestos', '', '', 2, 0, 0, 1, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, '', 1, 0),
	(3, 1, 'Congruencia de los Triangulos', '', '', 2, 0, 0, 0, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, '', 1, 0);
/*!40000 ALTER TABLE `c_quiz` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_quiz_answer
CREATE TABLE IF NOT EXISTS `c_quiz_answer` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL,
  `id_auto` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(10) unsigned NOT NULL,
  `answer` text NOT NULL,
  `correct` mediumint(8) unsigned DEFAULT NULL,
  `comment` text,
  `ponderation` float(6,2) NOT NULL DEFAULT '0.00',
  `position` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `hotspot_coordinates` text,
  `hotspot_type` enum('square','circle','poly','delineation','oar') DEFAULT NULL,
  `destination` text NOT NULL,
  `answer_code` char(10) DEFAULT '',
  PRIMARY KEY (`c_id`,`id_auto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_quiz_answer: 34 rows
DELETE FROM `c_quiz_answer`;
/*!40000 ALTER TABLE `c_quiz_answer` DISABLE KEYS */;
INSERT INTO `c_quiz_answer` (`c_id`, `id`, `id_auto`, `question_id`, `answer`, `correct`, `comment`, `ponderation`, `position`, `hotspot_coordinates`, `hotspot_type`, `destination`, `answer_code`) VALUES
	(3, 1, 1, 1, '<p>Mesopotania</p>', 0, '', 0.00, 1, '', '', '0@@0@@0@@0', ''),
	(3, 2, 2, 1, '<p>Egipto</p>', 1, '', 1.00, 2, '', '', '0@@0@@0@@0', ''),
	(3, 3, 3, 1, '<p>China</p>', 0, '', 0.00, 3, '', '', '0@@0@@0@@0', ''),
	(3, 4, 4, 1, '<p>Hindu</p>', 0, '', 0.00, 4, '', '', '0@@0@@0@@0', ''),
	(3, 1, 5, 2, '<p>LLL (Lado Ldo Lado)</p>', 1, '', 1.00, 1, '', '', '', ''),
	(3, 2, 6, 2, '<p>LAL (Lado Angulo Lado)</p>', 1, '', 1.00, 2, '', '', '', ''),
	(3, 3, 7, 2, '<p>ALA (Angulo Lado Angulo)</p>', 1, '', 1.00, 3, '', '', '', ''),
	(3, 4, 8, 2, '<p>AAA (Angulo Angulo Angulo)</p>', 0, '', 0.00, 4, '', '', '', ''),
	(3, 1, 9, 3, '<p>Dos figuras geometricas son congruentes si tienen la misma [forma] y el mismo [tama&ntilde;o]</p>::0.5,0.5@', 0, '', 0.00, 1, '', '', '', ''),
	(3, 1, 10, 4, 'Teorema de Pitagoras', 0, '', 0.00, 1, '', '', '', ''),
	(3, 2, 11, 4, 'Teorema de Pithot', 0, '', 0.00, 2, '', '', '', ''),
	(3, 3, 12, 4, 'Teorema de Thales', 0, '', 0.00, 3, '', '', '', ''),
	(3, 4, 13, 4, 'Proporcionalidad', 3, '', 1.00, 4, '', '', '', ''),
	(3, 5, 14, 4, 'Triangulos Rectangulos', 1, '', 1.00, 5, '', '', '', ''),
	(3, 6, 15, 4, 'Cuadrilateros Inscriptibles', 2, '', 1.00, 6, '', '', '', ''),
	(3, 1, 16, 6, 'Triangulo Escaleno', 0, '', 1.00, 1, '196;272|250|142', 'circle', '', ''),
	(3, 2, 17, 6, 'Triangulo Isosceles', 0, '', 1.00, 2, '254;104|199|130', 'circle', '', ''),
	(3, 3, 18, 6, 'Triangulo Equilatero', 0, '', 1.00, 3, '66;99|120|140', 'circle', '', ''),
	(3, 1, 19, 7, '<p>Aplicar Teorema de Pitagoras</p>', 0, '', 2.00, 1, '', '', '', ''),
	(3, 2, 20, 7, '<p>Aplicar congruencia de triangulos</p>', 1, '', 0.00, 2, '', '', '', ''),
	(3, 3, 21, 7, '<p>Aplicar el teorema de la Base Media</p>', 1, '', 0.00, 3, '', '', '', ''),
	(3, 1, 22, 8, '<p>Si&nbsp; se Puede</p>', 1, '', 1.00, 1, '', '', '0@@0@@0@@0', ''),
	(3, 2, 23, 8, '<p>No se Puede</p>', 0, '', 0.00, 2, '', '', '0@@0@@0@@0', ''),
	(3, 3, 24, 8, '<p>No se</p>', 0, '', 0.00, 666, '', '', '', ''),
	(3, 1, 25, 9, '<p>El Teorema de las Tres Perpendiculares es aplicable solo en la Geoemtria del Espacio</p>', 1, '', 0.00, 1, '', '', '', ''),
	(3, 2, 26, 9, '<p>Todo Prisma tiene sus bases paralelas</p>', 1, '', 0.00, 2, '', '', '', ''),
	(3, 3, 27, 9, '<p>Un cubo es un tipo especial de Prisma</p>', 1, '', 0.00, 3, '', '', '', ''),
	(3, 4, 28, 9, '<p>Una piramide tiene un unico vertice</p>', 1, '', 0.00, 4, '', '', '', ''),
	(3, 1, 29, 10, '<p>Una circunferencia es un conjunto Convexo</p>', 0, '', 2.00, 1, '', '', '', ''),
	(3, 2, 30, 10, '<p>Un circulo es un conjunto No Convexo</p>', 0, '', 0.00, 2, '', '', '', ''),
	(3, 3, 31, 10, '<p>La interseccion de dos conjuntosd convexos es otro conjunto convexo</p>', 1, '', 0.00, 3, '', '', '', ''),
	(3, 1, 32, 11, '<p>Una esfera es un conjunto convexo</p>', 1, '', 2.33, 1, '', '', '', ''),
	(3, 2, 33, 11, '<p>Toda esfera tiene un unico centro</p>', 1, '', 2.33, 2, '', '', '', ''),
	(3, 3, 34, 11, '<p>Toda esfera tiene un radio positivo</p>', 1, '', 2.33, 3, '', '', '', '');
/*!40000 ALTER TABLE `c_quiz_answer` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_quiz_question
CREATE TABLE IF NOT EXISTS `c_quiz_question` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `description` text,
  `ponderation` float(6,2) NOT NULL DEFAULT '0.00',
  `position` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `picture` varchar(50) DEFAULT NULL,
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `extra` varchar(255) DEFAULT NULL,
  `question_code` char(10) DEFAULT '',
  PRIMARY KEY (`c_id`,`id`),
  KEY `position` (`position`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_quiz_question: 11 rows
DELETE FROM `c_quiz_question`;
/*!40000 ALTER TABLE `c_quiz_question` DISABLE KEYS */;
INSERT INTO `c_quiz_question` (`c_id`, `id`, `question`, `description`, `ponderation`, `position`, `type`, `picture`, `level`, `extra`, `question_code`) VALUES
	(3, 1, 'Que civilizacion calculo por primera vez el valor de PI', '', 1.00, 1, 1, '', 1, '', ''),
	(3, 2, 'Que criterios de congruencia existen', '', 3.00, 2, 2, '', 1, '', ''),
	(3, 3, 'Congruencia de Triangulos', '<p>Congruencia de Triangulos</p>', 1.00, 3, 3, '', 1, '', ''),
	(3, 4, 'Asigne el teorema aplicable a cada tema de Geometria', '<p>Temas de Geometria comparados con los Teoremas que existen en cada Tema.</p>', 3.00, 4, 4, '', 1, '', ''),
	(3, 5, 'Que es una particion de un Conjunto', '', 2.00, 5, 5, '', 1, '', ''),
	(3, 6, 'Identifique los tipos de Triangulos que Existen', '<p>Marque el tipo de triangulo que existe.</p>', 3.00, 6, 6, 'quiz-6.jpg', 1, '', ''),
	(3, 7, 'Que pasos se siguen para demostrar el teorema de la mediana de un trapecio', '<p>Que pasos se siguen para demostrar el teorema de la mediana de un trapecio</p>', 2.00, 7, 9, '', 1, '', ''),
	(3, 8, 'Aplicando semejanza de triangulos se puede demostrar el Teorema de PItagoras', '', 1.00, 8, 10, '', 1, '', ''),
	(3, 9, 'Geometria de Espacio', '', 4.00, 9, 11, '', 1, '1:0.5:0', ''),
	(3, 10, 'Conjuntos Convexos', '', 2.00, 10, 12, '', 1, '', ''),
	(3, 11, 'Esferas', '', 7.00, 11, 14, '', 1, '', '');
/*!40000 ALTER TABLE `c_quiz_question` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_quiz_question_category
CREATE TABLE IF NOT EXISTS `c_quiz_question_category` (
  `c_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`c_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_quiz_question_category: 0 rows
DELETE FROM `c_quiz_question_category`;
/*!40000 ALTER TABLE `c_quiz_question_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_quiz_question_category` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_quiz_question_option
CREATE TABLE IF NOT EXISTS `c_quiz_question_option` (
  `c_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` int(10) unsigned NOT NULL,
  PRIMARY KEY (`c_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_quiz_question_option: 3 rows
DELETE FROM `c_quiz_question_option`;
/*!40000 ALTER TABLE `c_quiz_question_option` DISABLE KEYS */;
INSERT INTO `c_quiz_question_option` (`c_id`, `id`, `question_id`, `name`, `position`) VALUES
	(3, 1, 9, 'True', 1),
	(3, 2, 9, 'False', 2),
	(3, 3, 9, 'DoubtScore', 3);
/*!40000 ALTER TABLE `c_quiz_question_option` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_quiz_question_rel_category
CREATE TABLE IF NOT EXISTS `c_quiz_question_rel_category` (
  `c_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`c_id`,`question_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_quiz_question_rel_category: 0 rows
DELETE FROM `c_quiz_question_rel_category`;
/*!40000 ALTER TABLE `c_quiz_question_rel_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_quiz_question_rel_category` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_quiz_rel_question
CREATE TABLE IF NOT EXISTS `c_quiz_rel_question` (
  `c_id` int(11) NOT NULL,
  `question_id` int(10) unsigned NOT NULL,
  `exercice_id` int(10) unsigned NOT NULL,
  `question_order` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`c_id`,`question_id`,`exercice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_quiz_rel_question: 11 rows
DELETE FROM `c_quiz_rel_question`;
/*!40000 ALTER TABLE `c_quiz_rel_question` DISABLE KEYS */;
INSERT INTO `c_quiz_rel_question` (`c_id`, `question_id`, `exercice_id`, `question_order`) VALUES
	(3, 1, 1, 1),
	(3, 2, 1, 2),
	(3, 3, 1, 3),
	(3, 4, 1, 4),
	(3, 5, 1, 5),
	(3, 6, 1, 6),
	(3, 7, 1, 7),
	(3, 8, 1, 8),
	(3, 9, 1, 9),
	(3, 10, 1, 10),
	(3, 11, 1, 11);
/*!40000 ALTER TABLE `c_quiz_rel_question` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_resource
CREATE TABLE IF NOT EXISTS `c_resource` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source_type` varchar(50) DEFAULT NULL,
  `source_id` int(10) unsigned DEFAULT NULL,
  `resource_type` varchar(50) DEFAULT NULL,
  `resource_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`c_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_resource: 0 rows
DELETE FROM `c_resource`;
/*!40000 ALTER TABLE `c_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_resource` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_role
CREATE TABLE IF NOT EXISTS `c_role` (
  `c_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(250) NOT NULL DEFAULT '',
  `role_comment` text,
  `default_role` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`c_id`,`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_role: 0 rows
DELETE FROM `c_role`;
/*!40000 ALTER TABLE `c_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_role` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_role_group
CREATE TABLE IF NOT EXISTS `c_role_group` (
  `c_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `scope` varchar(20) NOT NULL DEFAULT 'course',
  `group_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`c_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_role_group: 0 rows
DELETE FROM `c_role_group`;
/*!40000 ALTER TABLE `c_role_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_role_group` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_role_permissions
CREATE TABLE IF NOT EXISTS `c_role_permissions` (
  `c_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `tool` varchar(250) NOT NULL DEFAULT '',
  `action` varchar(50) NOT NULL DEFAULT '',
  `default_perm` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`c_id`,`role_id`,`tool`,`action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_role_permissions: 0 rows
DELETE FROM `c_role_permissions`;
/*!40000 ALTER TABLE `c_role_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_role_permissions` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_role_user
CREATE TABLE IF NOT EXISTS `c_role_user` (
  `c_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `scope` varchar(20) NOT NULL DEFAULT 'course',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_role_user: 0 rows
DELETE FROM `c_role_user`;
/*!40000 ALTER TABLE `c_role_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_role_user` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_student_publication
CREATE TABLE IF NOT EXISTS `c_student_publication` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `author` varchar(255) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `accepted` tinyint(4) DEFAULT '0',
  `post_group_id` int(11) NOT NULL DEFAULT '0',
  `sent_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `filetype` set('file','folder') NOT NULL DEFAULT 'file',
  `has_properties` int(10) unsigned NOT NULL DEFAULT '0',
  `view_properties` tinyint(4) DEFAULT NULL,
  `qualification` float(6,2) unsigned NOT NULL DEFAULT '0.00',
  `date_of_qualification` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `qualificator_id` int(10) unsigned NOT NULL DEFAULT '0',
  `weight` float(6,2) unsigned NOT NULL DEFAULT '0.00',
  `session_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `allow_text_assignment` int(11) NOT NULL DEFAULT '0',
  `contains_file` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_student_publication: 1 rows
DELETE FROM `c_student_publication`;
/*!40000 ALTER TABLE `c_student_publication` DISABLE KEYS */;
INSERT INTO `c_student_publication` (`c_id`, `id`, `url`, `title`, `description`, `author`, `active`, `accepted`, `post_group_id`, `sent_date`, `filetype`, `has_properties`, `view_properties`, `qualification`, `date_of_qualification`, `parent_id`, `qualificator_id`, `weight`, `session_id`, `user_id`, `allow_text_assignment`, `contains_file`) VALUES
	(3, 1, '/Conjetura_de_Fermat', 'Conjetura de Fermat', '<p>Esta tarea ha sido creada para hacer un trabajo sobre el ultimo teorema de Fermat...</p>', '', 1, 1, 0, '2015-10-17 08:51:32', 'folder', 1, 1, 0.00, '0000-00-00 00:00:00', 0, 0, 0.00, 0, 3, 0, 0);
/*!40000 ALTER TABLE `c_student_publication` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_student_publication_assignment
CREATE TABLE IF NOT EXISTS `c_student_publication_assignment` (
  `c_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expires_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ends_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `add_to_calendar` tinyint(4) NOT NULL,
  `enable_qualification` tinyint(4) NOT NULL,
  `publication_id` int(11) NOT NULL,
  PRIMARY KEY (`c_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_student_publication_assignment: 1 rows
DELETE FROM `c_student_publication_assignment`;
/*!40000 ALTER TABLE `c_student_publication_assignment` DISABLE KEYS */;
INSERT INTO `c_student_publication_assignment` (`c_id`, `id`, `expires_on`, `ends_on`, `add_to_calendar`, `enable_qualification`, `publication_id`) VALUES
	(3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 1);
/*!40000 ALTER TABLE `c_student_publication_assignment` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_survey
CREATE TABLE IF NOT EXISTS `c_survey` (
  `c_id` int(11) NOT NULL,
  `survey_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL,
  `title` text,
  `subtitle` text,
  `author` varchar(20) DEFAULT NULL,
  `lang` varchar(20) DEFAULT NULL,
  `avail_from` date DEFAULT NULL,
  `avail_till` date DEFAULT NULL,
  `is_shared` char(1) DEFAULT '1',
  `template` varchar(20) DEFAULT NULL,
  `intro` text,
  `surveythanks` text,
  `creation_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `invited` int(11) NOT NULL,
  `answered` int(11) NOT NULL,
  `invite_mail` text NOT NULL,
  `reminder_mail` text NOT NULL,
  `mail_subject` varchar(255) NOT NULL,
  `anonymous` enum('0','1') NOT NULL DEFAULT '0',
  `access_condition` text,
  `shuffle` tinyint(1) NOT NULL DEFAULT '0',
  `one_question_per_page` tinyint(1) NOT NULL DEFAULT '0',
  `survey_version` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(10) unsigned NOT NULL,
  `survey_type` int(11) NOT NULL DEFAULT '0',
  `show_form_profile` int(11) NOT NULL DEFAULT '0',
  `form_fields` text NOT NULL,
  `session_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`survey_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_survey: 1 rows
DELETE FROM `c_survey`;
/*!40000 ALTER TABLE `c_survey` DISABLE KEYS */;
INSERT INTO `c_survey` (`c_id`, `survey_id`, `code`, `title`, `subtitle`, `author`, `lang`, `avail_from`, `avail_till`, `is_shared`, `template`, `intro`, `surveythanks`, `creation_date`, `invited`, `answered`, `invite_mail`, `reminder_mail`, `mail_subject`, `anonymous`, `access_condition`, `shuffle`, `one_question_per_page`, `survey_version`, `parent_id`, `survey_type`, `show_form_profile`, `form_fields`, `session_id`) VALUES
	(3, 1, 'enc1', '<p>Encuesta sobre Geometria Plana</p>', '<p>Evaluacion sobre la didactica sobre le curso de Geometria Plana</p>', '3', 'spanish', '2015-10-21', '2015-10-31', '0', 'template', '<p>Evaluar la ense&ntilde;anza en el curso de Geometria en la parte de Geometria Plana</p>', '<p>Muchas Gracias por resolver la encuesta</p>', '2015-10-22 02:48:48', 1, 0, '', '', '', '1', NULL, 0, 0, '', 0, 0, 0, '', 0);
/*!40000 ALTER TABLE `c_survey` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_survey_answer
CREATE TABLE IF NOT EXISTS `c_survey_answer` (
  `c_id` int(11) NOT NULL,
  `answer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `survey_id` int(10) unsigned NOT NULL,
  `question_id` int(10) unsigned NOT NULL,
  `option_id` text NOT NULL,
  `value` int(10) unsigned NOT NULL,
  `user` varchar(250) NOT NULL,
  PRIMARY KEY (`c_id`,`answer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_survey_answer: 0 rows
DELETE FROM `c_survey_answer`;
/*!40000 ALTER TABLE `c_survey_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_survey_answer` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_survey_group
CREATE TABLE IF NOT EXISTS `c_survey_group` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `survey_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`c_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_survey_group: 0 rows
DELETE FROM `c_survey_group`;
/*!40000 ALTER TABLE `c_survey_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_survey_group` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_survey_invitation
CREATE TABLE IF NOT EXISTS `c_survey_invitation` (
  `c_id` int(11) NOT NULL,
  `survey_invitation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `survey_code` varchar(20) NOT NULL,
  `user` varchar(250) NOT NULL,
  `invitation_code` varchar(250) NOT NULL,
  `invitation_date` datetime NOT NULL,
  `reminder_date` datetime NOT NULL,
  `answered` int(11) NOT NULL DEFAULT '0',
  `session_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`survey_invitation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_survey_invitation: 1 rows
DELETE FROM `c_survey_invitation`;
/*!40000 ALTER TABLE `c_survey_invitation` DISABLE KEYS */;
INSERT INTO `c_survey_invitation` (`c_id`, `survey_invitation_id`, `survey_code`, `user`, `invitation_code`, `invitation_date`, `reminder_date`, `answered`, `session_id`) VALUES
	(3, 1, 'enc1', '3', '4a18380da785565d4b8f5382fab67010', '2015-10-22 02:52:43', '0000-00-00 00:00:00', 0, 0);
/*!40000 ALTER TABLE `c_survey_invitation` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_survey_question
CREATE TABLE IF NOT EXISTS `c_survey_question` (
  `c_id` int(11) NOT NULL,
  `question_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `survey_id` int(10) unsigned NOT NULL,
  `survey_question` text NOT NULL,
  `survey_question_comment` text NOT NULL,
  `type` varchar(250) NOT NULL,
  `display` varchar(10) NOT NULL,
  `sort` int(11) NOT NULL,
  `shared_question_id` int(11) DEFAULT NULL,
  `max_value` int(11) DEFAULT NULL,
  `survey_group_pri` int(10) unsigned NOT NULL DEFAULT '0',
  `survey_group_sec1` int(10) unsigned NOT NULL DEFAULT '0',
  `survey_group_sec2` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`question_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_survey_question: 1 rows
DELETE FROM `c_survey_question`;
/*!40000 ALTER TABLE `c_survey_question` DISABLE KEYS */;
INSERT INTO `c_survey_question` (`c_id`, `question_id`, `survey_id`, `survey_question`, `survey_question_comment`, `type`, `display`, `sort`, `shared_question_id`, `max_value`, `survey_group_pri`, `survey_group_sec1`, `survey_group_sec2`) VALUES
	(3, 1, 1, '<p>Se entendieron los fundamentos de la Geometria Plana</p>', '', 'yesno', 'horizontal', 1, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `c_survey_question` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_survey_question_option
CREATE TABLE IF NOT EXISTS `c_survey_question_option` (
  `c_id` int(11) NOT NULL,
  `question_option_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question_id` int(10) unsigned NOT NULL,
  `survey_id` int(10) unsigned NOT NULL,
  `option_text` text NOT NULL,
  `sort` int(11) NOT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`question_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_survey_question_option: 2 rows
DELETE FROM `c_survey_question_option`;
/*!40000 ALTER TABLE `c_survey_question_option` DISABLE KEYS */;
INSERT INTO `c_survey_question_option` (`c_id`, `question_option_id`, `question_id`, `survey_id`, `option_text`, `sort`, `value`) VALUES
	(3, 1, 1, 1, '<p>S&iacute;</p>', 1, 0),
	(3, 2, 1, 1, '<p>No</p>', 2, 0);
/*!40000 ALTER TABLE `c_survey_question_option` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_thematic
CREATE TABLE IF NOT EXISTS `c_thematic` (
  `c_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text,
  `display_order` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `session_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`id`),
  KEY `active` (`active`,`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_thematic: 3 rows
DELETE FROM `c_thematic`;
/*!40000 ALTER TABLE `c_thematic` DISABLE KEYS */;
INSERT INTO `c_thematic` (`c_id`, `id`, `title`, `content`, `display_order`, `active`, `session_id`) VALUES
	(1, 1, 'Introducción a HTML', '', 1, 1, 0),
	(1, 2, 'Javascript', '', 2, 1, 0),
	(3, 1, 'Prisma', '<p>Prisma</p>', 1, 1, 0);
/*!40000 ALTER TABLE `c_thematic` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_thematic_advance
CREATE TABLE IF NOT EXISTS `c_thematic_advance` (
  `c_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thematic_id` int(11) NOT NULL,
  `attendance_id` int(11) NOT NULL DEFAULT '0',
  `content` text,
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `duration` int(11) NOT NULL DEFAULT '0',
  `done_advance` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`id`),
  KEY `thematic_id` (`thematic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_thematic_advance: 1 rows
DELETE FROM `c_thematic_advance`;
/*!40000 ALTER TABLE `c_thematic_advance` DISABLE KEYS */;
INSERT INTO `c_thematic_advance` (`c_id`, `id`, `thematic_id`, `attendance_id`, `content`, `start_date`, `duration`, `done_advance`) VALUES
	(3, 1, 1, 0, '<p>Lectura del Prisma</p>', '2015-10-26 03:20:00', 1, 0);
/*!40000 ALTER TABLE `c_thematic_advance` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_thematic_plan
CREATE TABLE IF NOT EXISTS `c_thematic_plan` (
  `c_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thematic_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `description_type` int(11) NOT NULL,
  PRIMARY KEY (`c_id`,`id`),
  KEY `thematic_id` (`thematic_id`,`description_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_thematic_plan: 6 rows
DELETE FROM `c_thematic_plan`;
/*!40000 ALTER TABLE `c_thematic_plan` DISABLE KEYS */;
INSERT INTO `c_thematic_plan` (`c_id`, `id`, `thematic_id`, `title`, `description`, `description_type`) VALUES
	(3, 1, 1, 'Objetivos', '<p>Prisma 1</p>', 1),
	(3, 2, 1, 'Competencias a adquirir o desarrollar', '<p>Prisma 2</p>', 2),
	(3, 3, 1, 'Metodología', '<p>Prisma 3</p>', 3),
	(3, 4, 1, 'Infraestructura', '<p>Prisma 4</p>', 4),
	(3, 5, 1, 'Evaluación', '<p>Prisma 5</p>', 5),
	(3, 6, 1, 'Otros', '<p>Prisma 6</p>', 6);
/*!40000 ALTER TABLE `c_thematic_plan` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_tool
CREATE TABLE IF NOT EXISTS `c_tool` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `visibility` tinyint(3) unsigned DEFAULT '0',
  `admin` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `added_tool` tinyint(3) unsigned DEFAULT '1',
  `target` enum('_self','_blank') NOT NULL DEFAULT '_self',
  `category` varchar(20) NOT NULL DEFAULT 'authoring',
  `session_id` int(11) DEFAULT '0',
  PRIMARY KEY (`c_id`,`id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_tool: 121 rows
DELETE FROM `c_tool`;
/*!40000 ALTER TABLE `c_tool` DISABLE KEYS */;
INSERT INTO `c_tool` (`c_id`, `id`, `name`, `link`, `image`, `visibility`, `admin`, `address`, `added_tool`, `target`, `category`, `session_id`) VALUES
	(1, 1, 'course_description', 'course_description/', 'info.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(1, 2, 'calendar_event', 'calendar/agenda.php', 'agenda.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(1, 3, 'document', 'document/document.php', 'folder_document.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(1, 4, 'learnpath', 'newscorm/lp_controller.php', 'scorms.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(1, 5, 'link', 'link/link.php', 'links.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(1, 6, 'quiz', 'exercice/exercice.php', 'quiz.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(1, 7, 'announcement', 'announcements/announcements.php', 'valves.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(1, 8, 'forum', 'forum/index.php', 'forum.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(1, 9, 'dropbox', 'dropbox/index.php', 'dropbox.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(1, 10, 'user', 'user/user.php', 'members.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(1, 11, 'group', 'group/group.php', 'group.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(1, 12, 'chat', 'chat/chat.php', 'chat.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(1, 13, 'student_publication', 'work/work.php', 'works.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(1, 14, 'survey', 'survey/survey_list.php', 'survey.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(1, 15, 'wiki', 'wiki/index.php', 'wiki.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(1, 16, 'gradebook', 'gradebook/index.php', 'gradebook.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(1, 17, 'glossary', 'glossary/index.php', 'glossary.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(1, 18, 'notebook', 'notebook/index.php', 'notebook.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(1, 19, 'attendance', 'attendance/index.php', 'attendance.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(1, 20, 'course_progress', 'course_progress/index.php', 'course_progress.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(1, 21, 'blog_management', 'blog/blog_admin.php', 'blog_admin.gif', 0, '1', 'squaregrey.gif', 0, '_self', 'admin', 0),
	(1, 22, 'tracking', 'tracking/courseLog.php', 'statistics.gif', 0, '1', '', 0, '_self', 'admin', 0),
	(1, 23, 'course_setting', 'course_info/infocours.php', 'reference.gif', 0, '1', '', 0, '_self', 'admin', 0),
	(1, 24, 'course_maintenance', 'course_info/maintenance.php', 'backup.gif', 0, '1', '', 0, '_self', 'admin', 0),
	(4, 18, 'notebook', 'notebook/index.php', 'notebook.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(4, 17, 'glossary', 'glossary/index.php', 'glossary.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(4, 16, 'gradebook', 'gradebook/index.php', 'gradebook.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(4, 15, 'wiki', 'wiki/index.php', 'wiki.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(4, 14, 'survey', 'survey/survey_list.php', 'survey.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(4, 13, 'student_publication', 'work/work.php', 'works.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(4, 12, 'chat', 'chat/chat.php', 'chat.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(4, 11, 'group', 'group/group.php', 'group.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(4, 10, 'user', 'user/user.php', 'members.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(4, 9, 'dropbox', 'dropbox/index.php', 'dropbox.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(4, 8, 'forum', 'forum/index.php', 'forum.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(4, 7, 'announcement', 'announcements/announcements.php', 'valves.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(4, 6, 'quiz', 'exercice/exercice.php', 'quiz.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(4, 5, 'link', 'link/link.php', 'links.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(4, 4, 'learnpath', 'newscorm/lp_controller.php', 'scorms.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(4, 3, 'document', 'document/document.php', 'folder_document.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(4, 1, 'course_description', 'course_description/', 'info.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(4, 2, 'calendar_event', 'calendar/agenda.php', 'agenda.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(3, 1, 'course_description', 'course_description/', 'info.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(3, 2, 'calendar_event', 'calendar/agenda.php', 'agenda.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(3, 3, 'document', 'document/document.php', 'folder_document.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(3, 4, 'learnpath', 'newscorm/lp_controller.php', 'scorms.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(3, 5, 'link', 'link/link.php', 'links.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(3, 6, 'quiz', 'exercice/exercice.php', 'quiz.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(3, 7, 'announcement', 'announcements/announcements.php', 'valves.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(3, 8, 'forum', 'forum/index.php', 'forum.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(3, 9, 'dropbox', 'dropbox/index.php', 'dropbox.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(3, 10, 'user', 'user/user.php', 'members.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(3, 11, 'group', 'group/group.php', 'group.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(3, 12, 'chat', 'chat/chat.php', 'chat.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(3, 13, 'student_publication', 'work/work.php', 'works.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(3, 14, 'survey', 'survey/survey_list.php', 'survey.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(3, 15, 'wiki', 'wiki/index.php', 'wiki.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(3, 16, 'gradebook', 'gradebook/index.php', 'gradebook.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(3, 17, 'glossary', 'glossary/index.php', 'glossary.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(3, 18, 'notebook', 'notebook/index.php', 'notebook.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(3, 19, 'attendance', 'attendance/index.php', 'attendance.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(3, 20, 'course_progress', 'course_progress/index.php', 'course_progress.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(3, 21, 'blog_management', 'blog/blog_admin.php', 'blog_admin.gif', 0, '1', 'squaregrey.gif', 0, '_self', 'admin', 0),
	(3, 22, 'tracking', 'tracking/courseLog.php', 'statistics.gif', 0, '1', '', 0, '_self', 'admin', 0),
	(3, 23, 'course_setting', 'course_info/infocours.php', 'reference.gif', 0, '1', '', 0, '_self', 'admin', 0),
	(3, 24, 'course_maintenance', 'course_info/maintenance.php', 'backup.gif', 0, '1', '', 0, '_self', 'admin', 0),
	(4, 19, 'attendance', 'attendance/index.php', 'attendance.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(4, 20, 'course_progress', 'course_progress/index.php', 'course_progress.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(4, 21, 'blog_management', 'blog/blog_admin.php', 'blog_admin.gif', 0, '1', 'squaregrey.gif', 0, '_self', 'admin', 0),
	(4, 22, 'tracking', 'tracking/courseLog.php', 'statistics.gif', 0, '1', '', 0, '_self', 'admin', 0),
	(4, 23, 'course_setting', 'course_info/infocours.php', 'reference.gif', 0, '1', '', 0, '_self', 'admin', 0),
	(4, 24, 'course_maintenance', 'course_info/maintenance.php', 'backup.gif', 0, '1', '', 0, '_self', 'admin', 0),
	(3, 25, 'Geometria', 'blog/blog.php?blog_id=1', 'blog.gif', 1, '0', 'pastillegris.gif', 0, '_self', 'authoring', 0),
	(5, 1, 'course_description', 'course_description/', 'info.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(5, 2, 'calendar_event', 'calendar/agenda.php', 'agenda.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(5, 3, 'document', 'document/document.php', 'folder_document.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(5, 4, 'learnpath', 'newscorm/lp_controller.php', 'scorms.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(5, 5, 'link', 'link/link.php', 'links.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(5, 6, 'quiz', 'exercice/exercice.php', 'quiz.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(5, 7, 'announcement', 'announcements/announcements.php', 'valves.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(5, 8, 'forum', 'forum/index.php', 'forum.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(5, 9, 'dropbox', 'dropbox/index.php', 'dropbox.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(5, 10, 'user', 'user/user.php', 'members.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(5, 11, 'group', 'group/group.php', 'group.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(5, 12, 'chat', 'chat/chat.php', 'chat.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(5, 13, 'student_publication', 'work/work.php', 'works.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(5, 14, 'survey', 'survey/survey_list.php', 'survey.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(5, 15, 'wiki', 'wiki/index.php', 'wiki.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(5, 16, 'gradebook', 'gradebook/index.php', 'gradebook.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(5, 17, 'glossary', 'glossary/index.php', 'glossary.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(5, 18, 'notebook', 'notebook/index.php', 'notebook.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(5, 19, 'attendance', 'attendance/index.php', 'attendance.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(5, 20, 'course_progress', 'course_progress/index.php', 'course_progress.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(5, 21, 'blog_management', 'blog/blog_admin.php', 'blog_admin.gif', 0, '1', 'squaregrey.gif', 0, '_self', 'admin', 0),
	(5, 22, 'tracking', 'tracking/courseLog.php', 'statistics.gif', 0, '1', '', 0, '_self', 'admin', 0),
	(5, 23, 'course_setting', 'course_info/infocours.php', 'reference.gif', 0, '1', '', 0, '_self', 'admin', 0),
	(5, 24, 'course_maintenance', 'course_info/maintenance.php', 'backup.gif', 0, '1', '', 0, '_self', 'admin', 0),
	(57, 22, 'tracking', 'tracking/courseLog.php', 'statistics.gif', 0, '1', '', 0, '_self', 'admin', 0),
	(57, 21, 'blog_management', 'blog/blog_admin.php', 'blog_admin.gif', 0, '1', 'squaregrey.gif', 0, '_self', 'admin', 0),
	(57, 20, 'course_progress', 'course_progress/index.php', 'course_progress.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(57, 19, 'attendance', 'attendance/index.php', 'attendance.gif', 0, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(57, 18, 'notebook', 'notebook/index.php', 'notebook.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(57, 17, 'glossary', 'glossary/index.php', 'glossary.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(57, 16, 'gradebook', 'gradebook/index.php', 'gradebook.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(57, 15, 'wiki', 'wiki/index.php', 'wiki.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(57, 14, 'survey', 'survey/survey_list.php', 'survey.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(57, 13, 'student_publication', 'work/work.php', 'works.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(57, 12, 'chat', 'chat/chat.php', 'chat.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(57, 11, 'group', 'group/group.php', 'group.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(57, 10, 'user', 'user/user.php', 'members.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(57, 9, 'dropbox', 'dropbox/index.php', 'dropbox.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(57, 8, 'forum', 'forum/index.php', 'forum.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(57, 7, 'announcement', 'announcements/announcements.php', 'valves.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(57, 6, 'quiz', 'exercice/exercice.php', 'quiz.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(57, 5, 'link', 'link/link.php', 'links.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(57, 4, 'learnpath', 'newscorm/lp_controller.php', 'scorms.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(57, 1, 'course_description', 'course_description/', 'info.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(57, 2, 'calendar_event', 'calendar/agenda.php', 'agenda.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0),
	(57, 3, 'document', 'document/document.php', 'folder_document.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0),
	(57, 23, 'course_setting', 'course_info/infocours.php', 'reference.gif', 0, '1', '', 0, '_self', 'admin', 0),
	(57, 24, 'course_maintenance', 'course_info/maintenance.php', 'backup.gif', 0, '1', '', 0, '_self', 'admin', 0);
/*!40000 ALTER TABLE `c_tool` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_tool_intro
CREATE TABLE IF NOT EXISTS `c_tool_intro` (
  `c_id` int(11) NOT NULL,
  `id` varchar(50) NOT NULL,
  `intro_text` mediumtext NOT NULL,
  `session_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`id`,`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_tool_intro: 0 rows
DELETE FROM `c_tool_intro`;
/*!40000 ALTER TABLE `c_tool_intro` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_tool_intro` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_userinfo_content
CREATE TABLE IF NOT EXISTS `c_userinfo_content` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `definition_id` int(10) unsigned NOT NULL,
  `editor_ip` varchar(39) DEFAULT NULL,
  `edition_time` datetime DEFAULT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`c_id`,`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_userinfo_content: 0 rows
DELETE FROM `c_userinfo_content`;
/*!40000 ALTER TABLE `c_userinfo_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_userinfo_content` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_userinfo_def
CREATE TABLE IF NOT EXISTS `c_userinfo_def` (
  `c_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `comment` text,
  `line_count` tinyint(3) unsigned NOT NULL DEFAULT '5',
  `rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_userinfo_def: 0 rows
DELETE FROM `c_userinfo_def`;
/*!40000 ALTER TABLE `c_userinfo_def` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_userinfo_def` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_wiki
CREATE TABLE IF NOT EXISTS `c_wiki` (
  `c_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `reflink` varchar(255) NOT NULL DEFAULT 'index',
  `title` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) DEFAULT NULL,
  `dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `addlock` int(11) NOT NULL DEFAULT '1',
  `editlock` int(11) NOT NULL DEFAULT '0',
  `visibility` int(11) NOT NULL DEFAULT '1',
  `addlock_disc` int(11) NOT NULL DEFAULT '1',
  `visibility_disc` int(11) NOT NULL DEFAULT '1',
  `ratinglock_disc` int(11) NOT NULL DEFAULT '1',
  `assignment` int(11) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `progress` text NOT NULL,
  `score` int(11) DEFAULT '0',
  `version` int(11) DEFAULT NULL,
  `is_editing` int(11) NOT NULL DEFAULT '0',
  `time_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) DEFAULT '0',
  `linksto` text NOT NULL,
  `tag` text NOT NULL,
  `user_ip` varchar(39) NOT NULL,
  `session_id` int(11) DEFAULT '0',
  PRIMARY KEY (`c_id`,`id`),
  KEY `reflink` (`reflink`),
  KEY `group_id` (`group_id`),
  KEY `page_id` (`page_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_wiki: 10 rows
DELETE FROM `c_wiki`;
/*!40000 ALTER TABLE `c_wiki` DISABLE KEYS */;
INSERT INTO `c_wiki` (`c_id`, `id`, `page_id`, `reflink`, `title`, `content`, `user_id`, `group_id`, `dtime`, `addlock`, `editlock`, `visibility`, `addlock_disc`, `visibility_disc`, `ratinglock_disc`, `assignment`, `comment`, `progress`, `score`, `version`, `is_editing`, `time_edit`, `hits`, `linksto`, `tag`, `user_ip`, `session_id`) VALUES
	(1, 1, 1, 'index', 'Portada', '<p>Instalaci&oacute;n de Dreamweaver CS6</p>', 1, 0, '2015-09-25 13:26:01', 1, 0, 1, 1, 1, 1, 0, '', '0', 0, 1, 0, '0000-00-00 00:00:00', 5, '', '', '181.64.192.198', 0),
	(1, 2, 2, 'Instalación_de_Dreamweaver_CS6', 'Instalación de Dreamweaver CS6', '<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 11px;"><tbody><tr><td class="m1" style="color: rgb(83, 83, 83); padding-left: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; text-indent: 10px; text-align: justify; border-color: inherit; clip: rect(auto auto auto auto);"><strong>INSTALACI&Oacute;N DE OPENFIRE EN CENTOS 5.4</strong></td></tr><tr><td height="230" valign="top" class="m1" style="color: rgb(83, 83, 83); padding-left: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; text-indent: 10px; text-align: justify; border-color: inherit; clip: rect(auto auto auto auto);"><p>Openfire es un cliente de mensajer&iacute;a instant&aacute;nea libre (msn libre), ideal para empresas, donde podr&aacute;n tener una red privada para comunicaci&oacute;n. Utiliza el protocolo jabber y corre bajo java.<br />Java. Es un lenguaje de programaci&oacute;n multiplataforma ( sus programas trabaja tanto en Linux como en Windows) para lo cual debe de instalarse previamente una m&aacute;quina virtual.<br /><br />1.- Instalaci&oacute;n de jdk en Centos.<br />Descargamos del sitio web de java el jdk para Linux en su formato rpm y lo instalamos.</p><p><img src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image002_0001.jpg" alt="" /></p><p>&nbsp;</p><p><img width="567" height="254" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image002_0001.jpg" alt="" /></p><p>3.- Descargamos el archivo rpm del servidor openfire desde su sitio web.<br /><img width="566" height="30" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image004.jpg" alt="" /></p><p>4.- Reiniciamos el servicio openfire.<br /><img width="567" height="14" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image006.jpg" alt="" /></p><p>5.- Iniciamos la instalaci&oacute;n escribiendo en un navegador web&nbsp;<a href="http://localhost:9090/" style="color: rgb(0, 0, 0);">http://localhost:9090</a>. &nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Seleccionamos el idioma de instalaci&oacute;n y presionamos &ldquo;continue&rdquo;.<br /><img border="0" width="567" height="425" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image008.jpg" alt="" /></p><p>6.- Presionamos &ldquo;Continue&rdquo;<br /><img border="0" width="567" height="425" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image010.jpg" alt="" /></p><p>7.- Seleccionamos una conexi&oacute;n estandar con la base de datos. Esta ser&aacute; en mysql,&nbsp;<br /><img width="553" height="415" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image002_0002.jpg" alt="" /></p><p>8.- Iniciamos el servicio de base de datos mysql<br />/etc/init.d/mysqld restart<br />Conectamos al servidor de base de datos por consola y creamos la base de datos &ldquo;openfire&rdquo;</p><p><img width="566" height="113" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image004_0000.jpg" alt="" /></p><p>(*) Notar que hemos accedido a la base de datos sin poner password del usuario root. Por defecto el mysql se instala sin clave, pero si lo tuviera para conectarnos tendrimos que escribir mas o menos asi:<br />mysql &ndash;uroot &ndash;p<br />A continuaci&oacute;n nos pedir&aacute; el password.<br />password = *****<br />mysql&gt;</p><p>9.- Escribirmos las caracteristicas de conecci&oacute;n.<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Database Driver Presents : mysql<br />JDBC Driver Class&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : com.mysql.jdbc.Driver<br />Database URL &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : jdbc:mysql://localhost:3306/openfire<br />Username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : root<br />Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<br />&nbsp;&nbsp;&nbsp;&nbsp; Presionamos &ldquo;Continue&rdquo;.<br /><img width="567" height="425" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image006_0000.jpg" alt="" /></p><p>10.- Seleccionamos como va a trabajar con el sistema de usuarios por Default y presionamos &ldquo;Continue&rdquo;.</p><p>&nbsp;</p><p><img width="567" height="425" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image008_0000.jpg" alt="" /></p><p>11.- Escribimos el correo del usuario &ldquo;admin&rdquo; y su contrase&ntilde;a &ldquo;123456&rdquo;.<br /><img width="567" height="425" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image010_0000.jpg" alt="" /></p><p>&nbsp;</p><p>12.- La instalaci&oacute;n ha concluido, presionamos el bot&oacute;n para ir a la pantalla de logueo.<br /><img width="541" height="404" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image012.jpg" alt="" /></p><p>13.- Antes de loguearnos reiniciar al servidor openfire para que los cambios apliquen.<br /><img width="566" height="12" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image014.jpg" alt="" /></p><p>14.- Escribimos username: admin&nbsp;&nbsp;&nbsp; y password: 123456<br /><img width="552" height="414" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image016.jpg" alt="" /><br />15.- Accedemos al panel administrador del openfire.<br /><img width="567" height="425" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image018.jpg" alt="" /><br />16.- Creamos usuarios para empezar a chatear. Por ejemplo, al usario Freddy y Vanesa.</p><p><img width="567" height="425" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image020.jpg" alt="" /></p><p><img width="567" height="425" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image022.jpg" alt="" /></p><p><img width="567" height="425" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image024.jpg" alt="" /></p><p><img width="567" height="425" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image026.jpg" alt="" /></p><p>17.- Ahora estamos listos para comunicarnos, solo necesitamos un programa cliente. Descargamos el spark de su sitio web y lo instalamos.<br /><img width="566" height="453" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image028.gif" alt="" /><br />18.- Ahora conectamos desde 2 m&aacute;quinas pertenecientes a la red con nuestros usuarios creados y comenzamos a charlar.<br />Nombre de Usuario : freddy<br />Clave&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 123456<br />Servidor&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : IP donde instalaste el openfire<br /><br />Nombre de Usuario : vanesa<br />Clave&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 123456</p><p>&nbsp;</p></td></tr></tbody></table>', 1, 0, '2015-09-25 13:29:28', 1, 0, 1, 1, 1, 1, 0, '', '0', 0, 1, 0, '0000-00-00 00:00:00', 2, '', '', '181.64.192.198', 0),
	(1, 3, 3, 'Instalación_de_openfire_en_Centos', 'Instalación de openfire en Centos', '<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 11px;"><tbody><tr><td class="m1" style="color: rgb(83, 83, 83); padding-left: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; text-indent: 10px; text-align: justify; border-color: inherit; clip: rect(auto auto auto auto);"><strong>INSTALACI&Oacute;N DE OPENFIRE EN CENTOS 5.4</strong></td></tr><tr><td height="230" valign="top" class="m1" style="color: rgb(83, 83, 83); padding-left: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; text-indent: 10px; text-align: justify; border-color: inherit; clip: rect(auto auto auto auto);"><p>Openfire es un cliente de mensajer&iacute;a instant&aacute;nea libre (msn libre), ideal para empresas, donde podr&aacute;n tener una red privada para comunicaci&oacute;n. Utiliza el protocolo jabber y corre bajo java.<br />Java. Es un lenguaje de programaci&oacute;n multiplataforma ( sus programas trabaja tanto en Linux como en Windows) para lo cual debe de instalarse previamente una m&aacute;quina virtual.<br /><br />1.- Instalaci&oacute;n de jdk en Centos.<br />Descargamos del sitio web de java el jdk para Linux en su formato rpm y lo instalamos.</p><p><img src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image002_0001.jpg" alt="" /></p><p>&nbsp;</p><p><img width="567" height="254" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image002_0001.jpg" alt="" /></p><p>3.- Descargamos el archivo rpm del servidor openfire desde su sitio web.<br /><img width="566" height="30" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image004.jpg" alt="" /></p><p>4.- Reiniciamos el servicio openfire.<br /><img width="567" height="14" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image006.jpg" alt="" /></p><p>5.- Iniciamos la instalaci&oacute;n escribiendo en un navegador web&nbsp;<a href="http://localhost:9090/" style="color: rgb(0, 0, 0);">http://localhost:9090</a>. &nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Seleccionamos el idioma de instalaci&oacute;n y presionamos &ldquo;continue&rdquo;.<br /><img border="0" width="567" height="425" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image008.jpg" alt="" /></p><p>6.- Presionamos &ldquo;Continue&rdquo;<br /><img border="0" width="567" height="425" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image010.jpg" alt="" /></p><p>7.- Seleccionamos una conexi&oacute;n estandar con la base de datos. Esta ser&aacute; en mysql,&nbsp;<br /><img width="553" height="415" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image002_0002.jpg" alt="" /></p><p>8.- Iniciamos el servicio de base de datos mysql<br />/etc/init.d/mysqld restart<br />Conectamos al servidor de base de datos por consola y creamos la base de datos &ldquo;openfire&rdquo;</p><p><img width="566" height="113" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image004_0000.jpg" alt="" /></p><p>(*) Notar que hemos accedido a la base de datos sin poner password del usuario root. Por defecto el mysql se instala sin clave, pero si lo tuviera para conectarnos tendrimos que escribir mas o menos asi:<br />mysql &ndash;uroot &ndash;p<br />A continuaci&oacute;n nos pedir&aacute; el password.<br />password = *****<br />mysql&gt;</p><p>9.- Escribirmos las caracteristicas de conecci&oacute;n.<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Database Driver Presents : mysql<br />JDBC Driver Class&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : com.mysql.jdbc.Driver<br />Database URL &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : jdbc:mysql://localhost:3306/openfire<br />Username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : root<br />Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<br />&nbsp;&nbsp;&nbsp;&nbsp; Presionamos &ldquo;Continue&rdquo;.<br /><img width="567" height="425" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image006_0000.jpg" alt="" /></p><p>10.- Seleccionamos como va a trabajar con el sistema de usuarios por Default y presionamos &ldquo;Continue&rdquo;.</p><p>&nbsp;</p><p><img width="567" height="425" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image008_0000.jpg" alt="" /></p><p>11.- Escribimos el correo del usuario &ldquo;admin&rdquo; y su contrase&ntilde;a &ldquo;123456&rdquo;.<br /><img width="567" height="425" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image010_0000.jpg" alt="" /></p><p>&nbsp;</p><p>12.- La instalaci&oacute;n ha concluido, presionamos el bot&oacute;n para ir a la pantalla de logueo.<br /><img width="541" height="404" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image012.jpg" alt="" /></p><p>13.- Antes de loguearnos reiniciar al servidor openfire para que los cambios apliquen.<br /><img width="566" height="12" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image014.jpg" alt="" /></p><p>14.- Escribimos username: admin&nbsp;&nbsp;&nbsp; y password: 123456<br /><img width="552" height="414" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image016.jpg" alt="" /><br />15.- Accedemos al panel administrador del openfire.<br /><img width="567" height="425" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image018.jpg" alt="" /><br />16.- Creamos usuarios para empezar a chatear. Por ejemplo, al usario Freddy y Vanesa.</p><p><img width="567" height="425" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image020.jpg" alt="" /></p><p><img width="567" height="425" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image022.jpg" alt="" /></p><p><img width="567" height="425" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image024.jpg" alt="" /></p><p><img width="567" height="425" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image026.jpg" alt="" /></p><p>17.- Ahora estamos listos para comunicarnos, solo necesitamos un programa cliente. Descargamos el spark de su sitio web y lo instalamos.<br /><img width="566" height="453" src="http://www.ccjuantrujillo.org/liderbooks/curso/computacion/linux/images/openfire_clip_image028.gif" alt="" /><br />18.- Ahora conectamos desde 2 m&aacute;quinas pertenecientes a la red con nuestros usuarios creados y comenzamos a charlar.<br />Nombre de Usuario : freddy<br />Clave&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 123456<br />Servidor&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : IP donde instalaste el openfire<br /><br />Nombre de Usuario : vanesa<br />Clave&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 123456</p><p>&nbsp;</p></td></tr></tbody></table>', 1, 0, '2015-09-25 13:30:18', 1, 0, 1, 1, 1, 1, 0, '', '0', 0, 1, 0, '0000-00-00 00:00:00', 1, '', '', '181.64.192.198', 0),
	(1, 4, 1, 'index', 'Portada', '<p>Instalaci&oacute;n de XAMPP&nbsp;</p><p><embed type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" allowfullscreen="true" wmode="transparent" src="http://www.youtube.com/v/DhT12pV0t_o%26hl=en%26fs=1%26rel=0" width="425" height="344"></embed></p><p>&nbsp;</p>', 1, 0, '2015-09-30 09:34:53', 1, 0, 1, 1, 1, 1, 0, '', '0', 0, 2, 0, '0000-00-00 00:00:00', 5, '', '', '190.234.105.150', 0),
	(4, 1, 1, 'index', 'Portada', '', 1, 0, '2015-10-14 07:05:13', 1, 0, 1, 1, 1, 1, 0, '', '0', 0, 1, 0, '0000-00-00 00:00:00', 18, '', '', '181.64.192.71', 0),
	(4, 2, 2, 'Instalación_de_Vmware', 'Instalación de Vmware', '<p>&nbsp;</p><embed type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" allowfullscreen="true" wmode="transparent" src="http://www.youtube.com/v/0xDXRRKZm4U%26hl=en%26fs=1%26rel=0" width="425" height="344"></embed>', 1, 0, '2015-10-14 07:09:00', 1, 0, 1, 1, 1, 1, 0, '', '0', 0, 1, 0, '0000-00-00 00:00:00', 1, '', '', '181.64.192.71', 0),
	(4, 3, 3, 'Instalación_de_Ubuntu_14.0', 'Instalación de Ubuntu 14.0', '<embed type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" allowfullscreen="true" wmode="transparent" src="http://www.youtube.com/v/rTV99mrrxQk%26hl=en%26fs=1%26rel=0" width="425" height="344"></embed><p>&nbsp;</p>', 1, 0, '2015-10-14 07:12:32', 1, 0, 1, 1, 1, 1, 0, '', '0', 0, 1, 0, '0000-00-00 00:00:00', 1, '', '', '181.64.192.71', 0),
	(3, 1, 1, 'index', 'Portada', '<table width="210" height="40" border="0" align="center"><tbody><tr><td align="center">Historia de la Geometria</td></tr></tbody></table>', 3, 0, '2015-10-17 04:22:39', 1, 0, 1, 1, 1, 1, 0, 'Historia de la Geometria', '0', 0, 1, 0, '0000-00-00 00:00:00', 10, '', '', '190.42.158.188', 0),
	(4, 4, 2, 'Instalación_de_Vmware', 'Instalación de Vmware', '<p>&nbsp;</p><embed type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" allowfullscreen="true" wmode="transparent" src="http://www.youtube.com/v/0xDXRRKZm4U%26hl=en%26fs=1%26rel=0" width="425" height="344"></embed>', 1, 0, '2015-10-14 07:18:07', 1, 0, 1, 1, 1, 1, 0, '', '0', 0, 2, 0, '0000-00-00 00:00:00', 3, '', '', '181.64.192.71', 0),
	(3, 2, 2, 'Prueba_2', 'Prueba 2', '<p>Prueba 2</p>', 3, 0, '2015-10-17 04:27:45', 1, 0, 1, 1, 1, 1, 0, 'Prueba', '1', 0, 1, 0, '0000-00-00 00:00:00', 1, '', '', '190.42.158.188', 0);
/*!40000 ALTER TABLE `c_wiki` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_wiki_conf
CREATE TABLE IF NOT EXISTS `c_wiki_conf` (
  `c_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `task` text NOT NULL,
  `feedback1` text NOT NULL,
  `feedback2` text NOT NULL,
  `feedback3` text NOT NULL,
  `fprogress1` varchar(3) NOT NULL,
  `fprogress2` varchar(3) NOT NULL,
  `fprogress3` varchar(3) NOT NULL,
  `max_size` int(11) DEFAULT NULL,
  `max_text` int(11) DEFAULT NULL,
  `max_version` int(11) DEFAULT NULL,
  `startdate_assig` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `enddate_assig` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `delayedsubmit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`,`page_id`),
  KEY `page_id` (`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_wiki_conf: 8 rows
DELETE FROM `c_wiki_conf`;
/*!40000 ALTER TABLE `c_wiki_conf` DISABLE KEYS */;
INSERT INTO `c_wiki_conf` (`c_id`, `page_id`, `task`, `feedback1`, `feedback2`, `feedback3`, `fprogress1`, `fprogress2`, `fprogress3`, `max_size`, `max_text`, `max_version`, `startdate_assig`, `enddate_assig`, `delayedsubmit`) VALUES
	(1, 1, '', '', '', '', '', '', '', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 2, '', '', '', '', '', '', '', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(1, 3, '', '', '', '', '', '', '', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 1, '', '', '', '', '', '', '', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 2, '', '', '', '', '', '', '', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(4, 3, '', '', '', '', '', '', '', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 1, '', '', '', '', '', '', '', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
	(3, 2, '', '', '', '', '', '', '', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
/*!40000 ALTER TABLE `c_wiki_conf` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_wiki_discuss
CREATE TABLE IF NOT EXISTS `c_wiki_discuss` (
  `c_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publication_id` int(11) NOT NULL DEFAULT '0',
  `userc_id` int(11) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `p_score` varchar(255) DEFAULT NULL,
  `dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`c_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_wiki_discuss: 0 rows
DELETE FROM `c_wiki_discuss`;
/*!40000 ALTER TABLE `c_wiki_discuss` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_wiki_discuss` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.c_wiki_mailcue
CREATE TABLE IF NOT EXISTS `c_wiki_mailcue` (
  `c_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` text NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT '0',
  PRIMARY KEY (`c_id`,`id`,`user_id`),
  KEY `c_id` (`c_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cepreadm.c_wiki_mailcue: 0 rows
DELETE FROM `c_wiki_mailcue`;
/*!40000 ALTER TABLE `c_wiki_mailcue` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_wiki_mailcue` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.event_email_template
CREATE TABLE IF NOT EXISTS `event_email_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text,
  `subject` varchar(255) DEFAULT NULL,
  `event_type_name` varchar(255) DEFAULT NULL,
  `activated` tinyint(4) NOT NULL DEFAULT '0',
  `language_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_name_index` (`event_type_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.event_email_template: 0 rows
DELETE FROM `event_email_template`;
/*!40000 ALTER TABLE `event_email_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_email_template` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.event_sent
CREATE TABLE IF NOT EXISTS `event_sent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_from` int(11) NOT NULL,
  `user_to` int(11) DEFAULT NULL,
  `event_type_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_name_index` (`event_type_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.event_sent: 0 rows
DELETE FROM `event_sent`;
/*!40000 ALTER TABLE `event_sent` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_sent` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.promotion
CREATE TABLE IF NOT EXISTS `promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `career_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.promotion: 0 rows
DELETE FROM `promotion`;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.reservation_category
CREATE TABLE IF NOT EXISTS `reservation_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.reservation_category: 0 rows
DELETE FROM `reservation_category`;
/*!40000 ALTER TABLE `reservation_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation_category` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.reservation_category_rights
CREATE TABLE IF NOT EXISTS `reservation_category_rights` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `class_id` int(11) NOT NULL DEFAULT '0',
  `m_items` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.reservation_category_rights: 0 rows
DELETE FROM `reservation_category_rights`;
/*!40000 ALTER TABLE `reservation_category_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation_category_rights` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.reservation_item
CREATE TABLE IF NOT EXISTS `reservation_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `course_code` varchar(40) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `blackout` tinyint(4) NOT NULL DEFAULT '0',
  `creator` int(10) unsigned NOT NULL DEFAULT '0',
  `always_available` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.reservation_item: 0 rows
DELETE FROM `reservation_item`;
/*!40000 ALTER TABLE `reservation_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation_item` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.reservation_item_rights
CREATE TABLE IF NOT EXISTS `reservation_item_rights` (
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `class_id` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_right` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `delete_right` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_reservation` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `view_right` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`,`class_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.reservation_item_rights: 0 rows
DELETE FROM `reservation_item_rights`;
/*!40000 ALTER TABLE `reservation_item_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation_item_rights` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.reservation_main
CREATE TABLE IF NOT EXISTS `reservation_main` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subid` int(10) unsigned NOT NULL DEFAULT '0',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `auto_accept` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `max_users` int(10) unsigned NOT NULL DEFAULT '1',
  `start_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subscribe_from` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subscribe_until` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subscribers` int(10) unsigned NOT NULL DEFAULT '0',
  `notes` text NOT NULL,
  `timepicker` tinyint(4) NOT NULL DEFAULT '0',
  `timepicker_min` int(11) NOT NULL DEFAULT '0',
  `timepicker_max` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.reservation_main: 0 rows
DELETE FROM `reservation_main`;
/*!40000 ALTER TABLE `reservation_main` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation_main` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.reservation_subscription
CREATE TABLE IF NOT EXISTS `reservation_subscription` (
  `dummy` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reservation_id` int(10) unsigned NOT NULL DEFAULT '0',
  `accepted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `start_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`dummy`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.reservation_subscription: 0 rows
DELETE FROM `reservation_subscription`;
/*!40000 ALTER TABLE `reservation_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation_subscription` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.search_engine_ref
CREATE TABLE IF NOT EXISTS `search_engine_ref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_code` varchar(40) NOT NULL,
  `tool_id` varchar(100) NOT NULL,
  `ref_id_high_level` int(11) NOT NULL,
  `ref_id_second_level` int(11) DEFAULT NULL,
  `search_did` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.search_engine_ref: 0 rows
DELETE FROM `search_engine_ref`;
/*!40000 ALTER TABLE `search_engine_ref` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_engine_ref` ENABLE KEYS */;


-- Volcando estructura para tabla cepreadm.user
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
) ENGINE=MyISAM AUTO_INCREMENT=150 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cepreadm.user: 143 rows
DELETE FROM `user`;
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
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
