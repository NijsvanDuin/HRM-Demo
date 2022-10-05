-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 05 okt 2022 om 12:02
-- Serverversie: 5.7.31
-- PHP-versie: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrmmysql_sd2b`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `applicant`
--

DROP TABLE IF EXISTS `applicant`;
CREATE TABLE IF NOT EXISTS `applicant` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `JobId` int(11) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Title` varchar(10) DEFAULT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `NickName` varchar(50) DEFAULT NULL,
  `BirthDate` date NOT NULL,
  `Street` varchar(50) NOT NULL,
  `Number` int(11) NOT NULL,
  `NumberExtension` varchar(10) DEFAULT NULL,
  `ZipCode` varchar(50) NOT NULL,
  `Place` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Applicantkey` varchar(36) NOT NULL,
  `IsActive` bit(1) NOT NULL DEFAULT b'1',
  `Description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `JobId` (`JobId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `applicant`
--

INSERT INTO `applicant` (`Id`, `JobId`, `Gender`, `Title`, `FirstName`, `LastName`, `NickName`, `BirthDate`, `Street`, `Number`, `NumberExtension`, `ZipCode`, `Place`, `Email`, `Phone`, `Applicantkey`, `IsActive`, `Description`) VALUES
(1, 1, 'Male', 'Mr', 'Babara', 'MacCaffrey', 'Babara', '1986-03-28', 'Street01', 12, '1', '1234 TY', 'Utrecht', 'test1@hotmail.com', '0612345678', '6827a386-449c-11ed-bf5e-fc349795cd6c', b'1', NULL),
(2, 2, 'Male', 'Mr', 'Ines', 'Brushfield', 'Ines', '1986-04-13', 'Street02', 13, NULL, '1256 AT', 'Maarssen', 'test2@hotmail.com', '0612345673', '6827a536-449c-11ed-bf5e-fc349795cd6c', b'1', NULL),
(3, 3, 'Male', 'Mr', 'Freddi', 'Boagey', 'Freddi', '1985-02-07', 'Street03', 14, '4', '1295 KB', 'Almere', 'test3@hotmail.com', '0612345674', '6827a59a-449c-11ed-bf5e-fc349795cd6c', b'1', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE IF NOT EXISTS `company` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(50) NOT NULL,
  `CompanyCode` varchar(10) NOT NULL,
  `Street` varchar(50) NOT NULL,
  `Number` int(11) NOT NULL,
  `NumberExtension` varchar(10) DEFAULT NULL,
  `ZipCode` varchar(50) NOT NULL,
  `Place` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Companykey` varchar(36) NOT NULL,
  `IsActive` bit(1) NOT NULL DEFAULT b'1',
  `Description` varchar(200) DEFAULT NULL,
  `DateCreated` datetime NOT NULL,
  `DateModified` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `company`
--

INSERT INTO `company` (`Id`, `CompanyName`, `CompanyCode`, `Street`, `Number`, `NumberExtension`, `ZipCode`, `Place`, `Email`, `Phone`, `Companykey`, `IsActive`, `Description`, `DateCreated`, `DateModified`) VALUES
(1, 'MboUtrecht', 'MUT', 'Street01', 12, NULL, '1234 TY', 'Utrecht', 'test1@hotmail.com', '0612345678', '6801914b-449c-11ed-bf5e-fc349795cd6c', b'1', NULL, '2022-10-05 12:56:46', '2022-10-05 12:56:46'),
(2, 'Microsoft', 'MRS', 'Street02', 13, NULL, '1235 DF', 'Maarssen', 'test2@hotmail.com', '0612345671', '68019f3d-449c-11ed-bf5e-fc349795cd6c', b'1', NULL, '2022-10-05 12:56:46', '2022-10-05 12:56:46'),
(3, 'Rovict', 'RVC', 'Street03', 14, NULL, '1236 PL', 'Almere', 'test3@hotmail.com', '0612345672', '68019fb4-449c-11ed-bf5e-fc349795cd6c', b'1', NULL, '2022-10-05 12:56:46', '2022-10-05 12:56:46'),
(4, 'Read', 'RED', 'Street04', 15, NULL, '1237 NB', 'Alkmaar', 'test4@hotmail.com', '0612345673', '68019fdc-449c-11ed-bf5e-fc349795cd6c', b'1', NULL, '2022-10-05 12:56:46', '2022-10-05 12:56:46');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `job`
--

DROP TABLE IF EXISTS `job`;
CREATE TABLE IF NOT EXISTS `job` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Jobkey` varchar(36) NOT NULL,
  `IsActive` bit(1) NOT NULL DEFAULT b'1',
  `Description` varchar(200) DEFAULT NULL,
  `DateCreated` datetime NOT NULL,
  `DateModified` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `job`
--

INSERT INTO `job` (`Id`, `Name`, `Jobkey`, `IsActive`, `Description`, `DateCreated`, `DateModified`) VALUES
(1, 'Job1', '681ecbe3-449c-11ed-bf5e-fc349795cd6c', b'1', NULL, '2022-10-05 12:56:47', '2022-10-05 12:56:47'),
(2, 'Job2', '681ecd1f-449c-11ed-bf5e-fc349795cd6c', b'1', NULL, '2022-10-05 12:56:47', '2022-10-05 12:56:47'),
(3, 'Job3', '681ecd5a-449c-11ed-bf5e-fc349795cd6c', b'1', NULL, '2022-10-05 12:56:47', '2022-10-05 12:56:47'),
(4, 'Job4', '681ecd76-449c-11ed-bf5e-fc349795cd6c', b'1', NULL, '2022-10-05 12:56:47', '2022-10-05 12:56:47');

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `applicant`
--
ALTER TABLE `applicant`
  ADD CONSTRAINT `applicant_ibfk_1` FOREIGN KEY (`JobId`) REFERENCES `job` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
