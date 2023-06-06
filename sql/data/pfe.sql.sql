-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2021 at 06:08 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pfe`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrateur`
--

CREATE TABLE `administrateur` (
  `id_adm` int(10) NOT NULL,
  `nom_complet` varchar(60) NOT NULL,
  `email_adm` varchar(40) NOT NULL,
  `mdp_adm` varchar(15) NOT NULL,
  `nom_fil` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `administrateur`
--

INSERT INTO `administrateur` (`id_adm`, `nom_complet`, `email_adm`, `mdp_adm`, `nom_fil`) VALUES
(9, 'aya chebbab', 'aya@adm.com', 'aya', 'ge'),
(10, 'youness abtaouri', 'youness@gmail.com', 'youness', 'gi');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment` varchar(255) NOT NULL,
  `id_commenter` int(11) NOT NULL,
  `id_document` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` int(255) NOT NULL,
  `id_pfe` int(11) NOT NULL,
  `type_doc` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`id`, `name`, `size`, `id_pfe`, `type_doc`) VALUES
(68, 'aa', 261794, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `encadrant`
--

CREATE TABLE `encadrant` (
  `id_enc` int(10) NOT NULL,
  `nom_complet` varchar(60) NOT NULL,
  `email_enc` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL,
  `id_jury` int(11) NOT NULL,
  `nom_fil` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `encadrant`
--

INSERT INTO `encadrant` (`id_enc`, `nom_complet`, `email_enc`, `password`, `id_jury`, `nom_fil`) VALUES
(1, 'encadrant_ge1', 'encadrant_ge1@gmail.com', 'encadrant_ge1', 1, 'ge'),
(2, 'encadrant_ge2', 'encadrant_ge2@gmail.com', 'encadrant_ge2', 1, 'ge'),
(3, 'encadrant_ge3', 'encadrant_ge3@gmail.com', 'encadrant_ge3', 2, 'ge'),
(4, 'encadrant_ge4', 'encadrant_ge4@gmail.com', 'encadrant_ge4', 2, 'ge'),
(5, 'encadrant_ge5', 'encadrant_ge5@gmail.com', 'encadrant_ge5', 3, 'ge'),
(6, 'encadrant_ge6', 'encadrant_ge6@gmail.com', 'encadrant_ge6', 3, 'ge'),
(7, 'encadrant_ge7', 'encadrant_ge@gmail.com', 'encadrant_ge', 4, 'ge'),
(8, 'encadrant_ge8', 'encadrant@gmail.com', 'encadrant', 4, 'ge');

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

CREATE TABLE `etudiant` (
  `id_etu` int(10) NOT NULL,
  `nom_complet` varchar(60) NOT NULL,
  `email_etu` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL,
  `id_groupe` int(10) NOT NULL,
  `id_pfe` int(10) NOT NULL,
  `nom_filliere` varchar(25) NOT NULL,
  `annee` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `etudiant`
--

INSERT INTO `etudiant` (`id_etu`, `nom_complet`, `email_etu`, `password`, `id_groupe`, `id_pfe`, `nom_filliere`, `annee`) VALUES
(1, 'etudiant_ge1', 'etudiant_ge1@gmail.com', 'etudiant_ge1', 1, 2, 'ge', 2021),
(2, 'etudiant_ge2', 'etudiant_ge2@email.com', 'etudiant_ge2', 1, 2, 'ge', 2021),
(3, 'etudiant_ge3', 'etudiant_ge3@gmail.com', 'etudiant_ge3', 1, 2, 'ge', 2021),
(4, 'etudiant_ge4', 'etudiant_ge4@gmail.com', 'etudiant_ge4', 2, 13, 'ge', 2021),
(5, 'etudiant_ge5', 'etudiant_ge5@gmail.com', 'etudiant_ge5', 2, 13, 'ge', 2021),
(6, 'etudiant_ge6', 'etudiant_ge6@gmail.com', 'etudiant_ge6', 3, 3, 'ge', 2021),
(7, 'etudiant_ge7', 'etudiant_ge7@gmail.com', 'etudiant_ge7', 3, 3, 'ge', 2021),
(8, 'etudiant_ge8', 'etudiant_ge8@gmail.com', 'etudiant_ge8', 4, 5, 'ge', 2021),
(9, 'etudiant_ge9', 'etudiant_ge9@gmail.com', 'etudiant_ge9', 4, 5, 'ge', 2021),
(10, 'etudiant_ge10', 'etudiant_ge10@gmail.com', 'etudiant_ge10', 5, 8, 'ge', 2021),
(11, 'etudiant_ge11', 'etudiant_ge11@gmail.com', 'etudiant_ge11', 5, 8, 'ge', 2021),
(12, 'etudiant_ge12', 'etudiant_ge12@gmail.com', 'etudiant_ge12', 6, 7, 'ge', 2021),
(13, 'etudiant_ge13', 'etudiant_ge13@gmail.com', 'etudiant_ge13', 6, 7, 'ge', 2021);

-- --------------------------------------------------------

--
-- Table structure for table `inter_ex`
--

CREATE TABLE `inter_ex` (
  `id_ex` int(11) NOT NULL DEFAULT 0,
  `nom_complet` varchar(100) NOT NULL,
  `statut` varchar(100) NOT NULL,
  `nom_entr` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inter_ex`
--

INSERT INTO `inter_ex` (`id_ex`, `nom_complet`, `statut`, `nom_entr`, `email`, `year`) VALUES
(1, 'inter1', 'statut1', 'entre1', 'inter1@gmail.com', 2021);

-- --------------------------------------------------------

--
-- Table structure for table `jury`
--

CREATE TABLE `jury` (
  `id_jury` int(11) NOT NULL DEFAULT 0,
  `mail_jury` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jury`
--

INSERT INTO `jury` (`id_jury`, `mail_jury`, `password`) VALUES
(1, 'jury1@gmail.com', 'jury1'),
(2, 'jury2@gmail.com', 'jury2'),
(3, 'jury3@gmail.com', 'jury3'),
(4, 'jury4@gmail.com', 'jury4');

-- --------------------------------------------------------

--
-- Table structure for table `pfes`
--

CREATE TABLE `pfes` (
  `id_pfe` int(10) NOT NULL,
  `suj_pfe` varchar(25) NOT NULL,
  `des_pfe` varchar(60) NOT NULL,
  `id_enc` int(10) NOT NULL DEFAULT 0,
  `annee` year(4) NOT NULL,
  `nom_fil` varchar(25) NOT NULL,
  `id_groupe` int(11) NOT NULL DEFAULT 0,
  `note_rapport` float NOT NULL DEFAULT 0,
  `date` date NOT NULL,
  `heure` time NOT NULL,
  `classe` char(11) DEFAULT '0',
  `id_proposeur` int(30) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pfes`
--

INSERT INTO `pfes` (`id_pfe`, `suj_pfe`, `des_pfe`, `id_enc`, `annee`, `nom_fil`, `id_groupe`, `note_rapport`, `date`, `heure`, `classe`, `id_proposeur`) VALUES
(1, 'Sujet 1', 'Description 1', 1, 2021, 'ge', 0, 0, '0000-00-00', '00:00:00', '0', 0),
(2, 'Sujet 2', 'Description 2', 1, 2021, 'ge', 1, 13, '2021-06-17', '12:57:00', '23', 0),
(3, 'Sujet 3', 'Description 3', 1, 2021, 'ge', 3, 0, '2021-06-01', '10:00:00', 'A5', 0),
(4, 'Sujet 4', 'Description 4', 2, 2021, 'ge', 0, 0, '0000-00-00', '00:00:00', '0', 0),
(5, 'Sujet 5', 'Description 5', 2, 2021, 'ge', 4, 0, '2021-06-09', '11:57:00', 'C20', 0),
(6, 'Sujet 6', 'Description 6', 3, 2021, 'ge', 0, 0, '0000-00-00', '00:00:00', '0', 0),
(7, 'Sujet 7', 'Description 7', 8, 2021, 'ge', 6, 0, '2021-06-03', '12:57:00', '322', 0),
(8, 'sujet 8', 'Description 8', 1, 2021, 'ge', 5, 0, '2021-06-04', '12:57:00', '2', 0),
(13, 'ex1', 'des1', 1, 2021, 'ge', 2, 0, '2021-06-25', '09:58:00', '33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `suj_ex`
--

CREATE TABLE `suj_ex` (
  `id_suj` int(11) NOT NULL,
  `sujet` varchar(100) NOT NULL,
  `des_suj` varchar(250) NOT NULL,
  `annee` year(4) NOT NULL,
  `fil_suj` varchar(11) NOT NULL,
  `id_ex` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`id_adm`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_commenter`,`id_document`),
  ADD KEY `foreign key` (`id_commenter`),
  ADD KEY `foreign key 2` (`id_document`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `encadrant`
--
ALTER TABLE `encadrant`
  ADD PRIMARY KEY (`id_enc`);

--
-- Indexes for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id_etu`),
  ADD KEY `id_pfe` (`id_pfe`);

--
-- Indexes for table `inter_ex`
--
ALTER TABLE `inter_ex`
  ADD PRIMARY KEY (`id_ex`);

--
-- Indexes for table `jury`
--
ALTER TABLE `jury`
  ADD PRIMARY KEY (`id_jury`);

--
-- Indexes for table `pfes`
--
ALTER TABLE `pfes`
  ADD PRIMARY KEY (`id_pfe`),
  ADD KEY `id_enc` (`id_enc`),
  ADD KEY `FOREIGN KEY` (`id_proposeur`);

--
-- Indexes for table `suj_ex`
--
ALTER TABLE `suj_ex`
  ADD PRIMARY KEY (`id_suj`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrateur`
--
ALTER TABLE `administrateur`
  MODIFY `id_adm` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `encadrant`
--
ALTER TABLE `encadrant`
  MODIFY `id_enc` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id_etu` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pfes`
--
ALTER TABLE `pfes`
  MODIFY `id_pfe` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `suj_ex`
--
ALTER TABLE `suj_ex`
  MODIFY `id_suj` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FOREIGN KEY` FOREIGN KEY (`id_commenter`) REFERENCES `encadrant` (`id_enc`),
  ADD CONSTRAINT `FOREIGN KEY1` FOREIGN KEY (`id_document`) REFERENCES `document` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
