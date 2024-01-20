-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 20, 2024 at 02:44 AM
-- Server version: 8.0.35-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-apis`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Gay Toy II', 'moen.llewellyn@example.com', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'Hn0zePcpie', '2023-12-03 18:33:47', '2023-12-03 18:33:47'),
(3, 'Mr. Dax Klein', 'bgaylord@example.net', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'vMM7mdFgqr', '2023-12-03 18:33:47', '2023-12-03 18:33:47'),
(4, 'Brad Schaefer', 'swift.wilfred@example.com', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'ABsKltFw3r', '2023-12-03 18:33:47', '2023-12-03 18:33:47'),
(5, 'Neil Fay', 'eve75@example.org', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'hgkoIPhxaz', '2023-12-03 18:33:47', '2023-12-03 18:33:47'),
(6, 'Ford Hyatt DDS', 'ahyatt@example.net', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'Ce0APSprdJ', '2023-12-03 18:33:47', '2023-12-03 18:33:47'),
(7, 'Macy McLaughlin', 'jschowalter@example.org', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'U6DSxG4Amt', '2023-12-03 18:33:47', '2023-12-03 18:33:47'),
(8, 'Giovanny Watsica III', 'ebogan@example.com', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'srbJkQUDm9', '2023-12-03 18:33:47', '2023-12-03 18:33:47'),
(9, 'Doyle Hill', 'wisozk.marisa@example.org', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', '7O4tZFV33r', '2023-12-03 18:33:47', '2023-12-03 18:33:47'),
(10, 'Mr. Omer Ortiz II', 'fbosco@example.org', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'oZbSGDaWVc', '2023-12-03 18:33:48', '2023-12-03 18:33:48'),
(11, 'Daron Okuneva', 'tavares91@example.org', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'eEQ6T9xnnS', '2023-12-03 18:33:48', '2023-12-03 18:33:48'),
(12, 'Hayden Ritchie', 'jamison.gibson@example.com', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', '5kJyq5iXNc', '2023-12-03 18:33:48', '2023-12-03 18:33:48'),
(13, 'Timmy Bahringer', 'louisa.gleichner@example.org', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'um2KX3oMMJ', '2023-12-03 18:33:48', '2023-12-03 18:33:48'),
(14, 'Katlyn Greenfelder', 'lilly.casper@example.net', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'Bk5brBRkoc', '2023-12-03 18:33:48', '2023-12-03 18:33:48'),
(15, 'Prof. Albert Bergnaum', 'bahringer.orville@example.com', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'ZCqRlBcXX2', '2023-12-03 18:33:48', '2023-12-03 18:33:48'),
(16, 'Prof. Joshuah Bechtelar III', 'sim.rowe@example.com', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', '3XJCVkFFGE', '2023-12-03 18:33:48', '2023-12-03 18:33:48'),
(17, 'Rickie Considine', 'jbartell@example.com', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'L6ZWAu8WvS', '2023-12-03 18:33:48', '2023-12-03 18:33:48'),
(18, 'Miss Juana Rutherford', 'tfeeney@example.org', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'ApXbK01tZ6', '2023-12-03 18:33:48', '2023-12-03 18:33:48'),
(19, 'Damien Strosin', 'hagenes.pedro@example.org', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'AltoXrfPnB', '2023-12-03 18:33:48', '2023-12-03 18:33:48'),
(20, 'Jeffery Bode', 'bianka31@example.org', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'MF9QY6Pgd3', '2023-12-03 18:33:48', '2023-12-03 18:33:48'),
(21, 'Maryjane Cruickshank', 'brigitte79@example.org', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'bG4DIXJYHC', '2023-12-03 18:33:48', '2023-12-03 18:33:48'),
(22, 'Gino Ankunding I', 'rohan.hudson@example.com', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'KHlV2B3wVL', '2023-12-03 18:33:48', '2023-12-03 18:33:48'),
(23, 'Lizeth Langosh Jr.', 'qward@example.net', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'pNFqys5Vj8', '2023-12-03 18:33:48', '2023-12-03 18:33:48'),
(24, 'Hope Bednar MD', 'uspencer@example.com', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'knZTfKy1JT', '2023-12-03 18:33:49', '2023-12-03 18:33:49'),
(25, 'Myrtle Bins', 'dooley.chesley@example.com', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', '98DWIdHJYS', '2023-12-03 18:33:49', '2023-12-03 18:33:49'),
(26, 'Prof. Helmer Batz PhD', 'ashields@example.net', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'eDmSOnfdD1', '2023-12-03 18:33:49', '2023-12-03 18:33:49'),
(27, 'Winifred Wintheiser', 'bechtelar.dayton@example.com', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'ILSB2yXdEp', '2023-12-03 18:33:49', '2023-12-03 18:33:49'),
(28, 'Mr. Ike Greenfelder DDS', 'randall.monahan@example.org', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'Ri5MD1Ym9c', '2023-12-03 18:33:49', '2023-12-03 18:33:49'),
(29, 'Gideon Conroy', 'waters.tod@example.com', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', '0JzgnkPKvk', '2023-12-03 18:33:49', '2023-12-03 18:33:49'),
(30, 'Prof. Makenna Schulist', 'uriah.smitham@example.org', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'hKh9amLyQ2', '2023-12-03 18:33:49', '2023-12-03 18:33:49'),
(31, 'Kevon Lind', 'kaitlin19@example.org', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'NifEkV2uAa', '2023-12-03 18:33:49', '2023-12-03 18:33:49'),
(32, 'Ms. Rosamond Leffler', 'skovacek@example.com', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'oItXu5I7IF', '2023-12-03 18:33:49', '2023-12-03 18:33:49'),
(33, 'Mr. Dameon Bauch DDS', 'gregory.schmeler@example.net', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'zaGs14Hk3o', '2023-12-03 18:33:49', '2023-12-03 18:33:49'),
(34, 'Mrs. Gwendolyn Hickle Sr.', 'sabryna.kuhlman@example.org', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', '7KcU1IOaCQ', '2023-12-03 18:33:49', '2023-12-03 18:33:49'),
(35, 'Prof. Gabriel Glover', 'bborer@example.com', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'aLypyX8Iao', '2023-12-03 18:33:49', '2023-12-03 18:33:49'),
(36, 'Ericka Kiehn', 'beryl16@example.com', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'VXacHOhpYp', '2023-12-03 18:33:49', '2023-12-03 18:33:49'),
(37, 'Dr. Austen Kemmer PhD', 'deion71@example.org', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', '8rwiUBw6yI', '2023-12-03 18:33:49', '2023-12-03 18:33:49'),
(38, 'Miss Ashtyn Sauer Jr.', 'eino.heller@example.net', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'GuCz7LqH5Z', '2023-12-03 18:33:49', '2023-12-03 18:33:49'),
(39, 'Emmanuelle Sauer', 'hettinger.sienna@example.org', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'glrCWYPHr1', '2023-12-03 18:33:49', '2023-12-03 18:33:49'),
(40, 'Prof. Richard Keeling MD', 'oreilly.reid@example.net', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'niIvIViv7Q', '2023-12-03 18:33:49', '2023-12-03 18:33:49'),
(41, 'Wade Lemke', 'laverne67@example.org', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'mGbvsKGLfw', '2023-12-03 18:33:49', '2023-12-03 18:33:49'),
(42, 'Dr. Art Volkman DDS', 'rosalinda.nikolaus@example.org', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'l3klvpFXLb', '2023-12-03 18:33:49', '2023-12-03 18:33:49'),
(43, 'Hattie Brown', 'joshuah17@example.org', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'vLNI8dtyua', '2023-12-03 18:33:50', '2023-12-03 18:33:50'),
(44, 'Nathan Moore', 'bartoletti.delores@example.com', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'EbDQkg5N1T', '2023-12-03 18:33:50', '2023-12-03 18:33:50'),
(45, 'Kelley Kerluke', 'doug26@example.net', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'PWXp2AGzkC', '2023-12-03 18:33:50', '2023-12-03 18:33:50'),
(46, 'Holden Kuhlman', 'franecki.ellen@example.net', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'kah3qroNne', '2023-12-03 18:33:50', '2023-12-03 18:33:50'),
(47, 'Harry Schuppe', 'jacey15@example.com', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', '39sj7bwQqk', '2023-12-03 18:33:50', '2023-12-03 18:33:50'),
(48, 'Sebastian Conroy', 'theron29@example.org', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'KtZMU3pRmO', '2023-12-03 18:33:50', '2023-12-03 18:33:50'),
(49, 'Cora Jacobson', 'jdicki@example.net', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'rpm0aECI3X', '2023-12-03 18:33:50', '2023-12-03 18:33:50'),
(50, 'June Lowe', 'lacey84@example.net', '2023-12-03 18:33:47', '$2y$12$gUO6PM9pLQopF34fyyUTMux9mQ/OF5vhLvuFzPbXu0XZDoX5mtKM2', 'Xqc6jhKgy7', '2023-12-03 18:33:50', '2023-12-03 18:33:50'),
(51, 'alfred Kaziibwe', 'alfredkaziibwe19@gmail.com', NULL, '123456', NULL, NULL, NULL),
(52, 'alfred albert', 'alfred@gmail.com', NULL, '12345', NULL, NULL, NULL),
(53, 'albert', 'albert@gmail.com', NULL, '12345', NULL, NULL, NULL),
(55, 'keithupdating123', 'keithupdateing@gmail.com', NULL, '$2y$12$Fw1GTZ0mA7e9D8LZENi/NOZlzuLpm6KNjLysZplhrE8mpnba9TreK', NULL, NULL, '2024-01-19 17:29:04'),
(56, 'anode', 'anode@gmail.com', NULL, '1234567', NULL, NULL, NULL),
(59, 'awilo', 'anodedhjf@gmail.com', NULL, '1234567', NULL, NULL, NULL),
(60, 'kafelo', 'kafelo@gmail.com', NULL, '1234567kafero', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
