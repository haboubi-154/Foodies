-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 17, 2021 at 03:30 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodies`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `AdminId` int NOT NULL,
  `UserId` int NOT NULL,
  PRIMARY KEY (`AdminId`),
  UNIQUE KEY `AdminId` (`AdminId`),
  UNIQUE KEY `AdminId_2` (`AdminId`),
  KEY `fk_admin` (`UserId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avis`
--

DROP TABLE IF EXISTS `avis`;
CREATE TABLE IF NOT EXISTS `avis` (
  `IdAvis` int NOT NULL,
  `TypeAvis` varchar(255) DEFAULT NULL,
  `NbreEtoiles` int NOT NULL,
  `IdClient` int NOT NULL,
  PRIMARY KEY (`IdAvis`),
  KEY `fk_client` (`IdClient`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catagories`
--

DROP TABLE IF EXISTS `catagories`;
CREATE TABLE IF NOT EXISTS `catagories` (
  `IdCatagorie` int NOT NULL,
  `NomCatagorie` varchar(50) DEFAULT NULL,
  `DescriptionCatagorie` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IdCatagorie`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commandes`
--

DROP TABLE IF EXISTS `commandes`;
CREATE TABLE IF NOT EXISTS `commandes` (
  `IdCommande` int NOT NULL,
  `QuantiteCommande` int NOT NULL,
  `IdClient` int NOT NULL,
  `IdLivreur` int NOT NULL,
  `Remarque` varchar(255) NOT NULL,
  PRIMARY KEY (`IdCommande`),
  KEY `fk_client` (`IdClient`),
  KEY `fk_livreur` (`IdLivreur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commentaires`
--

DROP TABLE IF EXISTS `commentaires`;
CREATE TABLE IF NOT EXISTS `commentaires` (
  `IdCommentaire` int NOT NULL,
  `IdClient` int NOT NULL,
  `Texte` varchar(255) DEFAULT NULL,
  KEY `fk_client` (`IdClient`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `livraisons`
--

DROP TABLE IF EXISTS `livraisons`;
CREATE TABLE IF NOT EXISTS `livraisons` (
  `IdLivraison` int NOT NULL,
  `IdLivreur` int NOT NULL,
  `IdCommande` int NOT NULL,
  `DateLivraison` date DEFAULT NULL,
  PRIMARY KEY (`IdLivraison`),
  KEY `fk_livreur` (`IdLivreur`),
  KEY `fk_commande` (`IdCommande`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produits`
--

DROP TABLE IF EXISTS `produits`;
CREATE TABLE IF NOT EXISTS `produits` (
  `IdPRoduit` int NOT NULL,
  `PrixProduit` float NOT NULL,
  `DescreptionProduit` varchar(255) DEFAULT NULL,
  `DesignationProduit` varchar(255) NOT NULL,
  `IdCatagorie` int NOT NULL,
  PRIMARY KEY (`IdPRoduit`),
  KEY `fk_produit` (`IdCatagorie`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `IdReservation` int NOT NULL,
  `IdRestaurant` int NOT NULL,
  `IdClient` int NOT NULL,
  `DateReservation` date DEFAULT NULL,
  `heureReservation` time DEFAULT NULL,
  `Effectif` int NOT NULL,
  PRIMARY KEY (`IdReservation`),
  KEY `fk_client` (`IdClient`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
CREATE TABLE IF NOT EXISTS `restaurants` (
  `IdRestaurant` int NOT NULL,
  `NomRestaurant` varchar(255) DEFAULT NULL,
  `AdresseRestaurant` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IdRestaurant`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `IdUtilisateur` int NOT NULL,
  `NomUtilisateur` varchar(50) NOT NULL,
  `PrenomUtilisateur` varchar(50) NOT NULL,
  `AgeUtilisateur` int NOT NULL,
  `AdresseUtilisateur` varchar(255) NOT NULL,
  `LoginUtilisateur` varchar(255) NOT NULL,
  `PaswwordUtilisateur` varchar(2255) NOT NULL,
  `Profile` varchar(255) NOT NULL,
  PRIMARY KEY (`IdUtilisateur`),
  UNIQUE KEY `IdUtilisateur` (`IdUtilisateur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
