-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 05 août 2023 à 19:04
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pole_etudiants`
--

-- --------------------------------------------------------

--
-- Structure de la table `collaborateurs`
--

DROP TABLE IF EXISTS `collaborateurs`;
CREATE TABLE IF NOT EXISTS `collaborateurs` (
  `collaborateurID` int(11) NOT NULL AUTO_INCREMENT,
  `nom_collaborateur` varchar(100) NOT NULL,
  `prenom_collaborateur` varchar(100) NOT NULL,
  `attribution` varchar(100) NOT NULL,
  `regionID` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` bigint(100) NOT NULL,
  PRIMARY KEY (`collaborateurID`),
  KEY `regionID` (`regionID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `collaborateurs`
--

INSERT INTO `collaborateurs` (`collaborateurID`, `nom_collaborateur`, `prenom_collaborateur`, `attribution`, `regionID`, `email`, `contact`) VALUES
(1, 'MARA', 'Matokiazy', 'President FONDATEUR', 'BONGOLAVA', 'mara@gmail.com', 341530013),
(2, 'NASOSOKA', 'Meltine', 'Secretaire', 'Analamanga', 'meltine@gmail.com', 261341530013),
(3, 'ANDRIANTSARAFIDY', 'Herna', 'Secretaire Generale', 'ANDROY', 'herna@gmail.com', 340420866),
(4, 'RANARA', 'Mirana', 'Communication', 'Vakinankaratra', 'mirana@gmail.com', 330827306),
(6, 'RAHARINIAINA', 'Tahiana', 'Tresoriere', 'Atsimo Andrefana', 'tahiana@gmail.com', 320254450),
(7, 'RABEMANANJARA', 'Nantenaina', 'LOGISTIQUE', 'ITASY', 'bama@gmail.com', 340017959),
(8, 'RAVORILAHATSE', 'Augustin', 'Relation Exterieur', 'ANDROY', 'lahatse@gmail.com', 320254450),
(9, 'RANDRIAMANAMPISOA', 'Alphonse', 'Responsable FORMATION', 'VAKINANKARATRA', 'alphonse@gamil.com', 320254450),
(10, 'DIMBY', 'Ny Aina', 'JEUNESSE,SPORT et CULTURE', 'BOENY', 'dimby@gamil.com', 320254450);

-- --------------------------------------------------------

--
-- Structure de la table `evenements`
--

DROP TABLE IF EXISTS `evenements`;
CREATE TABLE IF NOT EXISTS `evenements` (
  `evenementID` int(11) NOT NULL AUTO_INCREMENT,
  `nom_evenement` varchar(500) DEFAULT NULL,
  `date_evenement` date DEFAULT NULL,
  `description_evenement` text,
  `partenaireID` int(11) DEFAULT NULL,
  PRIMARY KEY (`evenementID`),
  KEY `partenaireID` (`partenaireID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `evenements`
--

INSERT INTO `evenements` (`evenementID`, `nom_evenement`, `date_evenement`, `description_evenement`, `partenaireID`) VALUES
(1, 'reboisement', '2023-01-20', NULL, 3),
(2, 'formation entreprenariat', '2023-05-03', NULL, 4),
(3, 'guide d\'orientation', '2023-06-20', NULL, 2),
(4, 'don de sang', '2023-07-01', NULL, NULL),
(5, 'forum d\'orientation professionnelle', '2023-08-05', NULL, NULL),
(6, 'cours préparation aux concours d\'entré à l\'universitairé', '2023-09-02', NULL, 2);

-- --------------------------------------------------------

--
-- Structure de la table `filieres`
--

DROP TABLE IF EXISTS `filieres`;
CREATE TABLE IF NOT EXISTS `filieres` (
  `filiereID` int(11) NOT NULL AUTO_INCREMENT,
  `nom_filiere` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`filiereID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `filieres`
--

INSERT INTO `filieres` (`filiereID`, `nom_filiere`) VALUES
(1, 'sciences'),
(2, 'DEGS'),
(3, 'polytechnique'),
(4, 'medecine'),
(5, 'lettre'),
(6, 'agro');

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

DROP TABLE IF EXISTS `membres`;
CREATE TABLE IF NOT EXISTS `membres` (
  `membreID` int(11) NOT NULL AUTO_INCREMENT,
  `nom_membre` varchar(100) DEFAULT NULL,
  `prenom_membre` varchar(100) DEFAULT NULL,
  `email_membre` varchar(100) DEFAULT NULL,
  `CIN` varchar(100) DEFAULT NULL,
  `region_id` int(11) NOT NULL,
  `filiere_id` int(11) NOT NULL,
  PRIMARY KEY (`membreID`),
  KEY `region_id` (`region_id`),
  KEY `filiere_id` (`filiere_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `membres`
--

INSERT INTO `membres` (`membreID`, `nom_membre`, `prenom_membre`, `email_membre`, `CIN`, `region_id`, `filiere_id`) VALUES
(1, 'MARA', 'Matokiazy', 'mara@gmail.com', '11011016684', 1, 3),
(2, 'RAHARINIRINA', 'Sergina', 'sergina@gmail.com', '123398946326', 2, 1),
(3, 'SOJA', 'Nicolas', 'dera@gmil.com', '301456987123', 3, 1),
(4, 'RAHASIMANANA', 'Nathalie', 'nath@gmil.com', '101456987123', 4, 5),
(5, 'RAKOTOMALALA', 'Maheritiana', 'mahery@gmil.com', '119456987233', 5, 2),
(6, 'LAMBO', 'Tacyanah', 'tacyanah@gmil.com', '101945698723', 6, 4),
(7, 'MAMINIAINA', 'Catherine', 'cathy@gmil.com', '219456981456', 7, 5),
(8, 'VOLA', 'Malala', 'malala@gmil.com', '501698145125', 8, 6),
(9, 'MANJAKASOA', 'Steeve', 'steeve@gmil.com', '111698145110', 9, 3),
(10, 'HAOVA', 'Zekitee', 'haova@gmil.com', '407169814501', 10, 6),
(11, 'SAILAMBO', 'NIRISOA', 'nirisoa@gmail.com', '111012502461', 11, 2),
(12, 'IALY', 'Tonay', 'tonay@gmail.com', '204564123689', 12, 3),
(13, 'MONJA', 'Halisoa', 'halisoa@gmail.com', '102203426321', 13, 2),
(14, 'MIHA', 'Tovondahy', 'tovo@gmail.com', '401562134258', 14, 5),
(15, 'KAZY', 'Vohimena', 'vohimena@gmail.com', '501232652148', 15, 4),
(16, 'MIHA', 'Milasoa', 'miha@gmial.com', '512032156894', 16, 6),
(17, 'MOSA', 'Herindraza', 'mosa@gmail.com', '102432645874', 17, 1),
(18, 'MEVA', 'Tolisoa', 'meva@gmail.com', '201520548971', 18, 2),
(19, 'SIJA', 'Tolotsaze', 'sija@gmail.com', '301564789526', 19, 3),
(20, 'RAHERIMANJAKA', 'Alfred', 'hery@gmail.com', '112025164789', 20, 4),
(21, 'RAHERIMANJAKA', 'Nekena', 'nekena@gmail.com', '111011546845', 21, 3),
(22, 'MIZA', 'Parus', 'parus@gmail.com', '111011014856', 22, 4),
(23, 'ANDRIAMASINANDROY', 'Thomas', 'thomas@gmail.com', '111011016684', 23, 5),
(24, 'MANANKASITSARA', 'Andre', 'hasina@gmail.com', '111012046258', 24, 6);

-- --------------------------------------------------------

--
-- Structure de la table `offres`
--

DROP TABLE IF EXISTS `offres`;
CREATE TABLE IF NOT EXISTS `offres` (
  `offreID` int(11) NOT NULL AUTO_INCREMENT,
  `poste` varchar(200) DEFAULT NULL,
  `entreprise` varchar(200) DEFAULT NULL,
  `description_offre` text,
  `region_id` int(11) NOT NULL,
  PRIMARY KEY (`offreID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `partenaires`
--

DROP TABLE IF EXISTS `partenaires`;
CREATE TABLE IF NOT EXISTS `partenaires` (
  `partenaireID` int(11) NOT NULL AUTO_INCREMENT,
  `nom_partenaire` varchar(100) DEFAULT NULL,
  `intitule` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`partenaireID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `partenaires`
--

INSERT INTO `partenaires` (`partenaireID`, `nom_partenaire`, `intitule`) VALUES
(1, 'BNI', 'partenaire financiere'),
(2, 'UNIVERSITE ANTANANARIVO', 'partenaire OFFICIELLE'),
(3, 'Groupe SODIAT', 'Appuis logistique'),
(4, 'PKMF', 'Appuis TECHNIQUE'),
(5, 'MIN SANTE PUBLIQUE', NULL),
(6, 'MIN ENVIRONNEMENT', NULL),
(7, 'UNICEF', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `regions`
--

DROP TABLE IF EXISTS `regions`;
CREATE TABLE IF NOT EXISTS `regions` (
  `regionID` int(11) NOT NULL AUTO_INCREMENT,
  `nom_region` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`regionID`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `regions`
--

INSERT INTO `regions` (`regionID`, `nom_region`) VALUES
(1, 'vakinakaratra'),
(2, 'analamanga'),
(3, 'bongolava'),
(4, 'itasy'),
(5, 'sava'),
(6, 'diana'),
(7, 'analanjirofo'),
(8, 'boeny'),
(9, 'betsiboka'),
(10, 'ambatosoa'),
(11, 'melaky'),
(12, 'vatovavy'),
(13, 'fitovinany'),
(14, 'sudest'),
(15, 'sudouest'),
(16, 'amoronimania'),
(17, 'matsiatra'),
(18, 'ihorombe'),
(19, 'menabe'),
(20, 'antsinanana'),
(21, 'alaotramangoro'),
(22, 'androy'),
(23, 'anosy'),
(24, 'sofia');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
