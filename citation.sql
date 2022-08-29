-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 29 août 2022 à 10:49
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `citation`
--

-- --------------------------------------------------------

--
-- Structure de la table `citation`
--

CREATE TABLE `citation` (
  `quote_id` bigint(7) UNSIGNED NOT NULL,
  `quote_text` varchar(250) NOT NULL,
  `quote_author` varchar(25) NOT NULL,
  `quote_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `citation`
--

INSERT INTO `citation` (`quote_id`, `quote_text`, `quote_author`, `quote_date`) VALUES
(1, 'Un seul être vous manque et tout est dépeuplé.', 'Lamartine', '2022-08-29'),
(2, 'Aimer, ce n\'est pas se regarder l\'un l\'autre, c\'est regarder ensemble dans la même direction.', 'Antoine De Saint-Exupéry', '2022-08-29');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `citation`
--
ALTER TABLE `citation`
  ADD PRIMARY KEY (`quote_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `citation`
--
ALTER TABLE `citation`
  MODIFY `quote_id` bigint(7) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
