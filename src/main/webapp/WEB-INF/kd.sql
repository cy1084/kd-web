-- --------------------------------------------------------
-- 호스트:                          localhost
-- 서버 버전:                        11.0.2-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- kd 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `kd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `kd`;

-- 테이블 kd.board_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `board_info` (
  `BI_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `BI_TITLE` varchar(100) NOT NULL,
  `BI_CONTENT` text NOT NULL,
  `BI_WRITER` varchar(30) NOT NULL,
  `BI_CREDAT` timestamp NOT NULL,
  `BI_CNT` int(11) NOT NULL,
  PRIMARY KEY (`BI_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 kd.board_info:~1 rows (대략적) 내보내기
INSERT INTO `board_info` (`BI_NUM`, `BI_TITLE`, `BI_CONTENT`, `BI_WRITER`, `BI_CREDAT`, `BI_CNT`) VALUES
	(1, '첫번째 게시물', '냉무', '글쓴이', '2023-07-10 06:08:29', 1);

-- 테이블 kd.class_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `class_info` (
  `CI_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `CI_NAME` varchar(100) NOT NULL,
  `CI_DESC` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`CI_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 kd.class_info:~5 rows (대략적) 내보내기
INSERT INTO `class_info` (`CI_NUM`, `CI_NAME`, `CI_DESC`) VALUES
	(2, 'TEST1', 'TEST1'),
	(4, '영어', '개어려움'),
	(5, '사회', '노잼'),
	(6, '과학', '어려워'),
	(7, 'ㄹㄴㅇ', 'ㄴㄹㄴㅇ');

-- 테이블 kd.depart_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `depart_info` (
  `UI_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `DI_NAME` varchar(30) NOT NULL,
  `DI_DESC` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`UI_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 kd.depart_info:~0 rows (대략적) 내보내기
INSERT INTO `depart_info` (`UI_NUM`, `DI_NAME`, `DI_DESC`) VALUES
	(1, '개발팀', '개발');

-- 테이블 kd.user_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `user_info` (
  `UI_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `UI_ID` varchar(30) NOT NULL,
  `UI_PWD` varchar(30) NOT NULL,
  `UI_NAME` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`UI_NUM`),
  UNIQUE KEY `UI_ID` (`UI_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 kd.user_info:~10 rows (대략적) 내보내기
INSERT INTO `user_info` (`UI_NUM`, `UI_ID`, `UI_PWD`, `UI_NAME`) VALUES
	(2, 'TEST', 'TEST', '동동이'),
	(9, 'TEST8', 'TEST8', '하하'),
	(10, 'dyd', '1234', '황채영'),
	(11, 'dyddyd', '2580', '채영'),
	(12, 'cs', '1111', '철수'),
	(14, 'css', '1111', '철수'),
	(16, 'csss', '1111', '영희'),
	(17, 'cssss', '1111', '영희1'),
	(20, 'test111111', 'test', '황채영'),
	(21, '', 'null', ''),
	(24, 'fsfsd', '12', '황');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
