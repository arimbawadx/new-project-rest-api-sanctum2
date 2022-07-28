-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2022 at 02:43 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_rest_api_sanctum2`
--

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_05_12_150817_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(7, 'App\\Models\\User', 6, 'token', '36d7bd91b92d8e359b8d0e9dbd5c4a883ef01b2337505275dd95147bf8747906', '[\"*\"]', '2022-07-28 12:39:11', '2022-07-28 12:34:31', '2022-07-28 12:39:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `email`, `email_verified_at`, `password`, `created_at`, `updated_at`) VALUES
(3, 'Landen Sanford', 'User', 'hegmann.wilfredo@example.com', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(4, 'Jaylan Donnelly', 'User', 'qgottlieb@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(5, 'Reba Beer DVM', 'User', 'champlin.nova@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(6, 'Dalton Collins', 'User', 'rhegmann@example.com', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(7, 'Miss Mary Lehner', 'User', 'ujenkins@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(8, 'Syble Parker', 'User', 'mason62@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(9, 'Mr. Bell Schroeder PhD', 'User', 'chris.abernathy@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(10, 'Sister Tillman', 'User', 'zieme.loyce@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(11, 'Caterina Baumbach', 'User', 'chanelle02@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(12, 'Devante Larkin IV', 'User', 'elvera.kemmer@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(13, 'Barton Abshire', 'User', 'rodrigo.grimes@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(14, 'Mrs. Rosalinda Lockman II', 'User', 'fahey.berneice@example.com', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(15, 'Roy Reichert', 'User', 'dsawayn@example.com', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(16, 'Lon Collier III', 'User', 'damion.kautzer@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(17, 'Braxton Hayes', 'User', 'emely83@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(18, 'Prof. Carolina Reynolds', 'User', 'roberta10@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(19, 'Asia Kautzer', 'User', 'schuppe.lucious@example.com', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(20, 'Gage Dicki', 'User', 'seamus.botsford@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(21, 'Miss Hildegard Nader V', 'User', 'frodriguez@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(22, 'Prof. Al Reichert', 'User', 'ilabadie@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(23, 'Mrs. Sandra Heller Sr.', 'User', 'lakin.howard@example.com', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(24, 'Janie Schmidt DVM', 'User', 'jast.maeve@example.com', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(25, 'Eriberto Reilly', 'User', 'herminia.hane@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(26, 'Gerald Hodkiewicz', 'User', 'uschmidt@example.com', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(27, 'Mr. Keegan Wiza PhD', 'User', 'cormier.abbigail@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(28, 'Kylie Hammes', 'User', 'nat01@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(29, 'Jeremie Hessel', 'User', 'dax.denesik@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(30, 'Prof. Elmo Strosin', 'User', 'kole.walker@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(31, 'Genoveva Rosenbaum', 'User', 'ethan66@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(32, 'Prof. Rusty Miller', 'User', 'rosa66@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(33, 'Prof. Adele Russel MD', 'User', 'phoebe68@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(34, 'Prof. Micheal Boyer II', 'User', 'buster.friesen@example.com', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(35, 'Keyshawn Maggio', 'User', 'jacobson.trent@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(36, 'Otha Tremblay', 'User', 'gheathcote@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(37, 'Lela Huel', 'User', 'jocelyn.considine@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(38, 'Prof. Dalton Medhurst', 'User', 'mark60@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(39, 'Prof. Jake Mills III', 'User', 'maximo.barrows@example.com', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(40, 'Miss Emilia Krajcik DDS', 'User', 'deckow.akeem@example.com', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(41, 'Wava Hackett DDS', 'User', 'jerry49@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(42, 'Isabella Fahey', 'User', 'xander65@example.com', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(43, 'Prof. Flavie Kub', 'User', 'chanel.durgan@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(44, 'Annalise Blanda', 'User', 'smith.araceli@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(45, 'Dale Kassulke IV', 'User', 'pcorwin@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(46, 'Emmie O\'Hara', 'User', 'piper.bergstrom@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(47, 'Guido Ratke', 'User', 'kale87@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(48, 'Miss Keara Hammes IV', 'User', 'noemy35@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(49, 'Lafayette Fay', 'User', 'gheidenreich@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(50, 'Sarai Lind', 'User', 'carolanne.crist@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(51, 'Mr. Toni Cormier III', 'User', 'israel.ullrich@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(52, 'Casimer Ruecker', 'User', 'elton34@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(53, 'Prof. Murphy Nitzsche', 'User', 'harrison.baumbach@example.com', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(54, 'Mrs. Pattie Balistreri', 'User', 'herman.bryce@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(55, 'Dr. Roosevelt Mosciski', 'User', 'maddison.turner@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(56, 'Kay Romaguera Jr.', 'User', 'fisher.treva@example.com', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(57, 'Mr. Flavio Roberts', 'User', 'qdoyle@example.com', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(58, 'Mr. Otis Homenick V', 'User', 'gorczany.larue@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(59, 'Rogelio Howell', 'User', 'greenfelder.cayla@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(60, 'Shad Armstrong', 'User', 'herman.tevin@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(61, 'Juliana Ritchie', 'User', 'wilhelm.hermann@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(62, 'Delphia Wuckert', 'User', 'shany.will@example.com', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(63, 'Prof. Geo Smith II', 'User', 'zechariah84@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(64, 'Jada Gorczany IV', 'User', 'hdare@example.com', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(65, 'Carleton Langworth V', 'User', 'prosacco.ismael@example.com', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(66, 'Kim Beier', 'User', 'stephanie62@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(67, 'Kelton Jast', 'User', 'tbartell@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(68, 'Wade O\'Connell', 'User', 'mckenzie.declan@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(69, 'Jenifer McDermott', 'User', 'bennett41@example.com', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(70, 'Terence Kihn', 'User', 'jade.towne@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(71, 'Art Pfeffer', 'User', 'hackett.jacklyn@example.com', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(72, 'Maudie Fadel', 'User', 'mcclure.bradford@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(73, 'Jarvis Daniel', 'User', 'hoeger.adella@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(74, 'Heber Skiles', 'User', 'tbaumbach@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(75, 'Dr. Sherman Bauch', 'User', 'leola.oreilly@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(76, 'Russel Hagenes', 'User', 'kilback.nia@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(77, 'Mrs. Chasity DuBuque', 'User', 'iliana.gottlieb@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(78, 'Prof. Meagan Leannon IV', 'User', 'nthiel@example.com', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(79, 'Hank Dare', 'User', 'farmstrong@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(80, 'Kurt Bashirian', 'User', 'carmen.beahan@example.com', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(81, 'Mr. Harrison Wilkinson V', 'User', 'fthompson@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:58', '2022-07-27 12:48:58'),
(82, 'Taurean Bernier', 'User', 'dach.jaylan@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:59', '2022-07-27 12:48:59'),
(83, 'Saige Hermann II', 'User', 'jessika45@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:59', '2022-07-27 12:48:59'),
(84, 'Dangelo Bruen', 'User', 'mariam09@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:59', '2022-07-27 12:48:59'),
(85, 'Marietta Kiehn V', 'User', 'ryann.moore@example.com', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:59', '2022-07-27 12:48:59'),
(86, 'Albina DuBuque', 'User', 'goldner.mara@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:59', '2022-07-27 12:48:59'),
(87, 'Dr. Haley Bogan', 'User', 'camden09@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:59', '2022-07-27 12:48:59'),
(88, 'Dr. Brain Hermiston Sr.', 'User', 'mariela04@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:59', '2022-07-27 12:48:59'),
(89, 'Billy Reilly V', 'User', 'nwolff@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:59', '2022-07-27 12:48:59'),
(90, 'Nicholaus Block', 'User', 'kaufderhar@example.com', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:59', '2022-07-27 12:48:59'),
(91, 'Cali Tremblay', 'User', 'rau.ceasar@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:59', '2022-07-27 12:48:59'),
(92, 'Amely Dibbert PhD', 'User', 'devon.rogahn@example.com', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:59', '2022-07-27 12:48:59'),
(93, 'Leila Padberg', 'User', 'xdonnelly@example.com', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:59', '2022-07-27 12:48:59'),
(94, 'Retta Hartmann', 'User', 'jkautzer@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:59', '2022-07-27 12:48:59'),
(95, 'Israel Reichel', 'User', 'vdickinson@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:59', '2022-07-27 12:48:59'),
(96, 'Mrs. Delphine Toy Sr.', 'User', 'rbauch@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:59', '2022-07-27 12:48:59'),
(97, 'Jean Haley', 'User', 'ycorkery@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:59', '2022-07-27 12:48:59'),
(98, 'Miss Velma Stroman', 'User', 'stokes.kaylah@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:59', '2022-07-27 12:48:59'),
(99, 'Luciano Harris', 'User', 'elinor.morar@example.com', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:59', '2022-07-27 12:48:59'),
(100, 'Tressa Hill', 'User', 'omaggio@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:59', '2022-07-27 12:48:59'),
(101, 'Reed Harber Sr.', 'User', 'napoleon.carroll@example.org', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:59', '2022-07-27 12:48:59'),
(102, 'Emmett Kemmer', 'User', 'samara.kertzmann@example.net', '2022-07-27 12:48:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-27 12:48:59', '2022-07-27 12:48:59'),
(106, 'yoga', 'User', 'yogade9595.yd@gmail.com', NULL, '$2y$10$bfDR3ZDwFbbK2SbVWECKUuRkcGys9B8qeWWxM/keW2qxJa8dg.jGq', '2022-07-28 12:31:52', '2022-07-28 12:31:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
