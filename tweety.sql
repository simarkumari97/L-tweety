-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2020 at 12:46 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tweety`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `following_user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`user_id`, `following_user_id`, `created_at`, `updated_at`) VALUES
(11, 1, NULL, NULL),
(11, 2, NULL, NULL),
(11, 5, NULL, NULL),
(11, 6, NULL, NULL),
(11, 10, NULL, NULL),
(11, 15, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tweet_id` bigint(20) UNSIGNED NOT NULL,
  `liked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_17_142638_create_tweets_table', 1),
(5, '2020_12_18_080852_create_follows_table', 1),
(6, '2020_12_24_114919_create_likes_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 6, 'Quaerat aliquid corrupti velit veritatis.', '2020-12-23 00:14:30', '2020-12-23 00:14:30'),
(2, 7, 'Voluptatem rerum inventore ducimus numquam.', '2020-12-23 00:14:30', '2020-12-23 00:14:30'),
(3, 8, 'Itaque deleniti beatae reiciendis recusandae.', '2020-12-23 00:14:30', '2020-12-23 00:14:30'),
(4, 9, 'Fuga saepe exercitationem expedita mollitia quae sint.', '2020-12-23 00:14:30', '2020-12-23 00:14:30'),
(5, 10, 'Explicabo eum a repellat ut iure.', '2020-12-23 00:14:30', '2020-12-23 00:14:30'),
(6, 5, 'Atque quos et perferendis fuga magnam vel.', '2020-12-23 00:16:03', '2020-12-23 00:16:03'),
(7, 5, 'Fugit et dolore nostrum optio rem.', '2020-12-23 00:16:03', '2020-12-23 00:16:03'),
(8, 5, 'Porro dolor aut autem.', '2020-12-23 00:16:03', '2020-12-23 00:16:03'),
(9, 5, 'Aut dignissimos sed saepe odit sunt doloribus mollitia.', '2020-12-23 00:16:03', '2020-12-23 00:16:03'),
(10, 5, 'Necessitatibus sit quia aliquam sequi quo facilis sit repudiandae.', '2020-12-23 00:16:03', '2020-12-23 00:16:03'),
(11, 11, 'Hello World', '2020-12-23 00:18:37', '2020-12-23 00:18:37'),
(12, 11, 'Hello', '2020-12-23 01:42:35', '2020-12-23 01:42:35'),
(13, 22, 'Amet tempore mollitia ut aut praesentium est.', '2020-12-23 02:43:49', '2020-12-23 02:43:49'),
(14, 23, 'Rem facere doloribus optio corrupti.', '2020-12-23 02:43:49', '2020-12-23 02:43:49'),
(15, 24, 'Consequatur deserunt minus tenetur corrupti.', '2020-12-23 02:43:49', '2020-12-23 02:43:49'),
(16, 25, 'Distinctio expedita neque in eaque non.', '2020-12-23 02:43:49', '2020-12-23 02:43:49'),
(17, 26, 'Omnis veritatis architecto voluptatum sequi.', '2020-12-23 02:43:49', '2020-12-23 02:43:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Vernie White', NULL, 'cordell.ratke@example.net', '2020-12-23 00:14:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Jq0yQzS39t', '2020-12-23 00:14:14', '2020-12-23 00:14:14'),
(2, 'Neal Emard', NULL, 'aditya.johns@example.net', '2020-12-23 00:14:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BDvrL35uRP', '2020-12-23 00:14:14', '2020-12-23 00:14:14'),
(3, 'Stefan Harber', NULL, 'purdy.jeremy@example.org', '2020-12-23 00:14:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VEL099Ha4o', '2020-12-23 00:14:14', '2020-12-23 00:14:14'),
(4, 'Bobbie Heaney', NULL, 'lebsack.lupe@example.com', '2020-12-23 00:14:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kyfLh9opTr', '2020-12-23 00:14:14', '2020-12-23 00:14:14'),
(5, 'Mrs. Katlyn Hauck', NULL, 'destiny30@example.net', '2020-12-23 00:14:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'B2fbofqHPC', '2020-12-23 00:14:14', '2020-12-23 00:14:14'),
(6, 'Bruce Lynch', NULL, 'edwardo.morar@example.org', '2020-12-23 00:14:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1u7EHpfql3', '2020-12-23 00:14:30', '2020-12-23 00:14:30'),
(7, 'Alan Hodkiewicz DDS', NULL, 'plehner@example.net', '2020-12-23 00:14:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jB7kVbJVzh', '2020-12-23 00:14:30', '2020-12-23 00:14:30'),
(8, 'Dr. Brycen Rosenbaum', NULL, 'creilly@example.org', '2020-12-23 00:14:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8Neqz5G8fF', '2020-12-23 00:14:30', '2020-12-23 00:14:30'),
(9, 'Marcella Rohan V', NULL, 'christiansen.petra@example.com', '2020-12-23 00:14:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ww6oIpnocf', '2020-12-23 00:14:30', '2020-12-23 00:14:30'),
(10, 'Bernice Howe', NULL, 'cassie.bruen@example.net', '2020-12-23 00:14:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VbxLiGmVxy', '2020-12-23 00:14:30', '2020-12-23 00:14:30'),
(11, 'Simar', 'avatars/aeX2MCNe1PlV53hyNGJlEl7hApsvkOrdJrPKXQYZ.png', 'simar@gmail.com', NULL, '$2y$10$RuoR8jtS2kBvpE1z/K9G1.cuhLrakZafrHxzN2GiVlzkLK5QVA8bO', NULL, '2020-12-23 00:17:52', '2020-12-23 02:13:18'),
(12, 'Wilhelm Lowe DVM', NULL, 'jkunde@example.org', '2020-12-23 02:22:03', '$2y$10$77RP1G9uPDetfkNiXTtMzuzLkCME/1zDeK.rrS56ZIYa/tXEd79M2', 'SwuamAVO88', '2020-12-23 02:22:04', '2020-12-23 02:22:04'),
(13, 'Lessie Spencer', NULL, 'gutkowski.cecilia@example.net', '2020-12-23 02:22:04', '$2y$10$X8r.P13.DaO2s6/5sxe7D.nB2VjTYiVto7iifEy9C21o8aIAWn2f.', 'aCKEnfzrjU', '2020-12-23 02:22:04', '2020-12-23 02:22:04'),
(14, 'Zaria Beatty', NULL, 'juvenal14@example.org', '2020-12-23 02:22:04', '$2y$10$cFQP4Yuo4fCKdNwqKLh8k.j5eOnADiSJickId9KdL91MIQr9Z9DPG', '0BDcH5IbfD', '2020-12-23 02:22:04', '2020-12-23 02:22:04'),
(15, 'Emilia Johnston', NULL, 'muller.susan@example.org', '2020-12-23 02:22:04', '$2y$10$muCPmvd5vD87Cpg6Fq/yR.o3ExbIPoXoT0tH67KjLDO83jGaaV./2', '436s06zDGG', '2020-12-23 02:22:05', '2020-12-23 02:22:05'),
(16, 'Turner Nicolas', NULL, 'charity97@example.org', '2020-12-23 02:22:04', '$2y$10$Rjl8zEJ18VfR/7elCObIHeg/3t4UXm5lUlC4KQurgg1cmrPnkFO16', 'voNOtfaqkK', '2020-12-23 02:22:05', '2020-12-23 02:22:05'),
(17, 'Arianna Cummings', NULL, 'may.von@example.org', '2020-12-23 02:22:10', '$2y$10$/kjQNbHaMEy7nKkdqjrMKuOnQ7gr9.darUSb2ZtTQ.HPxvTfIXmu6', 'I1yRiIr7eL', '2020-12-23 02:22:11', '2020-12-23 02:22:11'),
(18, 'Willa Deckow', NULL, 'hstroman@example.com', '2020-12-23 02:22:10', '$2y$10$ZiOZIaLRy.uX1zVnFflufuZ/2IYWvgBibipfPLBQl5/uU.7gIDNtS', 'XCjyGTmZ2P', '2020-12-23 02:22:11', '2020-12-23 02:22:11'),
(19, 'Mr. Lexus Mosciski', NULL, 'wintheiser.kianna@example.net', '2020-12-23 02:22:10', '$2y$10$HXSFPwV.I1ki8gPExUs9T.cMb933N2qNnT3wxIIIIUACRBWdlL9za', 'KHEAWiYG9p', '2020-12-23 02:22:11', '2020-12-23 02:22:11'),
(20, 'Thomas Weissnat', NULL, 'kirlin.arnulfo@example.org', '2020-12-23 02:22:11', '$2y$10$8FOs090mcorXVx1IRKojiO.SaDH3hCPvtByg8b7nfxcxV7w7NzgLu', 'ywB8N3271c', '2020-12-23 02:22:11', '2020-12-23 02:22:11'),
(21, 'Mr. Ramon O\'Keefe I', NULL, 'korey.emard@example.com', '2020-12-23 02:22:11', '$2y$10$kFIjQvqMh9iYBzuzpShQT.dmBULFyQCVr58LucNUdCgTHmpI5N.Ki', 'Eij24ftQgc', '2020-12-23 02:22:11', '2020-12-23 02:22:11'),
(22, 'Prof. Thurman Frami', NULL, 'eleanore38@example.net', '2020-12-23 02:43:47', '$2y$10$m5G9uYfiMrMSj21/wZhfkO4C63W.Bv.Qi4ivhqlae9jQHy6jOKlna', 'FDLWmrYXZP', '2020-12-23 02:43:48', '2020-12-23 02:43:48'),
(23, 'Kenneth Corkery', NULL, 'amira.hilpert@example.org', '2020-12-23 02:43:48', '$2y$10$M/5wgyR9gdalmamNcjkPBeXrUMNosB3B347M/vKbeF9vc8FmpOc5S', 'LRJF2oVF8m', '2020-12-23 02:43:48', '2020-12-23 02:43:48'),
(24, 'Sydney Murazik', NULL, 'bode.jordane@example.org', '2020-12-23 02:43:48', '$2y$10$42N36ucrAonZ9UxRFhFXvOMpyobKAtX43TAz1gwQG3fKZdkjLWSi.', 'vb5MsEBBWJ', '2020-12-23 02:43:48', '2020-12-23 02:43:48'),
(25, 'Mr. Avery D\'Amore', NULL, 'quentin85@example.com', '2020-12-23 02:43:48', '$2y$10$J5SURG3z4B.t43AXbX5/Fexxcz9aZbeOYL4TktFO9nOtnlhiHKUWC', 'jzf77fPJaH', '2020-12-23 02:43:48', '2020-12-23 02:43:48'),
(26, 'Prof. Anika O\'Kon', NULL, 'efeil@example.org', '2020-12-23 02:43:48', '$2y$10$xoRxpO/Cbb6tJWurrP.MyO6zFYnws8G1kiS5SSQbwzje8n8uG.NYS', 'goNvSn9vpS', '2020-12-23 02:43:48', '2020-12-23 02:43:48');

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
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`user_id`,`following_user_id`),
  ADD KEY `follows_following_user_id_foreign` (`following_user_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_user_id_foreign` (`user_id`),
  ADD KEY `likes_tweet_id_foreign` (`tweet_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_following_user_id_foreign` FOREIGN KEY (`following_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `follows_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_tweet_id_foreign` FOREIGN KEY (`tweet_id`) REFERENCES `tweets` (`id`),
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
