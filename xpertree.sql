-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.5.10-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table xpertree.ab_auth
DROP TABLE IF EXISTS `ab_auth`;
CREATE TABLE IF NOT EXISTS `ab_auth` (
  `AIN` int(12) NOT NULL,
  `ABIN` int(12) DEFAULT NULL,
  `INITIAL` tinytext DEFAULT NULL,
  `FN` mediumtext DEFAULT NULL,
  `MN` mediumtext DEFAULT NULL,
  `LN` mediumtext DEFAULT NULL,
  `SAL` mediumtext DEFAULT NULL,
  `QUAL` mediumtext DEFAULT NULL,
  `POS` mediumtext DEFAULT NULL,
  `AFFL` tinytext DEFAULT NULL,
  `AFFL_CON` tinytext DEFAULT NULL,
  PRIMARY KEY (`AIN`),
  KEY `ABIN` (`ABIN`),
  CONSTRAINT `ab_auth_ibfk_1` FOREIGN KEY (`ABIN`) REFERENCES `ab_auth` (`AIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table xpertree.com_auth
DROP TABLE IF EXISTS `com_auth`;
CREATE TABLE IF NOT EXISTS `com_auth` (
  `AIN` int(12) NOT NULL,
  `CMIN` int(12) DEFAULT NULL,
  `INITIAL` tinytext DEFAULT NULL,
  `FN` mediumtext DEFAULT NULL,
  `MN` mediumtext DEFAULT NULL,
  `LN` mediumtext DEFAULT NULL,
  `SAL` mediumtext DEFAULT NULL,
  `QUAL` mediumtext DEFAULT NULL,
  `POS` mediumtext DEFAULT NULL,
  `AFFL` tinytext DEFAULT NULL,
  `AFFL_CON` tinytext DEFAULT NULL,
  PRIMARY KEY (`AIN`),
  KEY `CMIN` (`CMIN`),
  CONSTRAINT `com_auth_ibfk_1` FOREIGN KEY (`CMIN`) REFERENCES `org_com` (`CMIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table xpertree.conf_abs
DROP TABLE IF EXISTS `conf_abs`;
CREATE TABLE IF NOT EXISTS `conf_abs` (
  `ABIN` int(12) NOT NULL,
  `CFIN` int(12) DEFAULT NULL,
  `A_TITLE` tinytext DEFAULT NULL,
  `A_TOPIC` tinytext DEFAULT NULL,
  `A_SUM` longtext DEFAULT NULL,
  PRIMARY KEY (`ABIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table xpertree.conf_ses
DROP TABLE IF EXISTS `conf_ses`;
CREATE TABLE IF NOT EXISTS `conf_ses` (
  `SIN` int(12) NOT NULL,
  `CFIN` int(12) DEFAULT NULL,
  `SES_NAME` tinytext DEFAULT NULL,
  `SES_TOPIC` mediumtext DEFAULT NULL,
  `SES_TYPE` mediumtext DEFAULT NULL,
  `SES_INFO` tinytext DEFAULT NULL,
  PRIMARY KEY (`SIN`),
  KEY `CFIN` (`CFIN`),
  CONSTRAINT `conf_ses_ibfk_1` FOREIGN KEY (`CFIN`) REFERENCES `xt_conf` (`CFIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table xpertree.ct_auth
DROP TABLE IF EXISTS `ct_auth`;
CREATE TABLE IF NOT EXISTS `ct_auth` (
  `AIN` int(12) NOT NULL,
  `CIN` int(12) DEFAULT NULL,
  `INITIAL` tinytext DEFAULT NULL,
  `FN` mediumtext DEFAULT NULL,
  `MN` mediumtext DEFAULT NULL,
  `LN` mediumtext DEFAULT NULL,
  `SAL` mediumtext DEFAULT NULL,
  `QUAL` mediumtext DEFAULT NULL,
  `POS` mediumtext DEFAULT NULL,
  `AFFL` tinytext DEFAULT NULL,
  `AFFL_CON` tinytext DEFAULT NULL,
  PRIMARY KEY (`AIN`),
  KEY `CIN` (`CIN`),
  CONSTRAINT `ct_auth_ibfk_1` FOREIGN KEY (`CIN`) REFERENCES `xt_ct` (`CIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table xpertree.ct_status
DROP TABLE IF EXISTS `ct_status`;
CREATE TABLE IF NOT EXISTS `ct_status` (
  `PRJ_ID` int(4) DEFAULT NULL,
  `STAT` tinytext DEFAULT NULL,
  KEY `PRJ_ID` (`PRJ_ID`),
  CONSTRAINT `ct_status_ibfk_1` FOREIGN KEY (`PRJ_ID`) REFERENCES `prj` (`PRJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table xpertree.jeb_mem
DROP TABLE IF EXISTS `jeb_mem`;
CREATE TABLE IF NOT EXISTS `jeb_mem` (
  `AIN` int(12) NOT NULL,
  `JIN` int(12) DEFAULT NULL,
  `INITIAL` tinytext DEFAULT NULL,
  `FN` mediumtext DEFAULT NULL,
  `MN` mediumtext DEFAULT NULL,
  `LN` mediumtext DEFAULT NULL,
  `SAL` mediumtext DEFAULT NULL,
  `QUAL` mediumtext DEFAULT NULL,
  `POS` mediumtext DEFAULT NULL,
  `AFFL` tinytext DEFAULT NULL,
  `AFF_CON` tinytext DEFAULT NULL,
  PRIMARY KEY (`AIN`),
  KEY `JIN` (`JIN`),
  CONSTRAINT `jeb_mem_ibfk_1` FOREIGN KEY (`JIN`) REFERENCES `xt_jeb` (`JIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table xpertree.org_com
DROP TABLE IF EXISTS `org_com`;
CREATE TABLE IF NOT EXISTS `org_com` (
  `CMIN` int(12) NOT NULL,
  `ORIN` int(12) DEFAULT NULL,
  `COM_NAME` tinytext DEFAULT NULL,
  PRIMARY KEY (`CMIN`),
  KEY `ORIN` (`ORIN`),
  CONSTRAINT `org_com_ibfk_1` FOREIGN KEY (`ORIN`) REFERENCES `xt_org` (`ORIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table xpertree.prj
DROP TABLE IF EXISTS `prj`;
CREATE TABLE IF NOT EXISTS `prj` (
  `PRJ_ID` int(4) NOT NULL,
  `PRJ_NAME` tinytext DEFAULT NULL,
  `PRJ_TA` tinytext DEFAULT NULL,
  `PUB_ST_YEAR` date DEFAULT NULL,
  `PUB_EN_YEAR` date DEFAULT NULL,
  `CT_ST_YEAR` date DEFAULT NULL,
  `CT_END_YEAR` date DEFAULT NULL,
  `PHAR_TAG` tinyint(1) DEFAULT NULL,
  `CONF_ST_YEAR` date DEFAULT NULL,
  `CONF_EN_YEAR` date DEFAULT NULL,
  `OR_COL_YEAR` date DEFAULT NULL,
  `OR_COL_EN_YEAR` date DEFAULT NULL,
  PRIMARY KEY (`PRJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table xpertree.prj_conf
DROP TABLE IF EXISTS `prj_conf`;
CREATE TABLE IF NOT EXISTS `prj_conf` (
  `CFIN` int(12) NOT NULL,
  `CF_N` tinytext DEFAULT NULL,
  `CF_ABBR` tinytext DEFAULT NULL,
  `CF_LINK` tinytext DEFAULT NULL,
  PRIMARY KEY (`CFIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table xpertree.prj_jeb
DROP TABLE IF EXISTS `prj_jeb`;
CREATE TABLE IF NOT EXISTS `prj_jeb` (
  `JIN` int(12) NOT NULL,
  `J_N` tinytext DEFAULT NULL,
  `J_LINK` tinytext DEFAULT NULL,
  `J_ABBR` tinytext DEFAULT NULL,
  PRIMARY KEY (`JIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table xpertree.prj_org
DROP TABLE IF EXISTS `prj_org`;
CREATE TABLE IF NOT EXISTS `prj_org` (
  `ORIN` int(12) NOT NULL,
  `OR_N` tinytext DEFAULT NULL,
  `OR_ABBR` tinytext DEFAULT NULL,
  `OR_LINK` tinytext DEFAULT NULL,
  PRIMARY KEY (`ORIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table xpertree.prj_org_com
DROP TABLE IF EXISTS `prj_org_com`;
CREATE TABLE IF NOT EXISTS `prj_org_com` (
  `COMIN` int(12) NOT NULL,
  `COM_NAME` int(12) DEFAULT NULL,
  PRIMARY KEY (`COMIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table xpertree.prj_sta
DROP TABLE IF EXISTS `prj_sta`;
CREATE TABLE IF NOT EXISTS `prj_sta` (
  `PRJ_ID` int(4) DEFAULT NULL,
  `PRJ_STA` tinytext DEFAULT NULL,
  KEY `PRJ_ID` (`PRJ_ID`),
  CONSTRAINT `prj_sta_ibfk_1` FOREIGN KEY (`PRJ_ID`) REFERENCES `prj` (`PRJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table xpertree.pub_auth
DROP TABLE IF EXISTS `pub_auth`;
CREATE TABLE IF NOT EXISTS `pub_auth` (
  `AIN` int(12) NOT NULL,
  `PIN` int(12) DEFAULT NULL,
  `INITIAL` tinytext DEFAULT NULL,
  `FN` mediumtext DEFAULT NULL,
  `MN` mediumtext DEFAULT NULL,
  `LN` mediumtext DEFAULT NULL,
  `SAL` mediumtext DEFAULT NULL,
  `QUAL` mediumtext DEFAULT NULL,
  `POS` mediumtext DEFAULT NULL,
  `AFFL` tinytext DEFAULT NULL,
  `AFFL_CON` tinytext DEFAULT NULL,
  PRIMARY KEY (`AIN`),
  KEY `PIN` (`PIN`),
  CONSTRAINT `pub_auth_ibfk_1` FOREIGN KEY (`PIN`) REFERENCES `xt_pub` (`PIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table xpertree.ses_auth
DROP TABLE IF EXISTS `ses_auth`;
CREATE TABLE IF NOT EXISTS `ses_auth` (
  `AIN` int(12) NOT NULL,
  `SIN` int(12) DEFAULT NULL,
  `INITIAL` tinytext DEFAULT NULL,
  `FN` mediumtext DEFAULT NULL,
  `MN` mediumtext DEFAULT NULL,
  `LN` mediumtext DEFAULT NULL,
  `SAL` mediumtext DEFAULT NULL,
  `QUAL` mediumtext DEFAULT NULL,
  `POS` mediumtext DEFAULT NULL,
  `AFFL` tinytext DEFAULT NULL,
  `AFFL_CON` tinytext DEFAULT NULL,
  PRIMARY KEY (`AIN`),
  KEY `SIN` (`SIN`),
  CONSTRAINT `ses_auth_ibfk_1` FOREIGN KEY (`SIN`) REFERENCES `conf_ses` (`SIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table xpertree.xt_conf
DROP TABLE IF EXISTS `xt_conf`;
CREATE TABLE IF NOT EXISTS `xt_conf` (
  `CONF_NAME` tinytext DEFAULT NULL,
  `CFIN` int(12) NOT NULL,
  `DATE` date DEFAULT NULL,
  `MESH_TERM` tinytext DEFAULT NULL,
  `THERAPY_AREA` tinytext DEFAULT NULL,
  `SUB_THERAPY_AREA` tinytext DEFAULT NULL,
  PRIMARY KEY (`CFIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table xpertree.xt_ct
DROP TABLE IF EXISTS `xt_ct`;
CREATE TABLE IF NOT EXISTS `xt_ct` (
  `CIN` int(12) NOT NULL,
  `NCTID` int(12) DEFAULT NULL,
  `S_TITLE` mediumtext DEFAULT NULL,
  `S_STAT` tinytext DEFAULT NULL,
  `LOC` mediumtext DEFAULT NULL,
  `MESH_TERMS` tinytext DEFAULT NULL,
  `COM_DATE` date DEFAULT NULL,
  `AGE_GR` int(2) DEFAULT NULL,
  `COND` mediumtext DEFAULT NULL,
  PRIMARY KEY (`CIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table xpertree.xt_jeb
DROP TABLE IF EXISTS `xt_jeb`;
CREATE TABLE IF NOT EXISTS `xt_jeb` (
  `JIN` int(12) NOT NULL,
  `NAME` mediumtext DEFAULT NULL,
  `LINK` mediumtext DEFAULT NULL,
  `YEAR` year(4) DEFAULT NULL,
  `MESH_TERMS` tinytext DEFAULT NULL,
  `COUNTRY` tinytext DEFAULT NULL,
  `THERAPY_AREA` tinytext DEFAULT NULL,
  `SUB_THERAPY_AREA` tinytext DEFAULT NULL,
  PRIMARY KEY (`JIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table xpertree.xt_org
DROP TABLE IF EXISTS `xt_org`;
CREATE TABLE IF NOT EXISTS `xt_org` (
  `ORIN` int(12) NOT NULL,
  `NAME` tinytext DEFAULT NULL,
  `COUNTRY` tinytext DEFAULT NULL,
  `THERAPY_AREA` tinytext DEFAULT NULL,
  `SUB_THERAPY_AREA` tinytext DEFAULT NULL,
  PRIMARY KEY (`ORIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table xpertree.xt_pub
DROP TABLE IF EXISTS `xt_pub`;
CREATE TABLE IF NOT EXISTS `xt_pub` (
  `PIN` int(12) NOT NULL,
  `PID` int(9) NOT NULL,
  `TITLE` text NOT NULL,
  `ABSTRACT` text NOT NULL,
  `MESH_TERMS` text NOT NULL,
  `DOI` tinytext NOT NULL,
  `JOU_ABBR` tinytext NOT NULL,
  `NUM_AUTH` int(3) NOT NULL,
  PRIMARY KEY (`PIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
