-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 23 Novembre 2018 à 13:10
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
-- Structure de la table `accompagnateur`
--

CREATE TABLE `accompagnateur` (
  `idAcc` int(11) NOT NULL,
  `idCli` int(11) NOT NULL,
  `IdP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `accompagnateur`
--

INSERT INTO `accompagnateur` (`idAcc`, `idCli`, `IdP`) VALUES
(1, 1, 7);

-- --------------------------------------------------------

--
-- Structure de la table `activite`
--

CREATE TABLE `activite` (
  `idAct` int(11) NOT NULL,
  `nomAct` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `activite`
--

INSERT INTO `activite` (`idAct`, `nomAct`) VALUES
(1, 'piscine'),
(2, 'hiking');

-- --------------------------------------------------------

--
-- Structure de la table `animateur`
--

CREATE TABLE `animateur` (
  `idAni` int(11) NOT NULL,
  `idEmp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `animateur`
--

INSERT INTO `animateur` (`idAni`, `idEmp`) VALUES
(1, 6);

-- --------------------------------------------------------

--
-- Structure de la table `animer`
--

CREATE TABLE `animer` (
  `idSean` int(11) NOT NULL,
  `idAni` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `animer`
--

INSERT INTO `animer` (`idSean`, `idAni`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `assurance`
--

CREATE TABLE `assurance` (
  `idAss` int(11) NOT NULL,
  `nomAss` varchar(50) NOT NULL,
  `dateEcheance` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `assurance`
--

INSERT INTO `assurance` (`idAss`, `nomAss`, `dateEcheance`) VALUES
(1, 'ass_1', '2019-01-01');

-- --------------------------------------------------------

--
-- Structure de la table `chalet`
--

CREATE TABLE `chalet` (
  `idCha` int(11) NOT NULL,
  `prixCha` int(11) NOT NULL,
  `idEmpl` int(11) NOT NULL,
  `idSaison` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `chalet`
--

INSERT INTO `chalet` (`idCha`, `prixCha`, `idEmpl`, `idSaison`) VALUES
(1, 200, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `idCli` int(11) NOT NULL,
  `telCli` varchar(50) NOT NULL,
  `emailCli` varchar(50) NOT NULL,
  `IdP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`idCli`, `telCli`, `emailCli`, `IdP`) VALUES
(1, '0606060606', 'email@mail.com', 6);

-- --------------------------------------------------------

--
-- Structure de la table `diplome`
--

CREATE TABLE `diplome` (
  `idDip` int(11) NOT NULL,
  `nomDip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `diplome`
--

INSERT INTO `diplome` (`idDip`, `nomDip`) VALUES
(1, 'diplome_1'),
(2, 'diplome_2');

-- --------------------------------------------------------

--
-- Structure de la table `directeur`
--

CREATE TABLE `directeur` (
  `idDir` int(11) NOT NULL,
  `idEmp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `directeur`
--

INSERT INTO `directeur` (`idDir`, `idEmp`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `emplacement`
--

CREATE TABLE `emplacement` (
  `idEmpl` int(11) NOT NULL,
  `prixEmp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `emplacement`
--

INSERT INTO `emplacement` (`idEmpl`, `prixEmp`) VALUES
(1, 50),
(2, 50);

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE `employe` (
  `idEmp` int(11) NOT NULL,
  `salaireEmp` float NOT NULL,
  `typeEmp` varchar(50) NOT NULL,
  `IdP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `employe`
--

INSERT INTO `employe` (`idEmp`, `salaireEmp`, `typeEmp`, `IdP`) VALUES
(1, 3000, 'dir', 1),
(2, 3000, 'sec', 2),
(3, 3000, 'men', 3),
(4, 3000, 'rep', 4),
(6, 3000, 'ani', 5);

-- --------------------------------------------------------

--
-- Structure de la table `equipement`
--

CREATE TABLE `equipement` (
  `idEq` int(11) NOT NULL,
  `nomEQ` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `equipement`
--

INSERT INTO `equipement` (`idEq`, `nomEQ`) VALUES
(1, 'eq_1');

-- --------------------------------------------------------

--
-- Structure de la table `est_dans`
--

CREATE TABLE `est_dans` (
  `idEmpl` int(11) NOT NULL,
  `date_Ty_Empl` date NOT NULL,
  `idTyHab` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `louer_eq`
--

CREATE TABLE `louer_eq` (
  `idEq` int(11) NOT NULL,
  `dateLouerEq` date NOT NULL,
  `idCli` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `louer_eq`
--

INSERT INTO `louer_eq` (`idEq`, `dateLouerEq`, `idCli`) VALUES
(1, '2018-11-23', 1);

-- --------------------------------------------------------

--
-- Structure de la table `louer_hab`
--

CREATE TABLE `louer_hab` (
  `idCli` int(11) NOT NULL,
  `DateLouerHab` date NOT NULL,
  `idTyHab` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `menage`
--

CREATE TABLE `menage` (
  `idMen` int(11) NOT NULL,
  `idEmp` int(11) NOT NULL,
  `idDir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `nettoyer`
--

CREATE TABLE `nettoyer` (
  `idTyHab` int(11) NOT NULL,
  `idMen` int(11) NOT NULL,
  `DateNett` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `occuper`
--

CREATE TABLE `occuper` (
  `idEmpl` int(11) NOT NULL,
  `dateOccuperEmpl` date NOT NULL,
  `idCli` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `IdP` int(11) NOT NULL,
  `nomP` varchar(50) NOT NULL,
  `prenomP` varchar(50) NOT NULL,
  `dateNaissance` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `personne`
--

INSERT INTO `personne` (`IdP`, `nomP`, `prenomP`, `dateNaissance`) VALUES
(1, 'dir', 'ecteur', '1990-01-01'),
(2, 'sec', 'retaire', '1990-01-01'),
(3, 'men', 'age', '1990-01-01'),
(4, 'rep', 'arateur', '1990-01-01'),
(5, 'ani', 'mateur', '1990-01-01'),
(6, 'cli', 'ent', '1990-01-01'),
(7, 'acc', 'ompagnateur', '2008-01-01');

-- --------------------------------------------------------

--
-- Structure de la table `posseder`
--

CREATE TABLE `posseder` (
  `idEmp` int(11) NOT NULL,
  `idDip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `posseder_ass`
--

CREATE TABLE `posseder_ass` (
  `idCli` int(11) NOT NULL,
  `idAss` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `posseder_hab`
--

CREATE TABLE `posseder_hab` (
  `idCli` int(11) NOT NULL,
  `idTyHab` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reparateur`
--

CREATE TABLE `reparateur` (
  `idRep` int(11) NOT NULL,
  `idEmp` int(11) NOT NULL,
  `idDir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reparer`
--

CREATE TABLE `reparer` (
  `idEq` int(11) NOT NULL,
  `idRep` int(11) NOT NULL,
  `DateRep` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `saison`
--

CREATE TABLE `saison` (
  `idSaison` int(11) NOT NULL,
  `nomSaison` varchar(50) NOT NULL,
  `pourcentage` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `saison`
--

INSERT INTO `saison` (`idSaison`, `nomSaison`, `pourcentage`) VALUES
(1, 'basse', 70),
(2, 'haute', 120);

-- --------------------------------------------------------

--
-- Structure de la table `seance`
--

CREATE TABLE `seance` (
  `idSean` int(11) NOT NULL,
  `jour` varchar(50) NOT NULL,
  `heureDebut` int(11) NOT NULL,
  `duree` int(11) NOT NULL,
  `date` date NOT NULL,
  `idAct` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `seance`
--

INSERT INTO `seance` (`idSean`, `jour`, `heureDebut`, `duree`, `date`, `idAct`) VALUES
(1, 'samedi', 8, 2, '2018-11-25', 1),
(2, 'samedi', 8, 2, '2018-11-25', 2);

-- --------------------------------------------------------

--
-- Structure de la table `secretaire`
--

CREATE TABLE `secretaire` (
  `idSec` int(11) NOT NULL,
  `idEmp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `s_inscrire_acc`
--

CREATE TABLE `s_inscrire_acc` (
  `idSean` int(11) NOT NULL,
  `idAcc` int(11) NOT NULL,
  `date_insc_sean_acc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `s_inscrire_cli`
--

CREATE TABLE `s_inscrire_cli` (
  `idCli` int(11) NOT NULL,
  `idSean` int(11) NOT NULL,
  `date_Insc_Sean` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Index pour la table `accompagnateur`
--
ALTER TABLE `accompagnateur`
  ADD PRIMARY KEY (`idAcc`),
  ADD UNIQUE KEY `Accompagnateur_Personne_AK` (`IdP`),
  ADD KEY `Accompagnateur_Client_FK` (`idCli`);

--
-- Index pour la table `activite`
--
ALTER TABLE `activite`
  ADD PRIMARY KEY (`idAct`);

--
-- Index pour la table `animateur`
--
ALTER TABLE `animateur`
  ADD PRIMARY KEY (`idAni`),
  ADD UNIQUE KEY `Animateur_Employe_AK` (`idEmp`);

--
-- Index pour la table `animer`
--
ALTER TABLE `animer`
  ADD PRIMARY KEY (`idSean`,`idAni`),
  ADD KEY `Animer_Animateur0_FK` (`idAni`);

--
-- Index pour la table `assurance`
--
ALTER TABLE `assurance`
  ADD PRIMARY KEY (`idAss`);

--
-- Index pour la table `chalet`
--
ALTER TABLE `chalet`
  ADD PRIMARY KEY (`idCha`),
  ADD UNIQUE KEY `Chalet_Emplacement_AK` (`idEmpl`),
  ADD KEY `Chalet_Saison0_FK` (`idSaison`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`idCli`),
  ADD UNIQUE KEY `Client_Personne_AK` (`IdP`);

--
-- Index pour la table `diplome`
--
ALTER TABLE `diplome`
  ADD PRIMARY KEY (`idDip`);

--
-- Index pour la table `directeur`
--
ALTER TABLE `directeur`
  ADD PRIMARY KEY (`idDir`),
  ADD UNIQUE KEY `Directeur_Employe_AK` (`idEmp`);

--
-- Index pour la table `emplacement`
--
ALTER TABLE `emplacement`
  ADD PRIMARY KEY (`idEmpl`);

--
-- Index pour la table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`idEmp`),
  ADD UNIQUE KEY `Employe_Personne_AK` (`IdP`);

--
-- Index pour la table `equipement`
--
ALTER TABLE `equipement`
  ADD PRIMARY KEY (`idEq`);

--
-- Index pour la table `est_dans`
--
ALTER TABLE `est_dans`
  ADD PRIMARY KEY (`idEmpl`),
  ADD KEY `Est_dans_TypeHab0_FK` (`idTyHab`);

--
-- Index pour la table `louer_eq`
--
ALTER TABLE `louer_eq`
  ADD PRIMARY KEY (`idEq`),
  ADD KEY `Louer_eq_Client0_FK` (`idCli`);

--
-- Index pour la table `louer_hab`
--
ALTER TABLE `louer_hab`
  ADD PRIMARY KEY (`idCli`),
  ADD KEY `Louer_hab_TypeHab0_FK` (`idTyHab`);

--
-- Index pour la table `menage`
--
ALTER TABLE `menage`
  ADD PRIMARY KEY (`idMen`),
  ADD UNIQUE KEY `Menage_Employe_AK` (`idEmp`),
  ADD KEY `Menage_Directeur0_FK` (`idDir`);

--
-- Index pour la table `nettoyer`
--
ALTER TABLE `nettoyer`
  ADD PRIMARY KEY (`idTyHab`,`idMen`),
  ADD KEY `Nettoyer_Menage0_FK` (`idMen`);

--
-- Index pour la table `occuper`
--
ALTER TABLE `occuper`
  ADD PRIMARY KEY (`idEmpl`),
  ADD UNIQUE KEY `Occuper_Client_AK` (`idCli`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`IdP`);

--
-- Index pour la table `posseder`
--
ALTER TABLE `posseder`
  ADD PRIMARY KEY (`idEmp`,`idDip`),
  ADD KEY `Posseder_Diplome0_FK` (`idDip`);

--
-- Index pour la table `posseder_ass`
--
ALTER TABLE `posseder_ass`
  ADD PRIMARY KEY (`idCli`),
  ADD KEY `Posseder_ass_Assurance0_FK` (`idAss`);

--
-- Index pour la table `posseder_hab`
--
ALTER TABLE `posseder_hab`
  ADD PRIMARY KEY (`idCli`),
  ADD KEY `Posseder_hab_TypeHab0_FK` (`idTyHab`);

--
-- Index pour la table `reparateur`
--
ALTER TABLE `reparateur`
  ADD PRIMARY KEY (`idRep`),
  ADD UNIQUE KEY `Reparateur_Employe_AK` (`idEmp`),
  ADD KEY `Reparateur_Directeur0_FK` (`idDir`);

--
-- Index pour la table `reparer`
--
ALTER TABLE `reparer`
  ADD PRIMARY KEY (`idEq`,`idRep`),
  ADD KEY `Reparer_Reparateur0_FK` (`idRep`);

--
-- Index pour la table `saison`
--
ALTER TABLE `saison`
  ADD PRIMARY KEY (`idSaison`);

--
-- Index pour la table `seance`
--
ALTER TABLE `seance`
  ADD PRIMARY KEY (`idSean`),
  ADD KEY `Seance_Activite_FK` (`idAct`);

--
-- Index pour la table `secretaire`
--
ALTER TABLE `secretaire`
  ADD PRIMARY KEY (`idSec`),
  ADD UNIQUE KEY `Secretaire_Employe_AK` (`idEmp`);

--
-- Index pour la table `s_inscrire_acc`
--
ALTER TABLE `s_inscrire_acc`
  ADD PRIMARY KEY (`idSean`,`idAcc`),
  ADD KEY `S_inscrire_acc_Accompagnateur0_FK` (`idAcc`);

--
-- Index pour la table `s_inscrire_cli`
--
ALTER TABLE `s_inscrire_cli`
  ADD PRIMARY KEY (`idCli`,`idSean`),
  ADD KEY `S_inscrire_cli_Seance0_FK` (`idSean`);

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
-- AUTO_INCREMENT pour la table `accompagnateur`
--
ALTER TABLE `accompagnateur`
  MODIFY `idAcc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `activite`
--
ALTER TABLE `activite`
  MODIFY `idAct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `animateur`
--
ALTER TABLE `animateur`
  MODIFY `idAni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `assurance`
--
ALTER TABLE `assurance`
  MODIFY `idAss` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `chalet`
--
ALTER TABLE `chalet`
  MODIFY `idCha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `idCli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `diplome`
--
ALTER TABLE `diplome`
  MODIFY `idDip` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `directeur`
--
ALTER TABLE `directeur`
  MODIFY `idDir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `emplacement`
--
ALTER TABLE `emplacement`
  MODIFY `idEmpl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `employe`
--
ALTER TABLE `employe`
  MODIFY `idEmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `equipement`
--
ALTER TABLE `equipement`
  MODIFY `idEq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `menage`
--
ALTER TABLE `menage`
  MODIFY `idMen` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `IdP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `reparateur`
--
ALTER TABLE `reparateur`
  MODIFY `idRep` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `saison`
--
ALTER TABLE `saison`
  MODIFY `idSaison` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `seance`
--
ALTER TABLE `seance`
  MODIFY `idSean` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `secretaire`
--
ALTER TABLE `secretaire`
  MODIFY `idSec` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `typehab`
--
ALTER TABLE `typehab`
  MODIFY `idTyHab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `accompagnateur`
--
ALTER TABLE `accompagnateur`
  ADD CONSTRAINT `Accompagnateur_Client_FK` FOREIGN KEY (`idCli`) REFERENCES `client` (`idCli`),
  ADD CONSTRAINT `Accompagnateur_Personne0_FK` FOREIGN KEY (`IdP`) REFERENCES `personne` (`IdP`);

--
-- Contraintes pour la table `animateur`
--
ALTER TABLE `animateur`
  ADD CONSTRAINT `Animateur_Employe_FK` FOREIGN KEY (`idEmp`) REFERENCES `employe` (`idEmp`);

--
-- Contraintes pour la table `animer`
--
ALTER TABLE `animer`
  ADD CONSTRAINT `Animer_Animateur0_FK` FOREIGN KEY (`idAni`) REFERENCES `animateur` (`idAni`),
  ADD CONSTRAINT `Animer_Seance_FK` FOREIGN KEY (`idSean`) REFERENCES `seance` (`idSean`);

--
-- Contraintes pour la table `chalet`
--
ALTER TABLE `chalet`
  ADD CONSTRAINT `Chalet_Emplacement_FK` FOREIGN KEY (`idEmpl`) REFERENCES `emplacement` (`idEmpl`),
  ADD CONSTRAINT `Chalet_Saison0_FK` FOREIGN KEY (`idSaison`) REFERENCES `saison` (`idSaison`);

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `Client_Personne_FK` FOREIGN KEY (`IdP`) REFERENCES `personne` (`IdP`);

--
-- Contraintes pour la table `directeur`
--
ALTER TABLE `directeur`
  ADD CONSTRAINT `Directeur_Employe_FK` FOREIGN KEY (`idEmp`) REFERENCES `employe` (`idEmp`);

--
-- Contraintes pour la table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `Employe_Personne_FK` FOREIGN KEY (`IdP`) REFERENCES `personne` (`IdP`);

--
-- Contraintes pour la table `est_dans`
--
ALTER TABLE `est_dans`
  ADD CONSTRAINT `Est_dans_Emplacement_FK` FOREIGN KEY (`idEmpl`) REFERENCES `emplacement` (`idEmpl`),
  ADD CONSTRAINT `Est_dans_TypeHab0_FK` FOREIGN KEY (`idTyHab`) REFERENCES `typehab` (`idTyHab`);

--
-- Contraintes pour la table `louer_eq`
--
ALTER TABLE `louer_eq`
  ADD CONSTRAINT `Louer_eq_Client0_FK` FOREIGN KEY (`idCli`) REFERENCES `client` (`idCli`),
  ADD CONSTRAINT `Louer_eq_Equipement_FK` FOREIGN KEY (`idEq`) REFERENCES `equipement` (`idEq`);

--
-- Contraintes pour la table `louer_hab`
--
ALTER TABLE `louer_hab`
  ADD CONSTRAINT `Louer_hab_Client_FK` FOREIGN KEY (`idCli`) REFERENCES `client` (`idCli`),
  ADD CONSTRAINT `Louer_hab_TypeHab0_FK` FOREIGN KEY (`idTyHab`) REFERENCES `typehab` (`idTyHab`);

--
-- Contraintes pour la table `menage`
--
ALTER TABLE `menage`
  ADD CONSTRAINT `Menage_Directeur0_FK` FOREIGN KEY (`idDir`) REFERENCES `directeur` (`idDir`),
  ADD CONSTRAINT `Menage_Employe_FK` FOREIGN KEY (`idEmp`) REFERENCES `employe` (`idEmp`);

--
-- Contraintes pour la table `nettoyer`
--
ALTER TABLE `nettoyer`
  ADD CONSTRAINT `Nettoyer_Menage0_FK` FOREIGN KEY (`idMen`) REFERENCES `menage` (`idMen`),
  ADD CONSTRAINT `Nettoyer_TypeHab_FK` FOREIGN KEY (`idTyHab`) REFERENCES `typehab` (`idTyHab`);

--
-- Contraintes pour la table `occuper`
--
ALTER TABLE `occuper`
  ADD CONSTRAINT `Occuper_Client0_FK` FOREIGN KEY (`idCli`) REFERENCES `client` (`idCli`),
  ADD CONSTRAINT `Occuper_Emplacement_FK` FOREIGN KEY (`idEmpl`) REFERENCES `emplacement` (`idEmpl`);

--
-- Contraintes pour la table `posseder`
--
ALTER TABLE `posseder`
  ADD CONSTRAINT `Posseder_Diplome0_FK` FOREIGN KEY (`idDip`) REFERENCES `diplome` (`idDip`),
  ADD CONSTRAINT `Posseder_Employe_FK` FOREIGN KEY (`idEmp`) REFERENCES `employe` (`idEmp`);

--
-- Contraintes pour la table `posseder_ass`
--
ALTER TABLE `posseder_ass`
  ADD CONSTRAINT `Posseder_ass_Assurance0_FK` FOREIGN KEY (`idAss`) REFERENCES `assurance` (`idAss`),
  ADD CONSTRAINT `Posseder_ass_Client_FK` FOREIGN KEY (`idCli`) REFERENCES `client` (`idCli`);

--
-- Contraintes pour la table `posseder_hab`
--
ALTER TABLE `posseder_hab`
  ADD CONSTRAINT `Posseder_hab_Client_FK` FOREIGN KEY (`idCli`) REFERENCES `client` (`idCli`),
  ADD CONSTRAINT `Posseder_hab_TypeHab0_FK` FOREIGN KEY (`idTyHab`) REFERENCES `typehab` (`idTyHab`);

--
-- Contraintes pour la table `reparateur`
--
ALTER TABLE `reparateur`
  ADD CONSTRAINT `Reparateur_Directeur0_FK` FOREIGN KEY (`idDir`) REFERENCES `directeur` (`idDir`),
  ADD CONSTRAINT `Reparateur_Employe_FK` FOREIGN KEY (`idEmp`) REFERENCES `employe` (`idEmp`);

--
-- Contraintes pour la table `reparer`
--
ALTER TABLE `reparer`
  ADD CONSTRAINT `Reparer_Equipement_FK` FOREIGN KEY (`idEq`) REFERENCES `equipement` (`idEq`),
  ADD CONSTRAINT `Reparer_Reparateur0_FK` FOREIGN KEY (`idRep`) REFERENCES `reparateur` (`idRep`);

--
-- Contraintes pour la table `seance`
--
ALTER TABLE `seance`
  ADD CONSTRAINT `Seance_Activite_FK` FOREIGN KEY (`idAct`) REFERENCES `activite` (`idAct`);

--
-- Contraintes pour la table `secretaire`
--
ALTER TABLE `secretaire`
  ADD CONSTRAINT `Secretaire_Employe_FK` FOREIGN KEY (`idEmp`) REFERENCES `employe` (`idEmp`);

--
-- Contraintes pour la table `s_inscrire_acc`
--
ALTER TABLE `s_inscrire_acc`
  ADD CONSTRAINT `S_inscrire_acc_Accompagnateur0_FK` FOREIGN KEY (`idAcc`) REFERENCES `accompagnateur` (`idAcc`),
  ADD CONSTRAINT `S_inscrire_acc_Seance_FK` FOREIGN KEY (`idSean`) REFERENCES `seance` (`idSean`);

--
-- Contraintes pour la table `s_inscrire_cli`
--
ALTER TABLE `s_inscrire_cli`
  ADD CONSTRAINT `S_inscrire_cli_Client_FK` FOREIGN KEY (`idCli`) REFERENCES `client` (`idCli`),
  ADD CONSTRAINT `S_inscrire_cli_Seance0_FK` FOREIGN KEY (`idSean`) REFERENCES `seance` (`idSean`);

--
-- Contraintes pour la table `typehab`
--
ALTER TABLE `typehab`
  ADD CONSTRAINT `TypeHab_Saison_FK` FOREIGN KEY (`idSaison`) REFERENCES `saison` (`idSaison`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
