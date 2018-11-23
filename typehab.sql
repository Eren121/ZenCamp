-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 23 Novembre 2018 à 12:51
-- Version du serveur :  5.7.11
-- Version de PHP :  7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `camping_v6`
--

-- --------------------------------------------------------

--
-- Structure de la table `typehab`
--

CREATE TABLE `typehab` (
  `idTyHab` int(11) NOT NULL,
  `nbPlaces` int(11) NOT NULL,
  `prixTyHab` int(11) NOT NULL,
  `idSaison` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `typehab`
--

INSERT INTO `typehab` (`idTyHab`, `nbPlaces`, `prixTyHab`, `idSaison`) VALUES
(1, 4, 100, 1),
(2, 6, 150, 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `typehab`
--
ALTER TABLE `typehab`
  ADD PRIMARY KEY (`idTyHab`),
  ADD KEY `TypeHab_Saison_FK` (`idSaison`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `typehab`
--
ALTER TABLE `typehab`
  MODIFY `idTyHab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `typehab`
--
ALTER TABLE `typehab`
  ADD CONSTRAINT `TypeHab_Saison_FK` FOREIGN KEY (`idSaison`) REFERENCES `saison` (`idSaison`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
