-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2021 at 01:29 AM
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
(9, 'aya', 'aya@adm.com', 'aya', 'ge'),
(10, 'youness', 'youness@gmail.com', 'youness', 'gi');

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
(1, 'encadrant_ge1', 'encadrant_ge1@gmail.com', 'encadrant_ge1', 0, 'ge'),
(2, 'encadrant_ge2', 'encadrant_ge2@gmail.com', 'encadrant_ge2', 0, 'ge'),
(3, 'encadrant_ge3', 'encadrant_ge3@gmail.com', 'encadrant_ge3', 0, 'ge'),
(4, 'encadrant_ge4', 'encadrant_ge4@gmail.com', 'encadrant_ge4', 0, 'ge'),
(5, 'encadrant_ge5', 'encadrant_ge5@gmail.com', 'encadrant_ge5', 0, 'ge'),
(6, 'encadrant_ge6', 'encadrant_ge6@gmail.com', 'encadrant_ge6', 0, 'ge'),
(7, 'encadrant_ge', 'encadrant_ge@gmail.com', 'encadrant_ge', 0, 'ge'),
(8, 'encadrant', 'encadrant@gmail.com', 'encadrant', 0, 'ge');

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
  `nom_filliere` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `etudiant`
--

INSERT INTO `etudiant` (`id_etu`, `nom_complet`, `email_etu`, `password`, `id_groupe`, `id_pfe`, `nom_filliere`) VALUES
(1, 'etudiant_ge1', 'etudiant_ge1@gmail.com', 'etudiant_ge1', 0, 0, 'ge'),
(2, 'etudiant_ge2', 'etudiant_ge2@email.com', 'etudiant_ge2', 0, 0, 'ge'),
(3, 'etudiant_ge3', 'etudiant_ge3@gmail.com', 'etudiant_ge3', 0, 0, 'ge'),
(4, 'etudiant_ge4', 'etudiant_ge4@gmail.com', 'etudiant_ge4', 0, 0, 'ge'),
(5, 'etudiant_ge5', 'etudiant_ge5@gmail.com', 'etudiant_ge5', 0, 0, 'ge'),
(6, 'etudiant_ge6', 'etudiant_ge6@gmail.com', 'etudiant_ge6', 0, 0, 'ge'),
(7, 'etudiant_ge7', 'etudiant_ge7@gmail.com', 'etudiant_ge7', 0, 0, 'ge'),
(8, 'etudiant_ge8', 'etudiant_ge8@gmail.com', 'etudiant_ge8', 0, 0, 'ge'),
(9, 'etudiant_ge9', 'etudiant_ge9@gmail.com', 'etudiant_ge9', 0, 0, 'ge'),
(10, 'etudiant_ge', 'etudiant_ge@gmail.com', 'etudiant_ge', 0, 0, 'ge'),
(11, 'etudiant', 'etudiant@gmail.com', 'etudiant', 0, 0, 'ge');

-- --------------------------------------------------------

--
-- Table structure for table `jury`
--

CREATE TABLE `jury` (
  `id_jury` int(11) NOT NULL DEFAULT 0,
  `mail_jury` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pfes`
--

CREATE TABLE `pfes` (
  `id_pfe` int(10) NOT NULL,
  `suj_pfe` varchar(25) NOT NULL,
  `des_pfe` varchar(60) NOT NULL,
  `id_enc` int(10) NOT NULL,
  `annee` year(4) NOT NULL,
  `nom_fil` varchar(25) NOT NULL,
  `id_groupe` int(11) NOT NULL,
  `note_rapport` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pfes`
--

INSERT INTO `pfes` (`id_pfe`, `suj_pfe`, `des_pfe`, `id_enc`, `annee`, `nom_fil`, `id_groupe`, `note_rapport`) VALUES
(1, 'Sujet 1', 'Description 1', 1, 2021, 'ge', 0, 0),
(2, 'Sujet 2', 'Description 2', 1, 2021, 'ge', 0, 0),
(3, 'Sujet 3', 'Description 3', 1, 2021, 'ge', 0, 0),
(4, 'Sujet 4', 'Description 4', 2, 2021, 'ge', 0, 0),
(5, 'Sujet 5', 'Description 5', 2, 2021, 'ge', 0, 0),
(6, 'Sujet 6', 'Description 6', 3, 2021, 'ge', 0, 0),
(7, 'Sujet', 'Description', 8, 2021, 'ge', 0, 0);

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
-- Indexes for table `jury`
--
ALTER TABLE `jury`
  ADD PRIMARY KEY (`id_jury`);

--
-- Indexes for table `pfes`
--
ALTER TABLE `pfes`
  ADD PRIMARY KEY (`id_pfe`),
  ADD KEY `id_enc` (`id_enc`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `encadrant`
--
ALTER TABLE `encadrant`
  MODIFY `id_enc` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id_etu` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pfes`
--
ALTER TABLE `pfes`
  MODIFY `id_pfe` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
