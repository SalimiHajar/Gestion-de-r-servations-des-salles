-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 25 juin 2021 à 22:22
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pfa`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `Id` int(10) NOT NULL,
  `NomPrenom` varchar(255) DEFAULT NULL,
  `CIN` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `Nomvoiture` varchar(3000) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`Id`, `NomPrenom`, `CIN`, `date`, `Nomvoiture`) VALUES
(24, 'RYMA', 'AE176800', '2021-06-15', 'auto 1'),
(25, 'RYME EL ALAOUI', 'AE17680', '2021-06-10', 'auto 2'),
(26, 'hajar', 'AE176801', '2021-06-03', 'auto 1');

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

CREATE TABLE `niveau` (
  `CodeNiveau` varchar(255) NOT NULL,
  `IntituleNiveau` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `niveau`
--

INSERT INTO `niveau` (`CodeNiveau`, `IntituleNiveau`) VALUES
('1A', 'Premiere annee'),
('DG', 'DEUG'),
('Lce', 'Licence'),
('AP 1', 'Première Annee Preparatoire'),
('AP 2', 'Deuxième Annee Préparatoire'),
('IIR 3', '3eme Annee Ingenierie Informatique et Reseau'),
('IIR 4', '4eme Annee Ingenierie Informatique et Reseau'),
('5 MIAGE', '5eme Annee Master Apllique'),
('GC 1', '1ere Génie Civil'),
('GC 2', '2eme Génie Civil'),
('GC 3', '3eme Génie Civil'),
('GC 4', '4eme Génie Civil'),
('GC 5', '5eme Génie Civil');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `IdUser` int(10) NOT NULL,
  `Login` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Role` varchar(255) DEFAULT NULL,
  `Etat` int(1) DEFAULT NULL,
  `Passwd` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`IdUser`, `Login`, `Email`, `Role`, `Etat`, `Passwd`) VALUES
(3, 'admin', 'b.ouissal@gmail.com', 'ADMIN', 1, '9ccc598773c3b627675dcf47d1b16c5b'),
(16, 'ouissal', 'ouissal.ben@gmail.com', 'USER', 1, '27367a4683e7a4365b8f72bfcf405d4a'),
(9, NULL, NULL, 'USER', 0, 'c6f057b86584942e415435ffb1fa93d4'),
(12, 'ryme', 'rym@gmail.com', 'ADMIN', 1, '25f9e794323b453885f5181f1b624d0b'),
(17, 'hajarsalimi', 'hajar@gmail.com', 'USER', 1, '9ccc598773c3b627675dcf47d1b16c5b');

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

CREATE TABLE `voiture` (
  `id` varchar(255) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `Date_Creation` date DEFAULT NULL,
  `Adresse` varchar(255) DEFAULT NULL,
  `image` varchar(3000) CHARACTER SET utf8 NOT NULL,
  `description` text NOT NULL,
  `prix` varchar(3000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `voiture`
--

INSERT INTO `voiture` (`id`, `nom`, `Date_Creation`, `Adresse`, `image`, `description`, `prix`) VALUES
('auto 1', 'Université Mohamed', '2014-09-22', 'Nouveau complexe universitaire? Agadi', 'Sans titre.jpg', 'une université marocaine située à Rabat. Elle est officiellement inaugurée par le roi Mohammed V, le 21 décembre 19571.  En 1994-1995, elle s\'est divisée en deux universités indépendantes – l\'université Mohammed V - Agdal, dans le quartier Agdal et l\'université Mohammed V - Souissi sur le campus d\'Al Irfane. Le 1er septembre 2014, celles-ci fusionnent pour redonner naissance à l\'université Mohammed V de Rabat2. Pour la simplicité, l\'université est parfois nommée UM5.', '13'),
('auto 2', 'RANGROVER', '2014-09-21', 'Casablanca 20000', 'téléchargement.jpg', 'Rover était un constructeur automobile britannique actif entre 1904 et sa faillite en 2005. D\'abord fabricant de cycles à la fin du xixe siècle, l\'entreprise se spécialise dans les automobiles haut-de-gamme dès le début du xxe siècle, segment dans lequel elle parvient à s\'imposer au cours des années 1930. Au lendemain de la Seconde Guerre mondiale, Rover expérimente la propulsion à gaz et, tout en continuant à proposer des berlines de standing, s\'impose comme un constructeur de premier plan de véhicules tout-terrains, avec les Land et Range Rover.  La qualité de ses produits, comme leur performance, était reconnue à tel point que son premier modèle d\'après-guerre essayé par le magazine Road & Track en 1952 a été décrit comme la meilleure automobile de l\'époque, à l\'exception d\'une Rolls-Royce.', '13'),
('LALLA', 'RANGROVER', '2014-09-21', 'avenu MOHAMED 5 appartement 12 immeuble 47B', '3aa1700963a57314eb73acaef02bae2f.jpg', 'une université marocaine située à Rabat. Elle est officiellement inaugurée par le roi Mohammed V, le 21 décembre 19571.  En 1994-1995, elle s\'est divisée en deux universités indépendantes – l\'université Mohammed V - Agdal, dans le quartier Agdal et l\'université Mohammed V - Souissi sur le campus d\'Al Irfane. Le 1er septembre 2014, celles-ci fusionnent pour redonner naissance à l\'université Mohammed V de Rabat2. Pour la simplicité, l\'université est parfois nommée UM5.', '20'),
('hjar', 'EMsi', '2014-09-21', 'Nouveau complexe universitaire? Agadir 80000', '2.PNG', 'une université marocaine située à Rabat. Elle est officiellement inaugurée par le roi Mohammed V, le 21 décembre 19571.  En 1994-1995, elle s\'est divisée en deux universités indépendantes – l\'université Mohammed V - Agdal, dans le quartier Agdal et l\'université Mohammed V - Souissi sur le campus d\'Al Irfane. Le 1er septembre 2014, celles-ci fusionnent pour redonner naissance à l\'université Mohammed V de Rabat2. Pour la simplicité, l\'université est parfois nommée UM5.', '13');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_client` (`Nomvoiture`(333));

--
-- Index pour la table `niveau`
--
ALTER TABLE `niveau`
  ADD PRIMARY KEY (`CodeNiveau`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`IdUser`);

--
-- Index pour la table `voiture`
--
ALTER TABLE `voiture`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `IdUser` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
