-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Apr 26, 2018 at 08:26 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `Accopilot`
--

-- --------------------------------------------------------

--
-- Table structure for table `aroundvehicule`
--

CREATE TABLE `aroundvehicule` (
  `id` int(11) NOT NULL,
  `inspect_element_around` text NOT NULL,
  `conform` int(11) NOT NULL,
  `no_conform` int(11) NOT NULL,
  `element_vehicule` text NOT NULL,
  `affiche` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `aroundvehicule`
--

INSERT INTO `aroundvehicule` (`id`, `inspect_element_around`, `conform`, `no_conform`, `element_vehicule`, `affiche`) VALUES
(1, 'portières ', 0, 0, 'cabine-carrosserie', 2),
(2, 'rétroviseurs extérieurs ', 0, 0, 'cabine-carrosserie', 2),
(3, 'essuie-glaces (balaie)', 0, 0, 'cabine-carrosserie', 2),
(4, 'ailes, carrosserie ', 0, 0, 'cabine-carrosserie', 2),
(5, 'capot, crochet de sécurité', 0, 0, 'cabine-carrosserie', 2),
(6, 'pare soleil extérieur ', 0, 0, 'cabine-carrosserie', 2),
(7, 'pneus', 0, 0, 'cabine-carrosserie', 2),
(8, 'roues, valves', 0, 0, 'cabine-carrosserie', 2),
(9, 'boulons, écrous pièce de fixation', 0, 0, 'cabine-carrosserie', 2),
(10, 'roulement de roue', 0, 0, 'cabine-carrosserie', 2),
(11, 'garde-boues', 0, 0, 'cabine-carrosserie', 2),
(12, 'réservoir de carburent et attaches ', 0, 0, 'cabine-carrosserie', 2),
(13, 'portillon, bouchon', 0, 0, 'cabine-carrosserie', 2),
(14, 'vignette valide (carburant gazeux)', 0, 0, 'cabine-carrosserie', 2),
(15, 'sellette d\'attelage ', 0, 0, 'dispositif_attelage', 2),
(16, 'mécanisme de vérrouillage ', 0, 0, 'dispositif_attelage', 2),
(17, 'fiche (freins de remorque)', 0, 0, 'dispositif_attelage', 2),
(18, 'fiche (éclairage de remorque)', 0, 0, 'dispositif_attelage', 2),
(19, 'câbles, chaînes, crochet', 0, 0, 'dispositif_attelage', 2),
(20, 'plateforme, panneaux ', 0, 0, 'espace_chargement', 2),
(21, 'butées, fixation', 0, 0, 'espace_chargement', 2),
(22, 'supports, ridelles', 0, 0, 'espace_chargement', 2),
(23, 'amortisseurs', 0, 0, 'suspension_frein', 2),
(24, 'ancrages', 0, 0, 'suspension_frein', 2),
(25, 'lames maîtresses', 0, 0, 'suspension_frein', 2),
(26, 'brides centrales ', 0, 0, 'suspension_frein', 2),
(27, 'pièces de fixation ', 0, 0, 'suspension_frein', 2);

-- --------------------------------------------------------

--
-- Table structure for table `fiche_entretien`
--

CREATE TABLE `fiche_entretien` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `fiche_pdf` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fos_user`
--

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`) VALUES
(1, 'ahmed', 'ahmed', 'ahmed.yajjou@gmail.com', 'ahmed.yajjou@gmail.com', 1, 'csAYT/VlUrN1ZsIePT8citPZtVWs8CcWS3Hc4oR.LP4', 'GIgRKWlYkeIadXpO+YS7k/BpFOfSAfMKYR1le5MKjo4BRgiQ2jpFqd+woOYnIF6EuhMGbhsmW+YoH4IqAwwk7Q==', '2018-04-17 18:41:32', 'v2viPd8rTkcQ-2Gj8Fsxz04n5q1HDXCA24qzp4MqbkM', '2018-04-17 19:19:55', 'a:0:{}'),
(2, 'ahmed2', 'ahmed2', 'ahmed.yajjou@epitech.eu', 'ahmed.yajjou@epitech.eu', 1, 'roN9hnkxtyXW12WqJdZuV2xuq8sH72UTt9kkztFLszs', 'lLfHRisyC5W9pLtvCQf/rgbjr4ofNA4pDWxVQ1jjH4Vy9mPgqbkVM0QhE1wV0VAmgHJK3wjjCH9kqMxa2Sp18A==', '2018-04-17 18:48:12', 'GFonKs-iW9kyLq912ecSjoH-JQBKKRWXUTftfrFWoOM', '2018-04-17 19:21:57', 'a:0:{}'),
(3, 'ahm', 'ahm', 'ahmed.yajjou@outlook.com', 'ahmed.yajjou@outlook.com', 1, NULL, '$2y$13$9Hs5WddXlC1tmiC/Mms5IuSsRhodg0R.KQghv1vDB4uBaEvZDmnVW', '2018-04-20 23:54:43', '5zE-1jb_Iaioomo6l17gyZi-oIQuZRXXz7AdT29_7qo', '2018-04-17 19:21:33', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `information_vehicule`
--

CREATE TABLE `information_vehicule` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `marque` text NOT NULL,
  `modele` text NOT NULL,
  `localisation_vehicule` text NOT NULL,
  `propriétaire` text NOT NULL,
  `annee` date NOT NULL,
  `plaque` int(11) NOT NULL,
  `numero_unite` int(11) NOT NULL,
  `niv` int(11) NOT NULL,
  `type_vehicule` text NOT NULL,
  `entretien_date` date NOT NULL,
  `entretien_km` int(11) NOT NULL,
  `entretien_heure_mecanique` int(11) NOT NULL,
  `prochain_entretien_date` date NOT NULL,
  `prochain_entretien_km` int(11) NOT NULL,
  `prochain_entretien_heure_mecanique` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invehicule`
--

CREATE TABLE `invehicule` (
  `id` int(11) NOT NULL,
  `inspect_element_in` text NOT NULL,
  `conform` int(11) NOT NULL,
  `no_conform` int(11) NOT NULL,
  `element_vehicule` text NOT NULL,
  `affiche` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `invehicule`
--

INSERT INTO `invehicule` (`id`, `inspect_element_in`, `conform`, `no_conform`, `element_vehicule`, `affiche`) VALUES
(1, 'Pare-brise', 0, 0, 'accessory', 1),
(2, 'Pare-soleil', 0, 0, 'accessory', 1),
(3, 'Vitres latérales, lunette arrière  ', 0, 0, 'accessory', 1),
(4, 'Rétroviseur intérieur', 0, 0, 'accessory', 1),
(5, 'Sièges et banquettes ', 0, 0, 'accessory', 1),
(6, 'Ceinture de sécurité', 0, 0, 'accessory', 1),
(7, 'Coussins gonflables (état, témoin)', 0, 0, 'accessory', 1),
(8, 'Coussins gonflables', 0, 0, 'accessory', 1),
(9, 'Lampe témoins (fonctionnement)', 0, 0, 'accessory', 1),
(10, 'Volant (jeu)', 0, 0, 'engine_running\r\n', 1),
(11, 'Démarrage au neutre', 0, 0, 'engine_running\r\n', 1),
(12, 'Commande d\'accélérateur ', 0, 0, 'engine_running\r\n', 1),
(13, 'Commande d\'embrayage ', 0, 0, 'engine_running\r\n', 1),
(14, 'Commande de freins  ', 0, 0, 'engine_running\r\n', 1),
(15, 'Manomètre de freins  ', 0, 0, 'engine_running\r\n', 1),
(16, 'Compresseur à air (rendement)  ', 0, 0, 'engine_running\r\n', 1),
(17, 'Avertisseurs sonore et lumineux', 0, 0, 'engine_running\r\n', 1),
(18, 'Frein de service', 0, 0, 'engine_running\r\n', 1),
(19, 'Course de la pédale de frein', 0, 0, 'engine_running\r\n', 1),
(20, 'Essuie-glace (fonctionnement)', 0, 0, 'engine_running\r\n', 1),
(21, 'Lave-glace (fonctionnement)', 0, 0, 'engine_running\r\n', 1),
(22, 'Chauffage, dégivrage', 0, 0, 'engine_running\r\n', 1),
(23, 'Indicateur de vitesse et totalisateur', 0, 0, 'engine_running\r\n', 1),
(24, 'Eclairage du tableau de bord', 0, 0, 'engine_running\r\n', 1),
(25, 'Avertisseur sonore (klaxon)', 0, 0, 'engine_running\r\n', 1),
(26, 'Feux de jour', 0, 0, 'engine_running\r\n', 1),
(27, 'Phares de route', 0, 0, 'engine_running\r\n', 1),
(28, 'Phares de croisement', 0, 0, 'engine_running\r\n', 1),
(29, 'Feux de direction', 0, 0, 'engine_running\r\n', 1),
(30, 'Feux d\'arrêt', 0, 0, 'engine_running\r\n', 1),
(31, 'Feux de position', 0, 0, 'engine_running\r\n', 1),
(32, 'Feux de plaque', 0, 0, 'engine_running\r\n', 1),
(33, 'Feux de détresse', 0, 0, 'engine_running\r\n', 1),
(34, 'Feux de recul', 0, 0, 'engine_running\r\n', 1),
(35, 'Feux de gabarit', 0, 0, 'engine_running\r\n', 1),
(36, 'Feux d\'identification', 0, 0, 'engine_running\r\n', 1),
(37, 'Tous les réflecteurs', 0, 0, 'engine_running\r\n', 1),
(38, 'Fonctionnement du système d\'assistance ', 0, 0, 'engine_stopped\r\n', 1),
(39, 'Baisse de pression (une application de frein)\r\n ', 0, 0, 'engine_stopped\r\n', 1),
(40, 'Baisse de pression (frein appliqué 1 min)\r\n ', 0, 0, 'engine_stopped\r\n', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aroundvehicule`
--
ALTER TABLE `aroundvehicule`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `fiche_entretien`
--
ALTER TABLE `fiche_entretien`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `fos_user`
--
ALTER TABLE `fos_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`);

--
-- Indexes for table `information_vehicule`
--
ALTER TABLE `information_vehicule`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `invehicule`
--
ALTER TABLE `invehicule`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aroundvehicule`
--
ALTER TABLE `aroundvehicule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `fiche_entretien`
--
ALTER TABLE `fiche_entretien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fos_user`
--
ALTER TABLE `fos_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `information_vehicule`
--
ALTER TABLE `information_vehicule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invehicule`
--
ALTER TABLE `invehicule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
