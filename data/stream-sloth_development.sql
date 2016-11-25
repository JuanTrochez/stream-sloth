-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 25 Novembre 2016 à 13:25
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `stream-sloth_development`
--

-- --------------------------------------------------------

--
-- Structure de la table `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2016-11-24 18:16:15', '2016-11-24 18:16:15');

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `realisateur` varchar(255) DEFAULT NULL,
  `date_sortie` date DEFAULT NULL,
  `date_production` date DEFAULT NULL,
  `synopsis` text,
  `pays` varchar(255) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `duree` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `films`
--

INSERT INTO `films` (`id`, `titre`, `realisateur`, `date_sortie`, `date_production`, `synopsis`, `pays`, `genre_id`, `duree`, `image`, `created_at`, `updated_at`, `image_file_name`, `image_content_type`, `image_file_size`, `image_updated_at`) VALUES
(1, 'fdsjl', 'jkl', '2016-02-24', '2016-11-24', 'jfl', 'kfjkl', 2, 'fjkl', 'clock_91890.jpg', '2016-11-24 18:50:15', '2016-11-25 10:51:52', NULL, NULL, NULL, NULL),
(2, 'fjd', 'mfjkdlm', '2016-11-24', '2016-11-24', 'jfkdl', 'fjkl', 1, 'fjklm', 'fed', '2016-11-24 22:07:20', '2016-11-24 22:07:20', NULL, NULL, NULL, NULL),
(3, 'jlkjfdsl', 'jkflmd', '2016-11-24', '2016-11-24', 'fjkld', 'fjkl', 1, 'fjklf', 'jklmfd', '2016-11-24 22:12:41', '2016-11-24 22:12:41', NULL, NULL, NULL, NULL),
(4, 'fdjskl', 'fjklm', '2016-02-24', '2016-11-24', 'fjkdl', 'fjkl', 2, 'fjkl', 'fjkl', '2016-11-24 22:28:07', '2016-11-24 22:28:20', NULL, NULL, NULL, NULL),
(5, 'Test', 'JKFDLMS', '2016-11-24', '2016-11-24', 'jkflmd', 'fjklm', 2, 'fjklm', 'fjklm', '2016-11-24 22:36:56', '2016-11-24 22:36:56', NULL, NULL, NULL, NULL),
(6, 'fdj', 'hf', '2016-11-25', '2016-11-25', 'fjdklm', 'fjlk', 1, 'fjdlk', 'alien-head_318-85913.png', '2016-11-25 10:31:48', '2016-11-25 10:31:48', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `genres`
--

INSERT INTO `genres` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'Action', '2016-11-24 18:22:37', '2016-11-24 18:22:37'),
(2, 'Science - Fiction', '2016-11-24 18:22:51', '2016-11-24 18:22:51');

-- --------------------------------------------------------

--
-- Structure de la table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20161124140612'),
('20161124140653'),
('20161124140723'),
('20161125093343');

-- --------------------------------------------------------

--
-- Structure de la table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `lien` varchar(255) DEFAULT NULL,
  `film_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `videos`
--

INSERT INTO `videos` (`id`, `lien`, `film_id`, `created_at`, `updated_at`) VALUES
(1, 'https://www.youtube.com/embed/JwQZQygg3Lk', 1, '2016-11-25 10:41:47', '2016-11-25 10:41:47');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `films`
--
ALTER TABLE `films`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
