-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 18 avr. 2022 à 00:39
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pssite`
--

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_11_094241_create_professeurs_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('hafidnid909@gmail.com', '$2y$10$uVJXAnBSi5CgCD5.mXRcQeG6EUAoibbeAjYLi8IgX4fWmb9YPRTbe', '2022-04-15 06:05:11');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `professeurs`
--

CREATE TABLE `professeurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(10) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` int(11) NOT NULL,
  `date_recrutement` date NOT NULL,
  `date_naissance` date NOT NULL,
  `specialite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appartenant_a_ENSAJ` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Dossier_scientifique` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etat_ds` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'En_attente',
  `Dossier_Pedagogique` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etat_dp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'En_attente',
  `Dossier_administratif` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etat_da` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'En_attente',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `professeurs`
--

INSERT INTO `professeurs` (`id`, `user_id`, `nom`, `prenom`, `email`, `cin`, `image`, `telephone`, `date_recrutement`, `date_naissance`, `specialite`, `appartenant_a_ENSAJ`, `Dossier_scientifique`, `etat_ds`, `Dossier_Pedagogique`, `etat_dp`, `Dossier_administratif`, `etat_da`, `created_at`, `updated_at`) VALUES
(48, 18, 'Nidabdellah', 'Abdelhafid', 'hafidnid909@gmail.com', 'BB1234', 'image/KLJNZHS47Ub0nwWj65lCDrkxUWtGoN8DCiCvpwq1.png', 681704816, '2022-02-12', '1999-02-20', 'B', 'Oui', 'Dossier_scientifique/MTMD87FjXvxljSV2YQ8iRUSXOBCS3Gv5fNdJSE3R.zip', 'refuse', 'Dossier_Pedagogique/Nxe68hxT7w143mQBvFUBzrsfSV1HXOugUKLLfIrp.zip', 'En_cours', 'Dossier_administratif/qktmnonQfFUvNcU54TDWFeIx9vvN1wFNAuiOdzxI.zip', 'En_cours', '2022-04-15 22:26:52', '2022-04-16 00:12:37'),
(49, 19, 'Nidabdellah', 'Youssef', 'youssefnid909@gmail.com', 'BB12341', 'image/B5z869iYcaWSZIGiAIPhKfKNKnKxDo9aJ1V52XBH.png', 681704816, '2022-04-28', '2001-10-01', 'C', 'Oui', 'Dossier_scientifique/H4SsFAzbTvGTH6LXN85JO8b1wrHXehUOc14zgXS8.zip', 'En_cours', 'Dossier_Pedagogique/MaqGJEFNb64LPzrRzHFtb9L88jNDDVZDrjyTZM9Q.zip', 'valide', 'Dossier_administratif/gX865DcDnmnuznLaB7kQl7eCJNFgrWh6LJgbKM7A.rar', 'valide', '2022-04-15 23:37:04', '2022-04-16 22:34:51'),
(53, 26, 'barbach', 'Asia', 'asiia12@gamil.com', 'VC12135', 'image/pOVaUs6qgcqnAQEsQ66ucrbvgyKj6GscEb9Nftmu.png', 681704816, '2022-12-12', '2006-02-12', 'C', 'Oui', 'Dossier_scientifique/SKu0qRbEoxrn0JvACJZXEivR61B9zDapPggxAcrb.zip', 'En_cours', 'Dossier_Pedagogique/oa80KlDZpnTp4Obs49Y2ygGB2GZQx9js2YlxcYBT.zip', 'En_cours', 'Dossier_administratif/iUm5Il9WhwIXi0JhUTD8rfxnSZFf5zFQiJPcJATv.zip', 'En_cours', '2022-04-16 19:21:53', '2022-04-16 19:22:51'),
(54, 27, 'Barbach', 'Rachid', 'rachid12@gmail.com', 'VC12135', 'image/M6hbLZh3AynYGIL3Sy012eB9FZkLSbBZaYVh3dHC.png', 771235576, '2022-12-20', '1996-12-12', 'C', 'Oui', 'Dossier_scientifique/8yM1yZDjUsdhhowwRpc9Eu29q531YDTkN6uxnBHv.zip', 'En_cours', 'Dossier_Pedagogique/hA4FXvglgUgrg8C2jqtRXK2zP64yqv0Gr0N2yUlo.zip', 'En_cours', 'Dossier_administratif/JyUpmkk4RW0zRMl2Mu8Z6bzYEaISjol4QyowLwZI.zip', 'En_cours', '2022-04-16 22:38:03', '2022-04-16 22:39:09');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `is_admin`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(18, 1, 'Abdelhafid Nidabdellah', 'hafidnid909@gmail.com', '2022-04-15 22:22:28', '$2y$10$rULJNtKte.XtyB0mgGA9/eyS.Q4E08H.KAVLCz20183kwW8OsrA8y', NULL, '2022-04-15 22:22:03', '2022-04-15 22:22:28'),
(19, 0, 'Youssef Nidabdellah', 'youssefnid909@gmail.com', '2022-04-15 23:35:28', '$2y$10$iYhSoSZiFno1Nx8xsLru0.NprBdTvALzwL2.1merE12FltGkjdXN.', NULL, '2022-04-15 23:35:11', '2022-04-15 23:35:28'),
(26, 0, 'Asiya barbach', 'asiya12@gmail.com', '2022-04-16 19:19:58', '$2y$10$DnHaHkf/L1xoa9TVf8E27OPF2/MARc/vJBPhRBMoHf/PX0sAsC8Eu', '6UUM0miwRYNdndAmqmgZkaDSID40og5wjqO6Xz141sPVj8VRh1THghG6xdZ3', '2022-04-16 19:19:29', '2022-04-16 19:24:15'),
(27, 0, 'Rachid Barbach', 'rachid12@gmail.com', '2022-04-16 22:36:28', '$2y$10$eXtK6M.NPKFp47EAX1o5h.CEmTBR6DKm2jwQR9n9p3xOD1ko4RVQ6', 'j3JJAof9ZBUUleJ9CQ2DbfcB9FZKy7dyNp79wyM6R0Ci8YJklNWDcwZP3eXv', '2022-04-16 22:36:05', '2022-04-16 23:18:39');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `professeurs`
--
ALTER TABLE `professeurs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `professeurs`
--
ALTER TABLE `professeurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `professeurs`
--
ALTER TABLE `professeurs`
  ADD CONSTRAINT `professeurs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
